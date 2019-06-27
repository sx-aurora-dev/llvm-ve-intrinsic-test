#ifdef __clang__
#include <veintrin.h>
void vscot_vv(double const* px, double* py, unsigned long int const* pidx, double* ptmp)
{
    _ve_lvl(256);
    __vr vx = _ve_vld_vss(8, px);
    __vr vidx = _ve_vld_vss(8, pidx);

    // ptmp[pidx[i]] = px[i]
    __vr vaddr = _ve_vsfa_vvss(vidx, 3, (unsigned long int)ptmp);
#if 0
    _ve_vsc_vv(vx, vaddr);
#else
    _ve_vscot_vv(vx, vaddr);
    _ve_svob();
#endif

    // py[i] = ptmp[i]
    __vr vy = _ve_vld_vss(8, ptmp);
    _ve_vst_vss(vy, 8, py);
}

void vscuot_vv(float const* px, float* py, unsigned long int const* pidx, float* ptmp)
{
    _ve_lvl(256);
    __vr vx = _ve_vldu_vss(4, px);
    __vr vidx = _ve_vld_vss(8, pidx);

    // ptmp[pidx[i]] = px[i]
    __vr vaddr = _ve_vsfa_vvss(vidx, 2, (unsigned long int)ptmp);
    _ve_vscu_vv(vx, vaddr);
    _ve_svob();

    // py[i] = ptmp[i]
    __vr vy = _ve_vldu_vss(4, ptmp);
    _ve_vstu_vss(vy, 4, py);
}

void vsclot_vv(int const* px, int* py, unsigned long int const* pidx, int* ptmp)
{
    _ve_lvl(256);
    __vr vx = _ve_vldlsx_vss(4, px);
    __vr vidx = _ve_vld_vss(8, pidx);

    // ptmp[pidx[i]] = px[i]
    __vr vaddr = _ve_vsfa_vvss(vidx, 2, (unsigned long int)ptmp);
    _ve_vsclot_vv(vx, vaddr);
    _ve_svob();

    // py[i] = ptmp[i]
    __vr vy = _ve_vldlsx_vss(4, ptmp);
    _ve_vstl_vss(vy, 4, py);
}
#endif // __clang__

#ifdef TEST
#include <cstring>
#include <cstdio>
#include "util.h"

template <typename T>
int test_vscot_vv_tmpl(void (*func)(T const*, T*, unsigned long int const*, T*))
{
#define N 256
    T x[N];
    T tmp[N];
    T y0[N];
    T y1[N];
    unsigned long idx[N];

    memset(tmp, 0, sizeof(T) * N);
    memset(y0, 0, sizeof(T) * N);
    memset(y1, 0, sizeof(T) * N);
    for (int i = 0; i < N; ++i) {
        x[i] = getrand<T>();
        idx[i] = getrand<unsigned int>() % N;
    }

    func(x, y0, idx, tmp);

    for (int i = 0; i < N; ++i) {
        y1[idx[i]] = (T)x[i];
    }

    int flag = 1;
    for (int i = 0; i < N; ++i) {
        flag &= y0[i] == y1[i];
    }

    return flag;
#undef N
}

#define DEFINE_TEST(name, T) \
int test_##name() \
{ \
    void name(T const*, T*, unsigned long int const*, T*); \
    return test_vscot_vv_tmpl<T>(name); \
}

DEFINE_TEST(vscot_vv, double);
DEFINE_TEST(vscuot_vv, float);
DEFINE_TEST(vsclot_vv, int);

#ifdef HAVE_REGISTER_TEST
extern "C" {
    void register_test(char const* name, int (*func)(void));
}

__attribute__((constructor))
static void init()
{
    register_test("vscot_vv", test_vscot_vv);
    register_test("vscuot_vv", test_vscuot_vv);
    register_test("vsclot_vv", test_vsclot_vv);
}
#endif
#endif // TEST

#ifdef MAIN
#include <cstdio>
int main(int argc, char* argv[])
{
    fprintf(stderr, "test_vscuot_vv: %s\n", test_vscuot_vv() ? "OK" : "NG");
    return 0;
}
#endif
