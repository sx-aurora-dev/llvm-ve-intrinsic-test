	.text
	.file	"vfdivs_vsvl.c"
	.globl	vfdivs_vsvl
	.p2align	4
	.type	vfdivs_vsvl,@function
vfdivs_vsvl:
	and %s3, %s3, (32)0
	brgt.w 1, %s3, .LBB0_3
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vldu %v0,4,%s2
	vfdiv.s %v0,%s1,%v0
	vstu %v0,4,%s0
	lea %s0, 1024(, %s0)
	lea %s2, 1024(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfdivs_vsvl, .Lfunc_end0-vfdivs_vsvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
