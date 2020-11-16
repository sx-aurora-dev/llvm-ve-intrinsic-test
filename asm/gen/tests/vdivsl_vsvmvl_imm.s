	.text
	.file	"vdivsl_vsvmvl_imm.c"
	.globl	vdivsl_vsvmvl_imm               # -- Begin function vdivsl_vsvmvl_imm
	.p2align	4
	.type	vdivsl_vsvmvl_imm,@function
vdivsl_vsvmvl_imm:                      # @vdivsl_vsvmvl_imm
# %bb.0:
	brgt.w 1, %s4, .LBB0_3
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vld %v0, 8, %s1
	vldl.zx %v1, 4, %s2
	vld %v2, 8, %s3
	vfmk.w.gt %vm1, %v1
	vdivs.l %v2, 3, %v0, %vm1
	vst %v2, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 1024(, %s2)
	lea %s3, 2048(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vdivsl_vsvmvl_imm, .Lfunc_end0-vdivsl_vsvmvl_imm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 140246b32bf1e904594de0d2b662880f6a40f9cb)"
	.section	".note.GNU-stack","",@progbits
