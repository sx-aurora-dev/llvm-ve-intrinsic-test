#include <velintrin.h>
void nndm_MMM(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    __vm512 vmx, vmy, vmz;
    vmy = _vel_lvm_MMss(vmy, 0, py[0]);
    vmz = _vel_lvm_MMss(vmz, 0, pz[0]);
    vmy = _vel_lvm_MMss(vmy, 1, py[1]);
    vmz = _vel_lvm_MMss(vmz, 1, pz[1]);
    vmy = _vel_lvm_MMss(vmy, 2, py[2]);
    vmz = _vel_lvm_MMss(vmz, 2, pz[2]);
    vmy = _vel_lvm_MMss(vmy, 3, py[3]);
    vmz = _vel_lvm_MMss(vmz, 3, pz[3]);
    vmy = _vel_lvm_MMss(vmy, 4, py[4]);
    vmz = _vel_lvm_MMss(vmz, 4, pz[4]);
    vmy = _vel_lvm_MMss(vmy, 5, py[5]);
    vmz = _vel_lvm_MMss(vmz, 5, pz[5]);
    vmy = _vel_lvm_MMss(vmy, 6, py[6]);
    vmz = _vel_lvm_MMss(vmz, 6, pz[6]);
    vmy = _vel_lvm_MMss(vmy, 7, py[7]);
    vmz = _vel_lvm_MMss(vmz, 7, pz[7]);
    int vl = 256;
    vmx = _vel_nndm_MMM(vmy, vmz);
    px[0] = _vel_svm_sMs(vmx, 0);
    px[1] = _vel_svm_sMs(vmx, 1);
    px[2] = _vel_svm_sMs(vmx, 2);
    px[3] = _vel_svm_sMs(vmx, 3);
    px[4] = _vel_svm_sMs(vmx, 4);
    px[5] = _vel_svm_sMs(vmx, 5);
    px[6] = _vel_svm_sMs(vmx, 6);
    px[7] = _vel_svm_sMs(vmx, 7);
}
