	.text
	.file	"vmulslw_vvvl.c"
	.globl	vmulslw_vvvl                    # -- Begin function vmulslw_vvvl
	.p2align	4
	.type	vmulslw_vvvl,@function
vmulslw_vvvl:                           # @vmulslw_vvvl
# %bb.0:
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vldl.sx %v0, 4, %s1
	vldl.sx %v1, 4, %s2
	vmuls.l.w %v0, %v0, %v1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 1024(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vmulslw_vvvl, .Lfunc_end0-vmulslw_vvvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git e570410190bb70408e4f61459b2f988e92caea54)"
	.section	".note.GNU-stack","",@progbits
