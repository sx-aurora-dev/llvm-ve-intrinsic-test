#ifdef __clang__
#include <veintrin.h>
void test(double* px)
{
    // simm7: -64:63
    __vr vx;
    vx = _ve_vbrd_vs_i64(0); // OK, imm
    _ve_vst_vss(vx, 8, px);
    vx = _ve_vbrd_vs_i64(63); // OK, imm
    _ve_vst_vss(vx, 8, px);
    vx = _ve_vbrd_vs_i64(64); // OK, register
    _ve_vst_vss(vx, 8, px);
    vx = _ve_vbrd_vs_i64(-64); // OK, imm
    _ve_vst_vss(vx, 8, px);
    vx = _ve_vbrd_vs_i64(-65); // OK, register
    _ve_vst_vss(vx, 8, px);

    // uimm6: 0:63
    __vr vy;
    vx = _ve_vsll_vvs(vy, 0); // OK, imm
    _ve_vst_vss(vx, 8, px);
    vx = _ve_vsll_vvs(vy, 31); // OK, imm
    _ve_vst_vss(vx, 8, px);
    vx = _ve_vsll_vvs(vy, 32); // OK, imm
    _ve_vst_vss(vx, 8, px);
    vx = _ve_vsll_vvs(vy, 63); // OK, imm
    _ve_vst_vss(vx, 8, px);
    vx = _ve_vsll_vvs(vy, 64); // OK, reg
    _ve_vst_vss(vx, 8, px);
    vx = _ve_vsll_vvs(vy, -1); // OK, reg
    _ve_vst_vss(vx, 8, px);

    // illegal, but accepted by current llvm
    __vm vm;
    vm = _ve_lvm_mmss(vm, 16, 0);
    *(int*)px = _ve_svm_sms(vm, 31);
}
#endif
