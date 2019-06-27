#ifdef __clang__
#include <veintrin.h>

// pvy[pidx[i]] = pvx[i]
void vsc_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 3, (unsigned long int)pvy);
    __vr vx = _ve_vld_vss(8, pvx);
    _ve_vsc_vv(vx, vaddr);
}

void vsc_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 3, (unsigned long int)pvy);
    __vr vm0 = _ve_vldlzx_vss(4, pvm);
    __vm vm = _ve_vfmkw_mcv(VECC_G, vm0);
    __vr vx = _ve_vld_vss(8, pvx);
    _ve_vsc_vvm(vx, vaddr, vm);
}

void vscu_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 2, (unsigned long int)pvy);
    __vr vx = _ve_vldu_vss(4, pvx);
    _ve_vscu_vv(vx, vaddr);
}

void vscu_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 2, (unsigned long int)pvy);
    __vr vm0 = _ve_vldlzx_vss(4, pvm);
    __vm vm = _ve_vfmkw_mcv(VECC_G, vm0);
    __vr vx = _ve_vldu_vss(4, pvx);
    _ve_vscu_vvm(vx, vaddr, vm);
}

void vscl_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 2, (unsigned long int)pvy);
    __vr vx = _ve_vldlzx_vss(4, pvx);
    _ve_vscl_vv(vx, vaddr);
}

void vscl_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 2, (unsigned long int)pvy);
    __vr vm0 = _ve_vldlzx_vss(4, pvm);
    __vm vm = _ve_vfmkw_mcv(VECC_G, vm0);
    __vr vx = _ve_vldlzx_vss(4, pvx);
    _ve_vscl_vvm(vx, vaddr, vm);
}
#endif

#ifdef TEST
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "util.h"

template<typename T0, typename T1 = T0>
int test_vsc_vv_(void (*func)(void* pvx, void* pvy, unsigned long int* pidx))
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
int test_vsc_vvm_(void (*func)(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm))
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

static int test_vsc_vv()
{
    void vsc_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vsc_vv_<double>(vsc_vv);
}

static int test_vsc_vvm()
{
    void vsc_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vsc_vvm_<double>(vsc_vvm);
}

static int test_vscu_vv()
{
    void vscu_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vsc_vv_<float>(vscu_vv);
}

static int test_vscu_vvm()
{
    void vscu_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vsc_vvm_<float>(vscu_vvm);
}

static int test_vscl_vv()
{
    void vscl_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vsc_vv_<int, int>(vscl_vv);
}

static int test_vscl_vvm()
{
    void vscl_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vsc_vvm_<int, int>(vscl_vvm);
}

#ifdef HAVE_REGISTER_TEST
extern "C" {
    void register_test(char const* name, int (*func)(void));
}

__attribute__((constructor))
static void init()
{
    register_test("vsc_vv", test_vsc_vv);
    register_test("vsc_vvm", test_vsc_vvm);
    register_test("vscu_vv", test_vscu_vv);
    register_test("vscu_vvm", test_vscu_vvm);
    register_test("vscl_vv", test_vscl_vv);
    register_test("vscl_vvm", test_vscl_vvm);
}
#endif
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    fprintf(stdout, "vsc_vv: %s\n", test_vsc_vv() ? "OK" : "NG");
    fprintf(stdout, "vsc_vvm: %s\n", test_vsc_vvm() ? "OK" : "NG");

    fprintf(stdout, "vscu_vv: %s\n", test_vscu_vv() ? "OK" : "NG");
    fprintf(stdout, "vscu_vvm: %s\n", test_vscu_vvm() ? "OK" : "NG");

    fprintf(stdout, "vscl_vv: %s\n", test_vscl_vv() ? "OK" : "NG");
    fprintf(stdout, "vscl_vvm: %s\n", test_vscl_vvm() ? "OK" : "NG");

    return 0;
}
#endif

