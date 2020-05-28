	.text
	.file	"vel_vfmk.cc"
	.globl	_Z15vel_vfmklgt_mvlPmPKl
	.p2align	4
	.type	_Z15vel_vfmklgt_mvlPmPKl,@function
_Z15vel_vfmklgt_mvlPmPKl:
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
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.gt %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z15vel_vfmklgt_mvlPmPKl, .Lfunc_end0-_Z15vel_vfmklgt_mvlPmPKl

	.globl	_Z15vel_vfmkllt_mvlPmPKl
	.p2align	4
	.type	_Z15vel_vfmkllt_mvlPmPKl,@function
_Z15vel_vfmkllt_mvlPmPKl:
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
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.lt %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z15vel_vfmkllt_mvlPmPKl, .Lfunc_end1-_Z15vel_vfmkllt_mvlPmPKl

	.globl	_Z15vel_vfmklne_mvlPmPKl
	.p2align	4
	.type	_Z15vel_vfmklne_mvlPmPKl,@function
_Z15vel_vfmklne_mvlPmPKl:
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
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.ne %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z15vel_vfmklne_mvlPmPKl, .Lfunc_end2-_Z15vel_vfmklne_mvlPmPKl

	.globl	_Z15vel_vfmkleq_mvlPmPKl
	.p2align	4
	.type	_Z15vel_vfmkleq_mvlPmPKl,@function
_Z15vel_vfmkleq_mvlPmPKl:
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
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.eq %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z15vel_vfmkleq_mvlPmPKl, .Lfunc_end3-_Z15vel_vfmkleq_mvlPmPKl

	.globl	_Z15vel_vfmklge_mvlPmPKl
	.p2align	4
	.type	_Z15vel_vfmklge_mvlPmPKl,@function
_Z15vel_vfmklge_mvlPmPKl:
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
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.ge %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end4:
	.size	_Z15vel_vfmklge_mvlPmPKl, .Lfunc_end4-_Z15vel_vfmklge_mvlPmPKl

	.globl	_Z15vel_vfmklle_mvlPmPKl
	.p2align	4
	.type	_Z15vel_vfmklle_mvlPmPKl,@function
_Z15vel_vfmklle_mvlPmPKl:
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
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.le %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end5:
	.size	_Z15vel_vfmklle_mvlPmPKl, .Lfunc_end5-_Z15vel_vfmklle_mvlPmPKl

	.globl	_Z16vel_vfmklnum_mvlPmPKl
	.p2align	4
	.type	_Z16vel_vfmklnum_mvlPmPKl,@function
_Z16vel_vfmklnum_mvlPmPKl:
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
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.num %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end6:
	.size	_Z16vel_vfmklnum_mvlPmPKl, .Lfunc_end6-_Z16vel_vfmklnum_mvlPmPKl

	.globl	_Z16vel_vfmklnan_mvlPmPKl
	.p2align	4
	.type	_Z16vel_vfmklnan_mvlPmPKl,@function
_Z16vel_vfmklnan_mvlPmPKl:
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
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.nan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end7:
	.size	_Z16vel_vfmklnan_mvlPmPKl, .Lfunc_end7-_Z16vel_vfmklnan_mvlPmPKl

	.globl	_Z18vel_vfmklgtnan_mvlPmPKl
	.p2align	4
	.type	_Z18vel_vfmklgtnan_mvlPmPKl,@function
_Z18vel_vfmklgtnan_mvlPmPKl:
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
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.gtnan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end8:
	.size	_Z18vel_vfmklgtnan_mvlPmPKl, .Lfunc_end8-_Z18vel_vfmklgtnan_mvlPmPKl

	.globl	_Z18vel_vfmklltnan_mvlPmPKl
	.p2align	4
	.type	_Z18vel_vfmklltnan_mvlPmPKl,@function
_Z18vel_vfmklltnan_mvlPmPKl:
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
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.ltnan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end9:
	.size	_Z18vel_vfmklltnan_mvlPmPKl, .Lfunc_end9-_Z18vel_vfmklltnan_mvlPmPKl

	.globl	_Z18vel_vfmklnenan_mvlPmPKl
	.p2align	4
	.type	_Z18vel_vfmklnenan_mvlPmPKl,@function
_Z18vel_vfmklnenan_mvlPmPKl:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB10_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB10_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.nenan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end10:
	.size	_Z18vel_vfmklnenan_mvlPmPKl, .Lfunc_end10-_Z18vel_vfmklnenan_mvlPmPKl

	.globl	_Z18vel_vfmkleqnan_mvlPmPKl
	.p2align	4
	.type	_Z18vel_vfmkleqnan_mvlPmPKl,@function
_Z18vel_vfmkleqnan_mvlPmPKl:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB11_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB11_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.eqnan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end11:
	.size	_Z18vel_vfmkleqnan_mvlPmPKl, .Lfunc_end11-_Z18vel_vfmkleqnan_mvlPmPKl

	.globl	_Z18vel_vfmklgenan_mvlPmPKl
	.p2align	4
	.type	_Z18vel_vfmklgenan_mvlPmPKl,@function
_Z18vel_vfmklgenan_mvlPmPKl:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB12_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB12_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.genan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end12:
	.size	_Z18vel_vfmklgenan_mvlPmPKl, .Lfunc_end12-_Z18vel_vfmklgenan_mvlPmPKl

	.globl	_Z18vel_vfmkllenan_mvlPmPKl
	.p2align	4
	.type	_Z18vel_vfmkllenan_mvlPmPKl,@function
_Z18vel_vfmkllenan_mvlPmPKl:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB13_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB13_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.l.lenan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end13:
	.size	_Z18vel_vfmkllenan_mvlPmPKl, .Lfunc_end13-_Z18vel_vfmkllenan_mvlPmPKl

	.globl	_Z15vel_vfmkwgt_mvlPmPKi
	.p2align	4
	.type	_Z15vel_vfmkwgt_mvlPmPKi,@function
_Z15vel_vfmkwgt_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB14_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB14_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.gt %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end14:
	.size	_Z15vel_vfmkwgt_mvlPmPKi, .Lfunc_end14-_Z15vel_vfmkwgt_mvlPmPKi

	.globl	_Z15vel_vfmkwlt_mvlPmPKi
	.p2align	4
	.type	_Z15vel_vfmkwlt_mvlPmPKi,@function
_Z15vel_vfmkwlt_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB15_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB15_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.lt %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end15:
	.size	_Z15vel_vfmkwlt_mvlPmPKi, .Lfunc_end15-_Z15vel_vfmkwlt_mvlPmPKi

	.globl	_Z15vel_vfmkwne_mvlPmPKi
	.p2align	4
	.type	_Z15vel_vfmkwne_mvlPmPKi,@function
_Z15vel_vfmkwne_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB16_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB16_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.ne %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end16:
	.size	_Z15vel_vfmkwne_mvlPmPKi, .Lfunc_end16-_Z15vel_vfmkwne_mvlPmPKi

	.globl	_Z15vel_vfmkweq_mvlPmPKi
	.p2align	4
	.type	_Z15vel_vfmkweq_mvlPmPKi,@function
_Z15vel_vfmkweq_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB17_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB17_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.eq %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end17:
	.size	_Z15vel_vfmkweq_mvlPmPKi, .Lfunc_end17-_Z15vel_vfmkweq_mvlPmPKi

	.globl	_Z15vel_vfmkwge_mvlPmPKi
	.p2align	4
	.type	_Z15vel_vfmkwge_mvlPmPKi,@function
_Z15vel_vfmkwge_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB18_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB18_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.ge %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end18:
	.size	_Z15vel_vfmkwge_mvlPmPKi, .Lfunc_end18-_Z15vel_vfmkwge_mvlPmPKi

	.globl	_Z15vel_vfmkwle_mvlPmPKi
	.p2align	4
	.type	_Z15vel_vfmkwle_mvlPmPKi,@function
_Z15vel_vfmkwle_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB19_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB19_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.le %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end19:
	.size	_Z15vel_vfmkwle_mvlPmPKi, .Lfunc_end19-_Z15vel_vfmkwle_mvlPmPKi

	.globl	_Z16vel_vfmkwnum_mvlPmPKi
	.p2align	4
	.type	_Z16vel_vfmkwnum_mvlPmPKi,@function
_Z16vel_vfmkwnum_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB20_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB20_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.num %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end20:
	.size	_Z16vel_vfmkwnum_mvlPmPKi, .Lfunc_end20-_Z16vel_vfmkwnum_mvlPmPKi

	.globl	_Z16vel_vfmkwnan_mvlPmPKi
	.p2align	4
	.type	_Z16vel_vfmkwnan_mvlPmPKi,@function
_Z16vel_vfmkwnan_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB21_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB21_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.nan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end21:
	.size	_Z16vel_vfmkwnan_mvlPmPKi, .Lfunc_end21-_Z16vel_vfmkwnan_mvlPmPKi

	.globl	_Z18vel_vfmkwgtnan_mvlPmPKi
	.p2align	4
	.type	_Z18vel_vfmkwgtnan_mvlPmPKi,@function
