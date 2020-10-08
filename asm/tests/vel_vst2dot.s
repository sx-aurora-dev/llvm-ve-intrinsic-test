	.text
	.file	"vel_vst2dot.cc"
	.globl	_Z15vel_vst2dot_vssPKdmPvPd     # -- Begin function _Z15vel_vst2dot_vssPKdmPvPd
	.p2align	4
	.type	_Z15vel_vst2dot_vssPKdmPvPd,@function
_Z15vel_vst2dot_vssPKdmPvPd:            # @_Z15vel_vst2dot_vssPKdmPvPd
# %bb.0:
	lea %s4, 256
	lvl %s4
	vld %v0, 8, %s0
	vst2d.ot %v0, %s1, %s2
	svob
	vld2d %v0, %s1, %s2
	vst %v0, 8, %s3
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z15vel_vst2dot_vssPKdmPvPd, .Lfunc_end0-_Z15vel_vst2dot_vssPKdmPvPd
                                        # -- End function
	.globl	_Z16vel_vstu2dot_vssPKfmPvPf    # -- Begin function _Z16vel_vstu2dot_vssPKfmPvPf
	.p2align	4
	.type	_Z16vel_vstu2dot_vssPKfmPvPf,@function
_Z16vel_vstu2dot_vssPKfmPvPf:           # @_Z16vel_vstu2dot_vssPKfmPvPf
# %bb.0:
	lea %s4, 256
	lvl %s4
	vldu %v0, 4, %s0
	vstu2d.ot %v0, %s1, %s2
	svob
	vldu2d %v0, %s1, %s2
	vstu %v0, 4, %s3
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z16vel_vstu2dot_vssPKfmPvPf, .Lfunc_end1-_Z16vel_vstu2dot_vssPKfmPvPf
                                        # -- End function
	.globl	_Z16vel_vstl2dot_vssPKimPvPi    # -- Begin function _Z16vel_vstl2dot_vssPKimPvPi
	.p2align	4
	.type	_Z16vel_vstl2dot_vssPKimPvPi,@function
_Z16vel_vstl2dot_vssPKimPvPi:           # @_Z16vel_vstl2dot_vssPKimPvPi
# %bb.0:
	lea %s4, 256
	lvl %s4
	vldl.sx %v0, 4, %s0
	vstl2d.ot %v0, %s1, %s2
	svob
	vldl2d.sx %v0, %s1, %s2
	vstl %v0, 4, %s3
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z16vel_vstl2dot_vssPKimPvPi, .Lfunc_end2-_Z16vel_vstl2dot_vssPKimPvPi
                                        # -- End function
	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git bf7303a9872881ebd21fb1958340e7d774f9887b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
