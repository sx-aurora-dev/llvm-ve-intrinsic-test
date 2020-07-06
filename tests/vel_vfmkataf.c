#ifdef __clang__
#include <velintrin.h>
#define TEST_MASK(vm, i, v) (_vel_svm_sms(vm, i) == v)

#define TEST_MASK4(vm, v) \
    TEST_MASK(vm, 0, v) && \
    TEST_MASK(vm, 1, v) && \
    TEST_MASK(vm, 2, v) && \
    TEST_MASK(vm, 3, v)

#define TEST_MASK512(vm, i, v) (_vel_svm_sMs(vm, i) == v)
#define TEST_MASK8(vm, v) \
    TEST_MASK512(vm, 0, v) && \
    TEST_MASK512(vm, 1, v) && \
    TEST_MASK512(vm, 2, v) && \
    TEST_MASK512(vm, 3, v) && \
    TEST_MASK512(vm, 4, v) && \
    TEST_MASK512(vm, 5, v) && \
    TEST_MASK512(vm, 6, v) && \
    TEST_MASK512(vm, 7, v)

int vel_vfmklat()
{
    __vm vm = _vel_vfmklat_ml(256);
    return TEST_MASK4(vm, ~0x0UL);
}

int vel_vfmklaf()
{
    __vm vm = _vel_vfmklaf_ml(256);
    return TEST_MASK4(vm, 0x0UL);
}

int vel_pvfmkat()
{
    __vm512 vm = _vel_pvfmkat_Ml(256);
    return TEST_MASK8(vm, ~0x0UL);
}

int vel_pvfmkaf()
{
    __vm512 vm = _vel_pvfmkaf_Ml(256);
    return TEST_MASK8(vm, 0x0UL);
}
#endif // __clang__

#ifdef TEST
#include <stdio.h>
extern int vel_vfmklat();
extern int vel_vfmklaf();
extern int vel_pvfmkat();
extern int vel_pvfmkaf();

static int test(const char* name, int (*func)(void)) { 
    int ret = func();
#ifdef MAIN
    fprintf(stderr, "%s: %s\n", name, ret ? "OK" : "NG");
#endif
    return ret;
}

int test_vel_vfmklat() { return test("vel_vfmklat", vel_vfmklat); }
int test_vel_vfmklaf() { return test("vel_vfmklaf", vel_vfmklaf); }
int test_vel_pvfmkat() { return test("vel_pvfmkat", vel_pvfmkat); }
int test_vel_pvfmkaf() { return test("vel_pvfmkaf", vel_pvfmkaf); }

#endif

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"

__attribute__((constructor))
    static void init()
{
    register_test("vel_vfmklat", test_vel_vfmklat);
    register_test("vel_vfmklaf", test_vel_vfmklaf);
    register_test("vel_pvfmkat", test_vel_pvfmkat);
    register_test("vel_pvfmkaf", test_vel_pvfmkaf);
}
#endif // HAVE_REGISTER_TEST

#ifdef MAIN
extern int test_vfmkat();
int main(int argc, char* argv[])
{
    test_vel_vfmklat();
    test_vel_vfmklaf();
    test_vel_pvfmkat();
    test_vel_pvfmkaf();
}
#endif // MAIN
