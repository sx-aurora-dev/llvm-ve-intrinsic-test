#include "velintrin.h"
void vbrds_vsmvl(float* pvx, float sy, unsigned int* pvm, float* pvd, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr vd = _vel_vldu_vssl(4, pvd, l);
        __vr vx = _vel_vldu_vssl(4, pvx, l);
        vx = _vel_vbrds_vsmvl(sy, vm, vd, l);
        _vel_vstu_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvm += 256;
        pvd += 256;
    }
}
