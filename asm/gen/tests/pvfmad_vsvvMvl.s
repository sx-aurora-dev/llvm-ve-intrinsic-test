	.text
	.file	"pvfmad_vsvvMvl.c"
	.globl	pvfmad_vsvvMvl
	.p2align	4
	.type	pvfmad_vsvvMvl,@function
pvfmad_vsvvMvl:
.Lpvfmad_vsvvMvl$local:
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
	vld %v0,8,%s2
	vld %v1,8,%s3
	vld %v2,8,%s4
	vld %v3,8,%s5
	pvfmk.w.up.gt %vm2,%v2
	pvfmk.w.lo.gt %vm3,%v2
	pvfmad %v3,%s1,%v0,%v1,%vm2
	vst %v3,8,%s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	lea %s4, 2048(, %s4)
	lea %s5, 2048(, %s5)
	lea %s7, 512(, %s7)
	lea %s36, -512(, %s36)
	brlt.w %s7, %s6, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfmad_vsvvMvl, .Lfunc_end0-pvfmad_vsvvMvl

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 072128447b185a0efac468ec289aad14e6a2222e)"
	.section	".note.GNU-stack","",@progbits
