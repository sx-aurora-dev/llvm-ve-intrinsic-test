#ifdef __clang__
#include <velintrin.h>
void vel_vstot_vss(double const* px, double* py, double* ptmp)
{
    __vr vx = _vel_vld_vssl(8, px, 256);
    _vel_vstot_vssl(vx, 8, ptmp, 256);
    _vel_svob();
    __vr vy = _vel_vld_vssl(8, ptmp, 256);
    _vel_vst_vssl(vy, 8, py, 256);
}

void vel_vstuot_vss(float const* px, float* py, float* ptmp)
{
    __vr vx = _vel_vldu_vssl(4, px, 256);
    _vel_vstuot_vssl(vx, 4, ptmp, 256);
    _vel_svob();
    __vr vy = _vel_vldu_vssl(4, ptmp, 256);
    _vel_vstu_vssl(vy, 4, py, 256);
}

void vel_vstlot_vss(int const* px, int* py, int* ptmp)
{
    __vr vx = _vel_vldlsx_vssl(4, px, 256);
    _vel_vstlot_vssl(vx, 4, ptmp, 256);
    _vel_svob();
    __vr vy = _vel_vldlsx_vssl(4, ptmp, 256);
    _vel_vstl_vssl(vy, 4, py, 256);
}

// .nc

void vel_vstncot_vss(double const* px, double* py, double* ptmp)
{
    __vr vx = _vel_vld_vssl(8, px, 256);
    _vel_vstncot_vssl(vx, 8, ptmp, 256);
    _vel_svob();
    __vr vy = _vel_vld_vssl(8, ptmp, 256);
    _vel_vst_vssl(vy, 8, py, 256);
}

void vel_vstuncot_vss(float const* px, float* py, float* ptmp)
{
    __vr vx = _vel_vldu_vssl(4, px, 256);
    _vel_vstuncot_vssl(vx, 4, ptmp, 256);
    _vel_svob();
    __vr vy = _vel_vldu_vssl(4, ptmp, 256);
    _vel_vstu_vssl(vy, 4, py, 256);
}

void vel_vstlncot_vss(int const* px, int* py, int* ptmp)
{
    __vr vx = _vel_vldlsx_vssl(4, px, 256);
    _vel_vstlncot_vssl(vx, 4, ptmp, 256);
    _vel_svob();
    __vr vy = _vel_vldlsx_vssl(4, ptmp, 256);
    _vel_vstl_vssl(vy, 4, py, 256);
}
#endif // __clang__

#ifdef TEST
#include <cstring>
#include <cstdio>
#include "util.h"

template <typename T>
int test_vel_vstot_vss_tmpl(void (*func)(T const*, T*, T*))
{
#define N 256
    T x[N];
    T tmp[N];
    T y[N];

    memset(tmp, 0, sizeof(T) * N);
    memset(y, 0, sizeof(T) * N);
    for (int i = 0; i < N; ++i) {
        x[i] = getrand<T>();
    }

    func(x, y, tmp);

    int flag = 1;
    for (int i = 0; i < N; ++i) {
        flag &= y[i] == x[i];
    }

    return flag;
#undef N
}

#define DEFINE_TEST(name, T) \
int test_##name() \
{ \
    void name(T const*, T*, T*); \
    return test_vel_vstot_vss_tmpl<T>(name); \
}

DEFINE_TEST(vel_vstot_vss, double);
DEFINE_TEST(vel_vstuot_vss, float);
DEFINE_TEST(vel_vstlot_vss, int);

DEFINE_TEST(vel_vstncot_vss, double);
DEFINE_TEST(vel_vstuncot_vss, float);
DEFINE_TEST(vel_vstlncot_vss, int);

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_vstot_vss", test_vel_vstot_vss);
REGISTER_TEST("vel_vstuot_vss", test_vel_vstuot_vss);
REGISTER_TEST("vel_vstlot_vss", test_vel_vstlot_vss);

REGISTER_TEST("vel_vstncot_vss", test_vel_vstncot_vss);
REGISTER_TEST("vel_vstuncot_vss", test_vel_vstuncot_vss);
REGISTER_TEST("vel_vstlncot_vss", test_vel_vstlncot_vss);
#endif
#endif // TEST

#ifdef MAIN
#include <cstdio>
int main(int argc, char* argv[])
{
    fprintf(stderr, "test_vel_vstot_vss: %s\n", test_vel_vstot_vss() ? "OK" : "NG");
    fprintf(stderr, "test_vel_vstuot_vss: %s\n", test_vel_vstuot_vss() ? "OK" : "NG");
    fprintf(stderr, "test_vel_vstlot_vss: %s\n", test_vel_vstlot_vss() ? "OK" : "NG");

    fprintf(stderr, "test_vel_vstncot_vss: %s\n", test_vel_vstncot_vss() ? "OK" : "NG");
    fprintf(stderr, "test_vel_vstuncot_vss: %s\n", test_vel_vstuncot_vss() ? "OK" : "NG");
    fprintf(stderr, "test_vel_vstlncot_vss: %s\n", test_vel_vstlncot_vss() ? "OK" : "NG");
    return 0;
}
#endif
