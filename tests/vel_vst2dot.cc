#ifdef __clang__
#include <velintrin.h>
void vel_vst2dot_vss(double const* pi, unsigned long int sy, void* sz, double* po)
{
    ;
    __vr vx = _vel_vld_vssl(8, pi, 256);
    _vel_vst2dot_vssl(vx, sy, sz, 256);
    _vel_svob();
    __vr vz =_vel_vld2d_vssl(sy, sz, 256);
    _vel_vst_vssl(vz, 8, po, 256);
}

void vel_vstu2dot_vss(float const* pi, unsigned long int sy, void* sz, float* po)
{
    ;
    __vr vx = _vel_vldu_vssl(4, pi, 256);
    _vel_vstu2dot_vssl(vx, sy, sz, 256);
    _vel_svob();
    __vr vz =_vel_vldu2d_vssl(sy, sz, 256);
    _vel_vstu_vssl(vz, 4, po, 256);
}

void vel_vstl2dot_vss(int const* pi, unsigned long int sy, void* sz, int* po)
{
    ;
    __vr vx = _vel_vldlsx_vssl(4, pi, 256);
    _vel_vstl2dot_vssl(vx, sy, sz, 256);
    _vel_svob();
    __vr vz =_vel_vldl2dsx_vssl(sy, sz, 256);
    _vel_vstl_vssl(vz, 4, po, 256);
}
#endif // __clang__

#ifdef TEST
#include <cstring>
#include <cstdio>
#include "util.h"

template <typename T>
int test_vel_vst2dot_vss_tmpl(void (*func)(T const*, unsigned long int, void*, T*))
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
    return test_vel_vst2dot_vss_tmpl<T>(name); \
}

DEFINE_TEST(vel_vst2dot_vss, double);
DEFINE_TEST(vel_vstu2dot_vss, float);
DEFINE_TEST(vel_vstl2dot_vss, int);

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_vst2dot_vss", test_vel_vst2dot_vss);
REGISTER_TEST("vel_vstu2dot_vss", test_vel_vstu2dot_vss);
REGISTER_TEST("vel_vstl2dot_vss", test_vel_vstl2dot_vss);
#endif
#endif // TEST

#ifdef MAIN
#include <cstdio>
int main(int argc, char* argv[])
{
    fprintf(stderr, "test_vel_vst2dot_vss: %s\n", test_vel_vst2dot_vss() ? "OK" : "NG");
    fprintf(stderr, "test_vel_vstu2dot_vss: %s\n", test_vel_vstu2dot_vss() ? "OK" : "NG");
    fprintf(stderr, "test_vel_vstl2dot_vss: %s\n", test_vel_vstl2dot_vss() ? "OK" : "NG");
    return 0;
}
#endif
