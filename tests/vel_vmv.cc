#ifdef __clang__
#include <velintrin.h>
void vmv(unsigned long int* p, unsigned long int const* q, int n)
{
    ;
    __vr v0 = _vel_vld_vssl(8, q, 256);
    __vr v1 = _vel_vmv_vsvl(n, v0, 256);
    _vel_vst_vssl(v1, 8, p, 256);
}

void vmv_i(unsigned long int* p, unsigned long int const* q)
{
    ;
    __vr v0 = _vel_vld_vssl(8, q, 256);
    __vr v1 = _vel_vmv_vsvl(3, v0, 256);
    _vel_vst_vssl(v1, 8, p, 256);
}
#endif

#ifdef TEST
#include <stdio.h>
void vmv(unsigned long int*, unsigned long int const*, int);
void vmv_i(unsigned long int*, unsigned long int const*);
int test_vmv_vsv()
{
    unsigned long int x[256];
    unsigned long int y[256];

    for (int i = 0; i < 256; ++i) {
        x[i] = i;
    }

    vmv(y, x, 10);

#ifdef MAIN
    fprintf(stderr, "y[%d]=%d\n", 0, y[0]);
#endif

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
        flag &= (y[i] == (i + 10) % 256);
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

int test_vmv_vIv()
{
    unsigned long int x[256];
    unsigned long int y[256];

    for (int i = 0; i < 256; ++i) {
        x[i] = i;
    }

    vmv_i(y, x);

#ifdef MAIN
    fprintf(stderr, "y[%d]=%d\n", 0, y[0]);
#endif

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
        flag &= (y[i] == (i + 3) % 256);
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_vmv_vsv", test_vmv_vsv);
REGISTER_TEST("vel_vmv_vIv", test_vmv_vIv);
#endif
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vmv_vsv();
    test_vmv_vIv();
}
#endif

