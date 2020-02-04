	.text
	.file	"vm02.cc"
	.globl	_Z4funcDv256_dS_S_Dv4_m
	.p2align	4
	.type	_Z4funcDv256_dS_S_Dv4_m,@function
_Z4funcDv256_dS_S_Dv4_m:
.L_Z4funcDv256_dS_S_Dv4_m$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB0_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
	lea %s1, 256
	lea %s2,240(,%s9)
	lvl %s1
	vld %v0,8,%s2
	lea %s2,4336(,%s9)
	vld %v1,8,%s2
	lea %s2,2288(,%s9)
	vld %v2,8,%s2
	lea %s2,6384(,%s9)
	ld %s3, (,%s2)
	ld %s4, 8(,%s2)
	ld %s5, 16(,%s2)
	ld %s2, 24(,%s2)
	lvm %vm1,0,%s3
	lvm %vm1,1,%s4
	lvm %vm1,2,%s5
	lvm %vm1,3,%s2
	vfadd.d %v0,%v2,%v1,%vm1
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	_Z4funcDv256_dS_S_Dv4_m, .Lfunc_end0-_Z4funcDv256_dS_S_Dv4_m

	.globl	_Z10_test_vm02v
	.p2align	4
	.type	_Z10_test_vm02v,@function
_Z10_test_vm02v:
.L_Z10_test_vm02v$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -17680
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB1_8
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_8:
	st %s18, 48(,%s9)
	st %s19, 56(,%s9)
	st %s20, 64(,%s9)
	st %s21, 72(,%s9)
	st %s22, 80(,%s9)
	st %s23, 88(,%s9)
	st %s24, 96(,%s9)
	st %s25, 104(,%s9)
	st %s26, 112(,%s9)
	st %s27, 120(,%s9)
	st %s28, 128(,%s9)
	or %s0, 0, (0)1
	or %s2, 0, (0)1
	lea %s4,-9216(,%s9)
	lea %s21,-2048(,%s9)
	lea %s1,-6144(,%s9)
	lea.sl %s5, 1072693248
	lea %s3,-8192(,%s9)
	lea.sl %s6, 1073741824
	lea %s22,-4096(,%s9)
	lea.sl %s7, 1074266112
	lea %s23, 2048
	or %s34, 0, %s0
.LBB1_1:
	cvt.d.w %s35, %s34
	adds.l %s36, %s21, %s2
	st %s35, (,%s36)
	adds.l %s36, %s1, %s2
	st %s5, (,%s36)
	adds.l %s36, %s3, %s2
	st %s6, (,%s36)
	and %s36, 1, %s34
	stl %s36, (,%s4)
	adds.l %s37, %s22, %s2
	cmps.w.sx %s36, %s36, %s0
	or %s38, 0, %s7
	cmov.w.eq %s38, %s35, %s36
	st %s38, (,%s37)
	lea %s34, 1(%s34)
	lea %s2, 8(%s2)
	lea %s4, 4(%s4)
	brne.l %s2, %s23, .LBB1_1
	lea %s19, 256
	lvl %s19
	vld %v0,8,%s21
	vld %v1,8,%s1
	vld %v2,8,%s3
	lea %s0,-9216(,%s9)
	vldl.zx %v3,4,%s0
	vfmk.w.gt %vm1,%v3
	lea %s0, 4336(%s11)
	vst %v2,8,%s0
	lea %s0, 2288(%s11)
	vst %v1,8,%s0
	lea %s0, 240(%s11)
	vst %v0,8,%s0
	svm %s0,%vm1,3
	lea %s1, 6408(%s11)
	st %s0, (,%s1)
	svm %s0,%vm1,2
	lea %s1, 6400(%s11)
	st %s0, (,%s1)
	svm %s0,%vm1,1
	lea %s1, 6392(%s11)
	st %s0, (,%s1)
	svm %s0,%vm1,0
	lea %s1, 6384(%s11)
	lea %s2, _Z4funcDv256_dS_S_Dv4_m@lo
	and %s2, %s2, (32)0
	lea.sl %s12, _Z4funcDv256_dS_S_Dv4_m@hi(%s2)
	lea %s18,-11264(,%s9)
	st %s0, (,%s1)
	or %s0, 0, %s18
	bsic %lr, (,%s12)
	vld %v0,8,%s18
	vst %v0,8,%s21
	or %s18, 1, (0)1
	or %s19, 0, (0)1
	or %s24, 0, (0)1
	lea %s0, stderr@lo
	and %s0, %s0, (32)0
	lea.sl %s25, stderr@hi(%s0)
	lea %s0, .L.str@lo
	and %s0, %s0, (32)0
	lea.sl %s20, .L.str@hi(%s0)
	lea %s0, fprintf@lo
	and %s0, %s0, (32)0
	lea.sl %s26, fprintf@hi(%s0)
	or %s27, 0, %s24
	br.l .LBB1_3
.LBB1_5:
	and %s18, %s18, %s28
	lea %s27, 8(%s27)
	lea %s19, 1(%s19)
	breq.l %s27, %s23, .LBB1_6
.LBB1_3:
	adds.l %s0, %s21, %s27
	ld %s3, (,%s0)
	adds.l %s0, %s22, %s27
	ld %s4, (,%s0)
	fcmp.d %s0, %s3, %s4
	or %s28, 0, %s24
	cmov.d.eq %s28, (63)0, %s0
	breq.d %s3, %s4, .LBB1_5
	ld %s0, (,%s25)
	st %s4, 208(,%s11)
	st %s3, 200(,%s11)
	stl %s19, 192(,%s11)
	st %s20, 184(,%s11)
	st %s0, 176(,%s11)
	or %s12, 0, %s26
	or %s1, 0, %s20
	or %s2, 0, %s19
	bsic %lr, (,%s12)
	br.l .LBB1_5
.LBB1_6:
	or %s0, 0, %s18
	ld %s28, 128(,%s9)
	ld %s27, 120(,%s9)
	ld %s26, 112(,%s9)
	ld %s25, 104(,%s9)
	ld %s24, 96(,%s9)
	ld %s23, 88(,%s9)
	ld %s22, 80(,%s9)
	ld %s21, 72(,%s9)
	ld %s20, 64(,%s9)
	ld %s19, 56(,%s9)
	ld %s18, 48(,%s9)
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end1:
	.size	_Z10_test_vm02v, .Lfunc_end1-_Z10_test_vm02v

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %lf %lf\n"
	.size	.L.str, 12

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 7a685b51bd790cc7255f609e2d5b66386cf4c768)"
	.section	".note.GNU-stack","",@progbits
