	.text
	.file	"vel_vfmkataf.c"
	.globl	vel_vfmklat
	.p2align	4
	.type	vel_vfmklat,@function
vel_vfmklat:
	lea %s0, 256
	lvl %s0
	vfmk.l.at %vm1
	svm %s0, %vm1, 0
	breq.l -1, %s0, .LBB0_2
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB0_2:
	svm %s0, %vm1, 1
	breq.l -1, %s0, .LBB0_4
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB0_4:
	svm %s0, %vm1, 2
	breq.l -1, %s0, .LBB0_6
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB0_6:
	svm %s0, %vm1, 3
	cmps.l %s0, %s0, (0)0
	ldz %s0, %s0
	srl %s0, %s0, 6
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vel_vfmklat, .Lfunc_end0-vel_vfmklat

	.globl	vel_vfmklaf
	.p2align	4
	.type	vel_vfmklaf,@function
vel_vfmklaf:
	lea %s0, 256
	lvl %s0
	vfmk.l.af %vm1
	svm %s0, %vm1, 0
	breq.l 0, %s0, .LBB1_2
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB1_2:
	svm %s0, %vm1, 1
	breq.l 0, %s0, .LBB1_4
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB1_4:
	svm %s0, %vm1, 2
	breq.l 0, %s0, .LBB1_6
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB1_6:
	svm %s0, %vm1, 3
	ldz %s0, %s0
	srl %s0, %s0, 6
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.Lfunc_end1:
	.size	vel_vfmklaf, .Lfunc_end1-vel_vfmklaf

	.globl	vel_pvfmkat
	.p2align	4
	.type	vel_pvfmkat,@function
vel_pvfmkat:
	lea %s0, 256
	lvl %s0
	vfmk.l.at %vm2
	vfmk.l.at %vm3
	svm %s0, %vm3, 0
	breq.l -1, %s0, .LBB2_2
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_2:
	svm %s0, %vm3, 1
	breq.l -1, %s0, .LBB2_4
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_4:
	svm %s0, %vm3, 2
	breq.l -1, %s0, .LBB2_6
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_6:
	svm %s0, %vm3, 3
	breq.l -1, %s0, .LBB2_8
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_8:
	svm %s0, %vm2, 0
	breq.l -1, %s0, .LBB2_10
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_10:
	svm %s0, %vm2, 1
	breq.l -1, %s0, .LBB2_12
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_12:
	svm %s0, %vm2, 2
	breq.l -1, %s0, .LBB2_14
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_14:
	svm %s0, %vm2, 3
	cmps.l %s0, %s0, (0)0
	ldz %s0, %s0
	srl %s0, %s0, 6
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.Lfunc_end2:
	.size	vel_pvfmkat, .Lfunc_end2-vel_pvfmkat

	.globl	vel_pvfmkaf
	.p2align	4
	.type	vel_pvfmkaf,@function
vel_pvfmkaf:
	lea %s0, 256
	lvl %s0
	vfmk.l.af %vm2
	vfmk.l.af %vm3
	svm %s0, %vm3, 0
	breq.l 0, %s0, .LBB3_2
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_2:
	svm %s0, %vm3, 1
	breq.l 0, %s0, .LBB3_4
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_4:
	svm %s0, %vm3, 2
	breq.l 0, %s0, .LBB3_6
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_6:
	svm %s0, %vm3, 3
	breq.l 0, %s0, .LBB3_8
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_8:
	svm %s0, %vm2, 0
	breq.l 0, %s0, .LBB3_10
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_10:
	svm %s0, %vm2, 1
	breq.l 0, %s0, .LBB3_12
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_12:
	svm %s0, %vm2, 2
	breq.l 0, %s0, .LBB3_14
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_14:
	svm %s0, %vm2, 3
	ldz %s0, %s0
	srl %s0, %s0, 6
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.Lfunc_end3:
	.size	vel_pvfmkaf, .Lfunc_end3-vel_pvfmkaf

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang 649a28b2e28d892a4679ced967ef8d47f2ca6f94)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
