	.text
	.file	"vfnmsbs_vvvvmvl.c"
	.globl	vfnmsbs_vvvvmvl                 # -- Begin function vfnmsbs_vvvvmvl
	.p2align	4
	.type	vfnmsbs_vvvvmvl,@function
vfnmsbs_vvvvmvl:                        # @vfnmsbs_vvvvmvl
# %bb.0:
	brgt.w 1, %s6, .LBB0_3
# %bb.1:
	or %s7, 0, (0)1
	lea %s34, 256
	or %s35, 0, %s6
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s36, %s35, %s34
	lvl %s36
	vldu %v0, 4, %s1
	vldu %v1, 4, %s2
	vldu %v2, 4, %s3
	vldl.zx %v3, 4, %s4
	vldu %v4, 4, %s5
	vfmk.w.gt %vm1, %v3
	vfnmsb.s %v4, %v0, %v1, %v2, %vm1
	vstu %v4, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 1024(, %s4)
	lea %s5, 1024(, %s5)
	adds.w.sx %s7, %s7, %s34
	adds.w.sx %s35, %s35, (56)1
	brlt.w %s7, %s6, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfnmsbs_vvvvmvl, .Lfunc_end0-vfnmsbs_vvvvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
