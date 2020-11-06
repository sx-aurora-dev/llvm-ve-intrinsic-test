	.text
	.file	"vel_vstot.cc"
	.globl	_Z13vel_vstot_vssPKdPdS1_       # -- Begin function _Z13vel_vstot_vssPKdPdS1_
	.p2align	4
	.type	_Z13vel_vstot_vssPKdPdS1_,@function
_Z13vel_vstot_vssPKdPdS1_:              # @_Z13vel_vstot_vssPKdPdS1_
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s0
	vst.ot %v0, 8, %s2
	svob
	vld %v0, 8, %s2
	vst %v0, 8, %s1
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z13vel_vstot_vssPKdPdS1_, .Lfunc_end0-_Z13vel_vstot_vssPKdPdS1_
                                        # -- End function
	.globl	_Z14vel_vstuot_vssPKfPfS1_      # -- Begin function _Z14vel_vstuot_vssPKfPfS1_
	.p2align	4
	.type	_Z14vel_vstuot_vssPKfPfS1_,@function
_Z14vel_vstuot_vssPKfPfS1_:             # @_Z14vel_vstuot_vssPKfPfS1_
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s0
	vstu.ot %v0, 4, %s2
	svob
	vldu %v0, 4, %s2
	vstu %v0, 4, %s1
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z14vel_vstuot_vssPKfPfS1_, .Lfunc_end1-_Z14vel_vstuot_vssPKfPfS1_
                                        # -- End function
	.globl	_Z14vel_vstlot_vssPKiPiS1_      # -- Begin function _Z14vel_vstlot_vssPKiPiS1_
	.p2align	4
	.type	_Z14vel_vstlot_vssPKiPiS1_,@function
_Z14vel_vstlot_vssPKiPiS1_:             # @_Z14vel_vstlot_vssPKiPiS1_
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s0
	vstl.ot %v0, 4, %s2
	svob
	vldl.sx %v0, 4, %s2
	vstl %v0, 4, %s1
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z14vel_vstlot_vssPKiPiS1_, .Lfunc_end2-_Z14vel_vstlot_vssPKiPiS1_
                                        # -- End function
	.globl	_Z15vel_vstncot_vssPKdPdS1_     # -- Begin function _Z15vel_vstncot_vssPKdPdS1_
	.p2align	4
	.type	_Z15vel_vstncot_vssPKdPdS1_,@function
_Z15vel_vstncot_vssPKdPdS1_:            # @_Z15vel_vstncot_vssPKdPdS1_
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s0
	vst.nc.ot %v0, 8, %s2
	svob
	vld %v0, 8, %s2
	vst %v0, 8, %s1
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z15vel_vstncot_vssPKdPdS1_, .Lfunc_end3-_Z15vel_vstncot_vssPKdPdS1_
                                        # -- End function
	.globl	_Z16vel_vstuncot_vssPKfPfS1_    # -- Begin function _Z16vel_vstuncot_vssPKfPfS1_
	.p2align	4
	.type	_Z16vel_vstuncot_vssPKfPfS1_,@function
_Z16vel_vstuncot_vssPKfPfS1_:           # @_Z16vel_vstuncot_vssPKfPfS1_
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s0
	vstu.nc.ot %v0, 4, %s2
	svob
	vldu %v0, 4, %s2
	vstu %v0, 4, %s1
	b.l.t (, %s10)
.Lfunc_end4:
	.size	_Z16vel_vstuncot_vssPKfPfS1_, .Lfunc_end4-_Z16vel_vstuncot_vssPKfPfS1_
                                        # -- End function
	.globl	_Z16vel_vstlncot_vssPKiPiS1_    # -- Begin function _Z16vel_vstlncot_vssPKiPiS1_
	.p2align	4
	.type	_Z16vel_vstlncot_vssPKiPiS1_,@function
_Z16vel_vstlncot_vssPKiPiS1_:           # @_Z16vel_vstlncot_vssPKiPiS1_
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s0
	vstl.nc.ot %v0, 4, %s2
	svob
	vldl.sx %v0, 4, %s2
	vstl %v0, 4, %s1
	b.l.t (, %s10)
.Lfunc_end5:
	.size	_Z16vel_vstlncot_vssPKiPiS1_, .Lfunc_end5-_Z16vel_vstlncot_vssPKiPiS1_
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git abc0611048916f1be3a5a11282325b09a6c4d450)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
