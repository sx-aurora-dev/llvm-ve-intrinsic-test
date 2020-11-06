	.text
	.file	"vmulul_vsvl_imm.c"
	.globl	vmulul_vsvl_imm                 # -- Begin function vmulul_vsvl_imm
	.p2align	4
	.type	vmulul_vsvl_imm,@function
vmulul_vsvl_imm:                        # @vmulul_vsvl_imm
# %bb.0:
	brgt.w 1, %s2, .LBB0_3
# %bb.1:
	or %s3, 0, (0)1
	lea %s4, 256
	or %s5, 0, %s2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s6, %s5, %s4
	lvl %s6
	vld %v0, 8, %s1
	vmulu.l %v0, 3, %v0
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (56)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vmulul_vsvl_imm, .Lfunc_end0-vmulul_vsvl_imm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git abc0611048916f1be3a5a11282325b09a6c4d450)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
