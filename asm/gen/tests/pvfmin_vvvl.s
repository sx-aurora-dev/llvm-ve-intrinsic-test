	.text
	.file	"pvfmin_vvvl.c"
	.globl	pvfmin_vvvl
	.p2align	4
	.type	pvfmin_vvvl,@function
pvfmin_vvvl:
	brgt.w 1, %s3, .LBB0_3
	or %s4, 0, (0)1
	lea %s5, 256
	lea %s6, 512
	or %s7, 0, %s3
.LBB0_2:
	sra.w.sx %s34, %s7, 1
	cmps.w.sx %s35, %s7, %s6
	or %s36, 0, %s5
	cmov.w.lt %s36, %s34, %s35
	lvl %s36
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	pvfmin %v0, %v0, %v1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	adds.w.sx %s4, %s4, %s6
	adds.w.sx %s7, %s7, (55)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfmin_vvvl, .Lfunc_end0-pvfmin_vvvl

	.ident	"clang version 12.0.0 (/usr/uhome/aurora/fccg/t-baba/llvm-dev/llvm-project/clang 3fad6478895c162a7bc491cc4b66c08dd4558a03)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
