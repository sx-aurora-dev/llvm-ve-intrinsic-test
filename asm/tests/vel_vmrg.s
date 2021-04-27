	.text
	.file	"vel_vmrg.c"
	.globl	vmrg_vvvml                      # -- Begin function vmrg_vvvml
	.p2align	4
	.type	vmrg_vvvml,@function
vmrg_vvvml:                             # @vmrg_vvvml
# %bb.0:
	brgt.w 1, %s4, .LBB0_7
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 256
	lea %s7, 512
	lea %s34, 768
	lea %s35, -768
	lea %s36, 1024
	lea %s37, 1280
	lea %s38, -1280
	or %s39, 0, %s4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s40, %s39, %s6
	lvl %s40
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vldl.zx %v2, 4, %s3
	vfmk.w.gt %vm1, %v2
	vmrg %v0, %v0, %v1, %vm1
	adds.w.sx %s41, %s5, %s6
	vst %v0, 8, %s0
	brge.w %s41, %s4, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s40, %s39, (56)1
	mins.w.sx %s40, %s40, %s6
	lea %s1, 2048(, %s1)
	lvl %s40
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v2, 4, %s3
	vfmk.w.gt %vm1, %v2
	vmrg %v0, %v0, %v1, %vm1
	lea %s0, 2048(, %s0)
	adds.w.sx %s41, %s5, %s7
	vst %v0, 8, %s0
	brge.w %s41, %s4, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s40, %s39, (55)1
	mins.w.sx %s41, %s40, %s6
	lea %s1, 2048(, %s1)
	lvl %s41
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v2, 4, %s3
	vfmk.w.gt %vm1, %v2
	vmrg %v0, %v0, %v1, %vm1
	lea %s40, 2048(, %s0)
	adds.w.sx %s0, %s5, %s34
	vst %v0, 8, %s40
	brge.w %s0, %s4, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s0, %s39, %s35
	mins.w.sx %s41, %s0, %s6
	lea %s0, 2048(, %s1)
	lvl %s41
	vld %v0, 8, %s0
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v2, 4, %s3
	vfmk.w.gt %vm1, %v2
	vmrg %v0, %v0, %v1, %vm1
	lea %s40, 2048(, %s40)
	adds.w.sx %s1, %s5, %s36
	vst %v0, 8, %s40
	brge.w %s1, %s4, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	adds.w.sx %s1, %s39, (54)1
	mins.w.sx %s1, %s1, %s6
	lea %s41, 2048(, %s0)
	lvl %s1
	vld %v0, 8, %s41
	lea %s41, 2048(, %s2)
	vld %v1, 8, %s41
	lea %s41, 1024(, %s3)
	vldl.zx %v2, 4, %s41
	vfmk.w.gt %vm1, %v2
	vmrg %v0, %v0, %v1, %vm1
	lea %s41, 2048(, %s40)
	vst %v0, 8, %s41
	adds.w.sx %s5, %s5, %s37
	adds.w.sx %s39, %s39, %s38
	lea %s1, 4096(, %s0)
	lea %s2, 4096(, %s2)
	lea %s3, 2048(, %s3)
	lea %s0, 4096(, %s40)
	brlt.w %s5, %s4, .LBB0_2
.LBB0_7:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vmrg_vvvml, .Lfunc_end0-vmrg_vvvml
                                        # -- End function
	.globl	vmrg_vsvml                      # -- Begin function vmrg_vsvml
	.p2align	4
	.type	vmrg_vsvml,@function
