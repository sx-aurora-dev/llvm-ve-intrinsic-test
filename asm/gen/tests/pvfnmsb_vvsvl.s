	.text
	.file	"pvfnmsb_vvsvl.c"
	.globl	pvfnmsb_vvsvl                   # -- Begin function pvfnmsb_vvsvl
	.p2align	4
	.type	pvfnmsb_vvsvl,@function
pvfnmsb_vvsvl:                          # @pvfnmsb_vvsvl
# %bb.0:
	brgt.w 1, %s4, .LBB0_3
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 512
	or %s7, 0, %s4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s34, %s7, 1
	cmps.w.sx %s35, %s7, %s6
	lea %s36, 256
	cmov.w.lt %s36, %s34, %s35
	lvl %s36
	vld %v0, 8, %s1
	vld %v1, 8, %s3
	pvfnmsb %v0, %v0, %s2, %v1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s3, 2048(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (55)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfnmsb_vvsvl, .Lfunc_end0-pvfnmsb_vvsvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 140246b32bf1e904594de0d2b662880f6a40f9cb)"
	.section	".note.GNU-stack","",@progbits
