	.text
	.file	"vdivul_vvvmvl.c"
	.globl	vdivul_vvvmvl                   # -- Begin function vdivul_vvvmvl
	.p2align	4
	.type	vdivul_vvvmvl,@function
vdivul_vvvmvl:                          # @vdivul_vvvmvl
# %bb.0:
	brgt.w 1, %s5, .LBB0_7
# %bb.1:
	or %s6, 0, (0)1
	lea %s7, 256
	lea %s34, 512
	lea %s35, 768
	lea %s36, -768
	lea %s37, 1024
	lea %s38, 1280
	lea %s39, -1280
	or %s40, 0, %s5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s41, %s40, %s7
	lvl %s41
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vldl.zx %v2, 4, %s3
	vld %v3, 8, %s4
	vfmk.w.gt %vm1, %v2
	vdivu.l %v3, %v0, %v1, %vm1
	adds.w.sx %s42, %s6, %s7
	vst %v3, 8, %s0
	brge.w %s42, %s5, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s41, %s40, (56)1
	mins.w.sx %s41, %s41, %s7
	lea %s1, 2048(, %s1)
	lvl %s41
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v2, 4, %s3
	lea %s4, 2048(, %s4)
	vld %v3, 8, %s4
	vfmk.w.gt %vm1, %v2
	vdivu.l %v3, %v0, %v1, %vm1
	lea %s0, 2048(, %s0)
	adds.w.sx %s42, %s6, %s34
	vst %v3, 8, %s0
	brge.w %s42, %s5, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s41, %s40, (55)1
	mins.w.sx %s42, %s41, %s7
	lea %s1, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v2, 4, %s3
	lea %s4, 2048(, %s4)
	vld %v3, 8, %s4
	vfmk.w.gt %vm1, %v2
	vdivu.l %v3, %v0, %v1, %vm1
	lea %s41, 2048(, %s0)
	adds.w.sx %s0, %s6, %s35
	vst %v3, 8, %s41
	brge.w %s0, %s5, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s40, %s36
	mins.w.sx %s42, %s0, %s7
	lea %s0, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s0
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v2, 4, %s3
	lea %s4, 2048(, %s4)
	vld %v3, 8, %s4
	vfmk.w.gt %vm1, %v2
	vdivu.l %v3, %v0, %v1, %vm1
	lea %s41, 2048(, %s41)
	adds.w.sx %s1, %s6, %s37
	vst %v3, 8, %s41
	brge.w %s1, %s5, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s1, %s40, (54)1
	mins.w.sx %s1, %s1, %s7
	lea %s42, 2048(, %s0)
	lvl %s1
	vld %v0, 8, %s42
	lea %s42, 2048(, %s2)
	vld %v1, 8, %s42
	lea %s42, 1024(, %s3)
	vldl.zx %v2, 4, %s42
	lea %s42, 2048(, %s4)
	vld %v3, 8, %s42
	vfmk.w.gt %vm1, %v2
	vdivu.l %v3, %v0, %v1, %vm1
	lea %s42, 2048(, %s41)
	vst %v3, 8, %s42
	adds.w.sx %s6, %s6, %s38
	adds.w.sx %s40, %s40, %s39
	lea %s1, 4096(, %s0)
	lea %s2, 4096(, %s2)
	lea %s3, 2048(, %s3)
	lea %s4, 4096(, %s4)
	lea %s0, 4096(, %s41)
	brlt.w %s6, %s5, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vdivul_vvvmvl, .Lfunc_end0-vdivul_vvvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
