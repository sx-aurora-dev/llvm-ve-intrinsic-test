#include "velintrin.h"
void pvfnmad_vvsvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, int n) {
    for (int i = 0; i < n; i += 512) {
        int l = n - i < 512 ? (n - i) / 2UL : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vw = _vel_vld_vssl(8, pvw, l);
        __vr vx = _vel_pvfnmad_vvsvl(vy, sy, vw, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 512;
        pvy += 512;
        pvw += 512;
    }
}
