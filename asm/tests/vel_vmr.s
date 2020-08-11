	.text
	.file	"vel_vmr.cc"
	.globl	_Z11vel_pcvm_smPm
	.p2align	4
	.type	_Z11vel_pcvm_smPm,@function
_Z11vel_pcvm_smPm:
	ld %s1, (, %s0)
	ld %s2, 8(, %s0)
	ld %s3, 16(, %s0)
	ld %s0, 24(, %s0)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s2
	lvm %vm1,2,%s3
	lvm %vm1,3,%s0
	lea %s0, 256
	lvl %s0
	pcvm %s0,%vm1
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z11vel_pcvm_smPm, .Lfunc_end0-_Z11vel_pcvm_smPm

	.globl	_Z11vel_lzvm_smPm
	.p2align	4
	.type	_Z11vel_lzvm_smPm,@function
_Z11vel_lzvm_smPm:
	ld %s1, (, %s0)
	ld %s2, 8(, %s0)
	ld %s3, 16(, %s0)
	ld %s0, 24(, %s0)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s2
	lvm %vm1,2,%s3
	lvm %vm1,3,%s0
	lea %s0, 256
	lvl %s0
	lzvm %s0,%vm1
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z11vel_lzvm_smPm, .Lfunc_end1-_Z11vel_lzvm_smPm

	.globl	_Z11vel_tovm_smPm
	.p2align	4
	.type	_Z11vel_tovm_smPm,@function
_Z11vel_tovm_smPm:
	ld %s1, (, %s0)
	ld %s2, 8(, %s0)
	ld %s3, 16(, %s0)
	ld %s0, 24(, %s0)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s2
	lvm %vm1,2,%s3
	lvm %vm1,3,%s0
	lea %s0, 256
	lvl %s0
	tovm %s0,%vm1
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z11vel_tovm_smPm, .Lfunc_end2-_Z11vel_tovm_smPm

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
