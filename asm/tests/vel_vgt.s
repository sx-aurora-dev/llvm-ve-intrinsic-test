	.text
	.file	"vel_vgt.cc"
	.globl	_Z10vel_vgt_vvPvS_Pm
	.p2align	4
	.type	_Z10vel_vgt_vvPvS_Pm,@function
_Z10vel_vgt_vvPvS_Pm:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vsfa %v0,%v0,3,%s1
	vgt %v0,%v0,0,0
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z10vel_vgt_vvPvS_Pm, .Lfunc_end0-_Z10vel_vgt_vvPvS_Pm

	.globl	_Z11vel_vgt_vvmPvS_PmPj
	.p2align	4
	.type	_Z11vel_vgt_vvmPvS_PmPj,@function
_Z11vel_vgt_vvmPvS_PmPj:
	lea %s4, 256
	lvl %s4
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vsfa %v0,%v0,3,%s1
	vfmk.w.gt %vm1,%v1
	vgt %v0,%v0,0,0,%vm1
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z11vel_vgt_vvmPvS_PmPj, .Lfunc_end1-_Z11vel_vgt_vvmPvS_PmPj

	.globl	_Z11vel_vgtu_vvPvS_Pm
	.p2align	4
	.type	_Z11vel_vgtu_vvPvS_Pm,@function
_Z11vel_vgtu_vvPvS_Pm:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vsfa %v0,%v0,2,%s1
	vgtu %v0,%v0,0,0
	vstu %v0,4,%s0
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z11vel_vgtu_vvPvS_Pm, .Lfunc_end2-_Z11vel_vgtu_vvPvS_Pm

	.globl	_Z12vel_vgtu_vvmPvS_PmPj
	.p2align	4
	.type	_Z12vel_vgtu_vvmPvS_PmPj,@function
_Z12vel_vgtu_vvmPvS_PmPj:
	lea %s4, 256
	lvl %s4
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vsfa %v0,%v0,2,%s1
	vfmk.w.gt %vm1,%v1
	vgtu %v0,%v0,0,0,%vm1
	vstu %v0,4,%s0
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z12vel_vgtu_vvmPvS_PmPj, .Lfunc_end3-_Z12vel_vgtu_vvmPvS_PmPj

	.globl	_Z13vel_vgtlsx_vvPvS_Pm
	.p2align	4
	.type	_Z13vel_vgtlsx_vvPvS_Pm,@function
_Z13vel_vgtlsx_vvPvS_Pm:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vsfa %v0,%v0,2,%s1
	vgtl.sx %v0,%v0,0,0
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end4:
	.size	_Z13vel_vgtlsx_vvPvS_Pm, .Lfunc_end4-_Z13vel_vgtlsx_vvPvS_Pm

	.globl	_Z14vel_vgtlsx_vvmPvS_PmPj
	.p2align	4
	.type	_Z14vel_vgtlsx_vvmPvS_PmPj,@function
_Z14vel_vgtlsx_vvmPvS_PmPj:
	lea %s4, 256
	lvl %s4
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vsfa %v0,%v0,2,%s1
	vfmk.w.gt %vm1,%v1
	vgtl.sx %v0,%v0,0,0,%vm1
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end5:
	.size	_Z14vel_vgtlsx_vvmPvS_PmPj, .Lfunc_end5-_Z14vel_vgtlsx_vvmPvS_PmPj

	.globl	_Z13vel_vgtlzx_vvPvS_Pm
	.p2align	4
	.type	_Z13vel_vgtlzx_vvPvS_Pm,@function
_Z13vel_vgtlzx_vvPvS_Pm:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vsfa %v0,%v0,2,%s1
	vgtl.zx %v0,%v0,0,0
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end6:
	.size	_Z13vel_vgtlzx_vvPvS_Pm, .Lfunc_end6-_Z13vel_vgtlzx_vvPvS_Pm

	.globl	_Z14vel_vgtlzx_vvmPvS_PmPj
	.p2align	4
	.type	_Z14vel_vgtlzx_vvmPvS_PmPj,@function
_Z14vel_vgtlzx_vvmPvS_PmPj:
	lea %s4, 256
	lvl %s4
	vld %v0,8,%s2
	vldl.zx %v1,4,%s3
	vsfa %v0,%v0,2,%s1
	vfmk.w.gt %vm1,%v1
	vgtl.zx %v0,%v0,0,0,%vm1
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end7:
	.size	_Z14vel_vgtlzx_vvmPvS_PmPj, .Lfunc_end7-_Z14vel_vgtlzx_vvmPvS_PmPj

	.globl	_Z12vel_vgtnc_vvPvS_Pm
	.p2align	4
	.type	_Z12vel_vgtnc_vvPvS_Pm,@function
_Z12vel_vgtnc_vvPvS_Pm:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vsfa %v0,%v0,3,%s1
	vgt.nc %v0,%v0,0,0
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end8:
	.size	_Z12vel_vgtnc_vvPvS_Pm, .Lfunc_end8-_Z12vel_vgtnc_vvPvS_Pm

	.globl	_Z13vel_vgtunc_vvPvS_Pm
	.p2align	4
	.type	_Z13vel_vgtunc_vvPvS_Pm,@function
_Z13vel_vgtunc_vvPvS_Pm:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vsfa %v0,%v0,2,%s1
	vgtu.nc %v0,%v0,0,0
	vstu %v0,4,%s0
	b.l.t (, %s10)
.Lfunc_end9:
	.size	_Z13vel_vgtunc_vvPvS_Pm, .Lfunc_end9-_Z13vel_vgtunc_vvPvS_Pm

	.globl	_Z15vel_vgtlsxnc_vvPvS_Pm
	.p2align	4
	.type	_Z15vel_vgtlsxnc_vvPvS_Pm,@function
_Z15vel_vgtlsxnc_vvPvS_Pm:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vsfa %v0,%v0,2,%s1
	vgtl.sx.nc %v0,%v0,0,0
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end10:
	.size	_Z15vel_vgtlsxnc_vvPvS_Pm, .Lfunc_end10-_Z15vel_vgtlsxnc_vvPvS_Pm

	.globl	_Z15vel_vgtlzxnc_vvPvS_Pm
	.p2align	4
	.type	_Z15vel_vgtlzxnc_vvPvS_Pm,@function
_Z15vel_vgtlzxnc_vvPvS_Pm:
	lea %s3, 256
	lvl %s3
	vld %v0,8,%s2
	vsfa %v0,%v0,2,%s1
	vgtl.zx.nc %v0,%v0,0,0
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end11:
	.size	_Z15vel_vgtlzxnc_vvPvS_Pm, .Lfunc_end11-_Z15vel_vgtlzxnc_vvPvS_Pm

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
