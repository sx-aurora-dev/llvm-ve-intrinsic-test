	.text
	.file	"orm_mmm.c"
	.globl	orm_mmm                         # -- Begin function orm_mmm
	.p2align	4
	.type	orm_mmm,@function
orm_mmm:                                # @orm_mmm
# %bb.0:
	ld %s3, (, %s1)
	ld %s4, (, %s2)
	ld %s5, 8(, %s1)
	ld %s6, 8(, %s2)
	lvm %vm1, 0, %s3
	lvm %vm2, 0, %s4
	lvm %vm1, 1, %s5
	lvm %vm2, 1, %s6
	ld %s3, 16(, %s1)
	ld %s4, 16(, %s2)
	ld %s1, 24(, %s1)
	ld %s2, 24(, %s2)
	lvm %vm1, 2, %s3
	lvm %vm2, 2, %s4
	lvm %vm1, 3, %s1
	lvm %vm2, 3, %s2
	orm %vm1, %vm1, %vm2
	svm %s1, %vm1, 0
	st %s1, (, %s0)
	svm %s1, %vm1, 1
	st %s1, 8(, %s0)
	svm %s1, %vm1, 2
	st %s1, 16(, %s0)
	svm %s1, %vm1, 3
	st %s1, 24(, %s0)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	orm_mmm, .Lfunc_end0-orm_mmm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 99c58077b7589ed94981de5c768941146d2435b2)"
	.section	".note.GNU-stack","",@progbits
