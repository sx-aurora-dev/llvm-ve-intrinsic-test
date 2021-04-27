	.text
	.file	"pack_f32a.c"
	.globl	vel_pack_f32a                   # -- Begin function vel_pack_f32a
	.p2align	4
	.type	vel_pack_f32a,@function
vel_pack_f32a:                          # @vel_pack_f32a
# %bb.0:
	ldl.zx %s0, (, %s0)
	lea %s1, 1
	and %s1, %s1, (32)0
	lea.sl %s1, 1(, %s1)
	mulu.l %s0, %s0, %s1
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vel_pack_f32a, .Lfunc_end0-vel_pack_f32a
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
