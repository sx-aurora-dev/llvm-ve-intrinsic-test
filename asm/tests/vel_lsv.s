	.text
	.file	"vel_lsv.c"
	.globl	lsv_vss
	.p2align	4
	.type	lsv_vss,@function
lsv_vss:
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
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s0
	lsv %v0(%s1),%s2
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	lsv_vss, .Lfunc_end0-lsv_vss


	.ident	"clang version 10.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 4d0219ec8990a4d889196a4e2a003e64f5edc69e)"
	.section	".note.GNU-stack","",@progbits