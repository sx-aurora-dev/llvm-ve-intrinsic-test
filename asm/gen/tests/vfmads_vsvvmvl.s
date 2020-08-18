	.text
	.file	"vfmads_vsvvmvl.c"
	.globl	vfmads_vsvvmvl
	.p2align	4
	.type	vfmads_vsvvmvl,@function
vfmads_vsvvmvl:
	and %s6, %s6, (32)0
	brgt.w 1, %s6, .LBB0_3
	or %s7, 0, (0)1
	lea %s34, 256
	or %s35, 0, %s6
.LBB0_2:
	mins.w.sx %s36, %s35, %s34
	lvl %s36
	vldu %v0, 4, %s2
	vldu %v1, 4, %s3
	vldl.zx %v2, 4, %s4
	vldu %v3, 4, %s5
	vfmk.w.gt %vm1, %v2
	vfmad.s %v3, %s1, %v0, %v1, %vm1
	vstu %v3, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 1024(, %s4)
	lea %s5, 1024(, %s5)
	adds.w.sx %s7, %s7, %s34
	adds.w.sx %s35, %s35, (56)1
	brlt.w %s7, %s6, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfmads_vsvvmvl, .Lfunc_end0-vfmads_vsvvmvl

	.ident	"clang version 12.0.0 (/usr/uhome/aurora/fccg/t-baba/llvm-dev/llvm-project/clang 3fad6478895c162a7bc491cc4b66c08dd4558a03)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
