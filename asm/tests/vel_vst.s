	.text
	.file	"vel_vst.cc"
	.globl	_Z9vst_vssmlPvPKvPj
	.p2align	4
	.type	_Z9vst_vssmlPvPKvPj,@function
_Z9vst_vssmlPvPKvPj:
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
	vld %v0, 8, %s1
	vldl.sx %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vst %v0, 8, %s0, %vm1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z9vst_vssmlPvPKvPj, .Lfunc_end0-_Z9vst_vssmlPvPKvPj

	.globl	_Z10vstu_vssmlPvPKvPj
	.p2align	4
	.type	_Z10vstu_vssmlPvPKvPj,@function
_Z10vstu_vssmlPvPKvPj:
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
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	vldl.sx %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vstu %v0, 4, %s0, %vm1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z10vstu_vssmlPvPKvPj, .Lfunc_end1-_Z10vstu_vssmlPvPKvPj

	.globl	_Z10vstl_vssmlPvPKvPj
	.p2align	4
	.type	_Z10vstl_vssmlPvPKvPj,@function
_Z10vstl_vssmlPvPKvPj:
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
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	vldl.sx %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vstl %v0, 4, %s0, %vm1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z10vstl_vssmlPvPKvPj, .Lfunc_end2-_Z10vstl_vssmlPvPKvPj

	.globl	_Z11vstnc_vssmlPvPKvPj
	.p2align	4
	.type	_Z11vstnc_vssmlPvPKvPj,@function
_Z11vstnc_vssmlPvPKvPj:
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
	lea %s3, 256
	lvl %s3
	vld.nc %v0, 8, %s1
	vldl.sx.nc %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vst.nc %v0, 8, %s0, %vm1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z11vstnc_vssmlPvPKvPj, .Lfunc_end3-_Z11vstnc_vssmlPvPKvPj

	.globl	_Z12vstunc_vssmlPvPKvPj
	.p2align	4
	.type	_Z12vstunc_vssmlPvPKvPj,@function
_Z12vstunc_vssmlPvPKvPj:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB4_2
	ld %s61, 24(, %s14)
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
	vldu.nc %v0, 4, %s1
	vldl.sx.nc %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vstu.nc %v0, 4, %s0, %vm1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end4:
	.size	_Z12vstunc_vssmlPvPKvPj, .Lfunc_end4-_Z12vstunc_vssmlPvPKvPj

	.globl	_Z12vstlnc_vssmlPvPKvPj
	.p2align	4
	.type	_Z12vstlnc_vssmlPvPKvPj,@function
_Z12vstlnc_vssmlPvPKvPj:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l.t %s11, %s8, .LBB5_2
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB5_2:
	lea %s3, 256
	lvl %s3
	vldl.sx.nc %v0, 4, %s1
	vldl.sx.nc %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vstl.nc %v0, 4, %s0, %vm1
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end5:
	.size	_Z12vstlnc_vssmlPvPKvPj, .Lfunc_end5-_Z12vstlnc_vssmlPvPKvPj

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git a0d000a8b9fc77dccd0c2af6986053df77759a6e)"
	.section	".note.GNU-stack","",@progbits
