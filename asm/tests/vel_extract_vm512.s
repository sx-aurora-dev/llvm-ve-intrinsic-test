	.text
	.file	"vel_extract_vm512.cc"
	.globl	_Z18vel_extract_vm512uPmPKj
	.p2align	4
	.type	_Z18vel_extract_vm512uPmPKj,@function
_Z18vel_extract_vm512uPmPKj:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s1
	pvfmk.w.up.gt %vm2, %v0
	vfmk.w.gt %vm3, %v0
	svm %s1, %vm2, 0
	st %s1, (, %s0)
	svm %s1, %vm2, 1
	st %s1, 8(, %s0)
	svm %s1, %vm2, 2
	st %s1, 16(, %s0)
	svm %s1, %vm2, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z18vel_extract_vm512uPmPKj, .Lfunc_end0-_Z18vel_extract_vm512uPmPKj

	.globl	_Z18vel_extract_vm512lPmPKj
	.p2align	4
	.type	_Z18vel_extract_vm512lPmPKj,@function
_Z18vel_extract_vm512lPmPKj:
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
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z18vel_extract_vm512lPmPKj, .Lfunc_end1-_Z18vel_extract_vm512lPmPKj

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 9c45d576945a4fddcd08d0c3956139ae53c477e8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
