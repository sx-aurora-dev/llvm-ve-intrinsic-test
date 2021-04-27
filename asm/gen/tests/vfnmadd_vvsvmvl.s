	.text
	.file	"vfnmadd_vvsvmvl.c"
	.globl	vfnmadd_vvsvmvl                 # -- Begin function vfnmadd_vvsvmvl
	.p2align	4
	.type	vfnmadd_vvsvmvl,@function
vfnmadd_vvsvmvl:                        # @vfnmadd_vvsvmvl
# %bb.0:
	brgt.w 1, %s6, .LBB0_7
# %bb.1:
	or %s7, 0, (0)1
	lea %s34, 256
	lea %s35, 512
	lea %s36, 768
	lea %s37, -768
	lea %s38, 1024
	lea %s39, 1280
	lea %s40, -1280
	or %s41, 0, %s6
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s42, %s41, %s34
	lvl %s42
	vld %v0, 8, %s1
	vld %v1, 8, %s3
	vldl.zx %v2, 4, %s4
	vld %v3, 8, %s5
	vfmk.w.gt %vm1, %v2
	vfnmad.d %v3, %v0, %s2, %v1, %vm1
	adds.w.sx %s43, %s7, %s34
	vst %v3, 8, %s0
	brge.w %s43, %s6, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s42, %s41, (56)1
	mins.w.sx %s42, %s42, %s34
	lea %s1, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s1
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	lea %s4, 1024(, %s4)
	vldl.zx %v2, 4, %s4
	lea %s5, 2048(, %s5)
	vld %v3, 8, %s5
	vfmk.w.gt %vm1, %v2
	vfnmad.d %v3, %v0, %s2, %v1, %vm1
	lea %s0, 2048(, %s0)
	adds.w.sx %s43, %s7, %s35
	vst %v3, 8, %s0
	brge.w %s43, %s6, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s42, %s41, (55)1
	mins.w.sx %s43, %s42, %s34
	lea %s1, 2048(, %s1)
	lvl %s43
	vld %v0, 8, %s1
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	lea %s4, 1024(, %s4)
	vldl.zx %v2, 4, %s4
	lea %s5, 2048(, %s5)
	vld %v3, 8, %s5
	vfmk.w.gt %vm1, %v2
	vfnmad.d %v3, %v0, %s2, %v1, %vm1
	lea %s42, 2048(, %s0)
	adds.w.sx %s0, %s7, %s36
	vst %v3, 8, %s42
	brge.w %s0, %s6, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s41, %s37
	mins.w.sx %s43, %s0, %s34
	lea %s0, 2048(, %s1)
	lvl %s43
	vld %v0, 8, %s0
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	lea %s4, 1024(, %s4)
	vldl.zx %v2, 4, %s4
	lea %s5, 2048(, %s5)
	vld %v3, 8, %s5
	vfmk.w.gt %vm1, %v2
	vfnmad.d %v3, %v0, %s2, %v1, %vm1
	lea %s42, 2048(, %s42)
	adds.w.sx %s1, %s7, %s38
	vst %v3, 8, %s42
	brge.w %s1, %s6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s1, %s41, (54)1
	mins.w.sx %s1, %s1, %s34
	lea %s43, 2048(, %s0)
	lvl %s1
	vld %v0, 8, %s43
	lea %s43, 2048(, %s3)
	vld %v1, 8, %s43
	lea %s43, 1024(, %s4)
	vldl.zx %v2, 4, %s43
	lea %s43, 2048(, %s5)
	vld %v3, 8, %s43
	vfmk.w.gt %vm1, %v2
	vfnmad.d %v3, %v0, %s2, %v1, %vm1
	lea %s43, 2048(, %s42)
	vst %v3, 8, %s43
	adds.w.sx %s7, %s7, %s39
	adds.w.sx %s41, %s41, %s40
	lea %s1, 4096(, %s0)
	lea %s3, 4096(, %s3)
	lea %s4, 2048(, %s4)
	lea %s5, 4096(, %s5)
	lea %s0, 4096(, %s42)
	brlt.w %s7, %s6, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfnmadd_vvsvmvl, .Lfunc_end0-vfnmadd_vvsvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
