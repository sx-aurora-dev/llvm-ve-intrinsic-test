#include "velintrin.h"
void vcmpsl_vIvl(long int* pvx, long int* pvz, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vx = _vel_vcmpsl_vsvl(3, vz, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvz += 256;
    }
}
