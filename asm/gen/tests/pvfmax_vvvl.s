	.text
	.file	"pvfmax_vvvl.c"
	.globl	pvfmax_vvvl
	.p2align	4
	.type	pvfmax_vvvl,@function
pvfmax_vvvl:
.Lpvfmax_vvvl$local:
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
	brgt.w 1, %s3, .LBB0_3
	or %s4, 0, (0)1
	lea %s5, 256
	lea %s6, 512
	or %s7, 0, %s3
.LBB0_2:
	sra.w.sx %s34, %s7, 1
	cmps.w.sx %s35, %s7, %s6
	or %s36, 0, %s5
	cmov.w.lt %s36, %s34, %s35
	lvl %s36
	vld %v0,8,%s1
	vld %v1,8,%s2
	pvfmax %v0,%v0,%v1
	vst %v0,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	lea %s4, 512(, %s4)
	lea %s7, -512(, %s7)
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end0:
	.size	pvfmax_vvvl, .Lfunc_end0-pvfmax_vvvl

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3d99b1caff346d559e3e184ecb5ab1fadefc79ae)"
	.section	".note.GNU-stack","",@progbits
