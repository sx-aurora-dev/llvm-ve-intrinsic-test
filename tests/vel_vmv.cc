#define SY 3

#ifdef __clang__
#include <velintrin.h>
void vmv(unsigned long int* p, unsigned long int const* q, int sy)
{
    __vr v0 = _vel_vld_vssl(8, q, 256);
    __vr v1 = _vel_vmv_vsvl(sy, v0, 256);
    _vel_vst_vssl(v1, 8, p, 256);
}

void vmv_i(unsigned long int* p, unsigned long int const* q, int)
{
    __vr v0 = _vel_vld_vssl(8, q, 256);
    __vr v1 = _vel_vmv_vsvl(SY, v0, 256);
    _vel_vst_vssl(v1, 8, p, 256);
}

void vmv_vsvmvl(unsigned long int* p, unsigned long int const* q, int sy, 
                unsigned int *pm)
{
    __vr v0 = _vel_vld_vssl(8, q, 256);

    __vr tmp = _vel_vldlsx_vssl(4, pm, 256);
    __vm vm = _vel_vfmkwgt_mvl(tmp, 256);

    __vr v1 = _vel_vld_vssl(8, p, 256);
    v1 = _vel_vmv_vsvmvl(sy, v0, vm, v1, 256);
    _vel_vst_vssl(v1, 8, p, 256);
}

void vmv_vsvmvl_i(unsigned long int* p, unsigned long int const* q, int,
                  unsigned int *pm)
{
    __vr v0 = _vel_vld_vssl(8, q, 256);

    __vr tmp = _vel_vldlsx_vssl(4, pm, 256);
    __vm vm = _vel_vfmkwgt_mvl(tmp, 256);

    __vr v1 = _vel_vld_vssl(8, p, 256);
    v1 = _vel_vmv_vsvmvl(SY, v0, vm, v1, 256);
    _vel_vst_vssl(v1, 8, p, 256);
}


#endif

#ifdef TEST
#include <stdio.h>
#include "util.h"

void vmv(unsigned long int*, unsigned long int const*, int);
void vmv_i(unsigned long int*, unsigned long int const*, int);
void vmv_vsvmvl(unsigned long int* p, unsigned long int const* q, int n, 
                unsigned int *pm);
void vmv_vsvmvl_i(unsigned long int* p, unsigned long int const* q, int n, 
                unsigned int *pm);

int test_vmv_vsvl_(int sy, void (*func)(unsigned long int*,
                                        unsigned long int const*,
                                        int))
{
    unsigned long int x[256];
    unsigned long int y[256];

    for (int i = 0; i < 256; ++i) {
        x[i] = i;
    }

    func(y, x, sy);

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
        flag &= (y[i] == (i + sy) % 256);
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

int test_vmv_vsvmvl_(int sy, void (*func)(unsigned long int*, 
                                          unsigned long int const*, 
                                          int, 
                                          unsigned int*))
{
    const int N = 256;
    unsigned long int x[256];
    unsigned long int y[256];
    unsigned int m[256];

    for (int i = 0; i < 256; ++i) {
        x[i] = i;
        y[i] = i;
        m[i] = getrand<unsigned int>() % 2;
    }

    func(y, x, sy, m);

#if 0
    for (int i = 0; i < N; ++i) {
        fprintf(stderr, " %8d", m[i]);
        if (i % 16 == 15)
            fprintf(stderr, "\n");
    }

    fprintf(stderr, "y=\n");
    for (int i = 0; i < N; ++i) {
        fprintf(stderr, " %8d", y[i]);
        if (i % 16 == 15)
            fprintf(stderr, "\n");
    }
#endif

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
        if (m[(i+sy)%256]) 
            flag &= (y[i] == (i + sy) % 256);
        else
            flag &= (y[i] == i);
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

int test_vmv_vsvl() { return test_vmv_vsvl_(10, vmv); }
int test_vmv_vsvl_i() { return test_vmv_vsvl_(SY, vmv_i); }

int test_vmv_vsvmvl() { return test_vmv_vsvmvl_(10, vmv_vsvmvl); }
int test_vmv_vsvmvl_i() { return test_vmv_vsvmvl_(SY, vmv_vsvmvl_i); }

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_vmv_vsv", test_vmv_vsvl);
REGISTER_TEST("vel_vmv_vsv(imm)", test_vmv_vsvl);
REGISTER_TEST("vel_vmv_vsvmvl", test_vmv_vsvmvl);
REGISTER_TEST("vel_vmv_vsvmvl(imm)", test_vmv_vsvmvl_i);
#endif
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vmv_vsvl();
    test_vmv_vsvl_i();
    test_vmv_vsvmvl();
    test_vmv_vsvmvl_i();
    return 0;
}
#endif

