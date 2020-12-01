	.text
	.file	"pvcvtwsrz_vvl.c"
	.globl	pvcvtwsrz_vvl                   # -- Begin function pvcvtwsrz_vvl
	.p2align	4
	.type	pvcvtwsrz_vvl,@function
pvcvtwsrz_vvl:                          # @pvcvtwsrz_vvl
# %bb.0:
	brgt.w 1, %s2, .LBB0_3
# %bb.1:
	or %s3, 0, (0)1
	lea %s4, 512
	or %s5, 0, %s2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s6, %s5, 1
	cmps.w.sx %s7, %s5, %s4
	lea %s34, 256
	cmov.w.lt %s34, %s6, %s7
	lvl %s34
	vld %v0, 8, %s1
	pvcvt.w.s.rz %v0, %v0
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	adds.w.sx %s3, %s3, %s4
	adds.w.sx %s5, %s5, (55)1
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvcvtwsrz_vvl, .Lfunc_end0-pvcvtwsrz_vvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bfa3af73d87fd3c1511a0e3f6781abefc7af02a7)"
	.section	".note.GNU-stack","",@progbits
