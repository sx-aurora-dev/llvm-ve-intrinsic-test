	.text
	.file	"vdivul_vvsl_imm.c"
	.globl	vdivul_vvsl_imm
	.p2align	4
	.type	vdivul_vvsl_imm,@function
vdivul_vvsl_imm:
	brgt.w 1, %s2, .LBB0_3
	or %s3, 0, (0)1
	lea %s4, 256
	or %s5, 0, %s2
.LBB0_2:
	mins.w.sx %s6, %s5, %s4
	lvl %s6
	vld %v0,8,%s1
	vdivu.l %v0,%v0,3
	vst %v0,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (56)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vdivul_vvsl_imm, .Lfunc_end0-vdivul_vvsl_imm

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
