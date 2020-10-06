	.text
	.file	"vbrdl_vsl_imm.c"
	.globl	vbrdl_vsl_imm
	.p2align	4
	.type	vbrdl_vsl_imm,@function
vbrdl_vsl_imm:
	brgt.w 1, %s1, .LBB0_3
	or %s2, 0, (0)1
	lea %s3, 256
	or %s4, 0, %s1
.LBB0_2:
	mins.w.sx %s5, %s4, %s3
	lvl %s5
	vbrd %v0, 3
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	adds.w.sx %s2, %s2, %s3
	adds.w.sx %s4, %s4, (56)1
	brlt.w %s2, %s1, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdl_vsl_imm, .Lfunc_end0-vbrdl_vsl_imm

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 9c45d576945a4fddcd08d0c3956139ae53c477e8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
