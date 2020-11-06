	.text
	.file	"vsrawsx_vvsmvl_imm.c"
	.globl	vsrawsx_vvsmvl_imm              # -- Begin function vsrawsx_vvsmvl_imm
	.p2align	4
	.type	vsrawsx_vvsmvl_imm,@function
vsrawsx_vvsmvl_imm:                     # @vsrawsx_vvsmvl_imm
# %bb.0:
	brgt.w 1, %s4, .LBB0_3
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vldl.sx %v0, 4, %s1
	vldl.zx %v1, 4, %s2
	vldl.sx %v2, 4, %s3
	vfmk.w.gt %vm1, %v1
	vsra.w.sx %v2, %v0, 3, %vm1
	vstl %v2, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vsrawsx_vvsmvl_imm, .Lfunc_end0-vsrawsx_vvsmvl_imm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git abc0611048916f1be3a5a11282325b09a6c4d450)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
