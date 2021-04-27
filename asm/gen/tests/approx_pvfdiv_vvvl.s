	.text
	.file	"approx_pvfdiv_vvvl.c"
	.globl	approx_pvfdiv_vvvl              # -- Begin function approx_pvfdiv_vvvl
	.p2align	4
	.type	approx_pvfdiv_vvvl,@function
approx_pvfdiv_vvvl:                     # @approx_pvfdiv_vvvl
# %bb.0:
	brgt.w 1, %s3, .LBB0_4
# %bb.1:
	lea %s4, 256
	or %s5, 1, (0)1
	lea %s6, 512
	or %s7, 0, %s3
	lea %s34, 256
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s35, %s7, %s4
	lvl %s35
	vldu %v0, 4, %s1
	vldu %v1, 4, %s2
	pvrcp %v2, %v1
	pvfnmsb %v3, %s5, %v1, %v2
	pvfmad %v3, %v2, %v2, %v3
	pvfmul %v4, %v0, %v3
	pvfnmsb %v5, %v0, %v4, %v1
	pvfmad %v2, %v4, %v2, %v5
	pvfnmsb %v0, %v0, %v2, %v1
	pvfmad %v0, %v2, %v3, %v0
	vstu %v0, 4, %s0
	brge.w %s34, %s3, .LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s35, %s7, (56)1
	mins.w.sx %s35, %s35, %s4
	lea %s36, 1024(, %s1)
	lvl %s35
	vldu %v0, 4, %s36
	lea %s36, 1024(, %s2)
	vldu %v1, 4, %s36
	pvrcp %v2, %v1
	pvfnmsb %v3, %s5, %v1, %v2
	pvfmad %v3, %v2, %v2, %v3
	pvfmul %v4, %v0, %v3
	pvfnmsb %v5, %v0, %v4, %v1
	pvfmad %v2, %v4, %v2, %v5
	pvfnmsb %v0, %v0, %v2, %v1
	pvfmad %v0, %v2, %v3, %v0
	lea %s36, 1024(, %s0)
	vstu %v0, 4, %s36
	adds.w.sx %s35, %s34, %s4
	adds.w.sx %s34, %s34, %s6
	adds.w.sx %s7, %s7, (55)1
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	lea %s0, 2048(, %s0)
                                        # kill: def $sw34 killed $sw34 def $sx34
	brlt.w %s35, %s3, .LBB0_2
.LBB0_4:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	approx_pvfdiv_vvvl, .Lfunc_end0-approx_pvfdiv_vvvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
