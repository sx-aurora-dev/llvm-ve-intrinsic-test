#include "velintrin.h"
void vslawzx_vvvl(int* pvx, int* pvz, unsigned long int* pvy, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vldlsx_vssl(4, pvz, l);
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vx = _vel_vslawzx_vvvl(vz, vy, l);
        _vel_vstl_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvz += 256;
        pvy += 256;
    }
}
