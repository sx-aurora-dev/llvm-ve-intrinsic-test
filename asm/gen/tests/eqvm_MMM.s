	.text
	.file	"eqvm_MMM.c"
	.globl	eqvm_MMM                        # -- Begin function eqvm_MMM
	.p2align	4
	.type	eqvm_MMM,@function
eqvm_MMM:                               # @eqvm_MMM
# %bb.0:
	ld %s3, (, %s1)
	ld %s4, (, %s2)
	ld %s5, 8(, %s1)
	ld %s6, 8(, %s2)
	lvm %vm3, 0, %s3
	lvm %vm5, 0, %s4
	lvm %vm3, 1, %s5
	lvm %vm5, 1, %s6
	ld %s3, 16(, %s1)
	ld %s4, 16(, %s2)
	ld %s5, 24(, %s1)
	ld %s6, 24(, %s2)
	lvm %vm3, 2, %s3
	lvm %vm5, 2, %s4
	lvm %vm3, 3, %s5
	lvm %vm5, 3, %s6
	ld %s3, 32(, %s1)
	ld %s4, 32(, %s2)
	ld %s5, 40(, %s1)
	ld %s6, 40(, %s2)
	lvm %vm2, 0, %s3
	lvm %vm4, 0, %s4
	lvm %vm2, 1, %s5
	lvm %vm4, 1, %s6
	ld %s3, 48(, %s1)
	ld %s4, 48(, %s2)
	ld %s1, 56(, %s1)
	ld %s2, 56(, %s2)
	lvm %vm2, 2, %s3
	lvm %vm4, 2, %s4
	lvm %vm2, 3, %s1
	lvm %vm4, 3, %s2
	eqvm %vm2, %vm2, %vm4
	eqvm %vm3, %vm3, %vm5
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
	.size	eqvm_MMM, .Lfunc_end0-eqvm_MMM
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git e570410190bb70408e4f61459b2f988e92caea54)"
	.section	".note.GNU-stack","",@progbits
