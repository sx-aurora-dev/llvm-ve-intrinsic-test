	.text
	.file	"vxor_vvvmvl.c"
	.globl	vxor_vvvmvl                     # -- Begin function vxor_vvvmvl
	.p2align	4
	.type	vxor_vvvmvl,@function
vxor_vvvmvl:                            # @vxor_vvvmvl
# %bb.0:
	brgt.w 1, %s5, .LBB0_3
# %bb.1:
	or %s6, 0, (0)1
	lea %s7, 256
	or %s34, 0, %s5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s35, %s34, %s7
	lvl %s35
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vldl.zx %v2, 4, %s3
	vld %v3, 8, %s4
	vfmk.w.gt %vm1, %v2
	vxor %v3, %v0, %v1, %vm1
	vst %v3, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 2048(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (56)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vxor_vvvmvl, .Lfunc_end0-vxor_vvvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 140246b32bf1e904594de0d2b662880f6a40f9cb)"
	.section	".note.GNU-stack","",@progbits
