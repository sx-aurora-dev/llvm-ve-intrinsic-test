	.text
	.file	"approx_vfdivs_vvvl.c"
	.globl	approx_vfdivs_vvvl
	.p2align	4
	.type	approx_vfdivs_vvvl,@function
approx_vfdivs_vvvl:
	brgt.w 1, %s3, .LBB0_3
	or %s4, 0, (0)1
	lea %s5, 256
	lea.sl %s6, 1065353216
	or %s7, 0, %s3
.LBB0_2:
	mins.w.sx %s34, %s7, %s5
	lvl %s34
	vldu %v0, 4, %s1
	vldu %v1, 4, %s2
	vrcp.s %v2, %v1
	vfnmsb.s %v3, %s6, %v1, %v2
	vfmad.s %v3, %v2, %v2, %v3
	vfmul.s %v4, %v0, %v3
	vfnmsb.s %v5, %v0, %v4, %v1
	vfmad.s %v2, %v4, %v2, %v5
	vfnmsb.s %v0, %v0, %v2, %v1
	vfmad.s %v0, %v2, %v3, %v0
	vstu %v0, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 1024(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	approx_vfdivs_vvvl, .Lfunc_end0-approx_vfdivs_vvvl

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 9c45d576945a4fddcd08d0c3956139ae53c477e8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
