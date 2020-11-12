	.text
	.file	"pvfmsb_vvvvMvl.c"
	.globl	pvfmsb_vvvvMvl                  # -- Begin function pvfmsb_vvvvMvl
	.p2align	4
	.type	pvfmsb_vvvvMvl,@function
pvfmsb_vvvvMvl:                         # @pvfmsb_vvvvMvl
# %bb.0:
	brgt.w 1, %s6, .LBB0_3
# %bb.1:
	or %s7, 0, (0)1
	lea %s34, 512
	or %s35, 0, %s6
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s36, %s35, 1
	cmps.w.sx %s37, %s35, %s34
	lea %s38, 256
	cmov.w.lt %s38, %s36, %s37
	lvl %s38
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vld %v2, 8, %s3
	vld %v3, 8, %s4
	vld %v4, 8, %s5
	pvfmk.w.up.gt %vm2, %v3
	vfmk.w.gt %vm3, %v3
	pvfmsb %v4, %v0, %v1, %v2, %vm2
	vst %v4, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	lea %s4, 2048(, %s4)
	lea %s5, 2048(, %s5)
	adds.w.sx %s7, %s7, %s34
	adds.w.sx %s35, %s35, (55)1
	brlt.w %s7, %s6, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfmsb_vvvvMvl, .Lfunc_end0-pvfmsb_vvvvMvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git e570410190bb70408e4f61459b2f988e92caea54)"
	.section	".note.GNU-stack","",@progbits
