	.text
	.file	"approx_vfsqrtd_vvl.c"
	.globl	approx_vfsqrtd_vvl
	.p2align	4
	.type	approx_vfsqrtd_vvl,@function
approx_vfsqrtd_vvl:
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
	brgt.w 1, %s2, .LBB0_3
	or %s3, 0, (0)1
	lea %s4, 256
	lea.sl %s5, 1072693248
	lea.sl %s6, 1071644672
	or %s7, 0, %s2
.LBB0_2:
	mins.w.sx %s34, %s7, %s4
	lvl %s34
	vld %v0, 8, %s1
	vrsqrt.d.nex %v1, %v0
	vfmul.d %v2, %v0, %v1
	vfnmsb.d %v2, %s5, %v2, %v1
	vfmul.d %v2, %s6, %v2
	vfmad.d %v1, %v1, %v1, %v2
	vfmul.d %v0, %v0, %v1
	vfnmsb.d %v1, %s5, %v0, %v1
	vfmul.d %v1, %s6, %v1
	vfmad.d %v0, %v0, %v0, %v1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	approx_vfsqrtd_vvl, .Lfunc_end0-approx_vfsqrtd_vvl

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git ea1e45464a3c0492368cbabae9242628b03e399d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
