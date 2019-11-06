	.text
	.file	"eqvm_MMM.c"
	.globl	eqvm_MMM
	.p2align	4
	.type	eqvm_MMM,@function
eqvm_MMM:
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
	lvm %vm3,0,%s34
	lvm %vm5,0,%s35
	lvm %vm3,1,%s36
	lvm %vm5,1,%s37
	ld %s34, 16(,%s1)
	ld %s35, 16(,%s2)
	ld %s36, 24(,%s1)
	ld %s37, 24(,%s2)
	lvm %vm3,2,%s34
	lvm %vm5,2,%s35
	lvm %vm3,3,%s36
	lvm %vm5,3,%s37
	ld %s34, 32(,%s1)
	ld %s35, 32(,%s2)
	ld %s36, 40(,%s1)
	ld %s37, 40(,%s2)
	lvm %vm2,0,%s34
	lvm %vm4,0,%s35
	lvm %vm2,1,%s36
	lvm %vm4,1,%s37
	ld %s34, 48(,%s1)
	ld %s35, 48(,%s2)
	ld %s36, 56(,%s1)
	ld %s37, 56(,%s2)
	lvm %vm2,2,%s34
	lvm %vm4,2,%s35
	lvm %vm2,3,%s36
	lvm %vm4,3,%s37
	eqvm %vm2,%vm2,%vm4
	eqvm %vm3,%vm3,%vm5
	svm %s34,%vm3,0
	st %s34, (,%s0)
	svm %s34,%vm3,1
	st %s34, 8(,%s0)
	svm %s34,%vm3,2
	st %s34, 16(,%s0)
	svm %s34,%vm3,3
	st %s34, 24(,%s0)
	svm %s34,%vm2,0
	st %s34, 32(,%s0)
	svm %s34,%vm2,1
	st %s34, 40(,%s0)
	svm %s34,%vm2,2
	st %s34, 48(,%s0)
	svm %s34,%vm2,3
	st %s34, 56(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	eqvm_MMM, .Lfunc_end0-eqvm_MMM


	.ident	"clang version 10.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 436d233fbc594d58dca6f7267bc5774b68d0c021)"
	.section	".note.GNU-stack","",@progbits
