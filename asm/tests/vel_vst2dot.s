	.text
	.file	"vel_vst2dot.cc"
	.globl	_Z15vel_vst2dot_vssPKdmPvPd
	.p2align	4
	.type	_Z15vel_vst2dot_vssPKdmPvPd,@function
_Z15vel_vst2dot_vssPKdmPvPd:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB0_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s0
	vst2d.ot %v0,%s1,%s2
	svob
	vld2d %v0,%s1,%s2
	vst %v0,8,%s3
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	_Z15vel_vst2dot_vssPKdmPvPd, .Lfunc_end0-_Z15vel_vst2dot_vssPKdmPvPd

	.globl	_Z16vel_vstu2dot_vssPKfmPvPf
	.p2align	4
	.type	_Z16vel_vstu2dot_vssPKfmPvPf,@function
_Z16vel_vstu2dot_vssPKfmPvPf:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB1_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_2:
	lea %s34, 256
	lvl %s34
	vldu %v0,4,%s0
	vstu2d.ot %v0,%s1,%s2
	svob
	vldu2d %v0,%s1,%s2
	vstu %v0,4,%s3
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end1:
	.size	_Z16vel_vstu2dot_vssPKfmPvPf, .Lfunc_end1-_Z16vel_vstu2dot_vssPKfmPvPf

	.globl	_Z16vel_vstl2dot_vssPKimPvPi
	.p2align	4
	.type	_Z16vel_vstl2dot_vssPKimPvPi,@function
_Z16vel_vstl2dot_vssPKimPvPi:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB2_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB2_2:
	lea %s34, 256
	lvl %s34
	vldl.sx %v0,4,%s0
	vstl2d.ot %v0,%s1,%s2
	svob
	vldl2d.sx %v0,%s1,%s2
	vstl %v0,4,%s3
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end2:
	.size	_Z16vel_vstl2dot_vssPKimPvPi, .Lfunc_end2-_Z16vel_vstl2dot_vssPKimPvPi


	.ident	"clang version 9.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/clang.git d467e4f0338396acbc980449a89d05f037ef4a6c) (llvm/llvm.git d49dca7a0a80fc0a3ee8f0716752ae072548b21c)"
	.section	".note.GNU-stack","",@progbits