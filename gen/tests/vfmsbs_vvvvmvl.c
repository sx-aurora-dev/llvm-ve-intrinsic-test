#include "velintrin.h"
void vfmsbs_vvvvmvl(float* pvx, float* pvy, float* pvz, float* pvw, unsigned int* pvm, float* ppt, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vldu_vssl(4, pvy, l);
        __vr vz = _vel_vldu_vssl(4, pvz, l);
        __vr vw = _vel_vldu_vssl(4, pvw, l);
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm256 vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr pt = _vel_vldu_vssl(4, ppt, l);
        __vr vx = _vel_vfmsbs_vvvvmvl(vy, vz, vw, vm, pt, l);
        _vel_vstu_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvy += 256;
        pvz += 256;
        pvw += 256;
        pvm += 256;
        ppt += 256;
    }
}
