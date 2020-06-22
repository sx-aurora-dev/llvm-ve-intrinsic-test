	.text
	.file	"vel_vmr.cc"
	.globl	_Z11vel_pcvm_smPm
	.p2align	4
	.type	_Z11vel_pcvm_smPm,@function
_Z11vel_pcvm_smPm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB0_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
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
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z11vel_pcvm_smPm, .Lfunc_end0-_Z11vel_pcvm_smPm

	.globl	_Z11vel_lzvm_smPm
	.p2align	4
	.type	_Z11vel_lzvm_smPm,@function
_Z11vel_lzvm_smPm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB1_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_2:
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
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z11vel_lzvm_smPm, .Lfunc_end1-_Z11vel_lzvm_smPm

	.globl	_Z11vel_tovm_smPm
	.p2align	4
	.type	_Z11vel_tovm_smPm,@function
_Z11vel_tovm_smPm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB2_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB2_2:
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
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z11vel_tovm_smPm, .Lfunc_end2-_Z11vel_tovm_smPm

	.ident	"clang version 11.0.0 (https://github.com/jam7/llvm-project.git cc8bb2ddfbd980c9a589eba30a8c9e0b921065db)"
	.section	".note.GNU-stack","",@progbits
