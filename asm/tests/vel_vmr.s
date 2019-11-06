	.text
	.file	"vel_vmr.cc"
	.globl	_Z11vel_pcvm_smPm
	.p2align	4
	.type	_Z11vel_pcvm_smPm,@function
_Z11vel_pcvm_smPm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB0_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
	ld %s34, (,%s0)
	ld %s35, 8(,%s0)
	ld %s36, 16(,%s0)
	ld %s37, 24(,%s0)
	lvm %vm1,0,%s34
	lvm %vm1,1,%s35
	lvm %vm1,2,%s36
	lvm %vm1,3,%s37
	lea %s34, 256
	lvl %s34
	pcvm %s0,%vm1
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	_Z11vel_pcvm_smPm, .Lfunc_end0-_Z11vel_pcvm_smPm

	.globl	_Z11vel_lzvm_smPm
	.p2align	4
	.type	_Z11vel_lzvm_smPm,@function
_Z11vel_lzvm_smPm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB1_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_2:
	ld %s34, (,%s0)
	ld %s35, 8(,%s0)
	ld %s36, 16(,%s0)
	ld %s37, 24(,%s0)
	lvm %vm1,0,%s34
	lvm %vm1,1,%s35
	lvm %vm1,2,%s36
	lvm %vm1,3,%s37
	lea %s34, 256
	lvl %s34
	lzvm %s0,%vm1
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end1:
	.size	_Z11vel_lzvm_smPm, .Lfunc_end1-_Z11vel_lzvm_smPm

	.globl	_Z11vel_tovm_smPm
	.p2align	4
	.type	_Z11vel_tovm_smPm,@function
_Z11vel_tovm_smPm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB2_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB2_2:
	ld %s34, (,%s0)
	ld %s35, 8(,%s0)
	ld %s36, 16(,%s0)
	ld %s37, 24(,%s0)
	lvm %vm1,0,%s34
	lvm %vm1,1,%s35
	lvm %vm1,2,%s36
	lvm %vm1,3,%s37
	lea %s34, 256
	lvl %s34
	tovm %s0,%vm1
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end2:
	.size	_Z11vel_tovm_smPm, .Lfunc_end2-_Z11vel_tovm_smPm


	.ident	"clang version 10.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 436d233fbc594d58dca6f7267bc5774b68d0c021)"
	.section	".note.GNU-stack","",@progbits
