	.text
	.file	"vel_vmrg.c"
	.globl	vmrg_vvvml
	.p2align	4
	.type	vmrg_vvvml,@function
vmrg_vvvml:
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
	brlt.w %s4, %s34, .LBB0_3
	or %s34, 0, (0)1
	lea %s35, 256
	or %s36, 0, %s4
.LBB0_2:
	mins.w.zx %s37, %s36, %s35
	lvl %s37
	vld %v0,8,%s1
	vld %v1,8,%s2
	vldl.zx %v2,4,%s3
	vfmk.w.gt %vm1,%v2
	vmrg %v0,%v0,%v1,%vm1
	vst %v0,8,%s0
	lea %s0, 2048(%s0)
	lea %s1, 2048(%s1)
	lea %s2, 2048(%s2)
	lea %s3, 1024(%s3)
	lea %s34, 256(%s34)
	lea %s36, -256(%s36)
	brlt.w %s34, %s4, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	vmrg_vvvml, .Lfunc_end0-vmrg_vvvml

	.globl	vmrg_vsvml
	.p2align	4
	.type	vmrg_vsvml,@function
vmrg_vsvml:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB1_5
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_5:
	or %s34, 1, (0)1
	brlt.w %s4, %s34, .LBB1_3
	or %s34, 0, (0)1
	lea %s35, 256
	or %s36, 0, %s4
.LBB1_2:
	mins.w.zx %s37, %s36, %s35
	lvl %s37
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vfmk.w.gt %vm1,%v1
	vmrg %v0,%s1,%v0,%vm1
	vst %v0,8,%s0
	lea %s0, 2048(%s0)
	lea %s2, 2048(%s2)
	lea %s3, 1024(%s3)
	lea %s34, 256(%s34)
	lea %s36, -256(%s36)
	brlt.w %s34, %s4, .LBB1_2
.LBB1_3:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end1:
	.size	vmrg_vsvml, .Lfunc_end1-vmrg_vsvml

	.globl	vmrg_vIvml
	.p2align	4
	.type	vmrg_vIvml,@function
vmrg_vIvml:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB2_5
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB2_5:
	or %s34, 1, (0)1
	brlt.w %s4, %s34, .LBB2_3
	or %s34, 0, (0)1
	lea %s35, 256
	or %s36, 0, %s4
.LBB2_2:
	mins.w.zx %s37, %s36, %s35
	lvl %s37
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vfmk.w.gt %vm1,%v1
	vmrg %v0,3,%v0,%vm1
	vst %v0,8,%s0
	lea %s0, 2048(%s0)
	lea %s2, 2048(%s2)
	lea %s3, 1024(%s3)
	lea %s34, 256(%s34)
	lea %s36, -256(%s36)
	brlt.w %s34, %s4, .LBB2_2
.LBB2_3:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end2:
	.size	vmrg_vIvml, .Lfunc_end2-vmrg_vIvml

	.globl	vmrgw_vvvMl
	.p2align	4
	.type	vmrgw_vvvMl,@function
vmrgw_vvvMl:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB3_5
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB3_5:
	or %s34, 1, (0)1
	brlt.w %s4, %s34, .LBB3_3
	or %s34, 0, (0)1
	lea %s35, 256
	lea %s36, 512
	or %s37, 0, %s4
.LBB3_2:
	sra.w.sx %s38, %s37, 1
	cmps.w.sx %s39, %s37, %s36
	or %s40, 0, %s35
	cmov.w.lt %s40, %s38, %s39
	lvl %s40
	vld %v0,8,%s1
	vld %v1,8,%s2
	vld %v2,8,%s3
	pvfmk.w.up.gt %vm2,%v2
	pvfmk.w.lo.gt %vm3,%v2
	vmrg.w %v0,%v0,%v1,%vm2
	vst %v0,8,%s0
	lea %s0, 2048(%s0)
	lea %s1, 2048(%s1)
	lea %s2, 2048(%s2)
	lea %s3, 2048(%s3)
	lea %s34, 512(%s34)
	lea %s37, -512(%s37)
	brlt.w %s34, %s4, .LBB3_2
.LBB3_3:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end3:
	.size	vmrgw_vvvMl, .Lfunc_end3-vmrgw_vvvMl

	.globl	vmrgw_vsvMl
	.p2align	4
	.type	vmrgw_vsvMl,@function
vmrgw_vsvMl:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB4_5
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB4_5:
	or %s34, 1, (0)1
	brlt.w %s4, %s34, .LBB4_3
	or %s34, 0, (0)1
	lea %s35, 256
	lea %s36, 512
	or %s37, 0, %s4
.LBB4_2:
	sra.w.sx %s38, %s37, 1
	cmps.w.sx %s39, %s37, %s36
	or %s40, 0, %s35
	cmov.w.lt %s40, %s38, %s39
	lvl %s40
	vld %v0,8,%s2
	vld %v1,8,%s3
	pvfmk.w.up.gt %vm2,%v1
	pvfmk.w.lo.gt %vm3,%v1
	vmrg.w %v0,%s1,%v0,%vm2
	vst %v0,8,%s0
	lea %s0, 2048(%s0)
	lea %s2, 2048(%s2)
	lea %s3, 2048(%s3)
	lea %s34, 512(%s34)
	lea %s37, -512(%s37)
	brlt.w %s34, %s4, .LBB4_2
.LBB4_3:
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end4:
	.size	vmrgw_vsvMl, .Lfunc_end4-vmrgw_vsvMl


	.ident	"clang version 10.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 6d5a1f53f3bc2c20934f740efefbf7240979e5da)"
	.section	".note.GNU-stack","",@progbits