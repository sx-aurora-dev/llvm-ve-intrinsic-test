	.text
	.file	"vdivsl_vsvmvl_imm.c"
	.globl	vdivsl_vsvmvl_imm
	.p2align	4
	.type	vdivsl_vsvmvl_imm,@function
vdivsl_vsvmvl_imm:
.Lvdivsl_vsvmvl_imm$local:
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
	or %s5, 1, (0)1
	brlt.w %s4, %s5, .LBB0_3
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:
	mins.w.zx %s34, %s7, %s6
	lvl %s34
	vld %v0,8,%s1
	vldl.zx %v1,4,%s2
	vld %v2,8,%s3
	vfmk.w.gt %vm1,%v1
	vdivs.l %v2,3,%v0,%vm1
	vst %v2,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 1024(, %s2)
	lea %s3, 2048(, %s3)
	lea %s5, 256(, %s5)
	lea %s7, -256(, %s7)
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end0:
	.size	vdivsl_vsvmvl_imm, .Lfunc_end0-vdivsl_vsvmvl_imm

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 2b268b318a1e2d4a7d775af703f1004a9c94cb6d)"
	.section	".note.GNU-stack","",@progbits
