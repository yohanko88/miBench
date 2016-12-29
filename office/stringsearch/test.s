	.file	"pbmsrch_small.c"
# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu pbmsrch_small.c
# -mtune=generic -march=x86-64 -auxbase-strip test.s -g -O2 -fverbose-asm
# -fstack-protector -Wformat -Wformat-security
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
# -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
# -fif-conversion -fif-conversion2 -findirect-inlining -finline
# -finline-atomics -finline-functions-called-once -finline-small-functions
# -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
# -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
# -fprefetch-loop-arrays -free -freg-struct-return -fregmove
# -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
# -fstack-protector -fstrict-aliasing -fstrict-overflow
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
# -ftree-slsr -ftree-sra -ftree-switch-conversion -ftree-tail-merge
# -ftree-ter -ftree-vect-loop-version -ftree-vrp -funit-at-a-time
# -funwind-tables -fvar-tracking -fvar-tracking-assignments -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4
# -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.text
.Ltext0:
	.p2align 4,,15
	.globl	init_search
	.type	init_search, @function
init_search:
.LFB24:
	.file 1 "pbmsrch_small.c"
	.loc 1 28 0
	.cfi_startproc
.LVL0:
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 28 0
	movq	%rdi, %rbx	# string, string
	.loc 1 31 0
	call	strlen	#
.LVL1:
	.loc 1 32 0
	xorl	%edx, %edx	# i
	.loc 1 31 0
	movq	%rax, len(%rip)	# tmp93, len
.LVL2:
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 33 0 discriminator 2
	movq	%rax, table(,%rdx,8)	# tmp93, MEM[symbol: table, index: i_22, step: 8, offset: 0B]
	.loc 1 32 0 discriminator 2
	addq	$1, %rdx	#, i
.LVL3:
	cmpq	$256, %rdx	#, i
	jne	.L3	#,
.LVL4:
	.loc 1 34 0 discriminator 1
	xorw	%dx, %dx	#
	testq	%rax, %rax	# tmp93
	leaq	-1(%rax), %rdi	#, D.3014
	je	.L5	#,
.LVL5:
	.p2align 4,,10
	.p2align 3
.L7:
	.loc 1 35 0 discriminator 2
	movzbl	(%rbx,%rdx), %ecx	# MEM[base: string_6(D), index: i_3, offset: 0B], D.3017
	movq	%rdi, %rsi	# D.3014, tmp99
	subq	%rdx, %rsi	# i, tmp99
	.loc 1 34 0 discriminator 2
	addq	$1, %rdx	#, i
.LVL6:
	cmpq	%rax, %rdx	# tmp93, i
	movq	%rsi, table(,%rcx,8)	# tmp99, table
	jne	.L7	#,
.LVL7:
.L5:
	.loc 1 36 0
	movq	%rbx, findme(%rip)	# string, findme
	.loc 1 37 0
	popq	%rbx	#
	.cfi_def_cfa_offset 8
.LVL8:
	ret
	.cfi_endproc
.LFE24:
	.size	init_search, .-init_search
	.p2align 4,,15
	.globl	strsearch
	.type	strsearch, @function
strsearch:
.LFB25:
	.loc 1 44 0
	.cfi_startproc
.LVL9:
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14	# string, string
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	.loc 1 46 0
	movq	len(%rip), %r12	# len, len.2
	.loc 1 48 0
	call	strlen	#
.LVL10:
	movq	%rax, %r15	#, tmp80
	.loc 1 46 0
	leaq	-1(%r12), %rbx	#, pos
.LVL11:
	.loc 1 50 0
	cmpq	%rax, %rbx	# tmp80, pos
	jnb	.L22	#,
	.loc 1 59 0
	movq	findme(%rip), %rax	# findme, findme.3
.LVL12:
	movl	$1, %r13d	#, D.3025
	subq	%r12, %r13	# len.2, D.3025
	movq	%rax, 8(%rsp)	# findme.3, %sfp
	.p2align 4,,10
	.p2align 3
