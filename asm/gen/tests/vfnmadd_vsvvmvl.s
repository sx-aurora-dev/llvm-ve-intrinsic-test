	.text
	.file	"vfnmadd_vsvvmvl.c"
	.globl	vfnmadd_vsvvmvl
	.p2align	4
	.type	vfnmadd_vsvvmvl,@function
vfnmadd_vsvvmvl:
	brgt.w 1, %s6, .LBB0_3
	or %s7, 0, (0)1
	lea %s34, 256
	or %s35, 0, %s6
.LBB0_2:
	mins.w.sx %s36, %s35, %s34
	lvl %s36
	vld %v0,8,%s2
	vld %v1,8,%s3
	vldl.zx %v2,4,%s4
	vld %v3,8,%s5
	vfmk.w.gt %vm1,%v2
	vfnmad.d %v3,%s1,%v0,%v1,%vm1
	vst %v3,8,%s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	lea %s4, 1024(, %s4)
	lea %s5, 2048(, %s5)
	adds.w.sx %s7, %s7, %s34
	adds.w.sx %s35, %s35, (56)1
	brlt.w %s7, %s6, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfnmadd_vsvvmvl, .Lfunc_end0-vfnmadd_vsvvmvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
