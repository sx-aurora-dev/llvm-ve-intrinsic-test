	.text
	.file	"vslawsx_vvvmvl.c"
	.globl	vslawsx_vvvmvl                  # -- Begin function vslawsx_vvvmvl
	.p2align	4
	.type	vslawsx_vvvmvl,@function
vslawsx_vvvmvl:                         # @vslawsx_vvvmvl
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
	vld %v1, 8, %s2
	vldl.zx %v2, 4, %s3
	vldl.sx %v3, 4, %s4
	vfmk.w.gt %vm1, %v2
	vsla.w.sx %v3, %v0, %v1, %vm1
	vstl %v3, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s2, 2048(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 1024(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (56)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vslawsx_vvvmvl, .Lfunc_end0-vslawsx_vvvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 140246b32bf1e904594de0d2b662880f6a40f9cb)"
	.section	".note.GNU-stack","",@progbits
