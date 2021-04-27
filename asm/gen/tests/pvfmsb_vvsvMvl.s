	.text
	.file	"pvfmsb_vvsvMvl.c"
	.globl	pvfmsb_vvsvMvl                  # -- Begin function pvfmsb_vvsvMvl
	.p2align	4
	.type	pvfmsb_vvsvMvl,@function
pvfmsb_vvsvMvl:                         # @pvfmsb_vvsvMvl
# %bb.0:
	brgt.w 1, %s6, .LBB0_7
# %bb.1:
	adds.w.sx %s7, %s6, (53)1
	or %s34, 0, (0)1
	lea %s35, 2048
	lea %s36, 512
	lea %s37, 1536
	lea %s38, 1024
	lea %s39, 2560
	lea %s40, -2560
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	adds.w.sx %s41, %s7, %s35
	sra.w.sx %s42, %s41, 1
	cmps.w.sx %s41, %s41, %s36
	lea %s43, 256
	cmov.w.lt %s43, %s42, %s41
	lvl %s43
	vld %v0, 8, %s1
	vld %v1, 8, %s3
	vld %v2, 8, %s4
	vld %v3, 8, %s5
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	pvfmsb %v3, %v0, %s2, %v1, %vm2
	adds.w.sx %s41, %s34, %s36
	vst %v3, 8, %s0
	brge.w %s41, %s6, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s41, %s7, %s37
	sra.w.sx %s42, %s41, 1
	cmps.w.sx %s41, %s41, %s36
	lea %s43, 256
	cmov.w.lt %s43, %s42, %s41
	lea %s1, 2048(, %s1)
	lvl %s43
	vld %v0, 8, %s1
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	lea %s4, 2048(, %s4)
	vld %v2, 8, %s4
	lea %s5, 2048(, %s5)
	vld %v3, 8, %s5
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	pvfmsb %v3, %v0, %s2, %v1, %vm2
	lea %s0, 2048(, %s0)
	adds.w.sx %s41, %s34, %s38
	vst %v3, 8, %s0
	brge.w %s41, %s6, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s41, %s7, %s38
	sra.w.sx %s42, %s41, 1
	cmps.w.sx %s41, %s41, %s36
	lea %s43, 256
	cmov.w.lt %s43, %s42, %s41
	lea %s1, 2048(, %s1)
	lvl %s43
	vld %v0, 8, %s1
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	lea %s4, 2048(, %s4)
	vld %v2, 8, %s4
	lea %s5, 2048(, %s5)
	vld %v3, 8, %s5
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	pvfmsb %v3, %v0, %s2, %v1, %vm2
	lea %s41, 2048(, %s0)
	adds.w.sx %s0, %s34, %s37
	vst %v3, 8, %s41
	brge.w %s0, %s6, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s7, %s36
	sra.w.sx %s42, %s0, 1
	cmps.w.sx %s0, %s0, %s36
	lea %s43, 256
	cmov.w.lt %s43, %s42, %s0
	lea %s0, 2048(, %s1)
	lvl %s43
	vld %v0, 8, %s0
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	lea %s4, 2048(, %s4)
	vld %v2, 8, %s4
	lea %s5, 2048(, %s5)
	vld %v3, 8, %s5
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	pvfmsb %v3, %v0, %s2, %v1, %vm2
	lea %s41, 2048(, %s41)
	adds.w.sx %s1, %s34, %s35
	vst %v3, 8, %s41
	brge.w %s1, %s6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	sra.w.sx %s1, %s7, 1
	cmps.w.sx %s42, %s7, %s36
	lea %s43, 256
	cmov.w.lt %s43, %s1, %s42
	lea %s1, 2048(, %s0)
	lvl %s43
	vld %v0, 8, %s1
	lea %s1, 2048(, %s3)
	vld %v1, 8, %s1
	lea %s1, 2048(, %s4)
	vld %v2, 8, %s1
	lea %s1, 2048(, %s5)
	vld %v3, 8, %s1
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	pvfmsb %v3, %v0, %s2, %v1, %vm2
	lea %s1, 2048(, %s41)
	vst %v3, 8, %s1
	adds.w.sx %s34, %s34, %s39
	adds.w.sx %s7, %s7, %s40
	lea %s1, 4096(, %s0)
	lea %s3, 4096(, %s3)
	lea %s4, 4096(, %s4)
	lea %s5, 4096(, %s5)
	lea %s0, 4096(, %s41)
	brlt.w %s34, %s6, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfmsb_vvsvMvl, .Lfunc_end0-pvfmsb_vvsvMvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
