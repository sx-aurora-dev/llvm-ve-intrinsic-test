	.text
	.file	"vfnmsbs_vvsvl.c"
	.globl	vfnmsbs_vvsvl                   # -- Begin function vfnmsbs_vvsvl
	.p2align	4
	.type	vfnmsbs_vvsvl,@function
vfnmsbs_vvsvl:                          # @vfnmsbs_vvsvl
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
	vfnmsb.s %v0, %v0, %s2, %v1
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
	.size	vfnmsbs_vvsvl, .Lfunc_end0-vfnmsbs_vvsvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 99c58077b7589ed94981de5c768941146d2435b2)"
	.section	".note.GNU-stack","",@progbits
