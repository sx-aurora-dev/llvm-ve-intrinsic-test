#include "velintrin.h"
void pvsra_vvvl(int* pvx, int* pvz, unsigned int* pvy, int n) {
    for (int i = 0; i < n; i += 512) {
        int l = n - i < 512 ? (n - i) / 2UL : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vx = _vel_pvsra_vvvl(vz, vy, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 512;
        pvz += 512;
        pvy += 512;
    }
}
