#ifdef __clang__
#include <velintrin.h>
void vmrgw_vsvMl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, unsigned int* pvm, int n)
{
    for (int i = 0; i < n; i += 512) {
        int l = n - i < 512 ? (n - i) / 2UL : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);

        __vr tmp = _vel_vld_vssl(8, pvm, l);
        __vm512 vm = _vel_pvfmkwgt_Mvl(tmp, l);
        __vr vx = _vel_vmrgw_vsvMl(sy, vz, vm, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 512;
        
        pvz += 512;
        pvm += 512;
    }
}
#endif
