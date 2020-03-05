	.text
	.file	"vbrdl_vsmvl_imm.c"
	.globl	vbrdl_vsmvl_imm
	.p2align	4
	.type	vbrdl_vsmvl_imm,@function
vbrdl_vsmvl_imm:
.Lvbrdl_vsmvl_imm$local:
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
	brgt.w 1, %s3, .LBB0_3
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:
	mins.w.zx %s7, %s6, %s5
	lvl %s7
	vldl.zx %v0,4,%s1
	vld %v1,8,%s2
	vfmk.w.gt %vm1,%v0
	vbrd %v1,3,%vm1
	vst %v1,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 2048(, %s2)
	lea %s4, 256(, %s4)
	lea %s6, -256(, %s6)
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end0:
	.size	vbrdl_vsmvl_imm, .Lfunc_end0-vbrdl_vsmvl_imm

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3d99b1caff346d559e3e184ecb5ab1fadefc79ae)"
	.section	".note.GNU-stack","",@progbits
