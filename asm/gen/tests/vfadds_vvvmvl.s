	.text
	.file	"vfadds_vvvmvl.c"
	.globl	vfadds_vvvmvl
	.p2align	4
	.type	vfadds_vvvmvl,@function
vfadds_vvvmvl:
	brgt.w 1, %s5, .LBB0_3
	or %s6, 0, (0)1
	lea %s7, 256
	or %s34, 0, %s5
.LBB0_2:
	mins.w.sx %s35, %s34, %s7
	lvl %s35
	vldu %v0, 4, %s1
	vldu %v1, 4, %s2
	vldl.zx %v2, 4, %s3
	vldu %v3, 4, %s4
	vfmk.w.gt %vm1, %v2
	vfadd.s %v3, %v0, %v1, %vm1
	vstu %v3, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 1024(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (56)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfadds_vvvmvl, .Lfunc_end0-vfadds_vvvmvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang 649a28b2e28d892a4679ced967ef8d47f2ca6f94)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
