#ifdef __clang__
#include <veintrin.h>

void vfmkl_mcv(unsigned long int* pvx, long int const* pvz)
{
    _ve_lvl(256);
    __vr vz = _ve_vld_vss(8, pvz);
    __vm vm = _ve_vfmkl_mcv(VECC_G, vz);
    pvx[0] = _ve_svm_sms(vm, 0);
    pvx[1] = _ve_svm_sms(vm, 1);
    pvx[2] = _ve_svm_sms(vm, 2);
    pvx[3] = _ve_svm_sms(vm, 3);
}

void vfmkl_mcvm(unsigned long int* pvx, long int const* pvz, unsigned long int const* pvm)
{
    _ve_lvl(256);
    __vr vz = _ve_vld_vss(8, pvz);

    __vm vm;
    vm = _ve_lvm_mmss(vm, 0, pvm[0]);
    vm = _ve_lvm_mmss(vm, 1, pvm[1]);
    vm = _ve_lvm_mmss(vm, 2, pvm[2]);
    vm = _ve_lvm_mmss(vm, 3, pvm[3]);

    __vm vmx = _ve_vfmkl_mcvm(VECC_G, vz, vm);

    pvx[0] = _ve_svm_sms(vmx, 0);
    pvx[1] = _ve_svm_sms(vmx, 1);
    pvx[2] = _ve_svm_sms(vmx, 2);
    pvx[3] = _ve_svm_sms(vmx, 3);
}

void vfmkw_mcv(unsigned long int* pvx, int const* pvz)
{
    _ve_lvl(256);
    __vr vz = _ve_vldlsx_vss(4, pvz);
    __vm vm = _ve_vfmkl_mcv(VECC_G, vz);
    pvx[0] = _ve_svm_sms(vm, 0);
    pvx[1] = _ve_svm_sms(vm, 1);
    pvx[2] = _ve_svm_sms(vm, 2);
    pvx[3] = _ve_svm_sms(vm, 3);
}

void vfmkw_mcvm(unsigned long int* pvx, int const* pvz, unsigned long int const* pvm)
{
    _ve_lvl(256);
    __vr vz = _ve_vldlsx_vss(4, pvz);

    __vm vm;
    vm = _ve_lvm_mmss(vm, 0, pvm[0]);
    vm = _ve_lvm_mmss(vm, 1, pvm[1]);
    vm = _ve_lvm_mmss(vm, 2, pvm[2]);
    vm = _ve_lvm_mmss(vm, 3, pvm[3]);

    __vm vmx = _ve_vfmkl_mcvm(VECC_G, vz, vm);

    pvx[0] = _ve_svm_sms(vmx, 0);
    pvx[1] = _ve_svm_sms(vmx, 1);
    pvx[2] = _ve_svm_sms(vmx, 2);
    pvx[3] = _ve_svm_sms(vmx, 3);
}


void vfmkd_mcv(unsigned long int* pvx, double const* pvz)
{
    _ve_lvl(256);
    __vr vz = _ve_vld_vss(8, pvz);
    __vm vm = _ve_vfmkd_mcv(VECC_G, vz);
    pvx[0] = _ve_svm_sms(vm, 0);
    pvx[1] = _ve_svm_sms(vm, 1);
    pvx[2] = _ve_svm_sms(vm, 2);
    pvx[3] = _ve_svm_sms(vm, 3);
}

void vfmkd_mcvm(unsigned long int* pvx, double const* pvz, unsigned long int const* pvm)
{
    _ve_lvl(256);
    __vr vz = _ve_vld_vss(8, pvz);

    __vm vm;
    vm = _ve_lvm_mmss(vm, 0, pvm[0]);
    vm = _ve_lvm_mmss(vm, 1, pvm[1]);
    vm = _ve_lvm_mmss(vm, 2, pvm[2]);
    vm = _ve_lvm_mmss(vm, 3, pvm[3]);

    __vm vmx = _ve_vfmkl_mcvm(VECC_G, vz, vm);

    pvx[0] = _ve_svm_sms(vmx, 0);
    pvx[1] = _ve_svm_sms(vmx, 1);
    pvx[2] = _ve_svm_sms(vmx, 2);
    pvx[3] = _ve_svm_sms(vmx, 3);
}

