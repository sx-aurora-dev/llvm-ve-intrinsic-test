	.text
	.file	"vfmsbs_vvvvl.c"
	.globl	vfmsbs_vvvvl
	.p2align	4
	.type	vfmsbs_vvvvl,@function
vfmsbs_vvvvl:
	brgt.w 1, %s4, .LBB0_3
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vldu %v0,4,%s1
	vldu %v1,4,%s2
	vldu %v2,4,%s3
	vfmsb.s %v0,%v0,%v1,%v2
	vstu %v0,4,%s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfmsbs_vvvvl, .Lfunc_end0-vfmsbs_vvvvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
