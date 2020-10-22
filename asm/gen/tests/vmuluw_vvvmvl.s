	.text
	.file	"vmuluw_vvvmvl.c"
	.globl	vmuluw_vvvmvl                   # -- Begin function vmuluw_vvvmvl
	.p2align	4
	.type	vmuluw_vvvmvl,@function
vmuluw_vvvmvl:                          # @vmuluw_vvvmvl
# %bb.0:
	brgt.w 1, %s5, .LBB0_3
# %bb.1:
	or %s6, 0, (0)1
	lea %s7, 256
	or %s34, 0, %s5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s35, %s34, %s7
	lvl %s35
	vldl.sx %v0, 4, %s1
	vldl.sx %v1, 4, %s2
	vldl.zx %v2, 4, %s3
	vldl.sx %v3, 4, %s4
	vfmk.w.gt %vm1, %v2
	vmulu.w %v3, %v0, %v1, %vm1
	vstl %v3, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 1024(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (56)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vmuluw_vvvmvl, .Lfunc_end0-vmuluw_vvvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
