	.text
	.file	"nndm_mmm.c"
	.globl	nndm_mmm
	.p2align	4
	.type	nndm_mmm,@function
nndm_mmm:
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
	lvm %vm1,0,%s3
	lvm %vm2,0,%s4
	lvm %vm1,1,%s5
	lvm %vm2,1,%s6
	ld %s3, 16(, %s1)
	ld %s4, 16(, %s2)
	ld %s1, 24(, %s1)
	ld %s2, 24(, %s2)
	lvm %vm1,2,%s3
	lvm %vm2,2,%s4
	lvm %vm1,3,%s1
	lvm %vm2,3,%s2
	nndm %vm1,%vm1,%vm2
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	nndm_mmm, .Lfunc_end0-nndm_mmm

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 7cda3c814c99665dbae38aed1250c3d76586a568)"
	.section	".note.GNU-stack","",@progbits
