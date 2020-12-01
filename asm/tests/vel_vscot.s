	.text
	.file	"vel_vscot.cc"
	.globl	_Z12vel_vscot_vvPKdPdPKmS1_     # -- Begin function _Z12vel_vscot_vvPKdPdPKmS1_
	.p2align	4
	.type	_Z12vel_vscot_vvPKdPdPKmS1_,@function
_Z12vel_vscot_vvPKdPdPKmS1_:            # @_Z12vel_vscot_vvPKdPdPKmS1_
# %bb.0:
	lea %s4, 256
	lvl %s4
	vld %v0, 8, %s0
	vld %v1, 8, %s2
	vsfa %v1, %v1, 3, %s3
	vsc.ot %v0, %v1, 0, 0
	svob
	vld %v0, 8, %s3
	vst %v0, 8, %s1
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z12vel_vscot_vvPKdPdPKmS1_, .Lfunc_end0-_Z12vel_vscot_vvPKdPdPKmS1_
                                        # -- End function
	.globl	_Z13vel_vscuot_vvPKfPfPKmS1_    # -- Begin function _Z13vel_vscuot_vvPKfPfPKmS1_
	.p2align	4
	.type	_Z13vel_vscuot_vvPKfPfPKmS1_,@function
_Z13vel_vscuot_vvPKfPfPKmS1_:           # @_Z13vel_vscuot_vvPKfPfPKmS1_
# %bb.0:
	lea %s4, 256
	lvl %s4
	vldu %v0, 4, %s0
	vld %v1, 8, %s2
	vsfa %v1, %v1, 2, %s3
	vscu %v0, %v1, 0, 0
	svob
	vldu %v0, 4, %s3
	vstu %v0, 4, %s1
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z13vel_vscuot_vvPKfPfPKmS1_, .Lfunc_end1-_Z13vel_vscuot_vvPKfPfPKmS1_
                                        # -- End function
	.globl	_Z13vel_vsclot_vvPKiPiPKmS1_    # -- Begin function _Z13vel_vsclot_vvPKiPiPKmS1_
	.p2align	4
	.type	_Z13vel_vsclot_vvPKiPiPKmS1_,@function
_Z13vel_vsclot_vvPKiPiPKmS1_:           # @_Z13vel_vsclot_vvPKiPiPKmS1_
# %bb.0:
	lea %s4, 256
	lvl %s4
	vldl.sx %v0, 4, %s0
	vld %v1, 8, %s2
	vsfa %v1, %v1, 2, %s3
	vscl.ot %v0, %v1, 0, 0
	svob
	vldl.sx %v0, 4, %s3
	vstl %v0, 4, %s1
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z13vel_vsclot_vvPKiPiPKmS1_, .Lfunc_end2-_Z13vel_vsclot_vvPKiPiPKmS1_
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bfa3af73d87fd3c1511a0e3f6781abefc7af02a7)"
	.section	".note.GNU-stack","",@progbits
