#include "velintrin.h"
void pvcvtwsrz_vvl(int* pvx, float* pvy, int n) {
    for (int i = 0; i < n; i += 512) {
        int l = n - i < 512 ? (n - i) / 2UL : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vx = _vel_pvcvtwsrz_vvl(vy, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 512;
        pvy += 512;
    }
}
