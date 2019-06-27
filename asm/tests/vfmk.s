	.text
	.file	"vfmk.cc"
	.globl	_Z9vfmkl_mcvPmPKl
	.p2align	4
	.type	_Z9vfmkl_mcvPmPKl,@function
_Z9vfmkl_mcvPmPKl:
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
	vld %v0,8,%s1
	vfmk.l.gt %vm1,%v0
	svm %s34,%vm1,0
	st %s34, (,%s0)
	svm %s34,%vm1,1
	st %s34, 8(,%s0)
	svm %s34,%vm1,2
	st %s34, 16(,%s0)
	svm %s34,%vm1,3
	st %s34, 24(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	_Z9vfmkl_mcvPmPKl, .Lfunc_end0-_Z9vfmkl_mcvPmPKl

	.globl	_Z10vfmkl_mcvmPmPKlPKm
	.p2align	4
	.type	_Z10vfmkl_mcvmPmPKlPKm,@function
_Z10vfmkl_mcvmPmPKlPKm:
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
	vld %v0,8,%s1
	ld %s34, (,%s2)
	ld %s35, 8(,%s2)
	ld %s36, 16(,%s2)
	ld %s37, 24(,%s2)
	lvm %vm1,0,%s34
	lvm %vm1,1,%s35
	lvm %vm1,2,%s36
	lvm %vm1,3,%s37
	vfmk.l.gt %vm1,%v0,%vm1
	svm %s34,%vm1,0
	st %s34, (,%s0)
	svm %s34,%vm1,1
	st %s34, 8(,%s0)
	svm %s34,%vm1,2
	st %s34, 16(,%s0)
	svm %s34,%vm1,3
	st %s34, 24(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end1:
	.size	_Z10vfmkl_mcvmPmPKlPKm, .Lfunc_end1-_Z10vfmkl_mcvmPmPKlPKm

	.globl	_Z9vfmkw_mcvPmPKi
	.p2align	4
	.type	_Z9vfmkw_mcvPmPKi,@function
_Z9vfmkw_mcvPmPKi:
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
	vldl.sx %v0,4,%s1
	vfmk.l.gt %vm1,%v0
	svm %s34,%vm1,0
	st %s34, (,%s0)
	svm %s34,%vm1,1
	st %s34, 8(,%s0)
	svm %s34,%vm1,2
	st %s34, 16(,%s0)
	svm %s34,%vm1,3
	st %s34, 24(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end2:
	.size	_Z9vfmkw_mcvPmPKi, .Lfunc_end2-_Z9vfmkw_mcvPmPKi

	.globl	_Z10vfmkw_mcvmPmPKiPKm
	.p2align	4
	.type	_Z10vfmkw_mcvmPmPKiPKm,@function
_Z10vfmkw_mcvmPmPKiPKm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
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
	vldl.sx %v0,4,%s1
	ld %s34, (,%s2)
	ld %s35, 8(,%s2)
	ld %s36, 16(,%s2)
	ld %s37, 24(,%s2)
	lvm %vm1,0,%s34
	lvm %vm1,1,%s35
	lvm %vm1,2,%s36
	lvm %vm1,3,%s37
	vfmk.l.gt %vm1,%v0,%vm1
	svm %s34,%vm1,0
	st %s34, (,%s0)
	svm %s34,%vm1,1
	st %s34, 8(,%s0)
	svm %s34,%vm1,2
	st %s34, 16(,%s0)
	svm %s34,%vm1,3
	st %s34, 24(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end3:
	.size	_Z10vfmkw_mcvmPmPKiPKm, .Lfunc_end3-_Z10vfmkw_mcvmPmPKiPKm

	.globl	_Z9vfmkd_mcvPmPKd
	.p2align	4
	.type	_Z9vfmkd_mcvPmPKd,@function
_Z9vfmkd_mcvPmPKd:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
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
	vld %v0,8,%s1
	vfmk.d.gt %vm1,%v0
	svm %s34,%vm1,0
	st %s34, (,%s0)
	svm %s34,%vm1,1
	st %s34, 8(,%s0)
	svm %s34,%vm1,2
	st %s34, 16(,%s0)
	svm %s34,%vm1,3
	st %s34, 24(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end4:
	.size	_Z9vfmkd_mcvPmPKd, .Lfunc_end4-_Z9vfmkd_mcvPmPKd

	.globl	_Z10vfmkd_mcvmPmPKdPKm
	.p2align	4
	.type	_Z10vfmkd_mcvmPmPKdPKm,@function
_Z10vfmkd_mcvmPmPKdPKm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
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
	vld %v0,8,%s1
	ld %s34, (,%s2)
	ld %s35, 8(,%s2)
	ld %s36, 16(,%s2)
	ld %s37, 24(,%s2)
	lvm %vm1,0,%s34
	lvm %vm1,1,%s35
	lvm %vm1,2,%s36
	lvm %vm1,3,%s37
	vfmk.l.gt %vm1,%v0,%vm1
	svm %s34,%vm1,0
	st %s34, (,%s0)
	svm %s34,%vm1,1
	st %s34, 8(,%s0)
	svm %s34,%vm1,2
	st %s34, 16(,%s0)
	svm %s34,%vm1,3
	st %s34, 24(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end5:
	.size	_Z10vfmkd_mcvmPmPKdPKm, .Lfunc_end5-_Z10vfmkd_mcvmPmPKdPKm

	.globl	_Z9vfmks_mcvPmPKf
	.p2align	4
	.type	_Z9vfmks_mcvPmPKf,@function
_Z9vfmks_mcvPmPKf:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
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
	vldu %v0,4,%s1
	vfmk.d.gt %vm1,%v0
	svm %s34,%vm1,0
	st %s34, (,%s0)
	svm %s34,%vm1,1
	st %s34, 8(,%s0)
	svm %s34,%vm1,2
	st %s34, 16(,%s0)
	svm %s34,%vm1,3
	st %s34, 24(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end6:
	.size	_Z9vfmks_mcvPmPKf, .Lfunc_end6-_Z9vfmks_mcvPmPKf

	.globl	_Z10vfmks_mcvmPmPKfPKm
	.p2align	4
	.type	_Z10vfmks_mcvmPmPKfPKm,@function
_Z10vfmks_mcvmPmPKfPKm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB7_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB7_2:
	lea %s34, 256
	lvl %s34
	vldu %v0,4,%s1
	ld %s34, (,%s2)
	ld %s35, 8(,%s2)
	ld %s36, 16(,%s2)
	ld %s37, 24(,%s2)
	lvm %vm1,0,%s34
	lvm %vm1,1,%s35
	lvm %vm1,2,%s36
	lvm %vm1,3,%s37
	vfmk.l.gt %vm1,%v0,%vm1
	svm %s34,%vm1,0
	st %s34, (,%s0)
	svm %s34,%vm1,1
	st %s34, 8(,%s0)
	svm %s34,%vm1,2
	st %s34, 16(,%s0)
	svm %s34,%vm1,3
	st %s34, 24(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end7:
	.size	_Z10vfmks_mcvmPmPKfPKm, .Lfunc_end7-_Z10vfmks_mcvmPmPKfPKm

	.globl	_Z10pvfmkw_McvPmPKi
	.p2align	4
	.type	_Z10pvfmkw_McvPmPKi,@function
_Z10pvfmkw_McvPmPKi:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB8_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB8_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s1
	pvfmk.w.up.gt %vm2,%v0
	vfmk.w.gt %vm3,%v0
	svm %s34,%vm3,0
	st %s34, (,%s0)
	svm %s34,%vm3,1
	st %s34, 8(,%s0)
	svm %s34,%vm3,2
	st %s34, 16(,%s0)
	svm %s34,%vm3,3
	st %s34, 24(,%s0)
	svm %s34,%vm2,0
	st %s34, 32(,%s0)
	svm %s34,%vm2,1
	st %s34, 40(,%s0)
	svm %s34,%vm2,2
	st %s34, 48(,%s0)
	svm %s34,%vm2,3
	st %s34, 56(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end8:
	.size	_Z10pvfmkw_McvPmPKi, .Lfunc_end8-_Z10pvfmkw_McvPmPKi

	.globl	_Z11pvfmkw_McvMPmPKiPKm
	.p2align	4
	.type	_Z11pvfmkw_McvMPmPKiPKm,@function
_Z11pvfmkw_McvMPmPKiPKm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB9_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB9_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s1
	ld %s34, (,%s2)
	ld %s35, 8(,%s2)
	ld %s36, 16(,%s2)
	ld %s37, 24(,%s2)
	lvm %vm3,0,%s34
	lvm %vm3,1,%s35
	lvm %vm3,2,%s36
	lvm %vm3,3,%s37
	ld %s34, 32(,%s2)
	ld %s35, 40(,%s2)
	ld %s36, 48(,%s2)
	ld %s37, 56(,%s2)
	lvm %vm2,0,%s34
	lvm %vm2,1,%s35
	lvm %vm2,2,%s36
	lvm %vm2,3,%s37
	pvfmk.w.up.gt %vm2,%v0,%vm2
	vfmk.w.gt %vm3,%v0,%vm3
	svm %s34,%vm3,0
	st %s34, (,%s0)
	svm %s34,%vm3,1
	st %s34, 8(,%s0)
	svm %s34,%vm3,2
	st %s34, 16(,%s0)
	svm %s34,%vm3,3
	st %s34, 24(,%s0)
	svm %s34,%vm2,0
	st %s34, 32(,%s0)
	svm %s34,%vm2,1
	st %s34, 40(,%s0)
	svm %s34,%vm2,2
	st %s34, 48(,%s0)
	svm %s34,%vm2,3
	st %s34, 56(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end9:
	.size	_Z11pvfmkw_McvMPmPKiPKm, .Lfunc_end9-_Z11pvfmkw_McvMPmPKiPKm

	.globl	_Z10pvfmks_McvPmPKf
	.p2align	4
	.type	_Z10pvfmks_McvPmPKf,@function
_Z10pvfmks_McvPmPKf:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB10_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB10_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s1
	vfmk.s.gt %vm2,%v0
	pvfmk.s.lo.gt %vm3,%v0
	svm %s34,%vm3,0
	st %s34, (,%s0)
	svm %s34,%vm3,1
	st %s34, 8(,%s0)
	svm %s34,%vm3,2
	st %s34, 16(,%s0)
	svm %s34,%vm3,3
	st %s34, 24(,%s0)
	svm %s34,%vm2,0
	st %s34, 32(,%s0)
	svm %s34,%vm2,1
	st %s34, 40(,%s0)
	svm %s34,%vm2,2
	st %s34, 48(,%s0)
	svm %s34,%vm2,3
	st %s34, 56(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end10:
	.size	_Z10pvfmks_McvPmPKf, .Lfunc_end10-_Z10pvfmks_McvPmPKf

	.globl	_Z11pvfmks_McvMPmPKfPKm
	.p2align	4
	.type	_Z11pvfmks_McvMPmPKfPKm,@function
_Z11pvfmks_McvMPmPKfPKm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB11_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB11_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s1
	ld %s34, (,%s2)
	ld %s35, 8(,%s2)
	ld %s36, 16(,%s2)
	ld %s37, 24(,%s2)
	lvm %vm3,0,%s34
	lvm %vm3,1,%s35
	lvm %vm3,2,%s36
	lvm %vm3,3,%s37
	ld %s34, 32(,%s2)
	ld %s35, 40(,%s2)
	ld %s36, 48(,%s2)
	ld %s37, 56(,%s2)
	lvm %vm2,0,%s34
	lvm %vm2,1,%s35
	lvm %vm2,2,%s36
	lvm %vm2,3,%s37
	vfmk.s.gt %vm2,%v0,%vm2
	pvfmk.s.lo.gt %vm3,%v0,%vm3
	svm %s34,%vm3,0
	st %s34, (,%s0)
	svm %s34,%vm3,1
	st %s34, 8(,%s0)
	svm %s34,%vm3,2
	st %s34, 16(,%s0)
	svm %s34,%vm3,3
	st %s34, 24(,%s0)
	svm %s34,%vm2,0
	st %s34, 32(,%s0)
	svm %s34,%vm2,1
	st %s34, 40(,%s0)
	svm %s34,%vm2,2
	st %s34, 48(,%s0)
	svm %s34,%vm2,3
	st %s34, 56(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end11:
	.size	_Z11pvfmks_McvMPmPKfPKm, .Lfunc_end11-_Z11pvfmks_McvMPmPKfPKm


	.ident	"clang version 8.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/clang.git 8e16801da204ac44c4df8028a193662a1587c87d) (llvm/llvm.git 1cbf64640109a61d9693807320042b182d0abbfb)"
	.section	".note.GNU-stack","",@progbits
