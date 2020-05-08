	.text
	.file	"vel_vmv.cc"
	.globl	_Z3vmvPmPKmi
	.p2align	4
	.type	_Z3vmvPmPKmi,@function
_Z3vmvPmPKmi:
.L_Z3vmvPmPKmi$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB0_2
	ld %s61, 24(, %s14)
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
	vld %v0,8,%s1
	vmv %v0,%s2,%v0
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %lr)
.Lfunc_end0:
	.size	_Z3vmvPmPKmi, .Lfunc_end0-_Z3vmvPmPKmi

	.globl	_Z5vmv_iPmPKmi
	.p2align	4
	.type	_Z5vmv_iPmPKmi,@function
_Z5vmv_iPmPKmi:
.L_Z5vmv_iPmPKmi$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB1_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vmv %v0,3,%v0
	vst %v0,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %lr)
.Lfunc_end1:
	.size	_Z5vmv_iPmPKmi, .Lfunc_end1-_Z5vmv_iPmPKmi

	.globl	_Z10vmv_vsvmvlPmPKmiPj
	.p2align	4
	.type	_Z10vmv_vsvmvlPmPKmiPj,@function
_Z10vmv_vsvmvlPmPKmiPj:
.L_Z10vmv_vsvmvlPmPKmiPj$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB2_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB2_2:
	lea %s4, 256
	lvl %s4
	vld %v0,8,%s1
	vldl.sx %v1,4,%s3
	vld %v2,8,%s0
	vfmk.w.gt %vm1,%v1
	vmv %v2,%s2,%v0,%vm1
	vst %v2,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %lr)
.Lfunc_end2:
	.size	_Z10vmv_vsvmvlPmPKmiPj, .Lfunc_end2-_Z10vmv_vsvmvlPmPKmiPj

	.globl	_Z12vmv_vsvmvl_iPmPKmiPj
	.p2align	4
	.type	_Z12vmv_vsvmvl_iPmPKmiPj,@function
_Z12vmv_vsvmvl_iPmPKmiPj:
.L_Z12vmv_vsvmvl_iPmPKmiPj$local:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB3_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB3_2:
	lea %s2, 256
	lvl %s2
	vld %v0,8,%s1
	vldl.sx %v1,4,%s3
	vld %v2,8,%s0
	vfmk.w.gt %vm1,%v1
	vmv %v2,3,%v0,%vm1
	vst %v2,8,%s0
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %lr)
.Lfunc_end3:
	.size	_Z12vmv_vsvmvl_iPmPKmiPj, .Lfunc_end3-_Z12vmv_vsvmvl_iPmPKmiPj

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 3ee59c4ec1dea5a868c036e02054711cdaaf86f6)"
	.section	".note.GNU-stack","",@progbits
