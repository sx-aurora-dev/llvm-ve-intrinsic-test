	.text
	.file	"vcvtwdsxrz_vvmvl.c"
	.globl	vcvtwdsxrz_vvmvl                # -- Begin function vcvtwdsxrz_vvmvl
	.p2align	4
	.type	vcvtwdsxrz_vvmvl,@function
vcvtwdsxrz_vvmvl:                       # @vcvtwdsxrz_vvmvl
# %bb.0:
	brgt.w 1, %s4, .LBB0_3
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vld %v0, 8, %s1
	vldl.zx %v1, 4, %s2
	vldl.sx %v2, 4, %s3
	vfmk.w.gt %vm1, %v1
	vcvt.w.d.sx.rz %v2, %v0, %vm1
	vstl %v2, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vcvtwdsxrz_vvmvl, .Lfunc_end0-vcvtwdsxrz_vvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3651dc02e3c098e79d4b32ab302d3e91d79ecd17)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
