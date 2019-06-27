	.text
	.file	"ve_insert_vm512.cc"
	.globl	_Z16ve_insert_vm512uPmPKmPKj
	.p2align	4
	.type	_Z16ve_insert_vm512uPmPKmPKj,@function
_Z16ve_insert_vm512uPmPKmPKj:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB0_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s1
	vld %v1,8,%s2
	vfmk.l.gt %vm1,%v0
	pvfmk.w.up.gt %vm2,%v1
	vfmk.w.gt %vm3,%v1
	andm %vm2,%vm0,%vm1
	svm %s34,%vm3,0
	st %s34, (,%s0)
	svm %s34,%vm3,1
	st %s34, 8(,%s0)
	svm %s34,%vm3,2
	st %s34, 16(,%s0)
	svm %s34,%vm3,3
	st %s34, 24(,%s0)
	svm %s34,%vm2,0
	st %s34, 32(,%s0)
	svm %s34,%vm2,1
	st %s34, 40(,%s0)
	svm %s34,%vm2,2
	st %s34, 48(,%s0)
	svm %s34,%vm2,3
	st %s34, 56(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	_Z16ve_insert_vm512uPmPKmPKj, .Lfunc_end0-_Z16ve_insert_vm512uPmPKmPKj

	.globl	_Z16ve_insert_vm512lPmPKmPKj
	.p2align	4
	.type	_Z16ve_insert_vm512lPmPKmPKj,@function
_Z16ve_insert_vm512lPmPKmPKj:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB1_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s1
	vld %v1,8,%s2
	vfmk.l.gt %vm1,%v0
	pvfmk.w.up.gt %vm2,%v1
	vfmk.w.gt %vm3,%v1
	andm %vm3,%vm0,%vm1
	svm %s34,%vm3,0
	st %s34, (,%s0)
	svm %s34,%vm3,1
	st %s34, 8(,%s0)
	svm %s34,%vm3,2
	st %s34, 16(,%s0)
	svm %s34,%vm3,3
	st %s34, 24(,%s0)
	svm %s34,%vm2,0
	st %s34, 32(,%s0)
	svm %s34,%vm2,1
	st %s34, 40(,%s0)
	svm %s34,%vm2,2
	st %s34, 48(,%s0)
	svm %s34,%vm2,3
	st %s34, 56(,%s0)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end1:
	.size	_Z16ve_insert_vm512lPmPKmPKj, .Lfunc_end1-_Z16ve_insert_vm512lPmPKmPKj


	.ident	"clang version 9.0.0 (/usr/work1/home/ishizaka/work/ve-llvm/src/llvm/tools/clang 249ba95027e4c332fc9b0451eac67826e8861e2e) (llvm/src/llvm 0fcb01986d1f293be44d697a9020929f0938a880)"
	.section	".note.GNU-stack","",@progbits