.L13:
	.loc 1 52 0 discriminator 1
	cmpq	%rbx, %r15	# pos, tmp80
	jbe	.L14	#,
	.loc 1 53 0
	movzbl	(%r14,%rbx), %eax	# *_33, D.3024
.LVL13:
	movq	table(,%rax,8), %rbp	# table, shift
	.loc 1 52 0
	testq	%rbp, %rbp	# shift
	jne	.L18	#,
	jmp	.L19	#
.LVL14:
	.p2align 4,,10
	.p2align 3
.L27:
	.loc 1 53 0 discriminator 2
	movzbl	(%r14,%rbx), %ecx	# *_13, D.3024
.LVL15:
	movq	table(,%rcx,8), %rbp	# table, shift
	.loc 1 52 0 discriminator 2
	testq	%rbp, %rbp	# shift
	je	.L19	#,
.LVL16:
.L18:
	.loc 1 55 0
	addq	%rbp, %rbx	# shift, pos
.LVL17:
	.loc 1 52 0
	cmpq	%rbx, %r15	# pos, tmp80
	ja	.L27	#,
.L14:
	.loc 1 57 0
	testq	%rbp, %rbp	# shift
	je	.L19	#,
.L17:
	.loc 1 50 0 discriminator 1
	cmpq	%rbx, %r15	# pos, tmp80
	ja	.L13	#,
.L22:
	.loc 1 68 0
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	.loc 1 67 0
	xorl	%eax, %eax	# D.3020
	.loc 1 68 0
	popq	%rbx	#
	.cfi_def_cfa_offset 48
.LVL18:
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
.LVL19:
	popq	%r15	#
	.cfi_def_cfa_offset 8
.LVL20:
	ret
.LVL21:
	.p2align 4,,10
	.p2align 3
.L19:
	.cfi_restore_state
	.loc 1 59 0
	leaq	0(%r13,%rbx), %rbp	#, D.3026
	movq	8(%rsp), %rdi	# %sfp,
	movq	%r12, %rdx	# len.2,
	addq	%r14, %rbp	# string, here
.LVL22:
	movq	%rbp, %rsi	# here,
	call	strncmp	#
.LVL23:
	testl	%eax, %eax	# tmp88
	je	.L21	#,
	.loc 1 64 0
	addq	$1, %rbx	#, pos
.LVL24:
	xorl	%ebp, %ebp	# shift
.LVL25:
	jmp	.L17	#
.LVL26:
.L21:
	.loc 1 68 0
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 56
	.loc 1 59 0
	movq	%rbp, %rax	# here, D.3020
	.loc 1 68 0
	popq	%rbx	#
	.cfi_def_cfa_offset 48
.LVL27:
	popq	%rbp	#
	.cfi_def_cfa_offset 40
.LVL28:
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
.LVL29:
	popq	%r15	#
	.cfi_def_cfa_offset 8
.LVL30:
	ret
	.cfi_endproc
.LFE25:
	.size	strsearch, .-strsearch
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC108:
	.string	" not"
.LC109:
	.string	"\"%s\" is%s in \"%s\""
.LC110:
	.string	""
.LC111:
	.string	" [\"%s\"]"
.LC0:
	.string	"abb"
.LC1:
	.string	"you"
.LC2:
	.string	"not"
.LC3:
	.string	"it"
.LC4:
	.string	"dad"
.LC5:
	.string	"yoo"
.LC6:
	.string	"hoo"
.LC7:
	.string	"oo"
.LC8:
	.string	"oh"
.LC9:
	.string	"xx"
.LC10:
	.string	"x"
.LC11:
	.string	"field"
.LC12:
	.string	"new"
.LC13:
	.string	"row"
.LC14:
	.string	"regime"
.LC15:
	.string	"boom"
.LC16:
	.string	"that"
.LC17:
	.string	"impact"
.LC18:
	.string	"and"
.LC19:
	.string	"zoom"
.LC20:
	.string	"texture"
.LC21:
	.string	"magnet"
.LC22:
	.string	"doom"
.LC23:
	.string	"loom"
.LC24:
	.string	"freq"
.LC25:
	.string	"current"
