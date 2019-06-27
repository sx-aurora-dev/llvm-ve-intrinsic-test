#ifdef __clang__
#include <veintrin.h>

void ve_insert_vm512u(unsigned long int *pvx, 
                      unsigned long int const* pvz0,
                      unsigned int const* pvz1)
{
    _ve_lvl(256);

    __vr vz0 = _ve_vld_vss(8, pvz0);
    __vm vm0 = _ve_vfmkl_mcv(VECC_G, vz0);

    __vr vz1 = _ve_vld_vss(8, pvz1);
    __vm512 vm1 = _ve_pvfmkw_Mcv(VECC_G, vz1);

    __vm512 vmx = _ve_insert_vm512u(vm1, vm0);

    pvx[0] = _ve_svm_sMs(vmx, 0);
    pvx[1] = _ve_svm_sMs(vmx, 1);
    pvx[2] = _ve_svm_sMs(vmx, 2);
    pvx[3] = _ve_svm_sMs(vmx, 3);
    pvx[4] = _ve_svm_sMs(vmx, 4);
    pvx[5] = _ve_svm_sMs(vmx, 5);
    pvx[6] = _ve_svm_sMs(vmx, 6);
    pvx[7] = _ve_svm_sMs(vmx, 7);
}

void ve_insert_vm512l(unsigned long int *pvx, 
                      unsigned long int const* pvz0,
                      unsigned int const* pvz1)
{
    _ve_lvl(256);

    __vr vz0 = _ve_vld_vss(8, pvz0);
    __vm vm0 = _ve_vfmkl_mcv(VECC_G, vz0);

    __vr vz1 = _ve_vld_vss(8, pvz1);
    __vm512 vm1 = _ve_pvfmkw_Mcv(VECC_G, vz1);

    __vm512 vmx = _ve_insert_vm512l(vm1, vm0);

    pvx[0] = _ve_svm_sMs(vmx, 0);
    pvx[1] = _ve_svm_sMs(vmx, 1);
    pvx[2] = _ve_svm_sMs(vmx, 2);
    pvx[3] = _ve_svm_sMs(vmx, 3);
    pvx[4] = _ve_svm_sMs(vmx, 4);
    pvx[5] = _ve_svm_sMs(vmx, 5);
    pvx[6] = _ve_svm_sMs(vmx, 6);
    pvx[7] = _ve_svm_sMs(vmx, 7);
}
#endif

#ifdef TEST
#include <cstdio>
#include <cstdlib>
#include <cstring>

extern void ve_insert_vm512u(unsigned long int *pvx, 
                             unsigned long int const* pvz0,
                             unsigned int const* pvz1);
extern void ve_insert_vm512l(unsigned long int *pvx, 
                             unsigned long int const* pvz0,
                             unsigned int const* pvz1);

// c=0: upper, c=1: lower
static int test_ve_insert_vm512(int c)
{
    unsigned long int pvz0[256];
    unsigned int pvz1[512];
    unsigned long int pvx0[8];
    unsigned long int pvx1[8];

    for (int i = 0; i < 256; ++i)
        pvz0[i] = lrand48() % 2;

    for (int i = 0; i < 512; ++i)
        pvz1[i] = lrand48() % 2;

    memset(pvx0, 0, sizeof(unsigned long int) * 8);
    memset(pvx1, 0, sizeof(unsigned long int) * 8);

    for (int i = 0; i < 512; ++i) {
        int ii = i / 2;
        int j = ii / 64 + 4 * (i % 2);
        int k = ii % 64;
        if (pvz1[i] > 0) {
            pvx0[j] = pvx0[j] | (0x1UL << (63 - k));
        } else {
            pvx0[j] = pvx0[j] & ~(0x1UL << (63 - k));
        }
    }

#if 1
    for (int i = c; i < 512; i += 2) {
        int ii = i / 2;
        int j = ii / 64 + 4 * (i % 2);
        int k = ii % 64;
        if (pvz0[i/2] > 0) {
            pvx0[j] = pvx0[j] | (0x1UL << (63 - k));
        } else {
            pvx0[j] = pvx0[j] & ~(0x1UL << (63 - k));
        }
    }
#endif

    if (c == 0) {
        ve_insert_vm512u(pvx1, pvz0, pvz1);
    } else {
        ve_insert_vm512l(pvx1, pvz0, pvz1);
    }

#if 0
    for (int i = 0; i < 512; ++i) {
        fprintf(stderr, " %d", pvz1[i]);
        if (i % 64 == 63)
            fprintf(stderr, "\n");
    }

    for (int i = 0; i < 256; ++i) {
        fprintf(stderr, " %d", pvz1[i*2]);
        if (i % 64 == 63)
            fprintf(stderr, "\n");
    }
#endif

    int flag = 1;
    for (int i = 0; i < 8; ++i) {
        if (pvx0[i] != pvx1[i]) {
            flag = 0;
#ifdef MAIN
            fprintf(stderr, "i=%d pvx0=%016lxd pvx1=%016lx\n", i, pvx0[i], pvx1[i]);
#endif
        }
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __FUNCTION__, flag ? "OK" : "NG");
#endif
}

int test_ve_insert_vm512u()
{
    return test_ve_insert_vm512(0);
}

int test_ve_insert_vm512l()
{
    return test_ve_insert_vm512(1);
}
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_ve_insert_vm512u();
    test_ve_insert_vm512l();
    return 0;
}
#endif
