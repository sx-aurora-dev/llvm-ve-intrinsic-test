#define FOR_ALL_CC(M) \
M(gt) \
M(lt) \
M(ne) \
M(eq) \
M(ge) \
M(le) \
M(num) \
M(nan) \
M(gtnan) \
M(ltnan) \
M(nenan) \
M(eqnan) \
M(genan) \
M(lenan)

#ifdef __clang__
#include <velintrin.h>

static inline __vm load_vm(unsigned long int const* pvm)
{
    __vm vm;
    vm = _vel_lvm_mmss(vm, 0, pvm[0]);
    vm = _vel_lvm_mmss(vm, 1, pvm[1]);
    vm = _vel_lvm_mmss(vm, 2, pvm[2]);
    vm = _vel_lvm_mmss(vm, 3, pvm[3]);
    return vm;
}

static inline __vm512 load_vm512(unsigned long int const* pvm)
{
    __vm512 vm;
    vm = _vel_lvm_MMss(vm, 0, pvm[0]);
    vm = _vel_lvm_MMss(vm, 1, pvm[1]);
    vm = _vel_lvm_MMss(vm, 2, pvm[2]);
    vm = _vel_lvm_MMss(vm, 3, pvm[3]);
    vm = _vel_lvm_MMss(vm, 4, pvm[4]);
    vm = _vel_lvm_MMss(vm, 5, pvm[5]);
    vm = _vel_lvm_MMss(vm, 6, pvm[6]);
    vm = _vel_lvm_MMss(vm, 7, pvm[7]);
    return vm;
}

static inline void store_vm(unsigned long int* pvx, __vm vm)
{
    pvx[0] = _vel_svm_sms(vm, 0);
    pvx[1] = _vel_svm_sms(vm, 1);
    pvx[2] = _vel_svm_sms(vm, 2);
    pvx[3] = _vel_svm_sms(vm, 3);
}

static inline void store_vm512(unsigned long int* pvx, __vm512 vm)
{
    pvx[0] = _vel_svm_sMs(vm, 0);
    pvx[1] = _vel_svm_sMs(vm, 1);
    pvx[2] = _vel_svm_sMs(vm, 2);
    pvx[3] = _vel_svm_sMs(vm, 3);
    pvx[4] = _vel_svm_sMs(vm, 4);
    pvx[5] = _vel_svm_sMs(vm, 5);
    pvx[6] = _vel_svm_sMs(vm, 6);
    pvx[7] = _vel_svm_sMs(vm, 7);
}

#define VFMKL_MVL(cc) \
void vel_vfmkl##cc##_mvl(unsigned long int* pvx, long int const* pvz) \
{ \
    __vr vz = _vel_vld_vssl(8, pvz, 256); \
    __vm vm = _vel_vfmkl ## cc ## _mvl(vz, 256); \
    store_vm(pvx, vm); \
}

#define VFMKL_MVML(cc) \
void vel_vfmkl##cc##_mvml(unsigned long int* pvx, long int const* pvz, unsigned long int const* pvm) \
{ \
    __vr vz = _vel_vld_vssl(8, pvz, 256); \
    __vm vm = load_vm(pvm); \
    __vm vmx = _vel_vfmkl##cc##_mvml(vz, vm, 256); \
    store_vm(pvx, vmx); \
}

#define VFMKW_MVL(cc) \
void vel_vfmkw##cc##_mvl(unsigned long int* pvx, int const* pvz) \
{ \
    __vr vz = _vel_vldlsx_vssl(4, pvz, 256); \
    __vm vm = _vel_vfmkl ## cc ## _mvl(vz, 256); \
    store_vm(pvx, vm); \
}

#define VFMKW_MVML(cc) \
void vel_vfmkw##cc##_mvml(unsigned long int* pvx, int const* pvz, unsigned long int const* pvm) \
{ \
    __vr vz = _vel_vldlsx_vssl(4, pvz, 256); \
    __vm vm = load_vm(pvm); \
    __vm vmx = _vel_vfmkl##cc##_mvml(vz, vm, 256); \
    store_vm(pvx, vmx); \
}

