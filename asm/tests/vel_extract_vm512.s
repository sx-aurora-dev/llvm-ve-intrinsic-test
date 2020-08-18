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

	.ident	"clang version 12.0.0 (/usr/uhome/aurora/fccg/t-baba/llvm-dev/llvm-project/clang 3fad6478895c162a7bc491cc4b66c08dd4558a03)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
