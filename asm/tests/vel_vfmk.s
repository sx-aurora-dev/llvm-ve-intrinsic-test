	.text
	.file	"vel_vfmk.cc"
	.globl	_Z15vel_vfmklgt_mvlPmPKl        # -- Begin function _Z15vel_vfmklgt_mvlPmPKl
	.p2align	4
	.type	_Z15vel_vfmklgt_mvlPmPKl,@function
_Z15vel_vfmklgt_mvlPmPKl:               # @_Z15vel_vfmklgt_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.gt %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z15vel_vfmklgt_mvlPmPKl, .Lfunc_end0-_Z15vel_vfmklgt_mvlPmPKl
                                        # -- End function
	.globl	_Z15vel_vfmkllt_mvlPmPKl        # -- Begin function _Z15vel_vfmkllt_mvlPmPKl
	.p2align	4
	.type	_Z15vel_vfmkllt_mvlPmPKl,@function
_Z15vel_vfmkllt_mvlPmPKl:               # @_Z15vel_vfmkllt_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.lt %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z15vel_vfmkllt_mvlPmPKl, .Lfunc_end1-_Z15vel_vfmkllt_mvlPmPKl
                                        # -- End function
	.globl	_Z15vel_vfmklne_mvlPmPKl        # -- Begin function _Z15vel_vfmklne_mvlPmPKl
	.p2align	4
	.type	_Z15vel_vfmklne_mvlPmPKl,@function
_Z15vel_vfmklne_mvlPmPKl:               # @_Z15vel_vfmklne_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.ne %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z15vel_vfmklne_mvlPmPKl, .Lfunc_end2-_Z15vel_vfmklne_mvlPmPKl
                                        # -- End function
	.globl	_Z15vel_vfmkleq_mvlPmPKl        # -- Begin function _Z15vel_vfmkleq_mvlPmPKl
	.p2align	4
	.type	_Z15vel_vfmkleq_mvlPmPKl,@function
_Z15vel_vfmkleq_mvlPmPKl:               # @_Z15vel_vfmkleq_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.eq %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z15vel_vfmkleq_mvlPmPKl, .Lfunc_end3-_Z15vel_vfmkleq_mvlPmPKl
                                        # -- End function
	.globl	_Z15vel_vfmklge_mvlPmPKl        # -- Begin function _Z15vel_vfmklge_mvlPmPKl
	.p2align	4
	.type	_Z15vel_vfmklge_mvlPmPKl,@function
_Z15vel_vfmklge_mvlPmPKl:               # @_Z15vel_vfmklge_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.ge %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end4:
	.size	_Z15vel_vfmklge_mvlPmPKl, .Lfunc_end4-_Z15vel_vfmklge_mvlPmPKl
                                        # -- End function
	.globl	_Z15vel_vfmklle_mvlPmPKl        # -- Begin function _Z15vel_vfmklle_mvlPmPKl
	.p2align	4
	.type	_Z15vel_vfmklle_mvlPmPKl,@function
_Z15vel_vfmklle_mvlPmPKl:               # @_Z15vel_vfmklle_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.le %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end5:
	.size	_Z15vel_vfmklle_mvlPmPKl, .Lfunc_end5-_Z15vel_vfmklle_mvlPmPKl
                                        # -- End function
	.globl	_Z16vel_vfmklnum_mvlPmPKl       # -- Begin function _Z16vel_vfmklnum_mvlPmPKl
	.p2align	4
	.type	_Z16vel_vfmklnum_mvlPmPKl,@function
_Z16vel_vfmklnum_mvlPmPKl:              # @_Z16vel_vfmklnum_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.num %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end6:
	.size	_Z16vel_vfmklnum_mvlPmPKl, .Lfunc_end6-_Z16vel_vfmklnum_mvlPmPKl
                                        # -- End function
	.globl	_Z16vel_vfmklnan_mvlPmPKl       # -- Begin function _Z16vel_vfmklnan_mvlPmPKl
	.p2align	4
	.type	_Z16vel_vfmklnan_mvlPmPKl,@function
_Z16vel_vfmklnan_mvlPmPKl:              # @_Z16vel_vfmklnan_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.nan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end7:
	.size	_Z16vel_vfmklnan_mvlPmPKl, .Lfunc_end7-_Z16vel_vfmklnan_mvlPmPKl
                                        # -- End function
	.globl	_Z18vel_vfmklgtnan_mvlPmPKl     # -- Begin function _Z18vel_vfmklgtnan_mvlPmPKl
	.p2align	4
	.type	_Z18vel_vfmklgtnan_mvlPmPKl,@function
_Z18vel_vfmklgtnan_mvlPmPKl:            # @_Z18vel_vfmklgtnan_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.gtnan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end8:
	.size	_Z18vel_vfmklgtnan_mvlPmPKl, .Lfunc_end8-_Z18vel_vfmklgtnan_mvlPmPKl
                                        # -- End function
	.globl	_Z18vel_vfmklltnan_mvlPmPKl     # -- Begin function _Z18vel_vfmklltnan_mvlPmPKl
	.p2align	4
	.type	_Z18vel_vfmklltnan_mvlPmPKl,@function
_Z18vel_vfmklltnan_mvlPmPKl:            # @_Z18vel_vfmklltnan_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.ltnan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end9:
	.size	_Z18vel_vfmklltnan_mvlPmPKl, .Lfunc_end9-_Z18vel_vfmklltnan_mvlPmPKl
                                        # -- End function
	.globl	_Z18vel_vfmklnenan_mvlPmPKl     # -- Begin function _Z18vel_vfmklnenan_mvlPmPKl
	.p2align	4
	.type	_Z18vel_vfmklnenan_mvlPmPKl,@function
_Z18vel_vfmklnenan_mvlPmPKl:            # @_Z18vel_vfmklnenan_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.nenan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end10:
	.size	_Z18vel_vfmklnenan_mvlPmPKl, .Lfunc_end10-_Z18vel_vfmklnenan_mvlPmPKl
                                        # -- End function
	.globl	_Z18vel_vfmkleqnan_mvlPmPKl     # -- Begin function _Z18vel_vfmkleqnan_mvlPmPKl
	.p2align	4
	.type	_Z18vel_vfmkleqnan_mvlPmPKl,@function
_Z18vel_vfmkleqnan_mvlPmPKl:            # @_Z18vel_vfmkleqnan_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.eqnan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end11:
	.size	_Z18vel_vfmkleqnan_mvlPmPKl, .Lfunc_end11-_Z18vel_vfmkleqnan_mvlPmPKl
                                        # -- End function
	.globl	_Z18vel_vfmklgenan_mvlPmPKl     # -- Begin function _Z18vel_vfmklgenan_mvlPmPKl
	.p2align	4
	.type	_Z18vel_vfmklgenan_mvlPmPKl,@function
_Z18vel_vfmklgenan_mvlPmPKl:            # @_Z18vel_vfmklgenan_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.genan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end12:
	.size	_Z18vel_vfmklgenan_mvlPmPKl, .Lfunc_end12-_Z18vel_vfmklgenan_mvlPmPKl
                                        # -- End function
	.globl	_Z18vel_vfmkllenan_mvlPmPKl     # -- Begin function _Z18vel_vfmkllenan_mvlPmPKl
	.p2align	4
	.type	_Z18vel_vfmkllenan_mvlPmPKl,@function
_Z18vel_vfmkllenan_mvlPmPKl:            # @_Z18vel_vfmkllenan_mvlPmPKl
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.l.lenan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end13:
	.size	_Z18vel_vfmkllenan_mvlPmPKl, .Lfunc_end13-_Z18vel_vfmkllenan_mvlPmPKl
                                        # -- End function
	.globl	_Z15vel_vfmkwgt_mvlPmPKi        # -- Begin function _Z15vel_vfmkwgt_mvlPmPKi
	.p2align	4
	.type	_Z15vel_vfmkwgt_mvlPmPKi,@function
_Z15vel_vfmkwgt_mvlPmPKi:               # @_Z15vel_vfmkwgt_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.gt %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end14:
	.size	_Z15vel_vfmkwgt_mvlPmPKi, .Lfunc_end14-_Z15vel_vfmkwgt_mvlPmPKi
                                        # -- End function
	.globl	_Z15vel_vfmkwlt_mvlPmPKi        # -- Begin function _Z15vel_vfmkwlt_mvlPmPKi
	.p2align	4
	.type	_Z15vel_vfmkwlt_mvlPmPKi,@function
_Z15vel_vfmkwlt_mvlPmPKi:               # @_Z15vel_vfmkwlt_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.lt %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end15:
	.size	_Z15vel_vfmkwlt_mvlPmPKi, .Lfunc_end15-_Z15vel_vfmkwlt_mvlPmPKi
                                        # -- End function
	.globl	_Z15vel_vfmkwne_mvlPmPKi        # -- Begin function _Z15vel_vfmkwne_mvlPmPKi
	.p2align	4
	.type	_Z15vel_vfmkwne_mvlPmPKi,@function
_Z15vel_vfmkwne_mvlPmPKi:               # @_Z15vel_vfmkwne_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.ne %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end16:
	.size	_Z15vel_vfmkwne_mvlPmPKi, .Lfunc_end16-_Z15vel_vfmkwne_mvlPmPKi
                                        # -- End function
	.globl	_Z15vel_vfmkweq_mvlPmPKi        # -- Begin function _Z15vel_vfmkweq_mvlPmPKi
	.p2align	4
	.type	_Z15vel_vfmkweq_mvlPmPKi,@function
_Z15vel_vfmkweq_mvlPmPKi:               # @_Z15vel_vfmkweq_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.eq %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end17:
	.size	_Z15vel_vfmkweq_mvlPmPKi, .Lfunc_end17-_Z15vel_vfmkweq_mvlPmPKi
                                        # -- End function
	.globl	_Z15vel_vfmkwge_mvlPmPKi        # -- Begin function _Z15vel_vfmkwge_mvlPmPKi
	.p2align	4
	.type	_Z15vel_vfmkwge_mvlPmPKi,@function
_Z15vel_vfmkwge_mvlPmPKi:               # @_Z15vel_vfmkwge_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.ge %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end18:
	.size	_Z15vel_vfmkwge_mvlPmPKi, .Lfunc_end18-_Z15vel_vfmkwge_mvlPmPKi
                                        # -- End function
	.globl	_Z15vel_vfmkwle_mvlPmPKi        # -- Begin function _Z15vel_vfmkwle_mvlPmPKi
	.p2align	4
	.type	_Z15vel_vfmkwle_mvlPmPKi,@function
_Z15vel_vfmkwle_mvlPmPKi:               # @_Z15vel_vfmkwle_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.le %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end19:
	.size	_Z15vel_vfmkwle_mvlPmPKi, .Lfunc_end19-_Z15vel_vfmkwle_mvlPmPKi
                                        # -- End function
	.globl	_Z16vel_vfmkwnum_mvlPmPKi       # -- Begin function _Z16vel_vfmkwnum_mvlPmPKi
	.p2align	4
	.type	_Z16vel_vfmkwnum_mvlPmPKi,@function
_Z16vel_vfmkwnum_mvlPmPKi:              # @_Z16vel_vfmkwnum_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.num %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end20:
	.size	_Z16vel_vfmkwnum_mvlPmPKi, .Lfunc_end20-_Z16vel_vfmkwnum_mvlPmPKi
                                        # -- End function
	.globl	_Z16vel_vfmkwnan_mvlPmPKi       # -- Begin function _Z16vel_vfmkwnan_mvlPmPKi
	.p2align	4
	.type	_Z16vel_vfmkwnan_mvlPmPKi,@function
