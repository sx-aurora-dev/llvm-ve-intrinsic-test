#include "velintrin.h"
void pvfmsb_vsvvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, int n) {
    for (int i = 0; i < n; i += 512) {
        int l = n - i < 512 ? (n - i) / 2UL : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vw = _vel_vld_vssl(8, pvw, l);
        __vr vx = _vel_pvfmsb_vsvvl(sy, vz, vw, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 512;
        pvz += 512;
        pvw += 512;
    }
}
