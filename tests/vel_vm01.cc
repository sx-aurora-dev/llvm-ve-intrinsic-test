#ifdef __clang__
#include <velintrin.h>

void vel_vm01(double* px, double* py, unsigned int* pm, int n)
{
    __vm256 vm = _vel_vfmklat_ml(256);

    for (int i = 0; i < n; i += 256) {
        int vl = n - i < 256 ? n - i : 256;

        __vr v0 = _vel_vldlzx_vssl(4, pm, vl);
        __vm256 vm0 = _vel_vfmkwgt_mvl(v0, vl);
        vm = _vel_nndm_mmm(vm0, vm);

        __vr vx = _vel_vld_vssl(8, px, vl);
        __vr vy = _vel_vld_vssl(8, py, vl);
        vx = _vel_vfaddd_vvvmvl(vx, vy, vm, vx, vl);
        _vel_vst_vssl(vx, 8, px, vl);

        px += vl;
        py += vl;
        pm += vl;
    }
}

#endif // __clang__

#ifdef TEST
#include <cstdio>
#include <cmath>
#include "util.h"

static void ref_vel_vm01(double* px, double* py, unsigned int* pm, int n)
{
    bool mask[256];
    for (int i = 0; i < 256; ++i) 
        mask[i] = true;

    for (int i = 0; i < n; i += 256) {
        int vl = n - i < 256 ? n - i : 256;

        for (int j = 0; j < vl; ++j) {
            mask[j] =  (!(pm[i + j] > 0)) & mask[j];
        }

        for (int j = 0; j < vl; ++j)
            if (mask[j])
                px[i+j] = px[i+j] + py[i+j];
    }
}

void vel_vm01(double* px, double* py, unsigned int* pm, int n);

static int test_vel_vm01()
{
    const int n = 1000;

    double x0[n];
    double x1[n];
    double y[n];
    unsigned int m[n];

    for (int i = 0; i < n; ++i) {
        x0[i] = 0.0;
        x1[i] = 0.0;
        y[i] = getrand<double>();
        m[i] = getrand<unsigned int>() % 2;
    }

    vel_vm01(x0, y, m, n);
    ref_vel_vm01(x1, y, m, n);

    int ret = 1;
    for (int i = 0; i < n; ++i) {
        if (x0[i] != x1[i]) {
            ret &= 0;
#ifdef MAIN
            fprintf(stderr, "%8u %18.12e %18.12e %18.12e\n", 
                    m[i], x0[i], x1[i], std::abs(x0[i] - x1[i]));
#endif
        }
    }
#ifdef MAIN
    fprintf(stderr, "%s\n", ret ? "OK" : "NG");
#endif

    return ret;
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_vm01", test_vel_vm01);
#endif // HAVE_REGISTER_TEST
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vel_vm01();
    return 0;
}
#endif