void vfmks_mcv(unsigned long int* pvx, float const* pvz)
{
    _ve_lvl(256);
    __vr vz = _ve_vldu_vss(4, pvz);
    __vm vm = _ve_vfmkd_mcv(VECC_G, vz);
    pvx[0] = _ve_svm_sms(vm, 0);
    pvx[1] = _ve_svm_sms(vm, 1);
    pvx[2] = _ve_svm_sms(vm, 2);
    pvx[3] = _ve_svm_sms(vm, 3);
}

void vfmks_mcvm(unsigned long int* pvx, float const* pvz, unsigned long int const* pvm)
{
    _ve_lvl(256);
    __vr vz = _ve_vldu_vss(4, pvz);

    __vm vm;
    vm = _ve_lvm_mmss(vm, 0, pvm[0]);
    vm = _ve_lvm_mmss(vm, 1, pvm[1]);
    vm = _ve_lvm_mmss(vm, 2, pvm[2]);
    vm = _ve_lvm_mmss(vm, 3, pvm[3]);

    __vm vmx = _ve_vfmkl_mcvm(VECC_G, vz, vm);

    pvx[0] = _ve_svm_sms(vmx, 0);
    pvx[1] = _ve_svm_sms(vmx, 1);
    pvx[2] = _ve_svm_sms(vmx, 2);
    pvx[3] = _ve_svm_sms(vmx, 3);
}

void pvfmkw_Mcv(unsigned long int* pvx, int const* pvz)
{
    _ve_lvl(256);
    __vr vz = _ve_vld_vss(8, pvz);
    __vm512 vm = _ve_pvfmkw_Mcv(VECC_G, vz);
    pvx[0] = _ve_svm_sMs(vm, 0);
    pvx[1] = _ve_svm_sMs(vm, 1);
    pvx[2] = _ve_svm_sMs(vm, 2);
    pvx[3] = _ve_svm_sMs(vm, 3);
    pvx[4] = _ve_svm_sMs(vm, 4);
    pvx[5] = _ve_svm_sMs(vm, 5);
    pvx[6] = _ve_svm_sMs(vm, 6);
    pvx[7] = _ve_svm_sMs(vm, 7);
}

void pvfmkw_McvM(unsigned long int* pvx, int const* pvz, unsigned long int const* pvm)
{
    _ve_lvl(256);
    __vr vz = _ve_vld_vss(8, pvz);

    __vm512 vm;
    vm = _ve_lvm_MMss(vm, 0, pvm[0]);
    vm = _ve_lvm_MMss(vm, 1, pvm[1]);
    vm = _ve_lvm_MMss(vm, 2, pvm[2]);
    vm = _ve_lvm_MMss(vm, 3, pvm[3]);
    vm = _ve_lvm_MMss(vm, 4, pvm[4]);
    vm = _ve_lvm_MMss(vm, 5, pvm[5]);
    vm = _ve_lvm_MMss(vm, 6, pvm[6]);
    vm = _ve_lvm_MMss(vm, 7, pvm[7]);

    __vm512 vmx = _ve_pvfmkw_McvM(VECC_G, vz, vm);

    pvx[0] = _ve_svm_sMs(vmx, 0);
    pvx[1] = _ve_svm_sMs(vmx, 1);
    pvx[2] = _ve_svm_sMs(vmx, 2);
    pvx[3] = _ve_svm_sMs(vmx, 3);
    pvx[4] = _ve_svm_sMs(vmx, 4);
    pvx[5] = _ve_svm_sMs(vmx, 5);
    pvx[6] = _ve_svm_sMs(vmx, 6);
    pvx[7] = _ve_svm_sMs(vmx, 7);
}


void pvfmks_Mcv(unsigned long int* pvx, float const* pvz)
{
    _ve_lvl(256);
    __vr vz = _ve_vld_vss(8, pvz);
    __vm512 vm = _ve_pvfmks_Mcv(VECC_G, vz);
    pvx[0] = _ve_svm_sMs(vm, 0);
    pvx[1] = _ve_svm_sMs(vm, 1);
    pvx[2] = _ve_svm_sMs(vm, 2);
    pvx[3] = _ve_svm_sMs(vm, 3);
    pvx[4] = _ve_svm_sMs(vm, 4);
    pvx[5] = _ve_svm_sMs(vm, 5);
    pvx[6] = _ve_svm_sMs(vm, 6);
    pvx[7] = _ve_svm_sMs(vm, 7);
}

