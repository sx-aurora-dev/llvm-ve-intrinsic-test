	.text
	.file	"vcmpswzx_vsvl_imm.c"
	.globl	vcmpswzx_vsvl_imm
	.p2align	4
	.type	vcmpswzx_vsvl_imm,@function
vcmpswzx_vsvl_imm:
.Lvcmpswzx_vsvl_imm$local:
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
	brgt.w 1, %s2, .LBB0_3
	or %s3, 0, (0)1
	lea %s4, 256
	or %s5, 0, %s2
.LBB0_2:
	mins.w.zx %s6, %s5, %s4
	lvl %s6
	vldl.sx %v0,4,%s1
	vcmps.w.zx %v0,3,%v0
	vstl %v0,4,%s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s3, 256(, %s3)
	lea %s5, -256(, %s5)
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end0:
	.size	vcmpswzx_vsvl_imm, .Lfunc_end0-vcmpswzx_vsvl_imm

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3d99b1caff346d559e3e184ecb5ab1fadefc79ae)"
	.section	".note.GNU-stack","",@progbits
