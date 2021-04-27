	.text
	.file	"cr.cc"
	.globl	_Z7lcr_sssmm                    # -- Begin function _Z7lcr_sssmm
	.p2align	4
	.type	_Z7lcr_sssmm,@function
_Z7lcr_sssmm:                           # @_Z7lcr_sssmm
# %bb.0:
	lcr %s0, %s0, %s1
	b.l.t (, %s10)
.Lfunc_end0:
	.size	_Z7lcr_sssmm, .Lfunc_end0-_Z7lcr_sssmm
                                        # -- End function
	.globl	_Z7lcr_sismm                    # -- Begin function _Z7lcr_sismm
	.p2align	4
	.type	_Z7lcr_sismm,@function
_Z7lcr_sismm:                           # @_Z7lcr_sismm
# %bb.0:
	lea %s0, -3(%s1, %s0)
	lcr %s0, 3, %s0
	b.l.t (, %s10)
.Lfunc_end1:
	.size	_Z7lcr_sismm, .Lfunc_end1-_Z7lcr_sismm
                                        # -- End function
	.globl	_Z7lcr_sszmm                    # -- Begin function _Z7lcr_sszmm
	.p2align	4
	.type	_Z7lcr_sszmm,@function
_Z7lcr_sszmm:                           # @_Z7lcr_sszmm
# %bb.0:
	adds.l %s0, %s1, %s0
	lcr %s0, %s0, 0
	b.l.t (, %s10)
.Lfunc_end2:
	.size	_Z7lcr_sszmm, .Lfunc_end2-_Z7lcr_sszmm
                                        # -- End function
	.globl	_Z7lcr_sizmm                    # -- Begin function _Z7lcr_sizmm
	.p2align	4
	.type	_Z7lcr_sizmm,@function
_Z7lcr_sizmm:                           # @_Z7lcr_sizmm
# %bb.0:
	lcr %s0, 15, 0
	b.l.t (, %s10)
.Lfunc_end3:
	.size	_Z7lcr_sizmm, .Lfunc_end3-_Z7lcr_sizmm
                                        # -- End function
	.globl	_Z7scr_sssmmm                   # -- Begin function _Z7scr_sssmmm
	.p2align	4
	.type	_Z7scr_sssmmm,@function
_Z7scr_sssmmm:                          # @_Z7scr_sssmmm
# %bb.0:
	scr %s0, %s1, %s2
	b.l.t (, %s10)
.Lfunc_end4:
	.size	_Z7scr_sssmmm, .Lfunc_end4-_Z7scr_sssmmm
                                        # -- End function
	.globl	_Z7scr_sismmm                   # -- Begin function _Z7scr_sismmm
	.p2align	4
	.type	_Z7scr_sismmm,@function
_Z7scr_sismmm:                          # @_Z7scr_sismmm
# %bb.0:
	lea %s1, -3(%s2, %s1)
	scr %s0, 3, %s1
	b.l.t (, %s10)
.Lfunc_end5:
	.size	_Z7scr_sismmm, .Lfunc_end5-_Z7scr_sismmm
                                        # -- End function
	.globl	_Z7scr_sszmmm                   # -- Begin function _Z7scr_sszmmm
	.p2align	4
	.type	_Z7scr_sszmmm,@function
_Z7scr_sszmmm:                          # @_Z7scr_sszmmm
# %bb.0:
	adds.l %s1, %s2, %s1
	scr %s0, %s1, 0
	b.l.t (, %s10)
.Lfunc_end6:
	.size	_Z7scr_sszmmm, .Lfunc_end6-_Z7scr_sszmmm
                                        # -- End function
	.globl	_Z7scr_sizmmm                   # -- Begin function _Z7scr_sizmmm
	.p2align	4
	.type	_Z7scr_sizmmm,@function
_Z7scr_sizmmm:                          # @_Z7scr_sizmmm
# %bb.0:
	scr %s0, 15, 0
	b.l.t (, %s10)
.Lfunc_end7:
	.size	_Z7scr_sizmmm, .Lfunc_end7-_Z7scr_sizmmm
                                        # -- End function
	.globl	_Z9tscr_ssssmmm                 # -- Begin function _Z9tscr_ssssmmm
	.p2align	4
	.type	_Z9tscr_ssssmmm,@function
_Z9tscr_ssssmmm:                        # @_Z9tscr_ssssmmm
# %bb.0:
	tscr %s0, %s1, %s2
	b.l.t (, %s10)
.Lfunc_end8:
	.size	_Z9tscr_ssssmmm, .Lfunc_end8-_Z9tscr_ssssmmm
                                        # -- End function
	.globl	_Z9tscr_ssismmm                 # -- Begin function _Z9tscr_ssismmm
	.p2align	4
	.type	_Z9tscr_ssismmm,@function
