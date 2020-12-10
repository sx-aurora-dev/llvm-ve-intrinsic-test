	.text
	.file	"vel_vsc.cc"
	.globl	_Z10vel_vsc_vvPvS_Pm            # -- Begin function _Z10vel_vsc_vvPvS_Pm
	.p2align	4
	.type	_Z10vel_vsc_vvPvS_Pm,@function
_Z10vel_vsc_vvPvS_Pm:                   # @_Z10vel_vsc_vvPvS_Pm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s2
	vld %v1, 8, %s0
	vsfa %v0, %v0, 3, %s1
	vsc %v1, %v0, 0, 0
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z10vel_vsc_vvPvS_Pm, .Lfunc_end0-_Z10vel_vsc_vvPvS_Pm
                                        # -- End function
	.globl	_Z11vel_vsc_vvmPvS_PmPj         # -- Begin function _Z11vel_vsc_vvmPvS_PmPj
	.p2align	4
	.type	_Z11vel_vsc_vvmPvS_PmPj,@function
_Z11vel_vsc_vvmPvS_PmPj:                # @_Z11vel_vsc_vvmPvS_PmPj
# %bb.0:
	lea %s4, 256
	lvl %s4
	vld %v0, 8, %s2
	vldl.zx %v1, 4, %s3
	vld %v2, 8, %s0
	vsfa %v0, %v0, 3, %s1
	vfmk.w.gt %vm1, %v1
	vsc %v2, %v0, 0, 0, %vm1
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z11vel_vsc_vvmPvS_PmPj, .Lfunc_end1-_Z11vel_vsc_vvmPvS_PmPj
                                        # -- End function
	.globl	_Z11vel_vscu_vvPvS_Pm           # -- Begin function _Z11vel_vscu_vvPvS_Pm
	.p2align	4
	.type	_Z11vel_vscu_vvPvS_Pm,@function
_Z11vel_vscu_vvPvS_Pm:                  # @_Z11vel_vscu_vvPvS_Pm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s2
	vldu %v1, 4, %s0
	vsfa %v0, %v0, 2, %s1
	vscu %v1, %v0, 0, 0
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z11vel_vscu_vvPvS_Pm, .Lfunc_end2-_Z11vel_vscu_vvPvS_Pm
                                        # -- End function
	.globl	_Z12vel_vscu_vvmPvS_PmPj        # -- Begin function _Z12vel_vscu_vvmPvS_PmPj
	.p2align	4
	.type	_Z12vel_vscu_vvmPvS_PmPj,@function
_Z12vel_vscu_vvmPvS_PmPj:               # @_Z12vel_vscu_vvmPvS_PmPj
# %bb.0:
	lea %s4, 256
	lvl %s4
	vld %v0, 8, %s2
	vldl.zx %v1, 4, %s3
	vldu %v2, 4, %s0
	vsfa %v0, %v0, 2, %s1
	vfmk.w.gt %vm1, %v1
	vscu %v2, %v0, 0, 0, %vm1
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z12vel_vscu_vvmPvS_PmPj, .Lfunc_end3-_Z12vel_vscu_vvmPvS_PmPj
                                        # -- End function
	.globl	_Z11vel_vscl_vvPvS_Pm           # -- Begin function _Z11vel_vscl_vvPvS_Pm
	.p2align	4
	.type	_Z11vel_vscl_vvPvS_Pm,@function
_Z11vel_vscl_vvPvS_Pm:                  # @_Z11vel_vscl_vvPvS_Pm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s2
	vldl.zx %v1, 4, %s0
	vsfa %v0, %v0, 2, %s1
	vscl %v1, %v0, 0, 0
	b.l.t (, %s10)
.Lfunc_end4:
	.size	_Z11vel_vscl_vvPvS_Pm, .Lfunc_end4-_Z11vel_vscl_vvPvS_Pm
                                        # -- End function
	.globl	_Z12vel_vscl_vvmPvS_PmPj        # -- Begin function _Z12vel_vscl_vvmPvS_PmPj
	.p2align	4
	.type	_Z12vel_vscl_vvmPvS_PmPj,@function
_Z12vel_vscl_vvmPvS_PmPj:               # @_Z12vel_vscl_vvmPvS_PmPj
# %bb.0:
	lea %s4, 256
	lvl %s4
	vld %v0, 8, %s2
	vldl.zx %v1, 4, %s3
	vldl.zx %v2, 4, %s0
	vsfa %v0, %v0, 2, %s1
	vfmk.w.gt %vm1, %v1
	vscl %v2, %v0, 0, 0, %vm1
	b.l.t (, %s10)
.Lfunc_end5:
	.size	_Z12vel_vscl_vvmPvS_PmPj, .Lfunc_end5-_Z12vel_vscl_vvmPvS_PmPj
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 99c58077b7589ed94981de5c768941146d2435b2)"
	.section	".note.GNU-stack","",@progbits
