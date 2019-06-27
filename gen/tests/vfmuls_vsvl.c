#include "velintrin.h"
void vfmuls_vsvl(float* pvx, float sy, float* pvz, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vldu_vssl(4, pvz, l);
        __vr vx = _vel_vfmuls_vsvl(sy, vz, l);
        _vel_vstu_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvz += 256;
    }
}