_Z18vel_vfmkwgtnan_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB22_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB22_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.gtnan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end22:
	.size	_Z18vel_vfmkwgtnan_mvlPmPKi, .Lfunc_end22-_Z18vel_vfmkwgtnan_mvlPmPKi

	.globl	_Z18vel_vfmkwltnan_mvlPmPKi
	.p2align	4
	.type	_Z18vel_vfmkwltnan_mvlPmPKi,@function
_Z18vel_vfmkwltnan_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB23_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB23_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.ltnan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end23:
	.size	_Z18vel_vfmkwltnan_mvlPmPKi, .Lfunc_end23-_Z18vel_vfmkwltnan_mvlPmPKi

	.globl	_Z18vel_vfmkwnenan_mvlPmPKi
	.p2align	4
	.type	_Z18vel_vfmkwnenan_mvlPmPKi,@function
_Z18vel_vfmkwnenan_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB24_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB24_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.nenan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end24:
	.size	_Z18vel_vfmkwnenan_mvlPmPKi, .Lfunc_end24-_Z18vel_vfmkwnenan_mvlPmPKi

	.globl	_Z18vel_vfmkweqnan_mvlPmPKi
	.p2align	4
	.type	_Z18vel_vfmkweqnan_mvlPmPKi,@function
_Z18vel_vfmkweqnan_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB25_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB25_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.eqnan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end25:
	.size	_Z18vel_vfmkweqnan_mvlPmPKi, .Lfunc_end25-_Z18vel_vfmkweqnan_mvlPmPKi

	.globl	_Z18vel_vfmkwgenan_mvlPmPKi
	.p2align	4
	.type	_Z18vel_vfmkwgenan_mvlPmPKi,@function
_Z18vel_vfmkwgenan_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB26_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB26_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.genan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end26:
	.size	_Z18vel_vfmkwgenan_mvlPmPKi, .Lfunc_end26-_Z18vel_vfmkwgenan_mvlPmPKi

	.globl	_Z18vel_vfmkwlenan_mvlPmPKi
	.p2align	4
	.type	_Z18vel_vfmkwlenan_mvlPmPKi,@function
_Z18vel_vfmkwlenan_mvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB27_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB27_2:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0,4,%s1
	vfmk.l.lenan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end27:
	.size	_Z18vel_vfmkwlenan_mvlPmPKi, .Lfunc_end27-_Z18vel_vfmkwlenan_mvlPmPKi

	.globl	_Z15vel_vfmkdgt_mvlPmPKd
	.p2align	4
	.type	_Z15vel_vfmkdgt_mvlPmPKd,@function
_Z15vel_vfmkdgt_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB28_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB28_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.gt %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end28:
	.size	_Z15vel_vfmkdgt_mvlPmPKd, .Lfunc_end28-_Z15vel_vfmkdgt_mvlPmPKd

	.globl	_Z15vel_vfmkdlt_mvlPmPKd
	.p2align	4
	.type	_Z15vel_vfmkdlt_mvlPmPKd,@function
_Z15vel_vfmkdlt_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB29_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB29_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.lt %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end29:
	.size	_Z15vel_vfmkdlt_mvlPmPKd, .Lfunc_end29-_Z15vel_vfmkdlt_mvlPmPKd

	.globl	_Z15vel_vfmkdne_mvlPmPKd
	.p2align	4
	.type	_Z15vel_vfmkdne_mvlPmPKd,@function
_Z15vel_vfmkdne_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB30_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB30_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.ne %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end30:
	.size	_Z15vel_vfmkdne_mvlPmPKd, .Lfunc_end30-_Z15vel_vfmkdne_mvlPmPKd

	.globl	_Z15vel_vfmkdeq_mvlPmPKd
	.p2align	4
	.type	_Z15vel_vfmkdeq_mvlPmPKd,@function
_Z15vel_vfmkdeq_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB31_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB31_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.eq %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end31:
	.size	_Z15vel_vfmkdeq_mvlPmPKd, .Lfunc_end31-_Z15vel_vfmkdeq_mvlPmPKd

	.globl	_Z15vel_vfmkdge_mvlPmPKd
	.p2align	4
	.type	_Z15vel_vfmkdge_mvlPmPKd,@function
_Z15vel_vfmkdge_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB32_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB32_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.ge %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end32:
	.size	_Z15vel_vfmkdge_mvlPmPKd, .Lfunc_end32-_Z15vel_vfmkdge_mvlPmPKd

	.globl	_Z15vel_vfmkdle_mvlPmPKd
	.p2align	4
	.type	_Z15vel_vfmkdle_mvlPmPKd,@function
_Z15vel_vfmkdle_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB33_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB33_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.le %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end33:
	.size	_Z15vel_vfmkdle_mvlPmPKd, .Lfunc_end33-_Z15vel_vfmkdle_mvlPmPKd

	.globl	_Z16vel_vfmkdnum_mvlPmPKd
	.p2align	4
	.type	_Z16vel_vfmkdnum_mvlPmPKd,@function
_Z16vel_vfmkdnum_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB34_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB34_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.num %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end34:
	.size	_Z16vel_vfmkdnum_mvlPmPKd, .Lfunc_end34-_Z16vel_vfmkdnum_mvlPmPKd

	.globl	_Z16vel_vfmkdnan_mvlPmPKd
	.p2align	4
	.type	_Z16vel_vfmkdnan_mvlPmPKd,@function
_Z16vel_vfmkdnan_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB35_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB35_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.nan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end35:
	.size	_Z16vel_vfmkdnan_mvlPmPKd, .Lfunc_end35-_Z16vel_vfmkdnan_mvlPmPKd

	.globl	_Z18vel_vfmkdgtnan_mvlPmPKd
	.p2align	4
	.type	_Z18vel_vfmkdgtnan_mvlPmPKd,@function
_Z18vel_vfmkdgtnan_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB36_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB36_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.gtnan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end36:
	.size	_Z18vel_vfmkdgtnan_mvlPmPKd, .Lfunc_end36-_Z18vel_vfmkdgtnan_mvlPmPKd

	.globl	_Z18vel_vfmkdltnan_mvlPmPKd
	.p2align	4
	.type	_Z18vel_vfmkdltnan_mvlPmPKd,@function
_Z18vel_vfmkdltnan_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB37_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB37_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.ltnan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end37:
	.size	_Z18vel_vfmkdltnan_mvlPmPKd, .Lfunc_end37-_Z18vel_vfmkdltnan_mvlPmPKd

	.globl	_Z18vel_vfmkdnenan_mvlPmPKd
	.p2align	4
	.type	_Z18vel_vfmkdnenan_mvlPmPKd,@function
_Z18vel_vfmkdnenan_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB38_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB38_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.nenan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end38:
	.size	_Z18vel_vfmkdnenan_mvlPmPKd, .Lfunc_end38-_Z18vel_vfmkdnenan_mvlPmPKd

	.globl	_Z18vel_vfmkdeqnan_mvlPmPKd
	.p2align	4
	.type	_Z18vel_vfmkdeqnan_mvlPmPKd,@function
_Z18vel_vfmkdeqnan_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB39_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB39_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.eqnan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end39:
	.size	_Z18vel_vfmkdeqnan_mvlPmPKd, .Lfunc_end39-_Z18vel_vfmkdeqnan_mvlPmPKd

	.globl	_Z18vel_vfmkdgenan_mvlPmPKd
	.p2align	4
	.type	_Z18vel_vfmkdgenan_mvlPmPKd,@function
_Z18vel_vfmkdgenan_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB40_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB40_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.genan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end40:
	.size	_Z18vel_vfmkdgenan_mvlPmPKd, .Lfunc_end40-_Z18vel_vfmkdgenan_mvlPmPKd

	.globl	_Z18vel_vfmkdlenan_mvlPmPKd
	.p2align	4
	.type	_Z18vel_vfmkdlenan_mvlPmPKd,@function
_Z18vel_vfmkdlenan_mvlPmPKd:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB41_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB41_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vfmk.d.lenan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end41:
	.size	_Z18vel_vfmkdlenan_mvlPmPKd, .Lfunc_end41-_Z18vel_vfmkdlenan_mvlPmPKd

	.globl	_Z15vel_vfmksgt_mvlPmPKf
	.p2align	4
	.type	_Z15vel_vfmksgt_mvlPmPKf,@function
_Z15vel_vfmksgt_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB42_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB42_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.gt %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end42:
	.size	_Z15vel_vfmksgt_mvlPmPKf, .Lfunc_end42-_Z15vel_vfmksgt_mvlPmPKf

	.globl	_Z15vel_vfmkslt_mvlPmPKf
	.p2align	4
	.type	_Z15vel_vfmkslt_mvlPmPKf,@function
_Z15vel_vfmkslt_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB43_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB43_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.lt %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end43:
	.size	_Z15vel_vfmkslt_mvlPmPKf, .Lfunc_end43-_Z15vel_vfmkslt_mvlPmPKf

	.globl	_Z15vel_vfmksne_mvlPmPKf
	.p2align	4
	.type	_Z15vel_vfmksne_mvlPmPKf,@function
_Z15vel_vfmksne_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB44_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB44_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.ne %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end44:
	.size	_Z15vel_vfmksne_mvlPmPKf, .Lfunc_end44-_Z15vel_vfmksne_mvlPmPKf

	.globl	_Z15vel_vfmkseq_mvlPmPKf
	.p2align	4
	.type	_Z15vel_vfmkseq_mvlPmPKf,@function
