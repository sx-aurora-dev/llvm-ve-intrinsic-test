	.text
	.file	"vcvtdw_vvl.c"
	.globl	vcvtdw_vvl
	.p2align	4
	.type	vcvtdw_vvl,@function
vcvtdw_vvl:
.Lvcvtdw_vvl$local:
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
	mins.w.sx %s6, %s5, %s4
	lvl %s6
	vldl.sx %v0,4,%s1
	vcvt.d.w %v0,%v0
	vst %v0,8,%s0
	lea %s0, 2048(, %s0)
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
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vcvtdw_vvl, .Lfunc_end0-vcvtdw_vvl

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 072128447b185a0efac468ec289aad14e6a2222e)"
	.section	".note.GNU-stack","",@progbits
