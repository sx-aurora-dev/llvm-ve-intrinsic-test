	.text
	.file	"pvbrd_vsl.c"
	.globl	pvbrd_vsl
	.p2align	4
	.type	pvbrd_vsl,@function
pvbrd_vsl:
	brgt.w 1, %s2, .LBB0_3
	or %s3, 0, (0)1
	lea %s4, 256
	lea %s5, 512
	or %s6, 0, %s2
.LBB0_2:
	sra.w.sx %s7, %s6, 1
	cmps.w.sx %s34, %s6, %s5
	or %s35, 0, %s4
	cmov.w.lt %s35, %s7, %s34
	lvl %s35
	pvbrd %v0, %s1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	adds.w.sx %s3, %s3, %s5
	adds.w.sx %s6, %s6, (55)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvbrd_vsl, .Lfunc_end0-pvbrd_vsl

	.ident	"clang version 12.0.0 (/usr/uhome/aurora/fccg/t-baba/llvm-dev/llvm-project/clang 3fad6478895c162a7bc491cc4b66c08dd4558a03)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
