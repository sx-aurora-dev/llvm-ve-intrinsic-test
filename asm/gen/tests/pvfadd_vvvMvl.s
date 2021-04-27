	.text
	.file	"pvfadd_vvvMvl.c"
	.globl	pvfadd_vvvMvl                   # -- Begin function pvfadd_vvvMvl
	.p2align	4
	.type	pvfadd_vvvMvl,@function
pvfadd_vvvMvl:                          # @pvfadd_vvvMvl
# %bb.0:
	brgt.w 1, %s5, .LBB0_7
# %bb.1:
	adds.w.sx %s6, %s5, (53)1
	or %s7, 0, (0)1
	lea %s34, 2048
	lea %s35, 512
	lea %s36, 1536
	lea %s37, 1024
	lea %s38, 2560
	lea %s39, -2560
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	adds.w.sx %s40, %s6, %s34
	sra.w.sx %s41, %s40, 1
	cmps.w.sx %s40, %s40, %s35
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s40
	lvl %s42
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vld %v2, 8, %s3
	vld %v3, 8, %s4
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	pvfadd %v3, %v0, %v1, %vm2
	adds.w.sx %s40, %s7, %s35
	vst %v3, 8, %s0
	brge.w %s40, %s5, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s40, %s6, %s36
	sra.w.sx %s41, %s40, 1
	cmps.w.sx %s40, %s40, %s35
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s40
	lea %s1, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v2, 8, %s3
	lea %s4, 2048(, %s4)
	vld %v3, 8, %s4
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	pvfadd %v3, %v0, %v1, %vm2
	lea %s0, 2048(, %s0)
	adds.w.sx %s40, %s7, %s37
	vst %v3, 8, %s0
	brge.w %s40, %s5, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s40, %s6, %s37
	sra.w.sx %s41, %s40, 1
	cmps.w.sx %s40, %s40, %s35
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s40
	lea %s1, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v2, 8, %s3
	lea %s4, 2048(, %s4)
	vld %v3, 8, %s4
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	pvfadd %v3, %v0, %v1, %vm2
	lea %s40, 2048(, %s0)
	adds.w.sx %s0, %s7, %s36
	vst %v3, 8, %s40
	brge.w %s0, %s5, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s6, %s35
	sra.w.sx %s41, %s0, 1
	cmps.w.sx %s0, %s0, %s35
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s0
	lea %s0, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s0
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v2, 8, %s3
	lea %s4, 2048(, %s4)
	vld %v3, 8, %s4
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	pvfadd %v3, %v0, %v1, %vm2
	lea %s40, 2048(, %s40)
	adds.w.sx %s1, %s7, %s34
	vst %v3, 8, %s40
	brge.w %s1, %s5, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	sra.w.sx %s1, %s6, 1
	cmps.w.sx %s41, %s6, %s35
	lea %s42, 256
	cmov.w.lt %s42, %s1, %s41
	lea %s1, 2048(, %s0)
	lvl %s42
	vld %v0, 8, %s1
	lea %s1, 2048(, %s2)
	vld %v1, 8, %s1
	lea %s1, 2048(, %s3)
	vld %v2, 8, %s1
	lea %s1, 2048(, %s4)
	vld %v3, 8, %s1
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	pvfadd %v3, %v0, %v1, %vm2
	lea %s1, 2048(, %s40)
	vst %v3, 8, %s1
	adds.w.sx %s7, %s7, %s38
	adds.w.sx %s6, %s6, %s39
	lea %s1, 4096(, %s0)
	lea %s2, 4096(, %s2)
	lea %s3, 4096(, %s3)
	lea %s4, 4096(, %s4)
	lea %s0, 4096(, %s40)
	brlt.w %s7, %s5, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfadd_vvvMvl, .Lfunc_end0-pvfadd_vvvMvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
