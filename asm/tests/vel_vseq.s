	.text
	.file	"vel_vseq.cc"
	.globl	_Z4vseqPm
	.p2align	4
	.type	_Z4vseqPm,@function
_Z4vseqPm:
	lea %s1, 256
	lvl %s1
	vseq %v0
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z4vseqPm, .Lfunc_end0-_Z4vseqPm

	.globl	_Z6vseq_pPm
	.p2align	4
	.type	_Z6vseq_pPm,@function
_Z6vseq_pPm:
	lea %s1, 256
	lvl %s1
	pvseq %v0
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z6vseq_pPm, .Lfunc_end1-_Z6vseq_pPm

	.globl	_Z7vseq_plPm
	.p2align	4
	.type	_Z7vseq_plPm,@function
_Z7vseq_plPm:
	lea %s1, 256
	lvl %s1
	pvseq.lo %v0
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z7vseq_plPm, .Lfunc_end2-_Z7vseq_plPm

	.globl	_Z7vseq_puPm
	.p2align	4
	.type	_Z7vseq_puPm,@function
_Z7vseq_puPm:
	lea %s1, 256
	lvl %s1
	pvseq.up %v0
	vst %v0,8,%s0
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z7vseq_puPm, .Lfunc_end3-_Z7vseq_puPm

	.ident	"clang version 12.0.0 (/home/t-baba/llvm-dev/llvm-project/clang b40854ec055215ba301282c81d9032544b3b1275)"
	.section	".note.GNU-stack","",@progbits
