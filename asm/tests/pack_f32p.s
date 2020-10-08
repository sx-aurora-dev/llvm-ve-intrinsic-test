	.text
	.file	"pack_f32p.c"
	.globl	pack_f32p                       # -- Begin function pack_f32p
	.p2align	4
	.type	pack_f32p,@function
pack_f32p:                              # @pack_f32p
# %bb.0:
	ldu %s1, (, %s0)
	ldl.zx %s0, 4(, %s0)
	or %s0, %s1, %s0
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pack_f32p, .Lfunc_end0-pack_f32p
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bf7303a9872881ebd21fb1958340e7d774f9887b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
