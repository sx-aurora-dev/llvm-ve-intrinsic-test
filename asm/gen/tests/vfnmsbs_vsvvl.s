	.text
	.file	"vfnmsbs_vsvvl.c"
	.globl	vfnmsbs_vsvvl
	.p2align	4
	.type	vfnmsbs_vsvvl,@function
vfnmsbs_vsvvl:
	and %s4, %s4, (32)0
	brgt.w 1, %s4, .LBB0_3
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vldu %v0, 4, %s2
	vldu %v1, 4, %s3
	vfnmsb.s %v0, %s1, %v0, %v1
	vstu %v0, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfnmsbs_vsvvl, .Lfunc_end0-vfnmsbs_vsvvl

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 9c45d576945a4fddcd08d0c3956139ae53c477e8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
