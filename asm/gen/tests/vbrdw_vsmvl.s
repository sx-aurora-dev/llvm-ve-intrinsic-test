	.text
	.file	"vbrdw_vsmvl.c"
	.globl	vbrdw_vsmvl
	.p2align	4
	.type	vbrdw_vsmvl,@function
vbrdw_vsmvl:
	and %s4, %s4, (32)0
	brgt.w 1, %s4, .LBB0_3
	and %s1, %s1, (32)0
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vldl.zx %v0, 4, %s2
	vldl.sx %v1, 4, %s3
	vfmk.w.gt %vm1, %v0
	vbrdl %v1, %s1, %vm1
	vstl %v1, 4, %s0
	lea %s0, 1024(, %s0)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vbrdw_vsmvl, .Lfunc_end0-vbrdw_vsmvl

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang 649a28b2e28d892a4679ced967ef8d47f2ca6f94)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
