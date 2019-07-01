#ifdef __clang__
#include <velintrin.h>

void vel_extract_vm512u(unsigned long int *pvx, unsigned int const* pvz)
{
    __vr vz = _vel_vld_vssl(8, pvz, 256);
    __vm512 vm = _vel_pvfmkwgt_Mvl(vz, 256);

    __vm vm1 = _vel_extract_vm512u(vm);

    pvx[0] = _vel_svm_sms(vm1, 0);
    pvx[1] = _vel_svm_sms(vm1, 1);
    pvx[2] = _vel_svm_sms(vm1, 2);
    pvx[3] = _vel_svm_sms(vm1, 3);
}

void vel_extract_vm512l(unsigned long int *pvx, unsigned int const* pvz)
{
    __vr vz = _vel_vld_vssl(8, pvz, 256);
    __vm512 vm = _vel_pvfmkwgt_Mvl(vz, 256);

    __vm vm1 = _vel_extract_vm512l(vm);

    pvx[0] = _vel_svm_sms(vm1, 0);
    pvx[1] = _vel_svm_sms(vm1, 1);
    pvx[2] = _vel_svm_sms(vm1, 2);
    pvx[3] = _vel_svm_sms(vm1, 3);
}
#endif

#ifdef TEST
#include <cstdio>
#include <cstdlib>
#include <cstring>

extern void vel_extract_vm512u(unsigned long int* pvx, unsigned int const* pvz);
extern void vel_extract_vm512l(unsigned long int* pvx, unsigned int const* pvz);

// c=1: upper, c=0: lower
static int test_vel_extract_vm512(int c)
{
    unsigned int pvz[512];
    unsigned long int pvx0[4];
    unsigned long int pvx1[4];

    for (int i = 0; i < 512; ++i) {
        pvz[i] = lrand48() % 2;
    }

    memset(pvx0, 0, sizeof(unsigned long int) * 4);
    memset(pvx1, 0, sizeof(unsigned long int) * 4);

    for (int i = 0; i < 256; ++i) {
        int j = i / 64;
        int k = i % 64;
        if (pvz[i*2 + c] > 0) {
            pvx0[j] = pvx0[j] | (0x1UL << (63 - k));
        } else {
            pvx0[j] = pvx0[j] & ~(0x1UL << (63 - k));
        }
    }

    if (c == 1) {
        vel_extract_vm512u(pvx1, pvz);
    } else {
        vel_extract_vm512l(pvx1, pvz);
    }

#ifdef MAIN
    for (int i = 0; i < 512; ++i) {
        fprintf(stderr, " %d", pvz[i]);
        if (i % 64 == 63)
            fprintf(stderr, "\n");
    }

    if (c == 1) {
        fprintf(stderr, "upper\n");
    } else {
        fprintf(stderr, "lower\n");
    }
    for (int i = 0; i < 256; ++i) {
        if (c == 1) {
            fprintf(stderr, "   %d", pvz[i*2+c] > 0);
        } else {
            fprintf(stderr, " %d  ", pvz[i*2+c] > 0);
        }
        if (i % 32 == 31)
            fprintf(stderr, "\n");
    }
#endif

    int flag = 1;
    for (int i = 0; i < 4; ++i) {
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

int test_vel_extract_vm512u()
{
    return test_vel_extract_vm512(1);
}

int test_vel_extract_vm512l()
{
    return test_vel_extract_vm512(0);
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_extract_vm512u", test_vel_extract_vm512u);
REGISTER_TEST("vel_extract_vm512l", test_vel_extract_vm512l);
#endif // HAVE_REGISTER_TEST
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vel_extract_vm512u();
    test_vel_extract_vm512l();
    return 0;
}
#endif
