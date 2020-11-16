	.text
	.file	"vror_vvl.c"
	.globl	vror_vvl                        # -- Begin function vror_vvl
	.p2align	4
	.type	vror_vvl,@function
vror_vvl:                               # @vror_vvl
# %bb.0:
	brgt.w 1, %s2, .LBB0_3
# %bb.1:
	or %s3, 0, (0)1
	lea %s4, 256
	or %s5, 0, %s2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s6, %s5, %s4
	lvl %s6
	vld %v0, 8, %s1
	vror %v0, %v0
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (56)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vror_vvl, .Lfunc_end0-vror_vvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 140246b32bf1e904594de0d2b662880f6a40f9cb)"
	.section	".note.GNU-stack","",@progbits
