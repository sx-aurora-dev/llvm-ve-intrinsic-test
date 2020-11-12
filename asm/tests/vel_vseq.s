	.text
	.file	"vel_vseq.cc"
	.globl	_Z4vseqPm                       # -- Begin function _Z4vseqPm
	.p2align	4
	.type	_Z4vseqPm,@function
_Z4vseqPm:                              # @_Z4vseqPm
# %bb.0:
	lea %s1, 256
	lvl %s1
	vseq %v0
	vst %v0, 8, %s0
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z4vseqPm, .Lfunc_end0-_Z4vseqPm
                                        # -- End function
	.globl	_Z6vseq_pPm                     # -- Begin function _Z6vseq_pPm
	.p2align	4
	.type	_Z6vseq_pPm,@function
_Z6vseq_pPm:                            # @_Z6vseq_pPm
# %bb.0:
	lea %s1, 256
	lvl %s1
	pvseq %v0
	vst %v0, 8, %s0
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z6vseq_pPm, .Lfunc_end1-_Z6vseq_pPm
                                        # -- End function
	.globl	_Z7vseq_plPm                    # -- Begin function _Z7vseq_plPm
	.p2align	4
	.type	_Z7vseq_plPm,@function
_Z7vseq_plPm:                           # @_Z7vseq_plPm
# %bb.0:
	lea %s1, 256
	lvl %s1
	pvseq.lo %v0
	vst %v0, 8, %s0
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z7vseq_plPm, .Lfunc_end2-_Z7vseq_plPm
                                        # -- End function
	.globl	_Z7vseq_puPm                    # -- Begin function _Z7vseq_puPm
	.p2align	4
	.type	_Z7vseq_puPm,@function
_Z7vseq_puPm:                           # @_Z7vseq_puPm
# %bb.0:
	lea %s1, 256
	lvl %s1
	pvseq.up %v0
	vst %v0, 8, %s0
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z7vseq_puPm, .Lfunc_end3-_Z7vseq_puPm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git e570410190bb70408e4f61459b2f988e92caea54)"
	.section	".note.GNU-stack","",@progbits
