#ifdef __clang__
#include <velintrin.h>

void vel_insert_vm512u(unsigned long int *pvx, 
                      unsigned long int const* pvz0,
                      unsigned int const* pvz1)
{
    __vr vz0 = _vel_vld_vssl(8, pvz0, 256);
    __vm vm0 = _vel_vfmklgt_mvl(vz0, 256);

    __vr vz1 = _vel_vld_vssl(8, pvz1, 256);
    __vm512 vm1 = _vel_pvfmkwgt_Mvl(vz1, 256);

    __vm512 vmx = _vel_insert_vm512u(vm1, vm0);

    pvx[0] = _vel_svm_sMs(vmx, 0);
    pvx[1] = _vel_svm_sMs(vmx, 1);
    pvx[2] = _vel_svm_sMs(vmx, 2);
    pvx[3] = _vel_svm_sMs(vmx, 3);
    pvx[4] = _vel_svm_sMs(vmx, 4);
    pvx[5] = _vel_svm_sMs(vmx, 5);
    pvx[6] = _vel_svm_sMs(vmx, 6);
    pvx[7] = _vel_svm_sMs(vmx, 7);
}

void vel_insert_vm512l(unsigned long int *pvx, 
                      unsigned long int const* pvz0,
                      unsigned int const* pvz1)
{
    __vr vz0 = _vel_vld_vssl(8, pvz0, 256);
    __vm vm0 = _vel_vfmklgt_mvl(vz0, 256);

    __vr vz1 = _vel_vld_vssl(8, pvz1, 256);
    __vm512 vm1 = _vel_pvfmkwgt_Mvl(vz1, 256);

    __vm512 vmx = _vel_insert_vm512l(vm1, vm0);

    pvx[0] = _vel_svm_sMs(vmx, 0);
    pvx[1] = _vel_svm_sMs(vmx, 1);
    pvx[2] = _vel_svm_sMs(vmx, 2);
    pvx[3] = _vel_svm_sMs(vmx, 3);
    pvx[4] = _vel_svm_sMs(vmx, 4);
    pvx[5] = _vel_svm_sMs(vmx, 5);
    pvx[6] = _vel_svm_sMs(vmx, 6);
    pvx[7] = _vel_svm_sMs(vmx, 7);
}
#endif

#ifdef TEST
#include <cstdio>
#include <cstdlib>
#include <cstring>

extern void vel_insert_vm512u(unsigned long int *pvx, 
                             unsigned long int const* pvz0,
                             unsigned int const* pvz1);
extern void vel_insert_vm512l(unsigned long int *pvx, 
                             unsigned long int const* pvz0,
                             unsigned int const* pvz1);

// c=1: upper, c=0: lower
static int test_vel_insert_vm512(int c)
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

    if (c == 1) {
        vel_insert_vm512u(pvx1, pvz0, pvz1);
    } else {
        vel_insert_vm512l(pvx1, pvz0, pvz1);
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

    return flag;
}

int test_vel_insert_vm512u()
{
    return test_vel_insert_vm512(1);
}

int test_vel_insert_vm512l()
{
    return test_vel_insert_vm512(0);
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_insert_vm512u", test_vel_insert_vm512u);
REGISTER_TEST("vel_insert_vm512l", test_vel_insert_vm512l);
#endif // HAVE_REGISTER_TEST
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vel_insert_vm512u();
    test_vel_insert_vm512l();
    return 0;
}
#endif
