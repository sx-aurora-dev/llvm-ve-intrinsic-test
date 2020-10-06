	.text
	.file	"vel_vst.cc"
	.globl	_Z9vst_vssmlPvPKvPj
	.p2align	4
	.type	_Z9vst_vssmlPvPKvPj,@function
_Z9vst_vssmlPvPKvPj:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s1
	vldl.sx %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vst %v0, 8, %s0, %vm1
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z9vst_vssmlPvPKvPj, .Lfunc_end0-_Z9vst_vssmlPvPKvPj

	.globl	_Z10vstu_vssmlPvPKvPj
	.p2align	4
	.type	_Z10vstu_vssmlPvPKvPj,@function
_Z10vstu_vssmlPvPKvPj:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s1
	vldl.sx %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vstu %v0, 4, %s0, %vm1
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z10vstu_vssmlPvPKvPj, .Lfunc_end1-_Z10vstu_vssmlPvPKvPj

	.globl	_Z10vstl_vssmlPvPKvPj
	.p2align	4
	.type	_Z10vstl_vssmlPvPKvPj,@function
_Z10vstl_vssmlPvPKvPj:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s1
	vldl.sx %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vstl %v0, 4, %s0, %vm1
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z10vstl_vssmlPvPKvPj, .Lfunc_end2-_Z10vstl_vssmlPvPKvPj

	.globl	_Z11vstnc_vssmlPvPKvPj
	.p2align	4
	.type	_Z11vstnc_vssmlPvPKvPj,@function
_Z11vstnc_vssmlPvPKvPj:
	lea %s3, 256
	lvl %s3
	vld.nc %v0, 8, %s1
	vldl.sx.nc %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vst.nc %v0, 8, %s0, %vm1
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z11vstnc_vssmlPvPKvPj, .Lfunc_end3-_Z11vstnc_vssmlPvPKvPj

	.globl	_Z12vstunc_vssmlPvPKvPj
	.p2align	4
	.type	_Z12vstunc_vssmlPvPKvPj,@function
_Z12vstunc_vssmlPvPKvPj:
	lea %s3, 256
	lvl %s3
	vldu.nc %v0, 4, %s1
	vldl.sx.nc %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vstu.nc %v0, 4, %s0, %vm1
	b.l.t (, %s10)
.Lfunc_end4:
	.size	_Z12vstunc_vssmlPvPKvPj, .Lfunc_end4-_Z12vstunc_vssmlPvPKvPj

	.globl	_Z12vstlnc_vssmlPvPKvPj
	.p2align	4
	.type	_Z12vstlnc_vssmlPvPKvPj,@function
_Z12vstlnc_vssmlPvPKvPj:
	lea %s3, 256
	lvl %s3
	vldl.sx.nc %v0, 4, %s1
	vldl.sx.nc %v1, 4, %s2
	vfmk.w.gt %vm1, %v1
	vstl.nc %v0, 4, %s0, %vm1
	b.l.t (, %s10)
.Lfunc_end5:
	.size	_Z12vstlnc_vssmlPvPKvPj, .Lfunc_end5-_Z12vstlnc_vssmlPvPKvPj

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 9c45d576945a4fddcd08d0c3956139ae53c477e8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
