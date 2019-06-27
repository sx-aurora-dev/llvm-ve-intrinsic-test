	.text
	.file	"eqvm_mmml.c"
	.globl	eqvm_mmml
	.p2align	4
	.type	eqvm_mmml,@function
eqvm_mmml:
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
	ld %s34, (,%s1)
	ld %s35, (,%s2)
	ld %s36, 8(,%s1)
	ld %s37, 8(,%s2)
	lvm %vm1,0,%s34
	lvm %vm2,0,%s35
	lvm %vm1,1,%s36
	lvm %vm2,1,%s37
	ld %s34, 16(,%s1)
	ld %s35, 16(,%s2)
	ld %s36, 24(,%s1)
	ld %s37, 24(,%s2)
	lvm %vm1,2,%s34
	lvm %vm2,2,%s35
	lvm %vm1,3,%s36
	lvm %vm2,3,%s37
	lea %s34, 256
	eqvm %vm1,%vm1,%vm2
	svm %s34,%vm1,0
	st %s34, (,%s0)
	svm %s34,%vm1,1
	st %s34, 8(,%s0)
	svm %s34,%vm1,2
	st %s34, 16(,%s0)
	svm %s34,%vm1,3
	st %s34, 24(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	eqvm_mmml, .Lfunc_end0-eqvm_mmml


	.ident	"clang version 9.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/clang.git 4422c49f6a312b83b13345928bc987dfdbf803be) (llvm/llvm.git 0ea33cd75eea79cf423e48dbfb8626e6786986f0)"
	.section	".note.GNU-stack","",@progbits
