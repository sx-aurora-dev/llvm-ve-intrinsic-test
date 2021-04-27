	.text
	.file	"vfnmadd_vsvvl.c"
	.globl	vfnmadd_vsvvl                   # -- Begin function vfnmadd_vsvvl
	.p2align	4
	.type	vfnmadd_vsvvl,@function
vfnmadd_vsvvl:                          # @vfnmadd_vsvvl
# %bb.0:
	brgt.w 1, %s4, .LBB0_10
# %bb.1:
	lea %s5, -768
	adds.w.sx %s6, %s4, %s5
	lea %s7, 1024
	lea %s34, 768
	lea %s35, 256
	lea %s36, 512
	lea %s37, 2048
	lea %s38, 1024
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	adds.w.sx %s39, %s6, %s34
	mins.w.sx %s39, %s39, %s35
	lvl %s39
	vld %v0, 8, %s2
	vld %v1, 8, %s3
	vfnmad.d %v0, %s1, %v0, %v1
	adds.w.sx %s40, %s38, %s5
	vst %v0, 8, %s0
	brge.w %s40, %s4, .LBB0_10
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s39, %s6, %s36
	mins.w.sx %s39, %s39, %s35
	lea %s2, 2048(, %s2)
	lvl %s39
	vld %v0, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	vfnmad.d %v0, %s1, %v0, %v1
	lea %s0, 2048(, %s0)
	adds.w.sx %s40, %s38, (55)1
	vst %v0, 8, %s0
	brge.w %s40, %s4, .LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s39, %s6, %s35
	mins.w.sx %s39, %s39, %s35
	lea %s2, 2048(, %s2)
	lvl %s39
	vld %v0, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	vfnmad.d %v0, %s1, %v0, %v1
	lea %s0, 2048(, %s0)
	adds.w.sx %s40, %s38, (56)1
	vst %v0, 8, %s0
	brge.w %s40, %s4, .LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	mins.w.sx %s40, %s6, %s35
	lea %s2, 2048(, %s2)
	lvl %s40
	vld %v0, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	vfnmad.d %v0, %s1, %v0, %v1
	lea %s39, 2048(, %s0)
	vst %v0, 8, %s39
	brge.w %s38, %s4, .LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s6, (56)1
	mins.w.sx %s40, %s0, %s35
	lea %s0, 2048(, %s2)
	lvl %s40
	vld %v0, 8, %s0
	lea %s2, 2048(, %s3)
	vld %v1, 8, %s2
	vfnmad.d %v0, %s1, %v0, %v1
	lea %s3, 2048(, %s39)
	adds.w.sx %s39, %s38, %s35
	vst %v0, 8, %s3
	brge.w %s39, %s4, .LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s39, %s6, (55)1
	mins.w.sx %s40, %s39, %s35
	lea %s0, 2048(, %s0)
	lvl %s40
	vld %v0, 8, %s0
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	vfnmad.d %v0, %s1, %v0, %v1
	lea %s39, 2048(, %s3)
	adds.w.sx %s3, %s38, %s36
	vst %v0, 8, %s39
	brge.w %s3, %s4, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s3, %s6, %s5
	mins.w.sx %s40, %s3, %s35
	lea %s0, 2048(, %s0)
	lvl %s40
	vld %v0, 8, %s0
	lea %s3, 2048(, %s2)
	vld %v1, 8, %s3
	vfnmad.d %v0, %s1, %v0, %v1
	lea %s39, 2048(, %s39)
	adds.w.sx %s2, %s38, %s34
	vst %v0, 8, %s39
	brge.w %s2, %s4, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s2, %s6, (54)1
	mins.w.sx %s2, %s2, %s35
	lea %s40, 2048(, %s0)
	lvl %s2
	vld %v0, 8, %s40
	lea %s40, 2048(, %s3)
	vld %v1, 8, %s40
	vfnmad.d %v0, %s1, %v0, %v1
	lea %s40, 2048(, %s39)
	vst %v0, 8, %s40
	adds.w.sx %s40, %s38, %s7
	adds.w.sx %s38, %s38, %s37
	adds.w.sx %s6, %s6, (53)1
	lea %s2, 4096(, %s0)
	lea %s3, 4096(, %s3)
	lea %s0, 4096(, %s39)
                                        # kill: def $sw38 killed $sw38 def $sx38
	brlt.w %s40, %s4, .LBB0_2
.LBB0_10:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfnmadd_vsvvl, .Lfunc_end0-vfnmadd_vsvvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
