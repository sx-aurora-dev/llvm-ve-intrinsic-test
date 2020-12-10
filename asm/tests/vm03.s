	.text
	.file	"vm03.cc"
	.globl	_Z4funcv                        # -- Begin function _Z4funcv
	.p2align	4
	.type	_Z4funcv,@function
_Z4funcv:                               # @_Z4funcv
# %bb.0:
	lvm %vm1, 0, (0)1
	lvm %vm1, 1, (0)1
	lvm %vm1, 2, (0)1
	lvm %vm1, 3, (0)1
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z4funcv, .Lfunc_end0-_Z4funcv
                                        # -- End function
	.globl	_Z10_test_vm03v                 # -- Begin function _Z10_test_vm03v
	.p2align	4
	.type	_Z10_test_vm03v,@function
_Z10_test_vm03v:                        # @_Z10_test_vm03v
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -272(, %s11)
	brge.l.t %s11, %s8, .LBB1_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_2:
	lea %s0, _Z4funcv@lo
	and %s0, %s0, (32)0
	lea.sl %s12, _Z4funcv@hi(, %s0)
	lea %s0, -32(, %s9)
	bsic %s10, (, %s12)
	lvm %vm1, 0, (0)1
	lvm %vm1, 1, (0)1
	lvm %vm1, 2, (0)1
	lvm %vm1, 3, (0)1
	svm %s0, %vm1, 0
	svm %s1, %vm1, 1
	or %s0, %s0, %s1
	svm %s1, %vm1, 2
	or %s0, %s0, %s1
	svm %s1, %vm1, 3
	or %s0, %s0, %s1
	ldz %s0, %s0
	srl %s0, %s0, 6
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z10_test_vm03v, .Lfunc_end1-_Z10_test_vm03v
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 99c58077b7589ed94981de5c768941146d2435b2)"
	.section	".note.GNU-stack","",@progbits
