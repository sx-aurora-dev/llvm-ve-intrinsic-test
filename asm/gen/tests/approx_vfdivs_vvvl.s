	.text
	.file	"approx_vfdivs_vvvl.c"
	.globl	approx_vfdivs_vvvl
	.p2align	4
	.type	approx_vfdivs_vvvl,@function
approx_vfdivs_vvvl:
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
	lea.sl %s6, 1065353216
	or %s7, 0, %s3
.LBB0_2:
	mins.w.sx %s34, %s7, %s5
	lvl %s34
	vldu %v0,4,%s1
	vldu %v1,4,%s2
	vrcp.s %v2,%v1
	vfnmsb.s %v3,%s6,%v1,%v2
	vfmad.s %v3,%v2,%v2,%v3
	vfmul.s %v4,%v0,%v3
	vfnmsb.s %v5,%v0,%v4,%v1
	vfmad.s %v2,%v4,%v2,%v5
	vfnmsb.s %v0,%v0,%v2,%v1
	vfmad.s %v0,%v2,%v3,%v0
	vstu %v0,4,%s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 1024(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	approx_vfdivs_vvvl, .Lfunc_end0-approx_vfdivs_vvvl

	.ident	"clang version 11.0.0 (https://github.com/jam7/llvm-project.git cc8bb2ddfbd980c9a589eba30a8c9e0b921065db)"
	.section	".note.GNU-stack","",@progbits
