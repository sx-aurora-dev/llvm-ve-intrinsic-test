#include <cstdio>
#include <cstring>
#include <cassert>
#include <cstdlib>
#include <vector>
#include <algorithm>

extern "C" {
#include "decl.h"
#undef max
#undef min
void register_test(char const* name, int (*func)(void));
}

namespace ref {
#define REF
#include "decl.h"
#undef REF
}

namespace {

// return [0: 2.0)
double drand48x()
{
    return drand48() + drand48();
}

} // namespace

template <typename T>
static double diff(T const* a, T const* b, int n, double& sa, double& sb, int s = 1)
{
    //double sa = 0;
    //double sb = 0;
    double d = 0;
    sa = 0.0;
    sb = 0.0;

    for (int i = 0; i < n; i += s) {
        sa += (double)a[i] * (double)a[i];
        sb += (double)b[i] * (double)b[i];
        d += (a[i] - b[i]) * (a[i] - b[i]);
        //if (a[i] != b[i]) fprintf(stderr, "i=%d %f %f\n", i, a[i], b[i]);
        //fprintf(stderr, "i: %4d %12d %12d\n", i, a[i], b[i]);
    }

    //fprintf(stderr, "sa=%f sb=%f\n", sa, sb);

    //return d * d / (sa * sb);
    return d * d;
}

template <typename T>
static T* init_array(int n, int align, T(*func)(void))
{
    T* p;
    if (posix_memalign((void**)&p, align, sizeof(T) * n) != 0) {
        return NULL;
    }

    for (int i = 0; i < n; ++i) {
        p[i] = (T)func();
    }

    return p;
}

// test automatic genrated intrinsics

template <typename T>
struct TestData
{
    int n;
    T* v[5];
    unsigned int* mask;
};

TestData<double> TD_f64;
TestData<float> TD_f32;
TestData<unsigned long int> TD_u64;
TestData<long int> TD_i64;
TestData<unsigned int> TD_u32;
TestData<int> TD_i32;

template <typename T> TestData<T>* getTestData() { return NULL; }
template<> TestData<double>* getTestData() { return &TD_f64; }
template<> TestData<unsigned long int>* getTestData() { return &TD_u64; }
template<> TestData<long int>* getTestData() { return &TD_i64; }
template<> TestData<unsigned int>* getTestData() { return &TD_u32; }
template<> TestData<int>* getTestData() { return &TD_i32; }

template <typename T0, typename T1>
struct TestData2
{
    TestData<T0>* t0;
    TestData<T1>* t1;

    TestData2(TestData<T0>* t0_, TestData<T1>* t1_) : t0(t0_), t1(t1_) {}
};

TestData2<long int, double> TD_i64_f64(&TD_i64, &TD_f64);
TestData2<int, double> TD_i32_f64(&TD_i32, &TD_f64);
TestData2<unsigned int, double> TD_u32_f64(&TD_u32, &TD_f64);
TestData2<int, float> TD_i32_f32(&TD_i32, &TD_f32);
TestData2<unsigned int, float> TD_u32_f32(&TD_u32, &TD_f32);
TestData2<double, long int> TD_f64_i64(&TD_f64, &TD_i64);
TestData2<double, int> TD_f64_i32(&TD_f64, &TD_i32);
TestData2<float, int> TD_f32_i32(&TD_f32, &TD_i32);
TestData2<double, float> TD_f64_f32(&TD_f64, &TD_f32);
TestData2<float, double> TD_f32_f64(&TD_f32, &TD_f64);

struct Test;

template <typename T>
double test_2x_vv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2], data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_2x_vs(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T, int);
    ((F)test->f0)(data->v[0], data->v[2][0], data->n);
    ((F)test->f1)(data->v[1], data->v[2][0], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_2x_vsmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T, unsigned int*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2][0], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[2][0], data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_2p_vs(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, unsigned long int, int);

    T sy0 = data->v[2][0];
    unsigned long int sy = *(unsigned long int*)&sy0;
    sy = sy << 32 | (sy & 0xffffffff);

    ((F)test->f0)(data->v[0], sy, data->n);
    ((F)test->f1)(data->v[1], sy, data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_2p_vsmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, unsigned long int, unsigned int*, T*, int);

    T sy0 = data->v[2][0];
    unsigned long int sy = *(unsigned long int*)&sy0;
    sy = sy << 32 | (sy & 0xffffffff);

    ((F)test->f0)(data->v[0], sy, data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], sy, data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}


template <typename T>
double test_2x_vI(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, int);
    ((F)test->f0)(data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_2x_vImv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, unsigned int*, T*, int);
    ((F)test->f0)(data->v[0], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}


