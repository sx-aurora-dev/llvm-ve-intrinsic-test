	.text
	.file	"negm_mm.c"
	.globl	negm_mm
	.p2align	4
	.type	negm_mm,@function
negm_mm:
.Lnegm_mm$local:
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
	ld %s2, (, %s1)
	ld %s3, 8(, %s1)
	ld %s4, 16(, %s1)
	ld %s1, 24(, %s1)
	lvm %vm1,0,%s2
	lvm %vm1,1,%s3
	lvm %vm1,2,%s4
	lvm %vm1,3,%s1
	negm %vm1,%vm1
	svm %s1,%vm1,0
	st %s1, (, %s0)
	svm %s1,%vm1,1
	st %s1, 8(, %s0)
	svm %s1,%vm1,2
	st %s1, 16(, %s0)
	svm %s1,%vm1,3
	st %s1, 24(, %s0)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	negm_mm, .Lfunc_end0-negm_mm

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 072128447b185a0efac468ec289aad14e6a2222e)"
	.section	".note.GNU-stack","",@progbits
