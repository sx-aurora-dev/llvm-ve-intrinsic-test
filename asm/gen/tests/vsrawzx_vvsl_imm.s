	.text
	.file	"vsrawzx_vvsl_imm.c"
	.globl	vsrawzx_vvsl_imm
	.p2align	4
	.type	vsrawzx_vvsl_imm,@function
vsrawzx_vvsl_imm:
	brgt.w 1, %s2, .LBB0_3
	or %s3, 0, (0)1
	lea %s4, 256
	or %s5, 0, %s2
.LBB0_2:
	mins.w.sx %s6, %s5, %s4
	lvl %s6
	vldl.sx %v0, 4, %s1
	vsra.w.zx %v0, %v0, 3
	vstl %v0, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (56)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vsrawzx_vvsl_imm, .Lfunc_end0-vsrawzx_vvsl_imm

	.ident	"clang version 12.0.0 (/usr/uhome/aurora/fccg/t-baba/llvm-dev/llvm-project/clang 3fad6478895c162a7bc491cc4b66c08dd4558a03)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
