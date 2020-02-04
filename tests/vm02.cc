#include <stdio.h>

#ifdef __clang__
#include <velintrin.h>

__attribute__((noinline))
__vr func(__vr vx, __vr vy, __vr vz, __vm256 vm) {
    return _vel_vfaddd_vvvmvl(vy, vz, vm, vx, 256);
}

int _test_vm02() 
{
    double x[256];
    double expected[256];
    double y[256];
    double z[256];
    int mask[256];

    for (int i = 0; i < 256; ++i) {
        x[i] = i;
        y[i] = 1;
        z[i] = 2;
        mask[i] = i % 2;

        if (mask[i] > 0) {
            expected[i] = y[i] + z[i];
        } else {
            expected[i] = x[i];
        }
    }

    __vr vx = _vel_vld_vssl(8, x, 256);
    __vr vy = _vel_vld_vssl(8, y, 256);
    __vr vz = _vel_vld_vssl(8, z, 256);
    __vr tmp = _vel_vldlzx_vssvl(4, mask, tmp, 256);
    __vm256 vm = _vel_vfmkwgt_mvl(tmp, 256);
    vx = func(vx, vy, vz, vm);

    _vel_vst_vssl(vx, 8, x, 256);

    bool flag = true;
    for (int i = 0; i < 256; ++i) {
        flag &= (x[i] == expected[i]);
// Enabling this cause problem on jenkins server.
#if 0
        if (x[i] != expected[i]) {
            fprintf(stderr, "%d %lf %lf\n", i, x[i], expected[i]);
        }
#endif
    }

    return flag ? 1 : 0;
}

#endif // __clang__

#ifdef TEST
int test_vm02() {
    int _test_vm02();
    return _test_vm02();
}
#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vm02", test_vm02);
#endif
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv)
{
    fprintf(stderr, "vm02: %s\n", test_vm02() == 1 ? "OK" : "NG");
    return 0;
}
#endif
