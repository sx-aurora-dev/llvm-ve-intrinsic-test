	.text
	.file	"vsubswzx_vsvmvl.c"
	.globl	vsubswzx_vsvmvl
	.p2align	4
	.type	vsubswzx_vsvmvl,@function
vsubswzx_vsvmvl:
	and %s5, %s5, (32)0
	brgt.w 1, %s5, .LBB0_3
	and %s1, %s1, (32)0
	or %s6, 0, (0)1
	lea %s7, 256
	or %s34, 0, %s5
.LBB0_2:
	mins.w.sx %s35, %s34, %s7
	lvl %s35
	vldl.sx %v0,4,%s2
	vldl.zx %v1,4,%s3
	vldl.sx %v2,4,%s4
	vfmk.w.gt %vm1,%v1
	vsubs.w.zx %v2,%s1,%v0,%vm1
	vstl %v2,4,%s0
	lea %s0, 1024(, %s0)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 1024(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (56)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vsubswzx_vsvmvl, .Lfunc_end0-vsubswzx_vsvmvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
