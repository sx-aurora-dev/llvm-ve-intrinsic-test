#include "velintrin.h"
void vfnmads_vvsvl(float* pvx, float* pvy, float sy, float* pvw, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vldu_vssl(4, pvy, l);
        __vr vw = _vel_vldu_vssl(4, pvw, l);
        __vr vx = _vel_vfnmads_vvsvl(vy, sy, vw, l);
        _vel_vstu_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvy += 256;
        pvw += 256;
    }
}
