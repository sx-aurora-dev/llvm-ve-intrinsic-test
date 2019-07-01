#include "velintrin.h"
void vfmadd_vsvvmvl(double* pvx, double sy, double* pvz, double* pvw, unsigned int* pvm, double* pvd, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vw = _vel_vld_vssl(8, pvw, l);
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr vd = _vel_vld_vssl(8, pvd, l);
        __vr vx = _vel_vld_vssl(8, pvx, l);
        vx = _vel_vfmadd_vsvvmvl(sy, vz, vw, vm, vd, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvz += 256;
        pvw += 256;
        pvm += 256;
        pvd += 256;
    }
}