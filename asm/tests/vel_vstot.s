	.text
	.file	"vel_vstot.cc"
	.globl	_Z13vel_vstot_vssPKdPdS1_
	.p2align	4
	.type	_Z13vel_vstot_vssPKdPdS1_,@function
_Z13vel_vstot_vssPKdPdS1_:
.L_Z13vel_vstot_vssPKdPdS1_$local:
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
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s0
	vst.ot %v0,8,%s2
	svob
	vld %v0,8,%s2
	vst %v0,8,%s1
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	_Z13vel_vstot_vssPKdPdS1_, .Lfunc_end0-_Z13vel_vstot_vssPKdPdS1_

	.globl	_Z14vel_vstuot_vssPKfPfS1_
	.p2align	4
	.type	_Z14vel_vstuot_vssPKfPfS1_,@function
_Z14vel_vstuot_vssPKfPfS1_:
.L_Z14vel_vstuot_vssPKfPfS1_$local:
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
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s0
	vstu.ot %v0,4,%s2
	svob
	vldu %v0,4,%s2
	vstu %v0,4,%s1
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end1:
	.size	_Z14vel_vstuot_vssPKfPfS1_, .Lfunc_end1-_Z14vel_vstuot_vssPKfPfS1_

	.globl	_Z14vel_vstlot_vssPKiPiS1_
	.p2align	4
	.type	_Z14vel_vstlot_vssPKiPiS1_,@function
_Z14vel_vstlot_vssPKiPiS1_:
.L_Z14vel_vstlot_vssPKiPiS1_$local:
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
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s0
	vstl.ot %v0,4,%s2
	svob
	vldl.sx %v0,4,%s2
	vstl %v0,4,%s1
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end2:
	.size	_Z14vel_vstlot_vssPKiPiS1_, .Lfunc_end2-_Z14vel_vstlot_vssPKiPiS1_

	.globl	_Z15vel_vstncot_vssPKdPdS1_
	.p2align	4
	.type	_Z15vel_vstncot_vssPKdPdS1_,@function
_Z15vel_vstncot_vssPKdPdS1_:
.L_Z15vel_vstncot_vssPKdPdS1_$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB3_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB3_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s0
	vst.nc.ot %v0,8,%s2
	svob
	vld %v0,8,%s2
	vst %v0,8,%s1
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end3:
	.size	_Z15vel_vstncot_vssPKdPdS1_, .Lfunc_end3-_Z15vel_vstncot_vssPKdPdS1_

	.globl	_Z16vel_vstuncot_vssPKfPfS1_
	.p2align	4
	.type	_Z16vel_vstuncot_vssPKfPfS1_,@function
_Z16vel_vstuncot_vssPKfPfS1_:
.L_Z16vel_vstuncot_vssPKfPfS1_$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB4_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB4_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s0
	vstu.nc.ot %v0,4,%s2
	svob
	vldu %v0,4,%s2
	vstu %v0,4,%s1
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end4:
	.size	_Z16vel_vstuncot_vssPKfPfS1_, .Lfunc_end4-_Z16vel_vstuncot_vssPKfPfS1_

	.globl	_Z16vel_vstlncot_vssPKiPiS1_
	.p2align	4
	.type	_Z16vel_vstlncot_vssPKiPiS1_,@function
_Z16vel_vstlncot_vssPKiPiS1_:
.L_Z16vel_vstlncot_vssPKiPiS1_$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB5_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB5_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s0
	vstl.nc.ot %v0,4,%s2
	svob
	vldl.sx %v0,4,%s2
	vstl %v0,4,%s1
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end5:
	.size	_Z16vel_vstlncot_vssPKiPiS1_, .Lfunc_end5-_Z16vel_vstlncot_vssPKiPiS1_

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 7a685b51bd790cc7255f609e2d5b66386cf4c768)"
	.section	".note.GNU-stack","",@progbits
