#include "velintrin.h"
void vsral_vvsl(long int* pvx, long int* pvz, long int sy, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vx = _vel_vsral_vvsl(vz, sy, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvz += 256;
    }
}
