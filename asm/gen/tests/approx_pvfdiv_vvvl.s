	.text
	.file	"approx_pvfdiv_vvvl.c"
	.globl	approx_pvfdiv_vvvl              # -- Begin function approx_pvfdiv_vvvl
	.p2align	4
	.type	approx_pvfdiv_vvvl,@function
approx_pvfdiv_vvvl:                     # @approx_pvfdiv_vvvl
# %bb.0:
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 1, (0)1
	or %s7, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s34, %s7, %s5
	lvl %s34
	vldu %v0, 4, %s1
	vldu %v1, 4, %s2
	pvrcp %v2, %v1
	pvfnmsb %v3, %s6, %v1, %v2
	pvfmad %v3, %v2, %v2, %v3
	pvfmul %v4, %v0, %v3
	pvfnmsb %v5, %v0, %v4, %v1
	pvfmad %v2, %v4, %v2, %v5
	pvfnmsb %v0, %v0, %v2, %v1
	pvfmad %v0, %v2, %v3, %v0
	vstu %v0, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 1024(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	approx_pvfdiv_vvvl, .Lfunc_end0-approx_pvfdiv_vvvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 99c58077b7589ed94981de5c768941146d2435b2)"
	.section	".note.GNU-stack","",@progbits