_Z16vel_vfmkwnan_mvlPmPKi:              # @_Z16vel_vfmkwnan_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.nan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end21:
	.size	_Z16vel_vfmkwnan_mvlPmPKi, .Lfunc_end21-_Z16vel_vfmkwnan_mvlPmPKi
                                        # -- End function
	.globl	_Z18vel_vfmkwgtnan_mvlPmPKi     # -- Begin function _Z18vel_vfmkwgtnan_mvlPmPKi
	.p2align	4
	.type	_Z18vel_vfmkwgtnan_mvlPmPKi,@function
_Z18vel_vfmkwgtnan_mvlPmPKi:            # @_Z18vel_vfmkwgtnan_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.gtnan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end22:
	.size	_Z18vel_vfmkwgtnan_mvlPmPKi, .Lfunc_end22-_Z18vel_vfmkwgtnan_mvlPmPKi
                                        # -- End function
	.globl	_Z18vel_vfmkwltnan_mvlPmPKi     # -- Begin function _Z18vel_vfmkwltnan_mvlPmPKi
	.p2align	4
	.type	_Z18vel_vfmkwltnan_mvlPmPKi,@function
_Z18vel_vfmkwltnan_mvlPmPKi:            # @_Z18vel_vfmkwltnan_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.ltnan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end23:
	.size	_Z18vel_vfmkwltnan_mvlPmPKi, .Lfunc_end23-_Z18vel_vfmkwltnan_mvlPmPKi
                                        # -- End function
	.globl	_Z18vel_vfmkwnenan_mvlPmPKi     # -- Begin function _Z18vel_vfmkwnenan_mvlPmPKi
	.p2align	4
	.type	_Z18vel_vfmkwnenan_mvlPmPKi,@function
_Z18vel_vfmkwnenan_mvlPmPKi:            # @_Z18vel_vfmkwnenan_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.nenan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end24:
	.size	_Z18vel_vfmkwnenan_mvlPmPKi, .Lfunc_end24-_Z18vel_vfmkwnenan_mvlPmPKi
                                        # -- End function
	.globl	_Z18vel_vfmkweqnan_mvlPmPKi     # -- Begin function _Z18vel_vfmkweqnan_mvlPmPKi
	.p2align	4
	.type	_Z18vel_vfmkweqnan_mvlPmPKi,@function
_Z18vel_vfmkweqnan_mvlPmPKi:            # @_Z18vel_vfmkweqnan_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.eqnan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end25:
	.size	_Z18vel_vfmkweqnan_mvlPmPKi, .Lfunc_end25-_Z18vel_vfmkweqnan_mvlPmPKi
                                        # -- End function
	.globl	_Z18vel_vfmkwgenan_mvlPmPKi     # -- Begin function _Z18vel_vfmkwgenan_mvlPmPKi
	.p2align	4
	.type	_Z18vel_vfmkwgenan_mvlPmPKi,@function
_Z18vel_vfmkwgenan_mvlPmPKi:            # @_Z18vel_vfmkwgenan_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.genan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end26:
	.size	_Z18vel_vfmkwgenan_mvlPmPKi, .Lfunc_end26-_Z18vel_vfmkwgenan_mvlPmPKi
                                        # -- End function
	.globl	_Z18vel_vfmkwlenan_mvlPmPKi     # -- Begin function _Z18vel_vfmkwlenan_mvlPmPKi
	.p2align	4
	.type	_Z18vel_vfmkwlenan_mvlPmPKi,@function
_Z18vel_vfmkwlenan_mvlPmPKi:            # @_Z18vel_vfmkwlenan_mvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldl.sx %v0, 4, %s1
	vfmk.l.lenan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end27:
	.size	_Z18vel_vfmkwlenan_mvlPmPKi, .Lfunc_end27-_Z18vel_vfmkwlenan_mvlPmPKi
                                        # -- End function
	.globl	_Z15vel_vfmkdgt_mvlPmPKd        # -- Begin function _Z15vel_vfmkdgt_mvlPmPKd
	.p2align	4
	.type	_Z15vel_vfmkdgt_mvlPmPKd,@function
_Z15vel_vfmkdgt_mvlPmPKd:               # @_Z15vel_vfmkdgt_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.gt %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end28:
	.size	_Z15vel_vfmkdgt_mvlPmPKd, .Lfunc_end28-_Z15vel_vfmkdgt_mvlPmPKd
                                        # -- End function
	.globl	_Z15vel_vfmkdlt_mvlPmPKd        # -- Begin function _Z15vel_vfmkdlt_mvlPmPKd
	.p2align	4
	.type	_Z15vel_vfmkdlt_mvlPmPKd,@function
_Z15vel_vfmkdlt_mvlPmPKd:               # @_Z15vel_vfmkdlt_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.lt %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end29:
	.size	_Z15vel_vfmkdlt_mvlPmPKd, .Lfunc_end29-_Z15vel_vfmkdlt_mvlPmPKd
                                        # -- End function
	.globl	_Z15vel_vfmkdne_mvlPmPKd        # -- Begin function _Z15vel_vfmkdne_mvlPmPKd
	.p2align	4
	.type	_Z15vel_vfmkdne_mvlPmPKd,@function
_Z15vel_vfmkdne_mvlPmPKd:               # @_Z15vel_vfmkdne_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.ne %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end30:
	.size	_Z15vel_vfmkdne_mvlPmPKd, .Lfunc_end30-_Z15vel_vfmkdne_mvlPmPKd
                                        # -- End function
	.globl	_Z15vel_vfmkdeq_mvlPmPKd        # -- Begin function _Z15vel_vfmkdeq_mvlPmPKd
	.p2align	4
	.type	_Z15vel_vfmkdeq_mvlPmPKd,@function
_Z15vel_vfmkdeq_mvlPmPKd:               # @_Z15vel_vfmkdeq_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.eq %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end31:
	.size	_Z15vel_vfmkdeq_mvlPmPKd, .Lfunc_end31-_Z15vel_vfmkdeq_mvlPmPKd
                                        # -- End function
	.globl	_Z15vel_vfmkdge_mvlPmPKd        # -- Begin function _Z15vel_vfmkdge_mvlPmPKd
	.p2align	4
	.type	_Z15vel_vfmkdge_mvlPmPKd,@function
_Z15vel_vfmkdge_mvlPmPKd:               # @_Z15vel_vfmkdge_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.ge %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end32:
	.size	_Z15vel_vfmkdge_mvlPmPKd, .Lfunc_end32-_Z15vel_vfmkdge_mvlPmPKd
                                        # -- End function
	.globl	_Z15vel_vfmkdle_mvlPmPKd        # -- Begin function _Z15vel_vfmkdle_mvlPmPKd
	.p2align	4
	.type	_Z15vel_vfmkdle_mvlPmPKd,@function
_Z15vel_vfmkdle_mvlPmPKd:               # @_Z15vel_vfmkdle_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.le %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end33:
	.size	_Z15vel_vfmkdle_mvlPmPKd, .Lfunc_end33-_Z15vel_vfmkdle_mvlPmPKd
                                        # -- End function
	.globl	_Z16vel_vfmkdnum_mvlPmPKd       # -- Begin function _Z16vel_vfmkdnum_mvlPmPKd
	.p2align	4
	.type	_Z16vel_vfmkdnum_mvlPmPKd,@function
_Z16vel_vfmkdnum_mvlPmPKd:              # @_Z16vel_vfmkdnum_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.num %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end34:
	.size	_Z16vel_vfmkdnum_mvlPmPKd, .Lfunc_end34-_Z16vel_vfmkdnum_mvlPmPKd
                                        # -- End function
	.globl	_Z16vel_vfmkdnan_mvlPmPKd       # -- Begin function _Z16vel_vfmkdnan_mvlPmPKd
	.p2align	4
	.type	_Z16vel_vfmkdnan_mvlPmPKd,@function
_Z16vel_vfmkdnan_mvlPmPKd:              # @_Z16vel_vfmkdnan_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.nan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end35:
	.size	_Z16vel_vfmkdnan_mvlPmPKd, .Lfunc_end35-_Z16vel_vfmkdnan_mvlPmPKd
                                        # -- End function
	.globl	_Z18vel_vfmkdgtnan_mvlPmPKd     # -- Begin function _Z18vel_vfmkdgtnan_mvlPmPKd
	.p2align	4
	.type	_Z18vel_vfmkdgtnan_mvlPmPKd,@function
_Z18vel_vfmkdgtnan_mvlPmPKd:            # @_Z18vel_vfmkdgtnan_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.gtnan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end36:
	.size	_Z18vel_vfmkdgtnan_mvlPmPKd, .Lfunc_end36-_Z18vel_vfmkdgtnan_mvlPmPKd
                                        # -- End function
	.globl	_Z18vel_vfmkdltnan_mvlPmPKd     # -- Begin function _Z18vel_vfmkdltnan_mvlPmPKd
	.p2align	4
	.type	_Z18vel_vfmkdltnan_mvlPmPKd,@function
_Z18vel_vfmkdltnan_mvlPmPKd:            # @_Z18vel_vfmkdltnan_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.ltnan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end37:
	.size	_Z18vel_vfmkdltnan_mvlPmPKd, .Lfunc_end37-_Z18vel_vfmkdltnan_mvlPmPKd
                                        # -- End function
	.globl	_Z18vel_vfmkdnenan_mvlPmPKd     # -- Begin function _Z18vel_vfmkdnenan_mvlPmPKd
	.p2align	4
	.type	_Z18vel_vfmkdnenan_mvlPmPKd,@function
_Z18vel_vfmkdnenan_mvlPmPKd:            # @_Z18vel_vfmkdnenan_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.nenan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end38:
	.size	_Z18vel_vfmkdnenan_mvlPmPKd, .Lfunc_end38-_Z18vel_vfmkdnenan_mvlPmPKd
                                        # -- End function
	.globl	_Z18vel_vfmkdeqnan_mvlPmPKd     # -- Begin function _Z18vel_vfmkdeqnan_mvlPmPKd
	.p2align	4
	.type	_Z18vel_vfmkdeqnan_mvlPmPKd,@function
_Z18vel_vfmkdeqnan_mvlPmPKd:            # @_Z18vel_vfmkdeqnan_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.eqnan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end39:
	.size	_Z18vel_vfmkdeqnan_mvlPmPKd, .Lfunc_end39-_Z18vel_vfmkdeqnan_mvlPmPKd
                                        # -- End function
	.globl	_Z18vel_vfmkdgenan_mvlPmPKd     # -- Begin function _Z18vel_vfmkdgenan_mvlPmPKd
	.p2align	4
	.type	_Z18vel_vfmkdgenan_mvlPmPKd,@function
_Z18vel_vfmkdgenan_mvlPmPKd:            # @_Z18vel_vfmkdgenan_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.genan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end40:
	.size	_Z18vel_vfmkdgenan_mvlPmPKd, .Lfunc_end40-_Z18vel_vfmkdgenan_mvlPmPKd
                                        # -- End function
	.globl	_Z18vel_vfmkdlenan_mvlPmPKd     # -- Begin function _Z18vel_vfmkdlenan_mvlPmPKd
	.p2align	4
	.type	_Z18vel_vfmkdlenan_mvlPmPKd,@function
_Z18vel_vfmkdlenan_mvlPmPKd:            # @_Z18vel_vfmkdlenan_mvlPmPKd
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	vfmk.d.lenan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end41:
	.size	_Z18vel_vfmkdlenan_mvlPmPKd, .Lfunc_end41-_Z18vel_vfmkdlenan_mvlPmPKd
                                        # -- End function
	.globl	_Z15vel_vfmksgt_mvlPmPKf        # -- Begin function _Z15vel_vfmksgt_mvlPmPKf
	.p2align	4
	.type	_Z15vel_vfmksgt_mvlPmPKf,@function
_Z15vel_vfmksgt_mvlPmPKf:               # @_Z15vel_vfmksgt_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.gt %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end42:
	.size	_Z15vel_vfmksgt_mvlPmPKf, .Lfunc_end42-_Z15vel_vfmksgt_mvlPmPKf
                                        # -- End function
	.globl	_Z15vel_vfmkslt_mvlPmPKf        # -- Begin function _Z15vel_vfmkslt_mvlPmPKf
	.p2align	4
	.type	_Z15vel_vfmkslt_mvlPmPKf,@function
