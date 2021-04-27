	.text
	.file	"pvfmul_vsvMvl.c"
	.globl	pvfmul_vsvMvl                   # -- Begin function pvfmul_vsvMvl
	.p2align	4
	.type	pvfmul_vsvMvl,@function
pvfmul_vsvMvl:                          # @pvfmul_vsvMvl
# %bb.0:
	brgt.w 1, %s5, .LBB0_7
# %bb.1:
	or %s6, 0, (0)1
	lea %s7, 512
	lea %s34, 1024
	lea %s35, 1536
	lea %s36, -1536
	lea %s37, 2048
	lea %s38, 2560
	lea %s39, -2560
	or %s40, 0, %s5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s41, %s40, 1
	cmps.w.sx %s42, %s40, %s7
	lea %s43, 256
	cmov.w.lt %s43, %s41, %s42
	lvl %s43
	vld %v0, 8, %s2
	vld %v1, 8, %s3
	vld %v2, 8, %s4
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	pvfmul %v2, %s1, %v0, %vm2
	adds.w.sx %s41, %s6, %s7
	vst %v2, 8, %s0
	brge.w %s41, %s5, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s41, %s40, (55)1
	sra.w.sx %s42, %s41, 1
	cmps.w.sx %s41, %s41, %s7
	lea %s43, 256
	cmov.w.lt %s43, %s42, %s41
	lea %s2, 2048(, %s2)
	lvl %s43
	vld %v0, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	lea %s4, 2048(, %s4)
	vld %v2, 8, %s4
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	pvfmul %v2, %s1, %v0, %vm2
	lea %s0, 2048(, %s0)
	adds.w.sx %s41, %s6, %s34
	vst %v2, 8, %s0
	brge.w %s41, %s5, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s41, %s40, (54)1
	sra.w.sx %s42, %s41, 1
	cmps.w.sx %s41, %s41, %s7
	lea %s43, 256
	cmov.w.lt %s43, %s42, %s41
	lea %s2, 2048(, %s2)
	lvl %s43
	vld %v0, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	lea %s4, 2048(, %s4)
	vld %v2, 8, %s4
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	pvfmul %v2, %s1, %v0, %vm2
	lea %s41, 2048(, %s0)
	adds.w.sx %s0, %s6, %s35
	vst %v2, 8, %s41
	brge.w %s0, %s5, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s40, %s36
	sra.w.sx %s42, %s0, 1
	cmps.w.sx %s0, %s0, %s7
	lea %s43, 256
	cmov.w.lt %s43, %s42, %s0
	lea %s0, 2048(, %s2)
	lvl %s43
	vld %v0, 8, %s0
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	lea %s4, 2048(, %s4)
	vld %v2, 8, %s4
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	pvfmul %v2, %s1, %v0, %vm2
	lea %s41, 2048(, %s41)
	adds.w.sx %s2, %s6, %s37
	vst %v2, 8, %s41
	brge.w %s2, %s5, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s2, %s40, (53)1
	sra.w.sx %s42, %s2, 1
	cmps.w.sx %s2, %s2, %s7
	lea %s43, 256
	cmov.w.lt %s43, %s42, %s2
	lea %s2, 2048(, %s0)
	lvl %s43
	vld %v0, 8, %s2
	lea %s2, 2048(, %s3)
	vld %v1, 8, %s2
	lea %s2, 2048(, %s4)
	vld %v2, 8, %s2
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	pvfmul %v2, %s1, %v0, %vm2
	lea %s2, 2048(, %s41)
	vst %v2, 8, %s2
	adds.w.sx %s6, %s6, %s38
	adds.w.sx %s40, %s40, %s39
	lea %s2, 4096(, %s0)
	lea %s3, 4096(, %s3)
	lea %s4, 4096(, %s4)
	lea %s0, 4096(, %s41)
	brlt.w %s6, %s5, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfmul_vsvMvl, .Lfunc_end0-pvfmul_vsvMvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
