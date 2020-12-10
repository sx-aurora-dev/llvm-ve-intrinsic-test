	.text
	.file	"vel_vmv.cc"
	.globl	_Z3vmvPmPKmi                    # -- Begin function _Z3vmvPmPKmi
	.p2align	4
	.type	_Z3vmvPmPKmi,@function
_Z3vmvPmPKmi:                           # @_Z3vmvPmPKmi
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	and %s1, %s2, (32)0
	vmv %v0, %s1, %v0
	vst %v0, 8, %s0
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z3vmvPmPKmi, .Lfunc_end0-_Z3vmvPmPKmi
                                        # -- End function
	.globl	_Z5vmv_iPmPKmi                  # -- Begin function _Z5vmv_iPmPKmi
	.p2align	4
	.type	_Z5vmv_iPmPKmi,@function
_Z5vmv_iPmPKmi:                         # @_Z5vmv_iPmPKmi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vmv %v0, 3, %v0
	vst %v0, 8, %s0
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z5vmv_iPmPKmi, .Lfunc_end1-_Z5vmv_iPmPKmi
                                        # -- End function
	.globl	_Z10vmv_vsvmvlPmPKmiPj          # -- Begin function _Z10vmv_vsvmvlPmPKmiPj
	.p2align	4
	.type	_Z10vmv_vsvmvlPmPKmiPj,@function
_Z10vmv_vsvmvlPmPKmiPj:                 # @_Z10vmv_vsvmvlPmPKmiPj
# %bb.0:
	lea %s4, 256
	lvl %s4
	vld %v0, 8, %s1
	vldl.sx %v1, 4, %s3
	vld %v2, 8, %s0
	and %s1, %s2, (32)0
	vfmk.w.gt %vm1, %v1
	vmv %v2, %s1, %v0, %vm1
	vst %v2, 8, %s0
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z10vmv_vsvmvlPmPKmiPj, .Lfunc_end2-_Z10vmv_vsvmvlPmPKmiPj
                                        # -- End function
	.globl	_Z12vmv_vsvmvl_iPmPKmiPj        # -- Begin function _Z12vmv_vsvmvl_iPmPKmiPj
	.p2align	4
	.type	_Z12vmv_vsvmvl_iPmPKmiPj,@function
_Z12vmv_vsvmvl_iPmPKmiPj:               # @_Z12vmv_vsvmvl_iPmPKmiPj
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vldl.sx %v1, 4, %s3
	vld %v2, 8, %s0
	vfmk.w.gt %vm1, %v1
	vmv %v2, 3, %v0, %vm1
	vst %v2, 8, %s0
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z12vmv_vsvmvl_iPmPKmiPj, .Lfunc_end3-_Z12vmv_vsvmvl_iPmPKmiPj
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 99c58077b7589ed94981de5c768941146d2435b2)"
	.section	".note.GNU-stack","",@progbits