_Z15vel_vfmkslt_mvlPmPKf:               # @_Z15vel_vfmkslt_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.lt %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end43:
	.size	_Z15vel_vfmkslt_mvlPmPKf, .Lfunc_end43-_Z15vel_vfmkslt_mvlPmPKf
                                        # -- End function
	.globl	_Z15vel_vfmksne_mvlPmPKf        # -- Begin function _Z15vel_vfmksne_mvlPmPKf
	.p2align	4
	.type	_Z15vel_vfmksne_mvlPmPKf,@function
_Z15vel_vfmksne_mvlPmPKf:               # @_Z15vel_vfmksne_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.ne %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end44:
	.size	_Z15vel_vfmksne_mvlPmPKf, .Lfunc_end44-_Z15vel_vfmksne_mvlPmPKf
                                        # -- End function
	.globl	_Z15vel_vfmkseq_mvlPmPKf        # -- Begin function _Z15vel_vfmkseq_mvlPmPKf
	.p2align	4
	.type	_Z15vel_vfmkseq_mvlPmPKf,@function
_Z15vel_vfmkseq_mvlPmPKf:               # @_Z15vel_vfmkseq_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.eq %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end45:
	.size	_Z15vel_vfmkseq_mvlPmPKf, .Lfunc_end45-_Z15vel_vfmkseq_mvlPmPKf
                                        # -- End function
	.globl	_Z15vel_vfmksge_mvlPmPKf        # -- Begin function _Z15vel_vfmksge_mvlPmPKf
	.p2align	4
	.type	_Z15vel_vfmksge_mvlPmPKf,@function
_Z15vel_vfmksge_mvlPmPKf:               # @_Z15vel_vfmksge_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.ge %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end46:
	.size	_Z15vel_vfmksge_mvlPmPKf, .Lfunc_end46-_Z15vel_vfmksge_mvlPmPKf
                                        # -- End function
	.globl	_Z15vel_vfmksle_mvlPmPKf        # -- Begin function _Z15vel_vfmksle_mvlPmPKf
	.p2align	4
	.type	_Z15vel_vfmksle_mvlPmPKf,@function
_Z15vel_vfmksle_mvlPmPKf:               # @_Z15vel_vfmksle_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.le %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end47:
	.size	_Z15vel_vfmksle_mvlPmPKf, .Lfunc_end47-_Z15vel_vfmksle_mvlPmPKf
                                        # -- End function
	.globl	_Z16vel_vfmksnum_mvlPmPKf       # -- Begin function _Z16vel_vfmksnum_mvlPmPKf
	.p2align	4
	.type	_Z16vel_vfmksnum_mvlPmPKf,@function
_Z16vel_vfmksnum_mvlPmPKf:              # @_Z16vel_vfmksnum_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.num %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end48:
	.size	_Z16vel_vfmksnum_mvlPmPKf, .Lfunc_end48-_Z16vel_vfmksnum_mvlPmPKf
                                        # -- End function
	.globl	_Z16vel_vfmksnan_mvlPmPKf       # -- Begin function _Z16vel_vfmksnan_mvlPmPKf
	.p2align	4
	.type	_Z16vel_vfmksnan_mvlPmPKf,@function
_Z16vel_vfmksnan_mvlPmPKf:              # @_Z16vel_vfmksnan_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.nan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end49:
	.size	_Z16vel_vfmksnan_mvlPmPKf, .Lfunc_end49-_Z16vel_vfmksnan_mvlPmPKf
                                        # -- End function
	.globl	_Z18vel_vfmksgtnan_mvlPmPKf     # -- Begin function _Z18vel_vfmksgtnan_mvlPmPKf
	.p2align	4
	.type	_Z18vel_vfmksgtnan_mvlPmPKf,@function
_Z18vel_vfmksgtnan_mvlPmPKf:            # @_Z18vel_vfmksgtnan_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.gtnan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end50:
	.size	_Z18vel_vfmksgtnan_mvlPmPKf, .Lfunc_end50-_Z18vel_vfmksgtnan_mvlPmPKf
                                        # -- End function
	.globl	_Z18vel_vfmksltnan_mvlPmPKf     # -- Begin function _Z18vel_vfmksltnan_mvlPmPKf
	.p2align	4
	.type	_Z18vel_vfmksltnan_mvlPmPKf,@function
_Z18vel_vfmksltnan_mvlPmPKf:            # @_Z18vel_vfmksltnan_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.ltnan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end51:
	.size	_Z18vel_vfmksltnan_mvlPmPKf, .Lfunc_end51-_Z18vel_vfmksltnan_mvlPmPKf
                                        # -- End function
	.globl	_Z18vel_vfmksnenan_mvlPmPKf     # -- Begin function _Z18vel_vfmksnenan_mvlPmPKf
	.p2align	4
	.type	_Z18vel_vfmksnenan_mvlPmPKf,@function
_Z18vel_vfmksnenan_mvlPmPKf:            # @_Z18vel_vfmksnenan_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.nenan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end52:
	.size	_Z18vel_vfmksnenan_mvlPmPKf, .Lfunc_end52-_Z18vel_vfmksnenan_mvlPmPKf
                                        # -- End function
	.globl	_Z18vel_vfmkseqnan_mvlPmPKf     # -- Begin function _Z18vel_vfmkseqnan_mvlPmPKf
	.p2align	4
	.type	_Z18vel_vfmkseqnan_mvlPmPKf,@function
_Z18vel_vfmkseqnan_mvlPmPKf:            # @_Z18vel_vfmkseqnan_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.eqnan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end53:
	.size	_Z18vel_vfmkseqnan_mvlPmPKf, .Lfunc_end53-_Z18vel_vfmkseqnan_mvlPmPKf
                                        # -- End function
	.globl	_Z18vel_vfmksgenan_mvlPmPKf     # -- Begin function _Z18vel_vfmksgenan_mvlPmPKf
	.p2align	4
	.type	_Z18vel_vfmksgenan_mvlPmPKf,@function
_Z18vel_vfmksgenan_mvlPmPKf:            # @_Z18vel_vfmksgenan_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.genan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end54:
	.size	_Z18vel_vfmksgenan_mvlPmPKf, .Lfunc_end54-_Z18vel_vfmksgenan_mvlPmPKf
                                        # -- End function
	.globl	_Z18vel_vfmkslenan_mvlPmPKf     # -- Begin function _Z18vel_vfmkslenan_mvlPmPKf
	.p2align	4
	.type	_Z18vel_vfmkslenan_mvlPmPKf,@function
_Z18vel_vfmkslenan_mvlPmPKf:            # @_Z18vel_vfmkslenan_mvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s1
	vfmk.l.lenan %vm1, %v0
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end55:
	.size	_Z18vel_vfmkslenan_mvlPmPKf, .Lfunc_end55-_Z18vel_vfmkslenan_mvlPmPKf
                                        # -- End function
	.globl	_Z16vel_vfmklgt_mvmlPmPKlPKm    # -- Begin function _Z16vel_vfmklgt_mvmlPmPKlPKm
	.p2align	4
	.type	_Z16vel_vfmklgt_mvmlPmPKlPKm,@function
_Z16vel_vfmklgt_mvmlPmPKlPKm:           # @_Z16vel_vfmklgt_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.gt %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end56:
	.size	_Z16vel_vfmklgt_mvmlPmPKlPKm, .Lfunc_end56-_Z16vel_vfmklgt_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z16vel_vfmkllt_mvmlPmPKlPKm    # -- Begin function _Z16vel_vfmkllt_mvmlPmPKlPKm
	.p2align	4
	.type	_Z16vel_vfmkllt_mvmlPmPKlPKm,@function
_Z16vel_vfmkllt_mvmlPmPKlPKm:           # @_Z16vel_vfmkllt_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.lt %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end57:
	.size	_Z16vel_vfmkllt_mvmlPmPKlPKm, .Lfunc_end57-_Z16vel_vfmkllt_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z16vel_vfmklne_mvmlPmPKlPKm    # -- Begin function _Z16vel_vfmklne_mvmlPmPKlPKm
	.p2align	4
	.type	_Z16vel_vfmklne_mvmlPmPKlPKm,@function
_Z16vel_vfmklne_mvmlPmPKlPKm:           # @_Z16vel_vfmklne_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.ne %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end58:
	.size	_Z16vel_vfmklne_mvmlPmPKlPKm, .Lfunc_end58-_Z16vel_vfmklne_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z16vel_vfmkleq_mvmlPmPKlPKm    # -- Begin function _Z16vel_vfmkleq_mvmlPmPKlPKm
	.p2align	4
	.type	_Z16vel_vfmkleq_mvmlPmPKlPKm,@function
_Z16vel_vfmkleq_mvmlPmPKlPKm:           # @_Z16vel_vfmkleq_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.eq %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end59:
	.size	_Z16vel_vfmkleq_mvmlPmPKlPKm, .Lfunc_end59-_Z16vel_vfmkleq_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z16vel_vfmklge_mvmlPmPKlPKm    # -- Begin function _Z16vel_vfmklge_mvmlPmPKlPKm
	.p2align	4
	.type	_Z16vel_vfmklge_mvmlPmPKlPKm,@function
_Z16vel_vfmklge_mvmlPmPKlPKm:           # @_Z16vel_vfmklge_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.ge %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end60:
	.size	_Z16vel_vfmklge_mvmlPmPKlPKm, .Lfunc_end60-_Z16vel_vfmklge_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z16vel_vfmklle_mvmlPmPKlPKm    # -- Begin function _Z16vel_vfmklle_mvmlPmPKlPKm
	.p2align	4
	.type	_Z16vel_vfmklle_mvmlPmPKlPKm,@function
_Z16vel_vfmklle_mvmlPmPKlPKm:           # @_Z16vel_vfmklle_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.le %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end61:
	.size	_Z16vel_vfmklle_mvmlPmPKlPKm, .Lfunc_end61-_Z16vel_vfmklle_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z17vel_vfmklnum_mvmlPmPKlPKm   # -- Begin function _Z17vel_vfmklnum_mvmlPmPKlPKm
	.p2align	4
	.type	_Z17vel_vfmklnum_mvmlPmPKlPKm,@function
_Z17vel_vfmklnum_mvmlPmPKlPKm:          # @_Z17vel_vfmklnum_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.num %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end62:
	.size	_Z17vel_vfmklnum_mvmlPmPKlPKm, .Lfunc_end62-_Z17vel_vfmklnum_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z17vel_vfmklnan_mvmlPmPKlPKm   # -- Begin function _Z17vel_vfmklnan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z17vel_vfmklnan_mvmlPmPKlPKm,@function
_Z17vel_vfmklnan_mvmlPmPKlPKm:          # @_Z17vel_vfmklnan_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.nan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end63:
	.size	_Z17vel_vfmklnan_mvmlPmPKlPKm, .Lfunc_end63-_Z17vel_vfmklnan_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z19vel_vfmklgtnan_mvmlPmPKlPKm # -- Begin function _Z19vel_vfmklgtnan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z19vel_vfmklgtnan_mvmlPmPKlPKm,@function
_Z19vel_vfmklgtnan_mvmlPmPKlPKm:        # @_Z19vel_vfmklgtnan_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.gtnan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end64:
	.size	_Z19vel_vfmklgtnan_mvmlPmPKlPKm, .Lfunc_end64-_Z19vel_vfmklgtnan_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z19vel_vfmklltnan_mvmlPmPKlPKm # -- Begin function _Z19vel_vfmklltnan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z19vel_vfmklltnan_mvmlPmPKlPKm,@function
