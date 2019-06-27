#include "velintrin.h"
void vcvtdl_vvl(double* pvx, long int* pvy, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vx = _vel_vcvtdl_vvl(vy, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvy += 256;
    }
}
