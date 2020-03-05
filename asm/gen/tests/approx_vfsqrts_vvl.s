	.text
	.file	"approx_vfsqrts_vvl.c"
	.globl	approx_vfsqrts_vvl
	.p2align	4
	.type	approx_vfsqrts_vvl,@function
approx_vfsqrts_vvl:
.Lapprox_vfsqrts_vvl$local:
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
	mins.w.zx %s34, %s7, %s4
	lvl %s34
	vldu %v0,4,%s1
	vcvt.d.s %v0,%v0
	vrsqrt.d.nex %v1,%v0
	vfmul.d %v2,%v0,%v1
	vfnmsb.d %v2,%s5,%v2,%v1
	vfmul.d %v2,%s6,%v2
	vfmad.d %v1,%v1,%v1,%v2
	vfmul.d %v0,%v0,%v1
	vfnmsb.d %v1,%s5,%v0,%v1
	vfmul.d %v1,%s6,%v1
	vfmad.d %v0,%v0,%v0,%v1
	vcvt.s.d %v0,%v0
	vstu %v0,4,%s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s3, 256(, %s3)
	lea %s7, -256(, %s7)
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end0:
	.size	approx_vfsqrts_vvl, .Lfunc_end0-approx_vfsqrts_vvl

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3d99b1caff346d559e3e184ecb5ab1fadefc79ae)"
	.section	".note.GNU-stack","",@progbits