.LC26:
	.string	"phase"
.LC27:
	.string	"images"
.LC28:
	.string	"appears"
.LC29:
	.string	"conductor"
.LC30:
	.string	"wavez"
.LC31:
	.string	"normal"
.LC32:
	.string	"free"
.LC33:
	.string	"termed"
.LC34:
	.string	"provide"
.LC35:
	.string	"for"
.LC36:
	.string	"struct"
.LC37:
	.string	"about"
.LC38:
	.string	"have"
.LC39:
	.string	"proper"
.LC40:
	.string	"involve"
.LC41:
	.string	"describedly"
.LC42:
	.string	"thats"
.LC43:
	.string	"spaces"
.LC44:
	.string	"circumstance"
.LC45:
	.string	"the"
.LC46:
	.string	"member"
.LC47:
	.string	"such"
.LC48:
	.string	"guide"
.LC49:
	.string	"regard"
.LC50:
	.string	"officers"
.LC51:
	.string	"implement"
.LC52:
	.string	"principalities"
	.section	.rodata
	.align 32
.LC106:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC9
	.quad	.LC10
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC26
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC18
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.quad	.LC46
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC50
	.quad	.LC51
	.quad	.LC52
	.quad	0
	.section	.rodata.str1.1
.LC54:
	.string	"cabbie"
.LC55:
	.string	"your"
.LC56:
	.string	"It isn't here"
.LC57:
	.string	"But it is here"
.LC58:
	.string	"hodad"
.LC59:
	.string	"yoohoo"
.LC60:
	.string	"."
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC61:
	.string	"In recent years, the field of photonic "
	.section	.rodata.str1.1
.LC62:
	.string	"crystals has found new"
	.section	.rodata.str1.8
	.align 8
.LC63:
	.string	"applications in the RF and microwave"
	.align 8
.LC64:
	.string	"regime. A new type of metallic"
	.align 8
.LC65:
	.string	"electromagnetic crystal has been"
	.section	.rodata.str1.1
.LC66:
	.string	"developed that is having a"
	.section	.rodata.str1.8
	.align 8
.LC67:
	.string	"significant impact on the field of"
	.section	.rodata.str1.1
.LC68:
	.string	"antennas. It consists of a"
	.section	.rodata.str1.8
	.align 8
.LC69:
	.string	"conductive surface, covered with a"
	.align 8
.LC70:
	.string	"special texture which alters its"
	.align 8
.LC71:
	.string	"electromagnetic properties. Made of solid"
	.section	.rodata.str1.1
.LC72:
	.string	"metal, the structure"
	.section	.rodata.str1.8
	.align 8
.LC73:
	.string	"conducts DC currents, but over a"
	.align 8
.LC74:
	.string	"particular frequency range it does"
	.align 8
.LC75:
	.string	"not conduct AC currents. It does not"
	.align 8
.LC76:
	.string	"reverse the phase of reflected"
	.align 8
.LC77:
	.string	"waves, and the effective image currents"
	.section	.rodata.str1.1
.LC78:
	.string	"appear in-phase, rather than"
	.section	.rodata.str1.8
	.align 8
.LC79:
	.string	"out-of-phase as they are on normal"
	.align 8
.LC80:
	.string	"conductors. Furthermore, surface"
	.align 8
.LC81:
	.string	"waves do not propagate, and instead"
	.section	.rodata.str1.1
.LC82:
	.string	"radiate efficiently into free"
	.section	.rodata.str1.8
	.align 8
.LC83:
	.string	"space. This new material, termed a"
	.align 8
.LC84:
	.string	"high-impedance surface, provides"
	.align 8
.LC85:
	.string	"a useful new ground plane for novel"
	.align 8
.LC86:
	.string	"low-profile antennas and other"
	.section	.rodata.str1.1
.LC87:
	.string	"electromagnetic structures."
	.section	.rodata.str1.8
	.align 8
.LC88:
	.string	"The recent protests about the Michigamua"
	.align 8
.LC89:
	.string	"student organization have raised an"
	.align 8
