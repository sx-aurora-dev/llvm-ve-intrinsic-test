#ifdef __clang__
#include <velintrin.h>

void vel02(void* px, void* py, void* pz, void* pvm, int n)
{
    __vr vx, vy, vz, tmp;
    __vm256 vm;
    vx = _vel_vld_vssvl(8, px, vx, n);
    vy = _vel_vld_vssvl(8, py, vy, n);
    vz = _vel_vld_vssvl(8, pz, vz, n);
    tmp = _vel_vldlzx_vssvl(4, pvm, tmp, 256);
    vm = _vel_vfmkwgt_mvl(tmp, 256);
    vz = _vel_vfaddd_vvvmvl(vx, vy, vm, vz, n / 2);
    _vel_vst_vssl(vz, 8, pz, n);
}
#endif

#ifdef TEST
#include <cstdio>
#include <cstring>
#include <cstdint>
void vel02(void* px, void* py, void* pz, void* pvm, int n);
int test_vel02()
{
#define N 256
    double x[N];
    double y[N];
    double z0[N];
    double z1[N];
    int32_t mask[N];

    memset(x, 0, sizeof(double) * N);
    for (int i = 0; i < 256; ++i) {
        x[i] = i;
        y[i] = i;
        z0[i] = 1000;
        z1[i] = 1000;
        mask[i] = i % 2;
    }

    vel02(x, y, z0, mask, 256);

    for (int i = 0; i < 128; ++i) {
        if (mask[i] > 0)
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
    fprintf(stderr, "vel02: %s\n", ret ? "OK" : "NG");
#endif

    return ret;
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel02", test_vel02);
#endif // HAVE_REGISTER_TEST
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vel02();
    return 0;
}
#endif
