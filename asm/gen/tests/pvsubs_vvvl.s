	.text
	.file	"pvsubs_vvvl.c"
	.globl	pvsubs_vvvl                     # -- Begin function pvsubs_vvvl
	.p2align	4
	.type	pvsubs_vvvl,@function
pvsubs_vvvl:                            # @pvsubs_vvvl
# %bb.0:
	brgt.w 1, %s3, .LBB0_10
# %bb.1:
	lea %s4, -1536
	adds.w.sx %s5, %s3, %s4
	lea %s6, 2048
	lea %s7, 1536
	lea %s34, 512
	lea %s35, 1024
	lea %s36, 4096
	lea %s37, 2048
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	adds.w.sx %s38, %s5, %s7
	sra.w.sx %s39, %s38, 1
	cmps.w.sx %s38, %s38, %s34
	lea %s40, 256
	cmov.w.lt %s40, %s39, %s38
	lvl %s40
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	pvsubs %v0, %v0, %v1
	adds.w.sx %s38, %s37, %s4
	vst %v0, 8, %s0
	brge.w %s38, %s3, .LBB0_10
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s38, %s5, %s35
	sra.w.sx %s39, %s38, 1
	cmps.w.sx %s38, %s38, %s34
	lea %s40, 256
	cmov.w.lt %s40, %s39, %s38
	lea %s1, 2048(, %s1)
	lvl %s40
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	pvsubs %v0, %v0, %v1
	lea %s0, 2048(, %s0)
	adds.w.sx %s38, %s37, (54)1
	vst %v0, 8, %s0
	brge.w %s38, %s3, .LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s38, %s5, %s34
	sra.w.sx %s39, %s38, 1
	cmps.w.sx %s38, %s38, %s34
	lea %s40, 256
	cmov.w.lt %s40, %s39, %s38
	lea %s1, 2048(, %s1)
	lvl %s40
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	pvsubs %v0, %v0, %v1
	lea %s0, 2048(, %s0)
	adds.w.sx %s38, %s37, (55)1
	vst %v0, 8, %s0
	brge.w %s38, %s3, .LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	sra.w.sx %s38, %s5, 1
	cmps.w.sx %s39, %s5, %s34
	lea %s40, 256
	cmov.w.lt %s40, %s38, %s39
	lea %s1, 2048(, %s1)
	lvl %s40
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	pvsubs %v0, %v0, %v1
	lea %s38, 2048(, %s0)
	vst %v0, 8, %s38
	brge.w %s37, %s3, .LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s5, (55)1
	sra.w.sx %s39, %s0, 1
	cmps.w.sx %s0, %s0, %s34
	lea %s40, 256
	cmov.w.lt %s40, %s39, %s0
	lea %s0, 2048(, %s1)
	lvl %s40
	vld %v0, 8, %s0
	lea %s1, 2048(, %s2)
	vld %v1, 8, %s1
	pvsubs %v0, %v0, %v1
	lea %s2, 2048(, %s38)
	adds.w.sx %s38, %s37, %s34
	vst %v0, 8, %s2
	brge.w %s38, %s3, .LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s38, %s5, (54)1
	sra.w.sx %s39, %s38, 1
	cmps.w.sx %s38, %s38, %s34
	lea %s40, 256
	cmov.w.lt %s40, %s39, %s38
	lea %s0, 2048(, %s0)
	lvl %s40
	vld %v0, 8, %s0
	lea %s1, 2048(, %s1)
	vld %v1, 8, %s1
	pvsubs %v0, %v0, %v1
	lea %s38, 2048(, %s2)
	adds.w.sx %s2, %s37, %s35
	vst %v0, 8, %s38
	brge.w %s2, %s3, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s2, %s5, %s4
	sra.w.sx %s39, %s2, 1
	cmps.w.sx %s2, %s2, %s34
	lea %s40, 256
	cmov.w.lt %s40, %s39, %s2
	lea %s0, 2048(, %s0)
	lvl %s40
	vld %v0, 8, %s0
	lea %s2, 2048(, %s1)
	vld %v1, 8, %s2
	pvsubs %v0, %v0, %v1
	lea %s38, 2048(, %s38)
	adds.w.sx %s1, %s37, %s7
	vst %v0, 8, %s38
	brge.w %s1, %s3, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s1, %s5, (53)1
	sra.w.sx %s39, %s1, 1
	cmps.w.sx %s1, %s1, %s34
	lea %s40, 256
	cmov.w.lt %s40, %s39, %s1
	lea %s1, 2048(, %s0)
	lvl %s40
	vld %v0, 8, %s1
	lea %s1, 2048(, %s2)
	vld %v1, 8, %s1
	pvsubs %v0, %v0, %v1
	lea %s1, 2048(, %s38)
	vst %v0, 8, %s1
	adds.w.sx %s39, %s37, %s6
	adds.w.sx %s37, %s37, %s36
	adds.w.sx %s5, %s5, (52)1
	lea %s1, 4096(, %s0)
	lea %s2, 4096(, %s2)
	lea %s0, 4096(, %s38)
                                        # kill: def $sw37 killed $sw37 def $sx37
	brlt.w %s39, %s3, .LBB0_2
.LBB0_10:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvsubs_vvvl, .Lfunc_end0-pvsubs_vvvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
