	.text
	.file	"vsfa_vvssmvl.c"
	.globl	vsfa_vvssmvl
	.p2align	4
	.type	vsfa_vvssmvl,@function
vsfa_vvssmvl:
.Lvsfa_vvssmvl$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l %s11, %s8, .LBB0_5
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_5:
	or %s7, 1, (0)1
	brlt.w %s6, %s7, .LBB0_3
	or %s7, 0, (0)1
	lea %s34, 256
	or %s35, 0, %s6
.LBB0_2:
	mins.w.zx %s36, %s35, %s34
	lvl %s36
	vld %v0,8,%s1
	vldl.zx %v1,4,%s4
	vld %v2,8,%s5
	vfmk.w.gt %vm1,%v1
	vsfa %v2,%v0,%s2,%s3,%vm1
	vst %v2,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s4, 1024(, %s4)
	lea %s5, 2048(, %s5)
	lea %s7, 256(, %s7)
	lea %s35, -256(, %s35)
	brlt.w %s7, %s6, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end0:
	.size	vsfa_vvssmvl, .Lfunc_end0-vsfa_vvssmvl

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 95d24fb5084e064d9620f7baddf8c5f3f4d9bcb4)"
	.section	".note.GNU-stack","",@progbits
