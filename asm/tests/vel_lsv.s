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
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
