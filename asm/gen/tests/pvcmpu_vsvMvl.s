	.text
	.file	"pvcmpu_vsvMvl.c"
	.globl	pvcmpu_vsvMvl
	.p2align	4
	.type	pvcmpu_vsvMvl,@function
pvcmpu_vsvMvl:
	brgt.w 1, %s5, .LBB0_3
	or %s6, 0, (0)1
	lea %s7, 256
	lea %s34, 512
	or %s35, 0, %s5
.LBB0_2:
	sra.w.sx %s36, %s35, 1
	cmps.w.sx %s37, %s35, %s34
	or %s38, 0, %s7
	cmov.w.lt %s38, %s36, %s37
	lvl %s38
	vld %v0,8,%s2
	vld %v1,8,%s3
	vld %v2,8,%s4
	pvfmk.w.up.gt %vm2,%v1
	pvfmk.w.lo.gt %vm3,%v1
	pvcmpu %v2,%s1,%v0,%vm2
	vst %v2,8,%s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	lea %s4, 2048(, %s4)
	adds.w.sx %s6, %s6, %s34
	adds.w.sx %s35, %s35, (55)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvcmpu_vsvMvl, .Lfunc_end0-pvcmpu_vsvMvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
