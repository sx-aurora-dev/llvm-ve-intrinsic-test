	.text
	.file	"pvfmad_vvsvl.c"
	.globl	pvfmad_vvsvl
	.p2align	4
	.type	pvfmad_vvsvl,@function
pvfmad_vvsvl:
	brgt.w 1, %s4, .LBB0_3
	or %s5, 0, (0)1
	lea %s6, 256
	lea %s7, 512
	or %s34, 0, %s4
.LBB0_2:
	sra.w.sx %s35, %s34, 1
	cmps.w.sx %s36, %s34, %s7
	or %s37, 0, %s6
	cmov.w.lt %s37, %s35, %s36
	lvl %s37
	vld %v0,8,%s1
	vld %v1,8,%s3
	pvfmad %v0,%v0,%s2,%v1
	vst %v0,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s3, 2048(, %s3)
	adds.w.sx %s5, %s5, %s7
	adds.w.sx %s34, %s34, (55)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfmad_vvsvl, .Lfunc_end0-pvfmad_vvsvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
