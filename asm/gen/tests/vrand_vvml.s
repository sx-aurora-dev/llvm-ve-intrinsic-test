	.text
	.file	"vrand_vvml.c"
	.globl	vrand_vvml                      # -- Begin function vrand_vvml
	.p2align	4
	.type	vrand_vvml,@function
vrand_vvml:                             # @vrand_vvml
# %bb.0:
	brgt.w 1, %s3, .LBB0_7
# %bb.1:
	or %s4, 0, (0)1
	lea %s5, 256
	lea %s6, 512
	lea %s7, 768
	lea %s34, -768
	lea %s35, 1024
	lea %s36, 1280
	lea %s37, -1280
	or %s38, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s39, %s38, %s5
	lvl %s39
	vld %v0, 8, %s1
	vldl.zx %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vrand %v0, %v0, %vm1
	adds.w.sx %s40, %s4, %s5
	vst %v0, 8, %s0
	brge.w %s40, %s3, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s39, %s38, (56)1
	mins.w.sx %s39, %s39, %s5
	lea %s1, 2048(, %s1)
	lvl %s39
	vld %v0, 8, %s1
	lea %s2, 1024(, %s2)
	vldl.zx %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vrand %v0, %v0, %vm1
	lea %s0, 2048(, %s0)
	adds.w.sx %s40, %s4, %s6
	vst %v0, 8, %s0
	brge.w %s40, %s3, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s39, %s38, (55)1
	mins.w.sx %s40, %s39, %s5
	lea %s1, 2048(, %s1)
	lvl %s40
	vld %v0, 8, %s1
	lea %s2, 1024(, %s2)
	vldl.zx %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vrand %v0, %v0, %vm1
	lea %s39, 2048(, %s0)
	adds.w.sx %s0, %s4, %s7
	vst %v0, 8, %s39
	brge.w %s0, %s3, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s38, %s34
	mins.w.sx %s40, %s0, %s5
	lea %s0, 2048(, %s1)
	lvl %s40
	vld %v0, 8, %s0
	lea %s2, 1024(, %s2)
	vldl.zx %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vrand %v0, %v0, %vm1
	lea %s39, 2048(, %s39)
	adds.w.sx %s1, %s4, %s35
	vst %v0, 8, %s39
	brge.w %s1, %s3, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s1, %s38, (54)1
	mins.w.sx %s1, %s1, %s5
	lea %s40, 2048(, %s0)
	lvl %s1
	vld %v0, 8, %s40
	lea %s40, 1024(, %s2)
	vldl.zx %v1, 4, %s40
	vfmk.w.gt %vm1, %v1
	vrand %v0, %v0, %vm1
	lea %s40, 2048(, %s39)
	vst %v0, 8, %s40
	adds.w.sx %s4, %s4, %s36
	adds.w.sx %s38, %s38, %s37
	lea %s1, 4096(, %s0)
	lea %s2, 2048(, %s2)
	lea %s0, 4096(, %s39)
	brlt.w %s4, %s3, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vrand_vvml, .Lfunc_end0-vrand_vvml
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
