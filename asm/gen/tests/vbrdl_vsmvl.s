	.text
	.file	"vbrdl_vsmvl.c"
	.globl	vbrdl_vsmvl                     # -- Begin function vbrdl_vsmvl
	.p2align	4
	.type	vbrdl_vsmvl,@function
vbrdl_vsmvl:                            # @vbrdl_vsmvl
# %bb.0:
	brgt.w 1, %s4, .LBB0_3
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vldl.zx %v0, 4, %s2
	vld %v1, 8, %s3
	vfmk.w.gt %vm1, %v0
	vbrd %v1, %s1, %vm1
	vst %v1, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s2, 1024(, %s2)
	lea %s3, 2048(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdl_vsmvl, .Lfunc_end0-vbrdl_vsmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bf7303a9872881ebd21fb1958340e7d774f9887b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
