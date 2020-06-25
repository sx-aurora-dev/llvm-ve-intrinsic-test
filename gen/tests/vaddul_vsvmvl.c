#include "velintrin.h"
void vaddul_vsvmvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* ppt, int n) {
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);
        __vr vm0 = _vel_vldlzx_vssl(4, pvm, l);
        __vm256 vm = _vel_vfmkwgt_mvl(vm0, l);
        __vr pt = _vel_vld_vssl(8, ppt, l);
        __vr vx = _vel_vld_vssl(8, pvx, l);
        vx = _vel_vaddul_vsvmvl(sy, vz, vm, pt, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvz += 256;
        pvm += 256;
        ppt += 256;
    }
}