_Z15vel_vfmkseq_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB45_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB45_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.eq %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end45:
	.size	_Z15vel_vfmkseq_mvlPmPKf, .Lfunc_end45-_Z15vel_vfmkseq_mvlPmPKf

	.globl	_Z15vel_vfmksge_mvlPmPKf
	.p2align	4
	.type	_Z15vel_vfmksge_mvlPmPKf,@function
_Z15vel_vfmksge_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB46_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB46_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.ge %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end46:
	.size	_Z15vel_vfmksge_mvlPmPKf, .Lfunc_end46-_Z15vel_vfmksge_mvlPmPKf

	.globl	_Z15vel_vfmksle_mvlPmPKf
	.p2align	4
	.type	_Z15vel_vfmksle_mvlPmPKf,@function
_Z15vel_vfmksle_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB47_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB47_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.le %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end47:
	.size	_Z15vel_vfmksle_mvlPmPKf, .Lfunc_end47-_Z15vel_vfmksle_mvlPmPKf

	.globl	_Z16vel_vfmksnum_mvlPmPKf
	.p2align	4
	.type	_Z16vel_vfmksnum_mvlPmPKf,@function
_Z16vel_vfmksnum_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB48_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB48_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.num %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end48:
	.size	_Z16vel_vfmksnum_mvlPmPKf, .Lfunc_end48-_Z16vel_vfmksnum_mvlPmPKf

	.globl	_Z16vel_vfmksnan_mvlPmPKf
	.p2align	4
	.type	_Z16vel_vfmksnan_mvlPmPKf,@function
_Z16vel_vfmksnan_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB49_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB49_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.nan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end49:
	.size	_Z16vel_vfmksnan_mvlPmPKf, .Lfunc_end49-_Z16vel_vfmksnan_mvlPmPKf

	.globl	_Z18vel_vfmksgtnan_mvlPmPKf
	.p2align	4
	.type	_Z18vel_vfmksgtnan_mvlPmPKf,@function
_Z18vel_vfmksgtnan_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB50_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB50_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.gtnan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end50:
	.size	_Z18vel_vfmksgtnan_mvlPmPKf, .Lfunc_end50-_Z18vel_vfmksgtnan_mvlPmPKf

	.globl	_Z18vel_vfmksltnan_mvlPmPKf
	.p2align	4
	.type	_Z18vel_vfmksltnan_mvlPmPKf,@function
_Z18vel_vfmksltnan_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB51_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB51_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.ltnan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end51:
	.size	_Z18vel_vfmksltnan_mvlPmPKf, .Lfunc_end51-_Z18vel_vfmksltnan_mvlPmPKf

	.globl	_Z18vel_vfmksnenan_mvlPmPKf
	.p2align	4
	.type	_Z18vel_vfmksnenan_mvlPmPKf,@function
_Z18vel_vfmksnenan_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB52_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB52_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.nenan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end52:
	.size	_Z18vel_vfmksnenan_mvlPmPKf, .Lfunc_end52-_Z18vel_vfmksnenan_mvlPmPKf

	.globl	_Z18vel_vfmkseqnan_mvlPmPKf
	.p2align	4
	.type	_Z18vel_vfmkseqnan_mvlPmPKf,@function
_Z18vel_vfmkseqnan_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB53_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB53_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.eqnan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end53:
	.size	_Z18vel_vfmkseqnan_mvlPmPKf, .Lfunc_end53-_Z18vel_vfmkseqnan_mvlPmPKf

	.globl	_Z18vel_vfmksgenan_mvlPmPKf
	.p2align	4
	.type	_Z18vel_vfmksgenan_mvlPmPKf,@function
_Z18vel_vfmksgenan_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB54_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB54_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.genan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end54:
	.size	_Z18vel_vfmksgenan_mvlPmPKf, .Lfunc_end54-_Z18vel_vfmksgenan_mvlPmPKf

	.globl	_Z18vel_vfmkslenan_mvlPmPKf
	.p2align	4
	.type	_Z18vel_vfmkslenan_mvlPmPKf,@function
_Z18vel_vfmkslenan_mvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB55_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB55_2:
	lea %s2, 256
	lvl %s2
	vldu %v0,4,%s1
	vfmk.l.lenan %vm1,%v0
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end55:
	.size	_Z18vel_vfmkslenan_mvlPmPKf, .Lfunc_end55-_Z18vel_vfmkslenan_mvlPmPKf

	.globl	_Z16vel_vfmklgt_mvmlPmPKlPKm
	.p2align	4
	.type	_Z16vel_vfmklgt_mvmlPmPKlPKm,@function
_Z16vel_vfmklgt_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB56_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB56_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.gt %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end56:
	.size	_Z16vel_vfmklgt_mvmlPmPKlPKm, .Lfunc_end56-_Z16vel_vfmklgt_mvmlPmPKlPKm

	.globl	_Z16vel_vfmkllt_mvmlPmPKlPKm
	.p2align	4
	.type	_Z16vel_vfmkllt_mvmlPmPKlPKm,@function
_Z16vel_vfmkllt_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB57_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB57_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.lt %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end57:
	.size	_Z16vel_vfmkllt_mvmlPmPKlPKm, .Lfunc_end57-_Z16vel_vfmkllt_mvmlPmPKlPKm

	.globl	_Z16vel_vfmklne_mvmlPmPKlPKm
	.p2align	4
	.type	_Z16vel_vfmklne_mvmlPmPKlPKm,@function
_Z16vel_vfmklne_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB58_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB58_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.ne %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end58:
	.size	_Z16vel_vfmklne_mvmlPmPKlPKm, .Lfunc_end58-_Z16vel_vfmklne_mvmlPmPKlPKm

	.globl	_Z16vel_vfmkleq_mvmlPmPKlPKm
	.p2align	4
	.type	_Z16vel_vfmkleq_mvmlPmPKlPKm,@function
_Z16vel_vfmkleq_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB59_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB59_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.eq %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end59:
	.size	_Z16vel_vfmkleq_mvmlPmPKlPKm, .Lfunc_end59-_Z16vel_vfmkleq_mvmlPmPKlPKm

	.globl	_Z16vel_vfmklge_mvmlPmPKlPKm
	.p2align	4
	.type	_Z16vel_vfmklge_mvmlPmPKlPKm,@function
_Z16vel_vfmklge_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB60_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB60_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.ge %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end60:
	.size	_Z16vel_vfmklge_mvmlPmPKlPKm, .Lfunc_end60-_Z16vel_vfmklge_mvmlPmPKlPKm

	.globl	_Z16vel_vfmklle_mvmlPmPKlPKm
	.p2align	4
	.type	_Z16vel_vfmklle_mvmlPmPKlPKm,@function
_Z16vel_vfmklle_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB61_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB61_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.le %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end61:
	.size	_Z16vel_vfmklle_mvmlPmPKlPKm, .Lfunc_end61-_Z16vel_vfmklle_mvmlPmPKlPKm

	.globl	_Z17vel_vfmklnum_mvmlPmPKlPKm
	.p2align	4
	.type	_Z17vel_vfmklnum_mvmlPmPKlPKm,@function
_Z17vel_vfmklnum_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB62_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB62_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.num %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end62:
	.size	_Z17vel_vfmklnum_mvmlPmPKlPKm, .Lfunc_end62-_Z17vel_vfmklnum_mvmlPmPKlPKm

	.globl	_Z17vel_vfmklnan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z17vel_vfmklnan_mvmlPmPKlPKm,@function
_Z17vel_vfmklnan_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB63_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB63_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.nan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end63:
	.size	_Z17vel_vfmklnan_mvmlPmPKlPKm, .Lfunc_end63-_Z17vel_vfmklnan_mvmlPmPKlPKm

	.globl	_Z19vel_vfmklgtnan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z19vel_vfmklgtnan_mvmlPmPKlPKm,@function
_Z19vel_vfmklgtnan_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB64_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB64_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.gtnan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end64:
	.size	_Z19vel_vfmklgtnan_mvmlPmPKlPKm, .Lfunc_end64-_Z19vel_vfmklgtnan_mvmlPmPKlPKm

	.globl	_Z19vel_vfmklltnan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z19vel_vfmklltnan_mvmlPmPKlPKm,@function
_Z19vel_vfmklltnan_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB65_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB65_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.ltnan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end65:
	.size	_Z19vel_vfmklltnan_mvmlPmPKlPKm, .Lfunc_end65-_Z19vel_vfmklltnan_mvmlPmPKlPKm

	.globl	_Z19vel_vfmklnenan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z19vel_vfmklnenan_mvmlPmPKlPKm,@function
_Z19vel_vfmklnenan_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB66_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB66_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.nenan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end66:
	.size	_Z19vel_vfmklnenan_mvmlPmPKlPKm, .Lfunc_end66-_Z19vel_vfmklnenan_mvmlPmPKlPKm

	.globl	_Z19vel_vfmkleqnan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z19vel_vfmkleqnan_mvmlPmPKlPKm,@function
