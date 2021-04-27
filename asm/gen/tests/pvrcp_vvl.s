	.text
	.file	"pvrcp_vvl.c"
	.globl	pvrcp_vvl                       # -- Begin function pvrcp_vvl
	.p2align	4
	.type	pvrcp_vvl,@function
pvrcp_vvl:                              # @pvrcp_vvl
# %bb.0:
	brgt.w 1, %s2, .LBB0_10
# %bb.1:
	lea %s3, -1536
	adds.w.sx %s4, %s2, %s3
	lea %s5, 2048
	lea %s6, 1536
	lea %s7, 512
	lea %s34, 1024
	lea %s35, 4096
	lea %s36, 2048
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	adds.w.sx %s37, %s4, %s6
	sra.w.sx %s38, %s37, 1
	cmps.w.sx %s37, %s37, %s7
	lea %s39, 256
	cmov.w.lt %s39, %s38, %s37
	lvl %s39
	vld %v0, 8, %s1
	pvrcp %v0, %v0
	adds.w.sx %s37, %s36, %s3
	vst %v0, 8, %s0
	brge.w %s37, %s2, .LBB0_10
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s37, %s4, %s34
	sra.w.sx %s38, %s37, 1
	cmps.w.sx %s37, %s37, %s7
	lea %s39, 256
	cmov.w.lt %s39, %s38, %s37
	lea %s1, 2048(, %s1)
	lvl %s39
	vld %v0, 8, %s1
	pvrcp %v0, %v0
	lea %s0, 2048(, %s0)
	adds.w.sx %s37, %s36, (54)1
	vst %v0, 8, %s0
	brge.w %s37, %s2, .LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s37, %s4, %s7
	sra.w.sx %s38, %s37, 1
	cmps.w.sx %s37, %s37, %s7
	lea %s39, 256
	cmov.w.lt %s39, %s38, %s37
	lea %s1, 2048(, %s1)
	lvl %s39
	vld %v0, 8, %s1
	pvrcp %v0, %v0
	lea %s0, 2048(, %s0)
	adds.w.sx %s37, %s36, (55)1
	vst %v0, 8, %s0
	brge.w %s37, %s2, .LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	sra.w.sx %s37, %s4, 1
	cmps.w.sx %s38, %s4, %s7
	lea %s39, 256
	cmov.w.lt %s39, %s37, %s38
	lea %s1, 2048(, %s1)
	lvl %s39
	vld %v0, 8, %s1
	pvrcp %v0, %v0
	lea %s37, 2048(, %s0)
	vst %v0, 8, %s37
	brge.w %s36, %s2, .LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s4, (55)1
	sra.w.sx %s38, %s0, 1
	cmps.w.sx %s0, %s0, %s7
	lea %s39, 256
	cmov.w.lt %s39, %s38, %s0
	lea %s0, 2048(, %s1)
	lvl %s39
	vld %v0, 8, %s0
	pvrcp %v0, %v0
	lea %s1, 2048(, %s37)
	adds.w.sx %s37, %s36, %s7
	vst %v0, 8, %s1
	brge.w %s37, %s2, .LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s37, %s4, (54)1
	sra.w.sx %s38, %s37, 1
	cmps.w.sx %s37, %s37, %s7
	lea %s39, 256
	cmov.w.lt %s39, %s38, %s37
	lea %s0, 2048(, %s0)
	lvl %s39
	vld %v0, 8, %s0
	pvrcp %v0, %v0
	lea %s1, 2048(, %s1)
	adds.w.sx %s37, %s36, %s34
	vst %v0, 8, %s1
	brge.w %s37, %s2, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s37, %s4, %s3
	sra.w.sx %s38, %s37, 1
	cmps.w.sx %s37, %s37, %s7
	lea %s39, 256
	cmov.w.lt %s39, %s38, %s37
	lea %s0, 2048(, %s0)
	lvl %s39
	vld %v0, 8, %s0
	pvrcp %v0, %v0
	lea %s37, 2048(, %s1)
	adds.w.sx %s1, %s36, %s6
	vst %v0, 8, %s37
	brge.w %s1, %s2, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s1, %s4, (53)1
	sra.w.sx %s38, %s1, 1
	cmps.w.sx %s1, %s1, %s7
	lea %s39, 256
	cmov.w.lt %s39, %s38, %s1
	lea %s1, 2048(, %s0)
	lvl %s39
	vld %v0, 8, %s1
	pvrcp %v0, %v0
	lea %s1, 2048(, %s37)
	vst %v0, 8, %s1
	adds.w.sx %s38, %s36, %s5
	adds.w.sx %s36, %s36, %s35
	adds.w.sx %s4, %s4, (52)1
	lea %s1, 4096(, %s0)
	lea %s0, 4096(, %s37)
                                        # kill: def $sw36 killed $sw36 def $sx36
	brlt.w %s38, %s2, .LBB0_2
.LBB0_10:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvrcp_vvl, .Lfunc_end0-pvrcp_vvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
