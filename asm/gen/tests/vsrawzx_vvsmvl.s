	.text
	.file	"vsrawzx_vvsmvl.c"
	.globl	vsrawzx_vvsmvl                  # -- Begin function vsrawzx_vvsmvl
	.p2align	4
	.type	vsrawzx_vvsmvl,@function
vsrawzx_vvsmvl:                         # @vsrawzx_vvsmvl
# %bb.0:
	brgt.w 1, %s5, .LBB0_3
# %bb.1:
	and %s2, %s2, (32)0
	or %s6, 0, (0)1
	lea %s7, 256
	or %s34, 0, %s5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s35, %s34, %s7
	lvl %s35
	vldl.sx %v0, 4, %s1
	vldl.zx %v1, 4, %s3
	vldl.sx %v2, 4, %s4
	vfmk.w.gt %vm1, %v1
	vsra.w.zx %v2, %v0, %s2, %vm1
	vstl %v2, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s3, 1024(, %s3)
	lea %s4, 1024(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (56)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vsrawzx_vvsmvl, .Lfunc_end0-vsrawzx_vvsmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bfa3af73d87fd3c1511a0e3f6781abefc7af02a7)"
	.section	".note.GNU-stack","",@progbits
