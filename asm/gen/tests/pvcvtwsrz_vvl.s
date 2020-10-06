	.text
	.file	"pvcvtwsrz_vvl.c"
	.globl	pvcvtwsrz_vvl
	.p2align	4
	.type	pvcvtwsrz_vvl,@function
pvcvtwsrz_vvl:
	brgt.w 1, %s2, .LBB0_3
	or %s3, 0, (0)1
	lea %s4, 256
	lea %s5, 512
	or %s6, 0, %s2
.LBB0_2:
	sra.w.sx %s7, %s6, 1
	cmps.w.sx %s34, %s6, %s5
	or %s35, 0, %s4
	cmov.w.lt %s35, %s7, %s34
	lvl %s35
	vld %v0, 8, %s1
	pvcvt.w.s.rz %v0, %v0
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	adds.w.sx %s3, %s3, %s5
	adds.w.sx %s6, %s6, (55)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvcvtwsrz_vvl, .Lfunc_end0-pvcvtwsrz_vvl

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 9c45d576945a4fddcd08d0c3956139ae53c477e8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
