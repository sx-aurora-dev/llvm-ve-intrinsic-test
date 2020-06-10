	.text
	.file	"vm01.cc"
	.globl	_Z4funcDv256_dS_S_
	.p2align	4
	.type	_Z4funcDv256_dS_S_,@function
_Z4funcDv256_dS_S_:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB0_2
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
	vld %v0,8,%s2
	lea %s2, 4336(, %s9)
	vld %v1,8,%s2
	lea %s2, 2288(, %s9)
	vld %v2,8,%s2
	or %s2, 0, (0)1
	lvm %vm1,0,%s2
	lvm %vm1,1,%s2
	lvm %vm1,2,%s2
	lvm %vm1,3,%s2
	vfadd.d %v0,%v2,%v1,%vm1
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z4funcDv256_dS_S_, .Lfunc_end0-_Z4funcDv256_dS_S_

	.globl	_Z10_test_vm01v
	.p2align	4
	.type	_Z10_test_vm01v,@function
_Z10_test_vm01v:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -8368
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l %s11, %s8, .LBB1_6
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_6:
	or %s1, 0, (0)1
	lea.sl %s2, 1072693248
	lea.sl %s3, 1073741824
	lea %s0, 2048
	or %s4, 0, %s1
.LBB1_1:
	cvt.d.w %s5, %s4
	st %s5, -4096(%s1, %s9)
	st %s2, -6144(%s1, %s9)
	st %s3, -8192(%s1, %s9)
	st %s5, -2048(%s1, %s9)
	lea %s1, 8(, %s1)
	adds.w.sx %s4, 1, %s4
	brne.l %s1, %s0, .LBB1_1
	lea %s2, 256
	lea %s3, -4096(, %s9)
	lvl %s2
	vld %v0,8,%s3
	lea %s1, -6144(, %s9)
	vld %v1,8,%s1
	lea %s1, -8192(, %s9)
	vld %v2,8,%s1
	or %s1, 0, (0)1
	lvm %vm1,0,%s1
	lvm %vm1,1,%s1
	lvm %vm1,2,%s1
	lvm %vm1,3,%s1
	vfadd.d %v0,%v1,%v2,%vm1
	vst %v0,8,%s3
	or %s3, 1, (0)1
	or %s2, 0, %s1
.LBB1_3:
	ld %s4, -4096(%s2, %s9)
	ld %s5, -2048(%s2, %s9)
	fcmp.d %s4, %s4, %s5
	or %s5, 0, %s1
	cmov.d.eq %s5, (63)0, %s4
	and %s3, %s3, %s5
	lea %s2, 8(, %s2)
	adds.w.sx %s3, %s3, (0)1
	brne.l %s2, %s0, .LBB1_3
	adds.w.sx %s0, %s3, (0)1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z10_test_vm01v, .Lfunc_end1-_Z10_test_vm01v

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 539b33211b75ad5049b55f0790768b8529d77f00)"
	.section	".note.GNU-stack","",@progbits
