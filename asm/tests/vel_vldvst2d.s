	.text
	.file	"vel_vldvst2d.cc"
	.globl	_Z9vel_vld2dPdmPKv              # -- Begin function _Z9vel_vld2dPdmPKv
	.p2align	4
	.type	_Z9vel_vld2dPdmPKv,@function
_Z9vel_vld2dPdmPKv:                     # @_Z9vel_vld2dPdmPKv
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld2d %v0, %s1, %s2
	vst %v0, 8, %s0
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z9vel_vld2dPdmPKv, .Lfunc_end0-_Z9vel_vld2dPdmPKv
                                        # -- End function
	.globl	_Z9vel_vst2dPdmPv               # -- Begin function _Z9vel_vst2dPdmPv
	.p2align	4
	.type	_Z9vel_vst2dPdmPv,@function
_Z9vel_vst2dPdmPv:                      # @_Z9vel_vst2dPdmPv
# %bb.0:
	lea %s3, 256
	lvl %s3
	vld %v0, 8, %s0
	vst2d %v0, %s1, %s2
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z9vel_vst2dPdmPv, .Lfunc_end1-_Z9vel_vst2dPdmPv
                                        # -- End function
	.globl	_Z15vel_vst2d_vssmlPdmPvPj      # -- Begin function _Z15vel_vst2d_vssmlPdmPvPj
	.p2align	4
	.type	_Z15vel_vst2d_vssmlPdmPvPj,@function
_Z15vel_vst2d_vssmlPdmPvPj:             # @_Z15vel_vst2d_vssmlPdmPvPj
# %bb.0:
	lea %s4, 256
	lvl %s4
	vld %v0, 8, %s0
	vldl.sx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vst2d %v0, %s1, %s2, %vm1
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z15vel_vst2d_vssmlPdmPvPj, .Lfunc_end2-_Z15vel_vst2d_vssmlPdmPvPj
                                        # -- End function
	.globl	_Z10vel_vldu2dPfmPKv            # -- Begin function _Z10vel_vldu2dPfmPKv
	.p2align	4
	.type	_Z10vel_vldu2dPfmPKv,@function
_Z10vel_vldu2dPfmPKv:                   # @_Z10vel_vldu2dPfmPKv
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu2d %v0, %s1, %s2
	vstu %v0, 4, %s0
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z10vel_vldu2dPfmPKv, .Lfunc_end3-_Z10vel_vldu2dPfmPKv
                                        # -- End function
	.globl	_Z10vel_vstu2dPfmPv             # -- Begin function _Z10vel_vstu2dPfmPv
	.p2align	4
	.type	_Z10vel_vstu2dPfmPv,@function
_Z10vel_vstu2dPfmPv:                    # @_Z10vel_vstu2dPfmPv
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldu %v0, 4, %s0
	vstu2d %v0, %s1, %s2
	b.l.t (, %s10)
.Lfunc_end4:
	.size	_Z10vel_vstu2dPfmPv, .Lfunc_end4-_Z10vel_vstu2dPfmPv
                                        # -- End function
	.globl	_Z16vel_vstu2d_vssmlPfmPvPj     # -- Begin function _Z16vel_vstu2d_vssmlPfmPvPj
	.p2align	4
	.type	_Z16vel_vstu2d_vssmlPfmPvPj,@function
_Z16vel_vstu2d_vssmlPfmPvPj:            # @_Z16vel_vstu2d_vssmlPfmPvPj
# %bb.0:
	lea %s4, 256
	lvl %s4
	vldu %v0, 4, %s0
	vldl.sx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vstu2d %v0, %s1, %s2, %vm1
	b.l.t (, %s10)
.Lfunc_end5:
	.size	_Z16vel_vstu2d_vssmlPfmPvPj, .Lfunc_end5-_Z16vel_vstu2d_vssmlPfmPvPj
                                        # -- End function
	.globl	_Z12vel_vldl2dsxPlmPKv          # -- Begin function _Z12vel_vldl2dsxPlmPKv
	.p2align	4
	.type	_Z12vel_vldl2dsxPlmPKv,@function
_Z12vel_vldl2dsxPlmPKv:                 # @_Z12vel_vldl2dsxPlmPKv
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl2d.sx %v0, %s1, %s2
	vst %v0, 8, %s0
	b.l.t (, %s10)
.Lfunc_end6:
	.size	_Z12vel_vldl2dsxPlmPKv, .Lfunc_end6-_Z12vel_vldl2dsxPlmPKv
                                        # -- End function
	.globl	_Z12vel_vldl2dzxPmmPKv          # -- Begin function _Z12vel_vldl2dzxPmmPKv
	.p2align	4
	.type	_Z12vel_vldl2dzxPmmPKv,@function
_Z12vel_vldl2dzxPmmPKv:                 # @_Z12vel_vldl2dzxPmmPKv
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl2d.zx %v0, %s1, %s2
	vst %v0, 8, %s0
	b.l.t (, %s10)
.Lfunc_end7:
	.size	_Z12vel_vldl2dzxPmmPKv, .Lfunc_end7-_Z12vel_vldl2dzxPmmPKv
                                        # -- End function
	.globl	_Z10vel_vstl2dPimPv             # -- Begin function _Z10vel_vstl2dPimPv
	.p2align	4
	.type	_Z10vel_vstl2dPimPv,@function
_Z10vel_vstl2dPimPv:                    # @_Z10vel_vstl2dPimPv
# %bb.0:
	lea %s3, 256
	lvl %s3
	vldl.sx %v0, 4, %s0
	vstl2d %v0, %s1, %s2
	b.l.t (, %s10)
.Lfunc_end8:
	.size	_Z10vel_vstl2dPimPv, .Lfunc_end8-_Z10vel_vstl2dPimPv
                                        # -- End function
	.globl	_Z16vel_vstl2d_vssmlPimPvPj     # -- Begin function _Z16vel_vstl2d_vssmlPimPvPj
	.p2align	4
	.type	_Z16vel_vstl2d_vssmlPimPvPj,@function
_Z16vel_vstl2d_vssmlPimPvPj:            # @_Z16vel_vstl2d_vssmlPimPvPj
# %bb.0:
	lea %s4, 256
	lvl %s4
	vldl.sx %v0, 4, %s0
	vldl.sx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vstl2d %v0, %s1, %s2, %vm1
	b.l.t (, %s10)
.Lfunc_end9:
	.size	_Z16vel_vstl2d_vssmlPimPvPj, .Lfunc_end9-_Z16vel_vstl2d_vssmlPimPvPj
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git abc0611048916f1be3a5a11282325b09a6c4d450)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