.LC90:
	.string	"important question as to the proper nature"
	.align 8
.LC91:
	.string	"and scope of University involvement"
	.align 8
.LC92:
	.string	"with student organizations. Accordingly"
	.align 8
.LC93:
	.string	"the panel described in my Statement of"
	.align 8
.LC94:
	.string	"February 25, 2000 that is considering the"
	.align 8
.LC95:
	.string	"question of privileged space also will"
	.align 8
.LC96:
	.string	"consider under what circumstances and in"
	.section	.rodata.str1.1
.LC97:
	.string	"what ways the University, its"
	.section	.rodata.str1.8
	.align 8
.LC98:
	.string	"administrators and faculty members should"
	.align 8
.LC99:
	.string	"be associated with such organizations"
	.align 8
.LC100:
	.string	"and it will recommend guiding principles"
	.align 8
.LC101:
	.string	"in this regard. The University's"
	.align 8
.LC102:
	.string	"Executive Officers and I will then decide"
	.align 8
.LC103:
	.string	"whether and how to implement such"
	.section	.rodata.str1.1
.LC104:
	.string	"principles."
	.section	.rodata
	.align 32
.LC107:
	.quad	.LC54
	.quad	.LC55
	.quad	.LC56
	.quad	.LC57
	.quad	.LC58
	.quad	.LC59
	.quad	.LC59
	.quad	.LC59
	.quad	.LC59
	.quad	.LC59
	.quad	.LC9
	.quad	.LC10
	.quad	.LC60
	.quad	.LC61
	.quad	.LC62
	.quad	.LC63
	.quad	.LC64
	.quad	.LC65
	.quad	.LC66
	.quad	.LC67
	.quad	.LC68
	.quad	.LC69
	.quad	.LC70
	.quad	.LC71
	.quad	.LC72
	.quad	.LC73
	.quad	.LC74
	.quad	.LC75
	.quad	.LC76
	.quad	.LC77
	.quad	.LC78
	.quad	.LC79
	.quad	.LC80
	.quad	.LC81
	.quad	.LC82
	.quad	.LC83
	.quad	.LC84
	.quad	.LC85
	.quad	.LC86
	.quad	.LC87
	.quad	.LC88
	.quad	.LC89
	.quad	.LC90
	.quad	.LC91
	.quad	.LC92
	.quad	.LC93
	.quad	.LC94
	.quad	.LC95
	.quad	.LC96
	.quad	.LC97
	.quad	.LC98
	.quad	.LC99
	.quad	.LC100
	.quad	.LC101
	.quad	.LC102
	.quad	.LC103
	.quad	.LC104
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB50:
	.loc 1 73 0
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	.loc 1 75 0
	movl	$.LC106, %esi	#, tmp66
	movl	$58, %ecx	#, tmp67
	.loc 1 73 0
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$936, %rsp	#,
	.cfi_def_cfa_offset 992
	.loc 1 75 0
	leaq	464(%rsp), %r15	#, tmp75
	.loc 1 98 0
	movq	%rsp, %r14	#, tmp74
	.loc 1 75 0
	movq	%r15, %rdi	# tmp75, tmp65
	rep movsq
	.loc 1 98 0
	movl	$.LC107, %esi	#, tmp69
	movq	%rsp, %rdi	# tmp74, tmp68
	.loc 1 149 0
	movq	464(%rsp), %rbx	# find_strings, D.3038
	testq	%rbx, %rbx	# D.3038
	.loc 1 98 0
	movb	$57, %cl	#,
	rep movsq
.LVL31:
	.loc 1 149 0
	je	.L36	#,
	xorl	%ebp, %ebp	# ivtmp.38
	jmp	.L33	#
.LVL32:
	.p2align 4,,10
	.p2align 3
.L30:
.LBB8:
.LBB9:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	movq	%rbx, %rdx	# D.3038,
	movl	$.LC109, %esi	#,
	movl	$1, %edi	#,
	movq	%r12, %r8	# D.3038,
	movl	$.LC110, %ecx	#,
	xorl	%eax, %eax	#