#define VFMKD_MVL(cc) \
void vel_vfmkd##cc##_mvl(unsigned long int* pvx, double const* pvz) \
{ \
    __vr vz = _vel_vld_vssl(8, pvz, 256); \
    __vm vm = _vel_vfmkd ## cc ## _mvl(vz, 256); \
    store_vm(pvx, vm); \
}

#define VFMKD_MVML(cc) \
void vel_vfmkd##cc##_mvml(unsigned long int* pvx, double const* pvz, unsigned long int const* pvm) \
{ \
    __vr vz = _vel_vld_vssl(8, pvz, 256); \
    __vm vm = load_vm(pvm); \
    __vm vmx = _vel_vfmkd##cc##_mvml(vz, vm, 256); \
    store_vm(pvx, vmx); \
}

#define VFMKS_MVL(cc) \
void vel_vfmks##cc##_mvl(unsigned long int* pvx, float const* pvz) \
{ \
    __vr vz = _vel_vldu_vssl(4, pvz, 256); \
    __vm vm = _vel_vfmkl ## cc ## _mvl(vz, 256); \
    store_vm(pvx, vm); \
}

#define VFMKS_MVML(cc) \
void vel_vfmks##cc##_mvml(unsigned long int* pvx, float const* pvz, unsigned long int const* pvm) \
{ \
    __vr vz = _vel_vldu_vssl(4, pvz, 256); \
    __vm vm = load_vm(pvm); \
    __vm vmx = _vel_vfmks##cc##_mvml(vz, vm, 256); \
    store_vm(pvx, vmx); \
}

FOR_ALL_CC(VFMKL_MVL)
FOR_ALL_CC(VFMKW_MVL)
FOR_ALL_CC(VFMKD_MVL)
FOR_ALL_CC(VFMKS_MVL)

FOR_ALL_CC(VFMKL_MVML)
FOR_ALL_CC(VFMKW_MVML)
FOR_ALL_CC(VFMKD_MVML)
FOR_ALL_CC(VFMKS_MVML)

#define PVFMKW_MVL(cc) \
void vel_pvfmkw##cc##_Mvl(unsigned long int* pvx, int const* pvz) \
{ \
    __vr vz = _vel_vld_vssl(8, pvz, 256); \
    __vm512 vm = _vel_pvfmkw##cc##_Mvl(vz, 256); \
    store_vm512(pvx, vm); \
}

#define PVFMKW_MVML(cc) \
void vel_pvfmkw##cc##_MvMl(unsigned long int* pvx, int const* pvz, unsigned long int const* pvm) \
{ \
    __vr vz = _vel_vld_vssl(8, pvz, 256); \
    __vm512 vm = load_vm512(pvm); \
    __vm512 vmx = _vel_pvfmkw##cc##_MvMl(vz, vm, 256); \
    store_vm512(pvx, vmx); \
}

#define PVFMKS_MVL(cc) \
void vel_pvfmks##cc##_Mvl(unsigned long int* pvx, float const* pvz) \
{ \
    __vr vz = _vel_vld_vssl(8, pvz, 256); \
    __vm512 vmx = _vel_pvfmks##cc##_Mvl(vz, 256); \
    store_vm512(pvx, vmx); \
}

#define PVFMKS_MVML(cc) \
void vel_pvfmks##cc##_MvMl(unsigned long int* pvx, float const* pvz, unsigned long int const* pvm) \
{ \
    __vr vz = _vel_vld_vssl(8, pvz, 256); \
    __vm512 vm = load_vm512(pvm); \
    __vm512 vmx = _vel_pvfmks##cc##_MvMl(vz, vm, 256); \
    store_vm512(pvx, vmx); \
}

FOR_ALL_CC(PVFMKW_MVL)
FOR_ALL_CC(PVFMKS_MVL)
FOR_ALL_CC(PVFMKW_MVML)
FOR_ALL_CC(PVFMKS_MVML)