_Z19vel_vfmklltnan_mvmlPmPKlPKm:        # @_Z19vel_vfmklltnan_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.ltnan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end65:
	.size	_Z19vel_vfmklltnan_mvmlPmPKlPKm, .Lfunc_end65-_Z19vel_vfmklltnan_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z19vel_vfmklnenan_mvmlPmPKlPKm # -- Begin function _Z19vel_vfmklnenan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z19vel_vfmklnenan_mvmlPmPKlPKm,@function
_Z19vel_vfmklnenan_mvmlPmPKlPKm:        # @_Z19vel_vfmklnenan_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.nenan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end66:
	.size	_Z19vel_vfmklnenan_mvmlPmPKlPKm, .Lfunc_end66-_Z19vel_vfmklnenan_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z19vel_vfmkleqnan_mvmlPmPKlPKm # -- Begin function _Z19vel_vfmkleqnan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z19vel_vfmkleqnan_mvmlPmPKlPKm,@function
_Z19vel_vfmkleqnan_mvmlPmPKlPKm:        # @_Z19vel_vfmkleqnan_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.eqnan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end67:
	.size	_Z19vel_vfmkleqnan_mvmlPmPKlPKm, .Lfunc_end67-_Z19vel_vfmkleqnan_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z19vel_vfmklgenan_mvmlPmPKlPKm # -- Begin function _Z19vel_vfmklgenan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z19vel_vfmklgenan_mvmlPmPKlPKm,@function
_Z19vel_vfmklgenan_mvmlPmPKlPKm:        # @_Z19vel_vfmklgenan_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.genan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end68:
	.size	_Z19vel_vfmklgenan_mvmlPmPKlPKm, .Lfunc_end68-_Z19vel_vfmklgenan_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z19vel_vfmkllenan_mvmlPmPKlPKm # -- Begin function _Z19vel_vfmkllenan_mvmlPmPKlPKm
	.p2align	4
	.type	_Z19vel_vfmkllenan_mvmlPmPKlPKm,@function
_Z19vel_vfmkllenan_mvmlPmPKlPKm:        # @_Z19vel_vfmkllenan_mvmlPmPKlPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.lenan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end69:
	.size	_Z19vel_vfmkllenan_mvmlPmPKlPKm, .Lfunc_end69-_Z19vel_vfmkllenan_mvmlPmPKlPKm
                                        # -- End function
	.globl	_Z16vel_vfmkwgt_mvmlPmPKiPKm    # -- Begin function _Z16vel_vfmkwgt_mvmlPmPKiPKm
	.p2align	4
	.type	_Z16vel_vfmkwgt_mvmlPmPKiPKm,@function
_Z16vel_vfmkwgt_mvmlPmPKiPKm:           # @_Z16vel_vfmkwgt_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.gt %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end70:
	.size	_Z16vel_vfmkwgt_mvmlPmPKiPKm, .Lfunc_end70-_Z16vel_vfmkwgt_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z16vel_vfmkwlt_mvmlPmPKiPKm    # -- Begin function _Z16vel_vfmkwlt_mvmlPmPKiPKm
	.p2align	4
	.type	_Z16vel_vfmkwlt_mvmlPmPKiPKm,@function
_Z16vel_vfmkwlt_mvmlPmPKiPKm:           # @_Z16vel_vfmkwlt_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.lt %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end71:
	.size	_Z16vel_vfmkwlt_mvmlPmPKiPKm, .Lfunc_end71-_Z16vel_vfmkwlt_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z16vel_vfmkwne_mvmlPmPKiPKm    # -- Begin function _Z16vel_vfmkwne_mvmlPmPKiPKm
	.p2align	4
	.type	_Z16vel_vfmkwne_mvmlPmPKiPKm,@function
_Z16vel_vfmkwne_mvmlPmPKiPKm:           # @_Z16vel_vfmkwne_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.ne %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end72:
	.size	_Z16vel_vfmkwne_mvmlPmPKiPKm, .Lfunc_end72-_Z16vel_vfmkwne_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z16vel_vfmkweq_mvmlPmPKiPKm    # -- Begin function _Z16vel_vfmkweq_mvmlPmPKiPKm
	.p2align	4
	.type	_Z16vel_vfmkweq_mvmlPmPKiPKm,@function
_Z16vel_vfmkweq_mvmlPmPKiPKm:           # @_Z16vel_vfmkweq_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.eq %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end73:
	.size	_Z16vel_vfmkweq_mvmlPmPKiPKm, .Lfunc_end73-_Z16vel_vfmkweq_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z16vel_vfmkwge_mvmlPmPKiPKm    # -- Begin function _Z16vel_vfmkwge_mvmlPmPKiPKm
	.p2align	4
	.type	_Z16vel_vfmkwge_mvmlPmPKiPKm,@function
_Z16vel_vfmkwge_mvmlPmPKiPKm:           # @_Z16vel_vfmkwge_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.ge %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end74:
	.size	_Z16vel_vfmkwge_mvmlPmPKiPKm, .Lfunc_end74-_Z16vel_vfmkwge_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z16vel_vfmkwle_mvmlPmPKiPKm    # -- Begin function _Z16vel_vfmkwle_mvmlPmPKiPKm
	.p2align	4
	.type	_Z16vel_vfmkwle_mvmlPmPKiPKm,@function
_Z16vel_vfmkwle_mvmlPmPKiPKm:           # @_Z16vel_vfmkwle_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.le %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end75:
	.size	_Z16vel_vfmkwle_mvmlPmPKiPKm, .Lfunc_end75-_Z16vel_vfmkwle_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z17vel_vfmkwnum_mvmlPmPKiPKm   # -- Begin function _Z17vel_vfmkwnum_mvmlPmPKiPKm
	.p2align	4
	.type	_Z17vel_vfmkwnum_mvmlPmPKiPKm,@function
_Z17vel_vfmkwnum_mvmlPmPKiPKm:          # @_Z17vel_vfmkwnum_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.num %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end76:
	.size	_Z17vel_vfmkwnum_mvmlPmPKiPKm, .Lfunc_end76-_Z17vel_vfmkwnum_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z17vel_vfmkwnan_mvmlPmPKiPKm   # -- Begin function _Z17vel_vfmkwnan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z17vel_vfmkwnan_mvmlPmPKiPKm,@function
_Z17vel_vfmkwnan_mvmlPmPKiPKm:          # @_Z17vel_vfmkwnan_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.nan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end77:
	.size	_Z17vel_vfmkwnan_mvmlPmPKiPKm, .Lfunc_end77-_Z17vel_vfmkwnan_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z19vel_vfmkwgtnan_mvmlPmPKiPKm # -- Begin function _Z19vel_vfmkwgtnan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z19vel_vfmkwgtnan_mvmlPmPKiPKm,@function
_Z19vel_vfmkwgtnan_mvmlPmPKiPKm:        # @_Z19vel_vfmkwgtnan_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.gtnan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end78:
	.size	_Z19vel_vfmkwgtnan_mvmlPmPKiPKm, .Lfunc_end78-_Z19vel_vfmkwgtnan_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z19vel_vfmkwltnan_mvmlPmPKiPKm # -- Begin function _Z19vel_vfmkwltnan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z19vel_vfmkwltnan_mvmlPmPKiPKm,@function
_Z19vel_vfmkwltnan_mvmlPmPKiPKm:        # @_Z19vel_vfmkwltnan_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.ltnan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end79:
	.size	_Z19vel_vfmkwltnan_mvmlPmPKiPKm, .Lfunc_end79-_Z19vel_vfmkwltnan_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z19vel_vfmkwnenan_mvmlPmPKiPKm # -- Begin function _Z19vel_vfmkwnenan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z19vel_vfmkwnenan_mvmlPmPKiPKm,@function
_Z19vel_vfmkwnenan_mvmlPmPKiPKm:        # @_Z19vel_vfmkwnenan_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.nenan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end80:
	.size	_Z19vel_vfmkwnenan_mvmlPmPKiPKm, .Lfunc_end80-_Z19vel_vfmkwnenan_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z19vel_vfmkweqnan_mvmlPmPKiPKm # -- Begin function _Z19vel_vfmkweqnan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z19vel_vfmkweqnan_mvmlPmPKiPKm,@function
_Z19vel_vfmkweqnan_mvmlPmPKiPKm:        # @_Z19vel_vfmkweqnan_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.eqnan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end81:
	.size	_Z19vel_vfmkweqnan_mvmlPmPKiPKm, .Lfunc_end81-_Z19vel_vfmkweqnan_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z19vel_vfmkwgenan_mvmlPmPKiPKm # -- Begin function _Z19vel_vfmkwgenan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z19vel_vfmkwgenan_mvmlPmPKiPKm,@function
_Z19vel_vfmkwgenan_mvmlPmPKiPKm:        # @_Z19vel_vfmkwgenan_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.genan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end82:
	.size	_Z19vel_vfmkwgenan_mvmlPmPKiPKm, .Lfunc_end82-_Z19vel_vfmkwgenan_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z19vel_vfmkwlenan_mvmlPmPKiPKm # -- Begin function _Z19vel_vfmkwlenan_mvmlPmPKiPKm
	.p2align	4
	.type	_Z19vel_vfmkwlenan_mvmlPmPKiPKm,@function
_Z19vel_vfmkwlenan_mvmlPmPKiPKm:        # @_Z19vel_vfmkwlenan_mvmlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.l.lenan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end83:
	.size	_Z19vel_vfmkwlenan_mvmlPmPKiPKm, .Lfunc_end83-_Z19vel_vfmkwlenan_mvmlPmPKiPKm
                                        # -- End function
	.globl	_Z16vel_vfmkdgt_mvmlPmPKdPKm    # -- Begin function _Z16vel_vfmkdgt_mvmlPmPKdPKm
	.p2align	4
	.type	_Z16vel_vfmkdgt_mvmlPmPKdPKm,@function
_Z16vel_vfmkdgt_mvmlPmPKdPKm:           # @_Z16vel_vfmkdgt_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.gt %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end84:
	.size	_Z16vel_vfmkdgt_mvmlPmPKdPKm, .Lfunc_end84-_Z16vel_vfmkdgt_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z16vel_vfmkdlt_mvmlPmPKdPKm    # -- Begin function _Z16vel_vfmkdlt_mvmlPmPKdPKm
	.p2align	4
	.type	_Z16vel_vfmkdlt_mvmlPmPKdPKm,@function
_Z16vel_vfmkdlt_mvmlPmPKdPKm:           # @_Z16vel_vfmkdlt_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.lt %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end85:
	.size	_Z16vel_vfmkdlt_mvmlPmPKdPKm, .Lfunc_end85-_Z16vel_vfmkdlt_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z16vel_vfmkdne_mvmlPmPKdPKm    # -- Begin function _Z16vel_vfmkdne_mvmlPmPKdPKm
	.p2align	4
	.type	_Z16vel_vfmkdne_mvmlPmPKdPKm,@function
_Z16vel_vfmkdne_mvmlPmPKdPKm:           # @_Z16vel_vfmkdne_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.ne %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end86:
	.size	_Z16vel_vfmkdne_mvmlPmPKdPKm, .Lfunc_end86-_Z16vel_vfmkdne_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z16vel_vfmkdeq_mvmlPmPKdPKm    # -- Begin function _Z16vel_vfmkdeq_mvmlPmPKdPKm
	.p2align	4
	.type	_Z16vel_vfmkdeq_mvmlPmPKdPKm,@function
_Z16vel_vfmkdeq_mvmlPmPKdPKm:           # @_Z16vel_vfmkdeq_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.eq %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end87:
	.size	_Z16vel_vfmkdeq_mvmlPmPKdPKm, .Lfunc_end87-_Z16vel_vfmkdeq_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z16vel_vfmkdge_mvmlPmPKdPKm    # -- Begin function _Z16vel_vfmkdge_mvmlPmPKdPKm
	.p2align	4
	.type	_Z16vel_vfmkdge_mvmlPmPKdPKm,@function