_Z19vel_vfmkleqnan_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB67_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB67_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.eqnan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end67:
	.size	_Z19vel_vfmkleqnan_mvmlPmPKlPKm, .Lfunc_end67-_Z19vel_vfmkleqnan_mvmlPmPKlPKm

	.globl	_Z19vel_vfmklgenan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z19vel_vfmklgenan_mvmlPmPKlPKm,@function
_Z19vel_vfmklgenan_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB68_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB68_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.genan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end68:
	.size	_Z19vel_vfmklgenan_mvmlPmPKlPKm, .Lfunc_end68-_Z19vel_vfmklgenan_mvmlPmPKlPKm

	.globl	_Z19vel_vfmkllenan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z19vel_vfmkllenan_mvmlPmPKlPKm,@function
_Z19vel_vfmkllenan_mvmlPmPKlPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB69_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB69_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.lenan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end69:
	.size	_Z19vel_vfmkllenan_mvmlPmPKlPKm, .Lfunc_end69-_Z19vel_vfmkllenan_mvmlPmPKlPKm

	.globl	_Z16vel_vfmkwgt_mvmlPmPKiPKm
	.p2align	4
	.type	_Z16vel_vfmkwgt_mvmlPmPKiPKm,@function
_Z16vel_vfmkwgt_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB70_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB70_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.gt %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end70:
	.size	_Z16vel_vfmkwgt_mvmlPmPKiPKm, .Lfunc_end70-_Z16vel_vfmkwgt_mvmlPmPKiPKm

	.globl	_Z16vel_vfmkwlt_mvmlPmPKiPKm
	.p2align	4
	.type	_Z16vel_vfmkwlt_mvmlPmPKiPKm,@function
_Z16vel_vfmkwlt_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB71_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB71_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.lt %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end71:
	.size	_Z16vel_vfmkwlt_mvmlPmPKiPKm, .Lfunc_end71-_Z16vel_vfmkwlt_mvmlPmPKiPKm

	.globl	_Z16vel_vfmkwne_mvmlPmPKiPKm
	.p2align	4
	.type	_Z16vel_vfmkwne_mvmlPmPKiPKm,@function
_Z16vel_vfmkwne_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB72_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB72_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.ne %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end72:
	.size	_Z16vel_vfmkwne_mvmlPmPKiPKm, .Lfunc_end72-_Z16vel_vfmkwne_mvmlPmPKiPKm

	.globl	_Z16vel_vfmkweq_mvmlPmPKiPKm
	.p2align	4
	.type	_Z16vel_vfmkweq_mvmlPmPKiPKm,@function
_Z16vel_vfmkweq_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB73_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB73_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.eq %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end73:
	.size	_Z16vel_vfmkweq_mvmlPmPKiPKm, .Lfunc_end73-_Z16vel_vfmkweq_mvmlPmPKiPKm

	.globl	_Z16vel_vfmkwge_mvmlPmPKiPKm
	.p2align	4
	.type	_Z16vel_vfmkwge_mvmlPmPKiPKm,@function
_Z16vel_vfmkwge_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB74_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB74_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.ge %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end74:
	.size	_Z16vel_vfmkwge_mvmlPmPKiPKm, .Lfunc_end74-_Z16vel_vfmkwge_mvmlPmPKiPKm

	.globl	_Z16vel_vfmkwle_mvmlPmPKiPKm
	.p2align	4
	.type	_Z16vel_vfmkwle_mvmlPmPKiPKm,@function
_Z16vel_vfmkwle_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB75_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB75_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.le %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end75:
	.size	_Z16vel_vfmkwle_mvmlPmPKiPKm, .Lfunc_end75-_Z16vel_vfmkwle_mvmlPmPKiPKm

	.globl	_Z17vel_vfmkwnum_mvmlPmPKiPKm
	.p2align	4
	.type	_Z17vel_vfmkwnum_mvmlPmPKiPKm,@function
_Z17vel_vfmkwnum_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB76_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB76_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.num %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end76:
	.size	_Z17vel_vfmkwnum_mvmlPmPKiPKm, .Lfunc_end76-_Z17vel_vfmkwnum_mvmlPmPKiPKm

	.globl	_Z17vel_vfmkwnan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z17vel_vfmkwnan_mvmlPmPKiPKm,@function
_Z17vel_vfmkwnan_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB77_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB77_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.nan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end77:
	.size	_Z17vel_vfmkwnan_mvmlPmPKiPKm, .Lfunc_end77-_Z17vel_vfmkwnan_mvmlPmPKiPKm

	.globl	_Z19vel_vfmkwgtnan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z19vel_vfmkwgtnan_mvmlPmPKiPKm,@function
_Z19vel_vfmkwgtnan_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB78_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB78_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.gtnan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end78:
	.size	_Z19vel_vfmkwgtnan_mvmlPmPKiPKm, .Lfunc_end78-_Z19vel_vfmkwgtnan_mvmlPmPKiPKm

	.globl	_Z19vel_vfmkwltnan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z19vel_vfmkwltnan_mvmlPmPKiPKm,@function
_Z19vel_vfmkwltnan_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB79_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB79_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.ltnan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end79:
	.size	_Z19vel_vfmkwltnan_mvmlPmPKiPKm, .Lfunc_end79-_Z19vel_vfmkwltnan_mvmlPmPKiPKm

	.globl	_Z19vel_vfmkwnenan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z19vel_vfmkwnenan_mvmlPmPKiPKm,@function
_Z19vel_vfmkwnenan_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB80_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB80_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.nenan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end80:
	.size	_Z19vel_vfmkwnenan_mvmlPmPKiPKm, .Lfunc_end80-_Z19vel_vfmkwnenan_mvmlPmPKiPKm

	.globl	_Z19vel_vfmkweqnan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z19vel_vfmkweqnan_mvmlPmPKiPKm,@function
_Z19vel_vfmkweqnan_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB81_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB81_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.eqnan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end81:
	.size	_Z19vel_vfmkweqnan_mvmlPmPKiPKm, .Lfunc_end81-_Z19vel_vfmkweqnan_mvmlPmPKiPKm

	.globl	_Z19vel_vfmkwgenan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z19vel_vfmkwgenan_mvmlPmPKiPKm,@function
_Z19vel_vfmkwgenan_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB82_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB82_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.genan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end82:
	.size	_Z19vel_vfmkwgenan_mvmlPmPKiPKm, .Lfunc_end82-_Z19vel_vfmkwgenan_mvmlPmPKiPKm

	.globl	_Z19vel_vfmkwlenan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z19vel_vfmkwlenan_mvmlPmPKiPKm,@function
_Z19vel_vfmkwlenan_mvmlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB83_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB83_2:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.l.lenan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end83:
	.size	_Z19vel_vfmkwlenan_mvmlPmPKiPKm, .Lfunc_end83-_Z19vel_vfmkwlenan_mvmlPmPKiPKm

	.globl	_Z16vel_vfmkdgt_mvmlPmPKdPKm
	.p2align	4
	.type	_Z16vel_vfmkdgt_mvmlPmPKdPKm,@function
_Z16vel_vfmkdgt_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB84_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB84_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.gt %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end84:
	.size	_Z16vel_vfmkdgt_mvmlPmPKdPKm, .Lfunc_end84-_Z16vel_vfmkdgt_mvmlPmPKdPKm

	.globl	_Z16vel_vfmkdlt_mvmlPmPKdPKm
	.p2align	4
	.type	_Z16vel_vfmkdlt_mvmlPmPKdPKm,@function
_Z16vel_vfmkdlt_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB85_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB85_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.lt %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end85:
	.size	_Z16vel_vfmkdlt_mvmlPmPKdPKm, .Lfunc_end85-_Z16vel_vfmkdlt_mvmlPmPKdPKm

	.globl	_Z16vel_vfmkdne_mvmlPmPKdPKm
	.p2align	4
	.type	_Z16vel_vfmkdne_mvmlPmPKdPKm,@function
_Z16vel_vfmkdne_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB86_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB86_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.ne %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end86:
	.size	_Z16vel_vfmkdne_mvmlPmPKdPKm, .Lfunc_end86-_Z16vel_vfmkdne_mvmlPmPKdPKm

	.globl	_Z16vel_vfmkdeq_mvmlPmPKdPKm
	.p2align	4
	.type	_Z16vel_vfmkdeq_mvmlPmPKdPKm,@function
_Z16vel_vfmkdeq_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB87_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB87_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.eq %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end87:
	.size	_Z16vel_vfmkdeq_mvmlPmPKdPKm, .Lfunc_end87-_Z16vel_vfmkdeq_mvmlPmPKdPKm

	.globl	_Z16vel_vfmkdge_mvmlPmPKdPKm
	.p2align	4
	.type	_Z16vel_vfmkdge_mvmlPmPKdPKm,@function
_Z16vel_vfmkdge_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB88_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB88_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.ge %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end88:
	.size	_Z16vel_vfmkdge_mvmlPmPKdPKm, .Lfunc_end88-_Z16vel_vfmkdge_mvmlPmPKdPKm

	.globl	_Z16vel_vfmkdle_mvmlPmPKdPKm
	.p2align	4
	.type	_Z16vel_vfmkdle_mvmlPmPKdPKm,@function
