#ifdef __clang__
#include <velintrin.h>
void vmrg_vvvml(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned int* pvm, int n)
{
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vz = _vel_vld_vssl(8, pvz, l);

        __vr tmp = _vel_vldlzx_vssl(4, pvm, l);
        __vm vm = _vel_vfmkwgt_mvl(tmp, l);
        __vr vx = _vel_vmrg_vvvml(vy, vz, vm, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvy += 256;
        pvz += 256;
        pvm += 256;
    }
}
#endif