_Z16vel_vfmkdge_mvmlPmPKdPKm:           # @_Z16vel_vfmkdge_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.ge %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end88:
	.size	_Z16vel_vfmkdge_mvmlPmPKdPKm, .Lfunc_end88-_Z16vel_vfmkdge_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z16vel_vfmkdle_mvmlPmPKdPKm    # -- Begin function _Z16vel_vfmkdle_mvmlPmPKdPKm
	.p2align	4
	.type	_Z16vel_vfmkdle_mvmlPmPKdPKm,@function
_Z16vel_vfmkdle_mvmlPmPKdPKm:           # @_Z16vel_vfmkdle_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.le %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end89:
	.size	_Z16vel_vfmkdle_mvmlPmPKdPKm, .Lfunc_end89-_Z16vel_vfmkdle_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z17vel_vfmkdnum_mvmlPmPKdPKm   # -- Begin function _Z17vel_vfmkdnum_mvmlPmPKdPKm
	.p2align	4
	.type	_Z17vel_vfmkdnum_mvmlPmPKdPKm,@function
_Z17vel_vfmkdnum_mvmlPmPKdPKm:          # @_Z17vel_vfmkdnum_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.num %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end90:
	.size	_Z17vel_vfmkdnum_mvmlPmPKdPKm, .Lfunc_end90-_Z17vel_vfmkdnum_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z17vel_vfmkdnan_mvmlPmPKdPKm   # -- Begin function _Z17vel_vfmkdnan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z17vel_vfmkdnan_mvmlPmPKdPKm,@function
_Z17vel_vfmkdnan_mvmlPmPKdPKm:          # @_Z17vel_vfmkdnan_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.nan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end91:
	.size	_Z17vel_vfmkdnan_mvmlPmPKdPKm, .Lfunc_end91-_Z17vel_vfmkdnan_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z19vel_vfmkdgtnan_mvmlPmPKdPKm # -- Begin function _Z19vel_vfmkdgtnan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z19vel_vfmkdgtnan_mvmlPmPKdPKm,@function
_Z19vel_vfmkdgtnan_mvmlPmPKdPKm:        # @_Z19vel_vfmkdgtnan_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.gtnan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end92:
	.size	_Z19vel_vfmkdgtnan_mvmlPmPKdPKm, .Lfunc_end92-_Z19vel_vfmkdgtnan_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z19vel_vfmkdltnan_mvmlPmPKdPKm # -- Begin function _Z19vel_vfmkdltnan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z19vel_vfmkdltnan_mvmlPmPKdPKm,@function
_Z19vel_vfmkdltnan_mvmlPmPKdPKm:        # @_Z19vel_vfmkdltnan_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.ltnan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end93:
	.size	_Z19vel_vfmkdltnan_mvmlPmPKdPKm, .Lfunc_end93-_Z19vel_vfmkdltnan_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z19vel_vfmkdnenan_mvmlPmPKdPKm # -- Begin function _Z19vel_vfmkdnenan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z19vel_vfmkdnenan_mvmlPmPKdPKm,@function
_Z19vel_vfmkdnenan_mvmlPmPKdPKm:        # @_Z19vel_vfmkdnenan_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.nenan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end94:
	.size	_Z19vel_vfmkdnenan_mvmlPmPKdPKm, .Lfunc_end94-_Z19vel_vfmkdnenan_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z19vel_vfmkdeqnan_mvmlPmPKdPKm # -- Begin function _Z19vel_vfmkdeqnan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z19vel_vfmkdeqnan_mvmlPmPKdPKm,@function
_Z19vel_vfmkdeqnan_mvmlPmPKdPKm:        # @_Z19vel_vfmkdeqnan_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.eqnan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end95:
	.size	_Z19vel_vfmkdeqnan_mvmlPmPKdPKm, .Lfunc_end95-_Z19vel_vfmkdeqnan_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z19vel_vfmkdgenan_mvmlPmPKdPKm # -- Begin function _Z19vel_vfmkdgenan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z19vel_vfmkdgenan_mvmlPmPKdPKm,@function
_Z19vel_vfmkdgenan_mvmlPmPKdPKm:        # @_Z19vel_vfmkdgenan_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.genan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end96:
	.size	_Z19vel_vfmkdgenan_mvmlPmPKdPKm, .Lfunc_end96-_Z19vel_vfmkdgenan_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z19vel_vfmkdlenan_mvmlPmPKdPKm # -- Begin function _Z19vel_vfmkdlenan_mvmlPmPKdPKm
	.p2align	4
	.type	_Z19vel_vfmkdlenan_mvmlPmPKdPKm,@function
_Z19vel_vfmkdlenan_mvmlPmPKdPKm:        # @_Z19vel_vfmkdlenan_mvmlPmPKdPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.d.lenan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end97:
	.size	_Z19vel_vfmkdlenan_mvmlPmPKdPKm, .Lfunc_end97-_Z19vel_vfmkdlenan_mvmlPmPKdPKm
                                        # -- End function
	.globl	_Z16vel_vfmksgt_mvmlPmPKfPKm    # -- Begin function _Z16vel_vfmksgt_mvmlPmPKfPKm
	.p2align	4
	.type	_Z16vel_vfmksgt_mvmlPmPKfPKm,@function
_Z16vel_vfmksgt_mvmlPmPKfPKm:           # @_Z16vel_vfmksgt_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.gt %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end98:
	.size	_Z16vel_vfmksgt_mvmlPmPKfPKm, .Lfunc_end98-_Z16vel_vfmksgt_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z16vel_vfmkslt_mvmlPmPKfPKm    # -- Begin function _Z16vel_vfmkslt_mvmlPmPKfPKm
	.p2align	4
	.type	_Z16vel_vfmkslt_mvmlPmPKfPKm,@function
_Z16vel_vfmkslt_mvmlPmPKfPKm:           # @_Z16vel_vfmkslt_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.lt %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end99:
	.size	_Z16vel_vfmkslt_mvmlPmPKfPKm, .Lfunc_end99-_Z16vel_vfmkslt_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z16vel_vfmksne_mvmlPmPKfPKm    # -- Begin function _Z16vel_vfmksne_mvmlPmPKfPKm
	.p2align	4
	.type	_Z16vel_vfmksne_mvmlPmPKfPKm,@function
_Z16vel_vfmksne_mvmlPmPKfPKm:           # @_Z16vel_vfmksne_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.ne %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end100:
	.size	_Z16vel_vfmksne_mvmlPmPKfPKm, .Lfunc_end100-_Z16vel_vfmksne_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z16vel_vfmkseq_mvmlPmPKfPKm    # -- Begin function _Z16vel_vfmkseq_mvmlPmPKfPKm
	.p2align	4
	.type	_Z16vel_vfmkseq_mvmlPmPKfPKm,@function
_Z16vel_vfmkseq_mvmlPmPKfPKm:           # @_Z16vel_vfmkseq_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.eq %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end101:
	.size	_Z16vel_vfmkseq_mvmlPmPKfPKm, .Lfunc_end101-_Z16vel_vfmkseq_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z16vel_vfmksge_mvmlPmPKfPKm    # -- Begin function _Z16vel_vfmksge_mvmlPmPKfPKm
	.p2align	4
	.type	_Z16vel_vfmksge_mvmlPmPKfPKm,@function
_Z16vel_vfmksge_mvmlPmPKfPKm:           # @_Z16vel_vfmksge_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.ge %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end102:
	.size	_Z16vel_vfmksge_mvmlPmPKfPKm, .Lfunc_end102-_Z16vel_vfmksge_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z16vel_vfmksle_mvmlPmPKfPKm    # -- Begin function _Z16vel_vfmksle_mvmlPmPKfPKm
	.p2align	4
	.type	_Z16vel_vfmksle_mvmlPmPKfPKm,@function
_Z16vel_vfmksle_mvmlPmPKfPKm:           # @_Z16vel_vfmksle_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.le %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end103:
	.size	_Z16vel_vfmksle_mvmlPmPKfPKm, .Lfunc_end103-_Z16vel_vfmksle_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z17vel_vfmksnum_mvmlPmPKfPKm   # -- Begin function _Z17vel_vfmksnum_mvmlPmPKfPKm
	.p2align	4
	.type	_Z17vel_vfmksnum_mvmlPmPKfPKm,@function
_Z17vel_vfmksnum_mvmlPmPKfPKm:          # @_Z17vel_vfmksnum_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.num %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end104:
	.size	_Z17vel_vfmksnum_mvmlPmPKfPKm, .Lfunc_end104-_Z17vel_vfmksnum_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z17vel_vfmksnan_mvmlPmPKfPKm   # -- Begin function _Z17vel_vfmksnan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z17vel_vfmksnan_mvmlPmPKfPKm,@function
_Z17vel_vfmksnan_mvmlPmPKfPKm:          # @_Z17vel_vfmksnan_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.nan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end105:
	.size	_Z17vel_vfmksnan_mvmlPmPKfPKm, .Lfunc_end105-_Z17vel_vfmksnan_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z19vel_vfmksgtnan_mvmlPmPKfPKm # -- Begin function _Z19vel_vfmksgtnan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z19vel_vfmksgtnan_mvmlPmPKfPKm,@function
_Z19vel_vfmksgtnan_mvmlPmPKfPKm:        # @_Z19vel_vfmksgtnan_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.gtnan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end106:
	.size	_Z19vel_vfmksgtnan_mvmlPmPKfPKm, .Lfunc_end106-_Z19vel_vfmksgtnan_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z19vel_vfmksltnan_mvmlPmPKfPKm # -- Begin function _Z19vel_vfmksltnan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z19vel_vfmksltnan_mvmlPmPKfPKm,@function
_Z19vel_vfmksltnan_mvmlPmPKfPKm:        # @_Z19vel_vfmksltnan_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.ltnan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end107:
	.size	_Z19vel_vfmksltnan_mvmlPmPKfPKm, .Lfunc_end107-_Z19vel_vfmksltnan_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z19vel_vfmksnenan_mvmlPmPKfPKm # -- Begin function _Z19vel_vfmksnenan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z19vel_vfmksnenan_mvmlPmPKfPKm,@function
_Z19vel_vfmksnenan_mvmlPmPKfPKm:        # @_Z19vel_vfmksnenan_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.nenan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end108:
	.size	_Z19vel_vfmksnenan_mvmlPmPKfPKm, .Lfunc_end108-_Z19vel_vfmksnenan_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z19vel_vfmkseqnan_mvmlPmPKfPKm # -- Begin function _Z19vel_vfmkseqnan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z19vel_vfmkseqnan_mvmlPmPKfPKm,@function
_Z19vel_vfmkseqnan_mvmlPmPKfPKm:        # @_Z19vel_vfmkseqnan_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.eqnan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end109:
	.size	_Z19vel_vfmkseqnan_mvmlPmPKfPKm, .Lfunc_end109-_Z19vel_vfmkseqnan_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z19vel_vfmksgenan_mvmlPmPKfPKm # -- Begin function _Z19vel_vfmksgenan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z19vel_vfmksgenan_mvmlPmPKfPKm,@function
_Z19vel_vfmksgenan_mvmlPmPKfPKm:        # @_Z19vel_vfmksgenan_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.genan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end110:
	.size	_Z19vel_vfmksgenan_mvmlPmPKfPKm, .Lfunc_end110-_Z19vel_vfmksgenan_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z19vel_vfmkslenan_mvmlPmPKfPKm # -- Begin function _Z19vel_vfmkslenan_mvmlPmPKfPKm
	.p2align	4
	.type	_Z19vel_vfmkslenan_mvmlPmPKfPKm,@function
