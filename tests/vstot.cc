#ifdef __clang__
#include <veintrin.h>
void vstot_vss(double const* px, double* py, double* ptmp)
{
    _ve_lvl(256);
    __vr vx = _ve_vld_vss(8, px);
    _ve_vstot_vss(vx, 8, ptmp);
    _ve_svob();
    __vr vy = _ve_vld_vss(8, ptmp);
    _ve_vst_vss(vy, 8, py);
}

void vstuot_vss(float const* px, float* py, float* ptmp)
{
    _ve_lvl(256);
    __vr vx = _ve_vldu_vss(4, px);
    _ve_vstuot_vss(vx, 4, ptmp);
    _ve_svob();
    __vr vy = _ve_vldu_vss(4, ptmp);
    _ve_vstu_vss(vy, 4, py);
}

void vstlot_vss(int const* px, int* py, int* ptmp)
{
    _ve_lvl(256);
    __vr vx = _ve_vldlsx_vss(4, px);
    _ve_vstlot_vss(vx, 4, ptmp);
    _ve_svob();
    __vr vy = _ve_vldlsx_vss(4, ptmp);
    _ve_vstl_vss(vy, 4, py);
}
#endif // __clang__

#ifdef TEST
#include <cstring>
#include <cstdio>
#include "util.h"

template <typename T>
int test_vstot_vss_tmpl(void (*func)(T const*, T*, T*))
{
#define N 256
    T x[N];
    T tmp[N];
    T y[N];

    memset(tmp, 0, sizeof(T) * N);
    memset(y, 0, sizeof(T) * N);
    for (int i = 0; i < N; ++i) {
        x[i] = getrand<T>();
    }

    func(x, y, tmp);

    int flag = 1;
    for (int i = 0; i < N; ++i) {
        flag &= y[i] == x[i];
    }

    return flag;
#undef N
}

#define DEFINE_TEST(name, T) \
int test_##name() \
{ \
    void name(T const*, T*, T*); \
    return test_vstot_vss_tmpl<T>(name); \
}

DEFINE_TEST(vstot_vss, double);
DEFINE_TEST(vstuot_vss, float);
DEFINE_TEST(vstlot_vss, int);

#ifdef HAVE_REGISTER_TEST
extern "C" {
    void register_test(char const* name, int (*func)(void));
}

__attribute__((constructor))
static void init()
{
    register_test("vstot_vss", test_vstot_vss);
    register_test("vstuot_vss", test_vstuot_vss);
    register_test("vstlot_vss", test_vstlot_vss);
}
#endif
#endif // TEST

#ifdef MAIN
#include <cstdio>
int main(int argc, char* argv[])
{
    fprintf(stderr, "test_vstot_vss: %s\n", test_vstot_vss() ? "OK" : "NG");
    fprintf(stderr, "test_vstuot_vss: %s\n", test_vstuot_vss() ? "OK" : "NG");
    fprintf(stderr, "test_vstlot_vss: %s\n", test_vstlot_vss() ? "OK" : "NG");
    return 0;
}
#endif
