	.text
	.file	"vsrawzx_vvsl.c"
	.globl	vsrawzx_vvsl                    # -- Begin function vsrawzx_vvsl
	.p2align	4
	.type	vsrawzx_vvsl,@function
vsrawzx_vvsl:                           # @vsrawzx_vvsl
# %bb.0:
	and %s3, %s3, (32)0
	brgt.w 1, %s3, .LBB0_10
# %bb.1:
	and %s2, %s2, (32)0
	lea %s4, -768
	adds.w.sx %s5, %s3, %s4
	lea %s6, 1024
	lea %s7, 768
	lea %s34, 256
	lea %s35, 512
	lea %s36, 2048
	lea %s37, 1024
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	adds.w.sx %s38, %s5, %s7
	mins.w.sx %s38, %s38, %s34
	lvl %s38
	vldl.sx %v0, 4, %s1
	vsra.w.zx %v0, %v0, %s2
	adds.w.sx %s39, %s37, %s4
	vstl %v0, 4, %s0
	brge.w %s39, %s3, .LBB0_10
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s38, %s5, %s35
	mins.w.sx %s38, %s38, %s34
	lea %s1, 1024(, %s1)
	lvl %s38
	vldl.sx %v0, 4, %s1
	vsra.w.zx %v0, %v0, %s2
	lea %s0, 1024(, %s0)
	adds.w.sx %s39, %s37, (55)1
	vstl %v0, 4, %s0
	brge.w %s39, %s3, .LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s38, %s5, %s34
	mins.w.sx %s38, %s38, %s34
	lea %s1, 1024(, %s1)
	lvl %s38
	vldl.sx %v0, 4, %s1
	vsra.w.zx %v0, %v0, %s2
	lea %s0, 1024(, %s0)
	adds.w.sx %s39, %s37, (56)1
	vstl %v0, 4, %s0
	brge.w %s39, %s3, .LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	mins.w.sx %s39, %s5, %s34
	lea %s1, 1024(, %s1)
	lvl %s39
	vldl.sx %v0, 4, %s1
	vsra.w.zx %v0, %v0, %s2
	lea %s38, 1024(, %s0)
	vstl %v0, 4, %s38
	brge.w %s37, %s3, .LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s5, (56)1
	mins.w.sx %s39, %s0, %s34
	lea %s0, 1024(, %s1)
	lvl %s39
	vldl.sx %v0, 4, %s0
	vsra.w.zx %v0, %v0, %s2
	lea %s1, 1024(, %s38)
	adds.w.sx %s38, %s37, %s34
	vstl %v0, 4, %s1
	brge.w %s38, %s3, .LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s38, %s5, (55)1
	mins.w.sx %s38, %s38, %s34
	lea %s0, 1024(, %s0)
	lvl %s38
	vldl.sx %v0, 4, %s0
	vsra.w.zx %v0, %v0, %s2
	lea %s1, 1024(, %s1)
	adds.w.sx %s39, %s37, %s35
	vstl %v0, 4, %s1
	brge.w %s39, %s3, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s38, %s5, %s4
	mins.w.sx %s39, %s38, %s34
	lea %s0, 1024(, %s0)
	lvl %s39
	vldl.sx %v0, 4, %s0
	vsra.w.zx %v0, %v0, %s2
	lea %s38, 1024(, %s1)
	adds.w.sx %s1, %s37, %s7
	vstl %v0, 4, %s38
	brge.w %s1, %s3, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s1, %s5, (54)1
	mins.w.sx %s1, %s1, %s34
	lea %s39, 1024(, %s0)
	lvl %s1
	vldl.sx %v0, 4, %s39
	vsra.w.zx %v0, %v0, %s2
	lea %s39, 1024(, %s38)
	vstl %v0, 4, %s39
	adds.w.sx %s39, %s37, %s6
	adds.w.sx %s37, %s37, %s36
	adds.w.sx %s5, %s5, (53)1
	lea %s1, 2048(, %s0)
	lea %s0, 2048(, %s38)
                                        # kill: def $sw37 killed $sw37 def $sx37
	brlt.w %s39, %s3, .LBB0_2
.LBB0_10:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vsrawzx_vvsl, .Lfunc_end0-vsrawzx_vvsl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
