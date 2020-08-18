	.text
	.file	"approx_vfdivs_vvsl.c"
	.globl	approx_vfdivs_vvsl
	.p2align	4
	.type	approx_vfdivs_vvsl,@function
approx_vfdivs_vvsl:
	and %s3, %s3, (32)0
	brgt.w 1, %s3, .LBB0_3
	lea.sl %s4, 1065353216
	fdiv.s %s4, %s4, %s2
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s3
.LBB0_2:
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vldu %v0, 4, %s1
	vfmul.s %v1, %s4, %v0
	vfnmsb.s %v0, %v0, %s2, %v1
	vfmad.s %v0, %v1, %s4, %v0
	vstu %v0, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	approx_vfdivs_vvsl, .Lfunc_end0-approx_vfdivs_vvsl

	.ident	"clang version 12.0.0 (/usr/uhome/aurora/fccg/t-baba/llvm-dev/llvm-project/clang 3fad6478895c162a7bc491cc4b66c08dd4558a03)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
