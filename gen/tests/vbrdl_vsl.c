#include "velintrin.h"
void vbrdl_vsl(long int* pvx, long int sy, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vx = _vel_vbrdl_vsl(sy, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
    }
}
