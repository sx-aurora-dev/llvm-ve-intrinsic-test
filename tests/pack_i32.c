#ifdef __clang__
#include <velintrin.h>
unsigned long int pack_i32(int sy, int sz)
{
    return _vel_pack_i32(sy, sz);
}
#endif

#ifdef TEST
#include <stdio.h>
#include <stdlib.h>
unsigned long int pack_i32(int sy, int sz);
int test_pack_i32()
{
    int x0 = mrand48();
    int x1 = mrand48();

    unsigned long int y = pack_i32(x0, x1);

    //fprintf(stderr, "x[0]=%08x x[1]=%08x y=%016lx\n", ((unsigned int*)x)[0], ((unsigned int*)x)[1], y);

    unsigned int p0 = y >> 32;
    unsigned int p1 = y & 0xffffffff;

    int y0 = *(int*)&p0;
    int y1 = *(int*)&p1;

#ifdef MAIN
    fprintf(stderr, "x[0]=%d x[1]=%d y0=%d y1=%d\n", x0, x1, y0, y1);
#endif
    return x0 == y0 && x1 == y1;
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("pack_i32", test_pack_i32);
#endif // HAVE_REGISTER_TEST
#endif // TEST


#ifdef MAIN
int main(int argc, char* argv[])
{
    fprintf(stderr, "ve_pack_i32: %s\n", test_ve_pack_i32() ? "OK" : "NG");
    return 0;
}
#endif
