	.text
	.file	"vgt_vv.c"
	.globl	vgt_vv
	.p2align	4
	.type	vgt_vv,@function
vgt_vv:
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
	vld %v0,8,%s2
	vsfa %v0,%v0,3,%s1
	vgt %v0,%v0,0,0
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	vgt_vv, .Lfunc_end0-vgt_vv


	.ident	"clang version 7.0.0 (socsv218.spf.cl.nec.co.jp:/proj/share/repos/ve-clang.git 8182fb80c24053ff26d9a347c8ffe8b986055392) (socsv218.spf.cl.nec.co.jp:/proj/share/repos/ve-llvm.git b9d937633b8a976b026c6c29582a889a25026ed1)"
	.section	".note.GNU-stack","",@progbits
