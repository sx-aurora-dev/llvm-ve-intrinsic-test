#include "velintrin.h"
void vrand_vvml(unsigned long int* pvx, unsigned long int* pvy, unsigned int* pvm, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr vx = _vel_vld_vssl(8, pvx, l);
        vx = _vel_vrand_vvml(vy, vm, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvy += 256;
        pvm += 256;
    }
}
