	.text
	.file	"vsubswzx_vvvl.c"
	.globl	vsubswzx_vvvl
	.p2align	4
	.type	vsubswzx_vvvl,@function
vsubswzx_vvvl:
	brgt.w 1, %s3, .LBB0_3
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vldl.sx %v0,4,%s1
	vldl.sx %v1,4,%s2
	vsubs.w.zx %v0,%v0,%v1
	vstl %v0,4,%s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 1024(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vsubswzx_vvvl, .Lfunc_end0-vsubswzx_vvvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