_Z19vel_vfmkslenan_mvmlPmPKfPKm:        # @_Z19vel_vfmkslenan_mvmlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1, 0, %s1
	lvm %vm1, 1, %s4
	lvm %vm1, 2, %s5
	lvm %vm1, 3, %s2
	vfmk.s.lenan %vm1, %v0, %vm1
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end111:
	.size	_Z19vel_vfmkslenan_mvmlPmPKfPKm, .Lfunc_end111-_Z19vel_vfmkslenan_mvmlPmPKfPKm
                                        # -- End function
	.globl	_Z16vel_pvfmkwgt_MvlPmPKi       # -- Begin function _Z16vel_pvfmkwgt_MvlPmPKi
	.p2align	4
	.type	_Z16vel_pvfmkwgt_MvlPmPKi,@function
_Z16vel_pvfmkwgt_MvlPmPKi:              # @_Z16vel_pvfmkwgt_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.gt %vm2, %v0
	vfmk.w.gt %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end112:
	.size	_Z16vel_pvfmkwgt_MvlPmPKi, .Lfunc_end112-_Z16vel_pvfmkwgt_MvlPmPKi
                                        # -- End function
	.globl	_Z16vel_pvfmkwlt_MvlPmPKi       # -- Begin function _Z16vel_pvfmkwlt_MvlPmPKi
	.p2align	4
	.type	_Z16vel_pvfmkwlt_MvlPmPKi,@function
_Z16vel_pvfmkwlt_MvlPmPKi:              # @_Z16vel_pvfmkwlt_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.lt %vm2, %v0
	vfmk.w.lt %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end113:
	.size	_Z16vel_pvfmkwlt_MvlPmPKi, .Lfunc_end113-_Z16vel_pvfmkwlt_MvlPmPKi
                                        # -- End function
	.globl	_Z16vel_pvfmkwne_MvlPmPKi       # -- Begin function _Z16vel_pvfmkwne_MvlPmPKi
	.p2align	4
	.type	_Z16vel_pvfmkwne_MvlPmPKi,@function
_Z16vel_pvfmkwne_MvlPmPKi:              # @_Z16vel_pvfmkwne_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.ne %vm2, %v0
	vfmk.w.ne %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end114:
	.size	_Z16vel_pvfmkwne_MvlPmPKi, .Lfunc_end114-_Z16vel_pvfmkwne_MvlPmPKi
                                        # -- End function
	.globl	_Z16vel_pvfmkweq_MvlPmPKi       # -- Begin function _Z16vel_pvfmkweq_MvlPmPKi
	.p2align	4
	.type	_Z16vel_pvfmkweq_MvlPmPKi,@function
_Z16vel_pvfmkweq_MvlPmPKi:              # @_Z16vel_pvfmkweq_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.eq %vm2, %v0
	vfmk.w.eq %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end115:
	.size	_Z16vel_pvfmkweq_MvlPmPKi, .Lfunc_end115-_Z16vel_pvfmkweq_MvlPmPKi
                                        # -- End function
	.globl	_Z16vel_pvfmkwge_MvlPmPKi       # -- Begin function _Z16vel_pvfmkwge_MvlPmPKi
	.p2align	4
	.type	_Z16vel_pvfmkwge_MvlPmPKi,@function
_Z16vel_pvfmkwge_MvlPmPKi:              # @_Z16vel_pvfmkwge_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.ge %vm2, %v0
	vfmk.w.ge %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end116:
	.size	_Z16vel_pvfmkwge_MvlPmPKi, .Lfunc_end116-_Z16vel_pvfmkwge_MvlPmPKi
                                        # -- End function
	.globl	_Z16vel_pvfmkwle_MvlPmPKi       # -- Begin function _Z16vel_pvfmkwle_MvlPmPKi
	.p2align	4
	.type	_Z16vel_pvfmkwle_MvlPmPKi,@function
_Z16vel_pvfmkwle_MvlPmPKi:              # @_Z16vel_pvfmkwle_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.le %vm2, %v0
	vfmk.w.le %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end117:
	.size	_Z16vel_pvfmkwle_MvlPmPKi, .Lfunc_end117-_Z16vel_pvfmkwle_MvlPmPKi
                                        # -- End function
	.globl	_Z17vel_pvfmkwnum_MvlPmPKi      # -- Begin function _Z17vel_pvfmkwnum_MvlPmPKi
	.p2align	4
	.type	_Z17vel_pvfmkwnum_MvlPmPKi,@function
_Z17vel_pvfmkwnum_MvlPmPKi:             # @_Z17vel_pvfmkwnum_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.num %vm2, %v0
	vfmk.w.num %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end118:
	.size	_Z17vel_pvfmkwnum_MvlPmPKi, .Lfunc_end118-_Z17vel_pvfmkwnum_MvlPmPKi
                                        # -- End function
	.globl	_Z17vel_pvfmkwnan_MvlPmPKi      # -- Begin function _Z17vel_pvfmkwnan_MvlPmPKi
	.p2align	4
	.type	_Z17vel_pvfmkwnan_MvlPmPKi,@function
_Z17vel_pvfmkwnan_MvlPmPKi:             # @_Z17vel_pvfmkwnan_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.nan %vm2, %v0
	vfmk.w.nan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end119:
	.size	_Z17vel_pvfmkwnan_MvlPmPKi, .Lfunc_end119-_Z17vel_pvfmkwnan_MvlPmPKi
                                        # -- End function
	.globl	_Z19vel_pvfmkwgtnan_MvlPmPKi    # -- Begin function _Z19vel_pvfmkwgtnan_MvlPmPKi
	.p2align	4
	.type	_Z19vel_pvfmkwgtnan_MvlPmPKi,@function
_Z19vel_pvfmkwgtnan_MvlPmPKi:           # @_Z19vel_pvfmkwgtnan_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.gtnan %vm2, %v0
	vfmk.w.gtnan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end120:
	.size	_Z19vel_pvfmkwgtnan_MvlPmPKi, .Lfunc_end120-_Z19vel_pvfmkwgtnan_MvlPmPKi
                                        # -- End function
	.globl	_Z19vel_pvfmkwltnan_MvlPmPKi    # -- Begin function _Z19vel_pvfmkwltnan_MvlPmPKi
	.p2align	4
	.type	_Z19vel_pvfmkwltnan_MvlPmPKi,@function
_Z19vel_pvfmkwltnan_MvlPmPKi:           # @_Z19vel_pvfmkwltnan_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.ltnan %vm2, %v0
	vfmk.w.ltnan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end121:
	.size	_Z19vel_pvfmkwltnan_MvlPmPKi, .Lfunc_end121-_Z19vel_pvfmkwltnan_MvlPmPKi
                                        # -- End function
	.globl	_Z19vel_pvfmkwnenan_MvlPmPKi    # -- Begin function _Z19vel_pvfmkwnenan_MvlPmPKi
	.p2align	4
	.type	_Z19vel_pvfmkwnenan_MvlPmPKi,@function
_Z19vel_pvfmkwnenan_MvlPmPKi:           # @_Z19vel_pvfmkwnenan_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.nenan %vm2, %v0
	vfmk.w.nenan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end122:
	.size	_Z19vel_pvfmkwnenan_MvlPmPKi, .Lfunc_end122-_Z19vel_pvfmkwnenan_MvlPmPKi
                                        # -- End function
	.globl	_Z19vel_pvfmkweqnan_MvlPmPKi    # -- Begin function _Z19vel_pvfmkweqnan_MvlPmPKi
	.p2align	4
	.type	_Z19vel_pvfmkweqnan_MvlPmPKi,@function
_Z19vel_pvfmkweqnan_MvlPmPKi:           # @_Z19vel_pvfmkweqnan_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.eqnan %vm2, %v0
	vfmk.w.eqnan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end123:
	.size	_Z19vel_pvfmkweqnan_MvlPmPKi, .Lfunc_end123-_Z19vel_pvfmkweqnan_MvlPmPKi
                                        # -- End function
	.globl	_Z19vel_pvfmkwgenan_MvlPmPKi    # -- Begin function _Z19vel_pvfmkwgenan_MvlPmPKi
	.p2align	4
	.type	_Z19vel_pvfmkwgenan_MvlPmPKi,@function
_Z19vel_pvfmkwgenan_MvlPmPKi:           # @_Z19vel_pvfmkwgenan_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.genan %vm2, %v0
	vfmk.w.genan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end124:
	.size	_Z19vel_pvfmkwgenan_MvlPmPKi, .Lfunc_end124-_Z19vel_pvfmkwgenan_MvlPmPKi
                                        # -- End function
	.globl	_Z19vel_pvfmkwlenan_MvlPmPKi    # -- Begin function _Z19vel_pvfmkwlenan_MvlPmPKi
	.p2align	4
	.type	_Z19vel_pvfmkwlenan_MvlPmPKi,@function
_Z19vel_pvfmkwlenan_MvlPmPKi:           # @_Z19vel_pvfmkwlenan_MvlPmPKi
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.lenan %vm2, %v0
	vfmk.w.lenan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end125:
	.size	_Z19vel_pvfmkwlenan_MvlPmPKi, .Lfunc_end125-_Z19vel_pvfmkwlenan_MvlPmPKi
                                        # -- End function
	.globl	_Z16vel_pvfmksgt_MvlPmPKf       # -- Begin function _Z16vel_pvfmksgt_MvlPmPKf
	.p2align	4
	.type	_Z16vel_pvfmksgt_MvlPmPKf,@function
_Z16vel_pvfmksgt_MvlPmPKf:              # @_Z16vel_pvfmksgt_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.gt %vm2, %v0
	pvfmk.s.lo.gt %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end126:
	.size	_Z16vel_pvfmksgt_MvlPmPKf, .Lfunc_end126-_Z16vel_pvfmksgt_MvlPmPKf
                                        # -- End function
	.globl	_Z16vel_pvfmkslt_MvlPmPKf       # -- Begin function _Z16vel_pvfmkslt_MvlPmPKf
	.p2align	4
	.type	_Z16vel_pvfmkslt_MvlPmPKf,@function
_Z16vel_pvfmkslt_MvlPmPKf:              # @_Z16vel_pvfmkslt_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.lt %vm2, %v0
	pvfmk.s.lo.lt %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end127:
	.size	_Z16vel_pvfmkslt_MvlPmPKf, .Lfunc_end127-_Z16vel_pvfmkslt_MvlPmPKf
                                        # -- End function
	.globl	_Z16vel_pvfmksne_MvlPmPKf       # -- Begin function _Z16vel_pvfmksne_MvlPmPKf
	.p2align	4
	.type	_Z16vel_pvfmksne_MvlPmPKf,@function
_Z16vel_pvfmksne_MvlPmPKf:              # @_Z16vel_pvfmksne_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.ne %vm2, %v0
	pvfmk.s.lo.ne %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end128:
	.size	_Z16vel_pvfmksne_MvlPmPKf, .Lfunc_end128-_Z16vel_pvfmksne_MvlPmPKf
                                        # -- End function
	.globl	_Z16vel_pvfmkseq_MvlPmPKf       # -- Begin function _Z16vel_pvfmkseq_MvlPmPKf
	.p2align	4
	.type	_Z16vel_pvfmkseq_MvlPmPKf,@function
_Z16vel_pvfmkseq_MvlPmPKf:              # @_Z16vel_pvfmkseq_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.eq %vm2, %v0
	pvfmk.s.lo.eq %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end129:
	.size	_Z16vel_pvfmkseq_MvlPmPKf, .Lfunc_end129-_Z16vel_pvfmkseq_MvlPmPKf
                                        # -- End function
	.globl	_Z16vel_pvfmksge_MvlPmPKf       # -- Begin function _Z16vel_pvfmksge_MvlPmPKf
	.p2align	4
	.type	_Z16vel_pvfmksge_MvlPmPKf,@function
