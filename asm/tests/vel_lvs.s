	.text
	.file	"vel_lvs.c"
	.globl	lvsl_svs
	.p2align	4
	.type	lvsl_svs,@function
lvsl_svs:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s0
	and %s0, %s1, (32)0
	lvs %s0, %v0(%s0)
	b.l.t (, %s10)
.Lfunc_end0:
	.size	lvsl_svs, .Lfunc_end0-lvsl_svs

	.globl	lvsd_svs
	.p2align	4
	.type	lvsd_svs,@function
lvsd_svs:
	lea %s2, 256
	lvl %s2
	vld %v0, 8, %s0
	and %s0, %s1, (32)0
	lvs %s0, %v0(%s0)
	b.l.t (, %s10)
.Lfunc_end1:
	.size	lvsd_svs, .Lfunc_end1-lvsd_svs

	.globl	lvss_svs
	.p2align	4
	.type	lvss_svs,@function
lvss_svs:
	lea %s2, 256
	lvl %s2
	vldu %v0, 4, %s0
	and %s0, %s1, (32)0
	lvs %s0, %v0(%s0)
	b.l.t (, %s10)
.Lfunc_end2:
	.size	lvss_svs, .Lfunc_end2-lvss_svs

	.ident	"clang version 12.0.0 (git@socsv218.svp.cl.nec.co.jp:ve-llvm/llvm-project.git 9c45d576945a4fddcd08d0c3956139ae53c477e8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
