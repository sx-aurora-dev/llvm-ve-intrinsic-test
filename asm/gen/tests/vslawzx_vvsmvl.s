	.text
	.file	"vslawzx_vvsmvl.c"
	.globl	vslawzx_vvsmvl                  # -- Begin function vslawzx_vvsmvl
	.p2align	4
	.type	vslawzx_vvsmvl,@function
vslawzx_vvsmvl:                         # @vslawzx_vvsmvl
# %bb.0:
	brgt.w 1, %s5, .LBB0_3
# %bb.1:
	and %s2, %s2, (32)0
	or %s6, 0, (0)1
	lea %s7, 256
	or %s34, 0, %s5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s35, %s34, %s7
	lvl %s35
	vldl.sx %v0, 4, %s1
	vldl.zx %v1, 4, %s3
	vldl.sx %v2, 4, %s4
	vfmk.w.gt %vm1, %v1
	vsla.w.zx %v2, %v0, %s2, %vm1
	vstl %v2, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s1, 1024(, %s1)
	lea %s3, 1024(, %s3)
	lea %s4, 1024(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (56)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vslawzx_vvsmvl, .Lfunc_end0-vslawzx_vvsmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git abc0611048916f1be3a5a11282325b09a6c4d450)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
