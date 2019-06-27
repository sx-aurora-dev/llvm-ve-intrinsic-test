	.text
	.file	"vfmkataf.c"
	.globl	vfmkat
	.p2align	4
	.type	vfmkat,@function
vfmkat:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB0_6
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_6:
	lea %s34, 256
	lvl %s34
	vfmk.l.at %vm1
	svm %s35,%vm1,0
	or %s34, -1, (0)1
	or %s0, 0, (0)1
	brne.l %s35, %s34, .LBB0_4
	svm %s35,%vm1,1
	brne.l %s35, %s34, .LBB0_4
	svm %s35,%vm1,2
	brne.l %s35, %s34, .LBB0_4
	svm %s35,%vm1,3
	cmps.l %s34, %s35, %s34
	or %s0, 0, (0)1
	cmov.l.eq %s0, (63)0, %s34
.LBB0_4:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	vfmkat, .Lfunc_end0-vfmkat

	.globl	vfmkaf
	.p2align	4
	.type	vfmkaf,@function
vfmkaf:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB1_6
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_6:
	lea %s34, 256
	lvl %s34
	vfmk.l.af %vm1
	svm %s35,%vm1,0
	or %s34, 0, (0)1
	or %s0, 0, (0)1
	brne.l %s35, %s34, .LBB1_4
	svm %s35,%vm1,1
	brne.l %s35, %s34, .LBB1_4
	svm %s35,%vm1,2
	brne.l %s35, %s34, .LBB1_4
	svm %s35,%vm1,3
	cmps.l %s35, %s35, %s34
	cmov.l.eq %s34, (63)0, %s35
	or %s0, 0, %s34
.LBB1_4:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end1:
	.size	vfmkaf, .Lfunc_end1-vfmkaf

	.globl	pvfmkat
	.p2align	4
	.type	pvfmkat,@function
pvfmkat:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB2_10
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB2_10:
	lea %s34, 256
	lvl %s34
	pvfmk.w.up.at %vm2
	vfmk.w.at %vm3
	svm %s35,%vm3,0
	or %s34, -1, (0)1
	or %s0, 0, (0)1
	brne.l %s35, %s34, .LBB2_8
	svm %s35,%vm3,1
	brne.l %s35, %s34, .LBB2_8
	svm %s35,%vm3,2
	brne.l %s35, %s34, .LBB2_8
	svm %s35,%vm3,3
	brne.l %s35, %s34, .LBB2_8
	svm %s35,%vm2,0
	brne.l %s35, %s34, .LBB2_8
	svm %s35,%vm2,1
	brne.l %s35, %s34, .LBB2_8
	svm %s35,%vm2,2
	brne.l %s35, %s34, .LBB2_8
	svm %s35,%vm2,3
	cmps.l %s34, %s35, %s34
	or %s0, 0, (0)1
	cmov.l.eq %s0, (63)0, %s34
.LBB2_8:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end2:
	.size	pvfmkat, .Lfunc_end2-pvfmkat

	.globl	pvfmkaf
	.p2align	4
	.type	pvfmkaf,@function
pvfmkaf:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB3_10
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB3_10:
	lea %s34, 256
	lvl %s34
	pvfmk.w.up.af %vm2
	vfmk.w.af %vm3
	svm %s35,%vm3,0
	or %s34, 0, (0)1
	or %s0, 0, (0)1
	brne.l %s35, %s34, .LBB3_8
	svm %s35,%vm3,1
	brne.l %s35, %s34, .LBB3_8
	svm %s35,%vm3,2
	brne.l %s35, %s34, .LBB3_8
	svm %s35,%vm3,3
	brne.l %s35, %s34, .LBB3_8
	svm %s35,%vm2,0
	brne.l %s35, %s34, .LBB3_8
	svm %s35,%vm2,1
	brne.l %s35, %s34, .LBB3_8
	svm %s35,%vm2,2
	brne.l %s35, %s34, .LBB3_8
	svm %s35,%vm2,3
	cmps.l %s35, %s35, %s34
	cmov.l.eq %s34, (63)0, %s35
	or %s0, 0, %s34
.LBB3_8:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end3:
	.size	pvfmkaf, .Lfunc_end3-pvfmkaf


	.ident	"clang version 9.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/clang.git 4422c49f6a312b83b13345928bc987dfdbf803be) (llvm/llvm.git b11fc090e9c501417933be968463aa9dc5df08db)"
	.section	".note.GNU-stack","",@progbits
