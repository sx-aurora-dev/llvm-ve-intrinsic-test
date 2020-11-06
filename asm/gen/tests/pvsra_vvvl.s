	.text
	.file	"pvsra_vvvl.c"
	.globl	pvsra_vvvl                      # -- Begin function pvsra_vvvl
	.p2align	4
	.type	pvsra_vvvl,@function
pvsra_vvvl:                             # @pvsra_vvvl
# %bb.0:
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	or %s4, 0, (0)1
	lea %s5, 512
	or %s6, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s7, %s6, 1
	cmps.w.sx %s34, %s6, %s5
	lea %s35, 256
	cmov.w.lt %s35, %s7, %s34
	lvl %s35
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	pvsra %v0, %v0, %v1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (55)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvsra_vvvl, .Lfunc_end0-pvsra_vvvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git abc0611048916f1be3a5a11282325b09a6c4d450)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
