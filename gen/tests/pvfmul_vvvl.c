#include "velintrin.h"
void pvfmul_vvvl(float* pvx, float* pvy, float* pvz, int n) {
    for (int i = 0; i < n; i += 512) {
        int l = n - i < 512 ? (n - i) / 2UL : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vx = _vel_pvfmul_vvvl(vy, vz, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 512;
        pvy += 512;
        pvz += 512;
    }
}
