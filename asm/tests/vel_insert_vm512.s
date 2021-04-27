	.text
	.file	"vel_insert_vm512.cc"
	.globl	_Z17vel_insert_vm512uPmPKmPKj   # -- Begin function _Z17vel_insert_vm512uPmPKmPKj
	.p2align	4
	.type	_Z17vel_insert_vm512uPmPKmPKj,@function
_Z17vel_insert_vm512uPmPKmPKj:          # @_Z17vel_insert_vm512uPmPKmPKj
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vfmk.l.gt %vm1, %v0
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	andm %vm2, %vm0, %vm1
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
.Lfunc_end0:
	.size	_Z17vel_insert_vm512uPmPKmPKj, .Lfunc_end0-_Z17vel_insert_vm512uPmPKmPKj
                                        # -- End function
	.globl	_Z17vel_insert_vm512lPmPKmPKj   # -- Begin function _Z17vel_insert_vm512lPmPKmPKj
	.p2align	4
	.type	_Z17vel_insert_vm512lPmPKmPKj,@function
_Z17vel_insert_vm512lPmPKmPKj:          # @_Z17vel_insert_vm512lPmPKmPKj
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vfmk.l.gt %vm1, %v0
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	andm %vm3, %vm0, %vm1
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
.Lfunc_end1:
	.size	_Z17vel_insert_vm512lPmPKmPKj, .Lfunc_end1-_Z17vel_insert_vm512lPmPKmPKj
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
