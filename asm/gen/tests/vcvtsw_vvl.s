	.text
	.file	"vcvtsw_vvl.c"
	.globl	vcvtsw_vvl                      # -- Begin function vcvtsw_vvl
	.p2align	4
	.type	vcvtsw_vvl,@function
vcvtsw_vvl:                             # @vcvtsw_vvl
# %bb.0:
	brgt.w 1, %s2, .LBB0_3
# %bb.1:
	or %s3, 0, (0)1
	lea %s4, 256
	or %s5, 0, %s2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s6, %s5, %s4
	lvl %s6
	vldl.sx %v0, 4, %s1
	vcvt.s.w %v0, %v0
	vstu %v0, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (56)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vcvtsw_vvl, .Lfunc_end0-vcvtsw_vvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 99c58077b7589ed94981de5c768941146d2435b2)"
	.section	".note.GNU-stack","",@progbits
