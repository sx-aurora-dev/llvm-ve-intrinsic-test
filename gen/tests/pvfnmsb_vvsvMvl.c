#include "velintrin.h"
void pvfnmsb_vvsvMvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, unsigned int* pvm, float* ppt, int n) {
    for (int i = 0; i < n; i += 512) {
        int l = n - i < 512 ? (n - i) / 2UL : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vw = _vel_vld_vssl(8, pvw, l);
        __vr vm0 = _vel_vld_vssl(8, pvm, l);
        __vm512 vm = _vel_pvfmkwgt_Mvl(vm0, l);
        __vr pt = _vel_vld_vssl(8, ppt, l);
        __vr vx = _vel_pvfnmsb_vvsvMvl(vy, sy, vw, vm, pt, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 512;
        pvy += 512;
        pvw += 512;
        pvm += 512;
        ppt += 512;
    }
}
