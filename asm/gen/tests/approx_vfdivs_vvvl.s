	.text
	.file	"approx_vfdivs_vvvl.c"
	.globl	approx_vfdivs_vvvl
	.p2align	4
	.type	approx_vfdivs_vvvl,@function
approx_vfdivs_vvvl:
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
	brlt.w %s3, %s34, .LBB0_3
	or %s34, 0, (0)1
	lea %s35, 256
	lea.sl %s36, 1065353216
	or %s37, 0, %s3
.LBB0_2:
	mins.w.zx %s38, %s37, %s35
	lvl %s38
	vldu %v0,4,%s1
	vldu %v1,4,%s2
	vrcp.s %v2,%v1
	or %s39, 0, %s36
	vfnmsb.s %v3,%s39,%v1,%v2
	vfmad.s %v3,%v2,%v2,%v3
	vfmul.s %v4,%v0,%v3
	vfnmsb.s %v5,%v0,%v4,%v1
	vfmad.s %v2,%v4,%v2,%v5
	vfnmsb.s %v0,%v0,%v2,%v1
	vfmad.s %v0,%v2,%v3,%v0
	vstu %v0,4,%s0
	lea %s0, 1024(%s0)
	lea %s1, 1024(%s1)
	lea %s2, 1024(%s2)
	lea %s34, 256(%s34)
	lea %s37, -256(%s37)
	brlt.w %s34, %s3, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	approx_vfdivs_vvvl, .Lfunc_end0-approx_vfdivs_vvvl


	.ident	"clang version 9.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/clang.git 89643e42a115c6fb29f4305598b06b73a766eb9e) (llvm/llvm.git 4ff1b05a740aba9ce6507341e0e2f863bc69b3a4)"
	.section	".note.GNU-stack","",@progbits