	.text
	.file	"vaddswzx_vvvmvl.c"
	.globl	vaddswzx_vvvmvl                 # -- Begin function vaddswzx_vvvmvl
	.p2align	4
	.type	vaddswzx_vvvmvl,@function
vaddswzx_vvvmvl:                        # @vaddswzx_vvvmvl
# %bb.0:
	brgt.w 1, %s5, .LBB0_7
# %bb.1:
	adds.w.sx %s6, %s5, (54)1
	or %s7, 0, (0)1
	lea %s34, 1024
	lea %s35, 256
	lea %s36, 768
	lea %s37, 512
	lea %s38, 1280
	lea %s39, -1280
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	adds.w.sx %s40, %s6, %s34
	mins.w.sx %s40, %s40, %s35
	lvl %s40
	vldl.sx %v0, 4, %s1
	vldl.sx %v1, 4, %s2
	vldl.zx %v2, 4, %s3
	vldl.sx %v3, 4, %s4
	vfmk.w.gt %vm1, %v2
	vadds.w.zx %v3, %v0, %v1, %vm1
	adds.w.sx %s41, %s7, %s35
	vstl %v3, 4, %s0
	brge.w %s41, %s5, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s40, %s6, %s36
	mins.w.sx %s40, %s40, %s35
	lea %s1, 1024(, %s1)
	lvl %s40
	vldl.sx %v0, 4, %s1
	lea %s2, 1024(, %s2)
	vldl.sx %v1, 4, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v2, 4, %s3
	lea %s4, 1024(, %s4)
	vldl.sx %v3, 4, %s4
	vfmk.w.gt %vm1, %v2
	vadds.w.zx %v3, %v0, %v1, %vm1
	lea %s0, 1024(, %s0)
	adds.w.sx %s41, %s7, %s37
	vstl %v3, 4, %s0
	brge.w %s41, %s5, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s40, %s6, %s37
	mins.w.sx %s41, %s40, %s35
	lea %s1, 1024(, %s1)
	lvl %s41
	vldl.sx %v0, 4, %s1
	lea %s2, 1024(, %s2)
	vldl.sx %v1, 4, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v2, 4, %s3
	lea %s4, 1024(, %s4)
	vldl.sx %v3, 4, %s4
	vfmk.w.gt %vm1, %v2
	vadds.w.zx %v3, %v0, %v1, %vm1
	lea %s40, 1024(, %s0)
	adds.w.sx %s0, %s7, %s36
	vstl %v3, 4, %s40
	brge.w %s0, %s5, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s6, %s35
	mins.w.sx %s41, %s0, %s35
	lea %s0, 1024(, %s1)
	lvl %s41
	vldl.sx %v0, 4, %s0
	lea %s2, 1024(, %s2)
	vldl.sx %v1, 4, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v2, 4, %s3
	lea %s4, 1024(, %s4)
	vldl.sx %v3, 4, %s4
	vfmk.w.gt %vm1, %v2
	vadds.w.zx %v3, %v0, %v1, %vm1
	lea %s40, 1024(, %s40)
	adds.w.sx %s1, %s7, %s34
	vstl %v3, 4, %s40
	brge.w %s1, %s5, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	mins.w.sx %s1, %s6, %s35
	lea %s41, 1024(, %s0)
	lvl %s1
	vldl.sx %v0, 4, %s41
	lea %s41, 1024(, %s2)
	vldl.sx %v1, 4, %s41
	lea %s41, 1024(, %s3)
	vldl.zx %v2, 4, %s41
	lea %s41, 1024(, %s4)
	vldl.sx %v3, 4, %s41
	vfmk.w.gt %vm1, %v2
	vadds.w.zx %v3, %v0, %v1, %vm1
	lea %s41, 1024(, %s40)
	vstl %v3, 4, %s41
	adds.w.sx %s7, %s7, %s38
	adds.w.sx %s6, %s6, %s39
	lea %s1, 2048(, %s0)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	lea %s4, 2048(, %s4)
	lea %s0, 2048(, %s40)
	brlt.w %s7, %s5, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vaddswzx_vvvmvl, .Lfunc_end0-vaddswzx_vvvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
