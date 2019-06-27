	.text
	.file	"vmr.cc"
	.globl	_Z7pcvm_smPm
	.p2align	4
	.type	_Z7pcvm_smPm,@function
_Z7pcvm_smPm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
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
	lea %s34, 256
	lvl %s34
	ld %s34, (,%s0)
	ld %s35, 8(,%s0)
	ld %s36, 16(,%s0)
	ld %s37, 24(,%s0)
	lvm %vm1,0,%s34
	lvm %vm1,1,%s35
	lvm %vm1,2,%s36
	lvm %vm1,3,%s37
	pcvm %s0,%vm1
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	_Z7pcvm_smPm, .Lfunc_end0-_Z7pcvm_smPm

	.globl	_Z7lzvm_smPm
	.p2align	4
	.type	_Z7lzvm_smPm,@function
_Z7lzvm_smPm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
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
	lea %s34, 256
	lvl %s34
	ld %s34, (,%s0)
	ld %s35, 8(,%s0)
	ld %s36, 16(,%s0)
	ld %s37, 24(,%s0)
	lvm %vm1,0,%s34
	lvm %vm1,1,%s35
	lvm %vm1,2,%s36
	lvm %vm1,3,%s37
	lzvm %s0,%vm1
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end1:
	.size	_Z7lzvm_smPm, .Lfunc_end1-_Z7lzvm_smPm

	.globl	_Z7tovm_smPm
	.p2align	4
	.type	_Z7tovm_smPm,@function
_Z7tovm_smPm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
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
	lea %s34, 256
	lvl %s34
	ld %s34, (,%s0)
	ld %s35, 8(,%s0)
	ld %s36, 16(,%s0)
	ld %s37, 24(,%s0)
	lvm %vm1,0,%s34
	lvm %vm1,1,%s35
	lvm %vm1,2,%s36
	lvm %vm1,3,%s37
	tovm %s0,%vm1
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end2:
	.size	_Z7tovm_smPm, .Lfunc_end2-_Z7tovm_smPm


	.ident	"clang version 8.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/clang.git 8e16801da204ac44c4df8028a193662a1587c87d) (llvm/llvm.git 1cbf64640109a61d9693807320042b182d0abbfb)"
	.section	".note.GNU-stack","",@progbits
