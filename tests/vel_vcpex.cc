#ifdef __clang__
#include <velintrin.h>
void vcp_vvmv(unsigned long int* pvx, unsigned long int const* pvz, unsigned long int const* pvm)
{
    __vm vm;
    vm = _vel_lvm_mmss(vm, 0, pvm[0]);
    vm = _vel_lvm_mmss(vm, 1, pvm[1]);
    vm = _vel_lvm_mmss(vm, 2, pvm[2]);
    vm = _vel_lvm_mmss(vm, 3, pvm[3]);

    __vr vz = _vel_vld_vssl(8, pvz, 256);
    __vr vx = _vel_vld_vssl(8, pvx, 256);
    vx = _vel_vcp_vvmvl(vz, vm, vx, 256);
    _vel_vst_vssl(vx, 8, pvx, 256);
}

void vex_vvmv(unsigned long int* pvx, unsigned long int const* pvz, unsigned long int const* pvm)
{
    __vm vm;
    vm = _vel_lvm_mmss(vm, 0, pvm[0]);
    vm = _vel_lvm_mmss(vm, 1, pvm[1]);
    vm = _vel_lvm_mmss(vm, 2, pvm[2]);
    vm = _vel_lvm_mmss(vm, 3, pvm[3]);

    __vr vz = _vel_vld_vssl(8, pvz, 256);
    __vr vx = _vel_vld_vssl(8, pvx, 256);
    vx = _vel_vex_vvmvl(vz, vm, vx, 256);
    _vel_vst_vssl(vx, 8, pvx, 256);
}
#endif

#ifdef TEST
#include <stdlib.h>
#include <stdio.h>
int test_vcp_vvmv()
{
    void vcp_vvmv(unsigned long int* pvx, unsigned long int const* pvz, unsigned long int const* pvm);
#define N 256
    unsigned long int vm[4];
    unsigned long int vx0[N];
    unsigned long int vx1[N];
    unsigned long int vz[N];

    for (int i = 0; i < 4; ++i) {
        vm[i] = (lrand48() << 32 | lrand48());
    }
    for (int i = 0; i < 256; ++i) {
        vx0[i] = 0;
        vx1[i] = 0;
        vz[i] = lrand48();
    }

    vcp_vvmv(vx0, vz, vm);

    int n = 0;
    for (int i = 0; i < 256; ++i) {
        int j = i / 64;
        int k = i % 64;
        if ((vm[j] >> (63 - k)) & 0x1)
            vx1[n++] = vz[i];
    }

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
        //fprintf(stderr, "vx0[%d] = %016lx\n", i, vx0[i]);
        flag &= vx0[i] == vx1[i];
    }

#ifdef MAIN
    fprintf(stderr, "%s %s\n", __FUNCTION__, flag ? "OK" : "NG");
#endif
    return flag;
}

int test_vex_vvmv()
{
    void vex_vvmv(unsigned long int* pvx, unsigned long int const* pvz, unsigned long int const* pvm);
#define N 256
    unsigned long int vm[4];
    unsigned long int vx0[N];
    unsigned long int vx1[N];
    unsigned long int vz[N];

    for (int i = 0; i < 4; ++i) {
        vm[i] = (lrand48() << 32 | lrand48());
    }
    for (int i = 0; i < 256; ++i) {
        vx0[i] = 0;
        vx1[i] = 0;
        vz[i] = lrand48();
    }

    vex_vvmv(vx0, vz, vm);

    int n = 0;
    for (int i = 0; i < 256; ++i) {
        int j = i / 64;
        int k = i % 64;
        if ((vm[j] >> (63 - k)) & 0x1)
            vx1[i] = vz[n++];
    }

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
        //fprintf(stderr, "vx0[%d] = %016lx\n", i, vx0[i]);
        flag &= vx0[i] == vx1[i];
    }

#ifdef MAIN
    fprintf(stderr, "%s %s\n", __FUNCTION__, flag ? "OK" : "NG");
#endif
    return flag;
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("_vel_vcp_vvmvl", test_vcp_vvmv);
REGISTER_TEST("_vel_vex_vvmvl", test_vex_vvmv);
#endif
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vcp_vvmv();
    test_vex_vvmv();
    return 0;
}
#endif

