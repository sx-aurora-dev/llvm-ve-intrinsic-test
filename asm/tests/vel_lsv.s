	.text
	.file	"vel_lsv.c"
	.globl	lsv_vss
	.p2align	4
	.type	lsv_vss,@function
lsv_vss:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s0
	and %s1, %s1, (32)0
	lsv %v0(%s1), %s2
	vst %v0, 8, %s0
	b.l.t (, %s10)
.Lfunc_end0:
	.size	lsv_vss, .Lfunc_end0-lsv_vss

	.ident	"clang version 12.0.0 (/usr/uhome/aurora/fccg/t-baba/llvm-dev/llvm-project/clang 3fad6478895c162a7bc491cc4b66c08dd4558a03)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
