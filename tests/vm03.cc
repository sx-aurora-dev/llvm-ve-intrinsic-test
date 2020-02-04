#include <stdio.h>

#ifdef __clang__

#include <velintrin.h>

__attribute__((optnone))
__vm256 func() {
    return __vm256();
}

int _test_vm03() 
{
    __vm256 vm = func();

    bool flag = true;
    for (int i = 0; i < 4; ++i) {
        unsigned long x = _vel_svm_sms(vm, i);
        flag &= x == 0x0;

    }

    return flag ? 1 : 0;
}
#endif // __clang__

#ifdef TEST
int test_vm03() {
    int _test_vm03();
    return _test_vm03();
}
#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vm03", test_vm03);
#endif
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv)
{
    fprintf(stderr, "vm03: %s\n", test_vm03() == 1 ? "OK" : "NG");
    return 0;
}
#endif
