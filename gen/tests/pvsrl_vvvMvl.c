#include "velintrin.h"
void pvsrl_vvvMvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvy, unsigned int* pvm, unsigned int* ppt, int n) {
    for (int i = 0; i < n; i += 512) {
        int l = n - i < 512 ? (n - i) / 2UL : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vm0 = _vel_vld_vssl(8, pvm, l);
        __vm512 vm = _vel_pvfmkwgt_Mvl(vm0, l);
        __vr pt = _vel_vld_vssl(8, ppt, l);
        __vr vx = _vel_vld_vssl(8, pvx, l);
        vx = _vel_pvsrl_vvvMvl(vz, vy, vm, pt, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 512;
        pvz += 512;
        pvy += 512;
        pvm += 512;
        ppt += 512;
    }
}