.LVL33:
	call	__printf_chk	#
.LVL34:
.LBE9:
.LBE8:
.LBB11:
.LBB12:
	movq	%r13, %rdx	# here,
	movl	$.LC111, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.LVL35:
.L34:
.LBE12:
.LBE11:
.LBB13:
.LBB14:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 3 81 0
	movq	stdout(%rip), %rsi	# stdout,
	addq	$8, %rbp	#, ivtmp.38
	movl	$10, %edi	#,
	call	_IO_putc	#
.LVL36:
.LBE14:
.LBE13:
	.loc 1 149 0
	movq	(%r15,%rbp), %rbx	# MEM[symbol: find_strings, index: ivtmp.38_24, offset: 0B], D.3038
	testq	%rbx, %rbx	# D.3038
	je	.L36	#,
.LVL37:
.L33:
	.loc 1 151 0
	movq	%rbx, %rdi	# D.3038,
	call	init_search	#
.LVL38:
	.loc 1 152 0
	movq	(%r14,%rbp), %r12	# MEM[symbol: search_strings, index: ivtmp.38_29, offset: 0B], D.3038
	movq	%r12, %rdi	# D.3038,
	call	strsearch	#
.LVL39:
	.loc 1 153 0
	testq	%rax, %rax	# here
	.loc 1 152 0
	movq	%rax, %r13	#, here
.LVL40:
	.loc 1 153 0
	jne	.L30	#,
.LVL41:
.LBB15:
.LBB10:
	.loc 2 104 0
	movq	%r12, %r8	# D.3038,
	movl	$.LC108, %ecx	#,
	movq	%rbx, %rdx	# D.3038,
	movl	$.LC109, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
.LVL42:
	call	__printf_chk	#
.LVL43:
	jmp	.L34	#
.LVL44:
	.p2align 4,,10
	.p2align 3