vmrg_vsvml:                             # @vmrg_vsvml
# %bb.0:
	brgt.w 1, %s4, .LBB1_7
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 256
	lea %s7, 512
	lea %s34, 768
	lea %s35, -768
	lea %s36, 1024
	lea %s37, 1280
	lea %s38, -1280
	or %s39, 0, %s4
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s40, %s39, %s6
	lvl %s40
	vld %v0, 8, %s2
	vldl.zx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vmrg %v0, %s1, %v0, %vm1
	adds.w.sx %s41, %s5, %s6
	vst %v0, 8, %s0
	brge.w %s41, %s4, .LBB1_7
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	adds.w.sx %s40, %s39, (56)1
	mins.w.sx %s40, %s40, %s6
	lea %s2, 2048(, %s2)
	lvl %s40
	vld %v0, 8, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vmrg %v0, %s1, %v0, %vm1
	lea %s0, 2048(, %s0)
	adds.w.sx %s41, %s5, %s7
	vst %v0, 8, %s0
	brge.w %s41, %s4, .LBB1_7
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	adds.w.sx %s40, %s39, (55)1
	mins.w.sx %s41, %s40, %s6
	lea %s2, 2048(, %s2)
	lvl %s41
	vld %v0, 8, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vmrg %v0, %s1, %v0, %vm1
	lea %s40, 2048(, %s0)
	adds.w.sx %s0, %s5, %s34
	vst %v0, 8, %s40
	brge.w %s0, %s4, .LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	adds.w.sx %s0, %s39, %s35
	mins.w.sx %s41, %s0, %s6
	lea %s0, 2048(, %s2)
	lvl %s41
	vld %v0, 8, %s0
	lea %s3, 1024(, %s3)
	vldl.zx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vmrg %v0, %s1, %v0, %vm1
	lea %s40, 2048(, %s40)
	adds.w.sx %s2, %s5, %s36
	vst %v0, 8, %s40
	brge.w %s2, %s4, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	adds.w.sx %s2, %s39, (54)1
	mins.w.sx %s2, %s2, %s6
	lea %s41, 2048(, %s0)
	lvl %s2
	vld %v0, 8, %s41
	lea %s41, 1024(, %s3)
	vldl.zx %v1, 4, %s41
	vfmk.w.gt %vm1, %v1
	vmrg %v0, %s1, %v0, %vm1
	lea %s41, 2048(, %s40)
	vst %v0, 8, %s41
	adds.w.sx %s5, %s5, %s37
	adds.w.sx %s39, %s39, %s38
	lea %s2, 4096(, %s0)
	lea %s3, 2048(, %s3)
	lea %s0, 4096(, %s40)
	brlt.w %s5, %s4, .LBB1_2
.LBB1_7:
	b.l.t (, %s10)
.Lfunc_end1:
	.size	vmrg_vsvml, .Lfunc_end1-vmrg_vsvml
                                        # -- End function
	.globl	vmrg_vIvml                      # -- Begin function vmrg_vIvml
	.p2align	4
	.type	vmrg_vIvml,@function
vmrg_vIvml:                             # @vmrg_vIvml
# %bb.0:
	brgt.w 1, %s4, .LBB2_7
# %bb.1:
	or %s1, 0, (0)1
	lea %s5, 256
	lea %s6, 512
	lea %s7, 768
	lea %s34, -768
	lea %s35, 1024
	lea %s36, 1280
	lea %s37, -1280
	or %s38, 0, %s4
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	mins.w.sx %s39, %s38, %s5
	lvl %s39
	vld %v0, 8, %s2
	vldl.zx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vmrg %v0, 3, %v0, %vm1
	adds.w.sx %s40, %s1, %s5
	vst %v0, 8, %s0
	brge.w %s40, %s4, .LBB2_7
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	adds.w.sx %s39, %s38, (56)1
	mins.w.sx %s39, %s39, %s5
	lea %s2, 2048(, %s2)
	lvl %s39
	vld %v0, 8, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vmrg %v0, 3, %v0, %vm1
	lea %s0, 2048(, %s0)
	adds.w.sx %s40, %s1, %s6
	vst %v0, 8, %s0
	brge.w %s40, %s4, .LBB2_7
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	adds.w.sx %s39, %s38, (55)1
	mins.w.sx %s40, %s39, %s5
	lea %s2, 2048(, %s2)
	lvl %s40
	vld %v0, 8, %s2
	lea %s3, 1024(, %s3)
	vldl.zx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vmrg %v0, 3, %v0, %vm1
	lea %s39, 2048(, %s0)
	adds.w.sx %s0, %s1, %s7
	vst %v0, 8, %s39
	brge.w %s0, %s4, .LBB2_7
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=1
	adds.w.sx %s0, %s38, %s34
	mins.w.sx %s40, %s0, %s5
	lea %s0, 2048(, %s2)
	lvl %s40
	vld %v0, 8, %s0
	lea %s3, 1024(, %s3)
	vldl.zx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vmrg %v0, 3, %v0, %vm1
	lea %s39, 2048(, %s39)
	adds.w.sx %s2, %s1, %s35
	vst %v0, 8, %s39
	brge.w %s2, %s4, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_2 Depth=1
	adds.w.sx %s2, %s38, (54)1
	mins.w.sx %s2, %s2, %s5
	lea %s40, 2048(, %s0)
	lvl %s2
	vld %v0, 8, %s40
	lea %s40, 1024(, %s3)
	vldl.zx %v1, 4, %s40
	vfmk.w.gt %vm1, %v1
	vmrg %v0, 3, %v0, %vm1
	lea %s40, 2048(, %s39)
	vst %v0, 8, %s40
	adds.w.sx %s1, %s1, %s36
	adds.w.sx %s38, %s38, %s37
	lea %s2, 4096(, %s0)
	lea %s3, 2048(, %s3)
	lea %s0, 4096(, %s39)
	brlt.w %s1, %s4, .LBB2_2
