	.text
	.file	"vdivswsx_vsvl_imm.c"
	.globl	vdivswsx_vsvl_imm               # -- Begin function vdivswsx_vsvl_imm
	.p2align	4
	.type	vdivswsx_vsvl_imm,@function
vdivswsx_vsvl_imm:                      # @vdivswsx_vsvl_imm
# %bb.0:
	brgt.w 1, %s2, .LBB0_3
# %bb.1:
	or %s3, 0, (0)1
	lea %s4, 256
	or %s5, 0, %s2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s6, %s5, %s4
	lvl %s6
	vldl.sx %v0, 4, %s1
	vdivs.w.sx %v0, 3, %v0
	vstl %v0, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (56)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vdivswsx_vsvl_imm, .Lfunc_end0-vdivswsx_vsvl_imm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