.L36:
.LBE10:
.LBE15:
	.loc 1 161 0
	addq	$936, %rsp	#,
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	main, .-main
	.local	findme
	.comm	findme,8,8
	.local	len
	.comm	len,8,8
	.local	table
	.comm	table,2048,32
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x65c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF64
	.byte	0x1
	.long	.LASF65
	.long	.LASF66
	.long	.Ldebug_ranges0+0x30
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF9
	.byte	0x4
	.byte	0xd4
	.long	0x3b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x8
	.long	0x5d
	.uleb128 0x6
	.long	0x62
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF10
	.byte	0x5
	.byte	0x83
	.long	0x29
	.uleb128 0x3
	.long	.LASF11
	.byte	0x5
	.byte	0x84
	.long	0x29
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x62
	.uleb128 0x8
	.long	.LASF41
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x223
	.uleb128 0x9
	.long	.LASF12
	.byte	0x6
	.byte	0xf6
	.long	0x42
	.byte	0
	.uleb128 0x9
	.long	.LASF13
	.byte	0x6
	.byte	0xfb
	.long	0x9d
	.byte	0x8
	.uleb128 0x9
	.long	.LASF14
	.byte	0x6
	.byte	0xfc
	.long	0x9d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF15
	.byte	0x6
	.byte	0xfd
	.long	0x9d
	.byte	0x18
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.byte	0xfe
	.long	0x9d
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.byte	0xff
	.long	0x9d
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.value	0x100
	.long	0x9d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.value	0x101
	.long	0x9d
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.value	0x102
	.long	0x9d
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.value	0x104
	.long	0x9d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.value	0x105
	.long	0x9d
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.value	0x106
	.long	0x9d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.value	0x108
	.long	0x25b
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.value	0x10a
	.long	0x261
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.value	0x10c
	.long	0x42
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.value	0x110
	.long	0x42
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.value	0x112
	.long	0x85
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.value	0x116
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.value	0x117
	.long	0x77
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.value	0x118
	.long	0x267
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.value	0x11c
	.long	0x277
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.value	0x125
	.long	0x90
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.value	0x12e
	.long	0x9b
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.value	0x12f
	.long	0x9b
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.value	0x130
	.long	0x9b
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.value	0x131
	.long	0x9b
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.value	0x132
	.long	0x30
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.value	0x134
	.long	0x42
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.value	0x136
	.long	0x27d
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF67
	.byte	0x6
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF42
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x25b
	.uleb128 0x9
	.long	.LASF43
	.byte	0x6
	.byte	0xa1
	.long	0x25b
	.byte	0
	.uleb128 0x9
	.long	.LASF44
	.byte	0x6
	.byte	0xa2
	.long	0x261
	.byte	0x8
	.uleb128 0x9
	.long	.LASF45
	.byte	0x6
	.byte	0xa6
	.long	0x42
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x22a
	.uleb128 0x5
	.byte	0x8
	.long	0xa3
	.uleb128 0xc
	.long	0x62
	.long	0x277
	.uleb128 0xd
	.long	0x49
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x223
	.uleb128 0xc
	.long	0x62
	.long	0x28d
	.uleb128 0xd
	.long	0x49
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF41
	.byte	0x6
	.value	0x13b
	.long	0xa3
	.uleb128 0xf
	.long	.LASF68
	.byte	0x2
	.byte	0x66
	.long	0x42
	.byte	0x3
	.long	0x2b6
	.uleb128 0x10
	.long	.LASF46
	.byte	0x2
	.byte	0x66
	.long	0x57
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.long	.LASF59
	.byte	0x3
	.byte	0x4f
	.long	0x42
	.byte	0x3
	.long	0x2d2
	.uleb128 0x13
	.string	"__c"
	.byte	0x3
	.byte	0x4f
	.long	0x42
	.byte	0
	.uleb128 0x14
	.long	.LASF51
	.byte	0x1
	.byte	0x1b
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x320
	.uleb128 0x15
	.long	.LASF47
	.byte	0x1
	.byte	0x1b
	.long	0x57
	.long	.LLST0
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.long	0x30
	.long	.LLST1
	.uleb128 0x17
	.quad	.LVL1
	.long	0x5ee
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF69
	.byte	0x1
	.byte	0x2b
	.long	0x9d
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c7
	.uleb128 0x15
	.long	.LASF47
	.byte	0x1
	.byte	0x2b
	.long	0x57
	.long	.LLST2
	.uleb128 0x1a
	.long	.LASF48
	.byte	0x1
	.byte	0x2d
	.long	0x30
	.long	.LLST3
	.uleb128 0x16
	.string	"pos"
	.byte	0x1
	.byte	0x2e
	.long	0x30
	.long	.LLST4
	.uleb128 0x1a
	.long	.LASF49
	.byte	0x1
	.byte	0x2f
	.long	0x9d
	.long	.LLST5
	.uleb128 0x1a
	.long	.LASF50
	.byte	0x1
	.byte	0x30
	.long	0x30
	.long	.LLST6
	.uleb128 0x1b
	.quad	.LVL10
	.long	0x5ee
	.long	0x3a4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.quad	.LVL23
	.long	0x604
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF52
	.byte	0x1
	.byte	0x48
	.long	0x42
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x569
	.uleb128 0x1a
	.long	.LASF49
	.byte	0x1
	.byte	0x4a
	.long	0x9d
	.long	.LLST7
	.uleb128 0x1d
	.long	.LASF53
	.byte	0x1
	.byte	0x4b
	.long	0x569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x1d
	.long	.LASF54
	.byte	0x1
	.byte	0x62
	.long	0x579
	.uleb128 0x3
	.byte	0x91
	.sleb128 -992
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x93
	.long	0x42
	.long	.LLST8
	.uleb128 0x1e
	.long	0x299
	.quad	.LBB8
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x99
	.long	0x4b9
	.uleb128 0x1f
	.long	0x2a9
	.long	.LLST9
	.uleb128 0x1b
	.quad	.LVL34
	.long	0x623
	.long	0x47f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC109
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC110
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.quad	.LVL43
	.long	0x623
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC109
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC108
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x299
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.byte	0x1
	.byte	0x9c
	.long	0x504
	.uleb128 0x1f
	.long	0x2a9
	.long	.LLST10
	.uleb128 0x17
	.quad	.LVL35
	.long	0x623
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC111
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2b6
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.byte	0x1
	.byte	0x9d
	.long	0x53c
	.uleb128 0x1f
	.long	0x2c6
	.long	.LLST11
	.uleb128 0x17
	.quad	.LVL36
	.long	0x63e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL38
	.long	0x2d2
	.long	0x554
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.quad	.LVL39
	.long	0x320
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x9d
	.long	0x579
	.uleb128 0xd
	.long	0x49
	.byte	0x39
	.byte	0
	.uleb128 0xc
	.long	0x9d
	.long	0x589
	.uleb128 0xd
	.long	0x49
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.long	0x30
	.long	0x599
	.uleb128 0xd
	.long	0x49
	.byte	0xff
	.byte	0
	.uleb128 0x1d
	.long	.LASF55
	.byte	0x1
	.byte	0x13
	.long	0x589
	.uleb128 0x9
	.byte	0x3
	.quad	table
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.byte	0x14
	.long	0x30
	.uleb128 0x9
	.byte	0x3
	.quad	len
	.uleb128 0x1d
	.long	.LASF56
	.byte	0x1
	.byte	0x15
	.long	0x9d
	.uleb128 0x9
	.byte	0x3
	.quad	findme
	.uleb128 0x22
	.long	.LASF57
	.byte	0x7
	.byte	0xa8
	.long	0x261
	.uleb128 0x22
	.long	.LASF58
	.byte	0x7
	.byte	0xa9
	.long	0x261
	.uleb128 0x23
	.long	.LASF60
	.byte	0x8
	.value	0x18f
	.long	0x30
	.long	0x604
	.uleb128 0x24
	.long	0x57
	.byte	0
	.uleb128 0x25
	.long	.LASF61
	.byte	0x8
	.byte	0x93
	.long	0x42
	.long	0x623
	.uleb128 0x24
	.long	0x57
	.uleb128 0x24
	.long	0x57
	.uleb128 0x24
	.long	0x30
	.byte	0
	.uleb128 0x25
	.long	.LASF62
	.byte	0x2
	.byte	0x57
	.long	0x42
	.long	0x63e
	.uleb128 0x24
	.long	0x42
	.uleb128 0x24
	.long	0x57
	.uleb128 0x11
	.byte	0
	.uleb128 0x23
	.long	.LASF63
	.byte	0x6
	.value	0x1b3
	.long	0x42
	.long	0x659
	.uleb128 0x24
	.long	0x42
	.uleb128 0x24
	.long	0x659
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x28d
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL1-1
	.value	0x1
	.byte	0x55
	.quad	.LVL1-1
	.quad	.LVL8
	.value	0x1
	.byte	0x53
	.quad	.LVL8
	.quad	.LFE24
	.value	0x9
	.byte	0x3
	.quad	findme
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL2
	.quad	.LVL4
	.value	0x1
	.byte	0x51
	.quad	.LVL4
	.quad	.LVL5
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL5
	.quad	.LVL7
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL9
	.quad	.LVL10-1
	.value	0x1
	.byte	0x55
	.quad	.LVL10-1
	.quad	.LVL19
	.value	0x1
	.byte	0x5e
	.quad	.LVL19
	.quad	.LVL21
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL21
	.quad	.LVL29
	.value	0x1
	.byte	0x5e
	.quad	.LVL29
	.quad	.LFE25
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL13
	.quad	.LVL14
	.value	0xe
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.quad	table
	.byte	0x22
	.quad	.LVL15
	.quad	.LVL16
	.value	0xe
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.quad	table
	.byte	0x22
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL11
	.quad	.LVL18
	.value	0x1
	.byte	0x53
	.quad	.LVL21
	.quad	.LVL27
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL22
	.quad	.LVL25
	.value	0x1
	.byte	0x56
	.quad	.LVL25
	.quad	.LVL26
	.value	0xb
	.byte	0x7e
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL26
	.quad	.LVL28
	.value	0x1
	.byte	0x56
	.quad	.LVL28
	.quad	.LFE25
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL11
	.quad	.LVL12
	.value	0x1
	.byte	0x50
	.quad	.LVL12
	.quad	.LVL20
	.value	0x1
	.byte	0x5f
	.quad	.LVL21
	.quad	.LVL30
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL32
	.quad	.LVL33
	.value	0x1
	.byte	0x50
	.quad	.LVL33
	.quad	.LVL37
	.value	0x1
	.byte	0x5d
	.quad	.LVL40
	.quad	.LVL42
	.value	0x1
	.byte	0x50
	.quad	.LVL42
	.quad	.LVL44
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL31
	.quad	.LVL32
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL32
	.quad	.LVL37
	.value	0xa
	.byte	0x3
	.quad	.LC109
	.byte	0x9f
	.quad	.LVL41
	.quad	.LVL44
	.value	0xa
	.byte	0x3
	.quad	.LC109
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL34
	.quad	.LVL35
	.value	0xa
	.byte	0x3
	.quad	.LC111
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL35
	.quad	.LVL37
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB8
	.quad	.LBE8
	.quad	.LBB15
	.quad	.LBE15
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB50
	.quad	.LFE50
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"_IO_buf_end"
.LASF50:
	.string	"limit"
