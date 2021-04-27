	.text
	.file	"vbrdw_vsl.c"
	.globl	vbrdw_vsl                       # -- Begin function vbrdw_vsl
	.p2align	4
	.type	vbrdw_vsl,@function
vbrdw_vsl:                              # @vbrdw_vsl
# %bb.0:
	and %s2, %s2, (32)0
	brgt.w 1, %s2, .LBB0_10
# %bb.1:
	and %s1, %s1, (32)0
	lea %s3, -768
	adds.w.sx %s4, %s2, %s3
	lea %s5, 1024
	lea %s6, 768
	lea %s7, 256
	lea %s34, 512
	lea %s35, 2048
	lea %s36, 1024
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	adds.w.sx %s37, %s4, %s6
	mins.w.sx %s37, %s37, %s7
	lvl %s37
	vbrdl %v0, %s1
	adds.w.sx %s38, %s36, %s3
	vstl %v0, 4, %s0
	brge.w %s38, %s2, .LBB0_10
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s37, %s4, %s34
	mins.w.sx %s37, %s37, %s7
	lvl %s37
	vbrdl %v0, %s1
	lea %s0, 1024(, %s0)
	adds.w.sx %s38, %s36, (55)1
	vstl %v0, 4, %s0
	brge.w %s38, %s2, .LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s37, %s4, %s7
	mins.w.sx %s37, %s37, %s7
	lvl %s37
	vbrdl %v0, %s1
	lea %s0, 1024(, %s0)
	adds.w.sx %s38, %s36, (56)1
	vstl %v0, 4, %s0
	brge.w %s38, %s2, .LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	mins.w.sx %s37, %s4, %s7
	lvl %s37
	vbrdl %v0, %s1
	lea %s0, 1024(, %s0)
	vstl %v0, 4, %s0
	brge.w %s36, %s2, .LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s37, %s4, (56)1
	mins.w.sx %s37, %s37, %s7
	lvl %s37
	vbrdl %v0, %s1
	lea %s0, 1024(, %s0)
	adds.w.sx %s38, %s36, %s7
	vstl %v0, 4, %s0
	brge.w %s38, %s2, .LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s37, %s4, (55)1
	mins.w.sx %s37, %s37, %s7
	lvl %s37
	vbrdl %v0, %s1
	lea %s0, 1024(, %s0)
	adds.w.sx %s38, %s36, %s34
	vstl %v0, 4, %s0
	brge.w %s38, %s2, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s37, %s4, %s3
	mins.w.sx %s37, %s37, %s7
	lvl %s37
	vbrdl %v0, %s1
	lea %s0, 1024(, %s0)
	adds.w.sx %s38, %s36, %s6
	vstl %v0, 4, %s0
	brge.w %s38, %s2, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s37, %s4, (54)1
	mins.w.sx %s37, %s37, %s7
	lvl %s37
	vbrdl %v0, %s1
	lea %s38, 1024(, %s0)
	vstl %v0, 4, %s38
	adds.w.sx %s37, %s36, %s5
	adds.w.sx %s36, %s36, %s35
	adds.w.sx %s4, %s4, (53)1
	lea %s0, 2048(, %s0)
                                        # kill: def $sw36 killed $sw36 def $sx36
	brlt.w %s37, %s2, .LBB0_2
.LBB0_10:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdw_vsl, .Lfunc_end0-vbrdw_vsl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
