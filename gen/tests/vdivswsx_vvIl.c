#include "velintrin.h"
void vdivswsx_vvIl(int* pvx, int* pvy, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vldlsx_vssl(4, pvy, l);
        __vr vx = _vel_vdivswsx_vvsl(vy, 3, l);
        _vel_vstl_vssl(vx, 4, pvx, l);
        pvx += 256;
        pvy += 256;
    }
}