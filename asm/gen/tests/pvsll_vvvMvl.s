	.text
	.file	"pvsll_vvvMvl.c"
	.globl	pvsll_vvvMvl
	.p2align	4
	.type	pvsll_vvvMvl,@function
pvsll_vvvMvl:
.Lpvsll_vvvMvl$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l %s11, %s8, .LBB0_5
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_5:
	or %s6, 1, (0)1
	brlt.w %s5, %s6, .LBB0_3
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
	vld %v0,8,%s1
	vld %v1,8,%s2
	vld %v2,8,%s3
	vld %v3,8,%s4
	pvfmk.w.up.gt %vm2,%v2
	pvfmk.w.lo.gt %vm3,%v2
	pvsll %v3,%v0,%v1,%vm2
	vst %v3,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	lea %s4, 2048(, %s4)
	lea %s6, 512(, %s6)
	lea %s35, -512(, %s35)
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end0:
	.size	pvsll_vvvMvl, .Lfunc_end0-pvsll_vvvMvl

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 2b268b318a1e2d4a7d775af703f1004a9c94cb6d)"
	.section	".note.GNU-stack","",@progbits
