	.text
	.file	"approx_vfdivs_vsvl.c"
	.globl	approx_vfdivs_vsvl
	.p2align	4
	.type	approx_vfdivs_vsvl,@function
approx_vfdivs_vsvl:
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
	and %s3, %s3, (32)0
	brgt.w 1, %s3, .LBB0_3
	or %s4, 0, (0)1
	lea %s5, 256
	lea.sl %s6, 1065353216
	or %s7, 0, %s3
.LBB0_2:
	mins.w.sx %s34, %s7, %s5
	lvl %s34
	vldu %v0, 4, %s2
	vrcp.s %v1, %v0
	vfnmsb.s %v2, %s6, %v0, %v1
	vfmad.s %v2, %v1, %v1, %v2
	vfmul.s %v3, %s1, %v2
	vfnmsb.s %v4, %s1, %v3, %v0
	vfmad.s %v1, %v3, %v1, %v4
	vfnmsb.s %v0, %s1, %v1, %v0
	vfmad.s %v0, %v1, %v2, %v0
	vstu %v0, 4, %s0
	lea %s0, 1024(, %s0)
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
	.size	approx_vfdivs_vsvl, .Lfunc_end0-approx_vfdivs_vsvl

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git a0d000a8b9fc77dccd0c2af6986053df77759a6e)"
	.section	".note.GNU-stack","",@progbits
