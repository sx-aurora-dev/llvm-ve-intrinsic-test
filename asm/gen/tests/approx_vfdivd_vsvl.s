	.text
	.file	"approx_vfdivd_vsvl.c"
	.globl	approx_vfdivd_vsvl              # -- Begin function approx_vfdivd_vsvl
	.p2align	4
	.type	approx_vfdivd_vsvl,@function
approx_vfdivd_vsvl:                     # @approx_vfdivd_vsvl
# %bb.0:
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	or %s4, 0, (0)1
	lea %s5, 256
	lea.sl %s6, 1072693248
	or %s7, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s34, %s7, %s5
	lvl %s34
	vld %v0, 8, %s2
	vrcp.d %v1, %v0
	vfnmsb.d %v2, %s6, %v0, %v1
	vfmad.d %v1, %v1, %v1, %v2
	vfnmsb.d %v2, %s6, %v0, %v1
	vfmad.d %v1, %v1, %v1, %v2
	vaddu.l %v1, 1, %v1
	vfnmsb.d %v2, %s6, %v0, %v1
	vfmad.d %v1, %v1, %v1, %v2
	vfmul.d %v2, %s1, %v1
	vfnmsb.d %v0, %s1, %v2, %v0
	vfmad.d %v0, %v2, %v1, %v0
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	approx_vfdivd_vsvl, .Lfunc_end0-approx_vfdivd_vsvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
