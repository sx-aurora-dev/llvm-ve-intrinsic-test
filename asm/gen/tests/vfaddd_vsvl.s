	.text
	.file	"vfaddd_vsvl.c"
	.globl	vfaddd_vsvl
	.p2align	4
	.type	vfaddd_vsvl,@function
vfaddd_vsvl:
	brgt.w 1, %s3, .LBB0_3
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vld %v0, 8, %s2
	vfadd.d %v0, %s1, %v0
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfaddd_vsvl, .Lfunc_end0-vfaddd_vsvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang 649a28b2e28d892a4679ced967ef8d47f2ca6f94)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