void pvfmks_McvM(unsigned long int* pvx, float const* pvz, unsigned long int const* pvm)
{
    _ve_lvl(256);
    __vr vz = _ve_vld_vss(8, pvz);

    __vm512 vm;
    vm = _ve_lvm_MMss(vm, 0, pvm[0]);
    vm = _ve_lvm_MMss(vm, 1, pvm[1]);
    vm = _ve_lvm_MMss(vm, 2, pvm[2]);
    vm = _ve_lvm_MMss(vm, 3, pvm[3]);
    vm = _ve_lvm_MMss(vm, 4, pvm[4]);
    vm = _ve_lvm_MMss(vm, 5, pvm[5]);
    vm = _ve_lvm_MMss(vm, 6, pvm[6]);
    vm = _ve_lvm_MMss(vm, 7, pvm[7]);

    __vm512 vmx = _ve_pvfmks_McvM(VECC_G, vz, vm);

    pvx[0] = _ve_svm_sMs(vmx, 0);
    pvx[1] = _ve_svm_sMs(vmx, 1);
    pvx[2] = _ve_svm_sMs(vmx, 2);
    pvx[3] = _ve_svm_sMs(vmx, 3);
    pvx[4] = _ve_svm_sMs(vmx, 4);
    pvx[5] = _ve_svm_sMs(vmx, 5);
    pvx[6] = _ve_svm_sMs(vmx, 6);
    pvx[7] = _ve_svm_sMs(vmx, 7);
}

#endif

#ifdef TEST
template<typename T, int VL>
void vfmk_mcv_ref(unsigned long int* pvx, T const* pvz)
{
    if (VL == 256) {
        for (int i = 0; i < VL; ++i) {
            int j = i / 64;
            int k = i % 64;
            if (pvz[i] > 0) {
                pvx[j] = pvx[j] | (0x1UL << (63 - k));
            } else {
                pvx[j] = pvx[j] & ~(0x1UL << (63 - k));
            }
        }
    } else {
        for (int i = 0; i < VL; ++i) {
            int ii = i / 2;
            int j = ii / 64 + 4 * (i % 2);
            int k = ii % 64;
            if (pvz[i] > 0) {
                pvx[j] = pvx[j] | (0x1UL << (63 - k));
            } else {
                pvx[j] = pvx[j] & ~(0x1UL << (63 - k));
            }
        }
    }
}

template<typename T, int VL>
void vfmk_mcvm_ref(unsigned long int* pvx, T const* pvz, unsigned long int const* pvm)
{
    for (int i = 0; i < VL; ++i) {
        int j, k;
        if (VL == 256) {
            j = i / 64;
            k = i % 64;
        } else { // 512
            int ii = i / 2;
            j = ii / 64 + 4 * (i % 2);
            k = ii % 64;
        }
        int m = (pvm[j] >> (63 - k)) & 0x1;
        if (m & (pvz[i] > 0)) {
            pvx[j] = pvx[j] | (0x1UL << (63 - k));
        } else {
            pvx[j] = pvx[j] & ~(0x1UL << (63 - k));
        }
    }
}

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

static long int _mrand48()
{
    return mrand48() - 2147483648L;
}

static int _irand48()
{
    return _mrand48();
}

static double _drand48()
{
    return drand48() - 0.5;
}

static float _frand48()
{
    return _drand48();
}

template<typename T, int VL, int N>
int test_vfmk_mcvm(char const* name,
                   void (*f0)(unsigned long int* pvx, T const* pvz, unsigned long int const* pvm),
                   void (*f1)(unsigned long int* pvx, T const* pvz, unsigned long int const* pvm),
                   T (*mkrand)(void))
{
    unsigned long int vx0[N];
    unsigned long int vx1[N];
    T vz[VL];
    unsigned long int vm[N];

    memset(vx0, 0, sizeof(unsigned long int) * N);
    memset(vx1, 0, sizeof(unsigned long int) * N);
    for (int i = 0; i < VL; ++i) {
        vz[i] = mkrand();
    }

    for (int i = 0; i < N; ++i) {
        vm[i] = (lrand48() << 32) | lrand48();
    }

    f0(vx0, vz, vm);
    f1(vx1, vz, vm);


    int flag = 1;
    for (int i = 0; i < N; ++i) {
        flag &= (vx0[i] == vx1[i]);
    }

#ifdef MAIN
    for (int i = 0; i < N; ++i) {
        fprintf(stderr, "%s: %d %016lx %016lx\n", name, i, vx0[i], vx1[i]);
    }
    fprintf(stderr, "%s: %s\n", name, flag ? "OK" : "NG");
#endif

    return flag;
}

