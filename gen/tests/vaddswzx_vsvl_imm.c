#include "velintrin.h"
void vaddswzx_vsvl_imm(int* pvx, int* pvz, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vldlsx_vssl(4, pvz, l);
        __vr vx = _vel_vaddswzx_vsvl(3, vz, l);
        _vel_vstl_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvz += 256;
    }
}
