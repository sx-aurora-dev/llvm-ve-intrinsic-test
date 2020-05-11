	.text
	.file	"vel_insert_vm512.cc"
	.globl	_Z17vel_insert_vm512uPmPKmPKj
	.p2align	4
	.type	_Z17vel_insert_vm512uPmPKmPKj,@function
_Z17vel_insert_vm512uPmPKmPKj:
.L_Z17vel_insert_vm512uPmPKmPKj$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB0_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	vld %v1,8,%s2
	vfmk.l.gt %vm1,%v0
	pvfmk.w.up.gt %vm2,%v1
	pvfmk.w.lo.gt %vm3,%v1
	andm %vm2,%vm0,%vm1
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z17vel_insert_vm512uPmPKmPKj, .Lfunc_end0-_Z17vel_insert_vm512uPmPKmPKj

	.globl	_Z17vel_insert_vm512lPmPKmPKj
	.p2align	4
	.type	_Z17vel_insert_vm512lPmPKmPKj,@function
_Z17vel_insert_vm512lPmPKmPKj:
.L_Z17vel_insert_vm512lPmPKmPKj$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB1_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s1
	vld %v1,8,%s2
	vfmk.l.gt %vm1,%v0
	pvfmk.w.up.gt %vm2,%v1
	pvfmk.w.lo.gt %vm3,%v1
	andm %vm3,%vm0,%vm1
	svm %s1,%vm3,0
	st %s1, (, %s0)
	svm %s1,%vm3,1
	st %s1, 8(, %s0)
	svm %s1,%vm3,2
	st %s1, 16(, %s0)
	svm %s1,%vm3,3
	st %s1, 24(, %s0)
	svm %s1,%vm2,0
	st %s1, 32(, %s0)
	svm %s1,%vm2,1
	st %s1, 40(, %s0)
	svm %s1,%vm2,2
	st %s1, 48(, %s0)
	svm %s1,%vm2,3
	st %s1, 56(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z17vel_insert_vm512lPmPKmPKj, .Lfunc_end1-_Z17vel_insert_vm512lPmPKmPKj

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 072128447b185a0efac468ec289aad14e6a2222e)"
	.section	".note.GNU-stack","",@progbits
