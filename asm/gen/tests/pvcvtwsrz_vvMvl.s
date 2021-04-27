	.text
	.file	"pvcvtwsrz_vvMvl.c"
	.globl	pvcvtwsrz_vvMvl                 # -- Begin function pvcvtwsrz_vvMvl
	.p2align	4
	.type	pvcvtwsrz_vvMvl,@function
pvcvtwsrz_vvMvl:                        # @pvcvtwsrz_vvMvl
# %bb.0:
	brgt.w 1, %s4, .LBB0_7
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 512
	lea %s7, 1024
	lea %s34, 1536
	lea %s35, -1536
	lea %s36, 2048
	lea %s37, 2560
	lea %s38, -2560
	or %s39, 0, %s4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s40, %s39, 1
	cmps.w.sx %s41, %s39, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s40, %s41
	lvl %s42
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vld %v2, 8, %s3
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	pvcvt.w.s.rz %v2, %v0, %vm2
	adds.w.sx %s40, %s5, %s6
	vst %v2, 8, %s0
	brge.w %s40, %s4, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s40, %s39, (55)1
	sra.w.sx %s41, %s40, 1
	cmps.w.sx %s40, %s40, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s40
	lea %s1, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v2, 8, %s3
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	pvcvt.w.s.rz %v2, %v0, %vm2
	lea %s0, 2048(, %s0)
	adds.w.sx %s40, %s5, %s7
	vst %v2, 8, %s0
	brge.w %s40, %s4, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s40, %s39, (54)1
	sra.w.sx %s41, %s40, 1
	cmps.w.sx %s40, %s40, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s40
	lea %s1, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v2, 8, %s3
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	pvcvt.w.s.rz %v2, %v0, %vm2
	lea %s40, 2048(, %s0)
	adds.w.sx %s0, %s5, %s34
	vst %v2, 8, %s40
	brge.w %s0, %s4, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s39, %s35
	sra.w.sx %s41, %s0, 1
	cmps.w.sx %s0, %s0, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s0
	lea %s0, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s0
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v2, 8, %s3
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	pvcvt.w.s.rz %v2, %v0, %vm2
	lea %s40, 2048(, %s40)
	adds.w.sx %s1, %s5, %s36
	vst %v2, 8, %s40
	brge.w %s1, %s4, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s1, %s39, (53)1
	sra.w.sx %s41, %s1, 1
	cmps.w.sx %s1, %s1, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s1
	lea %s1, 2048(, %s0)
	lvl %s42
	vld %v0, 8, %s1
	lea %s1, 2048(, %s2)
	vld %v1, 8, %s1
	lea %s1, 2048(, %s3)
	vld %v2, 8, %s1
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	pvcvt.w.s.rz %v2, %v0, %vm2
	lea %s1, 2048(, %s40)
	vst %v2, 8, %s1
	adds.w.sx %s5, %s5, %s37
	adds.w.sx %s39, %s39, %s38
	lea %s1, 4096(, %s0)
	lea %s2, 4096(, %s2)
	lea %s3, 4096(, %s3)
	lea %s0, 4096(, %s40)
	brlt.w %s5, %s4, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvcvtwsrz_vvMvl, .Lfunc_end0-pvcvtwsrz_vvMvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
