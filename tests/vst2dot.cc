#ifdef __clang__
#include <veintrin.h>
void vst2dot_vss(double const* pi, unsigned long int sy, void* sz, double* po)
{
    _ve_lvl(256);
    __vr vx = _ve_vld_vss(8, pi);
    _ve_vst2dot_vss(vx, sy, sz);
    _ve_svob();
    __vr vz =_ve_vld2d_vss(sy, sz);
    _ve_vst_vss(vz, 8, po);
}

void vstu2dot_vss(float const* pi, unsigned long int sy, void* sz, float* po)
{
    _ve_lvl(256);
    __vr vx = _ve_vldu_vss(4, pi);
    _ve_vstu2dot_vss(vx, sy, sz);
    _ve_svob();
    __vr vz =_ve_vldu2d_vss(sy, sz);
    _ve_vstu_vss(vz, 4, po);
}

void vstl2dot_vss(int const* pi, unsigned long int sy, void* sz, int* po)
{
    _ve_lvl(256);
    __vr vx = _ve_vldlsx_vss(4, pi);
    _ve_vstl2dot_vss(vx, sy, sz);
    _ve_svob();
    __vr vz =_ve_vldl2dsx_vss(sy, sz);
    _ve_vstl_vss(vz, 4, po);
}
#endif // __clang__

#ifdef TEST
#include <cstring>
#include <cstdio>
#include "util.h"

template <typename T>
int test_vst2dot_vss_tmpl(void (*func)(T const*, unsigned long int, void*, T*))
{
    T buf[16*256];
    T in[256];
    T out[256];

    memset(buf, 0, sizeof(T) * 16 * 256);
    memset(out, 0, sizeof(T) * 256);
    for (int i = 0; i < 256; ++i)
        in[i] = getrand<T>();

    int STR = 256;
    int STC = 1;

    unsigned long int sy = (STR*sizeof(T)) << 16 | (STC*sizeof(T));

    func(in, sy, buf, out);

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
        //fprintf(stderr, "%20.3e%s", vz[i], i%8==7 ? "\n" : "");
        flag &= in[i] == out[i];
    }

#ifdef MAIN
    //fprintf(stderr, "%s: %s\n", __PRETTY_FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

#define DEFINE_TEST(name, T) \
int test_##name() \
{ \
    void name(T const*, unsigned long int, void*, T*); \
    return test_vst2dot_vss_tmpl<T>(name); \
}

DEFINE_TEST(vst2dot_vss, double);
DEFINE_TEST(vstu2dot_vss, float);
DEFINE_TEST(vstl2dot_vss, int);

#ifdef HAVE_REGISTER_TEST
extern "C" {
    void register_test(char const* name, int (*func)(void));
}

__attribute__((constructor))
static void init()
{
    register_test("vst2dot_vss", test_vst2dot_vss);
    register_test("vstu2dot_vss", test_vstu2dot_vss);
    register_test("vstl2dot_vss", test_vstl2dot_vss);
}
#endif
#endif // TEST

#ifdef MAIN
#include <cstdio>
int main(int argc, char* argv[])
{
    fprintf(stderr, "test_vst2dot_vss: %s\n", test_vst2dot_vss() ? "OK" : "NG");
    fprintf(stderr, "test_vstu2dot_vss: %s\n", test_vstu2dot_vss() ? "OK" : "NG");
    fprintf(stderr, "test_vstl2dot_vss: %s\n", test_vstl2dot_vss() ? "OK" : "NG");
    return 0;
}
#endif