template <typename T, int VL, int N>
int test_vfmk_mcv(char const* name,
                  void (*f0)(unsigned long int* pvx, T const* pvz),
                  void (*f1)(unsigned long int* pvx, T const* pvz),
                  T (*mkrand)(void))
{
    unsigned long int vx0[N];
    unsigned long int vx1[N];
    T vz[VL];

    memset(vx0, 0, sizeof(unsigned long int) * N);
    memset(vx1, 0, sizeof(unsigned long int) * N);
    for (int i = 0; i < VL; ++i) {
        vz[i] = mkrand();
        //fprintf(stderr, "vz[%d]=%f\n", i, vz[i]);
    }

    f0(vx0, vz);
    f1(vx1, vz);

    int flag = 1;
    for (int i = 0; i < N; ++i) {
        flag &= (vx0[i] == vx1[i]);
    }

#ifdef MAIN
#if 0
    fprintf(stderr, "%s: %016lx %016lx %016lx %016lx\n", name, vx0[0], vx0[1], vx0[2], vx0[3]);
    fprintf(stderr, "%s: %016lx %016lx %016lx %016lx\n", name, vx1[0], vx1[1], vx1[2], vx1[3]);
#endif
    for (int i = 0; i < N; ++i) {
        fprintf(stderr, "%s: %d %016lx %016lx\n", name, i, vx0[i], vx1[i]);
    }
    fprintf(stderr, "%s: %s\n", name, flag ? "OK" : "NG");
#endif

    return flag;
}

#define DEFINE_TEST(name, T, VL, N, mkrand) \
    int test_##name() \
{ \
    void name(unsigned long int* pvx, T const* pvz); \
    return test_vfmk_mcv<T, VL, N>(#name, name, vfmk_mcv_ref<T, VL>, mkrand); \
}


#define DEFINE_TESTM(name, T, VL, N, mkrand) \
    int test_##name() \
{ \
    void name(unsigned long int* pvx, T const* pvz, unsigned long int const* pvm); \
    return test_vfmk_mcvm<T, VL, N>(#name, name, vfmk_mcvm_ref<T, VL>, mkrand); \
}

DEFINE_TEST(vfmkl_mcv, long int, 256, 4, _mrand48)
DEFINE_TESTM(vfmkl_mcvm, long int, 256, 4, _mrand48)
DEFINE_TEST(vfmkw_mcv, int, 256, 4, _irand48)
DEFINE_TESTM(vfmkw_mcvm, int, 256, 4, _irand48)
DEFINE_TEST(vfmkd_mcv, double, 256, 4, _drand48)
DEFINE_TESTM(vfmkd_mcvm, double, 256, 4, _drand48)
DEFINE_TEST(vfmks_mcv, float, 256, 4, _frand48)
DEFINE_TESTM(vfmks_mcvm, float, 256, 4, _frand48)

DEFINE_TEST(pvfmkw_Mcv, int, 512, 8, _irand48)
DEFINE_TESTM(pvfmkw_McvM, int, 512, 8, _irand48)
DEFINE_TEST(pvfmks_Mcv, float, 512, 8, _frand48)
DEFINE_TESTM(pvfmks_McvM, float, 512, 8, _frand48)
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vfmkl_mcv();
    test_vfmkl_mcvm();
    test_vfmkw_mcv();
    test_vfmkw_mcvm();
    test_vfmkd_mcv();
    test_vfmkd_mcvm();
    test_vfmks_mcv();
    test_vfmks_mcvm();
    test_pvfmkw_Mcv();
    test_pvfmkw_McvM();
    test_pvfmks_Mcv();
    test_pvfmks_McvM();
    return 0;
}
#endif


