	.text
	.file	"vel04.cc"
	.globl	_Z5vel04PvS_S_i                 # -- Begin function _Z5vel04PvS_S_i
	.p2align	4
	.type	_Z5vel04PvS_S_i,@function
_Z5vel04PvS_S_i:                        # @_Z5vel04PvS_S_i
# %bb.0:
	lea %s4, 256
	lvl %s4
	vld %v0, 8, %s0
	vld %v1, 8, %s1
	vld %v2, 8, %s2
	and %s0, %s3, (32)0
	lea %s1, 128
	lvl %s1
	vfadd.d %v2, %v0, %v1
	lvl %s0
	vst %v2, 8, %s2
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z5vel04PvS_S_i, .Lfunc_end0-_Z5vel04PvS_S_i
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bfa3af73d87fd3c1511a0e3f6781abefc7af02a7)"
	.section	".note.GNU-stack","",@progbits
