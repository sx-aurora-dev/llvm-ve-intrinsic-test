	.text
	.file	"vel_vcpex.cc"
	.globl	_Z8vcp_vvmvPmPKmS1_
	.p2align	4
	.type	_Z8vcp_vvmvPmPKmS1_,@function
_Z8vcp_vvmvPmPKmS1_:
	ld %s3, (, %s2)
	lvm %vm1, 0, %s3
	ld %s3, 8(, %s2)
	ld %s4, 16(, %s2)
	ld %s2, 24(, %s2)
	lea %s5, 256
	lvl %s5
	vld %v0, 8, %s1
	vld %v1, 8, %s0
	lvm %vm1, 1, %s3
	lvm %vm1, 2, %s4
	lvm %vm1, 3, %s2
	vcp %v1, %v0, %vm1
	vst %v1, 8, %s0
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z8vcp_vvmvPmPKmS1_, .Lfunc_end0-_Z8vcp_vvmvPmPKmS1_

	.globl	_Z8vex_vvmvPmPKmS1_
	.p2align	4
	.type	_Z8vex_vvmvPmPKmS1_,@function
_Z8vex_vvmvPmPKmS1_:
	ld %s3, (, %s2)
	lvm %vm1, 0, %s3
	ld %s3, 8(, %s2)
	ld %s4, 16(, %s2)
	ld %s2, 24(, %s2)
	lea %s5, 256
	lvl %s5
	vld %v0, 8, %s1
	vld %v1, 8, %s0
	lvm %vm1, 1, %s3
	lvm %vm1, 2, %s4
	lvm %vm1, 3, %s2
	vex %v1, %v0, %vm1
	vst %v1, 8, %s0
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z8vex_vvmvPmPKmS1_, .Lfunc_end1-_Z8vex_vvmvPmPKmS1_

	.ident	"clang version 12.0.0 (/usr/uhome/aurora/fccg/t-baba/llvm-dev/llvm-project/clang 3fad6478895c162a7bc491cc4b66c08dd4558a03)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
