#include "velintrin.h"
void vfsums_vvml(float* pvx, float* pvy, unsigned int* pvm, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vldu_vssl(4, pvy, l);
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr vx = _vel_vldu_vssl(4, pvx, l);
        vx = _vel_vfsums_vvml(vy, vm, l);
        _vel_vstu_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvy += 256;
        pvm += 256;
    }
}
