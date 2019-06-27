#ifdef __clang__
#include <velintrin.h>

void vfsdiv(double* px, double s0, double* pz, int l)
{
    __vr v0 = _vel_vld_vssl(8, pz, l);
    v0 = _vel_vfdivdA_vsvl(s0, v0, l);
    _vel_vst_vssl(v0, 8, px, l);
}
#endif

#ifdef TEST
#include <stdio.h>
extern void vfsdiv(double* px, double s0, double* pz, int l);
int test_vfdivdA_vsvl()
{
    const int N = 256;
    double vx0[N];
    double vx1[N];
    double sy;
    double vz[N];

    sy = 256;
    for (int i = 0; i < N; ++i) {
        vx0[i] = 0;
        vz[i] = i+1;
        vx0[i] = sy / vz[i];
    }

    vfsdiv(vx1, sy, vz, N);

    int flag = 1;
    for (int i = 0; i < N; ++i) {
        flag &= (vx0[i] == vx1[i]);
        if (vx0[i] != vx1[i]) {
            fprintf(stderr, "%e %e\n", vx0[i], vx1[i]);
        }
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __FUNCTION__, flag ? "OK" : "NG");
#endif

#if 0
    for (int i = 0; i < 256; ++i) {
        fprintf(stderr, " %8.3f", vx0[i]);
        if (i % 16 == 15)
            fprintf(stderr, "\n");
    }

    for (int i = 0; i < 256; ++i) {
        fprintf(stderr, " %8.3f", vx1[i]);
        if (i % 16 == 15)
            fprintf(stderr, "\n");
    }
#endif

    return flag;
}
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vfdivdA_vsvl();
    return 0;
}
#endif

#ifdef HAVE_REGISTER_TEST
void register_test(char const* name, int (*func)(void));

__attribute__((constructor))
static void init()
{
    register_test("vfdivdA_vsvl", test_vfdivdA_vsvl);
}
#endif

