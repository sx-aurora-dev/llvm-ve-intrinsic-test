	.text
	.file	"pack_i32.c"
	.globl	pack_i32                        # -- Begin function pack_i32
	.p2align	4
	.type	pack_i32,@function
pack_i32:                               # @pack_i32
# %bb.0:
	sll %s0, %s0, 32
	and %s1, %s1, (32)0
	or %s0, %s0, %s1
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pack_i32, .Lfunc_end0-pack_i32
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
