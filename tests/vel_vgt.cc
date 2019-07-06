#ifdef __clang__
#include <stdio.h>
#include <velintrin.h>
void vel_vgt_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 3, (unsigned long int)pvy, 256);
    __vr vx = _vel_vgt_vvssl(vaddr, 0, 0, 256);
    _vel_vst_vssl(vx, 8, pvx, 256);
}

void vel_vgt_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 3, (unsigned long int)pvy, 256);
    __vr vm0 = _vel_vldlzx_vssl(4, pvm, 256);
    __vm vm =  _vel_vfmkwgt_mvl(vm0, 256);
    __vr vx = _vel_vld_vssl(8, pvx, 256);
    vx = _vel_vgt_vvssml(vaddr, 0, 0, vm, 256);
    _vel_vst_vssl(vx, 8, pvx, 256);
}

void vel_vgtu_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 2, (unsigned long int)pvy, 256);
    __vr vx = _vel_vgtu_vvssl(vaddr, 0, 0, 256);
    _vel_vstu_vssl(vx, 4, pvx, 256);
}

void vel_vgtu_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 2, (unsigned long int)pvy, 256);
    __vr vm0 = _vel_vldlzx_vssl(4, pvm, 256);
    __vm vm =  _vel_vfmkwgt_mvl(vm0, 256);
    __vr vx = _vel_vldu_vssl(4, pvx, 256);
    vx = _vel_vgtu_vvssml(vaddr, 0, 0, vm, 256);
    _vel_vstu_vssl(vx, 4, pvx, 256);
}

void vel_vgtlsx_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 2, (unsigned long int)pvy, 256);
    __vr vx = _vel_vgtlsx_vvssl(vaddr, 0, 0, 256);
    _vel_vst_vssl(vx, 8, pvx, 256);
}

void vel_vgtlsx_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 2, (unsigned long int)pvy, 256);
    __vr vm0 = _vel_vldlzx_vssl(4, pvm, 256);
    __vm vm =  _vel_vfmkwgt_mvl(vm0, 256);
    __vr vx = _vel_vldlsx_vssl(4, pvx, 256);
    vx = _vel_vgtlsx_vvssml(vaddr, 0, 0, vm, 256);
    _vel_vst_vssl(vx, 8, pvx, 256);
}

void vel_vgtlzx_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 2, (unsigned long int)pvy, 256);
    __vr vx = _vel_vgtlzx_vvssl(vaddr, 0, 0, 256);
    _vel_vst_vssl(vx, 8, pvx, 256);
}

void vel_vgtlzx_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 2, (unsigned long int)pvy, 256);
    __vr vm0 = _vel_vldlzx_vssl(4, pvm, 256);
    __vm vm =  _vel_vfmkwgt_mvl(vm0, 256);
    __vr vx = _vel_vldlzx_vssl(4, pvx, 256);
    vx = _vel_vgtlzx_vvssml(vaddr, 0, 0, vm, 256);
    _vel_vst_vssl(vx, 8, pvx, 256);
}
#endif

#ifdef TEST
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "util.h"

template<typename T0, typename T1 = T0>
int test_vel_vgt_vv_(void (*func)(void* pvx, void* pvy, unsigned long int* pidx))
{
#define N 256
    T1 x0[N];
    T1 x1[N];
    T0 y[N];
    unsigned long idx[N];

    memset(x0, 0, sizeof(T0) * N);
    memset(x1, 0, sizeof(T0) * N);
    for (int i = 0; i < N; ++i) {
        y[i] = getrand<T0>();
        idx[i] = getrand<unsigned int>() % N;
    }

    func((void*)x0, (void*)y, idx);

    for (int i = 0; i < N; ++i) {
        x1[i] = (T1)y[idx[i]];
    }

    int flag = 1;
    for (int i = 0; i < N; ++i) {
        flag &= x0[i] == x1[i];
    }

    return flag;
#undef N
}

