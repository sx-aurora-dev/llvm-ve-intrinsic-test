	.text
	.file	"vel_vm01.cc"
	.globl	_Z8vel_vm01PdS_Pji              # -- Begin function _Z8vel_vm01PdS_Pji
	.p2align	4
	.type	_Z8vel_vm01PdS_Pji,@function
_Z8vel_vm01PdS_Pji:                     # @_Z8vel_vm01PdS_Pji
# %bb.0:
	brgt.w 1, %s3, .LBB0_5
# %bb.1:
	lea %s4, 256
	lvl %s4
	vfmk.l.at %vm1
	or %s5, 0, (0)1
	lea %s6, 512
	lea %s7, 768
	lea %s34, -768
	or %s35, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s36, %s35, %s4
	lvl %s36
	vldl.zx %v0, 4, %s2
	vld %v1, 8, %s0
	vld %v2, 8, %s1
	vfmk.w.gt %vm2, %v0
	nndm %vm1, %vm2, %vm1
	vfadd.d %v1, %v1, %v2, %vm1
	adds.w.sx %s37, %s5, %s4
	vst %v1, 8, %s0
	brge.w %s37, %s3, .LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s36, %s36, (0)1
	sll %s37, %s36, 3
	adds.l %s0, %s0, %s37
	adds.l %s1, %s1, %s37
	sll %s36, %s36, 2
	adds.l %s2, %s2, %s36
	adds.w.sx %s36, %s35, (56)1
	mins.w.sx %s36, %s36, %s4
	lvl %s36
	vldl.zx %v0, 4, %s2
	vld %v1, 8, %s0
	vld %v2, 8, %s1
	vfmk.w.gt %vm2, %v0
	nndm %vm1, %vm2, %vm1
	vfadd.d %v1, %v1, %v2, %vm1
	adds.w.sx %s37, %s5, %s6
	vst %v1, 8, %s0
	brge.w %s37, %s3, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s36, %s36, (0)1
	sll %s37, %s36, 3
	adds.l %s0, %s0, %s37
	adds.l %s1, %s1, %s37
	sll %s36, %s36, 2
	adds.l %s2, %s2, %s36
	adds.w.sx %s36, %s35, (55)1
	mins.w.sx %s36, %s36, %s4
	lvl %s36
	vldl.zx %v0, 4, %s2
	vld %v1, 8, %s0
	vld %v2, 8, %s1
	vfmk.w.gt %vm2, %v0
	nndm %vm1, %vm2, %vm1
	vfadd.d %v1, %v1, %v2, %vm1
	vst %v1, 8, %s0
	adds.w.sx %s36, %s36, (0)1
	sll %s37, %s36, 3
	adds.l %s0, %s0, %s37
	adds.l %s1, %s1, %s37
	sll %s36, %s36, 2
	adds.l %s2, %s2, %s36
	adds.w.sx %s5, %s5, %s7
	adds.w.sx %s35, %s35, %s34
	brlt.w %s5, %s3, .LBB0_2
.LBB0_5:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z8vel_vm01PdS_Pji, .Lfunc_end0-_Z8vel_vm01PdS_Pji
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
