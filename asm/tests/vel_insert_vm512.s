	.text
	.file	"vel_insert_vm512.cc"
	.globl	_Z17vel_insert_vm512uPmPKmPKj
	.p2align	4
	.type	_Z17vel_insert_vm512uPmPKmPKj,@function
_Z17vel_insert_vm512uPmPKmPKj:
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

	.globl	_Z17vel_insert_vm512lPmPKmPKj
	.p2align	4
	.type	_Z17vel_insert_vm512lPmPKmPKj,@function
_Z17vel_insert_vm512lPmPKmPKj:
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

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 9c45d576945a4fddcd08d0c3956139ae53c477e8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
