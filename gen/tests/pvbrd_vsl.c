#include "velintrin.h"
void pvbrd_vsl(unsigned int* pvx, unsigned long int sy, int n) {
    for (int i = 0; i < n; i += 512) {
        int l = n - i < 512 ? (n - i) / 2UL : 256;
        __vr vx = _vel_pvbrd_vsl(sy, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 512;
    }
}
