	.text
	.file	"vm02.cc"
	.globl	_Z4funcDv256_dS_S_Dv256_b       # -- Begin function _Z4funcDv256_dS_S_Dv256_b
	.p2align	4
	.type	_Z4funcDv256_dS_S_Dv256_b,@function
_Z4funcDv256_dS_S_Dv256_b:              # @_Z4funcDv256_dS_S_Dv256_b
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB0_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
	lea %s1, 256
	lea %s2, 240(, %s9)
	lvl %s1
	vld %v0, 8, %s2
	lea %s2, 4336(, %s9)
	vld %v1, 8, %s2
	lea %s2, 2288(, %s9)
	vld %v2, 8, %s2
	ld %s16, 6384(, %s9)
	lvm %vm1, 0, %s16
	ld %s16, 6392(, %s9)
	lvm %vm1, 1, %s16
	ld %s16, 6400(, %s9)
	lvm %vm1, 2, %s16
	ld %s16, 6408(, %s9)
	lvm %vm1, 3, %s16
	vfadd.d %v0, %v2, %v1, %vm1
	vst %v0, 8, %s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z4funcDv256_dS_S_Dv256_b, .Lfunc_end0-_Z4funcDv256_dS_S_Dv256_b
                                        # -- End function
	.globl	_Z10_test_vm02v                 # -- Begin function _Z10_test_vm02v
	.p2align	4
	.type	_Z10_test_vm02v,@function
_Z10_test_vm02v:                        # @_Z10_test_vm02v
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -17680
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
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
	st %s18, 48(, %s9)                      # 8-byte Folded Spill
	st %s19, 56(, %s9)                      # 8-byte Folded Spill
	st %s20, 64(, %s9)                      # 8-byte Folded Spill
	or %s0, 0, (0)1
	lea %s1, -9216(, %s9)
	lea.sl %s2, 1072693248
	lea.sl %s3, 1073741824
	lea %s4, 2048
	or %s5, 0, (0)1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cvt.d.w %s6, %s0
	st %s6, -2048(%s5, %s9)
	st %s2, -6144(%s5, %s9)
	st %s3, -8192(%s5, %s9)
	and %s7, 1, %s0
	stl %s7, (, %s1)
	lea.sl %s34, 1074266112
	cmov.w.eq %s34, %s6, %s7
	st %s34, -4096(%s5, %s9)
	lea %s5, 8(, %s5)
	adds.w.sx %s0, 1, %s0
	lea %s1, 4(, %s1)
	brne.l %s5, %s4, .LBB1_1
# %bb.2:
	lea %s18, 256
	lea %s19, -2048(, %s9)
	lvl %s18
	vld %v0, 8, %s19
	lea %s0, -6144(, %s9)
	vld %v1, 8, %s0
	lea %s0, -8192(, %s9)
	vld %v2, 8, %s0
	lea %s0, -9216(, %s9)
	vldl.zx %v3, 4, %s0
	vfmk.w.gt %vm1, %v3
	lea %s0, 4336(, %s11)
	vst %v2, 8, %s0
	lea %s0, 2288(, %s11)
	vst %v1, 8, %s0
	lea %s0, 240(, %s11)
	vst %v0, 8, %s0
	svm %s0, %vm1, 3
	st %s0, 6408(, %s11)
	svm %s0, %vm1, 2
	st %s0, 6400(, %s11)
	svm %s0, %vm1, 1
	st %s0, 6392(, %s11)
	svm %s0, %vm1, 0
	st %s0, 6384(, %s11)
	lea %s0, _Z4funcDv256_dS_S_Dv256_b@lo
	and %s0, %s0, (32)0
	lea.sl %s12, _Z4funcDv256_dS_S_Dv256_b@hi(, %s0)
	lea %s0, -11264(, %s9)
	lea %s20, -11264(, %s9)
	bsic %s10, (, %s12)
	vld %v0, 8, %s20
	vst %v0, 8, %s19
	or %s0, 0, (0)1
	or %s2, 1, (0)1
	lea %s1, 2048
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ld %s3, -2048(%s0, %s9)
	ld %s4, -4096(%s0, %s9)
	fcmp.d %s3, %s3, %s4
	or %s4, 0, (0)1
	cmov.d.eq %s4, (63)0, %s3
	and %s2, %s2, %s4
	lea %s0, 8(, %s0)
	and %s2, %s2, (32)0
	brne.l %s0, %s1, .LBB1_3
# %bb.4:
	adds.w.sx %s0, %s2, (0)1
	ld %s20, 64(, %s9)                      # 8-byte Folded Reload
	ld %s19, 56(, %s9)                      # 8-byte Folded Reload
	ld %s18, 48(, %s9)                      # 8-byte Folded Reload
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z10_test_vm02v, .Lfunc_end1-_Z10_test_vm02v
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git e570410190bb70408e4f61459b2f988e92caea54)"
	.section	".note.GNU-stack","",@progbits
