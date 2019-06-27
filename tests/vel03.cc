#ifdef __clang__
#include <velintrin.h>

void vel03(void* px, void* py, void* pz, int n)
{
    __vr vx = _vel_vld_vssl(8, px, n);
    __vr vy = _vel_vld_vssl(8, py, n);
    __vr vz = _vel_vld_vssl(8, pz, n);
    vz = _vel_vfaddd_vvvvl(vx, vy, vz, n / 2);
    _vel_vst_vssl(vz, 8, pz, n);
}
#endif

#ifdef TEST
#include <cstdio>
#include <cstring>
void vel03(void* px, void* py, void* pz, int n);
int test_vel03()
{
#define N 256
    double x[N];
    double y[N];
    double z0[N];
    double z1[N];

    memset(x, 0, sizeof(double) * N);
    for (int i = 0; i < 256; ++i) {
        x[i] = i;
        y[i] = i;
        z0[i] = 1000;
        z1[i] = 1000;
    }

    vel03(x, y, z0, 256);

    for (int i = 0; i < 128; ++i) {
        z1[i] = x[i] + y[i];
    }

#if 0
    for (int i = 0; i < 256; ++i) {
        fprintf(stderr, " %8.3f", z0[i]);
        if (i % 16 == 15)
            fprintf(stderr, "\n");
    }
#endif

    int ret = 1;
    for (int i = 0; i < 256; ++i) {
        if (z0[i] != z1[i])
            ret = 0;
    }

#ifdef MAIN
    fprintf(stderr, "vel03: %s\n", ret ? "OK" : "NG");
#endif

    return ret;
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel03", test_vel03);
#endif // HAVE_REGISTER_TEST
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vel03();
    return 0;
}
#endif
