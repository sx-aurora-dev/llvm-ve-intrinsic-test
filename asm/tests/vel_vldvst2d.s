	.text
	.file	"vel_vldvst2d.cc"
	.globl	_Z9vel_vld2dPdmPKv
	.p2align	4
	.type	_Z9vel_vld2dPdmPKv,@function
_Z9vel_vld2dPdmPKv:
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
	vld2d %v0,%s1,%s2
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	_Z9vel_vld2dPdmPKv, .Lfunc_end0-_Z9vel_vld2dPdmPKv

	.globl	_Z9vel_vst2dPdmPv
	.p2align	4
	.type	_Z9vel_vst2dPdmPv,@function
_Z9vel_vst2dPdmPv:
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
	vld %v0,8,%s0
	vst2d %v0,%s1,%s2
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end1:
	.size	_Z9vel_vst2dPdmPv, .Lfunc_end1-_Z9vel_vst2dPdmPv

	.globl	_Z10vel_vldu2dPfmPKv
	.p2align	4
	.type	_Z10vel_vldu2dPfmPKv,@function
_Z10vel_vldu2dPfmPKv:
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
	vldu2d %v0,%s1,%s2
	vstu %v0,4,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end2:
	.size	_Z10vel_vldu2dPfmPKv, .Lfunc_end2-_Z10vel_vldu2dPfmPKv

	.globl	_Z10vel_vstu2dPfmPv
	.p2align	4
	.type	_Z10vel_vstu2dPfmPv,@function
_Z10vel_vstu2dPfmPv:
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
	lea %s34, 256
	lvl %s34
	vldu %v0,4,%s0
	vstu2d %v0,%s1,%s2
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end3:
	.size	_Z10vel_vstu2dPfmPv, .Lfunc_end3-_Z10vel_vstu2dPfmPv

	.globl	_Z12vel_vldl2dsxPlmPKv
	.p2align	4
	.type	_Z12vel_vldl2dsxPlmPKv,@function
_Z12vel_vldl2dsxPlmPKv:
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
	lea %s34, 256
	lvl %s34
	vldl2d.sx %v0,%s1,%s2
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end4:
	.size	_Z12vel_vldl2dsxPlmPKv, .Lfunc_end4-_Z12vel_vldl2dsxPlmPKv

	.globl	_Z12vel_vldl2dzxPmmPKv
	.p2align	4
	.type	_Z12vel_vldl2dzxPmmPKv,@function
_Z12vel_vldl2dzxPmmPKv:
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
	lea %s34, 256
	lvl %s34
	vldl2d.zx %v0,%s1,%s2
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end5:
	.size	_Z12vel_vldl2dzxPmmPKv, .Lfunc_end5-_Z12vel_vldl2dzxPmmPKv

	.globl	_Z10vel_vstl2dPimPv
	.p2align	4
	.type	_Z10vel_vstl2dPimPv,@function
_Z10vel_vstl2dPimPv:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB6_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB6_2:
	lea %s34, 256
	lvl %s34
	vldl.sx %v0,4,%s0
	vstl2d %v0,%s1,%s2
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end6:
	.size	_Z10vel_vstl2dPimPv, .Lfunc_end6-_Z10vel_vstl2dPimPv


	.ident	"clang version 9.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/clang.git d467e4f0338396acbc980449a89d05f037ef4a6c) (llvm/llvm.git d49dca7a0a80fc0a3ee8f0716752ae072548b21c)"
	.section	".note.GNU-stack","",@progbits