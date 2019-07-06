#ifdef __clang__
#include <velintrin.h>
unsigned long int vel_pcvm_sm(unsigned long int* pvm)
{
    ;
    __vm vm;
    vm = _vel_lvm_mmss(vm, 0, pvm[0]);
    vm = _vel_lvm_mmss(vm, 1, pvm[1]);
    vm = _vel_lvm_mmss(vm, 2, pvm[2]);
    vm = _vel_lvm_mmss(vm, 3, pvm[3]);

    return _vel_pcvm_sml(vm, 256);
}

unsigned long int vel_lzvm_sm(unsigned long int* pvm)
{
    ;
    __vm vm;
    vm = _vel_lvm_mmss(vm, 0, pvm[0]);
    vm = _vel_lvm_mmss(vm, 1, pvm[1]);
    vm = _vel_lvm_mmss(vm, 2, pvm[2]);
    vm = _vel_lvm_mmss(vm, 3, pvm[3]);

    return _vel_lzvm_sml(vm, 256);
}

unsigned long int vel_tovm_sm(unsigned long int* pvm)
{
    ;
    __vm vm;
    vm = _vel_lvm_mmss(vm, 0, pvm[0]);
    vm = _vel_lvm_mmss(vm, 1, pvm[1]);
    vm = _vel_lvm_mmss(vm, 2, pvm[2]);
    vm = _vel_lvm_mmss(vm, 3, pvm[3]);

    return _vel_tovm_sml(vm, 256);
}
#endif

#ifdef TEST
#include <stdlib.h>
#include <stdio.h>
int test_vel_pcvm_sm()
{
    unsigned long int pcvm_sm(unsigned long int* pvm);
    unsigned long int vm[4];

    for (int i = 0; i < 4; ++i) {
        vm[i] = (lrand48() << 32 | lrand48());
    }

    unsigned long int sx0 = pcvm_sm(vm);

    unsigned long int sx1 = 0;
    for (int i = 0; i < 256; ++i) {
        int j = i / 64;
        int k = i % 64;
        if ((vm[j] >> (63 - k)) & 0x1)
            ++sx1;
    }

#ifdef MAIN
    fprintf(stderr, "%016lx %016lx %016lx %016lx\n", vm[0], vm[1], vm[2], vm[3]);
    fprintf(stderr, "%d %d %s\n", sx0, sx1, sx0 == sx1 ? "OK" : "NG");
#endif
    return sx0 == sx1;
}

int test_vel_lzvm_sm()
{
    unsigned long int lzvm_sm(unsigned long int* pvm);
    unsigned long int vm[4];

    for (int i = 0; i < 4; ++i) {
        vm[i] = (lrand48() << 32 | lrand48());
    }

    unsigned long int sx0 = lzvm_sm(vm);

    unsigned long int sx1 = 0;
    for (int i = 0; i < 256; ++i) {
        int j = i / 64;
        int k = i % 64;
        if (((vm[j] >> (63 - k)) & 0x1) == 0)
            ++sx1;
        else
            break;
    }

#ifdef MAIN
    fprintf(stderr, "%016lx %016lx %016lx %016lx\n", vm[0], vm[1], vm[2], vm[3]);
    fprintf(stderr, "%d %d %s\n", sx0, sx1, sx0 == sx1 ? "OK" : "NG");
#endif
    return sx0 == sx1;
}

int test_vel_tovm_sm()
{
    unsigned long int tovm_sm(unsigned long int* pvm);
    unsigned long int vm[4];

    for (int i = 0; i < 4; ++i) {
        vm[i] = (lrand48() << 32 | lrand48());
    }

    unsigned long int sx0 = tovm_sm(vm);

    unsigned long int sx1 = 0;
    for (int i = 255; i >= 0; --i) {
        int j = i / 64;
        int k = i % 64;
        if (((vm[j] >> (63 - k)) & 0x1) == 1) {
            sx1 = i + 1;
            break;
        }
    }

#ifdef MAIN
    fprintf(stderr, "%016lx %016lx %016lx %016lx\n", vm[0], vm[1], vm[2], vm[3]);
    fprintf(stderr, "%d %d %s\n", sx0, sx1, sx0 == sx1 ? "OK" : "NG");
#endif
    return sx0 == sx1;
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_pcvm_sm", test_vel_pcvm_sm);
REGISTER_TEST("vel_lzvm_sm", test_vel_lzvm_sm);
REGISTER_TEST("vel_tovm_sm", test_vel_tovm_sm);
#endif
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vel_pcvm_sm();
    test_vel_lzvm_sm();
    test_vel_tovm_sm();
    return 0;
}
#endif
