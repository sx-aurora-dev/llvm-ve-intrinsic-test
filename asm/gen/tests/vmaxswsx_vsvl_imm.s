	.text
	.file	"vmaxswsx_vsvl_imm.c"
	.globl	vmaxswsx_vsvl_imm
	.p2align	4
	.type	vmaxswsx_vsvl_imm,@function
vmaxswsx_vsvl_imm:
	brgt.w 1, %s2, .LBB0_3
	or %s3, 0, (0)1
	lea %s4, 256
	or %s5, 0, %s2
.LBB0_2:
	mins.w.sx %s6, %s5, %s4
	lvl %s6
	vldl.sx %v0,4,%s1
	vmaxs.w.sx %v0,3,%v0
	vstl %v0,4,%s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (56)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vmaxswsx_vsvl_imm, .Lfunc_end0-vmaxswsx_vsvl_imm

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
