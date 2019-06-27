#ifdef __clang__
float fadds(float sy, float sz)
{
    return sy + sz;
}
#endif

#ifdef TEST
#include <stdlib.h>
#include <stdio.h>
float fadds(float sy, float sz);
int test_fadds()
{
    float sy = drand48();
    float sz = drand48();
    float sx0 = fadds(sy, sz);
    float sx1 = sy + sz;

#ifdef MAIN
    fprintf(stderr, "%e %e => %d\n", sx0, sx1, sx0 == sx1);
#endif

    return sx0 == sx1;
}
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    return test_fadds() ? 0 : 1;
}
#endif
