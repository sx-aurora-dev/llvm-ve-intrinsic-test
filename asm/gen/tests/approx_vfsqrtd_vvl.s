	.text
	.file	"approx_vfsqrtd_vvl.c"
	.globl	approx_vfsqrtd_vvl              # -- Begin function approx_vfsqrtd_vvl
	.p2align	4
	.type	approx_vfsqrtd_vvl,@function
approx_vfsqrtd_vvl:                     # @approx_vfsqrtd_vvl
# %bb.0:
	brgt.w 1, %s2, .LBB0_3
# %bb.1:
	or %s3, 0, (0)1
	lea %s4, 256
	lea.sl %s5, 1072693248
	lea.sl %s6, 1071644672
	or %s7, 0, %s2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s34, %s7, %s4
	lvl %s34
	vld %v0, 8, %s1
	vrsqrt.d.nex %v1, %v0
	vfmul.d %v2, %v0, %v1
	vfnmsb.d %v2, %s5, %v2, %v1
	vfmul.d %v2, %s6, %v2
	vfmad.d %v1, %v1, %v1, %v2
	vfmul.d %v0, %v0, %v1
	vfnmsb.d %v1, %s5, %v0, %v1
	vfmul.d %v1, %s6, %v1
	vfmad.d %v0, %v0, %v0, %v1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	approx_vfsqrtd_vvl, .Lfunc_end0-approx_vfsqrtd_vvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
