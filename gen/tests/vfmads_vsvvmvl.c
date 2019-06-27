#include "velintrin.h"
void vfmads_vsvvmvl(float* pvx, float sy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vldu_vssl(4, pvz, l);
        __vr vw = _vel_vldu_vssl(4, pvw, l);
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr vd = _vel_vldu_vssl(4, pvd, l);
        __vr vx = _vel_vldu_vssl(4, pvx, l);
        vx = _vel_vfmads_vsvvmvl(sy, vz, vw, vm, vd, l);
        _vel_vstu_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvz += 256;
        pvw += 256;
        pvm += 256;
        pvd += 256;
    }
}
