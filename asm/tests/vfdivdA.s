	.text
	.file	"vfdivdA.c"
	.globl	vfsdiv
	.p2align	4
	.type	vfsdiv,@function
vfsdiv:
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
	lvl %s3
	vld %v0,8,%s2
	vrcp.d %v1,%v0
	lea.sl %s34, 1072693248
	vfnmsb.d %v2,%s34,%v0,%v1
	vfmad.d %v1,%v1,%v1,%v2
	vfnmsb.d %v2,%s34,%v0,%v1
	vfmad.d %v1,%v1,%v1,%v2
	vaddu.l %v1,1,%v1
	vfnmsb.d %v2,%s34,%v0,%v1
	vfmad.d %v1,%v1,%v1,%v2
	vfmul.d %v2,%s1,%v1
	vfnmsb.d %v0,%s1,%v2,%v0
	vfmad.d %v0,%v2,%v1,%v0
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	vfsdiv, .Lfunc_end0-vfsdiv


	.ident	"clang version 10.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 436d233fbc594d58dca6f7267bc5774b68d0c021)"
	.section	".note.GNU-stack","",@progbits
