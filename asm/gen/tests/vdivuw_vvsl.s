	.text
	.file	"vdivuw_vvsl.c"
	.globl	vdivuw_vvsl                     # -- Begin function vdivuw_vvsl
	.p2align	4
	.type	vdivuw_vvsl,@function
vdivuw_vvsl:                            # @vdivuw_vvsl
# %bb.0:
	and %s3, %s3, (32)0
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vldl.sx %v0, 4, %s1
	vdivu.w %v0, %v0, %s2
	vstl %v0, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vdivuw_vvsl, .Lfunc_end0-vdivuw_vvsl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
