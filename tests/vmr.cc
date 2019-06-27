#ifdef __clang__
#include <veintrin.h>
unsigned long int pcvm_sm(unsigned long int* pvm)
{
    _ve_lvl(256);
    __vm vm;
    vm = _ve_lvm_mmss(vm, 0, pvm[0]);
    vm = _ve_lvm_mmss(vm, 1, pvm[1]);
    vm = _ve_lvm_mmss(vm, 2, pvm[2]);
    vm = _ve_lvm_mmss(vm, 3, pvm[3]);

    return _ve_pcvm_sm(vm);
}

unsigned long int lzvm_sm(unsigned long int* pvm)
{
    _ve_lvl(256);
    __vm vm;
    vm = _ve_lvm_mmss(vm, 0, pvm[0]);
    vm = _ve_lvm_mmss(vm, 1, pvm[1]);
    vm = _ve_lvm_mmss(vm, 2, pvm[2]);
    vm = _ve_lvm_mmss(vm, 3, pvm[3]);

    return _ve_lzvm_sm(vm);
}

unsigned long int tovm_sm(unsigned long int* pvm)
{
    _ve_lvl(256);
    __vm vm;
    vm = _ve_lvm_mmss(vm, 0, pvm[0]);
    vm = _ve_lvm_mmss(vm, 1, pvm[1]);
    vm = _ve_lvm_mmss(vm, 2, pvm[2]);
    vm = _ve_lvm_mmss(vm, 3, pvm[3]);

    return _ve_tovm_sm(vm);
}
#endif

#ifdef TEST
#include <stdlib.h>
#include <stdio.h>
int test_pcvm_sm()
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

int test_lzvm_sm()
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

int test_tovm_sm()
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
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_pcvm_sm();
    test_lzvm_sm();
    test_tovm_sm();
    return 0;
}
#endif