#endif // __clang__

#ifdef TEST
#include <cmath>
template<typename T, int VL, typename F>
void vfmk_mvl_ref(unsigned long int* pvx, T const* pvz, F op)
{
    if (VL == 256) {
        for (int i = 0; i < VL; ++i) {
            int j = i / 64;
            int k = i % 64;
            if (op(pvz[i])) {
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
            if (op(pvz[i])) {
                pvx[j] = pvx[j] | (0x1UL << (63 - k));
            } else {
                pvx[j] = pvx[j] & ~(0x1UL << (63 - k));
            }
        }
    }
}

template<typename T, int VL, typename F>
void vfmk_mvml_ref(unsigned long int* pvx, T const* pvz, unsigned long int const* pvm, F op)
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
        if (m & op(pvz[i])) {
            pvx[j] = pvx[j] | (0x1UL << (63 - k));
        } else {
            pvx[j] = pvx[j] & ~(0x1UL << (63 - k));
        }
    }
}

template <typename T> static inline bool gt(T x) { return x > 0; }
template <typename T> static inline bool lt(T x) { return x < 0; }
template <typename T> static inline bool ne(T x) { return x != 0; }
template <typename T> static inline bool eq(T x) { return x == 0; }
template <typename T> static inline bool ge(T x) { return x >= 0; }
template <typename T> static inline bool le(T x) { return x <= 0; }
template <typename T> static inline bool num(T x) { return !std::isnan(x); }
template <typename T> static inline bool nan(T x) { return std::isnan(x); }
template <typename T> static inline bool gtnan(T x) { return x > 0 || std::isnan(x); }
template <typename T> static inline bool ltnan(T x) { return x < 0 || std::isnan(x); }
template <typename T> static inline bool nenan(T x) { return x != 0 || std::isnan(x); }
template <typename T> static inline bool eqnan(T x) { return x == 0 || std::isnan(x); }
template <typename T> static inline bool genan(T x) { return x >= 0 || std::isnan(x); }
template <typename T> static inline bool lenan(T x) { return x <= 0 || std::isnan(x); }

