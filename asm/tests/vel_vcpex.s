	.text
	.file	"vel_vcpex.cc"
	.globl	_Z8vcp_vvmvPmPKmS1_
	.p2align	4
	.type	_Z8vcp_vvmvPmPKmS1_,@function
_Z8vcp_vvmvPmPKmS1_:
.L_Z8vcp_vvmvPmPKmS1_$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l %s11, %s8, .LBB0_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
	ld %s3, (, %s2)
	lvm %vm1,0,%s3
	ld %s3, 8(, %s2)
	ld %s4, 16(, %s2)
	ld %s2, 24(, %s2)
	lea %s5, 256
	lvl %s5
	vld %v0,8,%s1
	vld %v1,8,%s0
	lvm %vm1,1,%s3
	lvm %vm1,2,%s4
	lvm %vm1,3,%s2
	vcp %v1,%v0,%vm1
	vst %v1,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end0:
	.size	_Z8vcp_vvmvPmPKmS1_, .Lfunc_end0-_Z8vcp_vvmvPmPKmS1_

	.globl	_Z8vex_vvmvPmPKmS1_
	.p2align	4
	.type	_Z8vex_vvmvPmPKmS1_,@function
_Z8vex_vvmvPmPKmS1_:
.L_Z8vex_vvmvPmPKmS1_$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l %s11, %s8, .LBB1_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_2:
	ld %s3, (, %s2)
	lvm %vm1,0,%s3
	ld %s3, 8(, %s2)
	ld %s4, 16(, %s2)
	ld %s2, 24(, %s2)
	lea %s5, 256
	lvl %s5
	vld %v0,8,%s1
	vld %v1,8,%s0
	lvm %vm1,1,%s3
	lvm %vm1,2,%s4
	lvm %vm1,3,%s2
	vex %v1,%v0,%vm1
	vst %v1,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l (, %lr)
.Lfunc_end1:
	.size	_Z8vex_vvmvPmPKmS1_, .Lfunc_end1-_Z8vex_vvmvPmPKmS1_

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 2b268b318a1e2d4a7d775af703f1004a9c94cb6d)"
	.section	".note.GNU-stack","",@progbits
