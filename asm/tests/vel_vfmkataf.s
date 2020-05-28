	.text
	.file	"vel_vfmkataf.c"
	.globl	vel_vfmklat
	.p2align	4
	.type	vel_vfmklat,@function
vel_vfmklat:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l %s11, %s8, .LBB0_6
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_6:
	lea %s0, 256
	lvl %s0
	vfmk.l.at %vm1
	svm %s1,%vm1,0
	or %s0, 0, (0)1
	brne.l -1, %s1, .LBB0_4
	svm %s1,%vm1,1
	brne.l -1, %s1, .LBB0_4
	svm %s1,%vm1,2
	brne.l -1, %s1, .LBB0_4
	svm %s0,%vm1,3
	cmps.l %s0, %s0, (0)0
	ldz %s0, %s0
	srl %s0, %s0, 6
.LBB0_4:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vel_vfmklat, .Lfunc_end0-vel_vfmklat

	.globl	vel_vfmklaf
	.p2align	4
	.type	vel_vfmklaf,@function
vel_vfmklaf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l %s11, %s8, .LBB1_6
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_6:
	lea %s0, 256
	lvl %s0
	vfmk.l.af %vm1
	svm %s1,%vm1,0
	or %s0, 0, (0)1
	brne.l 0, %s1, .LBB1_4
	svm %s1,%vm1,1
	brne.l 0, %s1, .LBB1_4
	svm %s1,%vm1,2
	brne.l 0, %s1, .LBB1_4
	svm %s0,%vm1,3
	ldz %s0, %s0
	srl %s0, %s0, 6
.LBB1_4:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	vel_vfmklaf, .Lfunc_end1-vel_vfmklaf

	.globl	vel_pvfmkat
	.p2align	4
	.type	vel_pvfmkat,@function
vel_pvfmkat:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l %s11, %s8, .LBB2_10
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB2_10:
	lea %s0, 256
	lvl %s0
	pvfmk.w.up.at %vm2
	pvfmk.w.lo.at %vm3
	svm %s1,%vm3,0
	or %s0, 0, (0)1
	brne.l -1, %s1, .LBB2_8
	svm %s1,%vm3,1
	brne.l -1, %s1, .LBB2_8
	svm %s1,%vm3,2
	brne.l -1, %s1, .LBB2_8
	svm %s1,%vm3,3
	brne.l -1, %s1, .LBB2_8
	svm %s1,%vm2,0
	brne.l -1, %s1, .LBB2_8
	svm %s1,%vm2,1
	brne.l -1, %s1, .LBB2_8
	svm %s1,%vm2,2
	brne.l -1, %s1, .LBB2_8
	svm %s0,%vm2,3
	cmps.l %s0, %s0, (0)0
	ldz %s0, %s0
	srl %s0, %s0, 6
.LBB2_8:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end2:
	.size	vel_pvfmkat, .Lfunc_end2-vel_pvfmkat

	.globl	vel_pvfmkaf
	.p2align	4
	.type	vel_pvfmkaf,@function
vel_pvfmkaf:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l %s11, %s8, .LBB3_10
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB3_10:
	lea %s0, 256
	lvl %s0
	pvfmk.w.up.af %vm2
	pvfmk.w.lo.af %vm3
	svm %s1,%vm3,0
	or %s0, 0, (0)1
	brne.l 0, %s1, .LBB3_8
	svm %s1,%vm3,1
	brne.l 0, %s1, .LBB3_8
	svm %s1,%vm3,2
	brne.l 0, %s1, .LBB3_8
	svm %s1,%vm3,3
	brne.l 0, %s1, .LBB3_8
	svm %s1,%vm2,0
	brne.l 0, %s1, .LBB3_8
	svm %s1,%vm2,1
	brne.l 0, %s1, .LBB3_8
	svm %s1,%vm2,2
	brne.l 0, %s1, .LBB3_8
	svm %s0,%vm2,3
	ldz %s0, %s0
	srl %s0, %s0, 6
.LBB3_8:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end3:
	.size	vel_pvfmkaf, .Lfunc_end3-vel_pvfmkaf

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 7cda3c814c99665dbae38aed1250c3d76586a568)"
	.section	".note.GNU-stack","",@progbits
