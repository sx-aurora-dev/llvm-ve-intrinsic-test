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
	lea %s4, 256
	lea %s5, 512
	or %s6, 0, %s2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s7, %s6, 1
	cmps.w.sx %s34, %s6, %s5
	or %s35, 0, %s4
	cmov.w.lt %s35, %s7, %s34
	lvl %s35
	pvbrd %v0, %s1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	adds.w.sx %s3, %s3, %s5
	adds.w.sx %s6, %s6, (55)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvbrd_vsl, .Lfunc_end0-pvbrd_vsl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
