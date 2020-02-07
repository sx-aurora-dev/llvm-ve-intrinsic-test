	.text
	.file	"vm01.cc"
	.globl	_Z4funcDv256_dS_S_
	.p2align	4
	.type	_Z4funcDv256_dS_S_,@function
_Z4funcDv256_dS_S_:
.L_Z4funcDv256_dS_S_$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB0_2
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
	b.l (, %lr)
.Lfunc_end0:
	.size	_Z4funcDv256_dS_S_, .Lfunc_end0-_Z4funcDv256_dS_S_

	.globl	_Z10_test_vm01v
	.p2align	4
	.type	_Z10_test_vm01v,@function
_Z10_test_vm01v:
.L_Z10_test_vm01v$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -8368
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
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
	or %s4, 0, (0)1
	or %s6, 0, (0)1
	lea %s1, -4096(, %s9)
	lea %s0, -6144(, %s9)
	lea.sl %s7, 1072693248
	lea %s5, -8192(, %s9)
	lea.sl %s34, 1073741824
	lea %s2, -2048(, %s9)
	lea %s3, 2048
.LBB1_1:
	cvt.d.w %s35, %s4
	adds.l %s36, %s1, %s6
	st %s35, (, %s36)
	adds.l %s36, %s0, %s6
	st %s7, (, %s36)
	adds.l %s36, %s5, %s6
	st %s34, (, %s36)
	adds.l %s36, %s2, %s6
	st %s35, (, %s36)
	lea %s6, 8(, %s6)
	lea %s4, 1(, %s4)
	brne.l %s6, %s3, .LBB1_1
	lea %s6, 256
	lvl %s6
	vld %v0,8,%s1
	vld %v1,8,%s0
	vld %v2,8,%s5
	or %s4, 0, (0)1
	lvm %vm1,0,%s4
	lvm %vm1,1,%s4
	lvm %vm1,2,%s4
	lvm %vm1,3,%s4
	vfadd.d %v0,%v1,%v2,%vm1
	vst %v0,8,%s1
	or %s0, 1, (0)1
	or %s5, 0, %s4
.LBB1_3:
	adds.l %s6, %s1, %s5
	ld %s6, (, %s6)
	adds.l %s7, %s2, %s5
	ld %s7, (, %s7)
	fcmp.d %s6, %s6, %s7
	or %s7, 0, %s4
	cmov.d.eq %s7, (63)0, %s6
	lea %s5, 8(, %s5)
	and %s0, %s0, %s7
	brne.l %s5, %s3, .LBB1_3
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end1:
	.size	_Z10_test_vm01v, .Lfunc_end1-_Z10_test_vm01v

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 890342c8b12a139820ad5b21fdf1742f70b7eee8)"
	.section	".note.GNU-stack","",@progbits
