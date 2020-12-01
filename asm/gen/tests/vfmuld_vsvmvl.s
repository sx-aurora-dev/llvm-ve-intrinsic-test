	.text
	.file	"vfmuld_vsvmvl.c"
	.globl	vfmuld_vsvmvl                   # -- Begin function vfmuld_vsvmvl
	.p2align	4
	.type	vfmuld_vsvmvl,@function
vfmuld_vsvmvl:                          # @vfmuld_vsvmvl
# %bb.0:
	brgt.w 1, %s5, .LBB0_3
# %bb.1:
	or %s6, 0, (0)1
	lea %s7, 256
	or %s34, 0, %s5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s35, %s34, %s7
	lvl %s35
	vld %v0, 8, %s2
	vldl.zx %v1, 4, %s3
	vld %v2, 8, %s4
	vfmk.w.gt %vm1, %v1
	vfmul.d %v2, %s1, %v0, %vm1
	vst %v2, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 2048(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (56)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfmuld_vsvmvl, .Lfunc_end0-vfmuld_vsvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bfa3af73d87fd3c1511a0e3f6781abefc7af02a7)"
	.section	".note.GNU-stack","",@progbits
