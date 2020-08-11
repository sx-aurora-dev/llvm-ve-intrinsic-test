	.text
	.file	"vbrdw_vsl_imm.c"
	.globl	vbrdw_vsl_imm
	.p2align	4
	.type	vbrdw_vsl_imm,@function
vbrdw_vsl_imm:
	brgt.w 1, %s1, .LBB0_3
	or %s2, 0, (0)1
	lea %s3, 256
	or %s4, 0, %s1
.LBB0_2:
	mins.w.sx %s5, %s4, %s3
	lvl %s5
	vbrdl %v0,3
	vstl %v0,4,%s0
	lea %s0, 1024(, %s0)
	adds.w.sx %s2, %s2, %s3
	adds.w.sx %s4, %s4, (56)1
	brlt.w %s2, %s1, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdw_vsl_imm, .Lfunc_end0-vbrdw_vsl_imm

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
