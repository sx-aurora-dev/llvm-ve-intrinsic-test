	.text
	.file	"vfmads_vsvvmvl.c"
	.globl	vfmads_vsvvmvl
	.p2align	4
	.type	vfmads_vsvvmvl,@function
vfmads_vsvvmvl:
.Lvfmads_vsvvmvl$local:
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
	or %s35, 0, %s6
.LBB0_2:
	mins.w.sx %s36, %s35, %s34
	lvl %s36
	vldu %v0,4,%s2
	vldu %v1,4,%s3
	vldl.zx %v2,4,%s4
	vldu %v3,4,%s5
	vfmk.w.gt %vm1,%v2
	vfmad.s %v3,%s1,%v0,%v1,%vm1
	vstu %v3,4,%s0
	lea %s0, 1024(, %s0)
	lea %s2, 1024(, %s2)
	lea %s3, 1024(, %s3)
	lea %s4, 1024(, %s4)
	lea %s5, 1024(, %s5)
	lea %s7, 256(, %s7)
	lea %s35, -256(, %s35)
	brlt.w %s7, %s6, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %lr)
.Lfunc_end0:
	.size	vfmads_vsvvmvl, .Lfunc_end0-vfmads_vsvvmvl

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git ca75812108fffbf4e076f7cb1e3b1ea84187497b)"
	.section	".note.GNU-stack","",@progbits
