	.text
	.file	"vsrl_vvsl.c"
	.globl	vsrl_vvsl
	.p2align	4
	.type	vsrl_vvsl,@function
vsrl_vvsl:
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
	adds.w.sx %s3, %s3, (0)1
	brgt.w 1, %s3, .LBB0_3
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vld %v0,8,%s1
	vsrl %v0,%v0,%s2
	vst %v0,8,%s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vsrl_vvsl, .Lfunc_end0-vsrl_vvsl

	.ident	"clang version 11.0.0 (https://github.com/jam7/llvm-project.git cc8bb2ddfbd980c9a589eba30a8c9e0b921065db)"
	.section	".note.GNU-stack","",@progbits