_Z16vel_pvfmksge_MvlPmPKf:              # @_Z16vel_pvfmksge_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.ge %vm2, %v0
	pvfmk.s.lo.ge %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end130:
	.size	_Z16vel_pvfmksge_MvlPmPKf, .Lfunc_end130-_Z16vel_pvfmksge_MvlPmPKf
                                        # -- End function
	.globl	_Z16vel_pvfmksle_MvlPmPKf       # -- Begin function _Z16vel_pvfmksle_MvlPmPKf
	.p2align	4
	.type	_Z16vel_pvfmksle_MvlPmPKf,@function
_Z16vel_pvfmksle_MvlPmPKf:              # @_Z16vel_pvfmksle_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.le %vm2, %v0
	pvfmk.s.lo.le %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end131:
	.size	_Z16vel_pvfmksle_MvlPmPKf, .Lfunc_end131-_Z16vel_pvfmksle_MvlPmPKf
                                        # -- End function
	.globl	_Z17vel_pvfmksnum_MvlPmPKf      # -- Begin function _Z17vel_pvfmksnum_MvlPmPKf
	.p2align	4
	.type	_Z17vel_pvfmksnum_MvlPmPKf,@function
_Z17vel_pvfmksnum_MvlPmPKf:             # @_Z17vel_pvfmksnum_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.num %vm2, %v0
	pvfmk.s.lo.num %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end132:
	.size	_Z17vel_pvfmksnum_MvlPmPKf, .Lfunc_end132-_Z17vel_pvfmksnum_MvlPmPKf
                                        # -- End function
	.globl	_Z17vel_pvfmksnan_MvlPmPKf      # -- Begin function _Z17vel_pvfmksnan_MvlPmPKf
	.p2align	4
	.type	_Z17vel_pvfmksnan_MvlPmPKf,@function
_Z17vel_pvfmksnan_MvlPmPKf:             # @_Z17vel_pvfmksnan_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.nan %vm2, %v0
	pvfmk.s.lo.nan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end133:
	.size	_Z17vel_pvfmksnan_MvlPmPKf, .Lfunc_end133-_Z17vel_pvfmksnan_MvlPmPKf
                                        # -- End function
	.globl	_Z19vel_pvfmksgtnan_MvlPmPKf    # -- Begin function _Z19vel_pvfmksgtnan_MvlPmPKf
	.p2align	4
	.type	_Z19vel_pvfmksgtnan_MvlPmPKf,@function
_Z19vel_pvfmksgtnan_MvlPmPKf:           # @_Z19vel_pvfmksgtnan_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.gtnan %vm2, %v0
	pvfmk.s.lo.gtnan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end134:
	.size	_Z19vel_pvfmksgtnan_MvlPmPKf, .Lfunc_end134-_Z19vel_pvfmksgtnan_MvlPmPKf
                                        # -- End function
	.globl	_Z19vel_pvfmksltnan_MvlPmPKf    # -- Begin function _Z19vel_pvfmksltnan_MvlPmPKf
	.p2align	4
	.type	_Z19vel_pvfmksltnan_MvlPmPKf,@function
_Z19vel_pvfmksltnan_MvlPmPKf:           # @_Z19vel_pvfmksltnan_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.ltnan %vm2, %v0
	pvfmk.s.lo.ltnan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end135:
	.size	_Z19vel_pvfmksltnan_MvlPmPKf, .Lfunc_end135-_Z19vel_pvfmksltnan_MvlPmPKf
                                        # -- End function
	.globl	_Z19vel_pvfmksnenan_MvlPmPKf    # -- Begin function _Z19vel_pvfmksnenan_MvlPmPKf
	.p2align	4
	.type	_Z19vel_pvfmksnenan_MvlPmPKf,@function
_Z19vel_pvfmksnenan_MvlPmPKf:           # @_Z19vel_pvfmksnenan_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.nenan %vm2, %v0
	pvfmk.s.lo.nenan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end136:
	.size	_Z19vel_pvfmksnenan_MvlPmPKf, .Lfunc_end136-_Z19vel_pvfmksnenan_MvlPmPKf
                                        # -- End function
	.globl	_Z19vel_pvfmkseqnan_MvlPmPKf    # -- Begin function _Z19vel_pvfmkseqnan_MvlPmPKf
	.p2align	4
	.type	_Z19vel_pvfmkseqnan_MvlPmPKf,@function
_Z19vel_pvfmkseqnan_MvlPmPKf:           # @_Z19vel_pvfmkseqnan_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.eqnan %vm2, %v0
	pvfmk.s.lo.eqnan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end137:
	.size	_Z19vel_pvfmkseqnan_MvlPmPKf, .Lfunc_end137-_Z19vel_pvfmkseqnan_MvlPmPKf
                                        # -- End function
	.globl	_Z19vel_pvfmksgenan_MvlPmPKf    # -- Begin function _Z19vel_pvfmksgenan_MvlPmPKf
	.p2align	4
	.type	_Z19vel_pvfmksgenan_MvlPmPKf,@function
_Z19vel_pvfmksgenan_MvlPmPKf:           # @_Z19vel_pvfmksgenan_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.genan %vm2, %v0
	pvfmk.s.lo.genan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end138:
	.size	_Z19vel_pvfmksgenan_MvlPmPKf, .Lfunc_end138-_Z19vel_pvfmksgenan_MvlPmPKf
                                        # -- End function
	.globl	_Z19vel_pvfmkslenan_MvlPmPKf    # -- Begin function _Z19vel_pvfmkslenan_MvlPmPKf
	.p2align	4
	.type	_Z19vel_pvfmkslenan_MvlPmPKf,@function
_Z19vel_pvfmkslenan_MvlPmPKf:           # @_Z19vel_pvfmkslenan_MvlPmPKf
# %bb.0:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.s.up.lenan %vm2, %v0
	pvfmk.s.lo.lenan %vm3, %v0
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end139:
	.size	_Z19vel_pvfmkslenan_MvlPmPKf, .Lfunc_end139-_Z19vel_pvfmkslenan_MvlPmPKf
                                        # -- End function
	.globl	_Z17vel_pvfmkwgt_MvMlPmPKiPKm   # -- Begin function _Z17vel_pvfmkwgt_MvMlPmPKiPKm
	.p2align	4
	.type	_Z17vel_pvfmkwgt_MvMlPmPKiPKm,@function
_Z17vel_pvfmkwgt_MvMlPmPKiPKm:          # @_Z17vel_pvfmkwgt_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.gt %vm2, %v0, %vm2
	vfmk.w.gt %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end140:
	.size	_Z17vel_pvfmkwgt_MvMlPmPKiPKm, .Lfunc_end140-_Z17vel_pvfmkwgt_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z17vel_pvfmkwlt_MvMlPmPKiPKm   # -- Begin function _Z17vel_pvfmkwlt_MvMlPmPKiPKm
	.p2align	4
	.type	_Z17vel_pvfmkwlt_MvMlPmPKiPKm,@function
_Z17vel_pvfmkwlt_MvMlPmPKiPKm:          # @_Z17vel_pvfmkwlt_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.lt %vm2, %v0, %vm2
	vfmk.w.lt %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end141:
	.size	_Z17vel_pvfmkwlt_MvMlPmPKiPKm, .Lfunc_end141-_Z17vel_pvfmkwlt_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z17vel_pvfmkwne_MvMlPmPKiPKm   # -- Begin function _Z17vel_pvfmkwne_MvMlPmPKiPKm
	.p2align	4
	.type	_Z17vel_pvfmkwne_MvMlPmPKiPKm,@function
_Z17vel_pvfmkwne_MvMlPmPKiPKm:          # @_Z17vel_pvfmkwne_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.ne %vm2, %v0, %vm2
	vfmk.w.ne %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end142:
	.size	_Z17vel_pvfmkwne_MvMlPmPKiPKm, .Lfunc_end142-_Z17vel_pvfmkwne_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z17vel_pvfmkweq_MvMlPmPKiPKm   # -- Begin function _Z17vel_pvfmkweq_MvMlPmPKiPKm
	.p2align	4
	.type	_Z17vel_pvfmkweq_MvMlPmPKiPKm,@function
_Z17vel_pvfmkweq_MvMlPmPKiPKm:          # @_Z17vel_pvfmkweq_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.eq %vm2, %v0, %vm2
	vfmk.w.eq %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end143:
	.size	_Z17vel_pvfmkweq_MvMlPmPKiPKm, .Lfunc_end143-_Z17vel_pvfmkweq_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z17vel_pvfmkwge_MvMlPmPKiPKm   # -- Begin function _Z17vel_pvfmkwge_MvMlPmPKiPKm
	.p2align	4
	.type	_Z17vel_pvfmkwge_MvMlPmPKiPKm,@function
_Z17vel_pvfmkwge_MvMlPmPKiPKm:          # @_Z17vel_pvfmkwge_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.ge %vm2, %v0, %vm2
	vfmk.w.ge %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end144:
	.size	_Z17vel_pvfmkwge_MvMlPmPKiPKm, .Lfunc_end144-_Z17vel_pvfmkwge_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z17vel_pvfmkwle_MvMlPmPKiPKm   # -- Begin function _Z17vel_pvfmkwle_MvMlPmPKiPKm
	.p2align	4
	.type	_Z17vel_pvfmkwle_MvMlPmPKiPKm,@function
_Z17vel_pvfmkwle_MvMlPmPKiPKm:          # @_Z17vel_pvfmkwle_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.le %vm2, %v0, %vm2
	vfmk.w.le %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end145:
	.size	_Z17vel_pvfmkwle_MvMlPmPKiPKm, .Lfunc_end145-_Z17vel_pvfmkwle_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z18vel_pvfmkwnum_MvMlPmPKiPKm  # -- Begin function _Z18vel_pvfmkwnum_MvMlPmPKiPKm
	.p2align	4
	.type	_Z18vel_pvfmkwnum_MvMlPmPKiPKm,@function
_Z18vel_pvfmkwnum_MvMlPmPKiPKm:         # @_Z18vel_pvfmkwnum_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.num %vm2, %v0, %vm2
	vfmk.w.num %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end146:
	.size	_Z18vel_pvfmkwnum_MvMlPmPKiPKm, .Lfunc_end146-_Z18vel_pvfmkwnum_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z18vel_pvfmkwnan_MvMlPmPKiPKm  # -- Begin function _Z18vel_pvfmkwnan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z18vel_pvfmkwnan_MvMlPmPKiPKm,@function
_Z18vel_pvfmkwnan_MvMlPmPKiPKm:         # @_Z18vel_pvfmkwnan_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.nan %vm2, %v0, %vm2
	vfmk.w.nan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end147:
	.size	_Z18vel_pvfmkwnan_MvMlPmPKiPKm, .Lfunc_end147-_Z18vel_pvfmkwnan_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z20vel_pvfmkwgtnan_MvMlPmPKiPKm # -- Begin function _Z20vel_pvfmkwgtnan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z20vel_pvfmkwgtnan_MvMlPmPKiPKm,@function
_Z20vel_pvfmkwgtnan_MvMlPmPKiPKm:       # @_Z20vel_pvfmkwgtnan_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.gtnan %vm2, %v0, %vm2
	vfmk.w.gtnan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end148:
	.size	_Z20vel_pvfmkwgtnan_MvMlPmPKiPKm, .Lfunc_end148-_Z20vel_pvfmkwgtnan_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z20vel_pvfmkwltnan_MvMlPmPKiPKm # -- Begin function _Z20vel_pvfmkwltnan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z20vel_pvfmkwltnan_MvMlPmPKiPKm,@function
_Z20vel_pvfmkwltnan_MvMlPmPKiPKm:       # @_Z20vel_pvfmkwltnan_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.ltnan %vm2, %v0, %vm2
	vfmk.w.ltnan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end149:
	.size	_Z20vel_pvfmkwltnan_MvMlPmPKiPKm, .Lfunc_end149-_Z20vel_pvfmkwltnan_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z20vel_pvfmkwnenan_MvMlPmPKiPKm # -- Begin function _Z20vel_pvfmkwnenan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z20vel_pvfmkwnenan_MvMlPmPKiPKm,@function
