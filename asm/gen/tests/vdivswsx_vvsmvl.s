	.text
	.file	"vdivswsx_vvsmvl.c"
	.globl	vdivswsx_vvsmvl
	.p2align	4
	.type	vdivswsx_vvsmvl,@function
vdivswsx_vvsmvl:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB0_5
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_5:
	or %s34, 1, (0)1
	brlt.w %s5, %s34, .LBB0_3
	or %s34, 0, (0)1
	lea %s35, 256
	or %s36, 0, %s5
.LBB0_2:
	mins.w.zx %s37, %s36, %s35
	lvl %s37
	vldl.sx %v0,4,%s1
	vldl.zx %v1,4,%s3
	vldl.sx %v2,4,%s4
	vfmk.w.gt %vm1,%v1
	vdivs.w.sx %v2,%v0,%s2,%vm1
	vstl %v2,4,%s0
	lea %s0, 1024(%s0)
	lea %s1, 1024(%s1)
	lea %s3, 1024(%s3)
	lea %s4, 1024(%s4)
	lea %s34, 256(%s34)
	lea %s36, -256(%s36)
	brlt.w %s34, %s5, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	vdivswsx_vvsmvl, .Lfunc_end0-vdivswsx_vvsmvl


	.ident	"clang version 10.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 436d233fbc594d58dca6f7267bc5774b68d0c021)"
	.section	".note.GNU-stack","",@progbits
