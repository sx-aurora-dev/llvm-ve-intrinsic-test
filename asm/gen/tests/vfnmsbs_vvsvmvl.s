	.text
	.file	"vfnmsbs_vvsvmvl.c"
	.globl	vfnmsbs_vvsvmvl
	.p2align	4
	.type	vfnmsbs_vvsvmvl,@function
vfnmsbs_vvsvmvl:
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
	brlt.w %s6, %s34, .LBB0_3
	or %s34, 0, (0)1
	lea %s35, 256
	or %s36, 0, %s6
.LBB0_2:
	mins.w.zx %s37, %s36, %s35
	lvl %s37
	vldu %v0,4,%s1
	vldu %v1,4,%s3
	vldl.zx %v2,4,%s4
	vldu %v3,4,%s5
	vfmk.w.gt %vm1,%v2
	vfnmsb.s %v3,%v0,%s2,%v1,%vm1
	vstu %v3,4,%s0
	lea %s0, 1024(%s0)
	lea %s1, 1024(%s1)
	lea %s3, 1024(%s3)
	lea %s4, 1024(%s4)
	lea %s5, 1024(%s5)
	lea %s34, 256(%s34)
	lea %s36, -256(%s36)
	brlt.w %s34, %s6, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	vfnmsbs_vvsvmvl, .Lfunc_end0-vfnmsbs_vvsvmvl


	.ident	"clang version 9.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/clang.git 4422c49f6a312b83b13345928bc987dfdbf803be) (llvm/llvm.git b11fc090e9c501417933be968463aa9dc5df08db)"
	.section	".note.GNU-stack","",@progbits
