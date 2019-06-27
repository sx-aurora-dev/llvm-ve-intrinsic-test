#include <stdio.h>
#ifdef __clang__
#include <velintrin.h>
unsigned long vel_pack_f32a(float const* p)
{
    return _vel_pack_f32a(p); 
}
#endif

#ifdef TEST
extern unsigned long ve_pack_f32a(float const* p);
#include <stdio.h>
#include <stdlib.h>
int test_pack_f32a()
{
#if 1
    float x = drand48();

    unsigned long int y = vel_pack_f32a(&x);

    //fprintf(stderr, "x[0]=%08x x[1]=%08x y=%016lx\n", ((unsigned int*)x)[0], ((unsigned int*)x)[1], y);

    unsigned int p0 = y >> 32;
    unsigned int p1 = y & 0xffffffff;

    float y0 = *(float*)&p0;
    float y1 = *(float*)&p1;

#ifdef MAIN
    fprintf(stderr, "%s # x=%f y0=%f y1=%f\n", (x == y0 && x == y1) ? "OK" : "NG", x, y0, y1);
#endif
    return x == y0 && x == y1;
#endif
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("pack_f32a", test_pack_f32a);
#endif // HAVE_REGISTER_TEST
#endif // TEST

#ifdef MAIN
#include <stdio.h>
int main(int argc, char* argv[])
{
    test_pack_f32a();
}
#endif
