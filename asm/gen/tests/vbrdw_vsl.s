	.text
	.file	"vbrdw_vsl.c"
	.globl	vbrdw_vsl                       # -- Begin function vbrdw_vsl
	.p2align	4
	.type	vbrdw_vsl,@function
vbrdw_vsl:                              # @vbrdw_vsl
# %bb.0:
	and %s2, %s2, (32)0
	brgt.w 1, %s2, .LBB0_3
# %bb.1:
	and %s1, %s1, (32)0
	or %s3, 0, (0)1
	lea %s4, 256
	or %s5, 0, %s2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s6, %s5, %s4
	lvl %s6
	vbrdl %v0, %s1
	vstl %v0, 4, %s0
	lea %s0, 1024(, %s0)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (56)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdw_vsl, .Lfunc_end0-vbrdw_vsl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bf7303a9872881ebd21fb1958340e7d774f9887b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
