	.text
	.file	"vfnmsbd_vvsvl.c"
	.globl	vfnmsbd_vvsvl                   # -- Begin function vfnmsbd_vvsvl
	.p2align	4
	.type	vfnmsbd_vvsvl,@function
vfnmsbd_vvsvl:                          # @vfnmsbd_vvsvl
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
	vld %v1, 8, %s3
	vfnmsb.d %v0, %v0, %s2, %v1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s3, 2048(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfnmsbd_vvsvl, .Lfunc_end0-vfnmsbd_vvsvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git e570410190bb70408e4f61459b2f988e92caea54)"
	.section	".note.GNU-stack","",@progbits
