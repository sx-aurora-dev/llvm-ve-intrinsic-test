#include "velintrin.h"
void vaddswsx_vvvl(int* pvx, int* pvy, int* pvz, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vldlsx_vssl(4, pvy, l);
        __vr vz = _vel_vldlsx_vssl(4, pvz, l);
        __vr vx = _vel_vaddswsx_vvvl(vy, vz, l);
        _vel_vstl_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvy += 256;
        pvz += 256;
    }
}
