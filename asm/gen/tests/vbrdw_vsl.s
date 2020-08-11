	.text
	.file	"vbrdw_vsl.c"
	.globl	vbrdw_vsl
	.p2align	4
	.type	vbrdw_vsl,@function
vbrdw_vsl:
	and %s2, %s2, (32)0
	brgt.w 1, %s2, .LBB0_3
	and %s1, %s1, (32)0
	or %s3, 0, (0)1
	lea %s4, 256
	or %s5, 0, %s2
.LBB0_2:
	mins.w.sx %s6, %s5, %s4
	lvl %s6
	vbrdl %v0,%s1
	vstl %v0,4,%s0
	lea %s0, 1024(, %s0)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (56)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdw_vsl, .Lfunc_end0-vbrdw_vsl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