template<typename T0, typename T1 = T0>
int test_vel_vgt_vvm_(void (*func)(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm))
{
#define N 256
    T1 x0[N];
    T1 x1[N];
    T0 y[N];
    unsigned long idx[N];
    unsigned int vm[N];

    for (int i = 0; i < N; ++i) {
        y[i] = getrand<T0>();
        x0[i] = getrand<T1>();
        x1[i] = x0[i];
        idx[i] = getrand<unsigned int>() % N;
        vm[i] = getrand<unsigned int>() % 2;

        //fprintf(stderr, "x0[%d] %12d x1[%d] %12d\n", i, x0[i], i, x1[i]);
    }

    func((void*)x0, (void*)y, idx, vm);

    for (int i = 0; i < N; ++i) {
        if (vm[i] == 1)
            x1[i] = (T1)y[idx[i]];
    }

    int flag = 1;
    for (int i = 0; i < N; ++i) {
        if (vm[i] == 1)
            flag &= x0[i] == x1[i];

#ifdef MAIN
        if (vm[i] && x0[i] != x1[i]) {
            fprintf(stderr, "%3d %s %d %016lx %016lx idx y[%3d] %08x\n", 
                    i, x0[i] == x1[i] ? "OK" : "NG", vm[i], x0[i], x1[i], idx[i], (T0)y[idx[i]]);
        }
#endif
    }

    return flag;
#undef N
}

static int test_vel_vgt_vv()
{
    void vel_vgt_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vel_vgt_vv_<double>(vel_vgt_vv);
}

static int test_vel_vgt_vvm()
{
    void vel_vgt_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vel_vgt_vvm_<double>(vel_vgt_vvm);
}

static int test_vel_vgtu_vv()
{
    void vel_vgtu_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vel_vgt_vv_<float>(vel_vgtu_vv);
}

static int test_vel_vgtu_vvm()
{
    void vel_vgtu_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vel_vgt_vvm_<float>(vel_vgtu_vvm);
}

static int test_vel_vgtlsx_vv()
{
    void vel_vgtlsx_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vel_vgt_vv_<int, long int>(vel_vgtlsx_vv);
}

static int test_vel_vgtlsx_vvm()
{
    void vel_vgtlsx_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vel_vgt_vvm_<int, long int>(vel_vgtlsx_vvm);
}

static int test_vel_vgtlzx_vv()
{
    void vel_vgtlzx_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vel_vgt_vv_<unsigned int, unsigned long int>(vel_vgtlzx_vv);
}

static int test_vel_vgtlzx_vvm()
{
    void vel_vgtlzx_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vel_vgt_vvm_<unsigned int, unsigned long int>(vel_vgtlzx_vvm);
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_vgt_vv", test_vel_vgt_vv);
REGISTER_TEST("vel_vgt_vvm", test_vel_vgt_vvm);
REGISTER_TEST("vel_vgtu_vv", test_vel_vgtu_vv);
REGISTER_TEST("vel_vgtu_vvm", test_vel_vgtu_vvm);
REGISTER_TEST("vel_vgtlsx_vv", test_vel_vgtlsx_vv);
REGISTER_TEST("vel_vgtlsx_vvm", test_vel_vgtlsx_vvm);
REGISTER_TEST("vel_vgtlzx_vv", test_vel_vgtlzx_vv);
REGISTER_TEST("vel_vgtlzx_vvm", test_vel_vgtlzx_vvm);
#endif
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
#if 1
    fprintf(stdout, "vel_vgt_vv: %s\n", test_vel_vgt_vv() ? "OK" : "NG");
    fprintf(stdout, "vel_vgt_vvm: %s\n", test_vel_vgt_vvm() ? "OK" : "NG");

    fprintf(stdout, "vel_vgtu_vv: %s\n", test_vel_vgtu_vv() ? "OK" : "NG");
    fprintf(stdout, "vel_vgtu_vvm: %s\n", test_vel_vgtu_vvm() ? "OK" : "NG");

    fprintf(stdout, "vel_vgtlsx_vv: %s\n", test_vel_vgtlsx_vv() ? "OK" : "NG");
    fprintf(stdout, "vel_vgtlsx_vvm: %s\n", test_vel_vgtlsx_vvm() ? "OK" : "NG");

    fprintf(stdout, "vel_vgtlzx_vv: %s\n", test_vel_vgtlzx_vv() ? "OK" : "NG");
    fprintf(stdout, "vel_vgtlzx_vvm: %s\n", test_vel_vgtlzx_vvm() ? "OK" : "NG");
#endif

    return 0;
}
#endif

