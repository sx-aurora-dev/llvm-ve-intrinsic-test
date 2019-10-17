#include "velintrin.h"
void vcvtwdzx_vvmvl(int* pvx, double* pvy, unsigned int* pvm, int* pvd, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm256 vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr vd = _vel_vldlsx_vssl(4, pvd, l);
        __vr vx = _vel_vldlsx_vssl(4, pvx, l);
        vx = _vel_vcvtwdzx_vvmvl(vy, vm, vd, l);
        _vel_vstl_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvy += 256;
        pvm += 256;
        pvd += 256;
    }
}
