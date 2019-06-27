#ifdef __clang__
#include <velintrin.h>
unsigned long int pack_f32p(float* p)
{
    unsigned long v = _vel_pack_f32p(p, p+1);
    return v;
}
#endif

#ifdef TEST
#include <stdio.h>
#include <stdlib.h>
unsigned long int pack_f32p(float* p);
int test_pack_f32p()
{
    float x[2];

    x[0] = drand48();
    x[1] = drand48();

    unsigned long int y = pack_f32p(x);

    //fprintf(stderr, "x[0]=%08x x[1]=%08x y=%016lx\n", ((unsigned int*)x)[0], ((unsigned int*)x)[1], y);

    unsigned int p0 = y >> 32;
    unsigned int p1 = y & 0xffffffff;

    float y0 = *(float*)&p0;
    float y1 = *(float*)&p1;

#ifdef MAIN
    fprintf(stderr, "x[0]=%f x[1]=%f y0=%f y1=%f\n", x[0], x[1], y0, y1);
#endif
    return x[0] == y0 && x[1] == y1;
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("pack_f32p", test_pack_f32p);
#endif // HAVE_REGISTER_TEST
#endif // TEST


#ifdef MAIN
int main(int argc, char* argv[])
{
    fprintf(stderr, "ve_pack_f32p: %s\n", test_pack_f32p() ? "OK" : "NG");
    return 0;
}
#endif
