	.text
	.file	"vslal_vvsmvl_imm.c"
	.globl	vslal_vvsmvl_imm                # -- Begin function vslal_vvsmvl_imm
	.p2align	4
	.type	vslal_vvsmvl_imm,@function
vslal_vvsmvl_imm:                       # @vslal_vvsmvl_imm
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
	vsla.l %v2, %v0, 3, %vm1
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
	.size	vslal_vvsmvl_imm, .Lfunc_end0-vslal_vvsmvl_imm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git e570410190bb70408e4f61459b2f988e92caea54)"
	.section	".note.GNU-stack","",@progbits
