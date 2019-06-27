#ifdef __clang__
#include <velintrin.h>
unsigned long lvsl_svs(unsigned long* pvx, int sy)
{
    // return pvx[sy]

    __vr vx = _vel_vld_vssl(8, pvx, 256);
    return _vel_lvsl_svs(vx, sy);
}

double lvsd_svs(double* pvx, int sy)
{
    // return pvx[sy]

    __vr vx = _vel_vld_vssl(8, pvx, 256);
    return _vel_lvsd_svs(vx, sy);
}

float lvss_svs(float* pvx, int sy)
{
    // return pvx[sy]

    __vr vx = _vel_vldu_vssl(4, pvx, 256);
    return _vel_lvss_svs(vx, sy);
}
#endif

#ifdef TEST
#include <string.h>
#include <stdio.h>
unsigned long lvsl_svs(unsigned long* pvx, int sy);
double lvsd_svs(double* pvx, int sy);
float lvss_svs(float* pvx, int sy);

int test_lvsl()
{
    unsigned long x[256];
    memset(x, 0, sizeof(unsigned long) * 256);
    x[1] = 1215UL;
    unsigned long sx = lvsl_svs(x, 1);

#ifdef MAIN
    fprintf(stderr, "%lu %lu\n", x[1], sx);
#endif
    return sx == 1215UL;
}

int test_lvsd()
{
    double x[256];
    memset(x, 0, sizeof(double) * 256);
    x[2] = 1.215;
    double sx = lvsd_svs(x, 2);

#ifdef MAIN
    fprintf(stderr, "%e %e\n", sx, x[2]);
#endif
    return sx == 1.215;
}

int test_lvss()
{
    float x[256];
    memset(x, 0, sizeof(float) * 256);
    x[3] = 1.215f;
    float sx = lvss_svs(x, 3);

#ifdef MAIN
    fprintf(stderr, "%e %e\n", sx, x[3]);
#endif
    return sx == 1.215f;
}


#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("_vel_lvsl_svs", test_lvsl);
REGISTER_TEST("_vel_lvsd_svs", test_lvsd);
REGISTER_TEST("_vel_lvss_svs", test_lvss);
#endif
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv[])
{
    fprintf(stdout, "test_lvsl: %s\n", test_lvsl() ? "OK" : "NG");
    fprintf(stdout, "test_lvsl: %s\n", test_lvsd() ? "OK" : "NG");
    fprintf(stdout, "test_lvss: %s\n", test_lvss() ? "OK" : "NG");

    return 0;
}
#endif

