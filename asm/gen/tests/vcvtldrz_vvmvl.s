	.text
	.file	"vcvtldrz_vvmvl.c"
	.globl	vcvtldrz_vvmvl
	.p2align	4
	.type	vcvtldrz_vvmvl,@function
vcvtldrz_vvmvl:
	brgt.w 1, %s4, .LBB0_3
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vld %v0,8,%s1
	vldl.zx %v1,4,%s2
	vld %v2,8,%s3
	vfmk.w.gt %vm1,%v1
	vcvt.l.d.rz %v2,%v0,%vm1
	vst %v2,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 1024(, %s2)
	lea %s3, 2048(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vcvtldrz_vvmvl, .Lfunc_end0-vcvtldrz_vvmvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
