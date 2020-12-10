	.text
	.file	"vbrdl_vsl_imm.c"
	.globl	vbrdl_vsl_imm                   # -- Begin function vbrdl_vsl_imm
	.p2align	4
	.type	vbrdl_vsl_imm,@function
vbrdl_vsl_imm:                          # @vbrdl_vsl_imm
# %bb.0:
	brgt.w 1, %s1, .LBB0_3
# %bb.1:
	or %s2, 0, (0)1
	lea %s3, 256
	or %s4, 0, %s1
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s5, %s4, %s3
	lvl %s5
	vbrd %v0, 3
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	adds.w.sx %s2, %s2, %s3
	adds.w.sx %s4, %s4, (56)1
	brlt.w %s2, %s1, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdl_vsl_imm, .Lfunc_end0-vbrdl_vsl_imm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 99c58077b7589ed94981de5c768941146d2435b2)"
	.section	".note.GNU-stack","",@progbits
