#include "velintrin.h"
void approx_vfdivs_vvsl(float* pvx, float* pvy, float sz, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vldu_vssl(4, pvy, l);
        __vr vx = _vel_approx_vfdivs_vvsl(vy, sz, l);
        _vel_vstu_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvy += 256;
    }
}