_Z16vel_vfmkdle_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB89_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB89_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.le %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end89:
	.size	_Z16vel_vfmkdle_mvmlPmPKdPKm, .Lfunc_end89-_Z16vel_vfmkdle_mvmlPmPKdPKm

	.globl	_Z17vel_vfmkdnum_mvmlPmPKdPKm
	.p2align	4
	.type	_Z17vel_vfmkdnum_mvmlPmPKdPKm,@function
_Z17vel_vfmkdnum_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB90_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB90_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.num %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end90:
	.size	_Z17vel_vfmkdnum_mvmlPmPKdPKm, .Lfunc_end90-_Z17vel_vfmkdnum_mvmlPmPKdPKm

	.globl	_Z17vel_vfmkdnan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z17vel_vfmkdnan_mvmlPmPKdPKm,@function
_Z17vel_vfmkdnan_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB91_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB91_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.nan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end91:
	.size	_Z17vel_vfmkdnan_mvmlPmPKdPKm, .Lfunc_end91-_Z17vel_vfmkdnan_mvmlPmPKdPKm

	.globl	_Z19vel_vfmkdgtnan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z19vel_vfmkdgtnan_mvmlPmPKdPKm,@function
_Z19vel_vfmkdgtnan_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB92_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB92_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.gtnan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end92:
	.size	_Z19vel_vfmkdgtnan_mvmlPmPKdPKm, .Lfunc_end92-_Z19vel_vfmkdgtnan_mvmlPmPKdPKm

	.globl	_Z19vel_vfmkdltnan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z19vel_vfmkdltnan_mvmlPmPKdPKm,@function
_Z19vel_vfmkdltnan_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB93_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB93_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.ltnan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end93:
	.size	_Z19vel_vfmkdltnan_mvmlPmPKdPKm, .Lfunc_end93-_Z19vel_vfmkdltnan_mvmlPmPKdPKm

	.globl	_Z19vel_vfmkdnenan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z19vel_vfmkdnenan_mvmlPmPKdPKm,@function
_Z19vel_vfmkdnenan_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB94_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB94_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.nenan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end94:
	.size	_Z19vel_vfmkdnenan_mvmlPmPKdPKm, .Lfunc_end94-_Z19vel_vfmkdnenan_mvmlPmPKdPKm

	.globl	_Z19vel_vfmkdeqnan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z19vel_vfmkdeqnan_mvmlPmPKdPKm,@function
_Z19vel_vfmkdeqnan_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB95_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB95_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.eqnan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end95:
	.size	_Z19vel_vfmkdeqnan_mvmlPmPKdPKm, .Lfunc_end95-_Z19vel_vfmkdeqnan_mvmlPmPKdPKm

	.globl	_Z19vel_vfmkdgenan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z19vel_vfmkdgenan_mvmlPmPKdPKm,@function
_Z19vel_vfmkdgenan_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB96_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB96_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.genan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end96:
	.size	_Z19vel_vfmkdgenan_mvmlPmPKdPKm, .Lfunc_end96-_Z19vel_vfmkdgenan_mvmlPmPKdPKm

	.globl	_Z19vel_vfmkdlenan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z19vel_vfmkdlenan_mvmlPmPKdPKm,@function
_Z19vel_vfmkdlenan_mvmlPmPKdPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB97_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB97_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.d.lenan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end97:
	.size	_Z19vel_vfmkdlenan_mvmlPmPKdPKm, .Lfunc_end97-_Z19vel_vfmkdlenan_mvmlPmPKdPKm

	.globl	_Z16vel_vfmksgt_mvmlPmPKfPKm
	.p2align	4
	.type	_Z16vel_vfmksgt_mvmlPmPKfPKm,@function
_Z16vel_vfmksgt_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB98_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB98_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.gt %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end98:
	.size	_Z16vel_vfmksgt_mvmlPmPKfPKm, .Lfunc_end98-_Z16vel_vfmksgt_mvmlPmPKfPKm

	.globl	_Z16vel_vfmkslt_mvmlPmPKfPKm
	.p2align	4
	.type	_Z16vel_vfmkslt_mvmlPmPKfPKm,@function
_Z16vel_vfmkslt_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB99_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB99_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.lt %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end99:
	.size	_Z16vel_vfmkslt_mvmlPmPKfPKm, .Lfunc_end99-_Z16vel_vfmkslt_mvmlPmPKfPKm

	.globl	_Z16vel_vfmksne_mvmlPmPKfPKm
	.p2align	4
	.type	_Z16vel_vfmksne_mvmlPmPKfPKm,@function
_Z16vel_vfmksne_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB100_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB100_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.ne %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end100:
	.size	_Z16vel_vfmksne_mvmlPmPKfPKm, .Lfunc_end100-_Z16vel_vfmksne_mvmlPmPKfPKm

	.globl	_Z16vel_vfmkseq_mvmlPmPKfPKm
	.p2align	4
	.type	_Z16vel_vfmkseq_mvmlPmPKfPKm,@function
_Z16vel_vfmkseq_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB101_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB101_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.eq %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end101:
	.size	_Z16vel_vfmkseq_mvmlPmPKfPKm, .Lfunc_end101-_Z16vel_vfmkseq_mvmlPmPKfPKm

	.globl	_Z16vel_vfmksge_mvmlPmPKfPKm
	.p2align	4
	.type	_Z16vel_vfmksge_mvmlPmPKfPKm,@function
_Z16vel_vfmksge_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB102_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB102_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.ge %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end102:
	.size	_Z16vel_vfmksge_mvmlPmPKfPKm, .Lfunc_end102-_Z16vel_vfmksge_mvmlPmPKfPKm

	.globl	_Z16vel_vfmksle_mvmlPmPKfPKm
	.p2align	4
	.type	_Z16vel_vfmksle_mvmlPmPKfPKm,@function
_Z16vel_vfmksle_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB103_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB103_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.le %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end103:
	.size	_Z16vel_vfmksle_mvmlPmPKfPKm, .Lfunc_end103-_Z16vel_vfmksle_mvmlPmPKfPKm

	.globl	_Z17vel_vfmksnum_mvmlPmPKfPKm
	.p2align	4
	.type	_Z17vel_vfmksnum_mvmlPmPKfPKm,@function
_Z17vel_vfmksnum_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB104_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB104_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.num %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end104:
	.size	_Z17vel_vfmksnum_mvmlPmPKfPKm, .Lfunc_end104-_Z17vel_vfmksnum_mvmlPmPKfPKm

	.globl	_Z17vel_vfmksnan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z17vel_vfmksnan_mvmlPmPKfPKm,@function
_Z17vel_vfmksnan_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB105_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB105_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.nan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end105:
	.size	_Z17vel_vfmksnan_mvmlPmPKfPKm, .Lfunc_end105-_Z17vel_vfmksnan_mvmlPmPKfPKm

	.globl	_Z19vel_vfmksgtnan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z19vel_vfmksgtnan_mvmlPmPKfPKm,@function
_Z19vel_vfmksgtnan_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB106_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB106_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.gtnan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end106:
	.size	_Z19vel_vfmksgtnan_mvmlPmPKfPKm, .Lfunc_end106-_Z19vel_vfmksgtnan_mvmlPmPKfPKm

	.globl	_Z19vel_vfmksltnan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z19vel_vfmksltnan_mvmlPmPKfPKm,@function
_Z19vel_vfmksltnan_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB107_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB107_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.ltnan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end107:
	.size	_Z19vel_vfmksltnan_mvmlPmPKfPKm, .Lfunc_end107-_Z19vel_vfmksltnan_mvmlPmPKfPKm

	.globl	_Z19vel_vfmksnenan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z19vel_vfmksnenan_mvmlPmPKfPKm,@function
_Z19vel_vfmksnenan_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB108_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB108_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.nenan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end108:
	.size	_Z19vel_vfmksnenan_mvmlPmPKfPKm, .Lfunc_end108-_Z19vel_vfmksnenan_mvmlPmPKfPKm

	.globl	_Z19vel_vfmkseqnan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z19vel_vfmkseqnan_mvmlPmPKfPKm,@function
_Z19vel_vfmkseqnan_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB109_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB109_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.eqnan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end109:
	.size	_Z19vel_vfmkseqnan_mvmlPmPKfPKm, .Lfunc_end109-_Z19vel_vfmkseqnan_mvmlPmPKfPKm

	.globl	_Z19vel_vfmksgenan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z19vel_vfmksgenan_mvmlPmPKfPKm,@function
_Z19vel_vfmksgenan_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB110_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB110_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.genan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end110:
	.size	_Z19vel_vfmksgenan_mvmlPmPKfPKm, .Lfunc_end110-_Z19vel_vfmksgenan_mvmlPmPKfPKm

	.globl	_Z19vel_vfmkslenan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z19vel_vfmkslenan_mvmlPmPKfPKm,@function
_Z19vel_vfmkslenan_mvmlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB111_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB111_2:
	lea %s3, 256
	lvl %s3
	vldu %v0,4,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s1
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfmk.s.lenan %vm1,%v0,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end111:
	.size	_Z19vel_vfmkslenan_mvmlPmPKfPKm, .Lfunc_end111-_Z19vel_vfmkslenan_mvmlPmPKfPKm

	.globl	_Z16vel_pvfmkwgt_MvlPmPKi
	.p2align	4
	.type	_Z16vel_pvfmkwgt_MvlPmPKi,@function
