	.text
	.file	"vfnmads_vvsvl.c"
	.globl	vfnmads_vvsvl                   # -- Begin function vfnmads_vvsvl
	.p2align	4
	.type	vfnmads_vvsvl,@function
vfnmads_vvsvl:                          # @vfnmads_vvsvl
# %bb.0:
	and %s4, %s4, (32)0
	brgt.w 1, %s4, .LBB0_3
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vldu %v0, 4, %s1
	vldu %v1, 4, %s3
	vfnmad.s %v0, %v0, %s2, %v1
	vstu %v0, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s3, 1024(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfnmads_vvsvl, .Lfunc_end0-vfnmads_vvsvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 140246b32bf1e904594de0d2b662880f6a40f9cb)"
	.section	".note.GNU-stack","",@progbits
