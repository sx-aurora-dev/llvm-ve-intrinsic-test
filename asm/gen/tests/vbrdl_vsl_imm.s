	.text
	.file	"vbrdl_vsl_imm.c"
	.globl	vbrdl_vsl_imm                   # -- Begin function vbrdl_vsl_imm
	.p2align	4
	.type	vbrdl_vsl_imm,@function
vbrdl_vsl_imm:                          # @vbrdl_vsl_imm
# %bb.0:
	brgt.w 1, %s1, .LBB0_10
# %bb.1:
	lea %s2, -768
	adds.w.sx %s3, %s1, %s2
	lea %s4, 1024
	lea %s5, 768
	lea %s6, 256
	lea %s7, 512
	lea %s34, 2048
	lea %s35, 1024
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	adds.w.sx %s36, %s3, %s5
	mins.w.sx %s36, %s36, %s6
	lvl %s36
	vbrd %v0, 3
	adds.w.sx %s37, %s35, %s2
	vst %v0, 8, %s0
	brge.w %s37, %s1, .LBB0_10
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s36, %s3, %s7
	mins.w.sx %s36, %s36, %s6
	lvl %s36
	vbrd %v0, 3
	lea %s0, 2048(, %s0)
	adds.w.sx %s37, %s35, (55)1
	vst %v0, 8, %s0
	brge.w %s37, %s1, .LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s36, %s3, %s6
	mins.w.sx %s36, %s36, %s6
	lvl %s36
	vbrd %v0, 3
	lea %s0, 2048(, %s0)
	adds.w.sx %s37, %s35, (56)1
	vst %v0, 8, %s0
	brge.w %s37, %s1, .LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	mins.w.sx %s36, %s3, %s6
	lvl %s36
	vbrd %v0, 3
	lea %s0, 2048(, %s0)
	vst %v0, 8, %s0
	brge.w %s35, %s1, .LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s36, %s3, (56)1
	mins.w.sx %s36, %s36, %s6
	lvl %s36
	vbrd %v0, 3
	lea %s0, 2048(, %s0)
	adds.w.sx %s37, %s35, %s6
	vst %v0, 8, %s0
	brge.w %s37, %s1, .LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s36, %s3, (55)1
	mins.w.sx %s36, %s36, %s6
	lvl %s36
	vbrd %v0, 3
	lea %s0, 2048(, %s0)
	adds.w.sx %s37, %s35, %s7
	vst %v0, 8, %s0
	brge.w %s37, %s1, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s36, %s3, %s2
	mins.w.sx %s36, %s36, %s6
	lvl %s36
	vbrd %v0, 3
	lea %s0, 2048(, %s0)
	adds.w.sx %s37, %s35, %s5
	vst %v0, 8, %s0
	brge.w %s37, %s1, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s36, %s3, (54)1
	mins.w.sx %s36, %s36, %s6
	lvl %s36
	vbrd %v0, 3
	lea %s37, 2048(, %s0)
	vst %v0, 8, %s37
	adds.w.sx %s36, %s35, %s4
	adds.w.sx %s35, %s35, %s34
	adds.w.sx %s3, %s3, (53)1
	lea %s0, 4096(, %s0)
                                        # kill: def $sw35 killed $sw35 def $sx35
	brlt.w %s36, %s1, .LBB0_2
.LBB0_10:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdl_vsl_imm, .Lfunc_end0-vbrdl_vsl_imm
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
