	.text
	.file	"vcvtwssxrz_vvmvl.c"
	.globl	vcvtwssxrz_vvmvl
	.p2align	4
	.type	vcvtwssxrz_vvmvl,@function
vcvtwssxrz_vvmvl:
	brgt.w 1, %s4, .LBB0_3
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vldu %v0,4,%s1
	vldl.zx %v1,4,%s2
	vldl.sx %v2,4,%s3
	vfmk.w.gt %vm1,%v1
	vcvt.w.s.sx.rz %v2,%v0,%vm1
	vstl %v2,4,%s0
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
	.size	vcvtwssxrz_vvmvl, .Lfunc_end0-vcvtwssxrz_vvmvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
