	.text
	.file	"vdivswsx_vsvl.c"
	.globl	vdivswsx_vsvl
	.p2align	4
	.type	vdivswsx_vsvl,@function
vdivswsx_vsvl:
	and %s3, %s3, (32)0
	brgt.w 1, %s3, .LBB0_3
	and %s1, %s1, (32)0
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vldl.sx %v0, 4, %s2
	vdivs.w.sx %v0, %s1, %v0
	vstl %v0, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s2, 1024(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vdivswsx_vsvl, .Lfunc_end0-vdivswsx_vsvl

	.ident	"clang version 12.0.0 (/usr/uhome/aurora/fccg/t-baba/llvm-dev/llvm-project/clang 3fad6478895c162a7bc491cc4b66c08dd4558a03)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
