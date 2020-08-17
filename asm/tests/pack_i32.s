	.text
	.file	"pack_i32.c"
	.globl	pack_i32
	.p2align	4
	.type	pack_i32,@function
pack_i32:
	sll %s0, %s0, 32
	and %s1, %s1, (32)0
	or %s0, %s0, %s1
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pack_i32, .Lfunc_end0-pack_i32

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang 649a28b2e28d892a4679ced967ef8d47f2ca6f94)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
