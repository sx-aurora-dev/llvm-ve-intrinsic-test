#include "velintrin.h"
void vbrdd_vsmvl(double* pvx, double sy, unsigned int* pvm, double* ppt, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm256 vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr pt = _vel_vld_vssl(8, ppt, l);
        __vr vx = _vel_vbrdd_vsmvl(sy, vm, pt, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvm += 256;
        ppt += 256;
    }
}
