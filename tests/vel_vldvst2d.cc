#ifdef __clang__
#include <velintrin.h>
void vel_vld2d(double* px, unsigned long int sy, void const* sz)
{
    ;
    __vr vx = _vel_vld2d_vssl(sy, sz, 256);
    _vel_vst_vssl(vx, 8, px, 256);
}

void vel_vst2d(double* px, unsigned long int sy, void* sz)
{
    ;
    __vr vx = _vel_vld_vssl(8, px, 256);
    _vel_vst2d_vssl(vx, sy, sz, 256);
}

void vel_vst2d_vssml(double* px, unsigned long int sy, void* sz, unsigned int* pm)
{
    ;
    __vr vx = _vel_vld_vssl(8, px, 256);
    __vr tmp = _vel_vldlsx_vssl(4, pm, 256);
    __vm vm = _vel_vfmkwgt_mvl(tmp, 256);
    _vel_vst2d_vssml(vx, sy, sz, vm, 256);
}

// upper
void vel_vldu2d(float* px, unsigned long int sy, void const* sz)
{
    ;
    __vr vx = _vel_vldu2d_vssl(sy, sz, 256);
    _vel_vstu_vssl(vx, 4, px, 256);
}

void vel_vstu2d(float* px, unsigned long int sy, void* sz)
{
    ;
    __vr vx = _vel_vldu_vssl(4, px, 256);
    _vel_vstu2d_vssl(vx, sy, sz, 256);
}

void vel_vstu2d_vssml(float* px, unsigned long int sy, void* sz, unsigned int* pm)
{
    ;
    __vr vx = _vel_vldu_vssl(4, px, 256);
    __vr tmp = _vel_vldlsx_vssl(4, pm, 256);
    __vm vm = _vel_vfmkwgt_mvl(tmp, 256);
    _vel_vstu2d_vssml(vx, sy, sz, vm, 256);
}

// lower
void vel_vldl2dsx(long int* px, unsigned long int sy, void const* sz)
{
    ;
    __vr vx = _vel_vldl2dsx_vssl(sy, sz, 256);
    _vel_vst_vssl(vx, 8, px, 256);
}

void vel_vldl2dzx(unsigned long int* px, unsigned long int sy, void const* sz)
{
    ;
    __vr vx = _vel_vldl2dzx_vssl(sy, sz, 256);
    _vel_vst_vssl(vx, 8, px, 256);
}

void vel_vstl2d(int* px, unsigned long int sy, void* sz)
{
    ;
    __vr vx = _vel_vldlsx_vssl(4, px, 256);
    _vel_vstl2d_vssl(vx, sy, sz, 256);
}

void vel_vstl2d_vssml(int* px, unsigned long int sy, void* sz, unsigned int* pm)
{
    ;
    __vr vx = _vel_vldlsx_vssl(4, px, 256);
    __vr tmp = _vel_vldlsx_vssl(4, pm, 256);
    __vm vm = _vel_vfmkwgt_mvl(tmp, 256);
    _vel_vstl2d_vssml(vx, sy, sz, vm, 256);
}
#endif

#ifdef TEST
#include <cstring>
#include <stdio.h>
#include <cstdlib>
#include "util.h"

template <typename T> struct fmt { static char const* s; };
template<> char const* fmt<double>::s = " %8.3e%s";
template<> char const* fmt<float>::s = " %8.3f%s";
template<> char const* fmt<int>::s = " %12ld%s";
template<> char const* fmt<long int>::s = " %12ld%s";
template<> char const* fmt<unsigned long int>::s = " %12lu%s";