_Z20vel_pvfmkwnenan_MvMlPmPKiPKm:       # @_Z20vel_pvfmkwnenan_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.nenan %vm2, %v0, %vm2
	vfmk.w.nenan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end150:
	.size	_Z20vel_pvfmkwnenan_MvMlPmPKiPKm, .Lfunc_end150-_Z20vel_pvfmkwnenan_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z20vel_pvfmkweqnan_MvMlPmPKiPKm # -- Begin function _Z20vel_pvfmkweqnan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z20vel_pvfmkweqnan_MvMlPmPKiPKm,@function
_Z20vel_pvfmkweqnan_MvMlPmPKiPKm:       # @_Z20vel_pvfmkweqnan_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.eqnan %vm2, %v0, %vm2
	vfmk.w.eqnan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end151:
	.size	_Z20vel_pvfmkweqnan_MvMlPmPKiPKm, .Lfunc_end151-_Z20vel_pvfmkweqnan_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z20vel_pvfmkwgenan_MvMlPmPKiPKm # -- Begin function _Z20vel_pvfmkwgenan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z20vel_pvfmkwgenan_MvMlPmPKiPKm,@function
_Z20vel_pvfmkwgenan_MvMlPmPKiPKm:       # @_Z20vel_pvfmkwgenan_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.genan %vm2, %v0, %vm2
	vfmk.w.genan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end152:
	.size	_Z20vel_pvfmkwgenan_MvMlPmPKiPKm, .Lfunc_end152-_Z20vel_pvfmkwgenan_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z20vel_pvfmkwlenan_MvMlPmPKiPKm # -- Begin function _Z20vel_pvfmkwlenan_MvMlPmPKiPKm
	.p2align	4
	.type	_Z20vel_pvfmkwlenan_MvMlPmPKiPKm,@function
_Z20vel_pvfmkwlenan_MvMlPmPKiPKm:       # @_Z20vel_pvfmkwlenan_MvMlPmPKiPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.w.up.lenan %vm2, %v0, %vm2
	vfmk.w.lenan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end153:
	.size	_Z20vel_pvfmkwlenan_MvMlPmPKiPKm, .Lfunc_end153-_Z20vel_pvfmkwlenan_MvMlPmPKiPKm
                                        # -- End function
	.globl	_Z17vel_pvfmksgt_MvMlPmPKfPKm   # -- Begin function _Z17vel_pvfmksgt_MvMlPmPKfPKm
	.p2align	4
	.type	_Z17vel_pvfmksgt_MvMlPmPKfPKm,@function
_Z17vel_pvfmksgt_MvMlPmPKfPKm:          # @_Z17vel_pvfmksgt_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.gt %vm2, %v0, %vm2
	pvfmk.s.lo.gt %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end154:
	.size	_Z17vel_pvfmksgt_MvMlPmPKfPKm, .Lfunc_end154-_Z17vel_pvfmksgt_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z17vel_pvfmkslt_MvMlPmPKfPKm   # -- Begin function _Z17vel_pvfmkslt_MvMlPmPKfPKm
	.p2align	4
	.type	_Z17vel_pvfmkslt_MvMlPmPKfPKm,@function
_Z17vel_pvfmkslt_MvMlPmPKfPKm:          # @_Z17vel_pvfmkslt_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.lt %vm2, %v0, %vm2
	pvfmk.s.lo.lt %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end155:
	.size	_Z17vel_pvfmkslt_MvMlPmPKfPKm, .Lfunc_end155-_Z17vel_pvfmkslt_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z17vel_pvfmksne_MvMlPmPKfPKm   # -- Begin function _Z17vel_pvfmksne_MvMlPmPKfPKm
	.p2align	4
	.type	_Z17vel_pvfmksne_MvMlPmPKfPKm,@function
_Z17vel_pvfmksne_MvMlPmPKfPKm:          # @_Z17vel_pvfmksne_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.ne %vm2, %v0, %vm2
	pvfmk.s.lo.ne %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end156:
	.size	_Z17vel_pvfmksne_MvMlPmPKfPKm, .Lfunc_end156-_Z17vel_pvfmksne_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z17vel_pvfmkseq_MvMlPmPKfPKm   # -- Begin function _Z17vel_pvfmkseq_MvMlPmPKfPKm
	.p2align	4
	.type	_Z17vel_pvfmkseq_MvMlPmPKfPKm,@function
_Z17vel_pvfmkseq_MvMlPmPKfPKm:          # @_Z17vel_pvfmkseq_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.eq %vm2, %v0, %vm2
	pvfmk.s.lo.eq %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end157:
	.size	_Z17vel_pvfmkseq_MvMlPmPKfPKm, .Lfunc_end157-_Z17vel_pvfmkseq_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z17vel_pvfmksge_MvMlPmPKfPKm   # -- Begin function _Z17vel_pvfmksge_MvMlPmPKfPKm
	.p2align	4
	.type	_Z17vel_pvfmksge_MvMlPmPKfPKm,@function
_Z17vel_pvfmksge_MvMlPmPKfPKm:          # @_Z17vel_pvfmksge_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.ge %vm2, %v0, %vm2
	pvfmk.s.lo.ge %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end158:
	.size	_Z17vel_pvfmksge_MvMlPmPKfPKm, .Lfunc_end158-_Z17vel_pvfmksge_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z17vel_pvfmksle_MvMlPmPKfPKm   # -- Begin function _Z17vel_pvfmksle_MvMlPmPKfPKm
	.p2align	4
	.type	_Z17vel_pvfmksle_MvMlPmPKfPKm,@function
_Z17vel_pvfmksle_MvMlPmPKfPKm:          # @_Z17vel_pvfmksle_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.le %vm2, %v0, %vm2
	pvfmk.s.lo.le %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end159:
	.size	_Z17vel_pvfmksle_MvMlPmPKfPKm, .Lfunc_end159-_Z17vel_pvfmksle_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z18vel_pvfmksnum_MvMlPmPKfPKm  # -- Begin function _Z18vel_pvfmksnum_MvMlPmPKfPKm
	.p2align	4
	.type	_Z18vel_pvfmksnum_MvMlPmPKfPKm,@function
_Z18vel_pvfmksnum_MvMlPmPKfPKm:         # @_Z18vel_pvfmksnum_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.num %vm2, %v0, %vm2
	pvfmk.s.lo.num %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end160:
	.size	_Z18vel_pvfmksnum_MvMlPmPKfPKm, .Lfunc_end160-_Z18vel_pvfmksnum_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z18vel_pvfmksnan_MvMlPmPKfPKm  # -- Begin function _Z18vel_pvfmksnan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z18vel_pvfmksnan_MvMlPmPKfPKm,@function
_Z18vel_pvfmksnan_MvMlPmPKfPKm:         # @_Z18vel_pvfmksnan_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.nan %vm2, %v0, %vm2
	pvfmk.s.lo.nan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end161:
	.size	_Z18vel_pvfmksnan_MvMlPmPKfPKm, .Lfunc_end161-_Z18vel_pvfmksnan_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z20vel_pvfmksgtnan_MvMlPmPKfPKm # -- Begin function _Z20vel_pvfmksgtnan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z20vel_pvfmksgtnan_MvMlPmPKfPKm,@function
_Z20vel_pvfmksgtnan_MvMlPmPKfPKm:       # @_Z20vel_pvfmksgtnan_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.gtnan %vm2, %v0, %vm2
	pvfmk.s.lo.gtnan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end162:
	.size	_Z20vel_pvfmksgtnan_MvMlPmPKfPKm, .Lfunc_end162-_Z20vel_pvfmksgtnan_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z20vel_pvfmksltnan_MvMlPmPKfPKm # -- Begin function _Z20vel_pvfmksltnan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z20vel_pvfmksltnan_MvMlPmPKfPKm,@function
_Z20vel_pvfmksltnan_MvMlPmPKfPKm:       # @_Z20vel_pvfmksltnan_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.ltnan %vm2, %v0, %vm2
	pvfmk.s.lo.ltnan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end163:
	.size	_Z20vel_pvfmksltnan_MvMlPmPKfPKm, .Lfunc_end163-_Z20vel_pvfmksltnan_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z20vel_pvfmksnenan_MvMlPmPKfPKm # -- Begin function _Z20vel_pvfmksnenan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z20vel_pvfmksnenan_MvMlPmPKfPKm,@function
_Z20vel_pvfmksnenan_MvMlPmPKfPKm:       # @_Z20vel_pvfmksnenan_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.nenan %vm2, %v0, %vm2
	pvfmk.s.lo.nenan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end164:
	.size	_Z20vel_pvfmksnenan_MvMlPmPKfPKm, .Lfunc_end164-_Z20vel_pvfmksnenan_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z20vel_pvfmkseqnan_MvMlPmPKfPKm # -- Begin function _Z20vel_pvfmkseqnan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z20vel_pvfmkseqnan_MvMlPmPKfPKm,@function
_Z20vel_pvfmkseqnan_MvMlPmPKfPKm:       # @_Z20vel_pvfmkseqnan_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.eqnan %vm2, %v0, %vm2
	pvfmk.s.lo.eqnan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end165:
	.size	_Z20vel_pvfmkseqnan_MvMlPmPKfPKm, .Lfunc_end165-_Z20vel_pvfmkseqnan_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z20vel_pvfmksgenan_MvMlPmPKfPKm # -- Begin function _Z20vel_pvfmksgenan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z20vel_pvfmksgenan_MvMlPmPKfPKm,@function
_Z20vel_pvfmksgenan_MvMlPmPKfPKm:       # @_Z20vel_pvfmksgenan_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.genan %vm2, %v0, %vm2
	pvfmk.s.lo.genan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end166:
	.size	_Z20vel_pvfmksgenan_MvMlPmPKfPKm, .Lfunc_end166-_Z20vel_pvfmksgenan_MvMlPmPKfPKm
                                        # -- End function
	.globl	_Z20vel_pvfmkslenan_MvMlPmPKfPKm # -- Begin function _Z20vel_pvfmkslenan_MvMlPmPKfPKm
	.p2align	4
	.type	_Z20vel_pvfmkslenan_MvMlPmPKfPKm,@function
_Z20vel_pvfmkslenan_MvMlPmPKfPKm:       # @_Z20vel_pvfmkslenan_MvMlPmPKfPKm
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	ld %s1, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s6, 24(, %s2)
	lvm %vm3, 0, %s1
	lvm %vm3, 1, %s4
	lvm %vm3, 2, %s5
	lvm %vm3, 3, %s6
	ld %s1, 32(, %s2)
	ld %s4, 40(, %s2)
	ld %s5, 48(, %s2)
	ld %s2, 56(, %s2)
	lvm %vm2, 0, %s1
	lvm %vm2, 1, %s4
	lvm %vm2, 2, %s5
	lvm %vm2, 3, %s2
	pvfmk.s.up.lenan %vm2, %v0, %vm2
	pvfmk.s.lo.lenan %vm3, %v0, %vm3
	svm %s1, %vm3, 0
	st %s1, (, %s0)
	svm %s1, %vm3, 1
	st %s1, 8(, %s0)
	svm %s1, %vm3, 2
	st %s1, 16(, %s0)
	svm %s1, %vm3, 3
	st %s1, 24(, %s0)
	svm %s1, %vm2, 0
	st %s1, 32(, %s0)
	svm %s1, %vm2, 1
	st %s1, 40(, %s0)
	svm %s1, %vm2, 2
	st %s1, 48(, %s0)
	svm %s1, %vm2, 3
	st %s1, 56(, %s0)
	b.l.t (, %s10)
.Lfunc_end167:
	.size	_Z20vel_pvfmkslenan_MvMlPmPKfPKm, .Lfunc_end167-_Z20vel_pvfmkslenan_MvMlPmPKfPKm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git abc0611048916f1be3a5a11282325b09a6c4d450)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
