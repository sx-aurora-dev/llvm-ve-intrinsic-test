	.text
	.file	"vbrds_vsl.c"
	.globl	vbrds_vsl
	.p2align	4
	.type	vbrds_vsl,@function
vbrds_vsl:
	and %s2, %s2, (32)0
	brgt.w 1, %s2, .LBB0_3
	or %s3, 0, (0)1
	lea %s4, 256
	or %s5, 0, %s2
.LBB0_2:
	mins.w.sx %s6, %s5, %s4
	lvl %s6
	vbrdu %v0, %s1
	vstu %v0, 4, %s0
	lea %s0, 1024(, %s0)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (56)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrds_vsl, .Lfunc_end0-vbrds_vsl

	.ident	"clang version 12.0.0 (/usr/uhome/aurora/fccg/t-baba/llvm-dev/llvm-project/clang 3fad6478895c162a7bc491cc4b66c08dd4558a03)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
