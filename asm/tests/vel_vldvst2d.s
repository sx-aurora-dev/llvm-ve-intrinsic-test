	.text
	.file	"vel_vldvst2d.cc"
	.globl	_Z9vel_vld2dPdmPKv
	.p2align	4
	.type	_Z9vel_vld2dPdmPKv,@function
_Z9vel_vld2dPdmPKv:
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
	lea %s3, 256
	lvl %s3
	vld2d %v0,%s1,%s2
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z9vel_vld2dPdmPKv, .Lfunc_end0-_Z9vel_vld2dPdmPKv

	.globl	_Z9vel_vst2dPdmPv
	.p2align	4
	.type	_Z9vel_vst2dPdmPv,@function
_Z9vel_vst2dPdmPv:
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
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s0
	vst2d %v0,%s1,%s2
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z9vel_vst2dPdmPv, .Lfunc_end1-_Z9vel_vst2dPdmPv

	.globl	_Z15vel_vst2d_vssmlPdmPvPj
	.p2align	4
	.type	_Z15vel_vst2d_vssmlPdmPvPj,@function
_Z15vel_vst2d_vssmlPdmPvPj:
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
	vld %v0,8,%s0
	vldl.sx %v1,4,%s3
	vfmk.w.gt %vm1,%v1
	vst2d %v0,%s1,%s2,%vm1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z15vel_vst2d_vssmlPdmPvPj, .Lfunc_end2-_Z15vel_vst2d_vssmlPdmPvPj

	.globl	_Z10vel_vldu2dPfmPKv
	.p2align	4
	.type	_Z10vel_vldu2dPfmPKv,@function
_Z10vel_vldu2dPfmPKv:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB3_2
	ld %s61, 24(, %s14)
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
	vldu2d %v0,%s1,%s2
	vstu %v0,4,%s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z10vel_vldu2dPfmPKv, .Lfunc_end3-_Z10vel_vldu2dPfmPKv

	.globl	_Z10vel_vstu2dPfmPv
	.p2align	4
	.type	_Z10vel_vstu2dPfmPv,@function
_Z10vel_vstu2dPfmPv:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB4_2
	ld %s61, 24(, %s14)
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
	vstu2d %v0,%s1,%s2
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end4:
	.size	_Z10vel_vstu2dPfmPv, .Lfunc_end4-_Z10vel_vstu2dPfmPv

	.globl	_Z16vel_vstu2d_vssmlPfmPvPj
	.p2align	4
	.type	_Z16vel_vstu2d_vssmlPfmPvPj,@function
_Z16vel_vstu2d_vssmlPfmPvPj:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB5_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB5_2:
	lea %s4, 256
	lvl %s4
	vldu %v0,4,%s0
	vldl.sx %v1,4,%s3
	vfmk.w.gt %vm1,%v1
	vstu2d %v0,%s1,%s2,%vm1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end5:
	.size	_Z16vel_vstu2d_vssmlPfmPvPj, .Lfunc_end5-_Z16vel_vstu2d_vssmlPfmPvPj

	.globl	_Z12vel_vldl2dsxPlmPKv
	.p2align	4
	.type	_Z12vel_vldl2dsxPlmPKv,@function
_Z12vel_vldl2dsxPlmPKv:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB6_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB6_2:
	lea %s3, 256
	lvl %s3
	vldl2d.sx %v0,%s1,%s2
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end6:
	.size	_Z12vel_vldl2dsxPlmPKv, .Lfunc_end6-_Z12vel_vldl2dsxPlmPKv

	.globl	_Z12vel_vldl2dzxPmmPKv
	.p2align	4
	.type	_Z12vel_vldl2dzxPmmPKv,@function
_Z12vel_vldl2dzxPmmPKv:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB7_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB7_2:
	lea %s3, 256
	lvl %s3
	vldl2d.zx %v0,%s1,%s2
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end7:
	.size	_Z12vel_vldl2dzxPmmPKv, .Lfunc_end7-_Z12vel_vldl2dzxPmmPKv

	.globl	_Z10vel_vstl2dPimPv
	.p2align	4
	.type	_Z10vel_vstl2dPimPv,@function
_Z10vel_vstl2dPimPv:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB8_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB8_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s0
	vstl2d %v0,%s1,%s2
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end8:
	.size	_Z10vel_vstl2dPimPv, .Lfunc_end8-_Z10vel_vstl2dPimPv

	.globl	_Z16vel_vstl2d_vssmlPimPvPj
	.p2align	4
	.type	_Z16vel_vstl2d_vssmlPimPvPj,@function
_Z16vel_vstl2d_vssmlPimPvPj:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB9_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB9_2:
	lea %s4, 256
	lvl %s4
	vldl.sx %v0,4,%s0
	vldl.sx %v1,4,%s3
	vfmk.w.gt %vm1,%v1
	vstl2d %v0,%s1,%s2,%vm1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end9:
	.size	_Z16vel_vstl2d_vssmlPimPvPj, .Lfunc_end9-_Z16vel_vstl2d_vssmlPimPvPj

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 7cda3c814c99665dbae38aed1250c3d76586a568)"
	.section	".note.GNU-stack","",@progbits
