	.text
	.file	"vsfa_vvssl_imm.c"
	.globl	vsfa_vvssl_imm                  # -- Begin function vsfa_vvssl_imm
	.p2align	4
	.type	vsfa_vvssl_imm,@function
vsfa_vvssl_imm:                         # @vsfa_vvssl_imm
# %bb.0:
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vld %v0, 8, %s1
	vsfa %v0, %v0, 3, %s2
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vsfa_vvssl_imm, .Lfunc_end0-vsfa_vvssl_imm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
