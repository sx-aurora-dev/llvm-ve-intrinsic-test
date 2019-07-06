#ifdef __clang__
#include <velintrin.h>

// pvy[pidx[i]] = pvx[i]
void vel_vsc_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 3, (unsigned long int)pvy, 256);
    __vr vx = _vel_vld_vssl(8, pvx, 256);
    _vel_vsc_vvssl(vx, vaddr, 0, 0, 256);
}

void vel_vsc_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 3, (unsigned long int)pvy, 256);
    __vr vm0 = _vel_vldlzx_vssl(4, pvm, 256);
    __vm vm =  _vel_vfmkwgt_mvl(vm0, 256);
    __vr vx = _vel_vld_vssl(8, pvx, 256);
    _vel_vsc_vvssml(vx, vaddr, 0, 0, vm, 256);
}

void vel_vscu_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 2, (unsigned long int)pvy, 256);
    __vr vx = _vel_vldu_vssl(4, pvx, 256);
    _vel_vscu_vvssl(vx, vaddr, 0, 0, 256);
}

void vel_vscu_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 2, (unsigned long int)pvy, 256);
    __vr vm0 = _vel_vldlzx_vssl(4, pvm, 256);
    __vm vm =  _vel_vfmkwgt_mvl(vm0, 256);
    __vr vx = _vel_vldu_vssl(4, pvx, 256);
    _vel_vscu_vvssml(vx, vaddr, 0, 0, vm, 256);
}

void vel_vscl_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 2, (unsigned long int)pvy, 256);
    __vr vx = _vel_vldlzx_vssl(4, pvx, 256);
    _vel_vscl_vvssl(vx, vaddr, 0, 0, 256);
}

void vel_vscl_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    ;
    __vr vidx = _vel_vld_vssl(8, pidx, 256);
    __vr vaddr = _vel_vsfa_vvssl(vidx, 2, (unsigned long int)pvy, 256);
    __vr vm0 = _vel_vldlzx_vssl(4, pvm, 256);
    __vm vm =  _vel_vfmkwgt_mvl(vm0, 256);
    __vr vx = _vel_vldlzx_vssl(4, pvx, 256);
    _vel_vscl_vvssml(vx, vaddr, 0, 0, vm, 256);
}
#endif

#ifdef TEST
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "util.h"

template<typename T0, typename T1 = T0>
int test_vel_vsc_vv_(void (*func)(void* pvx, void* pvy, unsigned long int* pidx))
{
#define N 256
    T0 x[N];
    T1 y0[N];
    T1 y1[N];
    unsigned long idx[N];

    memset(y0, 0, sizeof(T0) * N);
    memset(y1, 0, sizeof(T0) * N);
    for (int i = 0; i < N; ++i) {
        x[i] = getrand<T0>();
        idx[i] = getrand<unsigned int>() % N;
    }

    func((void*)x, (void*)y0, idx);

    for (int i = 0; i < N; ++i) {
        y1[idx[i]] = (T1)x[i];
    }

    int flag = 1;
    for (int i = 0; i < N; ++i) {
        flag &= y0[i] == y1[i];
    }

    return flag;
#undef N
}

template<typename T0, typename T1 = T0>
int test_vel_vsc_vvm_(void (*func)(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm))
{
#define N 256
    T0 x[N];
    T1 y0[N];
    T1 y1[N];
    unsigned long idx[N];
    unsigned int vm[N];

    for (int i = 0; i < N; ++i) {
        x[i] = getrand<T0>();
        y0[i] = getrand<T1>();
        y1[i] = y0[i];
        idx[i] = getrand<unsigned int>() % N;
        vm[i] = getrand<unsigned int>() % 2;

        //fprintf(stderr, "x0[%d] %12d x1[%d] %12d\n", i, x0[i], i, x1[i]);
    }

    func((void*)x, (void*)y0, idx, vm);

    for (int i = 0; i < N; ++i) {
        if (vm[i] == 1)
            y1[idx[i]] = (T1)x[i];
    }

    int flag = 1;
    for (int i = 0; i < N; ++i) {
        flag &= y0[i] == y1[i];

#ifdef MAIN
        if (y0[i] != y1[i]) {
            fprintf(stderr, "%3d %s %d %016lx %016lx idx y[%3d] %08x\n", 
                    i, y0[i] == y1[i] ? "OK" : "NG", vm[i], y0[i], y1[i], idx[i], (T0)x[idx[i]]);
        }
#endif
    }

    return flag;
#undef N
}

static int test_vel_vsc_vv()
{
    void vel_vsc_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vel_vsc_vv_<double>(vel_vsc_vv);
}

static int test_vel_vsc_vvm()
{
    void vel_vsc_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vel_vsc_vvm_<double>(vel_vsc_vvm);
}

static int test_vel_vscu_vv()
{
    void vel_vscu_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vel_vsc_vv_<float>(vel_vscu_vv);
}

static int test_vel_vscu_vvm()
{
    void vel_vscu_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vel_vsc_vvm_<float>(vel_vscu_vvm);
}

static int test_vel_vscl_vv()
{
    void vel_vscl_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vel_vsc_vv_<int, int>(vel_vscl_vv);
}

static int test_vel_vscl_vvm()
{
    void vel_vscl_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vel_vsc_vvm_<int, int>(vel_vscl_vvm);
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_vsc_vv", test_vel_vsc_vv);
REGISTER_TEST("vel_vsc_vvm", test_vel_vsc_vvm);
REGISTER_TEST("vel_vscu_vv", test_vel_vscu_vv);
REGISTER_TEST("vel_vscu_vvm", test_vel_vscu_vvm);
REGISTER_TEST("vel_vscl_vv", test_vel_vscl_vv);
REGISTER_TEST("vel_vscl_vvm", test_vel_vscl_vvm);
#endif
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv[])
{
    fprintf(stdout, "vel_vsc_vv: %s\n", test_vel_vsc_vv() ? "OK" : "NG");
    fprintf(stdout, "vel_vsc_vvm: %s\n", test_vel_vsc_vvm() ? "OK" : "NG");

    fprintf(stdout, "vel_vscu_vv: %s\n", test_vel_vscu_vv() ? "OK" : "NG");
    fprintf(stdout, "vel_vscu_vvm: %s\n", test_vel_vscu_vvm() ? "OK" : "NG");

    fprintf(stdout, "vel_vscl_vv: %s\n", test_vel_vscl_vv() ? "OK" : "NG");
    fprintf(stdout, "vel_vscl_vvm: %s\n", test_vel_vscl_vvm() ? "OK" : "NG");

    return 0;
}
#endif

