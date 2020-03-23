	.text
	.file	"vel04.cc"
	.globl	_Z5vel04PvS_S_i
	.p2align	4
	.type	_Z5vel04PvS_S_i,@function
_Z5vel04PvS_S_i:
.L_Z5vel04PvS_S_i$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB0_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
	lea %s4, 256
	lvl %s4
	vld %v0,8,%s0
	vld %v1,8,%s1
	vld %v2,8,%s2
	lea %s0, 128
	lvl %s0
	vfadd.d %v2,%v0,%v1
	lvl %s3
	vst %v2,8,%s2
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %lr)
.Lfunc_end0:
	.size	_Z5vel04PvS_S_i, .Lfunc_end0-_Z5vel04PvS_S_i

	.ident	"clang version 11.0.0 (https://github.com/jam7/llvm-project.git b65bb90b50a69e0eda5081d618bf8d5875b9df5c)"
	.section	".note.GNU-stack","",@progbits
