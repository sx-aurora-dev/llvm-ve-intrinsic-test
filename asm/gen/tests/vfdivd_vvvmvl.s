	.text
	.file	"vfdivd_vvvmvl.c"
	.globl	vfdivd_vvvmvl
	.p2align	4
	.type	vfdivd_vvvmvl,@function
vfdivd_vvvmvl:
.Lvfdivd_vvvmvl$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
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
	or %s6, 1, (0)1
	brlt.w %s5, %s6, .LBB0_3
	or %s6, 0, (0)1
	lea %s7, 256
	or %s34, 0, %s5
.LBB0_2:
	mins.w.zx %s35, %s34, %s7
	lvl %s35
	vld %v0,8,%s1
	vld %v1,8,%s2
	vldl.zx %v2,4,%s3
	vld %v3,8,%s4
	vfmk.w.gt %vm1,%v2
	vfdiv.d %v3,%v0,%v1,%vm1
	vst %v3,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 2048(, %s4)
	lea %s6, 256(, %s6)
	lea %s34, -256(, %s34)
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end0:
	.size	vfdivd_vvvmvl, .Lfunc_end0-vfdivd_vvvmvl

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 890342c8b12a139820ad5b21fdf1742f70b7eee8)"
	.section	".note.GNU-stack","",@progbits
