	.text
	.file	"vbrdw_vsmvl_imm.c"
	.globl	vbrdw_vsmvl_imm
	.p2align	4
	.type	vbrdw_vsmvl_imm,@function
vbrdw_vsmvl_imm:
	brgt.w 1, %s3, .LBB0_3
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vldl.zx %v0, 4, %s1
	vldl.sx %v1, 4, %s2
	vfmk.w.gt %vm1, %v0
	vbrdl %v1, 3, %vm1
	vstl %v1, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 1024(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdw_vsmvl_imm, .Lfunc_end0-vbrdw_vsmvl_imm

	.ident	"clang version 12.0.0 (/usr/uhome/aurora/fccg/t-baba/llvm-dev/llvm-project/clang 3fad6478895c162a7bc491cc4b66c08dd4558a03)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
