	.text
	.file	"pvfmsb_vsvvl.c"
	.globl	pvfmsb_vsvvl                    # -- Begin function pvfmsb_vsvvl
	.p2align	4
	.type	pvfmsb_vsvvl,@function
pvfmsb_vsvvl:                           # @pvfmsb_vsvvl
# %bb.0:
	brgt.w 1, %s4, .LBB0_10
# %bb.1:
	lea %s5, -1536
	adds.w.sx %s6, %s4, %s5
	lea %s7, 2048
	lea %s34, 1536
	lea %s35, 512
	lea %s36, 1024
	lea %s37, 4096
	lea %s38, 2048
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	adds.w.sx %s39, %s6, %s34
	sra.w.sx %s40, %s39, 1
	cmps.w.sx %s39, %s39, %s35
	lea %s41, 256
	cmov.w.lt %s41, %s40, %s39
	lvl %s41
	vld %v0, 8, %s2
	vld %v1, 8, %s3
	pvfmsb %v0, %s1, %v0, %v1
	adds.w.sx %s39, %s38, %s5
	vst %v0, 8, %s0
	brge.w %s39, %s4, .LBB0_10
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s39, %s6, %s36
	sra.w.sx %s40, %s39, 1
	cmps.w.sx %s39, %s39, %s35
	lea %s41, 256
	cmov.w.lt %s41, %s40, %s39
	lea %s2, 2048(, %s2)
	lvl %s41
	vld %v0, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	pvfmsb %v0, %s1, %v0, %v1
	lea %s0, 2048(, %s0)
	adds.w.sx %s39, %s38, (54)1
	vst %v0, 8, %s0
	brge.w %s39, %s4, .LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s39, %s6, %s35
	sra.w.sx %s40, %s39, 1
	cmps.w.sx %s39, %s39, %s35
	lea %s41, 256
	cmov.w.lt %s41, %s40, %s39
	lea %s2, 2048(, %s2)
	lvl %s41
	vld %v0, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	pvfmsb %v0, %s1, %v0, %v1
	lea %s0, 2048(, %s0)
	adds.w.sx %s39, %s38, (55)1
	vst %v0, 8, %s0
	brge.w %s39, %s4, .LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	sra.w.sx %s39, %s6, 1
	cmps.w.sx %s40, %s6, %s35
	lea %s41, 256
	cmov.w.lt %s41, %s39, %s40
	lea %s2, 2048(, %s2)
	lvl %s41
	vld %v0, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	pvfmsb %v0, %s1, %v0, %v1
	lea %s39, 2048(, %s0)
	vst %v0, 8, %s39
	brge.w %s38, %s4, .LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s6, (55)1
	sra.w.sx %s40, %s0, 1
	cmps.w.sx %s0, %s0, %s35
	lea %s41, 256
	cmov.w.lt %s41, %s40, %s0
	lea %s0, 2048(, %s2)
	lvl %s41
	vld %v0, 8, %s0
	lea %s2, 2048(, %s3)
	vld %v1, 8, %s2
	pvfmsb %v0, %s1, %v0, %v1
	lea %s3, 2048(, %s39)
	adds.w.sx %s39, %s38, %s35
	vst %v0, 8, %s3
	brge.w %s39, %s4, .LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s39, %s6, (54)1
	sra.w.sx %s40, %s39, 1
	cmps.w.sx %s39, %s39, %s35
	lea %s41, 256
	cmov.w.lt %s41, %s40, %s39
	lea %s0, 2048(, %s0)
	lvl %s41
	vld %v0, 8, %s0
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	pvfmsb %v0, %s1, %v0, %v1
	lea %s39, 2048(, %s3)
	adds.w.sx %s3, %s38, %s36
	vst %v0, 8, %s39
	brge.w %s3, %s4, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s3, %s6, %s5
	sra.w.sx %s40, %s3, 1
	cmps.w.sx %s3, %s3, %s35
	lea %s41, 256
	cmov.w.lt %s41, %s40, %s3
	lea %s0, 2048(, %s0)
	lvl %s41
	vld %v0, 8, %s0
	lea %s3, 2048(, %s2)
	vld %v1, 8, %s3
	pvfmsb %v0, %s1, %v0, %v1
	lea %s39, 2048(, %s39)
	adds.w.sx %s2, %s38, %s34
	vst %v0, 8, %s39
	brge.w %s2, %s4, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s2, %s6, (53)1
	sra.w.sx %s40, %s2, 1
	cmps.w.sx %s2, %s2, %s35
	lea %s41, 256
	cmov.w.lt %s41, %s40, %s2
	lea %s2, 2048(, %s0)
	lvl %s41
	vld %v0, 8, %s2
	lea %s2, 2048(, %s3)
	vld %v1, 8, %s2
	pvfmsb %v0, %s1, %v0, %v1
	lea %s2, 2048(, %s39)
	vst %v0, 8, %s2
	adds.w.sx %s40, %s38, %s7
	adds.w.sx %s38, %s38, %s37
	adds.w.sx %s6, %s6, (52)1
	lea %s2, 4096(, %s0)
	lea %s3, 4096(, %s3)
	lea %s0, 4096(, %s39)
                                        # kill: def $sw38 killed $sw38 def $sx38
	brlt.w %s40, %s4, .LBB0_2
.LBB0_10:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfmsb_vsvvl, .Lfunc_end0-pvfmsb_vsvvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
