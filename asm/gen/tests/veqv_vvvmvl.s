	.text
	.file	"veqv_vvvmvl.c"
	.globl	veqv_vvvmvl
	.p2align	4
	.type	veqv_vvvmvl,@function
veqv_vvvmvl:
	brgt.w 1, %s5, .LBB0_3
	or %s6, 0, (0)1
	lea %s7, 256
	or %s34, 0, %s5
.LBB0_2:
	mins.w.sx %s35, %s34, %s7
	lvl %s35
	vld %v0,8,%s1
	vld %v1,8,%s2
	vldl.zx %v2,4,%s3
	vld %v3,8,%s4
	vfmk.w.gt %vm1,%v2
	veqv %v3,%v0,%v1,%vm1
	vst %v3,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 2048(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (56)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	veqv_vvvmvl, .Lfunc_end0-veqv_vvvmvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
