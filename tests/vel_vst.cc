// vst (without mask) is frequentry used by other tests.

#ifdef __clang__
#include <velintrin.h>
void vst_vssml(void* px, void const* py, unsigned int* pm)
{
    __vr vy = _vel_vld_vssl(8, py, 256);
    __vr tmp = _vel_vldlsx_vssl(4, pm, 256);
    __vm vm = _vel_vfmkwgt_mvl(tmp, 256);
    _vel_vst_vssml(vy, 8, px, vm, 256);
}

void vstu_vssml(void* px, void const* py, unsigned int* pm)
{
    __vr vy = _vel_vldu_vssl(4, py, 256);
    __vr tmp = _vel_vldlsx_vssl(4, pm, 256);
    __vm vm = _vel_vfmkwgt_mvl(tmp, 256);
    _vel_vstu_vssml(vy, 4, px, vm, 256);
}

void vstl_vssml(void* px, void const* py, unsigned int* pm)
{
    __vr vy = _vel_vldlsx_vssl(4, py, 256);
    __vr tmp = _vel_vldlsx_vssl(4, pm, 256);
    __vm vm = _vel_vfmkwgt_mvl(tmp, 256);
    _vel_vstl_vssml(vy, 4, px, vm, 256);
}
#endif // __clang__

#ifdef TEST
#include <cstring>
#include <cstdio>
#include "util.h"

template <typename T>
int test_vst_mask(void (*func)(void*, void const*, unsigned int*))
{
    const int N = 256;
    T x0[N];
    T x1[N];
    T y[N];
    unsigned int m[N];

    memset(x0, 0, sizeof(T) * N);
    memset(x1, 0, sizeof(T) * N);
    for (int i = 0; i < N; ++i) {
        y[i] = getrand<T>();
        m[i] = getrand<unsigned int>() % 2;
    }

    for (int i = 0; i < N; ++i) {
        if (m[i] > 0)
            x0[i] = y[i];
    }

    func(x1, y, m);

#if 0
    for (int i = 0; i < N; ++i) {
        fprintf(stderr, " %8d", m[i]);
        if (i % 16 == 15)
            fprintf(stderr, "\n");
    }

    for (int i = 0; i < N; ++i) {
        fprintf(stderr, " %8.3f", x0[i]);
        if (i % 16 == 15)
            fprintf(stderr, "\n");
    }
#endif

    int flag = 1;
    for (int i = 0; i < N; ++i) {
        flag &= (x0[i] == x1[i]);
    }


#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __PRETTY_FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

void vst_vssml(void* px, void const* py, unsigned int* pm);
void vstu_vssml(void* px, void const* py, unsigned int* pm);
void vstl_vssml(void* px, void const* py, unsigned int* pm);

int test_vst_vssml() { return test_vst_mask<double>(vst_vssml); }
int test_vstu_vssml() { return test_vst_mask<float>(vstu_vssml); }
int test_vstl_vssml() { return test_vst_mask<int>(vstl_vssml); }

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_vst_vssml", test_vst_vssml);
REGISTER_TEST("vel_vstu_vssml", test_vstu_vssml);
REGISTER_TEST("vel_vstl_vssml", test_vstl_vssml);
#endif
#endif // TEST

#ifdef MAIN
#include <cstdio>

int main(int argc, char* argv[])
{
    test_vst_vssml();
    test_vstu_vssml();
    test_vstl_vssml();
    return 0;
}
#endif
