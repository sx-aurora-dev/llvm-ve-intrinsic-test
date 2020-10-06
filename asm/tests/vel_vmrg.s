	.text
	.file	"vel_vmrg.c"
	.globl	vmrg_vvvml
	.p2align	4
	.type	vmrg_vvvml,@function
vmrg_vvvml:
	brgt.w 1, %s4, .LBB0_3
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB0_2:
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vldl.zx %v2, 4, %s3
	vfmk.w.gt %vm1, %v2
	vmrg %v0, %v0, %v1, %vm1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	lea %s3, 1024(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB0_2
.LBB0_3:
	b.l.t (, %s10)
.Lfunc_end0:
	.size	vmrg_vvvml, .Lfunc_end0-vmrg_vvvml

	.globl	vmrg_vsvml
	.p2align	4
	.type	vmrg_vsvml,@function
vmrg_vsvml:
	brgt.w 1, %s4, .LBB1_3
	or %s5, 0, (0)1
	lea %s6, 256
	or %s7, 0, %s4
.LBB1_2:
	mins.w.sx %s34, %s7, %s6
	lvl %s34
	vld %v0, 8, %s2
	vldl.zx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vmrg %v0, %s1, %v0, %vm1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	lea %s3, 1024(, %s3)
	adds.w.sx %s5, %s5, %s6
	adds.w.sx %s7, %s7, (56)1
	brlt.w %s5, %s4, .LBB1_2
.LBB1_3:
	b.l.t (, %s10)
.Lfunc_end1:
	.size	vmrg_vsvml, .Lfunc_end1-vmrg_vsvml

	.globl	vmrg_vIvml
	.p2align	4
	.type	vmrg_vIvml,@function
vmrg_vIvml:
	brgt.w 1, %s4, .LBB2_3
	or %s1, 0, (0)1
	lea %s5, 256
	or %s6, 0, %s4
.LBB2_2:
	mins.w.sx %s7, %s6, %s5
	lvl %s7
	vld %v0, 8, %s2
	vldl.zx %v1, 4, %s3
	vfmk.w.gt %vm1, %v1
	vmrg %v0, 3, %v0, %vm1
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	lea %s3, 1024(, %s3)
	adds.w.sx %s1, %s1, %s5
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s1, %s4, .LBB2_2
.LBB2_3:
	b.l.t (, %s10)
.Lfunc_end2:
	.size	vmrg_vIvml, .Lfunc_end2-vmrg_vIvml

	.globl	vmrgw_vvvMl
	.p2align	4
	.type	vmrgw_vvvMl,@function
vmrgw_vvvMl:
	brgt.w 1, %s4, .LBB3_3
	or %s5, 0, (0)1
	lea %s6, 256
	lea %s7, 512
	or %s34, 0, %s4
.LBB3_2:
	sra.w.sx %s35, %s34, 1
	cmps.w.sx %s36, %s34, %s7
	or %s37, 0, %s6
	cmov.w.lt %s37, %s35, %s36
	lvl %s37
	vld %v0, 8, %s1
	vld %v1, 8, %s2
	vld %v2, 8, %s3
	pvfmk.w.up.gt %vm2, %v2
	vfmk.w.gt %vm3, %v2
	vmrg.w %v0, %v0, %v1, %vm2
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s1, 2048(, %s1)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	adds.w.sx %s5, %s5, %s7
	adds.w.sx %s34, %s34, (55)1
	brlt.w %s5, %s4, .LBB3_2
.LBB3_3:
	b.l.t (, %s10)
.Lfunc_end3:
	.size	vmrgw_vvvMl, .Lfunc_end3-vmrgw_vvvMl

	.globl	vmrgw_vsvMl
	.p2align	4
	.type	vmrgw_vsvMl,@function
vmrgw_vsvMl:
	and %s4, %s4, (32)0
	brgt.w 1, %s4, .LBB4_3
	or %s5, 0, (0)1
	lea %s6, 256
	lea %s7, 512
	or %s34, 0, %s4
.LBB4_2:
	sra.w.sx %s35, %s34, 1
	cmps.w.sx %s36, %s34, %s7
	or %s37, 0, %s6
	cmov.w.lt %s37, %s35, %s36
	lvl %s37
	vld %v0, 8, %s2
	vld %v1, 8, %s3
	pvfmk.w.up.gt %vm2, %v1
	vfmk.w.gt %vm3, %v1
	vmrg.w %v0, %s1, %v0, %vm2
	vst %v0, 8, %s0
	lea %s0, 2048(, %s0)
	lea %s2, 2048(, %s2)
	lea %s3, 2048(, %s3)
	adds.w.sx %s5, %s5, %s7
	adds.w.sx %s34, %s34, (55)1
	brlt.w %s5, %s4, .LBB4_2
.LBB4_3:
	b.l.t (, %s10)
.Lfunc_end4:
	.size	vmrgw_vsvMl, .Lfunc_end4-vmrgw_vsvMl

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 9c45d576945a4fddcd08d0c3956139ae53c477e8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
