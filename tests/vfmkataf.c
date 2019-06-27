#ifdef __clang__
#include <veintrin.h>
#define TEST_MASK(vm, i, v) (_ve_svm_sms(vm, i) == v)

#define TEST_MASK4(vm, v) \
    TEST_MASK(vm, 0, v) && \
    TEST_MASK(vm, 1, v) && \
    TEST_MASK(vm, 2, v) && \
    TEST_MASK(vm, 3, v)

#define TEST_MASK512(vm, i, v) (_ve_svm_sMs(vm, i) == v)
#define TEST_MASK8(vm, v) \
    TEST_MASK512(vm, 0, v) && \
    TEST_MASK512(vm, 1, v) && \
    TEST_MASK512(vm, 2, v) && \
    TEST_MASK512(vm, 3, v) && \
    TEST_MASK512(vm, 4, v) && \
    TEST_MASK512(vm, 5, v) && \
    TEST_MASK512(vm, 6, v) && \
    TEST_MASK512(vm, 7, v)

int vfmkat()
{
    _ve_lvl(256);
    __vm vm = _ve_vfmkat_m();
    return TEST_MASK4(vm, ~0x0UL);
}

int vfmkaf()
{
    _ve_lvl(256);
    __vm vm = _ve_vfmkaf_m();
    return TEST_MASK4(vm, 0x0UL);
}

#if 1
int pvfmkat()
{
    _ve_lvl(256);
    __vm512 vm = _ve_pvfmkat_M();
    return TEST_MASK8(vm, ~0x0UL);
}

int pvfmkaf()
{
    _ve_lvl(256);
    __vm512 vm = _ve_pvfmkaf_M();
    return TEST_MASK8(vm, 0x0UL);
}
#endif
#endif // __clang__

#ifdef TEST
#include <stdio.h>
extern int vfmkat();
extern int vfmkaf();
extern int pvfmkat();
extern int pvfmkaf();

static int test(const char* name, int (*func)(void)) { 
    int ret = func();
#ifdef MAIN
    fprintf(stderr, "%s: %s\n", name, ret ? "OK" : "NG");
#endif
    return ret;
}

int test_vfmkat() { return test("vfmkat", vfmkat); }
int test_vfmkaf() { return test("vfmkaf", vfmkaf); }
int test_pvfmkat() { return test("pvfmkat", pvfmkat); }
int test_pvfmkaf() { return test("pvfmkaf", pvfmkaf); }

#endif

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"

__attribute__((constructor))
    static void init()
{
    register_test("vfmkat", test_vfmkat);
    register_test("vfmkaf", test_vfmkaf);
    register_test("pvfmkat", test_pvfmkat);
    register_test("pvfmkat", test_pvfmkaf);
}
#endif // HAVE_REGISTER_TEST

#ifdef MAIN
extern int test_vfmkat();
int main(int argc, char* argv[])
{
    test_vfmkat();
    test_vfmkaf();
    test_pvfmkat();
    test_pvfmkaf();
}
#endif // MAIN
