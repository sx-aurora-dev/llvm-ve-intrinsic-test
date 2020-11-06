	.text
	.file	"vsrawzx_vvsl.c"
	.globl	vsrawzx_vvsl                    # -- Begin function vsrawzx_vvsl
	.p2align	4
	.type	vsrawzx_vvsl,@function
vsrawzx_vvsl:                           # @vsrawzx_vvsl
# %bb.0:
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	and %s2, %s2, (32)0
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vldl.sx %v0, 4, %s1
	vsra.w.zx %v0, %v0, %s2
	vstl %v0, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vsrawzx_vvsl, .Lfunc_end0-vsrawzx_vvsl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git abc0611048916f1be3a5a11282325b09a6c4d450)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
