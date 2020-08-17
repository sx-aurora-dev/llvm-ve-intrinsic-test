	.text
	.file	"negm_mm.c"
	.globl	negm_mm
	.p2align	4
	.type	negm_mm,@function
negm_mm:
	ld %s2, (, %s1)
	ld %s3, 8(, %s1)
	ld %s4, 16(, %s1)
	ld %s1, 24(, %s1)
	lvm %vm1, 0, %s2
	lvm %vm1, 1, %s3
	lvm %vm1, 2, %s4
	lvm %vm1, 3, %s1
	negm %vm1, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	negm_mm, .Lfunc_end0-negm_mm

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang 649a28b2e28d892a4679ced967ef8d47f2ca6f94)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
