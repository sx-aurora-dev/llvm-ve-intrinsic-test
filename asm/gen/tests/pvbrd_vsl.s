	.text
	.file	"pvbrd_vsl.c"
	.globl	pvbrd_vsl                       # -- Begin function pvbrd_vsl
	.p2align	4
	.type	pvbrd_vsl,@function
pvbrd_vsl:                              # @pvbrd_vsl
# %bb.0:
	brgt.w 1, %s2, .LBB0_3
# %bb.1:
	or %s3, 0, (0)1
	lea %s4, 512
	or %s5, 0, %s2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s6, %s5, 1
	cmps.w.sx %s7, %s5, %s4
	lea %s34, 256
	cmov.w.lt %s34, %s6, %s7
	lvl %s34
	pvbrd %v0, %s1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (55)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvbrd_vsl, .Lfunc_end0-pvbrd_vsl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git abc0611048916f1be3a5a11282325b09a6c4d450)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
