	.arch armv5t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"pbmsrch_small.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	init_search
	.type	init_search, %function
init_search:
.LFB22:
	.file 1 "pbmsrch_small.c"
	.loc 1 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	stmfd	sp!, {r3, r4, r5, lr}
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 28 0
	mov	r4, r0
	.loc 1 31 0
	bl	strlen
.LVL1:
	ldr	r3, .L10
	mov	ip, r3
	str	r0, [r3, #0]
.LVL2:
	.loc 1 27 0
	add	r2, r3, #1024
.LVL3:
.L2:
	.loc 1 33 0 discriminator 2
	str	r0, [r3, #4]!
	.loc 1 32 0 discriminator 2
	cmp	r3, r2
	bne	.L2
.LVL4:
	.loc 1 34 0 discriminator 1
	cmp	r0, #0
	subne	r5, r0, #1
	movne	r3, #0
	beq	.L5
.LVL5:
.L4:
	.loc 1 35 0 discriminator 2
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	.loc 1 27 0 discriminator 2
	rsb	r1, r3, r5
	.loc 1 34 0 discriminator 2
	add	r3, r3, #1
.LVL6:
	.loc 1 35 0 discriminator 2
	add	r2, ip, r2, asl #2
	.loc 1 34 0 discriminator 2
	cmp	r3, r0
	.loc 1 35 0 discriminator 2
	str	r1, [r2, #4]
	.loc 1 34 0 discriminator 2
	bne	.L4
.LVL7:
.L5:
	.loc 1 36 0
	str	r4, [ip, #1028]
	ldmfd	sp!, {r3, r4, r5, pc}
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.cfi_endproc
.LFE22:
	.size	init_search, .-init_search
	.align	2
	.global	strsearch
	.type	strsearch, %function
strsearch:
.LFB23:
	.loc 1 44 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL8:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
.LCFI1:
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 44 0
	mov	r7, r0
	.loc 1 48 0
	bl	strlen
.LVL9:
	.loc 1 46 0
	ldr	r8, .L29
	.loc 1 48 0
	mov	r6, r0
	.loc 1 46 0
	ldr	r9, [r8, #0]
	sub	r4, r9, #1
.LVL10:
	.loc 1 50 0
	cmp	r4, r0
	bcs	.L22
	.loc 1 52 0
	cmp	r0, r4
	.loc 1 59 0
	ldr	sl, [r8, #1028]
	.loc 1 52 0
	bhi	.L28
.LVL11:
.L15:
	.loc 1 57 0
	cmp	r5, #0
	beq	.L20
.LVL12:
	.loc 1 50 0 discriminator 1
	cmp	r6, r4
	bhi	.L28
	b	.L22
.LVL13:
.L25:
	.loc 1 55 0
	add	r4, r4, r5
.LVL14:
	.loc 1 52 0
	cmp	r6, r4
	bls	.L15
.LVL15:
.L28:
	.loc 1 53 0
	ldrb	r3, [r7, r4]	@ zero_extendqisi2
	add	r3, r8, r3, asl #2
	ldr	r5, [r3, #4]
.LVL16:
	.loc 1 52 0
	cmp	r5, #0
	bne	.L25
.L20:
	.loc 1 59 0
	rsb	r5, r9, #1
.LVL17:
	add	r5, r5, r4
	add	r5, r7, r5
.LVL18:
	mov	r1, r5
	mov	r0, sl
	mov	r2, r9
	bl	strncmp
.LVL19:
	cmp	r0, #0
	beq	.L13
	.loc 1 64 0
	add	r4, r4, #1
.LVL20:
	.loc 1 50 0
	cmp	r6, r4
	bhi	.L28
.LVL21:
.L22:
	.loc 1 67 0
	mov	r5, #0
.L13:
	.loc 1 68 0
	mov	r0, r5
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L30:
	.align	2
.L29:
	.word	.LANCHOR0
	.cfi_endproc
.LFE23:
	.size	strsearch, .-strsearch
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
.LFB48:
	.loc 1 73 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 480
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.LCFI2:
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #492
.LCFI3:
	.cfi_def_cfa_offset 528
	.loc 1 75 0
	ldr	r1, .L60
	mov	r2, #232
	add	r0, sp, #256
	bl	memcpy
.LVL22:
	.loc 1 98 0
	add	r0, sp, #28
	ldr	r1, .L60+4
	mov	r2, #228
	bl	memcpy
.LVL23:
	.loc 1 149 0
	ldr	r9, [sp, #256]
	cmp	r9, #0
	beq	.L58
	ldr	r2, .L60+8
	add	r3, sp, #256
	str	r2, [sp, #12]
	mov	r5, r2
.LBB18:
.LBB19:
	.loc 1 72 0
	add	fp, r2, #1024
.LBE19:
.LBE18:
	.loc 1 149 0
	mov	r2, #0
	str	r3, [sp, #20]
	str	r2, [sp, #16]
.LVL24:
.L46:
.LBB23:
.LBB20:
	.loc 1 31 0
	mov	r0, r9
	bl	strlen
.LVL25:
	ldr	r3, [sp, #12]
	ldr	r2, .L60+8
	mov	sl, r0
	str	r0, [r3, #0]
.LVL26:
	str	r2, [sp, #12]
.LVL27:
.L33:
	.loc 1 33 0
@fdfghhjj	str	sl, [r2, #4]!
	.loc 1 32 0
@	cmp	r2, fp
@	bne	.L33
.LVL28:
	.loc 1 34 0
	cmp	sl, #0
	beq	.L34
	sub	r4, sl, #1
	mov	r2, #0
.LVL29:
.L35:
	.loc 1 35 0
	ldrb	r3, [r9, r2]	@ zero_extendqisi2
	.loc 1 72 0
	rsb	r1, r2, r4
	.loc 1 34 0
	add	r2, r2, #1
.LVL30:
	.loc 1 35 0
	add	r3, r5, r3, asl #2
	.loc 1 34 0
	cmp	r2, sl
	.loc 1 35 0
	str	r1, [r3, #4]
	ldr	r1, .L60+8
	.loc 1 34 0
	bne	.L35
.LBE20:
.LBE23:
	.loc 1 152 0
	ldr	r3, [sp, #16]
	add	r2, sp, #28
.LVL31:
	ldr	r6, [r2, r3]
.LVL32:
.LBB24:
.LBB21:
	.loc 1 36 0
	str	r9, [r1, #1028]
.LBE21:
.LBE24:
.LBB25:
.LBB26:
	.loc 1 48 0
	mov	r0, r6
	bl	strlen
.LVL33:
	.loc 1 50 0
	cmp	r0, r4
	.loc 1 59 0
	rsbhi	r3, sl, #1
	.loc 1 48 0
	mov	r7, r0
.LVL34:
	.loc 1 59 0
	strhi	r3, [sp, #8]
	movhi	r8, r0
	.loc 1 50 0
	bhi	.L51
	b	.L37
.LVL35:
.L52:
	.loc 1 55 0
	add	r4, r4, r3
.LVL36:
	.loc 1 52 0
	cmp	r8, r4
	bls	.L38
.LVL37:
.L51:
	.loc 1 53 0
	ldrb	r3, [r6, r4]	@ zero_extendqisi2
	add	r3, r5, r3, asl #2
	ldr	r3, [r3, #4]
.LVL38:
	.loc 1 52 0
	cmp	r3, #0
	bne	.L52
.L48:
	.loc 1 59 0
	ldr	r2, [sp, #8]
	mov	r0, r9
	add	r3, r2, r4
.LVL39:
	add	r7, r6, r3
.LVL40:
	mov	r1, r7
	mov	r2, sl
	bl	strncmp
.LVL41:
	cmp	r0, #0
	beq	.L42
	.loc 1 64 0
	add	r4, r4, #1
.LVL42:
.L41:
	.loc 1 50 0
	cmp	r8, r4
	bhi	.L51
.LVL43:
.L37:
.LBE26:
.LBE25:
.LBB28:
.LBB29:
	.file 2 "/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h"
	.loc 2 104 0
	str	r6, [sp, #0]
	mov	r2, r9
	mov	r0, #1
	ldr	r1, .L60+12
	ldr	r3, .L60+16
	bl	__printf_chk
.LVL44:
.L49:
.LBE29:
.LBE28:
.LBB31:
.LBB32:
	.file 3 "/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio.h"
	.loc 3 81 0
	ldr	r2, .L60+20
	mov	r0, #10
	ldr	r1, [r2, #0]
	bl	_IO_putc
.LVL45:
.LBE32:
.LBE31:
	.loc 1 149 0
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #16]
	ldr	r9, [r3, #4]!
.LVL46:
	add	r2, r2, #4
	cmp	r9, #0
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	bne	.L46
.LVL47:
.L58:
	.loc 1 161 0
	mov	r0, #0
	add	sp, sp, #492
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.LVL48:
.L38:
.LBB33:
.LBB27:
	.loc 1 57 0
	cmp	r3, #0
	bne	.L41
	b	.L48
.LVL49:
.L42:
.LBE27:
.LBE33:
	.loc 1 153 0
	cmp	r7, #0
	mov	r8, r7
	beq	.L37
.LVL50:
.LBB34:
.LBB30:
	.loc 2 104 0
	mov	r2, r9
	str	r6, [sp, #0]
	ldr	r1, .L60+12
	ldr	r3, .L60+24
	mov	r0, #1
	bl	__printf_chk
.LVL51:
.LBE30:
.LBE34:
.LBB35:
.LBB36:
	mov	r2, r7
	ldr	r1, .L60+28
	mov	r0, #1
	bl	__printf_chk
.LVL52:
	b	.L49
.LVL53:
.L34:
.LBE36:
.LBE35:
	.loc 1 152 0
	ldr	r3, [sp, #16]
	add	r2, sp, #28
.LBB37:
.LBB22:
	.loc 1 36 0
	str	r9, [r5, #1028]
.LBE22:
.LBE37:
	.loc 1 152 0
	ldr	r6, [r2, r3]
.LVL54:
	b	.L37
.L61:
	.align	2
.L60:
	.word	.LANCHOR1
	.word	.LANCHOR1+232
	.word	.LANCHOR0
	.word	.LC108
	.word	.LC109
	.word	stdout
	.word	.LC110
	.word	.LC111
	.cfi_endproc
.LFE48:
	.size	main, .-main
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
.LC106:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC9
	.word	.LC10
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC26
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC18
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	0
.LC107:
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC59
	.word	.LC59
	.word	.LC59
	.word	.LC59
	.word	.LC9
	.word	.LC10
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.word	.LC74
	.word	.LC75
	.word	.LC76
	.word	.LC77
	.word	.LC78
	.word	.LC79
	.word	.LC80
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC84
	.word	.LC85
	.word	.LC86
	.word	.LC87
	.word	.LC88
	.word	.LC89
	.word	.LC90
	.word	.LC91
	.word	.LC92
	.word	.LC93
	.word	.LC94
	.word	.LC95
	.word	.LC96
	.word	.LC97
	.word	.LC98
	.word	.LC99
	.word	.LC100
	.word	.LC101
	.word	.LC102
	.word	.LC103
	.word	.LC104
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC108:
	.ascii	"\"%s\" is%s in \"%s\"\000"
	.space	2
.LC109:
	.ascii	" not\000"
	.space	3
.LC110:
	.ascii	"\000"
	.space	3
.LC111:
	.ascii	" [\"%s\"]\000"
.LC0:
	.ascii	"abb\000"
.LC1:
	.ascii	"you\000"
.LC2:
	.ascii	"not\000"
.LC3:
	.ascii	"it\000"
	.space	1
.LC4:
	.ascii	"dad\000"
.LC5:
	.ascii	"yoo\000"
.LC6:
	.ascii	"hoo\000"
.LC7:
	.ascii	"oo\000"
	.space	1
.LC8:
	.ascii	"oh\000"
	.space	1
.LC9:
	.ascii	"xx\000"
	.space	1
.LC10:
	.ascii	"x\000"
	.space	2
.LC11:
	.ascii	"field\000"
	.space	2
.LC12:
	.ascii	"new\000"
.LC13:
	.ascii	"row\000"
.LC14:
	.ascii	"regime\000"
	.space	1
.LC15:
	.ascii	"boom\000"
	.space	3
.LC16:
	.ascii	"that\000"
	.space	3
.LC17:
	.ascii	"impact\000"
	.space	1
.LC18:
	.ascii	"and\000"
.LC19:
	.ascii	"zoom\000"
	.space	3
.LC20:
	.ascii	"texture\000"
.LC21:
	.ascii	"magnet\000"
	.space	1
.LC22:
	.ascii	"doom\000"
	.space	3
.LC23:
	.ascii	"loom\000"
	.space	3
.LC24:
	.ascii	"freq\000"
	.space	3
.LC25:
	.ascii	"current\000"
.LC26:
	.ascii	"phase\000"
	.space	2
.LC27:
	.ascii	"images\000"
	.space	1
.LC28:
	.ascii	"appears\000"
.LC29:
	.ascii	"conductor\000"
	.space	2
.LC30:
	.ascii	"wavez\000"
	.space	2
.LC31:
	.ascii	"normal\000"
	.space	1
.LC32:
	.ascii	"free\000"
	.space	3
.LC33:
	.ascii	"termed\000"
	.space	1
.LC34:
	.ascii	"provide\000"
.LC35:
	.ascii	"for\000"
.LC36:
	.ascii	"struct\000"
	.space	1
.LC37:
	.ascii	"about\000"
	.space	2
.LC38:
	.ascii	"have\000"
	.space	3
.LC39:
	.ascii	"proper\000"
	.space	1
.LC40:
	.ascii	"involve\000"
.LC41:
	.ascii	"describedly\000"
.LC42:
	.ascii	"thats\000"
	.space	2
.LC43:
	.ascii	"spaces\000"
	.space	1
.LC44:
	.ascii	"circumstance\000"
	.space	3
.LC45:
	.ascii	"the\000"
.LC46:
	.ascii	"member\000"
	.space	1
.LC47:
	.ascii	"such\000"
	.space	3
.LC48:
	.ascii	"guide\000"
	.space	2
.LC49:
	.ascii	"regard\000"
	.space	1
.LC50:
	.ascii	"officers\000"
	.space	3
.LC51:
	.ascii	"implement\000"
	.space	2
.LC52:
	.ascii	"principalities\000"
	.space	1
.LC54:
	.ascii	"cabbie\000"
	.space	1
.LC55:
	.ascii	"your\000"
	.space	3
.LC56:
	.ascii	"It isn't here\000"
	.space	2
.LC57:
	.ascii	"But it is here\000"
	.space	1
.LC58:
	.ascii	"hodad\000"
	.space	2
.LC59:
	.ascii	"yoohoo\000"
	.space	1
.LC60:
	.ascii	".\000"
	.space	2
.LC61:
	.ascii	"In recent years, the field of photonic \000"
.LC62:
	.ascii	"crystals has found new\000"
	.space	1
.LC63:
	.ascii	"applications in the RF and microwave\000"
	.space	3
.LC64:
	.ascii	"regime. A new type of metallic\000"
	.space	1
.LC65:
	.ascii	"electromagnetic crystal has been\000"
	.space	3
.LC66:
	.ascii	"developed that is having a\000"
	.space	1
.LC67:
	.ascii	"significant impact on the field of\000"
	.space	1
.LC68:
	.ascii	"antennas. It consists of a\000"
	.space	1
.LC69:
	.ascii	"conductive surface, covered with a\000"
	.space	1
.LC70:
	.ascii	"special texture which alters its\000"
	.space	3
.LC71:
	.ascii	"electromagnetic properties. Made of solid\000"
	.space	2
.LC72:
	.ascii	"metal, the structure\000"
	.space	3
.LC73:
	.ascii	"conducts DC currents, but over a\000"
	.space	3
.LC74:
	.ascii	"particular frequency range it does\000"
	.space	1
.LC75:
	.ascii	"not conduct AC currents. It does not\000"
	.space	3
.LC76:
	.ascii	"reverse the phase of reflected\000"
	.space	1
.LC77:
	.ascii	"waves, and the effective image currents\000"
.LC78:
	.ascii	"appear in-phase, rather than\000"
	.space	3
.LC79:
	.ascii	"out-of-phase as they are on normal\000"
	.space	1
.LC80:
	.ascii	"conductors. Furthermore, surface\000"
	.space	3
.LC81:
	.ascii	"waves do not propagate, and instead\000"
.LC82:
	.ascii	"radiate efficiently into free\000"
	.space	2
.LC83:
	.ascii	"space. This new material, termed a\000"
	.space	1
.LC84:
	.ascii	"high-impedance surface, provides\000"
	.space	3
.LC85:
	.ascii	"a useful new ground plane for novel\000"
.LC86:
	.ascii	"low-profile antennas and other\000"
	.space	1
.LC87:
	.ascii	"electromagnetic structures.\000"
.LC88:
	.ascii	"The recent protests about the Michigamua\000"
	.space	3
.LC89:
	.ascii	"student organization have raised an\000"
.LC90:
	.ascii	"important question as to the proper nature\000"
	.space	1
.LC91:
	.ascii	"and scope of University involvement\000"
.LC92:
	.ascii	"with student organizations. Accordingly\000"
.LC93:
	.ascii	"the panel described in my Statement of\000"
	.space	1
.LC94:
	.ascii	"February 25, 2000 that is considering the\000"
	.space	2
.LC95:
	.ascii	"question of privileged space also will\000"
	.space	1
.LC96:
	.ascii	"consider under what circumstances and in\000"
	.space	3
.LC97:
	.ascii	"what ways the University, its\000"
	.space	2
.LC98:
	.ascii	"administrators and faculty members should\000"
	.space	2
.LC99:
	.ascii	"be associated with such organizations\000"
	.space	2
.LC100:
	.ascii	"and it will recommend guiding principles\000"
	.space	3
.LC101:
	.ascii	"in this regard. The University's\000"
	.space	3
.LC102:
	.ascii	"Executive Officers and I will then decide\000"
	.space	2
.LC103:
	.ascii	"whether and how to implement such\000"
	.space	2
.LC104:
	.ascii	"principles.\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	len, %object
	.size	len, 4
len:
	.space	4
	.type	table, %object
	.size	table, 1024
table:
	.space	1024
	.type	findme, %object
	.size	findme, 4
findme:
	.space	4
	.text
.Letext0:
	.file 4 "/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/include/stddef.h"
	.file 5 "/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/types.h"
	.file 6 "/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/libio.h"
	.file 7 "/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/stdio.h"
	.file 8 "/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/string.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x798
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x1
	.4byte	.LASF69
	.4byte	.LASF70
	.4byte	.Ldebug_ranges0+0x98
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0xd5
	.4byte	0x3b
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x56
	.uleb128 0x6
	.4byte	0x5b
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x37
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x83
	.4byte	0xa2
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x84
	.4byte	0x8c
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5b
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x98
	.byte	0x6
	.byte	0xf5
	.4byte	0x276
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x6
	.byte	0xf6
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x6
	.byte	0xfb
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x6
	.byte	0xfc
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0xfd
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x6
	.byte	0xfe
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0xff
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x100
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x101
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x102
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x104
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x105
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x106
	.4byte	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x108
	.4byte	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x10a
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x10c
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x110
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x112
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x116
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x117
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x118
	.4byte	0x2c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x11c
	.4byte	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x125
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x12e
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x12f
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x130
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x131
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x132
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x134
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x136
	.4byte	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x6
	.byte	0x9a
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0xc
	.byte	0x6
	.byte	0xa0
	.4byte	0x2b4
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x6
	.byte	0xa1
	.4byte	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x6
	.byte	0xa2
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x6
	.byte	0xa6
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x27d
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbc
	.uleb128 0xc
	.4byte	0x5b
	.4byte	0x2d0
	.uleb128 0xd
	.4byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x276
	.uleb128 0xc
	.4byte	0x5b
	.4byte	0x2e6
	.uleb128 0xd
	.4byte	0x42
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x13b
	.4byte	0xbc
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF72
	.byte	0x2
	.byte	0x66
	.byte	0x1
	.4byte	0x29
	.byte	0x3
	.byte	0x1
	.4byte	0x312
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x2
	.byte	0x66
	.4byte	0x50
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF51
	.byte	0x3
	.byte	0x4f
	.byte	0x1
	.4byte	0x29
	.byte	0x3
	.4byte	0x330
	.uleb128 0x13
	.ascii	"__c\000"
	.byte	0x3
	.byte	0x4f
	.4byte	0x29
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.byte	0x1
	.4byte	0x353
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.byte	0x1b
	.4byte	0x50
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	0x330
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x38c
	.uleb128 0x17
	.4byte	0x33e
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	0x349
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	.LVL1
	.4byte	0x6f6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0xb6
	.byte	0x1
	.4byte	0x3d6
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.byte	0x2b
	.4byte	0x50
	.uleb128 0x1b
	.4byte	.LASF53
	.byte	0x1
	.byte	0x2d
	.4byte	0x30
	.uleb128 0x15
	.ascii	"pos\000"
	.byte	0x1
	.byte	0x2e
	.4byte	0x30
	.uleb128 0x1b
	.4byte	.LASF54
	.byte	0x1
	.byte	0x2f
	.4byte	0xb6
	.uleb128 0x1b
	.4byte	.LASF55
	.byte	0x1
	.byte	0x30
	.4byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	0x38c
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x448
	.uleb128 0x17
	.4byte	0x39e
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	0x3a9
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	0x3b4
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	0x3bf
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	0x3ca
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LVL9
	.4byte	0x6f6
	.4byte	0x42b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL19
	.4byte	0x70f
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.byte	0x48
	.4byte	0x29
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x679
	.uleb128 0x1f
	.4byte	.LASF54
	.byte	0x1
	.byte	0x4a
	.4byte	0xb6
	.byte	0x1
	.byte	0x58
	.uleb128 0x1f
	.4byte	.LASF56
	.byte	0x1
	.byte	0x4b
	.4byte	0x679
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1f
	.4byte	.LASF57
	.byte	0x1
	.byte	0x62
	.4byte	0x689
	.byte	0x3
	.byte	0x91
	.sleb128 -500
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0x1
	.byte	0x93
	.4byte	0x29
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	0x330
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x97
	.4byte	0x4d9
	.uleb128 0x17
	.4byte	0x33e
	.4byte	.LLST10
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0x18
	.4byte	0x349
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LVL25
	.4byte	0x6f6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x38c
	.4byte	.LBB25
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x98
	.4byte	0x550
	.uleb128 0x17
	.4byte	0x39e
	.4byte	.LLST12
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x68
	.uleb128 0x18
	.4byte	0x3a9
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	0x3b4
	.4byte	.LLST14
	.uleb128 0x18
	.4byte	0x3bf
	.4byte	.LLST15
	.uleb128 0x18
	.4byte	0x3ca
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LVL33
	.4byte	0x6f6
	.4byte	0x532
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL41
	.4byte	0x70f
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x2f2
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x99
	.4byte	0x5cd
	.uleb128 0x17
	.4byte	0x305
	.4byte	.LLST17
	.uleb128 0x1d
	.4byte	.LVL44
	.4byte	0x731
	.4byte	0x59e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x53
	.byte	0x5
	.byte	0x3
	.4byte	.LC109
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	.LC108
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL51
	.4byte	0x731
	.uleb128 0x1a
	.byte	0x1
	.byte	0x53
	.byte	0x5
	.byte	0x3
	.4byte	.LC110
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	.LC108
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x312
	.4byte	.LBB31
	.4byte	.LBE31
	.byte	0x1
	.byte	0x9d
	.4byte	0x5f9
	.uleb128 0x17
	.4byte	0x324
	.4byte	.LLST18
	.uleb128 0x19
	.4byte	.LVL45
	.4byte	0x74f
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x2f2
	.4byte	.LBB35
	.4byte	.LBE35
	.byte	0x1
	.byte	0x9c
	.4byte	0x634
	.uleb128 0x17
	.4byte	0x305
	.4byte	.LLST19
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0x731
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	.LC111
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL22
	.4byte	0x773
	.4byte	0x658
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x8
	.byte	0xe8
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0x773
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x8
	.byte	0xe4
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1+232
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x91
	.sleb128 -508
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xb6
	.4byte	0x689
	.uleb128 0xd
	.4byte	0x42
	.byte	0x39
	.byte	0
	.uleb128 0xc
	.4byte	0xb6
	.4byte	0x699
	.uleb128 0xd
	.4byte	0x42
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x6a9
	.uleb128 0xd
	.4byte	0x42
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.byte	0x13
	.4byte	0x699
	.byte	0x5
	.byte	0x3
	.4byte	table
	.uleb128 0x24
	.ascii	"len\000"
	.byte	0x1
	.byte	0x14
	.4byte	0x30
	.byte	0x5
	.byte	0x3
	.4byte	len
	.uleb128 0x1f
	.4byte	.LASF59
	.byte	0x1
	.byte	0x15
	.4byte	0xb6
	.byte	0x5
	.byte	0x3
	.4byte	findme
	.uleb128 0x25
	.4byte	.LASF60
	.byte	0x7
	.byte	0xa8
	.4byte	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF61
	.byte	0x7
	.byte	0xa9
	.4byte	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x18f
	.byte	0x1
	.4byte	0x30
	.byte	0x1
	.4byte	0x70f
	.uleb128 0x27
	.4byte	0x50
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF63
	.byte	0x8
	.byte	0x93
	.byte	0x1
	.4byte	0x29
	.byte	0x1
	.4byte	0x731
	.uleb128 0x27
	.4byte	0x50
	.uleb128 0x27
	.4byte	0x50
	.uleb128 0x27
	.4byte	0x30
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF64
	.byte	0x2
	.byte	0x57
	.byte	0x1
	.4byte	0x29
	.byte	0x1
	.4byte	0x74f
	.uleb128 0x27
	.4byte	0x29
	.uleb128 0x27
	.4byte	0x50
	.uleb128 0x11
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x1b3
	.byte	0x1
	.4byte	0x29
	.byte	0x1
	.4byte	0x76d
	.uleb128 0x27
	.4byte	0x29
	.uleb128 0x27
	.4byte	0x76d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2e6
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.4byte	0xb4
	.byte	0x1
	.byte	0x1
	.4byte	0x794
	.uleb128 0x27
	.4byte	0xb4
	.uleb128 0x27
	.4byte	0x794
	.uleb128 0x27
	.4byte	0x42
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x79a
	.uleb128 0x2a
	.byte	0
	.section	.debug_abbrev,"",%progbits
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
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0xa
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
	.uleb128 0xa
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
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0xc
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
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB22
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE22
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-1
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB23
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-1
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB48
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI3
	.4byte	.LFE48
	.2byte	0x3
	.byte	0x7d
	.sleb128 528
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL54
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL54
	.4byte	.LFE48
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x3
	.4byte	.LC108
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x3
	.4byte	.LC108
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x3
	.4byte	.LC111
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF23:
	.ascii	"_IO_buf_end\000"
.LASF55:
	.ascii	"limit\000"
.LASF11:
	.ascii	"__quad_t\000"
.LASF31:
	.ascii	"_old_offset\000"
.LASF64:
	.ascii	"__printf_chk\000"
.LASF65:
	.ascii	"_IO_putc\000"
.LASF56:
	.ascii	"find_strings\000"
.LASF26:
	.ascii	"_IO_save_end\000"
.LASF7:
	.ascii	"short int\000"
.LASF10:
	.ascii	"size_t\000"
.LASF1:
	.ascii	"sizetype\000"
.LASF36:
	.ascii	"_offset\000"
.LASF51:
	.ascii	"putchar\000"
.LASF20:
	.ascii	"_IO_write_ptr\000"
.LASF15:
	.ascii	"_flags\000"
.LASF67:
	.ascii	"memcpy\000"
.LASF22:
	.ascii	"_IO_buf_base\000"
.LASF63:
	.ascii	"strncmp\000"
.LASF59:
	.ascii	"findme\000"
.LASF27:
	.ascii	"_markers\000"
.LASF17:
	.ascii	"_IO_read_end\000"
.LASF58:
	.ascii	"table\000"
.LASF8:
	.ascii	"long long int\000"
.LASF54:
	.ascii	"here\000"
.LASF35:
	.ascii	"_lock\000"
.LASF13:
	.ascii	"long int\000"
.LASF53:
	.ascii	"shift\000"
.LASF50:
	.ascii	"string\000"
.LASF72:
	.ascii	"printf\000"
.LASF32:
	.ascii	"_cur_column\000"
.LASF48:
	.ascii	"_pos\000"
.LASF47:
	.ascii	"_sbuf\000"
.LASF44:
	.ascii	"_IO_FILE\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF6:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF69:
	.ascii	"pbmsrch_small.c\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF45:
	.ascii	"_IO_marker\000"
.LASF34:
	.ascii	"_shortbuf\000"
.LASF68:
	.ascii	"GNU C 4.7.3\000"
.LASF19:
	.ascii	"_IO_write_base\000"
.LASF43:
	.ascii	"_unused2\000"
.LASF16:
	.ascii	"_IO_read_ptr\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF3:
	.ascii	"char\000"
.LASF73:
	.ascii	"main\000"
.LASF62:
	.ascii	"strlen\000"
.LASF70:
	.ascii	"/home/yonsei_dclab/yohan/miBench/office/stringsearc"
	.ascii	"h\000"
.LASF46:
	.ascii	"_next\000"
.LASF37:
	.ascii	"__pad1\000"
.LASF38:
	.ascii	"__pad2\000"
.LASF39:
	.ascii	"__pad3\000"
.LASF40:
	.ascii	"__pad4\000"
.LASF41:
	.ascii	"__pad5\000"
.LASF49:
	.ascii	"__fmt\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF21:
	.ascii	"_IO_write_end\000"
.LASF57:
	.ascii	"search_strings\000"
.LASF14:
	.ascii	"__off64_t\000"
.LASF12:
	.ascii	"__off_t\000"
.LASF66:
	.ascii	"init_search\000"
.LASF28:
	.ascii	"_chain\000"
.LASF25:
	.ascii	"_IO_backup_base\000"
.LASF60:
	.ascii	"stdin\000"
.LASF30:
	.ascii	"_flags2\000"
.LASF42:
	.ascii	"_mode\000"
.LASF18:
	.ascii	"_IO_read_base\000"
.LASF33:
	.ascii	"_vtable_offset\000"
.LASF24:
	.ascii	"_IO_save_base\000"
.LASF52:
	.ascii	"strsearch\000"
.LASF29:
	.ascii	"_fileno\000"
.LASF61:
	.ascii	"stdout\000"
.LASF71:
	.ascii	"_IO_lock_t\000"
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-12ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",%progbits
