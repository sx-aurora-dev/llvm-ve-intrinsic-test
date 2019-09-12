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

void vmrg_vsvml(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned int* pvm, int n)
{
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);

        __vr tmp = _vel_vldlzx_vssl(4, pvm, l);
        __vm vm = _vel_vfmkwgt_mvl(tmp, l);
        __vr vx = _vel_vmrg_vsvml(sy, vz, vm, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvz += 256;
        pvm += 256;
    }
}

void vmrg_vIvml(unsigned long int* pvx, unsigned long int _sy, unsigned long int* pvz, unsigned int* pvm, int n)
{
    for (int i = 0; i < n; i += 256) {
        int l = n - i < 256 ? n - i : 256;
        __vr vz = _vel_vld_vssl(8, pvz, l);

        __vr tmp = _vel_vldlzx_vssl(4, pvm, l);
        __vm vm = _vel_vfmkwgt_mvl(tmp, l);
        __vr vx = _vel_vmrg_vsvml(3, vz, vm, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 256;
        pvz += 256;
        pvm += 256;
    }
}

void vmrgw_vvvMl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, int n)
{
    for (int i = 0; i < n; i += 512) {
        int l = n - i < 512 ? (n - i) / 2UL : 256;
        __vr vy = _vel_vld_vssl(8, pvy, l);
        __vr vz = _vel_vld_vssl(8, pvz, l);

        __vr tmp = _vel_vld_vssl(8, pvm, l);
        __vm512 vm = _vel_pvfmkwgt_Mvl(tmp, l);
        __vr vx = _vel_vmrgw_vvvMl(vy, vz, vm, l);
        _vel_vst_vssl(vx, 8, pvx, l);
        pvx += 512;
        pvy += 512;
        pvz += 512;
        pvm += 512;
    }
}

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
#endif // __clang__