template <typename T, typename T1 = T>
int test_vel_vld2d_tmpl(void (*f)(T1*, unsigned long int, void const*))
{
    T A[16*256];
    T1 vx[256];

    for (int i = 0; i < 16*256; ++i) {
        A[i] = getrand<T>();
    }

    int STR = 256;
    int STC = 1;

    unsigned long int sy = (STR*sizeof(T)) << 16 | (STC*sizeof(T));

    f(vx, sy, A);

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
#ifdef MAIN
        fprintf(stderr, fmt<T1>::s, vx[i], i%16 == 15 ? "\n": "");
#endif
        flag &= vx[i] == A[STR*(i/16)+STC*(i%16)];
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __PRETTY_FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

template <typename T>
int test_vel_vst2d_tmpl(void (*f)(T*, unsigned long int, void*))
{
    T A[16*256];
    T vx[256];

    for (int i = 0; i < 256; ++i) {
        vx[i] = getrand<T>();
    }

    int STR = 256;
    int STC = 1;

    unsigned long int sy = (STR*sizeof(T)) << 16 | (STC*sizeof(T));

    f(vx, sy, A);

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
#ifdef MAIN
        fprintf(stderr, fmt<T>::s, A[STR*(i/16)+STC*(i%16)], i%16 == 15 ? "\n": "");
#endif
        flag &= vx[i] == A[STR*(i/16)+STC*(i%16)];
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __PRETTY_FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

template <typename T>
int test_vel_vst2d_mask_tmpl(void (*f)(T*, unsigned long int, void*, unsigned int*))
{
    T A[16*256];
    T vx[256];
    unsigned int mask[256];

    memset(A, 0, sizeof(A));
    for (int i = 0; i < 256; ++i) {
        vx[i] = getrand<T>();
        mask[i] = getrand<unsigned int>() % 2;
    }

    int STR = 256;
    int STC = 1;

    unsigned long int sy = (STR*sizeof(T)) << 16 | (STC*sizeof(T));

    f(vx, sy, A, mask);

#if 0
    for (int i = 0; i < 256; ++i) {
        fprintf(stderr, " %8u", mask[i]);
        if (i % 16 == 15)
            fprintf(stderr, "\n");
    }

    for (int i = 0; i < 256; ++i) {
        fprintf(stderr, " %8.3f", vx[i]);
        if (i % 16 == 15)
            fprintf(stderr, "\n");
    }

    for (int j = 0; j < 16; ++j) {
        fprintf(stderr, "%02d: ", j);
        for (int i = 0; i < 256; ++i) {
            fprintf(stderr, " %8.3f", A[j*256+i]);
            if (i % 16 == 15) {
                fprintf(stderr, "\n");
                if (i != 255)
                    fprintf(stderr, "%02d: ", j);
            }
        }
    }
#endif

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
#ifdef MAIN
        fprintf(stderr, fmt<T>::s, A[STR*(i/16)+STC*(i%16)], i%16 == 15 ? "\n": "");
#endif
        if (mask[i])
            flag &= vx[i] == A[STR*(i/16)+STC*(i%16)];
        else
            flag &= A[STR*(i/16)+STC*(i%16)] == 0;
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __PRETTY_FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

int test_vel_vld2d()
{
    void vel_vld2d(double* px, unsigned long int sy, void const* sz);
    test_vel_vld2d_tmpl<double>(vel_vld2d);
}

int test_vel_vldu2d()
{
    void vel_vldu2d(float* px, unsigned long int sy, void const* sz);
    return test_vel_vld2d_tmpl<float>(vel_vldu2d);
}

int test_vel_vldl2dsx()
{
    void vel_vldl2dsx(long int* px, unsigned long int sy, void const* sz);
    return test_vel_vld2d_tmpl<int, long int>(vel_vldl2dsx);
}

int test_vel_vldl2dzx()
{
    void vel_vldl2dzx(unsigned long int* px, unsigned long int sy, void const* sz);
    return test_vel_vld2d_tmpl<unsigned int, unsigned long int>(vel_vldl2dzx);
}

int test_vel_vst2d()
{
    void vel_vst2d(double* px, unsigned long int sy, void* sz);
    return test_vel_vst2d_tmpl(vel_vst2d);
}

int test_vel_vstu2d()
{
    void vel_vstu2d(float* px, unsigned long int sy, void* sz);
    return test_vel_vst2d_tmpl(vel_vstu2d);
}

int test_vel_vstl2d()
{
    void vel_vstl2d(int* px, unsigned long int sy, void* sz);
    return test_vel_vst2d_tmpl(vel_vstl2d);
}

int test_vel_vst2d_vssml()
{
    void vel_vst2d_vssml(double* px, unsigned long int sy, void* sz, unsigned int* pm);
    return test_vel_vst2d_mask_tmpl(vel_vst2d_vssml);
}

int test_vel_vstu2d_vssml()
{
    void vel_vstu2d_vssml(float* px, unsigned long int sy, void* sz, unsigned int* pm);
    return test_vel_vst2d_mask_tmpl(vel_vstu2d_vssml);
}

int test_vel_vstl2d_vssml()
{
    void vel_vstl2d_vssml(int* px, unsigned long int sy, void* sz, unsigned int* pm);
    return test_vel_vst2d_mask_tmpl(vel_vstl2d_vssml);
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_vld2d", test_vel_vld2d)
REGISTER_TEST("vel_vldu2d", test_vel_vldu2d)
REGISTER_TEST("vel_vldl2dsx", test_vel_vldl2dsx)
REGISTER_TEST("vel_vldl2dzx", test_vel_vldl2dzx)
REGISTER_TEST("vel_vst2d", test_vel_vst2d)
REGISTER_TEST("vel_vstu2d", test_vel_vstu2d)
REGISTER_TEST("vel_vstl2d", test_vel_vstl2d)
REGISTER_TEST("vel_vst2d_vssml", test_vel_vst2d_vssml)
REGISTER_TEST("vel_vstu2d_vssml", test_vel_vstu2d_vssml)
REGISTER_TEST("vel_vstl2d_vssml", test_vel_vstl2d_vssml)
#endif
#endif // TEST


#ifdef MAIN
int test_vel_vld2d();
int main(int argc, char* argv[])
{
    return test_vel_vld2d() 
        && test_vel_vldu2d()
        && test_vel_vldl2dsx()
        && test_vel_vldl2dzx()
        && test_vel_vst2d()
        && test_vel_vstu2d()
        && test_vel_vstl2d()
        && test_vel_vst2d_vssml()
        && test_vel_vstu2d_vssml()
        && test_vel_vstl2d_vssml()
        ? 0 : 1;
}
#endif
