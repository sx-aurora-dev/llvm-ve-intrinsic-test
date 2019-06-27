	.text
	.file	"vel02.cc"
	.globl	_Z5vel02PvS_S_S_i
	.p2align	4
	.type	_Z5vel02PvS_S_S_i,@function
_Z5vel02PvS_S_S_i:
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
	lvl %s4
	vld %v0,8,%s0
	vld %v1,8,%s1
	vld %v2,8,%s2
	lea %s34, 256
	lvl %s34
	vldl.zx %v3,4,%s3
	vfmk.w.gt %vm1,%v3
	and %s34, %s4, (32)0
	srl %s34, %s34, 31
	adds.w.sx %s34, %s4, %s34
	sra.w.sx %s34, %s34, 1
	lvl %s34
	vfadd.d %v2,%v0,%v1,%vm1
	lvl %s4
	vst %v2,8,%s2
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	_Z5vel02PvS_S_S_i, .Lfunc_end0-_Z5vel02PvS_S_S_i


	.ident	"clang version 9.0.0 (/usr/work1/home/ishizaka/work/ve-llvm/src/llvm/tools/clang 249ba95027e4c332fc9b0451eac67826e8861e2e) (llvm/src/llvm 0fcb01986d1f293be44d697a9020929f0938a880)"
	.section	".note.GNU-stack","",@progbits
