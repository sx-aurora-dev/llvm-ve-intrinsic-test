	.text
	.file	"pvfnmad_vvvvMvl.c"
	.globl	pvfnmad_vvvvMvl                 # -- Begin function pvfnmad_vvvvMvl
	.p2align	4
	.type	pvfnmad_vvvvMvl,@function
pvfnmad_vvvvMvl:                        # @pvfnmad_vvvvMvl
# %bb.0:
	brgt.w 1, %s6, .LBB0_7
# %bb.1:
	or %s7, 0, (0)1
	lea %s34, 512
	lea %s35, 1024
	lea %s36, 1536
	lea %s37, -1536
	lea %s38, 2048
	lea %s39, 2560
	lea %s40, -2560
	or %s41, 0, %s6
	or %s42, 0, (0)1
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s43, %s41, 1
	cmps.w.sx %s44, %s41, %s34
	lea %s49, 256
	cmov.w.lt %s49, %s43, %s44
	adds.l %s43, %s1, %s7
	lvl %s49
	vld %v0, 8, %s43
	adds.l %s44, %s2, %s7
	vld %v1, 8, %s44
	adds.l %s45, %s3, %s7
	vld %v2, 8, %s45
	adds.l %s46, %s4, %s7
	vld %v3, 8, %s46
	adds.l %s47, %s5, %s7
	vld %v4, 8, %s47
	pvfmk.w.up.gt %vm2, %v3
	vfmk.w.gt %vm3, %v3
	pvfnmad %v4, %v0, %v1, %v2, %vm2
	adds.l %s48, %s0, %s7
	adds.w.sx %s50, %s42, %s34
	vst %v4, 8, %s48
	brge.w %s50, %s6, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s49, %s41, (55)1
	sra.w.sx %s50, %s49, 1
	cmps.w.sx %s49, %s49, %s34
	lea %s51, 256
	cmov.w.lt %s51, %s50, %s49
	lea %s43, 2048(, %s43)
	lvl %s51
	vld %v0, 8, %s43
	lea %s44, 2048(, %s44)
	vld %v1, 8, %s44
	lea %s45, 2048(, %s45)
	vld %v2, 8, %s45
	lea %s46, 2048(, %s46)
	vld %v3, 8, %s46
	lea %s47, 2048(, %s47)
	vld %v4, 8, %s47
	pvfmk.w.up.gt %vm2, %v3
	vfmk.w.gt %vm3, %v3
	pvfnmad %v4, %v0, %v1, %v2, %vm2
	lea %s48, 2048(, %s48)
	adds.w.sx %s49, %s42, %s35
	vst %v4, 8, %s48
	brge.w %s49, %s6, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s49, %s41, (54)1
	sra.w.sx %s50, %s49, 1
	cmps.w.sx %s49, %s49, %s34
	lea %s51, 256
	cmov.w.lt %s51, %s50, %s49
	lea %s43, 2048(, %s43)
	lvl %s51
	vld %v0, 8, %s43
	lea %s44, 2048(, %s44)
	vld %v1, 8, %s44
	lea %s45, 2048(, %s45)
	vld %v2, 8, %s45
	lea %s46, 2048(, %s46)
	vld %v3, 8, %s46
	lea %s47, 2048(, %s47)
	vld %v4, 8, %s47
	pvfmk.w.up.gt %vm2, %v3
	vfmk.w.gt %vm3, %v3
	pvfnmad %v4, %v0, %v1, %v2, %vm2
	lea %s48, 2048(, %s48)
	adds.w.sx %s49, %s42, %s36
	vst %v4, 8, %s48
	brge.w %s49, %s6, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s49, %s41, %s37
	sra.w.sx %s50, %s49, 1
	cmps.w.sx %s49, %s49, %s34
	lea %s51, 256
	cmov.w.lt %s51, %s50, %s49
	lea %s43, 2048(, %s43)
	lvl %s51
	vld %v0, 8, %s43
	lea %s44, 2048(, %s44)
	vld %v1, 8, %s44
	lea %s45, 2048(, %s45)
	vld %v2, 8, %s45
	lea %s46, 2048(, %s46)
	vld %v3, 8, %s46
	lea %s47, 2048(, %s47)
	vld %v4, 8, %s47
	pvfmk.w.up.gt %vm2, %v3
	vfmk.w.gt %vm3, %v3
	pvfnmad %v4, %v0, %v1, %v2, %vm2
	lea %s48, 2048(, %s48)
	adds.w.sx %s49, %s42, %s38
	vst %v4, 8, %s48
	brge.w %s49, %s6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s49, %s41, (53)1
	sra.w.sx %s50, %s49, 1
	cmps.w.sx %s49, %s49, %s34
	lea %s51, 256
	cmov.w.lt %s51, %s50, %s49
	lea %s43, 2048(, %s43)
	lvl %s51
	vld %v0, 8, %s43
	lea %s43, 2048(, %s44)
	vld %v1, 8, %s43
	lea %s43, 2048(, %s45)
	vld %v2, 8, %s43
	lea %s43, 2048(, %s46)
	vld %v3, 8, %s43
	lea %s43, 2048(, %s47)
	vld %v4, 8, %s43
	pvfmk.w.up.gt %vm2, %v3
	vfmk.w.gt %vm3, %v3
	pvfnmad %v4, %v0, %v1, %v2, %vm2
	lea %s43, 2048(, %s48)
	vst %v4, 8, %s43
	adds.w.sx %s42, %s42, %s39
	lea %s7, 10240(, %s7)
	adds.w.sx %s41, %s41, %s40
	brlt.w %s42, %s6, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	pvfnmad_vvvvMvl, .Lfunc_end0-pvfnmad_vvvvMvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
