	.text
	.file	"orm_MMM.c"
	.globl	orm_MMM
	.p2align	4
	.type	orm_MMM,@function
orm_MMM:
.Lorm_MMM$local:
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
	ld %s3, (, %s1)
	ld %s4, (, %s2)
	ld %s5, 8(, %s1)
	ld %s6, 8(, %s2)
	lvm %vm3,0,%s3
	lvm %vm5,0,%s4
	lvm %vm3,1,%s5
	lvm %vm5,1,%s6
	ld %s3, 16(, %s1)
	ld %s4, 16(, %s2)
	ld %s5, 24(, %s1)
	ld %s6, 24(, %s2)
	lvm %vm3,2,%s3
	lvm %vm5,2,%s4
	lvm %vm3,3,%s5
	lvm %vm5,3,%s6
	ld %s3, 32(, %s1)
	ld %s4, 32(, %s2)
	ld %s5, 40(, %s1)
	ld %s6, 40(, %s2)
	lvm %vm2,0,%s3
	lvm %vm4,0,%s4
	lvm %vm2,1,%s5
	lvm %vm4,1,%s6
	ld %s3, 48(, %s1)
	ld %s4, 48(, %s2)
	ld %s1, 56(, %s1)
	ld %s2, 56(, %s2)
	lvm %vm2,2,%s3
	lvm %vm4,2,%s4
	lvm %vm2,3,%s1
	lvm %vm4,3,%s2
	orm %vm2,%vm2,%vm4
	orm %vm3,%vm3,%vm5
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %lr)
.Lfunc_end0:
	.size	orm_MMM, .Lfunc_end0-orm_MMM

	.ident	"clang version 11.0.0 (https://github.com/jam7/llvm-project.git 7cc853a8ecec062c53e2c861476377faf064b8e1)"
	.section	".note.GNU-stack","",@progbits
