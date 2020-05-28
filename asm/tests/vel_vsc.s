	.text
	.file	"vel_vsc.cc"
	.globl	_Z10vel_vsc_vvPvS_Pm
	.p2align	4
	.type	_Z10vel_vsc_vvPvS_Pm,@function
_Z10vel_vsc_vvPvS_Pm:
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
	vld %v0,8,%s2
	vld %v1,8,%s0
	vsfa %v0,%v0,3,%s1
	vsc %v1,%v0,0,0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z10vel_vsc_vvPvS_Pm, .Lfunc_end0-_Z10vel_vsc_vvPvS_Pm

	.globl	_Z11vel_vsc_vvmPvS_PmPj
	.p2align	4
	.type	_Z11vel_vsc_vvmPvS_PmPj,@function
_Z11vel_vsc_vvmPvS_PmPj:
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
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vld %v2,8,%s0
	vsfa %v0,%v0,3,%s1
	vfmk.w.gt %vm1,%v1
	vsc %v2,%v0,0,0,%vm1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z11vel_vsc_vvmPvS_PmPj, .Lfunc_end1-_Z11vel_vsc_vvmPvS_PmPj

	.globl	_Z11vel_vscu_vvPvS_Pm
	.p2align	4
	.type	_Z11vel_vscu_vvPvS_Pm,@function
_Z11vel_vscu_vvPvS_Pm:
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
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vldu %v1,4,%s0
	vsfa %v0,%v0,2,%s1
	vscu %v1,%v0,0,0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z11vel_vscu_vvPvS_Pm, .Lfunc_end2-_Z11vel_vscu_vvPvS_Pm

	.globl	_Z12vel_vscu_vvmPvS_PmPj
	.p2align	4
	.type	_Z12vel_vscu_vvmPvS_PmPj,@function
_Z12vel_vscu_vvmPvS_PmPj:
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
	lea %s4, 256
	lvl %s4
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vldu %v2,4,%s0
	vsfa %v0,%v0,2,%s1
	vfmk.w.gt %vm1,%v1
	vscu %v2,%v0,0,0,%vm1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z12vel_vscu_vvmPvS_PmPj, .Lfunc_end3-_Z12vel_vscu_vvmPvS_PmPj

	.globl	_Z11vel_vscl_vvPvS_Pm
	.p2align	4
	.type	_Z11vel_vscl_vvPvS_Pm,@function
_Z11vel_vscl_vvPvS_Pm:
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
	vld %v0,8,%s2
	vldl.zx %v1,4,%s0
	vsfa %v0,%v0,2,%s1
	vscl %v1,%v0,0,0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end4:
	.size	_Z11vel_vscl_vvPvS_Pm, .Lfunc_end4-_Z11vel_vscl_vvPvS_Pm

	.globl	_Z12vel_vscl_vvmPvS_PmPj
	.p2align	4
	.type	_Z12vel_vscl_vvmPvS_PmPj,@function
_Z12vel_vscl_vvmPvS_PmPj:
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
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vldl.zx %v2,4,%s0
	vsfa %v0,%v0,2,%s1
	vfmk.w.gt %vm1,%v1
	vscl %v2,%v0,0,0,%vm1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end5:
	.size	_Z12vel_vscl_vvmPvS_PmPj, .Lfunc_end5-_Z12vel_vscl_vvmPvS_PmPj

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 7cda3c814c99665dbae38aed1250c3d76586a568)"
	.section	".note.GNU-stack","",@progbits
