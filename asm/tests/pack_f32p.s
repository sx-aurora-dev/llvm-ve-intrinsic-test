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
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
