	.text
	.file	"vminsl_vsvmvl_imm.c"
	.globl	vminsl_vsvmvl_imm
	.p2align	4
	.type	vminsl_vsvmvl_imm,@function
vminsl_vsvmvl_imm:
	brgt.w 1, %s4, .LBB0_3
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vld %v0, 8, %s1
	vldl.zx %v1, 4, %s2
	vld %v2, 8, %s3
	vfmk.w.gt %vm1, %v1
	vmins.l %v2, 3, %v0, %vm1
	vst %v2, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 1024(, %s2)
	lea %s3, 2048(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vminsl_vsvmvl_imm, .Lfunc_end0-vminsl_vsvmvl_imm

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 9c45d576945a4fddcd08d0c3956139ae53c477e8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
