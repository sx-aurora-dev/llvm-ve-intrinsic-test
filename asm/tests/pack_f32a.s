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
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git e570410190bb70408e4f61459b2f988e92caea54)"
	.section	".note.GNU-stack","",@progbits
