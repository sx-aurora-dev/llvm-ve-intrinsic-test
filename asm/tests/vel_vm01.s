	.text
	.file	"vel_vm01.cc"
	.globl	_Z8vel_vm01PdS_Pji
	.p2align	4
	.type	_Z8vel_vm01PdS_Pji,@function
_Z8vel_vm01PdS_Pji:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	st %s15, 24(, %s11)
	st %s16, 32(, %s11)
	or %s9, 0, %s11
	lea %s13, -176
	and %s13, %s13, (32)0
	lea.sl %s11, -1(%s13, %s11)
	brge.l %s11, %s8, .LBB0_5
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_5:
	brgt.w 1, %s3, .LBB0_3
	lea %s4, 256
	lvl %s4
	vfmk.l.at %vm1
	or %s5, 0, (0)1
	or %s6, 0, %s3
.LBB0_2:
	mins.w.sx %s7, %s6, %s4
	lvl %s7
	vldl.zx %v0,4,%s2
	vld %v1,8,%s0
	vld %v2,8,%s1
	vfmk.w.gt %vm2,%v0
	nndm %vm1,%vm2,%vm1
	vfadd.d %v1,%v1,%v2,%vm1
	vst %v1,8,%s0
	adds.w.sx %s7, %s7, (0)1
	sll %s34, %s7, 3
	adds.l %s0, %s0, %s34
	adds.l %s1, %s1, %s34
	sll %s7, %s7, 2
	adds.l %s2, %s2, %s7
	adds.w.sx %s5, %s5, %s4
	adds.w.sx %s6, %s6, (56)1
	brlt.w %s5, %s3, .LBB0_2
.LBB0_3:
	or %s11, 0, %s9
	ld %s16, 32(, %s11)
	ld %s15, 24(, %s11)
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z8vel_vm01PdS_Pji, .Lfunc_end0-_Z8vel_vm01PdS_Pji

	.ident	"clang version 11.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 7cda3c814c99665dbae38aed1250c3d76586a568)"
	.section	".note.GNU-stack","",@progbits
