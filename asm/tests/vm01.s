	.text
	.file	"vm01.cc"
	.globl	_Z4funcDv256_dS_S_              # -- Begin function _Z4funcDv256_dS_S_
	.p2align	4
	.type	_Z4funcDv256_dS_S_,@function
_Z4funcDv256_dS_S_:                     # @_Z4funcDv256_dS_S_
# %bb.0:
	lea %s1, 256
	lea %s2, 240(, %s11)
	lvl %s1
	vld %v0, 8, %s2
	lea %s2, 4336(, %s11)
	vld %v1, 8, %s2
	lea %s2, 2288(, %s11)
	vld %v2, 8, %s2
	xorm %vm1, %vm0, %vm0
	vfadd.d %v0, %v2, %v1, %vm1
	vst %v0, 8, %s0
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z4funcDv256_dS_S_, .Lfunc_end0-_Z4funcDv256_dS_S_
                                        # -- End function
	.globl	_Z10_test_vm01v                 # -- Begin function _Z10_test_vm01v
	.p2align	4
	.type	_Z10_test_vm01v,@function
_Z10_test_vm01v:                        # @_Z10_test_vm01v
# %bb.0:
	lea %s11, -8192(, %s11)
	brge.l %s11, %s8, .LBB1_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_6:
	or %s0, 0, (0)1
	lea.sl %s1, 1072693248
	lea.sl %s2, 1073741824
	lea %s3, 2048
	or %s4, 0, (0)1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cvt.d.w %s5, %s4
	st %s5, 4096(%s0, %s11)
	st %s1, 2048(%s0, %s11)
	st %s2, (%s0, %s11)
	st %s5, 6144(%s0, %s11)
	lea %s0, 8(, %s0)
	adds.w.sx %s4, 1, %s4
	brne.l %s0, %s3, .LBB1_1
# %bb.2:
	lea %s0, 256
	lea %s1, 4096(, %s11)
	lvl %s0
	vld %v0, 8, %s1
	lea %s2, 2048(, %s11)
	vld %v1, 8, %s2
	lea %s2, (, %s11)
	vld %v2, 8, %s2
	xorm %vm1, %vm0, %vm0
	vfadd.d %v0, %v1, %v2, %vm1
	vst %v0, 8, %s1
	or %s0, 0, (0)1
	or %s2, 1, (0)1
	lea %s1, 2048
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ld %s3, 4096(%s0, %s11)
	ld %s4, 6144(%s0, %s11)
	fcmp.d %s3, %s3, %s4
	or %s4, 0, (0)1
	cmov.d.eq %s4, (63)0, %s3
	and %s2, %s2, %s4
	lea %s0, 8(, %s0)
	and %s2, %s2, (32)0
	brne.l %s0, %s1, .LBB1_3
# %bb.4:
	adds.w.sx %s0, %s2, (0)1
	lea %s11, 8192(, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z10_test_vm01v, .Lfunc_end1-_Z10_test_vm01v
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
