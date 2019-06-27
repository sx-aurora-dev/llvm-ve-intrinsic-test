#include "velintrin.h"
void vfmaxd_vsvl(double* pvx, double sy, double* pvz, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vx = _vel_vfmaxd_vsvl(sy, vz, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvz += 256;
    }
}
