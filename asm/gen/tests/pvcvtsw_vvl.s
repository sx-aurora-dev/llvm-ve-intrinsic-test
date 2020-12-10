	.text
	.file	"pvcvtsw_vvl.c"
	.globl	pvcvtsw_vvl                     # -- Begin function pvcvtsw_vvl
	.p2align	4
	.type	pvcvtsw_vvl,@function
pvcvtsw_vvl:                            # @pvcvtsw_vvl
# %bb.0:
	brgt.w 1, %s2, .LBB0_3
# %bb.1:
	or %s3, 0, (0)1
	lea %s4, 512
	or %s5, 0, %s2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s6, %s5, 1
	cmps.w.sx %s7, %s5, %s4
	lea %s34, 256
	cmov.w.lt %s34, %s6, %s7
	lvl %s34
	vld %v0, 8, %s1
	pvcvt.s.w %v0, %v0
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (55)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvcvtsw_vvl, .Lfunc_end0-pvcvtsw_vvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 99c58077b7589ed94981de5c768941146d2435b2)"
	.section	".note.GNU-stack","",@progbits