_Z16vel_pvfmkwgt_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB112_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB112_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.gt %vm2,%v0
	pvfmk.w.lo.gt %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end112:
	.size	_Z16vel_pvfmkwgt_MvlPmPKi, .Lfunc_end112-_Z16vel_pvfmkwgt_MvlPmPKi

	.globl	_Z16vel_pvfmkwlt_MvlPmPKi
	.p2align	4
	.type	_Z16vel_pvfmkwlt_MvlPmPKi,@function
_Z16vel_pvfmkwlt_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB113_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB113_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.lt %vm2,%v0
	pvfmk.w.lo.lt %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end113:
	.size	_Z16vel_pvfmkwlt_MvlPmPKi, .Lfunc_end113-_Z16vel_pvfmkwlt_MvlPmPKi

	.globl	_Z16vel_pvfmkwne_MvlPmPKi
	.p2align	4
	.type	_Z16vel_pvfmkwne_MvlPmPKi,@function
_Z16vel_pvfmkwne_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB114_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB114_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.ne %vm2,%v0
	pvfmk.w.lo.ne %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end114:
	.size	_Z16vel_pvfmkwne_MvlPmPKi, .Lfunc_end114-_Z16vel_pvfmkwne_MvlPmPKi

	.globl	_Z16vel_pvfmkweq_MvlPmPKi
	.p2align	4
	.type	_Z16vel_pvfmkweq_MvlPmPKi,@function
_Z16vel_pvfmkweq_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB115_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB115_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.eq %vm2,%v0
	pvfmk.w.lo.eq %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end115:
	.size	_Z16vel_pvfmkweq_MvlPmPKi, .Lfunc_end115-_Z16vel_pvfmkweq_MvlPmPKi

	.globl	_Z16vel_pvfmkwge_MvlPmPKi
	.p2align	4
	.type	_Z16vel_pvfmkwge_MvlPmPKi,@function
_Z16vel_pvfmkwge_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB116_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB116_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.ge %vm2,%v0
	pvfmk.w.lo.ge %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end116:
	.size	_Z16vel_pvfmkwge_MvlPmPKi, .Lfunc_end116-_Z16vel_pvfmkwge_MvlPmPKi

	.globl	_Z16vel_pvfmkwle_MvlPmPKi
	.p2align	4
	.type	_Z16vel_pvfmkwle_MvlPmPKi,@function
_Z16vel_pvfmkwle_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB117_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB117_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.le %vm2,%v0
	pvfmk.w.lo.le %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end117:
	.size	_Z16vel_pvfmkwle_MvlPmPKi, .Lfunc_end117-_Z16vel_pvfmkwle_MvlPmPKi

	.globl	_Z17vel_pvfmkwnum_MvlPmPKi
	.p2align	4
	.type	_Z17vel_pvfmkwnum_MvlPmPKi,@function
_Z17vel_pvfmkwnum_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB118_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB118_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.num %vm2,%v0
	pvfmk.w.lo.num %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end118:
	.size	_Z17vel_pvfmkwnum_MvlPmPKi, .Lfunc_end118-_Z17vel_pvfmkwnum_MvlPmPKi

	.globl	_Z17vel_pvfmkwnan_MvlPmPKi
	.p2align	4
	.type	_Z17vel_pvfmkwnan_MvlPmPKi,@function
_Z17vel_pvfmkwnan_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB119_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB119_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.nan %vm2,%v0
	pvfmk.w.lo.nan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end119:
	.size	_Z17vel_pvfmkwnan_MvlPmPKi, .Lfunc_end119-_Z17vel_pvfmkwnan_MvlPmPKi

	.globl	_Z19vel_pvfmkwgtnan_MvlPmPKi
	.p2align	4
	.type	_Z19vel_pvfmkwgtnan_MvlPmPKi,@function
_Z19vel_pvfmkwgtnan_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB120_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB120_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.gtnan %vm2,%v0
	pvfmk.w.lo.gtnan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end120:
	.size	_Z19vel_pvfmkwgtnan_MvlPmPKi, .Lfunc_end120-_Z19vel_pvfmkwgtnan_MvlPmPKi

	.globl	_Z19vel_pvfmkwltnan_MvlPmPKi
	.p2align	4
	.type	_Z19vel_pvfmkwltnan_MvlPmPKi,@function
_Z19vel_pvfmkwltnan_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB121_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB121_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.ltnan %vm2,%v0
	pvfmk.w.lo.ltnan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end121:
	.size	_Z19vel_pvfmkwltnan_MvlPmPKi, .Lfunc_end121-_Z19vel_pvfmkwltnan_MvlPmPKi

	.globl	_Z19vel_pvfmkwnenan_MvlPmPKi
	.p2align	4
	.type	_Z19vel_pvfmkwnenan_MvlPmPKi,@function
_Z19vel_pvfmkwnenan_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB122_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB122_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.nenan %vm2,%v0
	pvfmk.w.lo.nenan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end122:
	.size	_Z19vel_pvfmkwnenan_MvlPmPKi, .Lfunc_end122-_Z19vel_pvfmkwnenan_MvlPmPKi

	.globl	_Z19vel_pvfmkweqnan_MvlPmPKi
	.p2align	4
	.type	_Z19vel_pvfmkweqnan_MvlPmPKi,@function
_Z19vel_pvfmkweqnan_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB123_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB123_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.eqnan %vm2,%v0
	pvfmk.w.lo.eqnan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end123:
	.size	_Z19vel_pvfmkweqnan_MvlPmPKi, .Lfunc_end123-_Z19vel_pvfmkweqnan_MvlPmPKi

	.globl	_Z19vel_pvfmkwgenan_MvlPmPKi
	.p2align	4
	.type	_Z19vel_pvfmkwgenan_MvlPmPKi,@function
_Z19vel_pvfmkwgenan_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB124_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB124_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.genan %vm2,%v0
	pvfmk.w.lo.genan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end124:
	.size	_Z19vel_pvfmkwgenan_MvlPmPKi, .Lfunc_end124-_Z19vel_pvfmkwgenan_MvlPmPKi

	.globl	_Z19vel_pvfmkwlenan_MvlPmPKi
	.p2align	4
	.type	_Z19vel_pvfmkwlenan_MvlPmPKi,@function
_Z19vel_pvfmkwlenan_MvlPmPKi:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB125_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB125_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.w.up.lenan %vm2,%v0
	pvfmk.w.lo.lenan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end125:
	.size	_Z19vel_pvfmkwlenan_MvlPmPKi, .Lfunc_end125-_Z19vel_pvfmkwlenan_MvlPmPKi

	.globl	_Z16vel_pvfmksgt_MvlPmPKf
	.p2align	4
	.type	_Z16vel_pvfmksgt_MvlPmPKf,@function
_Z16vel_pvfmksgt_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB126_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB126_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.gt %vm2,%v0
	pvfmk.s.lo.gt %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end126:
	.size	_Z16vel_pvfmksgt_MvlPmPKf, .Lfunc_end126-_Z16vel_pvfmksgt_MvlPmPKf

	.globl	_Z16vel_pvfmkslt_MvlPmPKf
	.p2align	4
	.type	_Z16vel_pvfmkslt_MvlPmPKf,@function
_Z16vel_pvfmkslt_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB127_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB127_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.lt %vm2,%v0
	pvfmk.s.lo.lt %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end127:
	.size	_Z16vel_pvfmkslt_MvlPmPKf, .Lfunc_end127-_Z16vel_pvfmkslt_MvlPmPKf

	.globl	_Z16vel_pvfmksne_MvlPmPKf
	.p2align	4
	.type	_Z16vel_pvfmksne_MvlPmPKf,@function
_Z16vel_pvfmksne_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB128_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB128_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.ne %vm2,%v0
	pvfmk.s.lo.ne %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end128:
	.size	_Z16vel_pvfmksne_MvlPmPKf, .Lfunc_end128-_Z16vel_pvfmksne_MvlPmPKf

	.globl	_Z16vel_pvfmkseq_MvlPmPKf
	.p2align	4
	.type	_Z16vel_pvfmkseq_MvlPmPKf,@function
_Z16vel_pvfmkseq_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB129_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB129_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.eq %vm2,%v0
	pvfmk.s.lo.eq %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end129:
	.size	_Z16vel_pvfmkseq_MvlPmPKf, .Lfunc_end129-_Z16vel_pvfmkseq_MvlPmPKf

	.globl	_Z16vel_pvfmksge_MvlPmPKf
	.p2align	4
	.type	_Z16vel_pvfmksge_MvlPmPKf,@function
_Z16vel_pvfmksge_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB130_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB130_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.ge %vm2,%v0
	pvfmk.s.lo.ge %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end130:
	.size	_Z16vel_pvfmksge_MvlPmPKf, .Lfunc_end130-_Z16vel_pvfmksge_MvlPmPKf

	.globl	_Z16vel_pvfmksle_MvlPmPKf
	.p2align	4
	.type	_Z16vel_pvfmksle_MvlPmPKf,@function
