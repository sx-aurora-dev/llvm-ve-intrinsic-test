#include "velintrin.h"
void pvadds_vsvl(int* pvx, unsigned long int sy, int* pvz, int n) {
    for (int i = 0; i < n; i += 512) {
        int l = n - i < 512 ? (n - i) / 2UL : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vx = _vel_pvadds_vsvl(sy, vz, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 512;
        pvz += 512;
    }
}
