#include "velintrin.h"
void vcvtldrz_vvmvl(long int* pvx, double* pvy, unsigned int* pvm, long int* pvd, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr vd = _vel_vld_vssl(8, pvd, l);
        __vr vx = _vel_vld_vssl(8, pvx, l);
        vx = _vel_vcvtldrz_vvmvl(vy, vm, vd, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvy += 256;
        pvm += 256;
        pvd += 256;
    }
}