_Z16vel_pvfmksle_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB131_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB131_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.le %vm2,%v0
	pvfmk.s.lo.le %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end131:
	.size	_Z16vel_pvfmksle_MvlPmPKf, .Lfunc_end131-_Z16vel_pvfmksle_MvlPmPKf

	.globl	_Z17vel_pvfmksnum_MvlPmPKf
	.p2align	4
	.type	_Z17vel_pvfmksnum_MvlPmPKf,@function
_Z17vel_pvfmksnum_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB132_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB132_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.num %vm2,%v0
	pvfmk.s.lo.num %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end132:
	.size	_Z17vel_pvfmksnum_MvlPmPKf, .Lfunc_end132-_Z17vel_pvfmksnum_MvlPmPKf

	.globl	_Z17vel_pvfmksnan_MvlPmPKf
	.p2align	4
	.type	_Z17vel_pvfmksnan_MvlPmPKf,@function
_Z17vel_pvfmksnan_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB133_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB133_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.nan %vm2,%v0
	pvfmk.s.lo.nan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end133:
	.size	_Z17vel_pvfmksnan_MvlPmPKf, .Lfunc_end133-_Z17vel_pvfmksnan_MvlPmPKf

	.globl	_Z19vel_pvfmksgtnan_MvlPmPKf
	.p2align	4
	.type	_Z19vel_pvfmksgtnan_MvlPmPKf,@function
_Z19vel_pvfmksgtnan_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB134_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB134_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.gtnan %vm2,%v0
	pvfmk.s.lo.gtnan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end134:
	.size	_Z19vel_pvfmksgtnan_MvlPmPKf, .Lfunc_end134-_Z19vel_pvfmksgtnan_MvlPmPKf

	.globl	_Z19vel_pvfmksltnan_MvlPmPKf
	.p2align	4
	.type	_Z19vel_pvfmksltnan_MvlPmPKf,@function
_Z19vel_pvfmksltnan_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB135_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB135_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.ltnan %vm2,%v0
	pvfmk.s.lo.ltnan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end135:
	.size	_Z19vel_pvfmksltnan_MvlPmPKf, .Lfunc_end135-_Z19vel_pvfmksltnan_MvlPmPKf

	.globl	_Z19vel_pvfmksnenan_MvlPmPKf
	.p2align	4
	.type	_Z19vel_pvfmksnenan_MvlPmPKf,@function
_Z19vel_pvfmksnenan_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB136_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB136_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.nenan %vm2,%v0
	pvfmk.s.lo.nenan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end136:
	.size	_Z19vel_pvfmksnenan_MvlPmPKf, .Lfunc_end136-_Z19vel_pvfmksnenan_MvlPmPKf

	.globl	_Z19vel_pvfmkseqnan_MvlPmPKf
	.p2align	4
	.type	_Z19vel_pvfmkseqnan_MvlPmPKf,@function
_Z19vel_pvfmkseqnan_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB137_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB137_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.eqnan %vm2,%v0
	pvfmk.s.lo.eqnan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end137:
	.size	_Z19vel_pvfmkseqnan_MvlPmPKf, .Lfunc_end137-_Z19vel_pvfmkseqnan_MvlPmPKf

	.globl	_Z19vel_pvfmksgenan_MvlPmPKf
	.p2align	4
	.type	_Z19vel_pvfmksgenan_MvlPmPKf,@function
_Z19vel_pvfmksgenan_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB138_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB138_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.genan %vm2,%v0
	pvfmk.s.lo.genan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end138:
	.size	_Z19vel_pvfmksgenan_MvlPmPKf, .Lfunc_end138-_Z19vel_pvfmksgenan_MvlPmPKf

	.globl	_Z19vel_pvfmkslenan_MvlPmPKf
	.p2align	4
	.type	_Z19vel_pvfmkslenan_MvlPmPKf,@function
_Z19vel_pvfmkslenan_MvlPmPKf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB139_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB139_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	pvfmk.s.up.lenan %vm2,%v0
	pvfmk.s.lo.lenan %vm3,%v0
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end139:
	.size	_Z19vel_pvfmkslenan_MvlPmPKf, .Lfunc_end139-_Z19vel_pvfmkslenan_MvlPmPKf

	.globl	_Z17vel_pvfmkwgt_MvMlPmPKiPKm
	.p2align	4
	.type	_Z17vel_pvfmkwgt_MvMlPmPKiPKm,@function
_Z17vel_pvfmkwgt_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB140_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB140_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.gt %vm2,%v0,%vm2
	pvfmk.w.lo.gt %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end140:
	.size	_Z17vel_pvfmkwgt_MvMlPmPKiPKm, .Lfunc_end140-_Z17vel_pvfmkwgt_MvMlPmPKiPKm

	.globl	_Z17vel_pvfmkwlt_MvMlPmPKiPKm
	.p2align	4
	.type	_Z17vel_pvfmkwlt_MvMlPmPKiPKm,@function
_Z17vel_pvfmkwlt_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB141_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB141_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.lt %vm2,%v0,%vm2
	pvfmk.w.lo.lt %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end141:
	.size	_Z17vel_pvfmkwlt_MvMlPmPKiPKm, .Lfunc_end141-_Z17vel_pvfmkwlt_MvMlPmPKiPKm

	.globl	_Z17vel_pvfmkwne_MvMlPmPKiPKm
	.p2align	4
	.type	_Z17vel_pvfmkwne_MvMlPmPKiPKm,@function
_Z17vel_pvfmkwne_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB142_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB142_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.ne %vm2,%v0,%vm2
	pvfmk.w.lo.ne %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end142:
	.size	_Z17vel_pvfmkwne_MvMlPmPKiPKm, .Lfunc_end142-_Z17vel_pvfmkwne_MvMlPmPKiPKm

	.globl	_Z17vel_pvfmkweq_MvMlPmPKiPKm
	.p2align	4
	.type	_Z17vel_pvfmkweq_MvMlPmPKiPKm,@function
_Z17vel_pvfmkweq_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB143_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB143_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.eq %vm2,%v0,%vm2
	pvfmk.w.lo.eq %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end143:
	.size	_Z17vel_pvfmkweq_MvMlPmPKiPKm, .Lfunc_end143-_Z17vel_pvfmkweq_MvMlPmPKiPKm

	.globl	_Z17vel_pvfmkwge_MvMlPmPKiPKm
	.p2align	4
	.type	_Z17vel_pvfmkwge_MvMlPmPKiPKm,@function
_Z17vel_pvfmkwge_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB144_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB144_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.ge %vm2,%v0,%vm2
	pvfmk.w.lo.ge %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end144:
	.size	_Z17vel_pvfmkwge_MvMlPmPKiPKm, .Lfunc_end144-_Z17vel_pvfmkwge_MvMlPmPKiPKm

	.globl	_Z17vel_pvfmkwle_MvMlPmPKiPKm
	.p2align	4
	.type	_Z17vel_pvfmkwle_MvMlPmPKiPKm,@function
_Z17vel_pvfmkwle_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB145_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB145_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.le %vm2,%v0,%vm2
	pvfmk.w.lo.le %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end145:
	.size	_Z17vel_pvfmkwle_MvMlPmPKiPKm, .Lfunc_end145-_Z17vel_pvfmkwle_MvMlPmPKiPKm

	.globl	_Z18vel_pvfmkwnum_MvMlPmPKiPKm
	.p2align	4
	.type	_Z18vel_pvfmkwnum_MvMlPmPKiPKm,@function
_Z18vel_pvfmkwnum_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB146_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB146_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.num %vm2,%v0,%vm2
	pvfmk.w.lo.num %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end146:
	.size	_Z18vel_pvfmkwnum_MvMlPmPKiPKm, .Lfunc_end146-_Z18vel_pvfmkwnum_MvMlPmPKiPKm

	.globl	_Z18vel_pvfmkwnan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z18vel_pvfmkwnan_MvMlPmPKiPKm,@function
_Z18vel_pvfmkwnan_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB147_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB147_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.nan %vm2,%v0,%vm2
	pvfmk.w.lo.nan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end147:
	.size	_Z18vel_pvfmkwnan_MvMlPmPKiPKm, .Lfunc_end147-_Z18vel_pvfmkwnan_MvMlPmPKiPKm

	.globl	_Z20vel_pvfmkwgtnan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z20vel_pvfmkwgtnan_MvMlPmPKiPKm,@function
_Z20vel_pvfmkwgtnan_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB148_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB148_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.gtnan %vm2,%v0,%vm2
	pvfmk.w.lo.gtnan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end148:
	.size	_Z20vel_pvfmkwgtnan_MvMlPmPKiPKm, .Lfunc_end148-_Z20vel_pvfmkwgtnan_MvMlPmPKiPKm

	.globl	_Z20vel_pvfmkwltnan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z20vel_pvfmkwltnan_MvMlPmPKiPKm,@function
_Z20vel_pvfmkwltnan_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB149_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB149_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.ltnan %vm2,%v0,%vm2
	pvfmk.w.lo.ltnan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end149:
	.size	_Z20vel_pvfmkwltnan_MvMlPmPKiPKm, .Lfunc_end149-_Z20vel_pvfmkwltnan_MvMlPmPKiPKm

	.globl	_Z20vel_pvfmkwnenan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z20vel_pvfmkwnenan_MvMlPmPKiPKm,@function
