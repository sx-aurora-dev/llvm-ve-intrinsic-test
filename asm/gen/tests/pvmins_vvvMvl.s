	.text
	.file	"pvmins_vvvMvl.c"
	.globl	pvmins_vvvMvl                   # -- Begin function pvmins_vvvMvl
	.p2align	4
	.type	pvmins_vvvMvl,@function
pvmins_vvvMvl:                          # @pvmins_vvvMvl
# %bb.0:
	brgt.w 1, %s5, .LBB0_3
# %bb.1:
	or %s6, 0, (0)1
	lea %s7, 512
	or %s34, 0, %s5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s35, %s34, 1
	cmps.w.sx %s36, %s34, %s7
	lea %s37, 256
	cmov.w.lt %s37, %s35, %s36
	lvl %s37
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vld %v2, 8, %s3
	vld %v3, 8, %s4
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	pvmins %v3, %v0, %v1, %vm2
	vst %v3, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	lea %s4, 2048(, %s4)
	adds.w.sx %s6, %s6, %s7
	adds.w.sx %s34, %s34, (55)1
	brlt.w %s6, %s5, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvmins_vvvMvl, .Lfunc_end0-pvmins_vvvMvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 140246b32bf1e904594de0d2b662880f6a40f9cb)"
	.section	".note.GNU-stack","",@progbits
