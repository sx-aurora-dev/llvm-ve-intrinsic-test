#ifdef __clang__
#include <velintrin.h>

__vr func(__vr vx, __vr vy, __vr vz) {
    return _vel_vfaddd_vvvmvl(vy, vz, __vm256(), vx, 256);
}

int _test_vm01() {
    double expected[256];
    double x[256];
    double y[256];
    double z[256];

    for (int i = 0; i < 256; ++i) {
        x[i] = i;
        y[i] = 1;
        z[i] = 2;
        expected[i] = x[i];
    }

    __vr vx = _vel_vld_vssl(8, x, 256);
    __vr vy = _vel_vld_vssl(8, y, 256);
    __vr vz = _vel_vld_vssl(8, z, 256);
    vx = func(vx, vy, vz);

    _vel_vst_vssl(vx, 8, x, 256);

    bool flag = true;
    for (int i = 0; i < 256; ++i) {
        flag &= (x[i] == expected[i]);
    }

    return flag ? 1 : 0;
}
#endif // __clang__

#ifdef TEST
int test_vm01() {
    int _test_vm01();
    return _test_vm01();
}
#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vm01", test_vm01);
#endif
#endif // TEST

#ifdef MAIN
#include <stdio.h>
int main(int argc, char* argv)
{
    fprintf(stderr, "vm01: %s\n", test_vm01() == 1 ? "OK" : "NG");
    return 0;
}
#endif
