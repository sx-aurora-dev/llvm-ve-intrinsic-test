	.text
	.file	"vel_vmr.cc"
	.globl	_Z11vel_pcvm_smPm               # -- Begin function _Z11vel_pcvm_smPm
	.p2align	4
	.type	_Z11vel_pcvm_smPm,@function
_Z11vel_pcvm_smPm:                      # @_Z11vel_pcvm_smPm
# %bb.0:
	ld %s1, (, %s0)
	ld %s2, 8(, %s0)
	ld %s3, 16(, %s0)
	ld %s0, 24(, %s0)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s2
	lvm %vm1, 2, %s3
	lvm %vm1, 3, %s0
	lea %s0, 256
	lvl %s0
	pcvm %s0, %vm1
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z11vel_pcvm_smPm, .Lfunc_end0-_Z11vel_pcvm_smPm
                                        # -- End function
	.globl	_Z11vel_lzvm_smPm               # -- Begin function _Z11vel_lzvm_smPm
	.p2align	4
	.type	_Z11vel_lzvm_smPm,@function
_Z11vel_lzvm_smPm:                      # @_Z11vel_lzvm_smPm
# %bb.0:
	ld %s1, (, %s0)
	ld %s2, 8(, %s0)
	ld %s3, 16(, %s0)
	ld %s0, 24(, %s0)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s2
	lvm %vm1, 2, %s3
	lvm %vm1, 3, %s0
	lea %s0, 256
	lvl %s0
	lzvm %s0, %vm1
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z11vel_lzvm_smPm, .Lfunc_end1-_Z11vel_lzvm_smPm
                                        # -- End function
	.globl	_Z11vel_tovm_smPm               # -- Begin function _Z11vel_tovm_smPm
	.p2align	4
	.type	_Z11vel_tovm_smPm,@function
_Z11vel_tovm_smPm:                      # @_Z11vel_tovm_smPm
# %bb.0:
	ld %s1, (, %s0)
	ld %s2, 8(, %s0)
	ld %s3, 16(, %s0)
	ld %s0, 24(, %s0)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s2
	lvm %vm1, 2, %s3
	lvm %vm1, 3, %s0
	lea %s0, 256
	lvl %s0
	tovm %s0, %vm1
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z11vel_tovm_smPm, .Lfunc_end2-_Z11vel_tovm_smPm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
