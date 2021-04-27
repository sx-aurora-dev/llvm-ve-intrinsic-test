	.text
	.file	"approx_vfdivs_vvsl.c"
	.globl	approx_vfdivs_vvsl              # -- Begin function approx_vfdivs_vvsl
	.p2align	4
	.type	approx_vfdivs_vvsl,@function
approx_vfdivs_vvsl:                     # @approx_vfdivs_vvsl
# %bb.0:
	and %s3, %s3, (32)0
	brgt.w 1, %s3, .LBB0_5
# %bb.1:
	lea.sl %s4, 1065353216
	fdiv.s %s4, %s4, %s2
	or %s5, 0, (0)1
	lea %s6, 256
	lea %s7, 512
	lea %s34, 768
	lea %s35, -768
	or %s36, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s37, %s36, %s6
	lvl %s37
	vldu %v0, 4, %s1
	vfmul.s %v1, %s4, %v0
	vfnmsb.s %v0, %v0, %s2, %v1
	vfmad.s %v0, %v1, %s4, %v0
	adds.w.sx %s38, %s5, %s6
	vstu %v0, 4, %s0
	brge.w %s38, %s3, .LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s37, %s36, (56)1
	mins.w.sx %s37, %s37, %s6
	lea %s1, 1024(, %s1)
	lvl %s37
	vldu %v0, 4, %s1
	vfmul.s %v1, %s4, %v0
	vfnmsb.s %v0, %v0, %s2, %v1
	vfmad.s %v0, %v1, %s4, %v0
	lea %s0, 1024(, %s0)
	adds.w.sx %s38, %s5, %s7
	vstu %v0, 4, %s0
	brge.w %s38, %s3, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s37, %s36, (55)1
	mins.w.sx %s37, %s37, %s6
	lea %s38, 1024(, %s1)
	lvl %s37
	vldu %v0, 4, %s38
	vfmul.s %v1, %s4, %v0
	vfnmsb.s %v0, %v0, %s2, %v1
	vfmad.s %v0, %v1, %s4, %v0
	lea %s38, 1024(, %s0)
	vstu %v0, 4, %s38
	adds.w.sx %s5, %s5, %s34
	adds.w.sx %s36, %s36, %s35
	lea %s1, 2048(, %s1)
	lea %s0, 2048(, %s0)
	brlt.w %s5, %s3, .LBB0_2
.LBB0_5:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	approx_vfdivs_vvsl, .Lfunc_end0-approx_vfdivs_vvsl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
