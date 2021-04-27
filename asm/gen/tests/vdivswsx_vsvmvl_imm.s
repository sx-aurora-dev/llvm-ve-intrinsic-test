	.text
	.file	"vdivswsx_vsvmvl_imm.c"
	.globl	vdivswsx_vsvmvl_imm             # -- Begin function vdivswsx_vsvmvl_imm
	.p2align	4
	.type	vdivswsx_vsvmvl_imm,@function
vdivswsx_vsvmvl_imm:                    # @vdivswsx_vsvmvl_imm
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
	vldl.sx %v0, 4, %s1
	vldl.zx %v1, 4, %s2
	vldl.sx %v2, 4, %s3
	vfmk.w.gt %vm1, %v1
	vdivs.w.sx %v2, 3, %v0, %vm1
	adds.w.sx %s41, %s5, %s6
	vstl %v2, 4, %s0
	brge.w %s41, %s4, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s40, %s39, (56)1
	mins.w.sx %s40, %s40, %s6
	lea %s1, 1024(, %s1)
	lvl %s40
	vldl.sx %v0, 4, %s1
	lea %s2, 1024(, %s2)
	vldl.zx %v1, 4, %s2
	lea %s3, 1024(, %s3)
	vldl.sx %v2, 4, %s3
	vfmk.w.gt %vm1, %v1
	vdivs.w.sx %v2, 3, %v0, %vm1
	lea %s0, 1024(, %s0)
	adds.w.sx %s41, %s5, %s7
	vstl %v2, 4, %s0
	brge.w %s41, %s4, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s40, %s39, (55)1
	mins.w.sx %s41, %s40, %s6
	lea %s1, 1024(, %s1)
	lvl %s41
	vldl.sx %v0, 4, %s1
	lea %s2, 1024(, %s2)
	vldl.zx %v1, 4, %s2
	lea %s3, 1024(, %s3)
	vldl.sx %v2, 4, %s3
	vfmk.w.gt %vm1, %v1
	vdivs.w.sx %v2, 3, %v0, %vm1
	lea %s40, 1024(, %s0)
	adds.w.sx %s0, %s5, %s34
	vstl %v2, 4, %s40
	brge.w %s0, %s4, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s39, %s35
	mins.w.sx %s41, %s0, %s6
	lea %s0, 1024(, %s1)
	lvl %s41
	vldl.sx %v0, 4, %s0
	lea %s2, 1024(, %s2)
	vldl.zx %v1, 4, %s2
	lea %s3, 1024(, %s3)
	vldl.sx %v2, 4, %s3
	vfmk.w.gt %vm1, %v1
	vdivs.w.sx %v2, 3, %v0, %vm1
	lea %s40, 1024(, %s40)
	adds.w.sx %s1, %s5, %s36
	vstl %v2, 4, %s40
	brge.w %s1, %s4, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s1, %s39, (54)1
	mins.w.sx %s1, %s1, %s6
	lea %s41, 1024(, %s0)
	lvl %s1
	vldl.sx %v0, 4, %s41
	lea %s41, 1024(, %s2)
	vldl.zx %v1, 4, %s41
	lea %s41, 1024(, %s3)
	vldl.sx %v2, 4, %s41
	vfmk.w.gt %vm1, %v1
	vdivs.w.sx %v2, 3, %v0, %vm1
	lea %s41, 1024(, %s40)
	vstl %v2, 4, %s41
	adds.w.sx %s5, %s5, %s37
	adds.w.sx %s39, %s39, %s38
	lea %s1, 2048(, %s0)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	lea %s0, 2048(, %s40)
	brlt.w %s5, %s4, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vdivswsx_vsvmvl_imm, .Lfunc_end0-vdivswsx_vsvmvl_imm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
