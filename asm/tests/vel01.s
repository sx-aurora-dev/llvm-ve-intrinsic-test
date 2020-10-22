	.text
	.file	"vel01.cc"
	.globl	_Z5vel01PvS_S_i                 # -- Begin function _Z5vel01PvS_S_i
	.p2align	4
	.type	_Z5vel01PvS_S_i,@function
_Z5vel01PvS_S_i:                        # @_Z5vel01PvS_S_i
# %bb.0:
	and %s3, %s3, (32)0
	lvl %s3
	vld %v0, 8, %s0
	vld %v1, 8, %s1
	vld %v2, 8, %s2
	and %s0, %s3, (32)0
	srl %s0, %s0, 31
	adds.w.sx %s0, %s3, %s0
	sra.w.sx %s0, %s0, 1
	lvl %s0
	vfadd.d %v2, %v0, %v1
	lvl %s3
	vst %v2, 8, %s2
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z5vel01PvS_S_i, .Lfunc_end0-_Z5vel01PvS_S_i
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
