	.text
	.file	"pvrsqrt_vvl.c"
	.globl	pvrsqrt_vvl
	.p2align	4
	.type	pvrsqrt_vvl,@function
pvrsqrt_vvl:
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
	vld %v0,8,%s1
	pvrsqrt %v0,%v0
	vst %v0,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	adds.w.sx %s3, %s3, %s5
	adds.w.sx %s6, %s6, (55)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvrsqrt_vvl, .Lfunc_end0-pvrsqrt_vvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
