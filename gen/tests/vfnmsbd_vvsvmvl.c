#include "velintrin.h"
void vfnmsbd_vvsvmvl(double* pvx, double* pvy, double sy, double* pvw, unsigned int* pvm, double* ppt, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vw = _vel_vld_vssl(8, pvw, l);
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm256 vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr pt = _vel_vld_vssl(8, ppt, l);
        __vr vx = _vel_vld_vssl(8, pvx, l);
        vx = _vel_vfnmsbd_vvsvmvl(vy, sy, vw, vm, pt, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvy += 256;
        pvw += 256;
        pvm += 256;
        ppt += 256;
    }
}
