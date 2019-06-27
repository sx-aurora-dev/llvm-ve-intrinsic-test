#include "velintrin.h"
void vmulul_vsvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vx = _vel_vmulul_vsvl(sy, vz, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvz += 256;
    }
}
