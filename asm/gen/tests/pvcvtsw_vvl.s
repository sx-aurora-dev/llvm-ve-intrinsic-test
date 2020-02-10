	.text
	.file	"pvcvtsw_vvl.c"
	.globl	pvcvtsw_vvl
	.p2align	4
	.type	pvcvtsw_vvl,@function
pvcvtsw_vvl:
.Lpvcvtsw_vvl$local:
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
	or %s3, 1, (0)1
	brlt.w %s2, %s3, .LBB0_3
	or %s3, 0, (0)1
	lea %s4, 256
	lea %s5, 512
	or %s6, 0, %s2
.LBB0_2:
	sra.w.sx %s7, %s6, 1
	cmps.w.sx %s34, %s6, %s5
	or %s35, 0, %s4
	cmov.w.lt %s35, %s7, %s34
	lvl %s35
	vld %v0,8,%s1
	pvcvt.s.w %v0,%v0
	vst %v0,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s3, 512(, %s3)
	lea %s6, -512(, %s6)
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end0:
	.size	pvcvtsw_vvl, .Lfunc_end0-pvcvtsw_vvl

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 95d24fb5084e064d9620f7baddf8c5f3f4d9bcb4)"
	.section	".note.GNU-stack","",@progbits
