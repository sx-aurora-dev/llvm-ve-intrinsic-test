#include "velintrin.h"
void vbrds_vsl(float* pvx, float sy, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vx = _vel_vbrds_vsl(sy, l);
        _vel_vstu_vssl(vx, 4, pvx, l);
        pvx += 256;
    }
}
