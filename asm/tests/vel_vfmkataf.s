	.text
	.file	"vel_vfmkataf.c"
	.globl	vel_vfmklat                     # -- Begin function vel_vfmklat
	.p2align	4
	.type	vel_vfmklat,@function
vel_vfmklat:                            # @vel_vfmklat
# %bb.0:
	lea %s0, 256
	lvl %s0
	vfmk.l.at %vm1
	svm %s0, %vm1, 0
	breq.l -1, %s0, .LBB0_2
# %bb.1:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB0_2:
	svm %s0, %vm1, 1
	breq.l -1, %s0, .LBB0_4
# %bb.3:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB0_4:
	svm %s0, %vm1, 2
	breq.l -1, %s0, .LBB0_6
# %bb.5:
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
                                        # -- End function
	.globl	vel_vfmklaf                     # -- Begin function vel_vfmklaf
	.p2align	4
	.type	vel_vfmklaf,@function
vel_vfmklaf:                            # @vel_vfmklaf
# %bb.0:
	lea %s0, 256
	lvl %s0
	vfmk.l.af %vm1
	svm %s0, %vm1, 0
	breq.l 0, %s0, .LBB1_2
# %bb.1:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB1_2:
	svm %s0, %vm1, 1
	breq.l 0, %s0, .LBB1_4
# %bb.3:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB1_4:
	svm %s0, %vm1, 2
	breq.l 0, %s0, .LBB1_6
# %bb.5:
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
                                        # -- End function
	.globl	vel_pvfmkat                     # -- Begin function vel_pvfmkat
	.p2align	4
	.type	vel_pvfmkat,@function
vel_pvfmkat:                            # @vel_pvfmkat
# %bb.0:
	lea %s0, 256
	lvl %s0
	vfmk.l.at %vm2
	vfmk.l.at %vm3
	svm %s0, %vm3, 0
	breq.l -1, %s0, .LBB2_2
# %bb.1:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_2:
	svm %s0, %vm3, 1
	breq.l -1, %s0, .LBB2_4
# %bb.3:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_4:
	svm %s0, %vm3, 2
	breq.l -1, %s0, .LBB2_6
# %bb.5:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_6:
	svm %s0, %vm3, 3
	breq.l -1, %s0, .LBB2_8
# %bb.7:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_8:
	svm %s0, %vm2, 0
	breq.l -1, %s0, .LBB2_10
# %bb.9:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_10:
	svm %s0, %vm2, 1
	breq.l -1, %s0, .LBB2_12
# %bb.11:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB2_12:
	svm %s0, %vm2, 2
	breq.l -1, %s0, .LBB2_14
# %bb.13:
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
                                        # -- End function
	.globl	vel_pvfmkaf                     # -- Begin function vel_pvfmkaf
	.p2align	4
	.type	vel_pvfmkaf,@function
vel_pvfmkaf:                            # @vel_pvfmkaf
# %bb.0:
	lea %s0, 256
	lvl %s0
	vfmk.l.af %vm2
	vfmk.l.af %vm3
	svm %s0, %vm3, 0
	breq.l 0, %s0, .LBB3_2
# %bb.1:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_2:
	svm %s0, %vm3, 1
	breq.l 0, %s0, .LBB3_4
# %bb.3:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_4:
	svm %s0, %vm3, 2
	breq.l 0, %s0, .LBB3_6
# %bb.5:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_6:
	svm %s0, %vm3, 3
	breq.l 0, %s0, .LBB3_8
# %bb.7:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_8:
	svm %s0, %vm2, 0
	breq.l 0, %s0, .LBB3_10
# %bb.9:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_10:
	svm %s0, %vm2, 1
	breq.l 0, %s0, .LBB3_12
# %bb.11:
	or %s0, 0, (0)1
	adds.w.sx %s0, %s0, (0)1
	b.l.t (, %s10)
.LBB3_12:
	svm %s0, %vm2, 2
	breq.l 0, %s0, .LBB3_14
# %bb.13:
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
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git e570410190bb70408e4f61459b2f988e92caea54)"
	.section	".note.GNU-stack","",@progbits
