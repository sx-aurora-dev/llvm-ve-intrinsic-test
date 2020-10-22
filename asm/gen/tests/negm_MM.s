	.text
	.file	"negm_MM.c"
	.globl	negm_MM                         # -- Begin function negm_MM
	.p2align	4
	.type	negm_MM,@function
negm_MM:                                # @negm_MM
# %bb.0:
	ld %s2, (, %s1)
	ld %s3, 8(, %s1)
	ld %s4, 16(, %s1)
	ld %s5, 24(, %s1)
	lvm %vm3, 0, %s2
	lvm %vm3, 1, %s3
	lvm %vm3, 2, %s4
	lvm %vm3, 3, %s5
	ld %s2, 32(, %s1)
	ld %s3, 40(, %s1)
	ld %s4, 48(, %s1)
	ld %s1, 56(, %s1)
	lvm %vm2, 0, %s2
	lvm %vm2, 1, %s3
	lvm %vm2, 2, %s4
	lvm %vm2, 3, %s1
	negm %vm2, %vm2
	negm %vm3, %vm3
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
	.size	negm_MM, .Lfunc_end0-negm_MM
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
