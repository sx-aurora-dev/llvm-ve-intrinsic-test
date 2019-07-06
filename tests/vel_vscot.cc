#ifdef __clang__
#include <velintrin.h>
void vel_vscot_vv(double const* px, double* py, unsigned long int const* pidx, double* ptmp)
{
    ;
    __vr vx = _vel_vld_vssl(8, px, 256);
    __vr vidx = _vel_vld_vssl(8, pidx, 256);

    // ptmp[pidx[i]] = px[i]
    __vr vaddr = _vel_vsfa_vvssl(vidx, 3, (unsigned long int)ptmp, 256);
#if 0
    _vel_vsc_vvssl(vx, vaddr, 0, 0, 256);
#else
    _vel_vscot_vvssl(vx, vaddr, 0, 0, 256);
    _vel_svob();
#endif

    // py[i] = ptmp[i]
    __vr vy = _vel_vld_vssl(8, ptmp, 256);
    _vel_vst_vssl(vy, 8, py, 256);
}

void vel_vscuot_vv(float const* px, float* py, unsigned long int const* pidx, float* ptmp)
{
    ;
    __vr vx = _vel_vldu_vssl(4, px, 256);
    __vr vidx = _vel_vld_vssl(8, pidx, 256);

    // ptmp[pidx[i]] = px[i]
    __vr vaddr = _vel_vsfa_vvssl(vidx, 2, (unsigned long int)ptmp, 256);
    _vel_vscu_vvssl(vx, vaddr, 0, 0, 256);
    _vel_svob();

    // py[i] = ptmp[i]
    __vr vy = _vel_vldu_vssl(4, ptmp, 256);
    _vel_vstu_vssl(vy, 4, py, 256);
}

void vel_vsclot_vv(int const* px, int* py, unsigned long int const* pidx, int* ptmp)
{
    ;
    __vr vx = _vel_vldlsx_vssl(4, px, 256);
    __vr vidx = _vel_vld_vssl(8, pidx, 256);

    // ptmp[pidx[i]] = px[i]
    __vr vaddr = _vel_vsfa_vvssl(vidx, 2, (unsigned long int)ptmp, 256);
    _vel_vsclot_vvssl(vx, vaddr, 0, 0, 256);
    _vel_svob();

    // py[i] = ptmp[i]
    __vr vy = _vel_vldlsx_vssl(4, ptmp, 256);
    _vel_vstl_vssl(vy, 4, py, 256);
}
#endif // __clang__

#ifdef TEST
#include <cstring>
#include <cstdio>
#include "util.h"

template <typename T>
int test_vel_vscot_vv_tmpl(void (*func)(T const*, T*, unsigned long int const*, T*))
{
#define N 256
    T x[N];
    T tmp[N];
    T y0[N];
    T y1[N];
    unsigned long idx[N];

    memset(tmp, 0, sizeof(T) * N);
    memset(y0, 0, sizeof(T) * N);
    memset(y1, 0, sizeof(T) * N);
    for (int i = 0; i < N; ++i) {
        x[i] = getrand<T>();
        idx[i] = getrand<unsigned int>() % N;
    }

    func(x, y0, idx, tmp);

    for (int i = 0; i < N; ++i) {
        y1[idx[i]] = (T)x[i];
    }

    int flag = 1;
    for (int i = 0; i < N; ++i) {
        flag &= y0[i] == y1[i];
    }

    return flag;
#undef N
}

#define DEFINE_TEST(name, T) \
int test_##name() \
{ \
    void name(T const*, T*, unsigned long int const*, T*); \
    return test_vel_vscot_vv_tmpl<T>(name); \
}

DEFINE_TEST(vel_vscot_vv, double);
DEFINE_TEST(vel_vscuot_vv, float);
DEFINE_TEST(vel_vsclot_vv, int);

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_vscot_vv", test_vel_vscot_vv);
REGISTER_TEST("vel_vscuot_vv", test_vel_vscuot_vv);
REGISTER_TEST("vel_vsclot_vv", test_vel_vsclot_vv);
#endif
#endif // TEST

#ifdef MAIN
#include <cstdio>
int main(int argc, char* argv[])
{
    fprintf(stderr, "test_vel_vscuot_vv: %s\n", test_vel_vscuot_vv() ? "OK" : "NG");
    return 0;
}
#endif
