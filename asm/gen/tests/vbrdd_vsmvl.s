	.text
	.file	"vbrdd_vsmvl.c"
	.globl	vbrdd_vsmvl
	.p2align	4
	.type	vbrdd_vsmvl,@function
vbrdd_vsmvl:
.Lvbrdd_vsmvl$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l %s11, %s8, .LBB0_5
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_5:
	brgt.w 1, %s4, .LBB0_3
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vldl.zx %v0,4,%s2
	vld %v1,8,%s3
	vfmk.w.gt %vm1,%v0
	vbrd %v1,%s1,%vm1
	vst %v1,8,%s0
	lea %s0, 2048(, %s0)
	lea %s2, 1024(, %s2)
	lea %s3, 2048(, %s3)
	lea %s5, 256(, %s5)
	lea %s7, -256(, %s7)
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %lr)
.Lfunc_end0:
	.size	vbrdd_vsmvl, .Lfunc_end0-vbrdd_vsmvl

	.ident	"clang version 11.0.0 (https://github.com/jam7/llvm-project.git b65bb90b50a69e0eda5081d618bf8d5875b9df5c)"
	.section	".note.GNU-stack","",@progbits
