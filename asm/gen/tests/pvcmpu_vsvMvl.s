	.text
	.file	"pvcmpu_vsvMvl.c"
	.globl	pvcmpu_vsvMvl                   # -- Begin function pvcmpu_vsvMvl
	.p2align	4
	.type	pvcmpu_vsvMvl,@function
pvcmpu_vsvMvl:                          # @pvcmpu_vsvMvl
# %bb.0:
	brgt.w 1, %s5, .LBB0_3
# %bb.1:
	or %s6, 0, (0)1
	lea %s7, 512
	or %s34, 0, %s5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s35, %s34, 1
	cmps.w.sx %s36, %s34, %s7
	lea %s37, 256
	cmov.w.lt %s37, %s35, %s36
	lvl %s37
	vld %v0, 8, %s2
	vld %v1, 8, %s3
	vld %v2, 8, %s4
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	pvcmpu %v2, %s1, %v0, %vm2
	vst %v2, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	lea %s4, 2048(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (55)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvcmpu_vsvMvl, .Lfunc_end0-pvcmpu_vsvMvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git abc0611048916f1be3a5a11282325b09a6c4d450)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
