	.text
	.file	"vdivswsx_vvsmvl.c"
	.globl	vdivswsx_vvsmvl
	.p2align	4
	.type	vdivswsx_vvsmvl,@function
vdivswsx_vvsmvl:
	and %s5, %s5, (32)0
	brgt.w 1, %s5, .LBB0_3
	and %s2, %s2, (32)0
	or %s6, 0, (0)1
	lea %s7, 256
	or %s34, 0, %s5
.LBB0_2:
	mins.w.sx %s35, %s34, %s7
	lvl %s35
	vldl.sx %v0,4,%s1
	vldl.zx %v1,4,%s3
	vldl.sx %v2,4,%s4
	vfmk.w.gt %vm1,%v1
	vdivs.w.sx %v2,%v0,%s2,%vm1
	vstl %v2,4,%s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s3, 1024(, %s3)
	lea %s4, 1024(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (56)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vdivswsx_vvsmvl, .Lfunc_end0-vdivswsx_vvsmvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
