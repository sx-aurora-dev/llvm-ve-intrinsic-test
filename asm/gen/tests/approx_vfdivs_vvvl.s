	.text
	.file	"approx_vfdivs_vvvl.c"
	.globl	approx_vfdivs_vvvl              # -- Begin function approx_vfdivs_vvvl
	.p2align	4
	.type	approx_vfdivs_vvvl,@function
approx_vfdivs_vvvl:                     # @approx_vfdivs_vvvl
# %bb.0:
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	or %s4, 0, (0)1
	lea %s5, 256
	lea.sl %s6, 1065353216
	or %s7, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
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
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
