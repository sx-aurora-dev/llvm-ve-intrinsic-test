	.text
	.file	"vel_vm01.cc"
	.globl	_Z8vel_vm01PdS_Pji              # -- Begin function _Z8vel_vm01PdS_Pji
	.p2align	4
	.type	_Z8vel_vm01PdS_Pji,@function
_Z8vel_vm01PdS_Pji:                     # @_Z8vel_vm01PdS_Pji
# %bb.0:
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	lea %s4, 256
	lvl %s4
	vfmk.l.at %vm1
	or %s5, 0, (0)1
	or %s6, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s7, %s6, %s4
	lvl %s7
	vldl.zx %v0, 4, %s2
	vld %v1, 8, %s0
	vld %v2, 8, %s1
	vfmk.w.gt %vm2, %v0
	nndm %vm1, %vm2, %vm1
	vfadd.d %v1, %v1, %v2, %vm1
	vst %v1, 8, %s0
	adds.w.sx %s7, %s7, (0)1
	sll %s34, %s7, 3
	adds.l %s0, %s0, %s34
	adds.l %s1, %s1, %s34
	sll %s7, %s7, 2
	adds.l %s2, %s2, %s7
	adds.w.sx %s5, %s5, %s4
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s5, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z8vel_vm01PdS_Pji, .Lfunc_end0-_Z8vel_vm01PdS_Pji
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bfa3af73d87fd3c1511a0e3f6781abefc7af02a7)"
	.section	".note.GNU-stack","",@progbits