.LBB2_7:
	b.l.t (, %s10)
.Lfunc_end2:
	.size	vmrg_vIvml, .Lfunc_end2-vmrg_vIvml
                                        # -- End function
	.globl	vmrgw_vvvMl                     # -- Begin function vmrgw_vvvMl
	.p2align	4
	.type	vmrgw_vvvMl,@function
vmrgw_vvvMl:                            # @vmrgw_vvvMl
# %bb.0:
	brgt.w 1, %s4, .LBB3_7
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 512
	lea %s7, 1024
	lea %s34, 1536
	lea %s35, -1536
	lea %s36, 2048
	lea %s37, 2560
	lea %s38, -2560
	or %s39, 0, %s4
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s40, %s39, 1
	cmps.w.sx %s41, %s39, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s40, %s41
	lvl %s42
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vld %v2, 8, %s3
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	vmrg.w %v0, %v0, %v1, %vm2
	adds.w.sx %s40, %s5, %s6
	vst %v0, 8, %s0
	brge.w %s40, %s4, .LBB3_7
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	adds.w.sx %s40, %s39, (55)1
	sra.w.sx %s41, %s40, 1
	cmps.w.sx %s40, %s40, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s40
	lea %s1, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v2, 8, %s3
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	vmrg.w %v0, %v0, %v1, %vm2
	lea %s0, 2048(, %s0)
	adds.w.sx %s40, %s5, %s7
	vst %v0, 8, %s0
	brge.w %s40, %s4, .LBB3_7
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	adds.w.sx %s40, %s39, (54)1
	sra.w.sx %s41, %s40, 1
	cmps.w.sx %s40, %s40, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s40
	lea %s1, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s1
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v2, 8, %s3
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	vmrg.w %v0, %v0, %v1, %vm2
	lea %s40, 2048(, %s0)
	adds.w.sx %s0, %s5, %s34
	vst %v0, 8, %s40
	brge.w %s0, %s4, .LBB3_7
# %bb.5:                                #   in Loop: Header=BB3_2 Depth=1
	adds.w.sx %s0, %s39, %s35
	sra.w.sx %s41, %s0, 1
	cmps.w.sx %s0, %s0, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s0
	lea %s0, 2048(, %s1)
	lvl %s42
	vld %v0, 8, %s0
	lea %s2, 2048(, %s2)
	vld %v1, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v2, 8, %s3
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	vmrg.w %v0, %v0, %v1, %vm2
	lea %s40, 2048(, %s40)
	adds.w.sx %s1, %s5, %s36
	vst %v0, 8, %s40
	brge.w %s1, %s4, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_2 Depth=1
	adds.w.sx %s1, %s39, (53)1
	sra.w.sx %s41, %s1, 1
	cmps.w.sx %s1, %s1, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s1
	lea %s1, 2048(, %s0)
	lvl %s42
	vld %v0, 8, %s1
	lea %s1, 2048(, %s2)
	vld %v1, 8, %s1
	lea %s1, 2048(, %s3)
	vld %v2, 8, %s1
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	vmrg.w %v0, %v0, %v1, %vm2
	lea %s1, 2048(, %s40)
	vst %v0, 8, %s1
	adds.w.sx %s5, %s5, %s37
	adds.w.sx %s39, %s39, %s38
	lea %s1, 4096(, %s0)
	lea %s2, 4096(, %s2)
	lea %s3, 4096(, %s3)
	lea %s0, 4096(, %s40)
	brlt.w %s5, %s4, .LBB3_2
