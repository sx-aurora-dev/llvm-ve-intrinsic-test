	.text
	.file	"vbrdl_vsmvl.c"
	.globl	vbrdl_vsmvl                     # -- Begin function vbrdl_vsmvl
	.p2align	4
	.type	vbrdl_vsmvl,@function
vbrdl_vsmvl:                            # @vbrdl_vsmvl
# %bb.0:
	brgt.w 1, %s4, .LBB0_7
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 256
	lea %s7, 512
	lea %s34, 768
	lea %s35, -768
	lea %s36, 1024
	lea %s37, 1280
	lea %s38, -1280
	or %s39, 0, %s4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s40, %s39, %s6
	lvl %s40
	vldl.zx %v0, 4, %s2
	vld %v1, 8, %s3
	vfmk.w.gt %vm1, %v0
	vbrd %v1, %s1, %vm1
	adds.w.sx %s41, %s5, %s6
	vst %v1, 8, %s0
	brge.w %s41, %s4, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s40, %s39, (56)1
	mins.w.sx %s40, %s40, %s6
	lea %s2, 1024(, %s2)
	lvl %s40
	vldl.zx %v0, 4, %s2
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	vfmk.w.gt %vm1, %v0
	vbrd %v1, %s1, %vm1
	lea %s0, 2048(, %s0)
	adds.w.sx %s41, %s5, %s7
	vst %v1, 8, %s0
	brge.w %s41, %s4, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s40, %s39, (55)1
	mins.w.sx %s41, %s40, %s6
	lea %s2, 1024(, %s2)
	lvl %s41
	vldl.zx %v0, 4, %s2
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	vfmk.w.gt %vm1, %v0
	vbrd %v1, %s1, %vm1
	lea %s40, 2048(, %s0)
	adds.w.sx %s0, %s5, %s34
	vst %v1, 8, %s40
	brge.w %s0, %s4, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s39, %s35
	mins.w.sx %s41, %s0, %s6
	lea %s0, 1024(, %s2)
	lvl %s41
	vldl.zx %v0, 4, %s0
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	vfmk.w.gt %vm1, %v0
	vbrd %v1, %s1, %vm1
	lea %s40, 2048(, %s40)
	adds.w.sx %s2, %s5, %s36
	vst %v1, 8, %s40
	brge.w %s2, %s4, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s2, %s39, (54)1
	mins.w.sx %s2, %s2, %s6
	lea %s41, 1024(, %s0)
	lvl %s2
	vldl.zx %v0, 4, %s41
	lea %s41, 2048(, %s3)
	vld %v1, 8, %s41
	vfmk.w.gt %vm1, %v0
	vbrd %v1, %s1, %vm1
	lea %s41, 2048(, %s40)
	vst %v1, 8, %s41
	adds.w.sx %s5, %s5, %s37
	adds.w.sx %s39, %s39, %s38
	lea %s2, 2048(, %s0)
	lea %s3, 4096(, %s3)
	lea %s0, 4096(, %s40)
	brlt.w %s5, %s4, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdl_vsmvl, .Lfunc_end0-vbrdl_vsmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
