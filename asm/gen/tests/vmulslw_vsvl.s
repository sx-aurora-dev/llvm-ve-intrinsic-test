	.text
	.file	"vmulslw_vsvl.c"
	.globl	vmulslw_vsvl                    # -- Begin function vmulslw_vsvl
	.p2align	4
	.type	vmulslw_vsvl,@function
vmulslw_vsvl:                           # @vmulslw_vsvl
# %bb.0:
	and %s3, %s3, (32)0
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	and %s1, %s1, (32)0
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vldl.sx %v0, 4, %s2
	vmuls.l.w %v0, %s1, %v0
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s2, 1024(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vmulslw_vsvl, .Lfunc_end0-vmulslw_vsvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bfa3af73d87fd3c1511a0e3f6781abefc7af02a7)"
	.section	".note.GNU-stack","",@progbits
