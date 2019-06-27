#ifdef __clang__
#include <veintrin.h>
void vcp_vvmv(unsigned long int* pvx, unsigned long int const* pvz, unsigned long int const* pvm)
{
    _ve_lvl(256);
    __vm vm;
    vm = _ve_lvm_mmss(vm, 0, pvm[0]);
    vm = _ve_lvm_mmss(vm, 1, pvm[1]);
    vm = _ve_lvm_mmss(vm, 2, pvm[2]);
    vm = _ve_lvm_mmss(vm, 3, pvm[3]);

    __vr vz = _ve_vld_vss(8, pvz);
    __vr vx = _ve_vld_vss(8, pvx);
    vx = _ve_vcp_vvmv(vz, vm, vx);
    _ve_vst_vss(vx, 8, pvx);
}

void vex_vvmv(unsigned long int* pvx, unsigned long int const* pvz, unsigned long int const* pvm)
{
    _ve_lvl(256);
    __vm vm;
    vm = _ve_lvm_mmss(vm, 0, pvm[0]);
    vm = _ve_lvm_mmss(vm, 1, pvm[1]);
    vm = _ve_lvm_mmss(vm, 2, pvm[2]);
    vm = _ve_lvm_mmss(vm, 3, pvm[3]);

    __vr vz = _ve_vld_vss(8, pvz);
    __vr vx = _ve_vld_vss(8, pvx);
    vx = _ve_vex_vvmv(vz, vm, vx);
    _ve_vst_vss(vx, 8, pvx);
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
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vcp_vvmv();
    test_vex_vvmv();
    return 0;
}
#endif