template <typename T>
double test_3x_vvv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2], data->v[3], data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->v[3], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_3x_vvvmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    memset(data->v[1], 0, sizeof(T) * data->n);
    memcpy(data->v[0], data->v[1], sizeof(T) * data->n);
    typedef void(*F)(T*, T*, T*, unsigned int*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2], data->v[3], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->v[3], data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_3x_vsv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T, T*, int);
    ((F)test->f0)(data->v[0], data->v[2][0], data->v[3], data->n);
    ((F)test->f1)(data->v[1], data->v[2][0], data->v[3], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_3x_vsvmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    memset(data->v[1], 0, sizeof(T) * data->n);
    memcpy(data->v[0], data->v[1], sizeof(T) * data->n);
    typedef void(*F)(T*, T, T*, unsigned int*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2][0], data->v[3], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[2][0], data->v[3], data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_3p_vsvmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    memset(data->v[1], 0, sizeof(T) * data->n);
    memcpy(data->v[0], data->v[1], sizeof(T) * data->n);
    typedef void(*F)(T*, unsigned long int, T*, unsigned int*, T*, int);

    T sy0 = data->v[2][0];
    unsigned long int sy = *(unsigned long int*)&sy0;
    sy = sy << 32 | (sy & 0xffffffff);

    ((F)test->f0)(data->v[0], sy, data->v[3], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], sy, data->v[3], data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_3p_vvsmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    memset(data->v[1], 0, sizeof(T) * data->n);
    memcpy(data->v[0], data->v[1], sizeof(T) * data->n);
    typedef void(*F)(T*, T*, unsigned long int, unsigned int*, T*, int);

    T sy0 = data->v[2][0];
    unsigned long int sy = *(unsigned long int*)&sy0;
    sy = sy << 32 | (sy & 0xffffffff);

    ((F)test->f0)(data->v[0], data->v[3], sy, data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[3], sy, data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}


template <typename T>
double test_3x_vIvmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    memset(data->v[1], 0, sizeof(T) * data->n);
    memcpy(data->v[0], data->v[1], sizeof(T) * data->n);
    typedef void(*F)(T*, T*, unsigned int*, T*, int);
    ((F)test->f0)(data->v[0], data->v[3], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[3], data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_3x_vvs(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, T, int);
    ((F)test->f0)(data->v[0], data->v[2], data->v[3][0], data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->v[3][0], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_3x_vvsmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    memset(data->v[1], 0, sizeof(T) * data->n);
    memcpy(data->v[0], data->v[1], sizeof(T) * data->n);
    typedef void(*F)(T*, T*, T, unsigned int*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2], data->v[3][0], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->v[3][0], data->mask, data->v[0], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_3x_vvI(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2], data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_3x_vvImv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    memset(data->v[1], 0, sizeof(T) * data->n);
    memcpy(data->v[0], data->v[1], sizeof(T) * data->n);
    typedef void(*F)(T*, T*, unsigned int*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->mask, data->v[0], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_3p_vsv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, unsigned long int, T*, int);

    T sy0 = data->v[2][0];
    unsigned long int sy = *(unsigned long int*)&sy0;
    sy = sy << 32 | (sy & 0xffffffff);

    ((F)test->f0)(data->v[0], sy, data->v[3], data->n);
    ((F)test->f1)(data->v[1], sy, data->v[3], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_3p_vvs(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, unsigned long int, int);

    T sy0 = data->v[2][0];
    unsigned long int sy = *(unsigned long int*)&sy0;
    sy = sy << 32 | (sy & 0xffffffff);

    ((F)test->f0)(data->v[0], data->v[3], sy, data->n);
    ((F)test->f1)(data->v[1], data->v[3], sy, data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_3x_vIv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2], data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_4x_vvvv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, T*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2], data->v[3], data->v[4], data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->v[3], data->v[4], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_4x_vvvvmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, T*, T*, unsigned int*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2], data->v[3], data->v[4], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->v[3], data->v[4], data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_4x_vsvv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T, T*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2][0], data->v[3], data->v[4], data->n);
    ((F)test->f1)(data->v[1], data->v[2][0], data->v[3], data->v[4], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_4x_vsvvmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T, T*, T*, unsigned int*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2][0], data->v[3], data->v[4], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[2][0], data->v[3], data->v[4], data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_4x_vvsv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, T, T*, int);
    ((F)test->f0)(data->v[0], data->v[2], data->v[3][0], data->v[4], data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->v[3][0], data->v[4], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_4x_vvsvmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, T, T*, unsigned int*, T*, int);
    ((F)test->f0)(data->v[0], data->v[2], data->v[3][0], data->v[4], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->v[3][0], data->v[4], data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_4p_vsvv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, unsigned long int, T*, T*, int);

    T sy0 = data->v[2][0];
    unsigned long int sy = *(unsigned long int*)&sy0;
    sy = sy << 32 | (sy & 0xffffffff);

    ((F)test->f0)(data->v[0], sy, data->v[3], data->v[4], data->n);
    ((F)test->f1)(data->v[1], sy, data->v[3], data->v[4], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_4p_vsvvmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, unsigned long int, T*, T*, unsigned int*, T*, int);

    T sy0 = data->v[2][0];
    unsigned long int sy = *(unsigned long int*)&sy0;
    sy = sy << 32 | (sy & 0xffffffff);

    ((F)test->f0)(data->v[0], sy, data->v[3], data->v[4], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], sy, data->v[3], data->v[4], data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_4p_vvsv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, unsigned long int, T*, int);

    T sy0 = data->v[3][0];
    unsigned long int sy = *(unsigned long int*)&sy0;
    sy = sy << 32 | (sy & 0xffffffff);

    ((F)test->f0)(data->v[0], data->v[2], sy, data->v[4], data->n);
    ((F)test->f1)(data->v[1], data->v[2], sy, data->v[4], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

template <typename T>
double test_4p_vvsvmv(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, unsigned long int, T*, unsigned int*, T*, int);

    T sy0 = data->v[3][0];
    unsigned long int sy = *(unsigned long int*)&sy0;
    sy = sy << 32 | (sy & 0xffffffff);

    ((F)test->f0)(data->v[0], data->v[2], sy, data->v[4], data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[2], sy, data->v[4], data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

#define IntrinsicTest(name, func, data) {"_ve_"#name, (void*)name, (void*)ref::name, func, data}

#define I_3f64(name) \
    IntrinsicTest(name##_vvvl, test_3x_vvv<double>, &TD_f64), \
    IntrinsicTest(name##_vsvl, test_3x_vsv<double>, &TD_f64), \
    IntrinsicTest(name##_vvvmvl, test_3x_vvvmv<double>, &TD_f64), \
    IntrinsicTest(name##_vsvmvl, test_3x_vsvmv<double>, &TD_f64)

#define I_2f64(name) \
    IntrinsicTest(name##_vvl, test_2x_vv<double>, &TD_f64)

#define I_2f32(name) \
    IntrinsicTest(name##_vvl, test_2x_vv<float>, &TD_f32)

#define I_2pf32(name) \
    IntrinsicTest(name##_vvl, test_2x_vv<float>, &TD_f32)

#define I_3f32(name) \
    IntrinsicTest(name##_vvvl, test_3x_vvv<float>, &TD_f32), \
    IntrinsicTest(name##_vsvl, test_3x_vsv<float>, &TD_f32), \
    IntrinsicTest(name##_vvvmvl, test_3x_vvvmv<float>, &TD_f32), \
    IntrinsicTest(name##_vsvmvl, test_3x_vsvmv<float>, &TD_f32)

#define I_3pf32(name) \
    IntrinsicTest(name##_vvvl, test_3x_vvv<float>, &TD_f32), \
    IntrinsicTest(name##_vsvl, test_3p_vsv<float>, &TD_f32), \
    IntrinsicTest(name##_vvvMvl, test_3x_vvvmv<float>, &TD_f32), \
    IntrinsicTest(name##_vsvMvl, test_3p_vsvmv<float>, &TD_f32)

#define I_3u64(name) \
    IntrinsicTest(name##_vvvl, test_3x_vvv<unsigned long int>, &TD_u64), \
    IntrinsicTest(name##_vsvl, test_3x_vsv<unsigned long int>, &TD_u64), \
    IntrinsicTest(name##_vIvl, test_3x_vIv<unsigned long int>, &TD_u64), \
    IntrinsicTest(name##_vvvmvl, test_3x_vvvmv<unsigned long int>, &TD_u64), \
    IntrinsicTest(name##_vsvmvl, test_3x_vsvmv<unsigned long int>, &TD_u64), \
    IntrinsicTest(name##_vIvmvl, test_3x_vIvmv<unsigned long int>, &TD_u64)

#define I_3i64(name) \
    IntrinsicTest(name##_vvvl, test_3x_vvv<long int>, &TD_i64), \
    IntrinsicTest(name##_vsvl, test_3x_vsv<long int>, &TD_i64), \
    IntrinsicTest(name##_vIvl, test_3x_vIv<long int>, &TD_i64), \
    IntrinsicTest(name##_vvvmvl, test_3x_vvvmv<long int>, &TD_u64), \
    IntrinsicTest(name##_vsvmvl, test_3x_vsvmv<long int>, &TD_u64), \
    IntrinsicTest(name##_vIvmvl, test_3x_vIvmv<long int>, &TD_u64)

#define I_3u32(name) \
    IntrinsicTest(name##_vvvl, test_3x_vvv<unsigned int>, &TD_u32), \
    IntrinsicTest(name##_vsvl, test_3x_vsv<unsigned int>, &TD_u32), \
    IntrinsicTest(name##_vIvl, test_3x_vIv<unsigned int>, &TD_u32), \
    IntrinsicTest(name##_vvvmvl, test_3x_vvvmv<unsigned int>, &TD_u32), \
    IntrinsicTest(name##_vsvmvl, test_3x_vsvmv<unsigned int>, &TD_u32), \
    IntrinsicTest(name##_vIvmvl, test_3x_vIvmv<unsigned int>, &TD_u32)

#define I_3i32(name) \
    IntrinsicTest(name##_vvvl, test_3x_vvv<int>, &TD_i32), \
    IntrinsicTest(name##_vsvl, test_3x_vsv<int>, &TD_i32), \
    IntrinsicTest(name##_vIvl, test_3x_vIv<int>, &TD_i32), \
    IntrinsicTest(name##_vvvmvl, test_3x_vvvmv<int>, &TD_i32), \
    IntrinsicTest(name##_vsvmvl, test_3x_vsvmv<int>, &TD_i32), \
    IntrinsicTest(name##_vIvmvl, test_3x_vIvmv<int>, &TD_i32)

#define I_3pu32(name) \
    IntrinsicTest(name##_vvvl, test_3x_vvv<unsigned int>, &TD_u32), \
    IntrinsicTest(name##_vsvl, test_3p_vsv<unsigned int>, &TD_u32), \
    IntrinsicTest(name##_vvvMvl, test_3x_vvvmv<unsigned int>, &TD_u32), \
    IntrinsicTest(name##_vsvMvl, test_3p_vsvmv<unsigned int>, &TD_u32)

#define I_3pi32(name) \
    IntrinsicTest(name##_vvvl, test_3x_vvv<int>, &TD_i32), \
    IntrinsicTest(name##_vsvl, test_3p_vsv<int>, &TD_i32), \
    IntrinsicTest(name##_vvvMvl, test_3x_vvvmv<unsigned int>, &TD_i32), \
    IntrinsicTest(name##_vsvMvl, test_3p_vsvmv<unsigned int>, &TD_i32)

#define I_4f64(name) \
    IntrinsicTest(name##_vvvvl, test_4x_vvvv<double>, &TD_f64), \
    IntrinsicTest(name##_vvsvl, test_4x_vvsv<double>, &TD_f64), \
    IntrinsicTest(name##_vsvvl, test_4x_vsvv<double>, &TD_f64), \
    IntrinsicTest(name##_vvvvmvl, test_4x_vvvvmv<double>, &TD_f64), \
    IntrinsicTest(name##_vvsvmvl, test_4x_vvsvmv<double>, &TD_f64), \
    IntrinsicTest(name##_vsvvmvl, test_4x_vsvvmv<double>, &TD_f64)

#define I_4f32(name) \
    IntrinsicTest(name##_vvvvl, test_4x_vvvv<float>, &TD_f32), \
    IntrinsicTest(name##_vvsvl, test_4x_vvsv<float>, &TD_f32), \
    IntrinsicTest(name##_vsvvl, test_4x_vsvv<float>, &TD_f32), \
    IntrinsicTest(name##_vvvvmvl, test_4x_vvvvmv<float>, &TD_f32), \
    IntrinsicTest(name##_vvsvmvl, test_4x_vvsvmv<float>, &TD_f32), \
    IntrinsicTest(name##_vsvvmvl, test_4x_vsvvmv<float>, &TD_f32)

#define I_4pf32(name) \
    IntrinsicTest(name##_vvvvl, test_4x_vvvv<float>, &TD_f32), \
    IntrinsicTest(name##_vvsvl, test_4p_vvsv<float>, &TD_f32), \
    IntrinsicTest(name##_vsvvl, test_4p_vsvv<float>, &TD_f32), \
    IntrinsicTest(name##_vvvvMvl, test_4x_vvvvmv<float>, &TD_f32), \
    IntrinsicTest(name##_vvsvMvl, test_4p_vvsvmv<float>, &TD_f32), \
    IntrinsicTest(name##_vsvvMvl, test_4p_vsvvmv<float>, &TD_f32)

static double test_mulslw_vvv(Test* test, double& sa, double& sb);
static double test_mulslw_vsv(Test* test, double& sa, double& sb);
static double test_mulslw_vIv(Test* test, double& sa, double& sb);
static double test_vsfa_vvss(Test* test, double& sa, double& sb);
static double test_vsfa_vvssmv(Test* test, double& sa, double& sb);
static double test_vsfa_vvIs(Test* test, double& sa, double& sb);
static double test_vsfa_vvIsmv(Test* test, double& sa, double& sb);
static double test_vshf_vvvs(Test* test, double& sa, double& sb);
static double test_vshf_vvvI(Test* test, double& sa, double& sb);

template <typename Tdst, typename Tsrc>
static double test_cvt(Test* test, double& sa, double& sb)
{
    TestData2<Tdst, Tsrc>* data = (TestData2<Tdst, Tsrc>*)test->data;
    TestData<Tdst>* data0 = data->t0;
    TestData<Tsrc>* data1 = data->t1;
    typedef void(*F)(Tdst*, Tsrc*, int);

    memset(data0->v[0], 0, sizeof(Tdst) * data0->n);
    memset(data0->v[1], 0, sizeof(Tdst) * data0->n);

    ((F)test->f0)(data0->v[0], data1->v[2], data0->n);
    ((F)test->f1)(data0->v[1], data1->v[2], data0->n);
    return diff(data0->v[0], data0->v[1], data0->n, sa, sb);
}

template <typename Tdst, typename Tsrc>
static double test_cvt_mask(Test* test, double& sa, double& sb)
{
    TestData2<Tdst, Tsrc>* data = (TestData2<Tdst, Tsrc>*)test->data;
    TestData<Tdst>* data0 = data->t0;
    TestData<Tsrc>* data1 = data->t1;
    typedef void(*F)(Tdst*, Tsrc*, unsigned int*, Tdst*, int);

    memset(data0->v[0], 0, sizeof(Tdst) * data0->n);
    memset(data0->v[1], 0, sizeof(Tdst) * data0->n);

    ((F)test->f0)(data0->v[0], data1->v[2], data0->mask, data0->v[0], data0->n);
    ((F)test->f1)(data0->v[1], data1->v[2], data0->mask, data0->v[1], data0->n);
    return diff(data0->v[0], data0->v[1], data0->n, sa, sb);
}


template <typename T>
static double ref_vsum(T* pvx, T* pvy, int n)
{
    for (int i = 0; i < n; i += 256) {
        T s = 0;
        int u = i + 256 < n ? i + 256 : n;
        for (int j = i; j < u; ++j) {
            s += pvy[j];
        }
        pvx[i] = s;
    }
}

template <typename T>
static double ref_vsum_mask(T* pvx, T* pvy, unsigned int* pm, int n)
{
    for (int i = 0; i < n; i += 256) {
        T s = 0;
        int u = i + 256 < n ? i + 256 : n;
        for (int j = i; j < u; ++j) {
            if (pm[j] > 0)
                s += pvy[j];
        }
        pvx[i] = s;
    }
}

template <typename T>
static double test_vsum(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, int);

    memset(data->v[0], 0, sizeof(T) * data->n);
    memset(data->v[1], 0, sizeof(T) * data->n);

    ((F)test->f0)(data->v[0], data->v[2], data->n);
    ref_vsum(data->v[1], data->v[2], data->n);

    return diff(data->v[0], data->v[1], data->n, sa, sb, 256);
}

template <typename T>
static double test_vsum_mask(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, unsigned int*, int);

    memset(data->v[0], 0, sizeof(T) * data->n);
    memset(data->v[1], 0, sizeof(T) * data->n);

    ((F)test->f0)(data->v[0], data->v[2], data->mask, data->n);
    ref_vsum_mask(data->v[1], data->v[2], data->mask, data->n);

    return diff(data->v[0], data->v[1], data->n, sa, sb, 256);
}

#define MAXMIN(suffix, T) \
    T max_##suffix(T a, T b) { return std::max(a, b); } \
    T min_##suffix(T a, T b) { return std::min(a, b); }

MAXMIN(i32, int)
MAXMIN(u32, unsigned int)
MAXMIN(i64, long int)
MAXMIN(f32, float)
MAXMIN(f64, double)

template <typename T>
static double test_vrmax(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, int);
    typedef T(*F1)(T, T);

    memset(data->v[0], 0, sizeof(T) * data->n);
    memset(data->v[1], 0, sizeof(T) * data->n);

    ((F)test->f0)(data->v[0], data->v[2], data->n);

    double d = 0.0;
    sa = 0.0;
    sb = 0.0;

    for (int i = 0; i < data->n; i += 256) {
        T s = data->v[2][i];
        int u = i + 256 < data->n ? i + 256 : data->n;
        for (int j = i + 1; j < u; ++j) {
#if 0
            if (s < data->v[2][j])
                s = data->v[2][j];
#endif
            s = ((F1)test->f1)(s, data->v[2][j]);
        }
        data->v[1][i] = s;

        d += (data->v[0][i] - data->v[1][i]) * (data->v[0][i] - data->v[1][i]);
        sa += (double)data->v[0][i] * (double)data->v[0][i];
        sb += (double)data->v[1][i] * (double)data->v[1][i];

        //fprintf(stderr, "%e %e %e\n", (double)data->v[0][i], (double)data->v[1][i], d);
    }

    //fprintf(stderr, "return %e\n", d);

    return d;
}

template <typename T>
static void ref_reduction(T* pvx, T* pvy, int n, T (*op)(T, T))
{
    for (int i = 0; i < n; i += 256) {
        T s = 0;
        int u = i + 256 < n ? i + 256 : n;
        for (int j = i; j < u; ++j) {
            s = op(s, pvy[j]);
        }
        pvx[i] = s;
    }
}

template <typename T>
static void ref_reduction_mask(T* pvx, T* pvy, unsigned int* pm, int n, T (*op)(T, T))
{
    for (int i = 0; i < n; i += 256) {
        T s = 0;
        int u = i + 256 < n ? i + 256 : n;
        for (int j = i; j < u; ++j) {
            if (pm[j])
                s = op(s, pvy[j]);
        }
        pvx[i] = s;
    }
}

template <typename T>
static double test_reduction(Test* test, double& sa, double& sb, T (*op)(T, T))
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, int);

    memset(data->v[0], 0, sizeof(T) * data->n);
    memset(data->v[1], 0, sizeof(T) * data->n);

    ((F)test->f0)(data->v[0], data->v[2], data->n);
    ref_reduction(data->v[1], data->v[2], data->n, op);

    return diff(data->v[0], data->v[1], data->n, sa, sb, 256);
}

template <typename T>
static double test_reduction_mask(Test* test, double& sa, double& sb, T (*op)(T, T))
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, unsigned int*, int);

    memset(data->v[0], 0, sizeof(T) * data->n);
    memset(data->v[1], 0, sizeof(T) * data->n);

    ((F)test->f0)(data->v[0], data->v[2], data->mask, data->n);
    ref_reduction_mask<T>(data->v[1], data->v[2], data->mask, data->n, op);

    return diff(data->v[0], data->v[1], data->n, sa, sb, 256);
}

template <typename T>
static double test_vrand(Test* test, double& sa, double& sb)
{
    return test_reduction<T>(test, sa, sb, [](T a, T b) -> T { return a & b; });
}

template <typename T>
static double test_vrand_mask(Test* test, double& sa, double& sb)
{
    return test_reduction_mask<T>(test, sa, sb, [](T a, T b) -> T { return a & b; });
}

template <typename T>
static double test_vror(Test* test, double& sa, double& sb)
{
    return test_reduction<T>(test, sa, sb, [](T a, T b) -> T { return a | b; });
}

template <typename T>
static double test_vror_mask(Test* test, double& sa, double& sb)
{
    return test_reduction_mask<T>(test, sa, sb, [](T a, T b) -> T { return a | b; });
}

template <typename T>
static double test_vrxor(Test* test, double& sa, double& sb)
{
    return test_reduction<T>(test, sa, sb, [](T a, T b) -> T { return a ^ b; });
}

template <typename T>
static double test_vrxor_mask(Test* test, double& sa, double& sb)
{
    return test_reduction_mask<T>(test, sa, sb, [](T a, T b) -> T { return a ^ b; });
}

template<typename T>
static double test_vmrg(Test* test, double& sa, double& sb)
{
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, T*, unsigned int*, int);

    memset(data->v[0], 0, sizeof(T) * data->n);
    memset(data->v[1], 0, sizeof(T) * data->n);

    ((F)test->f0)(data->v[0], data->v[2], data->v[3], data->mask, data->n);
    ((F)test->f1)(data->v[1], data->v[2], data->v[3], data->mask, data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

struct Test
{
    char const* name; 
    void* f0;
    void* f1;
    double (*func)(Test* test, double& sa, double& sb);
    void* data;
} table[] = {
    // 5.3.2.7. Vector Transfer Instructions
#if 0
    IntrinsicTest(vbrd_vs_f64, test_2x_vs<double>, &TD_f64),
    IntrinsicTest(vbrd_vs_i64, test_2x_vs<long int>, &TD_i64),
    IntrinsicTest(vbrd_vI_i64, test_2x_vI<long int>, &TD_i64),
    IntrinsicTest(vbrdu_vs_f32, test_2x_vs<float>, &TD_f32),
    IntrinsicTest(vbrdl_vs_i32, test_2x_vs<int>, &TD_i32),
    IntrinsicTest(vbrdl_vI_i32, test_2x_vI<int>, &TD_i32),
    IntrinsicTest(pvbrd_vs_i64, test_2p_vs<int>, &TD_i32),

    IntrinsicTest(vbrd_vsmv_f64, test_2x_vsmv<double>, &TD_f64),
    IntrinsicTest(vbrd_vsmv_i64, test_2x_vsmv<long int>, &TD_i64),
    IntrinsicTest(vbrd_vImv_i64, test_2x_vImv<long int>, &TD_i64),
    IntrinsicTest(vbrdu_vsmv_f32, test_2x_vsmv<float>, &TD_f32),
    IntrinsicTest(vbrdl_vsmv_i32, test_2x_vsmv<int>, &TD_i32),
    IntrinsicTest(vbrdl_vImv_i32, test_2x_vImv<int>, &TD_i32),
    IntrinsicTest(pvbrd_vsMv_i64, test_2p_vsmv<int>, &TD_i32),
#endif

    IntrinsicTest(vbrdd_vsl, test_2x_vs<double>, &TD_f64),
    IntrinsicTest(vbrdl_vsl, test_2x_vs<long int>, &TD_i64),
    IntrinsicTest(vbrdl_vIl, test_2x_vI<long int>, &TD_i64),
    IntrinsicTest(vbrds_vsl, test_2x_vs<float>, &TD_f32),
    IntrinsicTest(vbrdw_vsl, test_2x_vs<int>, &TD_i32),
    IntrinsicTest(vbrdw_vIl, test_2x_vI<int>, &TD_i32),
    IntrinsicTest(pvbrd_vsl, test_2p_vs<int>, &TD_i32),

    IntrinsicTest(vbrdd_vsmvl, test_2x_vsmv<double>, &TD_f64),
    IntrinsicTest(vbrdl_vsmvl, test_2x_vsmv<long int>, &TD_i64),
    IntrinsicTest(vbrdl_vImvl, test_2x_vImv<long int>, &TD_i64),
    IntrinsicTest(vbrds_vsmvl, test_2x_vsmv<float>, &TD_f32),
    IntrinsicTest(vbrdw_vsmvl, test_2x_vsmv<int>, &TD_i32),
    IntrinsicTest(vbrdw_vImvl, test_2x_vImv<int>, &TD_i32),
    IntrinsicTest(pvbrd_vsMvl, test_2p_vsmv<int>, &TD_i32),

    // 5.3.2.8. Vector Fixed-Point Arithmetic Operation Instructions
    I_3u64(vaddul),
    I_3u32(vadduw),
    I_3pu32(pvaddu),
    I_3i64(vaddsl),
    I_3i32(vaddswsx),
    I_3i32(vaddswzx),
    I_3pi32(pvadds),

    I_3u64(vsubul),
    I_3u32(vsubuw),
    I_3pu32(pvsubu),
    I_3i64(vsubsl),
    I_3i32(vsubswsx),
    I_3i32(vsubswzx),
    I_3pi32(pvsubs),

    I_3u64(vmulul),
    I_3u32(vmuluw),
    I_3i64(vmulsl),
    I_3i32(vmulswsx),
    I_3i32(vmulswzx),
    IntrinsicTest(vmulslw_vvvl, test_mulslw_vvv, &TD_i64),
    IntrinsicTest(vmulslw_vsvl, test_mulslw_vsv, &TD_i64),
    IntrinsicTest(vmulslw_vIvl, test_mulslw_vIv, &TD_i64),
    // vmuls.l.w (i64 = i32 * i32)

#define T_DivByS(name, T, data) \
    IntrinsicTest(name##_vvsl, test_3x_vvs<T>, data), \
    IntrinsicTest(name##_vvsmvl, test_3x_vvsmv<T>, data), \
    IntrinsicTest(name##_vvIl, test_3x_vvI<T>, data), \
    IntrinsicTest(name##_vvImvl, test_3x_vvImv<T>, data)

    I_3u64(vdivul),
    I_3u32(vdivuw),
    I_3i64(vdivsl),
    I_3i32(vdivswsx),
    I_3i32(vdivswzx),

    T_DivByS(vdivul, unsigned long int, &TD_u64),
    T_DivByS(vdivuw, unsigned int, &TD_u32),
    T_DivByS(vdivsl, long int, &TD_i64),
    T_DivByS(vdivswsx, int, &TD_i32),
    T_DivByS(vdivswzx, int, &TD_i32),

    I_3u64(vcmpul),
    I_3u32(vcmpuw),
    I_3pu32(pvcmpu),
    I_3i64(vcmpsl),
    I_3i32(vcmpswsx),
    I_3i32(vcmpswzx),
    I_3pi32(pvcmps),

    I_3i64(vmaxsl),
    I_3i32(vmaxswsx),
    I_3i32(vmaxswzx),
    I_3pi32(pvmaxs),

    I_3i64(vminsl),
    I_3i32(vminswsx),
    I_3i32(vminswzx),
    I_3pi32(pvmins),

    // 5.3.2.9. Vector Logical Arithmetic Operation Instructions
#define T_Logical(name) \
    IntrinsicTest(name##_vvvl, test_3x_vvv<unsigned long int>, &TD_u64), \
    IntrinsicTest(name##_vsvl, test_3x_vsv<unsigned long int>, &TD_u64), \
    IntrinsicTest(p##name##_vvvl, test_3x_vvv<unsigned int>, &TD_u32), \
    IntrinsicTest(p##name##_vsvl, test_3p_vsv<unsigned int>, &TD_u32), \
    IntrinsicTest(name##_vvvmvl, test_3x_vvvmv<unsigned long int>, &TD_u64), \
    IntrinsicTest(name##_vsvmvl, test_3x_vsvmv<unsigned long int>, &TD_u64), \
    IntrinsicTest(p##name##_vvvMvl, test_3x_vvvmv<unsigned int>, &TD_u32), \
    IntrinsicTest(p##name##_vsvMvl, test_3p_vsvmv<unsigned int>, &TD_u32)

    T_Logical(vand),
    T_Logical(vor),
    T_Logical(vxor),
    T_Logical(veqv),

    // 5.3.2.10. Vector Shift Instructions
#define T_Shift(name, ty, data) \
    IntrinsicTest(name##_vvvl, test_3x_vvv<ty>, &data), \
    IntrinsicTest(name##_vvsl, test_3x_vvs<ty>, &data), \
    IntrinsicTest(name##_vvIl, test_3x_vIv<ty>, &data), \
    IntrinsicTest(name##_vvvmvl, test_3x_vvvmv<ty>, &data), \
    IntrinsicTest(name##_vvsmvl, test_3x_vvsmv<ty>, &data), \
    IntrinsicTest(name##_vvImvl, test_3x_vvImv<ty>, &data)

#define T_ShiftPacked(name, ty, data) \
    IntrinsicTest(p##name##_vvvl, test_3x_vvv<ty>, &data), \
    IntrinsicTest(p##name##_vvsl, test_3p_vvs<ty>, &data), \
    IntrinsicTest(p##name##_vvvMvl, test_3x_vvvmv<ty>, &data), \
    IntrinsicTest(p##name##_vvsMvl, test_3p_vvsmv<ty>, &data)

    // 5.3.2.10. Vector Shift Instructions
    T_Shift(vsll, unsigned long int, TD_u64),
    T_ShiftPacked(vsll, unsigned int, TD_u32),
    T_Shift(vsrl, unsigned long int, TD_u64),
    T_ShiftPacked(vsrl, unsigned int, TD_u32),

    T_Shift(vslal, long int, TD_i64),
    T_Shift(vslaw, int, TD_i32),
    T_ShiftPacked(vsla, int, TD_i32),
    T_Shift(vsral, long int, TD_i64),
    T_Shift(vsraw, int, TD_i32),
    T_ShiftPacked(vsra, int, TD_i32),

    IntrinsicTest(vsfa_vvssl, test_vsfa_vvss, &TD_u64),
    IntrinsicTest(vsfa_vvssmvl, test_vsfa_vvssmv, &TD_u64),
    IntrinsicTest(vsfa_vvIsl, test_vsfa_vvIs, &TD_u64),
    IntrinsicTest(vsfa_vvIsmvl, test_vsfa_vvIsmv, &TD_u64),

    // 5.3.2.11. Vector Floating-Point Operation Instructions

    I_3f64(vfaddd),
    I_3f32(vfadds),
    I_3pf32(pvfadd),

    I_3f64(vfsubd),
    I_3f32(vfsubs),
    I_3pf32(pvfsub),

    I_3f64(vfmuld),
    I_3f32(vfmuls),
    I_3pf32(pvfmul),

    I_3f64(vfdivd),
    I_3f32(vfdivs),

    I_2f64(vfsqrtd),
    I_2f32(vfsqrts),

    I_3f64(vfcmpd),
    I_3f32(vfcmps),
    I_3pf32(pvfcmp),

    I_3f64(vfmaxd),
    I_3f32(vfmaxs),
    I_3pf32(pvfmax),
    I_3f64(vfmind),
    I_3f32(vfmins),
    I_3pf32(pvfmin),

    I_4f64(vfmadd),
    I_4f32(vfmads),
    I_4pf32(pvfmad),

    I_4f64(vfmsbd),
    I_4f32(vfmsbs),
    I_4pf32(pvfmsb),

    I_4f64(vfnmadd),
    I_4f32(vfnmads),
    I_4pf32(pvfnmad),

    I_4f64(vfnmsbd),
    I_4f32(vfnmsbs),
    I_4pf32(pvfnmsb),

    I_2f64(vrcpd),
    I_2f32(vrcps),
    I_2pf32(pvrcp),

    I_2f64(vrsqrtd),
    I_2f32(vrsqrts),
    I_2pf32(pvrsqrt),


    // VFIX: floating point to integer
#define T_VFIX(f, m, Td, Ts, data) \
    IntrinsicTest(f##_vvl, (test_cvt<Td, Ts>), data), \
    IntrinsicTest(f##rz_vvl, (test_cvt<Td, Ts>), data), \
    IntrinsicTest(f##_vv##m##vl, (test_cvt_mask<Td, Ts>), data), \
    IntrinsicTest(f##rz_vv##m##vl, (test_cvt_mask<Td, Ts>), data)

    T_VFIX(vcvtld, m, long int, double, &TD_i64_f64),
    T_VFIX(vcvtwdsx, m, int, double, &TD_i32_f64),
    T_VFIX(vcvtwdzx, m, unsigned int, double, &TD_u32_f64),
    T_VFIX(vcvtwssx, m, int, float, &TD_i32_f32),
    T_VFIX(vcvtwszx, m, unsigned int, float, &TD_u32_f32),
    IntrinsicTest(vcvtwszx_vvl, (test_cvt<unsigned int, float>), &TD_u32_f32),
    IntrinsicTest(vcvtwszxrz_vvl, (test_cvt<unsigned int, float>), &TD_u32_f32),
    T_VFIX(pvcvtws, M, int, float, &TD_i32_f32),

    //IntrinsicTest(vcvtld_vv, (test_cvt<long int, double>), &TD_i64_f64),
    //IntrinsicTest(vcvtldrz_vv, (test_cvt<long int, double>), &TD_i64_f64),
    //IntrinsicTest(vcvtwdsx_vv, (test_cvt<int, double>), &TD_i32_f64),
    //IntrinsicTest(vcvtwdsxrz_vv, (test_cvt<int, double>), &TD_i32_f64),
    //IntrinsicTest(vcvtwdzx_vv, (test_cvt<unsigned int, double>), &TD_u32_f64),
    //IntrinsicTest(vcvtwdzxrz_vv, (test_cvt<unsigned int, double>), &TD_u32_f64),
    //IntrinsicTest(vcvtwssx_vv, (test_cvt<int, float>), &TD_i32_f32),
    //IntrinsicTest(vcvtwssxrz_vv, (test_cvt<int, float>), &TD_i32_f32),
    //IntrinsicTest(vcvtwszx_vv, (test_cvt<unsigned int, float>), &TD_u32_f32),
    //IntrinsicTest(vcvtwszxrz_vv, (test_cvt<unsigned int, float>), &TD_u32_f32),
    //IntrinsicTest(pvcvtws_vv, (test_cvt<int, float>), &TD_i32_f32),
    //IntrinsicTest(pvcvtwsrz_vv, (test_cvt<int, float>), &TD_i32_f32),
    
    IntrinsicTest(pvcvtws_vvl, (test_cvt<int, float>), &TD_i32_f32),
    IntrinsicTest(pvcvtwsrz_vvl, (test_cvt<int, float>), &TD_i32_f32),

    IntrinsicTest(vcvtdl_vvl, (test_cvt<double, long int>), &TD_f64_i64),
    IntrinsicTest(vcvtdw_vvl, (test_cvt<double, int>), &TD_f64_i32),
    IntrinsicTest(vcvtsw_vvl, (test_cvt<float, int>), &TD_f32_i32),
    IntrinsicTest(pvcvtsw_vvl, (test_cvt<float, int>), &TD_f32_i32),
    IntrinsicTest(vcvtds_vvl, (test_cvt<double, float>), &TD_f64_f32),
    IntrinsicTest(vcvtsd_vvl, (test_cvt<float, double>), &TD_f32_f64),

#if 0
    IntrinsicTest(vfdivsA_vvv, test_3x_vvv<float>, &TD_f32),
    IntrinsicTest(pvfdivA_vvv, test_3x_vvv<float>, &TD_f32),
    IntrinsicTest(vfdivsA_vsv, test_3x_vsv<float>, &TD_f32),
#endif

    // 5.3.2.12. Vector Mask Arithmetic Instructions

    IntrinsicTest(vmrg_vvvml, test_vmrg<unsigned long int>, &TD_i64),
    //IntrinsicTest(vmrgw_vvvM, test_vmrg<unsigned int>, &TD_i32),
    {"_ve_vshf_vvvsl", (void*)vshf_vvvsl, NULL, test_vshf_vvvs, &TD_u64},
    {"_ve_vshf_vvvIl", (void*)vshf_vvvIl, NULL, test_vshf_vvvI, &TD_u64},

    // 5.3.2.15. Vector Mask Register Instructions

    IntrinsicTest(andm_mmml, test_3x_vvv<unsigned long int>, &TD_u64),
    IntrinsicTest(orm_mmml, test_3x_vvv<unsigned long int>, &TD_u64),
    IntrinsicTest(xorm_mmml, test_3x_vvv<unsigned long int>, &TD_u64),
    IntrinsicTest(eqvm_mmml, test_3x_vvv<unsigned long int>, &TD_u64),
    IntrinsicTest(nndm_mmml, test_3x_vvv<unsigned long int>, &TD_u64),
    IntrinsicTest(negm_mml, test_3x_vvv<unsigned long int>, &TD_u64),

#if 1
    IntrinsicTest(andm_MMMl, test_3x_vvv<unsigned long int>, &TD_u64),
    IntrinsicTest(orm_MMMl, test_3x_vvv<unsigned long int>, &TD_u64),
    IntrinsicTest(xorm_MMMl, test_3x_vvv<unsigned long int>, &TD_u64),
    IntrinsicTest(eqvm_MMMl, test_3x_vvv<unsigned long int>, &TD_u64),
    IntrinsicTest(nndm_MMMl, test_3x_vvv<unsigned long int>, &TD_u64),
    IntrinsicTest(negm_MMl, test_3x_vvv<unsigned long int>, &TD_u64),
#endif

    // 5.3.2.13. Vector Recursive Relation Instructions

    {"_ve_vsuml_vvl", (void*)vsuml_vvl, NULL, test_vsum<unsigned long int>, &TD_u64},
    {"_ve_vsumwsx_vvl", (void*)vsumwsx_vvl, NULL, test_vsum<int>, &TD_i32},
    {"_ve_vsumwzx_vvl", (void*)vsumwzx_vvl, NULL, test_vsum<unsigned int>, &TD_u32},
    {"_ve_vfsumd_vvl", (void*)vfsumd_vvl, NULL, test_vsum<double>, &TD_f64},
    {"_ve_vfsums_vvl", (void*)vfsums_vvl, NULL, test_vsum<float>, &TD_f32},

    {"_ve_vsuml_vvml", (void*)vsuml_vvml, NULL, test_vsum_mask<unsigned long int>, &TD_u64},
    {"_ve_vsumwsx_vvml", (void*)vsumwsx_vvml, NULL, test_vsum_mask<int>, &TD_i32},
    {"_ve_vsumwzx_vvml", (void*)vsumwzx_vvml, NULL, test_vsum_mask<unsigned int>, &TD_u32},
    {"_ve_vfsumd_vvml", (void*)vfsumd_vvml, NULL, test_vsum_mask<double>, &TD_f64},
    {"_ve_vfsums_vvml", (void*)vfsums_vvml, NULL, test_vsum_mask<float>, &TD_f32},

    {"_ve_vrmaxswfstzx_vvl", (void*)vrmaxswfstzx_vvl, (void*)max_u32, test_vrmax<int>, &TD_u32},
    {"_ve_vrminswfstzx_vvl", (void*)vrminswfstzx_vvl, (void*)min_u32, test_vrmax<int>, &TD_u32},
    {"_ve_vrmaxswfstsx_vvl", (void*)vrmaxswfstsx_vvl, (void*)max_i32, test_vrmax<int>, &TD_i32},
    {"_ve_vrminswfstsx_vvl", (void*)vrminswfstsx_vvl, (void*)min_i32, test_vrmax<int>, &TD_i32},
    {"_ve_vrmaxslfst_vvl", (void*)vrmaxslfst_vvl, (void*)max_i64, test_vrmax<long int>, &TD_i64},
    {"_ve_vrminslfst_vvl", (void*)vrminslfst_vvl, (void*)min_i64, test_vrmax<long int>, &TD_i64},
    {"_ve_vfrmaxdfst_vvl", (void*)vfrmaxdfst_vvl, (void*)max_f64, test_vrmax<double>, &TD_f64},
    {"_ve_vfrmindfst_vvl", (void*)vfrmindfst_vvl, (void*)min_f64, test_vrmax<double>, &TD_f64},
    {"_ve_vfrmaxsfst_vvl", (void*)vfrmaxsfst_vvl, (void*)max_f32, test_vrmax<float>, &TD_f32},
    {"_ve_vfrminsfst_vvl", (void*)vfrminsfst_vvl, (void*)min_f32, test_vrmax<float>, &TD_f32},

    {"_ve_vrand_vvl", (void*)vrand_vvl, NULL, test_vrand<unsigned long int>, &TD_u64},
    {"_ve_vrand_vvml", (void*)vrand_vvml, NULL, test_vrand_mask<unsigned long int>, &TD_u64},
    {"_ve_vror_vvl", (void*)vror_vvl, NULL, test_vror<unsigned long int>, &TD_u64},
    {"_ve_vror_vvml", (void*)vror_vvml, NULL, test_vror_mask<unsigned long int>, &TD_u64},
    {"_ve_vrxor_vvl", (void*)vrxor_vvl, NULL, test_vrxor<unsigned long int>, &TD_u64},
    {"_ve_vrxor_vvml", (void*)vrxor_vvml, NULL, test_vrxor_mask<unsigned long int>, &TD_u64},

    // others

    //I_2f32(vec_expf),
    //I_2f64(vec_exp),
};

extern "C" {
    int test_lsv();
    int test_lvs();
    int test_faddd();
    int test_fadds();
    int test_pack_float();
    int test_vseq();
    int test_pvseq();
    int test_pvseqlo();
    int test_pvsequp();
    int test_vmv_vsv();
    int test_vmv_vIv();
    int test_loop01();
}

static double test_mulslw_vvv(Test* test, double& sa, double& sb)
{
    TestData<long int>* data = (TestData<long int>*)test->data;
    typedef void(*F)(long int*, int*, int*, int);

    ((F)test->f0)(data->v[0], (int*)data->v[2], (int*)data->v[3], data->n);
    ((F)test->f1)(data->v[1], (int*)data->v[2], (int*)data->v[3], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

static double test_mulslw_vsv(Test* test, double& sa, double& sb)
{
    TestData<long int>* data = (TestData<long int>*)test->data;
    typedef void(*F)(long int*, int, int*, int);

    ((F)test->f0)(data->v[0], (int)data->v[2][0], (int*)data->v[3], data->n);
    ((F)test->f1)(data->v[1], (int)data->v[2][0], (int*)data->v[3], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

static double test_mulslw_vIv(Test* test, double& sa, double& sb)
{
    TestData<long int>* data = (TestData<long int>*)test->data;
    typedef void(*F)(long int*, int*, int);

    ((F)test->f0)(data->v[0], (int*)data->v[3], data->n);
    ((F)test->f1)(data->v[1], (int*)data->v[3], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}


static double test_vsfa_vvss(Test* test, double& sa, double& sb)
{
    TestData<unsigned long int>* data = (TestData<unsigned long int>*)test->data;
    typedef void(*F)(unsigned long int*, unsigned long int*, unsigned long int, unsigned long int, int);

    unsigned long int sy = 2;
    unsigned long int sz = (unsigned long int)data->v[3];

    ((F)test->f0)(data->v[0], data->v[2], sy, sz, data->n);
    ((F)test->f1)(data->v[1], data->v[2], sy, sz, data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
}

static double test_vsfa_vvssmv(Test* test, double& sa, double& sb)
{
#define T unsigned long int
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, T, T, unsigned int*, T*, int);

    memset(data->v[0], 0, sizeof(T) * data->n);
    memcpy(data->v[1], data->v[0], sizeof(T) * data->n);
    unsigned long int sy = 2;
    unsigned long int sz = (unsigned long int)data->v[3];

    ((F)test->f0)(data->v[0], data->v[2], sy, sz, data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[2], sy, sz, data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
#undef T
}

static double test_vsfa_vvIs(Test* test, double& sa, double& sb)
{
#define T unsigned long int
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, T, int);

    unsigned long int sz = (unsigned long int)data->v[3];

    ((F)test->f0)(data->v[0], data->v[2], sz, data->n);
    ((F)test->f1)(data->v[1], data->v[2], sz, data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
#undef T
}

static double test_vsfa_vvIsmv(Test* test, double& sa, double& sb)
{
#define T unsigned long int
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, T, unsigned int*, T*, int);

    memset(data->v[0], 0, sizeof(T) * data->n);
    memcpy(data->v[1], data->v[0], sizeof(T) * data->n);
    unsigned long int sz = (unsigned long int)data->v[3];

    ((F)test->f0)(data->v[0], data->v[2], sz, data->mask, data->v[0], data->n);
    ((F)test->f1)(data->v[1], data->v[2], sz, data->mask, data->v[1], data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
#undef T
}


static void vshf_ref(unsigned long int* vx, unsigned long int const* vy, unsigned long int const*vz, unsigned long sy, int n)
{
    for (int i = 0; i < n; ++i) {
        unsigned long int l, u;
        switch ((sy >> 2) & 0x3) {
            case 0: u = vy[i]; break;
            case 1: u = vy[i] << 32; break;
            case 2: u = vz[i]; break;
            case 3: u = vz[i] << 32; break;
        }
        switch (sy & 0x3) {
            case 0: l = vy[i] >> 32; break;
            case 1: l = vy[i]; break;
            case 2: l = vz[i] >> 32; break;
            case 3: l = vz[i]; break;
        }

        vx[i] = (u & 0xffffffff00000000UL) | (l & 0x00000000ffffffffUL);
    }
}

static double test_vshf_vvvs(Test* test, double& sa, double& sb)
{
#define T unsigned long int
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, T*, T, int);
    unsigned long int sy = lrand48();
    ((F)test->f0)(data->v[0], data->v[2], data->v[3], sy, data->n);
    vshf_ref(data->v[1], data->v[2], data->v[3], sy, data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
#undef T
}

static double test_vshf_vvvI(Test* test, double& sa, double& sb)
{
#define T unsigned long int
    TestData<T>* data = (TestData<T>*)test->data;
    typedef void(*F)(T*, T*, T*, int);
    unsigned long int sy = lrand48();
    ((F)test->f0)(data->v[0], data->v[2], data->v[3], data->n);
    vshf_ref(data->v[1], data->v[2], data->v[3], 3, data->n);
    return diff(data->v[0], data->v[1], data->n, sa, sb);
#undef T
}



struct Test2
{
    char const* name;
    int (*func)();

    Test2(char const* name_, int (*func_)(void)) : name(name_), func(func_) {}
} test2[] = {
    {"_ve_lsv", test_lsv},
    {"_ve_lvs", test_lvs},
    {"_ve_vseq", test_vseq},
    {"_ve_pvseq", test_pvseq},
    {"_ve_pvseqlo", test_pvseqlo},
    {"_ve_pvsequp", test_pvsequp},
    {"_ve_vmv_vsv", test_vmv_vsv},
    {"_ve_vmv_vIv", test_vmv_vIv},
    {"fadd.d", test_faddd},
    {"fadd.s", test_fadds},
    {"pack_float", test_pack_float},
    {"loop01(autovec)", test_loop01},
};

std::vector<Test2>& getVec()
{
    static std::vector<Test2> v;
    return v;
}

void register_test(char const* name, int (*func)(void))
{
    getVec().push_back(Test2(name, func));
};

bool run(Test& test, int i)
{
    double d;
    double sa;
    double sb;

    double threshold = 1e-5;

    if (!test.func || !test.data)
        return false;

    d = test.func(&test, sa, sb);
    fprintf(stderr, "%3d %-20s %s  # diff = %8.3e (%e %e)\n", i, test.name, d < threshold ? "OK" : "NG", d, sa, sb);
    return d < threshold;
}

#define REGISTER_TEST(name)  \
    int test_##name(); \
    register_test(#name, test_##name)

void test(char const* filter)
{
    int nall = 0;
    int nok = 0;

    REGISTER_TEST(vld2d);
    REGISTER_TEST(vldu2d);
    REGISTER_TEST(vldl2dsx);
    REGISTER_TEST(vldl2dzx);
    REGISTER_TEST(vst2d);
    REGISTER_TEST(vstu2d);
    REGISTER_TEST(vstl2d);
    REGISTER_TEST(vfmkl_mcv);
    REGISTER_TEST(vfmkl_mcvm);
    REGISTER_TEST(vfmkw_mcv);
    REGISTER_TEST(vfmkw_mcvm);
    REGISTER_TEST(vfmkd_mcv);
    REGISTER_TEST(vfmkd_mcvm);
    REGISTER_TEST(vfmks_mcv);
    REGISTER_TEST(vfmks_mcvm);
    REGISTER_TEST(pvfmkw_Mcv);
    REGISTER_TEST(pvfmkw_McvM);
    REGISTER_TEST(pvfmks_Mcv);
    REGISTER_TEST(pvfmks_McvM);
    REGISTER_TEST(pcvm_sm);
    REGISTER_TEST(lzvm_sm);
    REGISTER_TEST(tovm_sm);
    REGISTER_TEST(vcp_vvmv);
    REGISTER_TEST(vex_vvmv);
    REGISTER_TEST(ve_extract_vm512u);
    REGISTER_TEST(ve_extract_vm512l);
    REGISTER_TEST(ve_insert_vm512u);
    REGISTER_TEST(ve_insert_vm512l);

    for (int i = 0; i < sizeof(table) / sizeof(Test); ++i) {
        Test& t = table[i];
        if (!filter || strcmp(filter, t.name) == 0)  {
            bool tmp = run(t, i);
            ++nall;
            if (tmp)
                ++nok;
        }
    }

    for (int j = 0; j < sizeof(test2) / sizeof(Test2); ++j) {
        getVec().push_back(test2[j]);
    }

    for (Test2& t : getVec()) {
        if (!filter || strcmp(filter, t.name) == 0)  {
            fprintf(stderr, "%3d %-20s ", nall, t.name);
            int tmp = t.func();
            //fprintf(stderr, "%3d %-20s %s\n", nall, t.name, tmp ? "OK" : "NG");
            fprintf(stderr, "%s\n", tmp ? "OK" : "NG");
            ++nall;
            if (tmp)
                ++nok;
        }
    }

    fprintf(stderr, "%d OK, %d NG -> %s\n", nok, (nall - nok), nall == nok ? "OK" : "NG");
}


int main(int argc, char* argv[])
{
    int align = 8;
    int n = 2000;
    //int n = 10;

    char const* filter = NULL;

    for (int i = 1; i < argc; ++i) {
        if (strcmp(argv[i], "-f") == 0) {
            filter = argv[++i];
        }
    }

    for (int i = 0; i < 5; ++i) {
        // use drand48x to test VFIX with round-to-zero
        TD_f64.v[i] = init_array<double>(n, align, drand48x);
        TD_f32.v[i] = init_array<float>(n, align, []() -> float { return drand48x(); });
        TD_u64.v[i] = init_array<unsigned long int>(n, align, []() -> unsigned long int { return lrand48(); });
        TD_u32.v[i] = init_array<unsigned int>(n, align, []() -> unsigned int { return lrand48(); });
        TD_i64.v[i] = init_array<long int>(n, align, []() -> long int { return lrand48(); });
        TD_i32.v[i] = init_array<int>(n, align, []() -> int { return lrand48(); });
    }

    TD_f64.mask = init_array<unsigned int>(n, align, []() -> unsigned int { return lrand48() % 2; });
    //TD_f64.mask = init_array<unsigned int>(n, align, []() -> unsigned int { return 0; });
    //TD_f64.mask = init_array<unsigned int>(n, align, []() -> unsigned int { return 1; });
    TD_f32.mask = init_array<unsigned int>(n, align, []() -> unsigned int { return lrand48() % 2; });
    TD_u64.mask = init_array<unsigned int>(n, align, []() -> unsigned int { return lrand48() % 2; });
    TD_u32.mask = init_array<unsigned int>(n, align, []() -> unsigned int { return lrand48() % 2; });
    TD_i64.mask = init_array<unsigned int>(n, align, []() -> unsigned int { return lrand48() % 2; });
    TD_i32.mask = init_array<unsigned int>(n, align, []() -> unsigned int { return lrand48() % 2; });
    //TD_i32.mask = init_array<unsigned int>(n, align, []() -> unsigned int { return 0; });

    //TD_f64.mask[0] = 1;

    TD_f64.n = n;
    TD_f32.n = n;
    TD_u64.n = n;
    TD_u32.n = n;
    TD_i64.n = n;
    TD_i32.n = n;

    test(filter);

    return 0;
}