#ifdef __clang__
double faddd(double sy, double sz)
{
    return sy + sz;
}
#endif

#ifdef TEST
#include <stdlib.h>
#include <stdio.h>
double faddd(double sy, double sz);
int test_faddd()
{
    double sy = drand48();
    double sz = drand48();
    double sx0 = faddd(sy, sz);
    double sx1 = sy + sz;

#ifdef MAIN
    fprintf(stderr, "%e %e => %d\n", sx0, sx1, sx0 == sx1);
#endif

    return sx0 == sx1;
}
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    return test_faddd() ? 0 : 1;
}
#endif
