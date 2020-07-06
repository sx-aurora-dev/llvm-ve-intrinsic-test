	.text
	.file	"vel_vscot.cc"
	.globl	_Z12vel_vscot_vvPKdPdPKmS1_
	.p2align	4
	.type	_Z12vel_vscot_vvPKdPdPKmS1_,@function
_Z12vel_vscot_vvPKdPdPKmS1_:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB0_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
	lea %s4, 256
	lvl %s4
	vld %v0,8,%s0
	vld %v1,8,%s2
	vsfa %v1,%v1,3,%s3
	vsc.ot %v0,%v1,0,0
	svob
	vld %v0,8,%s3
	vst %v0,8,%s1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z12vel_vscot_vvPKdPdPKmS1_, .Lfunc_end0-_Z12vel_vscot_vvPKdPdPKmS1_

	.globl	_Z13vel_vscuot_vvPKfPfPKmS1_
	.p2align	4
	.type	_Z13vel_vscuot_vvPKfPfPKmS1_,@function
_Z13vel_vscuot_vvPKfPfPKmS1_:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB1_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_2:
	lea %s4, 256
	lvl %s4
	vldu %v0,4,%s0
	vld %v1,8,%s2
	vsfa %v1,%v1,2,%s3
	vscu %v0,%v1,0,0
	svob
	vldu %v0,4,%s3
	vstu %v0,4,%s1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z13vel_vscuot_vvPKfPfPKmS1_, .Lfunc_end1-_Z13vel_vscuot_vvPKfPfPKmS1_

	.globl	_Z13vel_vsclot_vvPKiPiPKmS1_
	.p2align	4
	.type	_Z13vel_vsclot_vvPKiPiPKmS1_,@function
_Z13vel_vsclot_vvPKiPiPKmS1_:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB2_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB2_2:
	lea %s4, 256
	lvl %s4
	vldl.sx %v0,4,%s0
	vld %v1,8,%s2
	vsfa %v1,%v1,2,%s3
	vscl.ot %v0,%v1,0,0
	svob
	vldl.sx %v0,4,%s3
	vstl %v0,4,%s1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z13vel_vsclot_vvPKiPiPKmS1_, .Lfunc_end2-_Z13vel_vsclot_vvPKiPiPKmS1_

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git ee2ffcab516a85247ef736ed279b146eea5244d6)"
	.section	".note.GNU-stack","",@progbits