_Z20vel_pvfmkwnenan_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB150_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB150_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.nenan %vm2,%v0,%vm2
	pvfmk.w.lo.nenan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end150:
	.size	_Z20vel_pvfmkwnenan_MvMlPmPKiPKm, .Lfunc_end150-_Z20vel_pvfmkwnenan_MvMlPmPKiPKm

	.globl	_Z20vel_pvfmkweqnan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z20vel_pvfmkweqnan_MvMlPmPKiPKm,@function
_Z20vel_pvfmkweqnan_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB151_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB151_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.eqnan %vm2,%v0,%vm2
	pvfmk.w.lo.eqnan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end151:
	.size	_Z20vel_pvfmkweqnan_MvMlPmPKiPKm, .Lfunc_end151-_Z20vel_pvfmkweqnan_MvMlPmPKiPKm

	.globl	_Z20vel_pvfmkwgenan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z20vel_pvfmkwgenan_MvMlPmPKiPKm,@function
_Z20vel_pvfmkwgenan_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB152_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB152_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.genan %vm2,%v0,%vm2
	pvfmk.w.lo.genan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end152:
	.size	_Z20vel_pvfmkwgenan_MvMlPmPKiPKm, .Lfunc_end152-_Z20vel_pvfmkwgenan_MvMlPmPKiPKm

	.globl	_Z20vel_pvfmkwlenan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z20vel_pvfmkwlenan_MvMlPmPKiPKm,@function
_Z20vel_pvfmkwlenan_MvMlPmPKiPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB153_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB153_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.w.up.lenan %vm2,%v0,%vm2
	pvfmk.w.lo.lenan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end153:
	.size	_Z20vel_pvfmkwlenan_MvMlPmPKiPKm, .Lfunc_end153-_Z20vel_pvfmkwlenan_MvMlPmPKiPKm

	.globl	_Z17vel_pvfmksgt_MvMlPmPKfPKm
	.p2align	4
	.type	_Z17vel_pvfmksgt_MvMlPmPKfPKm,@function
_Z17vel_pvfmksgt_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB154_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB154_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.gt %vm2,%v0,%vm2
	pvfmk.s.lo.gt %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end154:
	.size	_Z17vel_pvfmksgt_MvMlPmPKfPKm, .Lfunc_end154-_Z17vel_pvfmksgt_MvMlPmPKfPKm

	.globl	_Z17vel_pvfmkslt_MvMlPmPKfPKm
	.p2align	4
	.type	_Z17vel_pvfmkslt_MvMlPmPKfPKm,@function
_Z17vel_pvfmkslt_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB155_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB155_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.lt %vm2,%v0,%vm2
	pvfmk.s.lo.lt %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end155:
	.size	_Z17vel_pvfmkslt_MvMlPmPKfPKm, .Lfunc_end155-_Z17vel_pvfmkslt_MvMlPmPKfPKm

	.globl	_Z17vel_pvfmksne_MvMlPmPKfPKm
	.p2align	4
	.type	_Z17vel_pvfmksne_MvMlPmPKfPKm,@function
_Z17vel_pvfmksne_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB156_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB156_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.ne %vm2,%v0,%vm2
	pvfmk.s.lo.ne %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end156:
	.size	_Z17vel_pvfmksne_MvMlPmPKfPKm, .Lfunc_end156-_Z17vel_pvfmksne_MvMlPmPKfPKm

	.globl	_Z17vel_pvfmkseq_MvMlPmPKfPKm
	.p2align	4
	.type	_Z17vel_pvfmkseq_MvMlPmPKfPKm,@function
_Z17vel_pvfmkseq_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB157_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB157_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.eq %vm2,%v0,%vm2
	pvfmk.s.lo.eq %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end157:
	.size	_Z17vel_pvfmkseq_MvMlPmPKfPKm, .Lfunc_end157-_Z17vel_pvfmkseq_MvMlPmPKfPKm

	.globl	_Z17vel_pvfmksge_MvMlPmPKfPKm
	.p2align	4
	.type	_Z17vel_pvfmksge_MvMlPmPKfPKm,@function
_Z17vel_pvfmksge_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB158_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB158_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.ge %vm2,%v0,%vm2
	pvfmk.s.lo.ge %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end158:
	.size	_Z17vel_pvfmksge_MvMlPmPKfPKm, .Lfunc_end158-_Z17vel_pvfmksge_MvMlPmPKfPKm

	.globl	_Z17vel_pvfmksle_MvMlPmPKfPKm
	.p2align	4
	.type	_Z17vel_pvfmksle_MvMlPmPKfPKm,@function
_Z17vel_pvfmksle_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB159_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB159_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.le %vm2,%v0,%vm2
	pvfmk.s.lo.le %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end159:
	.size	_Z17vel_pvfmksle_MvMlPmPKfPKm, .Lfunc_end159-_Z17vel_pvfmksle_MvMlPmPKfPKm

	.globl	_Z18vel_pvfmksnum_MvMlPmPKfPKm
	.p2align	4
	.type	_Z18vel_pvfmksnum_MvMlPmPKfPKm,@function
_Z18vel_pvfmksnum_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB160_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB160_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.num %vm2,%v0,%vm2
	pvfmk.s.lo.num %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end160:
	.size	_Z18vel_pvfmksnum_MvMlPmPKfPKm, .Lfunc_end160-_Z18vel_pvfmksnum_MvMlPmPKfPKm

	.globl	_Z18vel_pvfmksnan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z18vel_pvfmksnan_MvMlPmPKfPKm,@function
_Z18vel_pvfmksnan_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB161_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB161_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.nan %vm2,%v0,%vm2
	pvfmk.s.lo.nan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end161:
	.size	_Z18vel_pvfmksnan_MvMlPmPKfPKm, .Lfunc_end161-_Z18vel_pvfmksnan_MvMlPmPKfPKm

	.globl	_Z20vel_pvfmksgtnan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z20vel_pvfmksgtnan_MvMlPmPKfPKm,@function
_Z20vel_pvfmksgtnan_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB162_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB162_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.gtnan %vm2,%v0,%vm2
	pvfmk.s.lo.gtnan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end162:
	.size	_Z20vel_pvfmksgtnan_MvMlPmPKfPKm, .Lfunc_end162-_Z20vel_pvfmksgtnan_MvMlPmPKfPKm

	.globl	_Z20vel_pvfmksltnan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z20vel_pvfmksltnan_MvMlPmPKfPKm,@function
_Z20vel_pvfmksltnan_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB163_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB163_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.ltnan %vm2,%v0,%vm2
	pvfmk.s.lo.ltnan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end163:
	.size	_Z20vel_pvfmksltnan_MvMlPmPKfPKm, .Lfunc_end163-_Z20vel_pvfmksltnan_MvMlPmPKfPKm

	.globl	_Z20vel_pvfmksnenan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z20vel_pvfmksnenan_MvMlPmPKfPKm,@function
_Z20vel_pvfmksnenan_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB164_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB164_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.nenan %vm2,%v0,%vm2
	pvfmk.s.lo.nenan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end164:
	.size	_Z20vel_pvfmksnenan_MvMlPmPKfPKm, .Lfunc_end164-_Z20vel_pvfmksnenan_MvMlPmPKfPKm

	.globl	_Z20vel_pvfmkseqnan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z20vel_pvfmkseqnan_MvMlPmPKfPKm,@function
_Z20vel_pvfmkseqnan_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB165_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB165_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.eqnan %vm2,%v0,%vm2
	pvfmk.s.lo.eqnan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end165:
	.size	_Z20vel_pvfmkseqnan_MvMlPmPKfPKm, .Lfunc_end165-_Z20vel_pvfmkseqnan_MvMlPmPKfPKm

	.globl	_Z20vel_pvfmksgenan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z20vel_pvfmksgenan_MvMlPmPKfPKm,@function
_Z20vel_pvfmksgenan_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB166_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB166_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.genan %vm2,%v0,%vm2
	pvfmk.s.lo.genan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end166:
	.size	_Z20vel_pvfmksgenan_MvMlPmPKfPKm, .Lfunc_end166-_Z20vel_pvfmksgenan_MvMlPmPKfPKm

	.globl	_Z20vel_pvfmkslenan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z20vel_pvfmkslenan_MvMlPmPKfPKm,@function
_Z20vel_pvfmkslenan_MvMlPmPKfPKm:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB167_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB167_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3,0,%s1
	lvm %vm3,1,%s4
	lvm %vm3,2,%s5
	lvm %vm3,3,%s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2,0,%s1
	lvm %vm2,1,%s4
	lvm %vm2,2,%s5
	lvm %vm2,3,%s2
	pvfmk.s.up.lenan %vm2,%v0,%vm2
	pvfmk.s.lo.lenan %vm3,%v0,%vm3
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end167:
	.size	_Z20vel_pvfmkslenan_MvMlPmPKfPKm, .Lfunc_end167-_Z20vel_pvfmkslenan_MvMlPmPKfPKm

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 7cda3c814c99665dbae38aed1250c3d76586a568)"
	.section	".note.GNU-stack","",@progbits
