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
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 140246b32bf1e904594de0d2b662880f6a40f9cb)"
	.section	".note.GNU-stack","",@progbits
