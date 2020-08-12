	.text
	.file	"vm02.cc"
	.globl	_Z4funcDv256_dS_S_Dv4_m
	.p2align	4
	.type	_Z4funcDv256_dS_S_Dv4_m,@function
_Z4funcDv256_dS_S_Dv4_m:
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
	vfadd.d %v0,%v2,%v1,%vm1
	vst %v0, 8, %s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z4funcDv256_dS_S_Dv4_m, .Lfunc_end0-_Z4funcDv256_dS_S_Dv4_m

	.globl	_Z10_test_vm02v
	.p2align	4
	.type	_Z10_test_vm02v,@function
_Z10_test_vm02v:
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
	lea %s1, -9216(, %s9)
	lea.sl %s2, 1072693248
	lea.sl %s3, 1073741824
	lea.sl %s4, 1074266112
	lea %s19, 2048
	or %s5, 0, %s0
.LBB1_1:
	cvt.d.w %s6, %s5
	st %s6, -2048(%s0, %s9)
	st %s2, -6144(%s0, %s9)
	st %s3, -8192(%s0, %s9)
	and %s7, 1, %s5
	stl %s7, (, %s1)
	or %s34, 0, %s4
	cmov.w.eq %s34, %s6, %s7
	st %s34, -4096(%s0, %s9)
	adds.w.sx %s5, 1, %s5
	lea %s0, 8(, %s0)
	lea %s1, 4(, %s1)
	brne.l %s0, %s19, .LBB1_1
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
	lea %s1, _Z4funcDv256_dS_S_Dv4_m@lo
	and %s1, %s1, (32)0
	lea.sl %s12, _Z4funcDv256_dS_S_Dv4_m@hi(, %s1)
	lea %s18, -11264(, %s9)
	st %s0, 6384(, %s11)
	or %s0, 0, %s18
	bsic %s10, (, %s12)
	vld %v0, 8, %s18
	vst %v0,8,%s21
	or %s0, 0, (0)1
	or %s2, 1, (0)1
	or %s1, 0, %s0
.LBB1_3:
	ld %s3, -2048(%s1, %s9)
	ld %s4, -4096(%s1, %s9)
	fcmp.d %s3, %s3, %s4
	or %s4, 0, %s0
	cmov.d.eq %s4, (63)0, %s3
	and %s2, %s2, %s4
	lea %s1, 8(, %s1)
	and %s2, %s2, (32)0
	brne.l %s1, %s19, .LBB1_3
	adds.w.sx %s0, %s2, (0)1
	ld %s21, 72(, %s9)
	ld %s20, 64(, %s9)
	ld %s19, 56(, %s9)
	ld %s18, 48(, %s9)
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z10_test_vm02v, .Lfunc_end1-_Z10_test_vm02v

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bf2bd2baf6c26029de1da06f9d4948e4ad04cc90)"
	.section	".note.GNU-stack","",@progbits
