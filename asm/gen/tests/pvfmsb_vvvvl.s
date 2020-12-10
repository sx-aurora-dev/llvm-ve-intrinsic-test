	.text
	.file	"pvfmsb_vvvvl.c"
	.globl	pvfmsb_vvvvl                    # -- Begin function pvfmsb_vvvvl
	.p2align	4
	.type	pvfmsb_vvvvl,@function
pvfmsb_vvvvl:                           # @pvfmsb_vvvvl
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
	vld %v1, 8, %s2
	vld %v2, 8, %s3
	pvfmsb %v0, %v0, %v1, %v2
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (55)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfmsb_vvvvl, .Lfunc_end0-pvfmsb_vvvvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 99c58077b7589ed94981de5c768941146d2435b2)"
	.section	".note.GNU-stack","",@progbits
