#include "velintrin.h"
void vsfa_vvssl_imm(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sz, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vx = _vel_vsfa_vvssl(vz, 3, sz, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvz += 256;
    }
}
