	.text
	.file	"vel_vgt.cc"
	.globl	_Z10vel_vgt_vvPvS_Pm
	.p2align	4
	.type	_Z10vel_vgt_vvPvS_Pm,@function
_Z10vel_vgt_vvPvS_Pm:
.L_Z10vel_vgt_vvPvS_Pm$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
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
	lea %s3, 256
	lvl %s3
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
	.size	_Z10vel_vgt_vvPvS_Pm, .Lfunc_end0-_Z10vel_vgt_vvPvS_Pm

	.globl	_Z11vel_vgt_vvmPvS_PmPj
	.p2align	4
	.type	_Z11vel_vgt_vvmPvS_PmPj,@function
_Z11vel_vgt_vvmPvS_PmPj:
.L_Z11vel_vgt_vvmPvS_PmPj$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
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
	lea %s4, 256
	lvl %s4
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
	.size	_Z11vel_vgt_vvmPvS_PmPj, .Lfunc_end1-_Z11vel_vgt_vvmPvS_PmPj

	.globl	_Z11vel_vgtu_vvPvS_Pm
	.p2align	4
	.type	_Z11vel_vgtu_vvPvS_Pm,@function
_Z11vel_vgtu_vvPvS_Pm:
.L_Z11vel_vgtu_vvPvS_Pm$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
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
	lea %s3, 256
	lvl %s3
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
	.size	_Z11vel_vgtu_vvPvS_Pm, .Lfunc_end2-_Z11vel_vgtu_vvPvS_Pm

	.globl	_Z12vel_vgtu_vvmPvS_PmPj
	.p2align	4
	.type	_Z12vel_vgtu_vvmPvS_PmPj,@function
_Z12vel_vgtu_vvmPvS_PmPj:
.L_Z12vel_vgtu_vvmPvS_PmPj$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
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
	lea %s4, 256
	lvl %s4
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
	.size	_Z12vel_vgtu_vvmPvS_PmPj, .Lfunc_end3-_Z12vel_vgtu_vvmPvS_PmPj

	.globl	_Z13vel_vgtlsx_vvPvS_Pm
	.p2align	4
	.type	_Z13vel_vgtlsx_vvPvS_Pm,@function
_Z13vel_vgtlsx_vvPvS_Pm:
.L_Z13vel_vgtlsx_vvPvS_Pm$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
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
	lea %s3, 256
	lvl %s3
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
	.size	_Z13vel_vgtlsx_vvPvS_Pm, .Lfunc_end4-_Z13vel_vgtlsx_vvPvS_Pm

	.globl	_Z14vel_vgtlsx_vvmPvS_PmPj
	.p2align	4
	.type	_Z14vel_vgtlsx_vvmPvS_PmPj,@function
_Z14vel_vgtlsx_vvmPvS_PmPj:
.L_Z14vel_vgtlsx_vvmPvS_PmPj$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
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
	lea %s4, 256
	lvl %s4
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
	.size	_Z14vel_vgtlsx_vvmPvS_PmPj, .Lfunc_end5-_Z14vel_vgtlsx_vvmPvS_PmPj

	.globl	_Z13vel_vgtlzx_vvPvS_Pm
	.p2align	4
	.type	_Z13vel_vgtlzx_vvPvS_Pm,@function
_Z13vel_vgtlzx_vvPvS_Pm:
.L_Z13vel_vgtlzx_vvPvS_Pm$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
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
	lea %s3, 256
	lvl %s3
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
	.size	_Z13vel_vgtlzx_vvPvS_Pm, .Lfunc_end6-_Z13vel_vgtlzx_vvPvS_Pm

	.globl	_Z14vel_vgtlzx_vvmPvS_PmPj
	.p2align	4
	.type	_Z14vel_vgtlzx_vvmPvS_PmPj,@function
_Z14vel_vgtlzx_vvmPvS_PmPj:
.L_Z14vel_vgtlzx_vvmPvS_PmPj$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
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
	lea %s4, 256
	lvl %s4
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
	.size	_Z14vel_vgtlzx_vvmPvS_PmPj, .Lfunc_end7-_Z14vel_vgtlzx_vvmPvS_PmPj

	.globl	_Z12vel_vgtnc_vvPvS_Pm
	.p2align	4
	.type	_Z12vel_vgtnc_vvPvS_Pm,@function
_Z12vel_vgtnc_vvPvS_Pm:
.L_Z12vel_vgtnc_vvPvS_Pm$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB8_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB8_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vsfa %v0,%v0,3,%s1
	vgt.nc %v0,%v0,0,0
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end8:
	.size	_Z12vel_vgtnc_vvPvS_Pm, .Lfunc_end8-_Z12vel_vgtnc_vvPvS_Pm

	.globl	_Z13vel_vgtunc_vvPvS_Pm
	.p2align	4
	.type	_Z13vel_vgtunc_vvPvS_Pm,@function
_Z13vel_vgtunc_vvPvS_Pm:
.L_Z13vel_vgtunc_vvPvS_Pm$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB9_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB9_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vsfa %v0,%v0,2,%s1
	vgtu.nc %v0,%v0,0,0
	vstu %v0,4,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end9:
	.size	_Z13vel_vgtunc_vvPvS_Pm, .Lfunc_end9-_Z13vel_vgtunc_vvPvS_Pm

	.globl	_Z15vel_vgtlsxnc_vvPvS_Pm
	.p2align	4
	.type	_Z15vel_vgtlsxnc_vvPvS_Pm,@function
_Z15vel_vgtlsxnc_vvPvS_Pm:
.L_Z15vel_vgtlsxnc_vvPvS_Pm$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB10_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB10_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vsfa %v0,%v0,2,%s1
	vgtl.sx.nc %v0,%v0,0,0
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end10:
	.size	_Z15vel_vgtlsxnc_vvPvS_Pm, .Lfunc_end10-_Z15vel_vgtlsxnc_vvPvS_Pm

	.globl	_Z15vel_vgtlzxnc_vvPvS_Pm
	.p2align	4
	.type	_Z15vel_vgtlzxnc_vvPvS_Pm,@function
_Z15vel_vgtlzxnc_vvPvS_Pm:
.L_Z15vel_vgtlzxnc_vvPvS_Pm$local:
	st %s9, (,%s11)
	st %s10, 8(,%s11)
	st %s15, 24(,%s11)
	st %s16, 32(,%s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s11, %s13)
	brge.l %s11, %s8, .LBB11_2
	ld %s61, 24(,%s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB11_2:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vsfa %v0,%v0,2,%s1
	vgtl.zx.nc %v0,%v0,0,0
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(,%s11)
	ld %s15, 24(,%s11)
	ld %s10, 8(,%s11)
	ld %s9, (,%s11)
	b.l (,%lr)
.Lfunc_end11:
	.size	_Z15vel_vgtlzxnc_vvPvS_Pm, .Lfunc_end11-_Z15vel_vgtlzxnc_vvPvS_Pm

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 7a685b51bd790cc7255f609e2d5b66386cf4c768)"
	.section	".note.GNU-stack","",@progbits
