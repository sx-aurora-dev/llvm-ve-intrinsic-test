#ifdef __clang__
#include <veintrin.h>
__attribute__((noinline))
void loop01(double* pvx, double* pvy, double* pvz, int n)
{
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}

void loop01w(double* pvx, double* pvy, double* pvz, int n)
{
    _ve_lvl(256);
    loop01(pvx, pvy, pvz, n);
}
#endif

#ifdef TEST
#include <stdio.h>
#include <stdlib.h>
void loop01w(double* pvx, double* pvy, double* pvz, int n);
int test_loop01()
{
#define N 2000
    double x0[N];
    double x1[N];
    double y[N];
    double z[N];

    memset(x0, 0, sizeof(double)*N);
    memset(x1, 0, sizeof(double)*N);
    for (int i = 0; i < N; ++i) {
        y[i] = drand48();
        z[i] = drand48();
        x1[i] = y[i] + z[i];
    }

    loop01w(x0, y, z, N);

    double d = 0.0;
    for (int i = 0; i < N; ++i) {
        d += (x0[i]-x1[i])*(x0[i]-x1[i]);
    }

#ifdef MAIN
    fprintf(stderr, "d=%e\n", d);
#endif

    return d < 1e-10;
}
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    return test_loop01() ? 0 : 1;
}
#endif

