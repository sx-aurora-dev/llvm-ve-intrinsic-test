	.text
	.file	"vm02.cc"
	.globl	_Z4funcDv256_dS_S_Dv4_m
	.p2align	4
	.type	_Z4funcDv256_dS_S_Dv4_m,@function
_Z4funcDv256_dS_S_Dv4_m:
.L_Z4funcDv256_dS_S_Dv4_m$local:
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
	lea %s2, 6384(, %s9)
	ld %s3, (, %s2)
	ld %s4, 8(, %s2)
	ld %s5, 16(, %s2)
	ld %s2, 24(, %s2)
	lvm %vm1,0,%s3
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfadd.d %v0,%v2,%v1,%vm1
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %lr)
.Lfunc_end0:
	.size	_Z4funcDv256_dS_S_Dv4_m, .Lfunc_end0-_Z4funcDv256_dS_S_Dv4_m

	.globl	_Z10_test_vm02v
	.p2align	4
	.type	_Z10_test_vm02v,@function
_Z10_test_vm02v:
.L_Z10_test_vm02v$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -17680
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
	st %s18, 48(, %s9)
	st %s19, 56(, %s9)
	st %s20, 64(, %s9)
	st %s21, 72(, %s9)
	or %s0, 0, (0)1
	or %s1, 0, (0)1
	lea %s2, -9216(, %s9)
	lea.sl %s3, 1072693248
	lea.sl %s4, 1073741824
	lea.sl %s5, 1074266112
	lea %s19, 2048
	or %s6, 0, %s0
.LBB1_1:
	cvt.d.w %s7, %s6
	st %s7, -2048(%s1, %s9)
	st %s3, -6144(%s1, %s9)
	st %s4, -8192(%s1, %s9)
	and %s34, 1, %s6
	stl %s34, (, %s2)
	cmps.w.sx %s34, %s34, %s0
	or %s35, 0, %s5
	cmov.w.eq %s35, %s7, %s34
	st %s35, -4096(%s1, %s9)
	adds.w.sx %s6, 1, %s6
	lea %s1, 8(, %s1)
	lea %s2, 4(, %s2)
	brne.l %s1, %s19, .LBB1_1
	lea %s20, 256
	lea %s21, -2048(, %s9)
	lvl %s20
	vld %v0,8,%s21
	lea %s0, -6144(, %s9)
	vld %v1,8,%s0
	lea %s0, -8192(, %s9)
	vld %v2,8,%s0
	lea %s0, -9216(, %s9)
	vldl.zx %v3,4,%s0
	vfmk.w.gt %vm1,%v3
	lea %s0, 4336(, %s11)
	vst %v2,8,%s0
	lea %s0, 2288(, %s11)
	vst %v1,8,%s0
	lea %s0, 240(, %s11)
	vst %v0,8,%s0
	svm %s0,%vm1,3
	st %s0, 6408(, %s11)
	svm %s0,%vm1,2
	st %s0, 6400(, %s11)
	svm %s0,%vm1,1
	st %s0, 6392(, %s11)
	svm %s0,%vm1,0
	lea %s1, _Z4funcDv256_dS_S_Dv4_m@lo
	and %s1, %s1, (32)0
	lea.sl %s12, _Z4funcDv256_dS_S_Dv4_m@hi(, %s1)
	lea %s18, -11264(, %s9)
	st %s0, 6384(, %s11)
	or %s0, 0, %s18
	bsic %lr, (, %s12)
	vld %v0,8,%s18
	vst %v0,8,%s21
	or %s1, 0, (0)1
	or %s0, 1, (0)1
	or %s2, 0, %s1
.LBB1_3:
	ld %s3, -2048(%s2, %s9)
	ld %s4, -4096(%s2, %s9)
	fcmp.d %s3, %s3, %s4
	or %s4, 0, %s1
	cmov.d.eq %s4, (63)0, %s3
	lea %s2, 8(, %s2)
	and %s0, %s0, %s4
	brne.l %s2, %s19, .LBB1_3
	ld %s21, 72(, %s9)
	ld %s20, 64(, %s9)
	ld %s19, 56(, %s9)
	ld %s18, 48(, %s9)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %lr)
.Lfunc_end1:
	.size	_Z10_test_vm02v, .Lfunc_end1-_Z10_test_vm02v

	.ident	"clang version 11.0.0 (https://github.com/jam7/llvm-project.git 7cc853a8ecec062c53e2c861476377faf064b8e1)"
	.section	".note.GNU-stack","",@progbits
