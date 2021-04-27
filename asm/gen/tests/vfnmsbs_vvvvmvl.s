	.text
	.file	"vfnmsbs_vvvvmvl.c"
	.globl	vfnmsbs_vvvvmvl                 # -- Begin function vfnmsbs_vvvvmvl
	.p2align	4
	.type	vfnmsbs_vvvvmvl,@function
vfnmsbs_vvvvmvl:                        # @vfnmsbs_vvvvmvl
# %bb.0:
	brgt.w 1, %s6, .LBB0_7
# %bb.1:
	or %s7, 0, (0)1
	lea %s34, 256
	lea %s35, 512
	lea %s36, 768
	lea %s37, -768
	lea %s38, 1024
	lea %s39, 1280
	lea %s40, -1280
	or %s41, 0, %s6
	or %s42, 0, (0)1
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s49, %s41, %s34
	adds.l %s44, %s1, %s7
	lvl %s49
	vldu %v0, 4, %s44
	adds.l %s45, %s2, %s7
	vldu %v1, 4, %s45
	adds.l %s46, %s3, %s7
	vldu %v2, 4, %s46
	adds.l %s47, %s4, %s7
	vldl.zx %v3, 4, %s47
	adds.l %s48, %s5, %s7
	vldu %v4, 4, %s48
	vfmk.w.gt %vm1, %v3
	adds.l %s43, %s0, %s7
	vfnmsb.s %v4, %v0, %v1, %v2, %vm1
	adds.w.sx %s50, %s42, %s34
	vstu %v4, 4, %s43
	brge.w %s50, %s6, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s49, %s41, (56)1
	mins.w.sx %s49, %s49, %s34
	lea %s44, 1024(, %s44)
	lvl %s49
	vldu %v0, 4, %s44
	lea %s45, 1024(, %s45)
	vldu %v1, 4, %s45
	lea %s46, 1024(, %s46)
	vldu %v2, 4, %s46
	lea %s47, 1024(, %s47)
	vldl.zx %v3, 4, %s47
	lea %s48, 1024(, %s48)
	vldu %v4, 4, %s48
	vfmk.w.gt %vm1, %v3
	vfnmsb.s %v4, %v0, %v1, %v2, %vm1
	lea %s43, 1024(, %s43)
	adds.w.sx %s50, %s42, %s35
	vstu %v4, 4, %s43
	brge.w %s50, %s6, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s49, %s41, (55)1
	mins.w.sx %s49, %s49, %s34
	lea %s44, 1024(, %s44)
	lvl %s49
	vldu %v0, 4, %s44
	lea %s45, 1024(, %s45)
	vldu %v1, 4, %s45
	lea %s46, 1024(, %s46)
	vldu %v2, 4, %s46
	lea %s47, 1024(, %s47)
	vldl.zx %v3, 4, %s47
	lea %s48, 1024(, %s48)
	vldu %v4, 4, %s48
	vfmk.w.gt %vm1, %v3
	vfnmsb.s %v4, %v0, %v1, %v2, %vm1
	lea %s43, 1024(, %s43)
	adds.w.sx %s50, %s42, %s36
	vstu %v4, 4, %s43
	brge.w %s50, %s6, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s49, %s41, %s37
	mins.w.sx %s49, %s49, %s34
	lea %s44, 1024(, %s44)
	lvl %s49
	vldu %v0, 4, %s44
	lea %s45, 1024(, %s45)
	vldu %v1, 4, %s45
	lea %s46, 1024(, %s46)
	vldu %v2, 4, %s46
	lea %s47, 1024(, %s47)
	vldl.zx %v3, 4, %s47
	lea %s48, 1024(, %s48)
	vldu %v4, 4, %s48
	vfmk.w.gt %vm1, %v3
	vfnmsb.s %v4, %v0, %v1, %v2, %vm1
	lea %s43, 1024(, %s43)
	adds.w.sx %s50, %s42, %s38
	vstu %v4, 4, %s43
	brge.w %s50, %s6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s49, %s41, (54)1
	mins.w.sx %s49, %s49, %s34
	lea %s44, 1024(, %s44)
	lvl %s49
	vldu %v0, 4, %s44
	lea %s44, 1024(, %s45)
	vldu %v1, 4, %s44
	lea %s44, 1024(, %s46)
	vldu %v2, 4, %s44
	lea %s44, 1024(, %s47)
	vldl.zx %v3, 4, %s44
	lea %s44, 1024(, %s48)
	vldu %v4, 4, %s44
	vfmk.w.gt %vm1, %v3
	vfnmsb.s %v4, %v0, %v1, %v2, %vm1
	lea %s43, 1024(, %s43)
	vstu %v4, 4, %s43
	adds.w.sx %s42, %s42, %s39
	lea %s7, 5120(, %s7)
	adds.w.sx %s41, %s41, %s40
	brlt.w %s42, %s6, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vfnmsbs_vvvvmvl, .Lfunc_end0-vfnmsbs_vvvvmvl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
