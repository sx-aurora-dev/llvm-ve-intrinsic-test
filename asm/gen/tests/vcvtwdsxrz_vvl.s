	.text
	.file	"vcvtwdsxrz_vvl.c"
	.globl	vcvtwdsxrz_vvl
	.p2align	4
	.type	vcvtwdsxrz_vvl,@function
vcvtwdsxrz_vvl:
.Lvcvtwdsxrz_vvl$local:
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
	or %s3, 1, (0)1
	brlt.w %s2, %s3, .LBB0_3
	or %s3, 0, (0)1
	lea %s4, 256
	or %s5, 0, %s2
.LBB0_2:
	mins.w.zx %s6, %s5, %s4
	lvl %s6
	vld %v0,8,%s1
	vcvt.w.d.sx.rz %v0,%v0
	vstl %v0,4,%s0
	lea %s0, 1024(%s0)
	lea %s1, 2048(%s1)
	lea %s3, 256(%s3)
	lea %s5, -256(%s5)
	brlt.w %s3, %s2, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	vcvtwdsxrz_vvl, .Lfunc_end0-vcvtwdsxrz_vvl

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 7a685b51bd790cc7255f609e2d5b66386cf4c768)"
	.section	".note.GNU-stack","",@progbits
