	.text
	.file	"vfnmsbd_vvvvmvl.c"
	.globl	vfnmsbd_vvvvmvl                 # -- Begin function vfnmsbd_vvvvmvl
	.p2align	4
	.type	vfnmsbd_vvvvmvl,@function
vfnmsbd_vvvvmvl:                        # @vfnmsbd_vvvvmvl
# %bb.0:
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
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vld %v2, 8, %s3
	vldl.zx %v3, 4, %s4
	vld %v4, 8, %s5
	vfmk.w.gt %vm1, %v3
	vfnmsb.d %v4, %v0, %v1, %v2, %vm1
	adds.w.sx %s42, %s34, %s36
	vst %v4, 8, %s0
	brge.w %s42, %s6, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s41, %s7, %s37
	mins.w.sx %s41, %s41, %s36
	lea %s1, 2048(, %s1)
	lvl %s41
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v2, 8, %s3
	lea %s4, 1024(, %s4)
	vldl.zx %v3, 4, %s4
	lea %s5, 2048(, %s5)
	vld %v4, 8, %s5
	vfmk.w.gt %vm1, %v3
	vfnmsb.d %v4, %v0, %v1, %v2, %vm1
	lea %s0, 2048(, %s0)
	adds.w.sx %s42, %s34, %s38
	vst %v4, 8, %s0
	brge.w %s42, %s6, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s41, %s7, %s38
	mins.w.sx %s42, %s41, %s36
	lea %s1, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v2, 8, %s3
	lea %s4, 1024(, %s4)
	vldl.zx %v3, 4, %s4
	lea %s5, 2048(, %s5)
	vld %v4, 8, %s5
	vfmk.w.gt %vm1, %v3
	vfnmsb.d %v4, %v0, %v1, %v2, %vm1
	lea %s41, 2048(, %s0)
	adds.w.sx %s0, %s34, %s37
	vst %v4, 8, %s41
	brge.w %s0, %s6, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s7, %s36
	mins.w.sx %s42, %s0, %s36
	lea %s0, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s0
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v2, 8, %s3
	lea %s4, 1024(, %s4)
	vldl.zx %v3, 4, %s4
	lea %s5, 2048(, %s5)
	vld %v4, 8, %s5
	vfmk.w.gt %vm1, %v3
	vfnmsb.d %v4, %v0, %v1, %v2, %vm1
	lea %s41, 2048(, %s41)
	adds.w.sx %s1, %s34, %s35
	vst %v4, 8, %s41
	brge.w %s1, %s6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	mins.w.sx %s1, %s7, %s36
	lea %s42, 2048(, %s0)
	lvl %s1
	vld %v0, 8, %s42
	lea %s42, 2048(, %s2)
	vld %v1, 8, %s42
	lea %s42, 2048(, %s3)
	vld %v2, 8, %s42
	lea %s42, 1024(, %s4)
	vldl.zx %v3, 4, %s42
	lea %s42, 2048(, %s5)
	vld %v4, 8, %s42
	vfmk.w.gt %vm1, %v3
	vfnmsb.d %v4, %v0, %v1, %v2, %vm1
	lea %s42, 2048(, %s41)
	vst %v4, 8, %s42
	adds.w.sx %s34, %s34, %s39
	adds.w.sx %s7, %s7, %s40
	lea %s1, 4096(, %s0)
	lea %s2, 4096(, %s2)
	lea %s3, 4096(, %s3)
	lea %s4, 2048(, %s4)
	lea %s5, 4096(, %s5)
	lea %s0, 4096(, %s41)
	brlt.w %s34, %s6, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfnmsbd_vvvvmvl, .Lfunc_end0-vfnmsbd_vvvvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
