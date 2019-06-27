	.text
	.file	"pack_f32a.c"
	.globl	vel_pack_f32a
	.p2align	4
	.type	vel_pack_f32a,@function
vel_pack_f32a:
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
	ldl.zx %s34, (,%s0)
	lea %s35, 1
	and %s35, %s35, (32)0
	lea.sl %s35, 1(%s35)
	mulu.l %s0, %s34, %s35
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	vel_pack_f32a, .Lfunc_end0-vel_pack_f32a


	.ident	"clang version 9.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/clang.git 7ed41ce09bd9cc62705302b8c54048b1b8092b73) (llvm/llvm.git 7d7f046a8c4051e1c87e8939bbbfac2a6f4c6056)"
	.section	".note.GNU-stack","",@progbits
