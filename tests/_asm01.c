#ifdef __clang__
#include <stdio.h>
#include <unistd.h>
static unsigned long long __ve_get_stm()
{
    void* vehva = (void*)0x1000;
    unsigned long long val;
    asm volatile ("lhm.l %0,0(%1)": "=r"(val) : "r"(vehva));
    return val;
}
void test()
{
    fprintf(stderr, "%lu\n", __ve_get_stm());
}
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    void test();
    test();
}
#endif
