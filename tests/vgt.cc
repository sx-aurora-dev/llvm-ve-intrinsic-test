#ifdef __clang__
#include <stdio.h>
#include <veintrin.h>
void vgt_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 3, (unsigned long int)pvy);
    __vr vx = _ve_vgt_vv(vaddr);
    _ve_vst_vss(vx, 8, pvx);
}

void vgt_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 3, (unsigned long int)pvy);
    __vr vm0 = _ve_vldlzx_vss(4, pvm);
    __vm vm = _ve_vfmkw_mcv(VECC_G, vm0);
    __vr vx = _ve_vld_vss(8, pvx);
    vx = _ve_vgt_vvm(vaddr, vm);
    _ve_vst_vss(vx, 8, pvx);
}

void vgtu_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 2, (unsigned long int)pvy);
    __vr vx = _ve_vgtu_vv(vaddr);
    _ve_vstu_vss(vx, 4, pvx);
}

void vgtu_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 2, (unsigned long int)pvy);
    __vr vm0 = _ve_vldlzx_vss(4, pvm);
    __vm vm = _ve_vfmkw_mcv(VECC_G, vm0);
    __vr vx = _ve_vldu_vss(4, pvx);
    vx = _ve_vgtu_vvm(vaddr, vm);
    _ve_vstu_vss(vx, 4, pvx);
}

void vgtlsx_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 2, (unsigned long int)pvy);
    __vr vx = _ve_vgtlsx_vv(vaddr);
    _ve_vst_vss(vx, 8, pvx);
}

void vgtlsx_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 2, (unsigned long int)pvy);
    __vr vm0 = _ve_vldlzx_vss(4, pvm);
    __vm vm = _ve_vfmkw_mcv(VECC_G, vm0);
    __vr vx = _ve_vldlsx_vss(4, pvx);
    vx = _ve_vgtlsx_vvm(vaddr, vm);
    _ve_vst_vss(vx, 8, pvx);
}

void vgtlzx_vv(void* pvx, void* pvy, unsigned long int* pidx)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 2, (unsigned long int)pvy);
    __vr vx = _ve_vgtlzx_vv(vaddr);
    _ve_vst_vss(vx, 8, pvx);
}

void vgtlzx_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm)
{
    _ve_lvl(256);
    __vr vidx = _ve_vld_vss(8, pidx);
    __vr vaddr = _ve_vsfa_vvss(vidx, 2, (unsigned long int)pvy);
    __vr vm0 = _ve_vldlzx_vss(4, pvm);
    __vm vm = _ve_vfmkw_mcv(VECC_G, vm0);
    __vr vx = _ve_vldlzx_vss(4, pvx);
    vx = _ve_vgtlzx_vvm(vaddr, vm);
    _ve_vst_vss(vx, 8, pvx);
}
#endif

#ifdef TEST
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "util.h"

template<typename T0, typename T1 = T0>
int test_vgt_vv_(void (*func)(void* pvx, void* pvy, unsigned long int* pidx))
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
int test_vgt_vvm_(void (*func)(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm))
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

static int test_vgt_vv()
{
    void vgt_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vgt_vv_<double>(vgt_vv);
}

static int test_vgt_vvm()
{
    void vgt_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vgt_vvm_<double>(vgt_vvm);
}

static int test_vgtu_vv()
{
    void vgtu_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vgt_vv_<float>(vgtu_vv);
}

static int test_vgtu_vvm()
{
    void vgtu_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vgt_vvm_<float>(vgtu_vvm);
}

static int test_vgtlsx_vv()
{
    void vgtlsx_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vgt_vv_<int, long int>(vgtlsx_vv);
}

static int test_vgtlsx_vvm()
{
    void vgtlsx_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vgt_vvm_<int, long int>(vgtlsx_vvm);
}

static int test_vgtlzx_vv()
{
    void vgtlzx_vv(void* pvx, void* pvy, unsigned long int* pidx);
    return test_vgt_vv_<unsigned int, unsigned long int>(vgtlzx_vv);
}

static int test_vgtlzx_vvm()
{
    void vgtlzx_vvm(void* pvx, void* pvy, unsigned long int* pidx, unsigned int* pvm);
    return test_vgt_vvm_<unsigned int, unsigned long int>(vgtlzx_vvm);
}

#ifdef HAVE_REGISTER_TEST
extern "C" {
    void register_test(char const* name, int (*func)(void));
}

__attribute__((constructor))
static void init()
{
    register_test("vgt_vv", test_vgt_vv);
    register_test("vgt_vvm", test_vgt_vvm);
    register_test("vgtu_vv", test_vgtu_vv);
    register_test("vgtu_vvm", test_vgtu_vvm);
    register_test("vgtlsx_vv", test_vgtlsx_vv);
    register_test("vgtlsx_vvm", test_vgtlsx_vvm);
    register_test("vgtlzx_vv", test_vgtlzx_vv);
    register_test("vgtlzx_vvm", test_vgtlzx_vvm);
}
#endif
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
#if 1
    fprintf(stdout, "vgt_vv: %s\n", test_vgt_vv() ? "OK" : "NG");
    fprintf(stdout, "vgt_vvm: %s\n", test_vgt_vvm() ? "OK" : "NG");

    fprintf(stdout, "vgtu_vv: %s\n", test_vgtu_vv() ? "OK" : "NG");
    fprintf(stdout, "vgtu_vvm: %s\n", test_vgtu_vvm() ? "OK" : "NG");

    fprintf(stdout, "vgtlsx_vv: %s\n", test_vgtlsx_vv() ? "OK" : "NG");
    fprintf(stdout, "vgtlsx_vvm: %s\n", test_vgtlsx_vvm() ? "OK" : "NG");

    fprintf(stdout, "vgtlzx_vv: %s\n", test_vgtlzx_vv() ? "OK" : "NG");
    fprintf(stdout, "vgtlzx_vvm: %s\n", test_vgtlzx_vvm() ? "OK" : "NG");
#endif

    return 0;
}
#endif

