#include "velintrin.h"
void vdivul_vvsl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int sy, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vx = _vel_vdivul_vvsl(vy, sy, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvy += 256;
    }
}