.LBB3_7:
	b.l.t (, %s10)
.Lfunc_end3:
	.size	vmrgw_vvvMl, .Lfunc_end3-vmrgw_vvvMl
                                        # -- End function
	.globl	vmrgw_vsvMl                     # -- Begin function vmrgw_vsvMl
	.p2align	4
	.type	vmrgw_vsvMl,@function
vmrgw_vsvMl:                            # @vmrgw_vsvMl
# %bb.0:
	and %s4, %s4, (32)0
	brgt.w 1, %s4, .LBB4_7
# %bb.1:
	or %s5, 0, (0)1
	lea %s6, 512
	lea %s7, 1024
	lea %s34, 1536
	lea %s35, -1536
	lea %s36, 2048
	lea %s37, 2560
	lea %s38, -2560
	or %s39, 0, %s4
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	sra.w.sx %s40, %s39, 1
	cmps.w.sx %s41, %s39, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s40, %s41
	lvl %s42
	vld %v0, 8, %s2
	vld %v1, 8, %s3
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	vmrg.w %v0, %s1, %v0, %vm2
	adds.w.sx %s40, %s5, %s6
	vst %v0, 8, %s0
	brge.w %s40, %s4, .LBB4_7
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	adds.w.sx %s40, %s39, (55)1
	sra.w.sx %s41, %s40, 1
	cmps.w.sx %s40, %s40, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s40
	lea %s2, 2048(, %s2)
	lvl %s42
	vld %v0, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	vmrg.w %v0, %s1, %v0, %vm2
	lea %s0, 2048(, %s0)
	adds.w.sx %s40, %s5, %s7
	vst %v0, 8, %s0
	brge.w %s40, %s4, .LBB4_7
# %bb.4:                                #   in Loop: Header=BB4_2 Depth=1
	adds.w.sx %s40, %s39, (54)1
	sra.w.sx %s41, %s40, 1
	cmps.w.sx %s40, %s40, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s40
	lea %s2, 2048(, %s2)
	lvl %s42
	vld %v0, 8, %s2
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	vmrg.w %v0, %s1, %v0, %vm2
	lea %s40, 2048(, %s0)
	adds.w.sx %s0, %s5, %s34
	vst %v0, 8, %s40
	brge.w %s0, %s4, .LBB4_7
# %bb.5:                                #   in Loop: Header=BB4_2 Depth=1
	adds.w.sx %s0, %s39, %s35
	sra.w.sx %s41, %s0, 1
	cmps.w.sx %s0, %s0, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s0
	lea %s0, 2048(, %s2)
	lvl %s42
	vld %v0, 8, %s0
	lea %s3, 2048(, %s3)
	vld %v1, 8, %s3
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	vmrg.w %v0, %s1, %v0, %vm2
	lea %s40, 2048(, %s40)
	adds.w.sx %s2, %s5, %s36
	vst %v0, 8, %s40
	brge.w %s2, %s4, .LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_2 Depth=1
	adds.w.sx %s2, %s39, (53)1
	sra.w.sx %s41, %s2, 1
	cmps.w.sx %s2, %s2, %s6
	lea %s42, 256
	cmov.w.lt %s42, %s41, %s2
	lea %s2, 2048(, %s0)
	lvl %s42
	vld %v0, 8, %s2
	lea %s2, 2048(, %s3)
	vld %v1, 8, %s2
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	vmrg.w %v0, %s1, %v0, %vm2
	lea %s2, 2048(, %s40)
	vst %v0, 8, %s2
	adds.w.sx %s5, %s5, %s37
	adds.w.sx %s39, %s39, %s38
	lea %s2, 4096(, %s0)
	lea %s3, 4096(, %s3)
	lea %s0, 4096(, %s40)
	brlt.w %s5, %s4, .LBB4_2
.LBB4_7:
	b.l.t (, %s10)
.Lfunc_end4:
	.size	vmrgw_vsvMl, .Lfunc_end4-vmrgw_vsvMl
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
