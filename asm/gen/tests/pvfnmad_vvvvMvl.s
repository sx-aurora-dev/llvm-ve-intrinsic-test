	.text
	.file	"pvfnmad_vvvvMvl.c"
	.globl	pvfnmad_vvvvMvl
	.p2align	4
	.type	pvfnmad_vvvvMvl,@function
pvfnmad_vvvvMvl:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB0_5
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_5:
	or %s34, 1, (0)1
	brlt.w %s6, %s34, .LBB0_3
	or %s34, 0, (0)1
	lea %s35, 256
	lea %s36, 512
	or %s37, 0, %s6
.LBB0_2:
	sra.w.sx %s38, %s37, 1
	cmps.w.sx %s39, %s37, %s36
	or %s40, 0, %s35
	cmov.w.lt %s40, %s38, %s39
	lvl %s40
	vld %v0,8,%s1
	vld %v1,8,%s2
	vld %v2,8,%s3
	vld %v3,8,%s4
	vld %v4,8,%s5
	pvfmk.w.up.gt %vm2,%v3
	pvfmk.w.lo.gt %vm3,%v3
	pvfnmad %v4,%v0,%v1,%v2,%vm2
	vst %v4,8,%s0
	lea %s0, 2048(%s0)
	lea %s1, 2048(%s1)
	lea %s2, 2048(%s2)
	lea %s3, 2048(%s3)
	lea %s4, 2048(%s4)
	lea %s5, 2048(%s5)
	lea %s34, 512(%s34)
	lea %s37, -512(%s37)
	brlt.w %s34, %s6, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	pvfnmad_vvvvMvl, .Lfunc_end0-pvfnmad_vvvvMvl


	.ident	"clang version 10.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 436d233fbc594d58dca6f7267bc5774b68d0c021)"
	.section	".note.GNU-stack","",@progbits
