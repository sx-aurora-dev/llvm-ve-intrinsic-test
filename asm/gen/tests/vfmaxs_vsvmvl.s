	.text
	.file	"vfmaxs_vsvmvl.c"
	.globl	vfmaxs_vsvmvl                   # -- Begin function vfmaxs_vsvmvl
	.p2align	4
	.type	vfmaxs_vsvmvl,@function
vfmaxs_vsvmvl:                          # @vfmaxs_vsvmvl
# %bb.0:
	and %s5, %s5, (32)0
	brgt.w 1, %s5, .LBB0_3
# %bb.1:
	or %s6, 0, (0)1
	lea %s7, 256
	or %s34, 0, %s5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s35, %s34, %s7
	lvl %s35
	vldu %v0, 4, %s2
	vldl.zx %v1, 4, %s3
	vldu %v2, 4, %s4
	vfmk.w.gt %vm1, %v1
	vfmax.s %v2, %s1, %v0, %vm1
	vstu %v2, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 1024(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (56)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfmaxs_vsvmvl, .Lfunc_end0-vfmaxs_vsvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
