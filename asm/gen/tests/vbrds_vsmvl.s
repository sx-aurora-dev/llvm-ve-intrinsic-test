	.text
	.file	"vbrds_vsmvl.c"
	.globl	vbrds_vsmvl                     # -- Begin function vbrds_vsmvl
	.p2align	4
	.type	vbrds_vsmvl,@function
vbrds_vsmvl:                            # @vbrds_vsmvl
# %bb.0:
	and %s4, %s4, (32)0
	brgt.w 1, %s4, .LBB0_3
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vldl.zx %v0, 4, %s2
	vldu %v1, 4, %s3
	vfmk.w.gt %vm1, %v0
	vbrdu %v1, %s1, %vm1
	vstu %v1, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrds_vsmvl, .Lfunc_end0-vbrds_vsmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bfa3af73d87fd3c1511a0e3f6781abefc7af02a7)"
	.section	".note.GNU-stack","",@progbits
