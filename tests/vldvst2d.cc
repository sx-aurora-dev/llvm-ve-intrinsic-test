#ifdef __clang__
#include <veintrin.h>
void vld2d(double* px, unsigned long int sy, void const* sz)
{
    _ve_lvl(256);
    __vr vx = _ve_vld2d_vss(sy, sz);
    _ve_vst_vss(vx, 8, px);
}

void vst2d(double* px, unsigned long int sy, void* sz)
{
    _ve_lvl(256);
    __vr vx = _ve_vld_vss(8, px);
    _ve_vst2d_vss(vx, sy, sz);
}

// upper
void vldu2d(float* px, unsigned long int sy, void const* sz)
{
    _ve_lvl(256);
    __vr vx = _ve_vldu2d_vss(sy, sz);
    _ve_vstu_vss(vx, 4, px);
}

void vstu2d(float* px, unsigned long int sy, void* sz)
{
    _ve_lvl(256);
    __vr vx = _ve_vldu_vss(4, px);
    _ve_vstu2d_vss(vx, sy, sz);
}

// lower
void vldl2dsx(long int* px, unsigned long int sy, void const* sz)
{
    _ve_lvl(256);
    __vr vx = _ve_vldl2dsx_vss(sy, sz);
    _ve_vst_vss(vx, 8, px);
}

void vldl2dzx(unsigned long int* px, unsigned long int sy, void const* sz)
{
    _ve_lvl(256);
    __vr vx = _ve_vldl2dzx_vss(sy, sz);
    _ve_vst_vss(vx, 8, px);
}

void vstl2d(int* px, unsigned long int sy, void* sz)
{
    _ve_lvl(256);
    __vr vx = _ve_vldlsx_vss(4, px);
    _ve_vstl2d_vss(vx, sy, sz);
}
#endif

#ifdef TEST
#include <cstring>
#include <stdio.h>
#include <cstdlib>
#include "util.h"

#if 0
template <typename T> T getrand() { return 0; }
template<> double getrand() { return drand48(); }
template<> float getrand() { return (float)drand48(); }
template<> int getrand() { return (int)mrand48(); }
template<> unsigned int getrand() { return (unsigned int)lrand48(); }
#endif

template <typename T> struct fmt { static char const* s; };
template<> char const* fmt<double>::s = " %8.3e%s";
template<> char const* fmt<float>::s = " %8.3f%s";
template<> char const* fmt<int>::s = " %12ld%s";
template<> char const* fmt<long int>::s = " %12ld%s";
template<> char const* fmt<unsigned long int>::s = " %12lu%s";

template <typename T, typename T1 = T>
int test_vld2d_tmpl(void (*f)(T1*, unsigned long int, void const*))
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
        fprintf(stderr, fmt<T1>::s, vx[i], i%8 == 7 ? "\n": "");
#endif
        flag &= vx[i] == A[STR*(i/16)+STC*(i%16)];
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __PRETTY_FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

template <typename T>
int test_vst2d_tmpl(void (*f)(T*, unsigned long int, void*))
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
        fprintf(stderr, fmt<T>::s, A[STR*(i/16)+STC*(i%16)], i%8 == 7 ? "\n": "");
#endif
        flag &= vx[i] == A[STR*(i/16)+STC*(i%16)];
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __PRETTY_FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

int test_vld2d()
{
    void vld2d(double* px, unsigned long int sy, void const* sz);
    test_vld2d_tmpl<double>(vld2d);
}

int test_vldu2d()
{
    void vldu2d(float* px, unsigned long int sy, void const* sz);
    return test_vld2d_tmpl<float>(vldu2d);
}

int test_vldl2dsx()
{
    void vldl2dsx(long int* px, unsigned long int sy, void const* sz);
    return test_vld2d_tmpl<int, long int>(vldl2dsx);
}

int test_vldl2dzx()
{
    void vldl2dzx(unsigned long int* px, unsigned long int sy, void const* sz);
    return test_vld2d_tmpl<unsigned int, unsigned long int>(vldl2dzx);
}

int test_vst2d()
{
    void vst2d(double* px, unsigned long int sy, void* sz);
    return test_vst2d_tmpl(vst2d);
}

int test_vstu2d()
{
    void vstu2d(float* px, unsigned long int sy, void* sz);
    return test_vst2d_tmpl(vstu2d);
}

int test_vstl2d()
{
    void vstl2d(int* px, unsigned long int sy, void* sz);
    return test_vst2d_tmpl(vstl2d);
}
#endif


#ifdef MAIN
int test_vld2d();
int main(int argc, char* argv[])
{
    return test_vld2d() 
        && test_vldu2d()
        && test_vldl2dsx()
        && test_vldl2dzx()
        && test_vst2d()
        && test_vstu2d()
        && test_vstl2d()
        ? 0 : 1;
}
#endif
