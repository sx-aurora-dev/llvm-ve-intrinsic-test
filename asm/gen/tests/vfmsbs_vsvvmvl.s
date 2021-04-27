	.text
	.file	"vfmsbs_vsvvmvl.c"
	.globl	vfmsbs_vsvvmvl                  # -- Begin function vfmsbs_vsvvmvl
	.p2align	4
	.type	vfmsbs_vsvvmvl,@function
vfmsbs_vsvvmvl:                         # @vfmsbs_vsvvmvl
# %bb.0:
	and %s6, %s6, (32)0
	brgt.w 1, %s6, .LBB0_7
# %bb.1:
	adds.w.sx %s7, %s6, (54)1
	or %s34, 0, (0)1
	lea %s35, 1024
	lea %s36, 256
	lea %s37, 768
	lea %s38, 512
	lea %s39, 1280
	lea %s40, -1280
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	adds.w.sx %s41, %s7, %s35
	mins.w.sx %s41, %s41, %s36
	lvl %s41
	vldu %v0, 4, %s2
	vldu %v1, 4, %s3
	vldl.zx %v2, 4, %s4
	vldu %v3, 4, %s5
	vfmk.w.gt %vm1, %v2
	vfmsb.s %v3, %s1, %v0, %v1, %vm1
	adds.w.sx %s42, %s34, %s36
	vstu %v3, 4, %s0
	brge.w %s42, %s6, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s41, %s7, %s37
	mins.w.sx %s41, %s41, %s36
	lea %s2, 1024(, %s2)
	lvl %s41
	vldu %v0, 4, %s2
	lea %s3, 1024(, %s3)
	vldu %v1, 4, %s3
	lea %s4, 1024(, %s4)
	vldl.zx %v2, 4, %s4
	lea %s5, 1024(, %s5)
	vldu %v3, 4, %s5
	vfmk.w.gt %vm1, %v2
	vfmsb.s %v3, %s1, %v0, %v1, %vm1
	lea %s0, 1024(, %s0)
	adds.w.sx %s42, %s34, %s38
	vstu %v3, 4, %s0
	brge.w %s42, %s6, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s41, %s7, %s38
	mins.w.sx %s42, %s41, %s36
	lea %s2, 1024(, %s2)
	lvl %s42
	vldu %v0, 4, %s2
	lea %s3, 1024(, %s3)
	vldu %v1, 4, %s3
	lea %s4, 1024(, %s4)
	vldl.zx %v2, 4, %s4
	lea %s5, 1024(, %s5)
	vldu %v3, 4, %s5
	vfmk.w.gt %vm1, %v2
	vfmsb.s %v3, %s1, %v0, %v1, %vm1
	lea %s41, 1024(, %s0)
	adds.w.sx %s0, %s34, %s37
	vstu %v3, 4, %s41
	brge.w %s0, %s6, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s7, %s36
	mins.w.sx %s42, %s0, %s36
	lea %s0, 1024(, %s2)
	lvl %s42
	vldu %v0, 4, %s0
	lea %s3, 1024(, %s3)
	vldu %v1, 4, %s3
	lea %s4, 1024(, %s4)
	vldl.zx %v2, 4, %s4
	lea %s5, 1024(, %s5)
	vldu %v3, 4, %s5
	vfmk.w.gt %vm1, %v2
	vfmsb.s %v3, %s1, %v0, %v1, %vm1
	lea %s41, 1024(, %s41)
	adds.w.sx %s2, %s34, %s35
	vstu %v3, 4, %s41
	brge.w %s2, %s6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	mins.w.sx %s2, %s7, %s36
	lea %s42, 1024(, %s0)
	lvl %s2
	vldu %v0, 4, %s42
	lea %s42, 1024(, %s3)
	vldu %v1, 4, %s42
	lea %s42, 1024(, %s4)
	vldl.zx %v2, 4, %s42
	lea %s42, 1024(, %s5)
	vldu %v3, 4, %s42
	vfmk.w.gt %vm1, %v2
	vfmsb.s %v3, %s1, %v0, %v1, %vm1
	lea %s42, 1024(, %s41)
	vstu %v3, 4, %s42
	adds.w.sx %s34, %s34, %s39
	adds.w.sx %s7, %s7, %s40
	lea %s2, 2048(, %s0)
	lea %s3, 2048(, %s3)
	lea %s4, 2048(, %s4)
	lea %s5, 2048(, %s5)
	lea %s0, 2048(, %s41)
	brlt.w %s34, %s6, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfmsbs_vsvvmvl, .Lfunc_end0-vfmsbs_vsvvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