_Z9tscr_ssismmm:                        # @_Z9tscr_ssismmm
# %bb.0:
	lea %s1, -3(%s2, %s1)
	tscr %s0, 3, %s1
	b.l.t (, %s10)
.Lfunc_end9:
	.size	_Z9tscr_ssismmm, .Lfunc_end9-_Z9tscr_ssismmm
                                        # -- End function
	.globl	_Z9tscr_ssszmmm                 # -- Begin function _Z9tscr_ssszmmm
	.p2align	4
	.type	_Z9tscr_ssszmmm,@function
_Z9tscr_ssszmmm:                        # @_Z9tscr_ssszmmm
# %bb.0:
	adds.l %s1, %s2, %s1
	tscr %s0, %s1, 0
	b.l.t (, %s10)
.Lfunc_end10:
	.size	_Z9tscr_ssszmmm, .Lfunc_end10-_Z9tscr_ssszmmm
                                        # -- End function
	.globl	_Z9tscr_ssizmmm                 # -- Begin function _Z9tscr_ssizmmm
	.p2align	4
	.type	_Z9tscr_ssizmmm,@function
_Z9tscr_ssizmmm:                        # @_Z9tscr_ssizmmm
# %bb.0:
	tscr %s0, 15, 0
	b.l.t (, %s10)
.Lfunc_end11:
	.size	_Z9tscr_ssizmmm, .Lfunc_end11-_Z9tscr_ssizmmm
                                        # -- End function
	.globl	_Z8fidcr_s0m                    # -- Begin function _Z8fidcr_s0m
	.p2align	4
	.type	_Z8fidcr_s0m,@function
_Z8fidcr_s0m:                           # @_Z8fidcr_s0m
# %bb.0:
	fidcr %s0, %s0, 0
	b.l.t (, %s10)
.Lfunc_end12:
	.size	_Z8fidcr_s0m, .Lfunc_end12-_Z8fidcr_s0m
                                        # -- End function
	.globl	_Z8fidcr_s1m                    # -- Begin function _Z8fidcr_s1m
	.p2align	4
	.type	_Z8fidcr_s1m,@function
_Z8fidcr_s1m:                           # @_Z8fidcr_s1m
# %bb.0:
	fidcr %s0, %s0, 1
	b.l.t (, %s10)
.Lfunc_end13:
	.size	_Z8fidcr_s1m, .Lfunc_end13-_Z8fidcr_s1m
                                        # -- End function
	.globl	_Z8fidcr_s2m                    # -- Begin function _Z8fidcr_s2m
	.p2align	4
	.type	_Z8fidcr_s2m,@function
_Z8fidcr_s2m:                           # @_Z8fidcr_s2m
# %bb.0:
	fidcr %s0, %s0, 2
	b.l.t (, %s10)
.Lfunc_end14:
	.size	_Z8fidcr_s2m, .Lfunc_end14-_Z8fidcr_s2m
                                        # -- End function
	.globl	_Z8fidcr_s3m                    # -- Begin function _Z8fidcr_s3m
	.p2align	4
	.type	_Z8fidcr_s3m,@function
_Z8fidcr_s3m:                           # @_Z8fidcr_s3m
# %bb.0:
	fidcr %s0, %s0, 3
	b.l.t (, %s10)
.Lfunc_end15:
	.size	_Z8fidcr_s3m, .Lfunc_end15-_Z8fidcr_s3m
                                        # -- End function
	.globl	_Z8fidcr_s4m                    # -- Begin function _Z8fidcr_s4m
	.p2align	4
	.type	_Z8fidcr_s4m,@function
_Z8fidcr_s4m:                           # @_Z8fidcr_s4m
# %bb.0:
	fidcr %s0, %s0, 4
	b.l.t (, %s10)
.Lfunc_end16:
	.size	_Z8fidcr_s4m, .Lfunc_end16-_Z8fidcr_s4m
                                        # -- End function
	.globl	_Z8fidcr_s5m                    # -- Begin function _Z8fidcr_s5m
	.p2align	4
	.type	_Z8fidcr_s5m,@function
_Z8fidcr_s5m:                           # @_Z8fidcr_s5m
# %bb.0:
	fidcr %s0, %s0, 5
	b.l.t (, %s10)
.Lfunc_end17:
	.size	_Z8fidcr_s5m, .Lfunc_end17-_Z8fidcr_s5m
                                        # -- End function
	.globl	_Z8fidcr_s6m                    # -- Begin function _Z8fidcr_s6m
	.p2align	4
	.type	_Z8fidcr_s6m,@function
_Z8fidcr_s6m:                           # @_Z8fidcr_s6m
# %bb.0:
	fidcr %s0, %s0, 6
	b.l.t (, %s10)