.LASF28:
	.string	"_old_offset"
.LASF62:
	.string	"__printf_chk"
.LASF63:
	.string	"_IO_putc"
.LASF53:
	.string	"find_strings"
.LASF23:
	.string	"_IO_save_end"
.LASF8:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF2:
	.string	"sizetype"
.LASF33:
	.string	"_offset"
.LASF59:
	.string	"putchar"
.LASF17:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"_flags"
.LASF19:
	.string	"_IO_buf_base"
.LASF61:
	.string	"strncmp"
.LASF56:
	.string	"findme"
.LASF24:
	.string	"_markers"
.LASF14:
	.string	"_IO_read_end"
.LASF55:
	.string	"table"
.LASF49:
	.string	"here"
.LASF32:
	.string	"_lock"
.LASF0:
	.string	"long int"
.LASF48:
	.string	"shift"
.LASF47:
	.string	"string"
.LASF68:
	.string	"printf"
.LASF29:
	.string	"_cur_column"
.LASF45:
	.string	"_pos"
.LASF44:
	.string	"_sbuf"
.LASF41:
	.string	"_IO_FILE"
.LASF5:
	.string	"unsigned char"
.LASF7:
	.string	"signed char"
.LASF65:
	.string	"pbmsrch_small.c"
.LASF6:
	.string	"unsigned int"
