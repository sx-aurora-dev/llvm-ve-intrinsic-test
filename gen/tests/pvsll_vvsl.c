#include "velintrin.h"
void pvsll_vvsl(unsigned int* pvx, unsigned int* pvz, unsigned long int sy, int n) {
    for (int i = 0; i < n; i += 512) {
        int l = n - i < 512 ? (n - i) / 2UL : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vx = _vel_pvsll_vvsl(vz, sy, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 512;
        pvz += 512;
    }
}
