	.text
	.file	"pvfmad_vvsvMvl.c"
	.globl	pvfmad_vvsvMvl
	.p2align	4
	.type	pvfmad_vvsvMvl,@function
pvfmad_vvsvMvl:
	brgt.w 1, %s6, .LBB0_3
	or %s7, 0, (0)1
	lea %s34, 256
	lea %s35, 512
	or %s36, 0, %s6
.LBB0_2:
	sra.w.sx %s37, %s36, 1
	cmps.w.sx %s38, %s36, %s35
	or %s39, 0, %s34
	cmov.w.lt %s39, %s37, %s38
	lvl %s39
	vld %v0, 8, %s1
	vld %v1, 8, %s3
	vld %v2, 8, %s4
	vld %v3, 8, %s5
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	pvfmad %v3, %v0, %s2, %v1, %vm2
	vst %v3, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s3, 2048(, %s3)
	lea %s4, 2048(, %s4)
	lea %s5, 2048(, %s5)
	adds.w.sx %s7, %s7, %s35
	adds.w.sx %s36, %s36, (55)1
	brlt.w %s7, %s6, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfmad_vvsvMvl, .Lfunc_end0-pvfmad_vvsvMvl

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 9c45d576945a4fddcd08d0c3956139ae53c477e8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