#define REF_MVL(cc) \
template <typename T, int VL> \
void vfmk##cc##_mvl_ref(unsigned long int* pvx, T const* pvz) \
{ \
    vfmk_mvl_ref<T, VL>(pvx, pvz, cc##<T>); \
}

#define REF_MVML(cc) \
template <typename T, int VL> \
void vfmk##cc##_mvml_ref(unsigned long int* pvx, T const* pvz, unsigned long int const* pvm) \
{ \
    vfmk_mvml_ref<T, VL>(pvx, pvz, pvm, cc##<T>); \
}

FOR_ALL_CC(REF_MVL);
FOR_ALL_CC(REF_MVML);

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

static long int _mrand48()
{
    return mrand48();
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
int test_vfmk_mvml(char const* name,
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
#if 0
    for (int i = 0; i < N; ++i) {
        fprintf(stderr, "%s: %d %016lx %016lx\n", name, i, vx0[i], vx1[i]);
    }
#endif
    fprintf(stderr, "%s: %s\n", name, flag ? "OK" : "NG");
#endif

    return flag;
}

template <typename T, int VL, int N>
int test_vfmk_mvl(char const* name,
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
        //fprintf(stderr, "vz[%d]=%ld\n", i, vz[i]);
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
#if 0
    for (int i = 0; i < N; ++i) {
        fprintf(stderr, "%s: %d %016lx %016lx\n", name, i, vx0[i], vx1[i]);
    }
#endif
    fprintf(stderr, "%s: %s\n", name, flag ? "OK" : "NG");
#endif

    return flag;
}

#define DEFINE_TEST(name, cc, T, VL, N, mkrand) \
    int test_##name() \
{ \
    void name(unsigned long int* pvx, T const* pvz); \
    return test_vfmk_mvl<T, VL, N>(#name, name, vfmk##cc##_mvl_ref<T, VL>, mkrand); \
}


#define DEFINE_TESTM(name, cc, T, VL, N, mkrand) \
    int test_##name() \
{ \
    void name(unsigned long int* pvx, T const* pvz, unsigned long int const* pvm); \
    return test_vfmk_mvml<T, VL, N>(#name, name, vfmk##cc##_mvml_ref<T, VL>, mkrand); \
}

#define VFMKL_MVL(cc) DEFINE_TEST(vel_vfmkl##cc##_mvl, cc, long int, 256, 4, _mrand48)
#define VFMKW_MVL(cc) DEFINE_TEST(vel_vfmkw##cc##_mvl, cc, int, 256, 4, _irand48)
#define VFMKD_MVL(cc) DEFINE_TEST(vel_vfmkd##cc##_mvl, cc, double, 256, 4, _drand48)
#define VFMKS_MVL(cc) DEFINE_TEST(vel_vfmks##cc##_mvl, cc, float, 256, 4, _frand48)

#define VFMKL_MVML(cc) DEFINE_TESTM(vel_vfmkl##cc##_mvml, cc, long int, 256, 4, _mrand48)
#define VFMKW_MVML(cc) DEFINE_TESTM(vel_vfmkw##cc##_mvml, cc, int, 256, 4, _irand48)
#define VFMKD_MVML(cc) DEFINE_TESTM(vel_vfmkd##cc##_mvml, cc, double, 256, 4, _drand48)
#define VFMKS_MVML(cc) DEFINE_TESTM(vel_vfmks##cc##_mvml, cc, float, 256, 4, _frand48)

#define PVFMKW_MVL(cc) DEFINE_TEST(vel_pvfmkw##cc##_Mvl, cc, int, 512, 8, _irand48)
#define PVFMKS_MVL(cc) DEFINE_TEST(vel_pvfmks##cc##_Mvl, cc, float, 512, 8, _frand48)

#define PVFMKW_MVML(cc) DEFINE_TESTM(vel_pvfmkw##cc##_MvMl, cc, int, 512, 8, _irand48)
#define PVFMKS_MVML(cc) DEFINE_TESTM(vel_pvfmks##cc##_MvMl, cc, float, 512, 8, _frand48)

FOR_ALL_CC(VFMKL_MVL)
FOR_ALL_CC(VFMKW_MVL)
FOR_ALL_CC(VFMKD_MVL)
FOR_ALL_CC(VFMKS_MVL)

FOR_ALL_CC(VFMKL_MVML)
FOR_ALL_CC(VFMKW_MVML)
FOR_ALL_CC(VFMKD_MVML)
FOR_ALL_CC(VFMKS_MVML)

FOR_ALL_CC(PVFMKW_MVL)
FOR_ALL_CC(PVFMKS_MVL)

FOR_ALL_CC(PVFMKW_MVML)
FOR_ALL_CC(PVFMKS_MVML)

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
#define REGISTER_VMKL_MVL(cc) REGISTER_TEST("vel_vfmkl"#cc"_mvl", test_vel_vfmkl##cc##_mvl)
#define REGISTER_VMKW_MVL(cc) REGISTER_TEST("vel_vfmkw"#cc"_mvl", test_vel_vfmkw##cc##_mvl)
#define REGISTER_VMKD_MVL(cc) REGISTER_TEST("vel_vfmkd"#cc"_mvl", test_vel_vfmkd##cc##_mvl)
#define REGISTER_VMKS_MVL(cc) REGISTER_TEST("vel_vfmks"#cc"_mvl", test_vel_vfmks##cc##_mvl)
#define REGISTER_VMKL_MVML(cc) REGISTER_TEST("vel_vfmkl"#cc"_mvml", test_vel_vfmkl##cc##_mvml)
#define REGISTER_VMKW_MVML(cc) REGISTER_TEST("vel_vfmkw"#cc"_mvml", test_vel_vfmkw##cc##_mvml)
#define REGISTER_VMKD_MVML(cc) REGISTER_TEST("vel_vfmkd"#cc"_mvml", test_vel_vfmkd##cc##_mvml)
#define REGISTER_VMKS_MVML(cc) REGISTER_TEST("vel_vfmks"#cc"_mvml", test_vel_vfmks##cc##_mvml)
#define REGISTER_PVMKW_MVL(cc) REGISTER_TEST("vel_pvfmkw"#cc"_Mvl", test_vel_pvfmkw##cc##_Mvl)
#define REGISTER_PVMKS_MVL(cc) REGISTER_TEST("vel_pvfmks"#cc"_Mvl", test_vel_pvfmks##cc##_Mvl)
#define REGISTER_PVMKW_MVML(cc) REGISTER_TEST("vel_pvfmkw"#cc"_MvMl", test_vel_pvfmkw##cc##_MvMl)
#define REGISTER_PVMKS_MVML(cc) REGISTER_TEST("vel_pvfmks"#cc"_MvMl", test_vel_pvfmks##cc##_MvMl)
FOR_ALL_CC(REGISTER_VMKL_MVL)
FOR_ALL_CC(REGISTER_VMKW_MVL)
FOR_ALL_CC(REGISTER_VMKD_MVL)
FOR_ALL_CC(REGISTER_VMKS_MVL)
FOR_ALL_CC(REGISTER_VMKL_MVML)
FOR_ALL_CC(REGISTER_VMKW_MVML)
FOR_ALL_CC(REGISTER_VMKD_MVML)
FOR_ALL_CC(REGISTER_VMKS_MVML)
FOR_ALL_CC(REGISTER_PVMKW_MVL)
FOR_ALL_CC(REGISTER_PVMKS_MVL)
FOR_ALL_CC(REGISTER_PVMKW_MVML)
FOR_ALL_CC(REGISTER_PVMKS_MVML)
#endif // HAVE_REGISTER_TEST
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv[])
{
    int flag = 1;
#define TESTL_MVL(cc) flag &= test_vel_vfmkl##cc##_mvl();
#define TESTW_MVL(cc) flag &= test_vel_vfmkw##cc##_mvl();
#define TESTD_MVL(cc) flag &= test_vel_vfmkd##cc##_mvl();
#define TESTS_MVL(cc) flag &= test_vel_vfmks##cc##_mvl();

#define TESTL_MVML(cc) flag &= test_vel_vfmkl##cc##_mvml();
#define TESTW_MVML(cc) flag &= test_vel_vfmkw##cc##_mvml();
#define TESTD_MVML(cc) flag &= test_vel_vfmkd##cc##_mvml();
#define TESTS_MVML(cc) flag &= test_vel_vfmks##cc##_mvml();

#define TESTPW_MVL(cc) flag &= test_vel_pvfmkw##cc##_Mvl();
#define TESTPW_MVML(cc) flag &= test_vel_pvfmkw##cc##_MvMl();
#define TESTPS_MVL(cc) flag &= test_vel_pvfmks##cc##_Mvl();
#define TESTPS_MVML(cc) flag &= test_vel_pvfmks##cc##_MvMl();

    FOR_ALL_CC(TESTL_MVL)
    FOR_ALL_CC(TESTW_MVL)
    FOR_ALL_CC(TESTD_MVL)
    FOR_ALL_CC(TESTS_MVL)

    FOR_ALL_CC(TESTL_MVML)
    FOR_ALL_CC(TESTW_MVML)
    FOR_ALL_CC(TESTD_MVML)
    FOR_ALL_CC(TESTS_MVML)

    FOR_ALL_CC(TESTPW_MVL);
    FOR_ALL_CC(TESTPS_MVL);

    FOR_ALL_CC(TESTPW_MVML);
    FOR_ALL_CC(TESTPS_MVML);

    fprintf(stderr, "%s\n", flag ? "OK" : "NG");
    return 0;
}
#endif


