	.text
	.file	"vgt.cc"
	.globl	_Z6vgt_vvPvS_Pm
	.p2align	4
	.type	_Z6vgt_vvPvS_Pm,@function
_Z6vgt_vvPvS_Pm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB0_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s2
	vsfa %v0,%v0,3,%s1
	vgt %v0,%v0,0,0
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end0:
	.size	_Z6vgt_vvPvS_Pm, .Lfunc_end0-_Z6vgt_vvPvS_Pm

	.globl	_Z7vgt_vvmPvS_PmPj
	.p2align	4
	.type	_Z7vgt_vvmPvS_PmPj,@function
_Z7vgt_vvmPvS_PmPj:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB1_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vsfa %v0,%v0,3,%s1
	vfmk.w.gt %vm1,%v1
	vgt %v0,%v0,0,0,%vm1
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end1:
	.size	_Z7vgt_vvmPvS_PmPj, .Lfunc_end1-_Z7vgt_vvmPvS_PmPj

	.globl	_Z7vgtu_vvPvS_Pm
	.p2align	4
	.type	_Z7vgtu_vvPvS_Pm,@function
_Z7vgtu_vvPvS_Pm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB2_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB2_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s2
	vsfa %v0,%v0,2,%s1
	vgtu %v0,%v0,0,0
	vstu %v0,4,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end2:
	.size	_Z7vgtu_vvPvS_Pm, .Lfunc_end2-_Z7vgtu_vvPvS_Pm

	.globl	_Z8vgtu_vvmPvS_PmPj
	.p2align	4
	.type	_Z8vgtu_vvmPvS_PmPj,@function
_Z8vgtu_vvmPvS_PmPj:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB3_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB3_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vsfa %v0,%v0,2,%s1
	vfmk.w.gt %vm1,%v1
	vgtu %v0,%v0,0,0,%vm1
	vstu %v0,4,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end3:
	.size	_Z8vgtu_vvmPvS_PmPj, .Lfunc_end3-_Z8vgtu_vvmPvS_PmPj

	.globl	_Z9vgtlsx_vvPvS_Pm
	.p2align	4
	.type	_Z9vgtlsx_vvPvS_Pm,@function
_Z9vgtlsx_vvPvS_Pm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB4_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB4_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s2
	vsfa %v0,%v0,2,%s1
	vgtl.sx %v0,%v0,0,0
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end4:
	.size	_Z9vgtlsx_vvPvS_Pm, .Lfunc_end4-_Z9vgtlsx_vvPvS_Pm

	.globl	_Z10vgtlsx_vvmPvS_PmPj
	.p2align	4
	.type	_Z10vgtlsx_vvmPvS_PmPj,@function
_Z10vgtlsx_vvmPvS_PmPj:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB5_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB5_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vsfa %v0,%v0,2,%s1
	vfmk.w.gt %vm1,%v1
	vgtl.sx %v0,%v0,0,0,%vm1
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end5:
	.size	_Z10vgtlsx_vvmPvS_PmPj, .Lfunc_end5-_Z10vgtlsx_vvmPvS_PmPj

	.globl	_Z9vgtlzx_vvPvS_Pm
	.p2align	4
	.type	_Z9vgtlzx_vvPvS_Pm,@function
_Z9vgtlzx_vvPvS_Pm:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB6_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB6_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s2
	vsfa %v0,%v0,2,%s1
	vgtl.zx %v0,%v0,0,0
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end6:
	.size	_Z9vgtlzx_vvPvS_Pm, .Lfunc_end6-_Z9vgtlzx_vvPvS_Pm

	.globl	_Z10vgtlzx_vvmPvS_PmPj
	.p2align	4
	.type	_Z10vgtlzx_vvmPvS_PmPj,@function
_Z10vgtlzx_vvmPvS_PmPj:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -192
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB7_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB7_2:
	lea %s34, 256
	lvl %s34
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vsfa %v0,%v0,2,%s1
	vfmk.w.gt %vm1,%v1
	vgtl.zx %v0,%v0,0,0,%vm1
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end7:
	.size	_Z10vgtlzx_vvmPvS_PmPj, .Lfunc_end7-_Z10vgtlzx_vvmPvS_PmPj


	.ident	"clang version 8.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/clang.git 8e16801da204ac44c4df8028a193662a1587c87d) (llvm/llvm.git 1cbf64640109a61d9693807320042b182d0abbfb)"
	.section	".note.GNU-stack","",@progbits
