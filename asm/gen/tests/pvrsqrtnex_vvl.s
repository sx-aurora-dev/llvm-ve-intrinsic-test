	.text
	.file	"pvrsqrtnex_vvl.c"
	.globl	pvrsqrtnex_vvl
	.p2align	4
	.type	pvrsqrtnex_vvl,@function
pvrsqrtnex_vvl:
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
	brlt.w %s2, %s34, .LBB0_3
	or %s34, 0, (0)1
	lea %s35, 256
	lea %s36, 512
	or %s37, 0, %s2
.LBB0_2:
	sra.w.sx %s38, %s37, 1
	cmps.w.sx %s39, %s37, %s36
	or %s40, 0, %s35
	cmov.w.lt %s40, %s38, %s39
	lvl %s40
	vld %v0,8,%s1
	pvrsqrt.nex %v0,%v0
	vst %v0,8,%s0
	lea %s0, 2048(%s0)
	lea %s1, 2048(%s1)
	lea %s34, 512(%s34)
	lea %s37, -512(%s37)
	brlt.w %s34, %s2, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	pvrsqrtnex_vvl, .Lfunc_end0-pvrsqrtnex_vvl


	.ident	"clang version 9.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/clang.git 1cb929683269d0b1c462d59a6281a62948bf35fe) (llvm/llvm.git 26a73effa24315891fa62ef8c4dfd0dc9728f0f0)"
	.section	".note.GNU-stack","",@progbits