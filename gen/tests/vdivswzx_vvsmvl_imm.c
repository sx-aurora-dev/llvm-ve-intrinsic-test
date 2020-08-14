#include "velintrin.h"
void vdivswzx_vvsmvl_imm(int* pvx, int* pvy, unsigned int* pvm, int* ppt, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vldlsx_vssl(4, pvy, l);
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm256 vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr pt = _vel_vldlsx_vssl(4, ppt, l);
        __vr vx = _vel_vldlsx_vssl(4, pvx, l);
        vx = _vel_vdivswzx_vvsmvl(vy, 3, vm, pt, l);
        _vel_vstl_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvy += 256;
        pvm += 256;
        ppt += 256;
    }
}
