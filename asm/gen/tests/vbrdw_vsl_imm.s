	.text
	.file	"vbrdw_vsl_imm.c"
	.globl	vbrdw_vsl_imm                   # -- Begin function vbrdw_vsl_imm
	.p2align	4
	.type	vbrdw_vsl_imm,@function
vbrdw_vsl_imm:                          # @vbrdw_vsl_imm
# %bb.0:
	brgt.w 1, %s1, .LBB0_3
# %bb.1:
	or %s2, 0, (0)1
	lea %s3, 256
	or %s4, 0, %s1
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s5, %s4, %s3
	lvl %s5
	vbrdl %v0, 3
	vstl %v0, 4, %s0
	lea %s0, 1024(, %s0)
	adds.w.sx %s2, %s2, %s3
	adds.w.sx %s4, %s4, (56)1
	brlt.w %s2, %s1, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdw_vsl_imm, .Lfunc_end0-vbrdw_vsl_imm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git abc0611048916f1be3a5a11282325b09a6c4d450)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
