	.text
	.file	"vel_lsv.c"
	.globl	lsv_vss                         # -- Begin function lsv_vss
	.p2align	4
	.type	lsv_vss,@function
lsv_vss:                                # @lsv_vss
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s0
	and %s1, %s1, (32)0
	lsv %v0(%s1), %s2
	vst %v0, 8, %s0
	b.l.t (, %s10)
.Lfunc_end0:
	.size	lsv_vss, .Lfunc_end0-lsv_vss
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
