	.text
	.file	"vdivswsx_vsvl_imm.c"
	.globl	vdivswsx_vsvl_imm
	.p2align	4
	.type	vdivswsx_vsvl_imm,@function
vdivswsx_vsvl_imm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB0_5
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_5:
	or %s34, 1, (0)1
	brlt.w %s2, %s34, .LBB0_3
	or %s34, 0, (0)1
	lea %s35, 256
	or %s36, 0, %s2
.LBB0_2:
	mins.w.zx %s37, %s36, %s35
	lvl %s37
	vldl.sx %v0,4,%s1
	vdivs.w.sx %v0,3,%v0
	vstl %v0,4,%s0
	lea %s0, 1024(%s0)
	lea %s1, 1024(%s1)
	lea %s34, 256(%s34)
	lea %s36, -256(%s36)
	brlt.w %s34, %s2, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	vdivswsx_vsvl_imm, .Lfunc_end0-vdivswsx_vsvl_imm


	.ident	"clang version 10.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 684f35c67e2d7e0a474732547d535e7efd3486cf)"
	.section	".note.GNU-stack","",@progbits
