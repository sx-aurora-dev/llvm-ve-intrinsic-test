	.text
	.file	"vfnmadd_vsvvl.c"
	.globl	vfnmadd_vsvvl                   # -- Begin function vfnmadd_vsvvl
	.p2align	4
	.type	vfnmadd_vsvvl,@function
vfnmadd_vsvvl:                          # @vfnmadd_vsvvl
# %bb.0:
	brgt.w 1, %s4, .LBB0_3
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vld %v0, 8, %s2
	vld %v1, 8, %s3
	vfnmad.d %v0, %s1, %v0, %v1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfnmadd_vsvvl, .Lfunc_end0-vfnmadd_vsvvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bfa3af73d87fd3c1511a0e3f6781abefc7af02a7)"
	.section	".note.GNU-stack","",@progbits
