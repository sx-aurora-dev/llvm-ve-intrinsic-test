	.text
	.file	"vfcmpd_vsvl.c"
	.globl	vfcmpd_vsvl                     # -- Begin function vfcmpd_vsvl
	.p2align	4
	.type	vfcmpd_vsvl,@function
vfcmpd_vsvl:                            # @vfcmpd_vsvl
# %bb.0:
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vld %v0, 8, %s2
	vfcmp.d %v0, %s1, %v0
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfcmpd_vsvl, .Lfunc_end0-vfcmpd_vsvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git e570410190bb70408e4f61459b2f988e92caea54)"
	.section	".note.GNU-stack","",@progbits
