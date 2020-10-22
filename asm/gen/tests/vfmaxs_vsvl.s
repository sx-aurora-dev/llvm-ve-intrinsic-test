	.text
	.file	"vfmaxs_vsvl.c"
	.globl	vfmaxs_vsvl                     # -- Begin function vfmaxs_vsvl
	.p2align	4
	.type	vfmaxs_vsvl,@function
vfmaxs_vsvl:                            # @vfmaxs_vsvl
# %bb.0:
	and %s3, %s3, (32)0
	brgt.w 1, %s3, .LBB0_3
# %bb.1:
	or %s4, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vldu %v0, 4, %s2
	vfmax.s %v0, %s1, %v0
	vstu %v0, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s2, 1024(, %s2)
	adds.w.sx %s4, %s4, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s4, %s3, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfmaxs_vsvl, .Lfunc_end0-vfmaxs_vsvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
