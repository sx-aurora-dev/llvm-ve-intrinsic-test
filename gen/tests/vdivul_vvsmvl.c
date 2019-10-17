#include "velintrin.h"
void vdivul_vvsmvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int sy, unsigned int* pvm, unsigned long int* pvd, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm256 vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr vd = _vel_vld_vssl(8, pvd, l);
        __vr vx = _vel_vld_vssl(8, pvx, l);
        vx = _vel_vdivul_vvsmvl(vy, sy, vm, vd, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvy += 256;
        pvm += 256;
        pvd += 256;
    }
}
