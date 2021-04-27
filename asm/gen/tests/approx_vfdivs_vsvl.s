	.text
	.file	"approx_vfdivs_vsvl.c"
	.globl	approx_vfdivs_vsvl              # -- Begin function approx_vfdivs_vsvl
	.p2align	4
	.type	approx_vfdivs_vsvl,@function
approx_vfdivs_vsvl:                     # @approx_vfdivs_vsvl
# %bb.0:
	and %s3, %s3, (32)0
	brgt.w 1, %s3, .LBB0_4
# %bb.1:
	lea %s4, 256
	lea.sl %s5, 1065353216
	lea %s6, 512
	or %s7, 0, %s3
	lea %s34, 256
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s35, %s7, %s4
	lvl %s35
	vldu %v0, 4, %s2
	vrcp.s %v1, %v0
	vfnmsb.s %v2, %s5, %v0, %v1
	vfmad.s %v2, %v1, %v1, %v2
	vfmul.s %v3, %s1, %v2
	vfnmsb.s %v4, %s1, %v3, %v0
	vfmad.s %v1, %v3, %v1, %v4
	vfnmsb.s %v0, %s1, %v1, %v0
	vfmad.s %v0, %v1, %v2, %v0
	vstu %v0, 4, %s0
	brge.w %s34, %s3, .LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s35, %s7, (56)1
	mins.w.sx %s35, %s35, %s4
	lea %s36, 1024(, %s2)
	lvl %s35
	vldu %v0, 4, %s36
	vrcp.s %v1, %v0
	vfnmsb.s %v2, %s5, %v0, %v1
	vfmad.s %v2, %v1, %v1, %v2
	vfmul.s %v3, %s1, %v2
	vfnmsb.s %v4, %s1, %v3, %v0
	vfmad.s %v1, %v3, %v1, %v4
	vfnmsb.s %v0, %s1, %v1, %v0
	vfmad.s %v0, %v1, %v2, %v0
	lea %s36, 1024(, %s0)
	vstu %v0, 4, %s36
	adds.w.sx %s35, %s34, %s4
	adds.w.sx %s34, %s34, %s6
	adds.w.sx %s7, %s7, (55)1
	lea %s2, 2048(, %s2)
	lea %s0, 2048(, %s0)
                                        # kill: def $sw34 killed $sw34 def $sx34
	brlt.w %s35, %s3, .LBB0_2
.LBB0_4:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	approx_vfdivs_vsvl, .Lfunc_end0-approx_vfdivs_vsvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
