	.text
	.file	"vbrdl_vsmvl_imm.c"
	.globl	vbrdl_vsmvl_imm                 # -- Begin function vbrdl_vsmvl_imm
	.p2align	4
	.type	vbrdl_vsmvl_imm,@function
vbrdl_vsmvl_imm:                        # @vbrdl_vsmvl_imm
# %bb.0:
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vldl.zx %v0, 4, %s1
	vld %v1, 8, %s2
	vfmk.w.gt %vm1, %v0
	vbrd %v1, 3, %vm1
	vst %v1, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 2048(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdl_vsmvl_imm, .Lfunc_end0-vbrdl_vsmvl_imm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bf7303a9872881ebd21fb1958340e7d774f9887b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
