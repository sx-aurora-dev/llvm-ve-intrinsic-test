	.text
	.file	"vmulul_vsvmvl.c"
	.globl	vmulul_vsvmvl
	.p2align	4
	.type	vmulul_vsvmvl,@function
vmulul_vsvmvl:
	brgt.w 1, %s5, .LBB0_3
	or %s6, 0, (0)1
	lea %s7, 256
	or %s34, 0, %s5
.LBB0_2:
	mins.w.sx %s35, %s34, %s7
	lvl %s35
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vld %v2,8,%s4
	vfmk.w.gt %vm1,%v1
	vmulu.l %v2,%s1,%v0,%vm1
	vst %v2,8,%s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 2048(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (56)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vmulul_vsvmvl, .Lfunc_end0-vmulul_vsvmvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
