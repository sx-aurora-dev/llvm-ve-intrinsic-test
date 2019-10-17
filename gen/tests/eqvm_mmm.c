#include <velintrin.h>
void eqvm_mmm(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    __vm256 vmx, vmy, vmz;
    vmy = _vel_lvm_mmss(vmy, 0, py[0]);
    vmz = _vel_lvm_mmss(vmz, 0, pz[0]);
    vmy = _vel_lvm_mmss(vmy, 1, py[1]);
    vmz = _vel_lvm_mmss(vmz, 1, pz[1]);
    vmy = _vel_lvm_mmss(vmy, 2, py[2]);
    vmz = _vel_lvm_mmss(vmz, 2, pz[2]);
    vmy = _vel_lvm_mmss(vmy, 3, py[3]);
    vmz = _vel_lvm_mmss(vmz, 3, pz[3]);

    int vl = 256;
    vmx = _vel_eqvm_mmm(vmy, vmz);

    px[0] = _vel_svm_sms(vmx, 0);
    px[1] = _vel_svm_sms(vmx, 1);
    px[2] = _vel_svm_sms(vmx, 2);
    px[3] = _vel_svm_sms(vmx, 3);

}