.LASF42:
	.string	"_IO_marker"
.LASF31:
	.string	"_shortbuf"
.LASF16:
	.string	"_IO_write_base"
.LASF40:
	.string	"_unused2"
.LASF13:
	.string	"_IO_read_ptr"
.LASF3:
	.string	"short unsigned int"
.LASF4:
	.string	"char"
.LASF52:
	.string	"main"
.LASF60:
	.string	"strlen"
.LASF66:
	.string	"/home/yonsei_dclab/yohan/miBench/office/stringsearch"
.LASF43:
	.string	"_next"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF46:
	.string	"__fmt"
.LASF1:
	.string	"long unsigned int"
.LASF64:
	.string	"GNU C 4.8.4 -mtune=generic -march=x86-64 -g -O2 -fstack-protector"
.LASF18:
	.string	"_IO_write_end"
.LASF54:
	.string	"search_strings"
.LASF11:
	.string	"__off64_t"
.LASF10:
	.string	"__off_t"
.LASF51:
	.string	"init_search"
.LASF25:
	.string	"_chain"
.LASF22:
	.string	"_IO_backup_base"
.LASF57:
	.string	"stdin"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF15:
	.string	"_IO_read_base"
.LASF30:
	.string	"_vtable_offset"
.LASF21:
	.string	"_IO_save_base"
.LASF69:
	.string	"strsearch"
.LASF26:
	.string	"_fileno"
.LASF58:
	.string	"stdout"
.LASF67:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