.Lfunc_end18:
	.size	_Z8fidcr_s6m, .Lfunc_end18-_Z8fidcr_s6m
                                        # -- End function
	.globl	_Z8fidcr_s7m                    # -- Begin function _Z8fidcr_s7m
	.p2align	4
	.type	_Z8fidcr_s7m,@function
_Z8fidcr_s7m:                           # @_Z8fidcr_s7m
# %bb.0:
	fidcr %s0, %s0, 7
	b.l.t (, %s10)
.Lfunc_end19:
	.size	_Z8fidcr_s7m, .Lfunc_end19-_Z8fidcr_s7m
                                        # -- End function
	.globl	_Z8fidcr_i0m                    # -- Begin function _Z8fidcr_i0m
	.p2align	4
	.type	_Z8fidcr_i0m,@function
_Z8fidcr_i0m:                           # @_Z8fidcr_i0m
# %bb.0:
	fidcr %s0, 12, 0
	b.l.t (, %s10)
.Lfunc_end20:
	.size	_Z8fidcr_i0m, .Lfunc_end20-_Z8fidcr_i0m
                                        # -- End function
	.globl	_Z8fidcr_i1m                    # -- Begin function _Z8fidcr_i1m
	.p2align	4
	.type	_Z8fidcr_i1m,@function
_Z8fidcr_i1m:                           # @_Z8fidcr_i1m
# %bb.0:
	fidcr %s0, 12, 1
	b.l.t (, %s10)
.Lfunc_end21:
	.size	_Z8fidcr_i1m, .Lfunc_end21-_Z8fidcr_i1m
                                        # -- End function
	.globl	_Z8fidcr_i2m                    # -- Begin function _Z8fidcr_i2m
	.p2align	4
	.type	_Z8fidcr_i2m,@function
_Z8fidcr_i2m:                           # @_Z8fidcr_i2m
# %bb.0:
	fidcr %s0, 12, 2
	b.l.t (, %s10)
.Lfunc_end22:
	.size	_Z8fidcr_i2m, .Lfunc_end22-_Z8fidcr_i2m
                                        # -- End function
	.globl	_Z8fidcr_i3m                    # -- Begin function _Z8fidcr_i3m
	.p2align	4
	.type	_Z8fidcr_i3m,@function
_Z8fidcr_i3m:                           # @_Z8fidcr_i3m
# %bb.0:
	fidcr %s0, 12, 3
	b.l.t (, %s10)
.Lfunc_end23:
	.size	_Z8fidcr_i3m, .Lfunc_end23-_Z8fidcr_i3m
                                        # -- End function
	.globl	_Z8fidcr_i4m                    # -- Begin function _Z8fidcr_i4m
	.p2align	4
	.type	_Z8fidcr_i4m,@function
_Z8fidcr_i4m:                           # @_Z8fidcr_i4m
# %bb.0:
	fidcr %s0, 12, 4
	b.l.t (, %s10)
.Lfunc_end24:
	.size	_Z8fidcr_i4m, .Lfunc_end24-_Z8fidcr_i4m
                                        # -- End function
	.globl	_Z8fidcr_i5m                    # -- Begin function _Z8fidcr_i5m
	.p2align	4
	.type	_Z8fidcr_i5m,@function
_Z8fidcr_i5m:                           # @_Z8fidcr_i5m
# %bb.0:
	fidcr %s0, 12, 5
	b.l.t (, %s10)
.Lfunc_end25:
	.size	_Z8fidcr_i5m, .Lfunc_end25-_Z8fidcr_i5m
                                        # -- End function
	.globl	_Z8fidcr_i6m                    # -- Begin function _Z8fidcr_i6m
	.p2align	4
	.type	_Z8fidcr_i6m,@function
_Z8fidcr_i6m:                           # @_Z8fidcr_i6m
# %bb.0:
	fidcr %s0, 12, 6
	b.l.t (, %s10)
.Lfunc_end26:
	.size	_Z8fidcr_i6m, .Lfunc_end26-_Z8fidcr_i6m
                                        # -- End function
	.globl	_Z8fidcr_i7m                    # -- Begin function _Z8fidcr_i7m
	.p2align	4
	.type	_Z8fidcr_i7m,@function
_Z8fidcr_i7m:                           # @_Z8fidcr_i7m
# %bb.0:
	fidcr %s0, 12, 7
	b.l.t (, %s10)
.Lfunc_end27:
	.size	_Z8fidcr_i7m, .Lfunc_end27-_Z8fidcr_i7m
                                        # -- End function
	.ident	"clang version 12.0.0 (git@github.com:sx-aurora-dev/llvm-project.git 93757b8d0fb62b570c17ae51ba4460552664f85c)"
	.section	".note.GNU-stack","",@progbits
