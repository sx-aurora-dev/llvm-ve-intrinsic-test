	.text
	.file	"vm03.cc"
	.globl	_Z4funcv
	.p2align	4
	.type	_Z4funcv,@function
_Z4funcv:
.L_Z4funcv$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB0_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
	or %s1, 0, (0)1
	lvm %vm1,0,%s1
	lvm %vm1,1,%s1
	lvm %vm1,2,%s1
	lvm %vm1,3,%s1
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,0
	st %s1, (, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end0:
	.size	_Z4funcv, .Lfunc_end0-_Z4funcv

	.globl	_Z10_test_vm03v
	.p2align	4
	.type	_Z10_test_vm03v,@function
_Z10_test_vm03v:
.L_Z10_test_vm03v$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -272
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB1_2
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
	bsic %lr, (, %s12)
	or %s0, 0, (0)1
	lvm %vm1,0,%s0
	lvm %vm1,1,%s0
	lvm %vm1,2,%s0
	lvm %vm1,3,%s0
	svm %s1,%vm1,0
	svm %s2,%vm1,1
	or %s1, %s1, %s2
	svm %s2,%vm1,2
	or %s1, %s1, %s2
	svm %s2,%vm1,3
	or %s1, %s1, %s2
	cmps.l %s1, %s1, %s0
	cmov.l.eq %s0, (63)0, %s1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end1:
	.size	_Z10_test_vm03v, .Lfunc_end1-_Z10_test_vm03v

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 890342c8b12a139820ad5b21fdf1742f70b7eee8)"
	.section	".note.GNU-stack","",@progbits
