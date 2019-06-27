#include "velintrin.h"
void vbrdw_vIl(int* pvx, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vx = _vel_vbrdw_vsl(3, l);
        _vel_vstl_vssl(vx, 4, pvx, l);
        pvx += 256;
    }
}
