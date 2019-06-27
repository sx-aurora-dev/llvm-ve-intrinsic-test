	.text
	.file	"vstot.cc"
	.globl	_Z9vstot_vssPKdPdS1_
	.p2align	4
	.type	_Z9vstot_vssPKdPdS1_,@function
_Z9vstot_vssPKdPdS1_:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
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
	.size	_Z9vstot_vssPKdPdS1_, .Lfunc_end0-_Z9vstot_vssPKdPdS1_

	.globl	_Z10vstuot_vssPKfPfS1_
	.p2align	4
	.type	_Z10vstuot_vssPKfPfS1_,@function
_Z10vstuot_vssPKfPfS1_:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
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
	.size	_Z10vstuot_vssPKfPfS1_, .Lfunc_end1-_Z10vstuot_vssPKfPfS1_

	.globl	_Z10vstlot_vssPKiPiS1_
	.p2align	4
	.type	_Z10vstlot_vssPKiPiS1_,@function
_Z10vstlot_vssPKiPiS1_:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
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
	.size	_Z10vstlot_vssPKiPiS1_, .Lfunc_end2-_Z10vstlot_vssPKiPiS1_


	.ident	"clang version 8.0.0 (https://github.com/llvm-mirror/clang.git 1ee1b45d097dac40bdaa19e565ed609e72567567) (https://github.com/llvm-mirror/llvm.git 75e7e1bdf9de1935d286bc3cb9bd65792f459358)"
	.section	".note.GNU-stack","",@progbits
