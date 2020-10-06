	.text
	.file	"pvfnmsb_vvvvl.c"
	.globl	pvfnmsb_vvvvl
	.p2align	4
	.type	pvfnmsb_vvvvl,@function
pvfnmsb_vvvvl:
	brgt.w 1, %s4, .LBB0_3
	or %s5, 0, (0)1
	lea %s6, 256
	lea %s7, 512
	or %s34, 0, %s4
.LBB0_2:
	sra.w.sx %s35, %s34, 1
	cmps.w.sx %s36, %s34, %s7
	or %s37, 0, %s6
	cmov.w.lt %s37, %s35, %s36
	lvl %s37
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vld %v2, 8, %s3
	pvfnmsb %v0, %v0, %v1, %v2
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	adds.w.sx %s5, %s5, %s7
	adds.w.sx %s34, %s34, (55)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfnmsb_vvvvl, .Lfunc_end0-pvfnmsb_vvvvl

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 9c45d576945a4fddcd08d0c3956139ae53c477e8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
