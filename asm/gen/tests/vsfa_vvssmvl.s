	.text
	.file	"vsfa_vvssmvl.c"
	.globl	vsfa_vvssmvl
	.p2align	4
	.type	vsfa_vvssmvl,@function
vsfa_vvssmvl:
	brgt.w 1, %s6, .LBB0_3
	or %s7, 0, (0)1
	lea %s34, 256
	or %s35, 0, %s6
.LBB0_2:
	mins.w.sx %s36, %s35, %s34
	lvl %s36
	vld %v0, 8, %s1
	vldl.zx %v1, 4, %s4
	vld %v2, 8, %s5
	vfmk.w.gt %vm1, %v1
	vsfa %v2, %v0, %s2, %s3, %vm1
	vst %v2, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s4, 1024(, %s4)
	lea %s5, 2048(, %s5)
	adds.w.sx %s7, %s7, %s34
	adds.w.sx %s35, %s35, (56)1
	brlt.w %s7, %s6, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vsfa_vvssmvl, .Lfunc_end0-vsfa_vvssmvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang 649a28b2e28d892a4679ced967ef8d47f2ca6f94)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
