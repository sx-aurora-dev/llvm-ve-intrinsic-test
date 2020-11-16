	.text
	.file	"vel02.cc"
	.globl	_Z5vel02PvS_S_S_i               # -- Begin function _Z5vel02PvS_S_S_i
	.p2align	4
	.type	_Z5vel02PvS_S_S_i,@function
_Z5vel02PvS_S_S_i:                      # @_Z5vel02PvS_S_S_i
# %bb.0:
	and %s4, %s4, (32)0
	lvl %s4
	vld %v0, 8, %s0
	vld %v1, 8, %s1
	vld %v2, 8, %s2
	lea %s0, 256
	lvl %s0
	vldl.zx %v3, 4, %s3
	vfmk.w.gt %vm1, %v3
	and %s0, %s4, (32)0
	srl %s0, %s0, 31
	adds.w.sx %s0, %s4, %s0
	sra.w.sx %s0, %s0, 1
	lvl %s0
	vfadd.d %v2, %v0, %v1, %vm1
	lvl %s4
	vst %v2, 8, %s2
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z5vel02PvS_S_S_i, .Lfunc_end0-_Z5vel02PvS_S_S_i
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 140246b32bf1e904594de0d2b662880f6a40f9cb)"
	.section	".note.GNU-stack","",@progbits
