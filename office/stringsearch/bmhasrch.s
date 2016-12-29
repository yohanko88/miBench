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
	.file	"bmhasrch.c"
	.text
	.align	2
	.global	bmha_init
	.type	bmha_init, %function
bmha_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	sl, .L19
	mov	r4, r0
	str	r0, [sl, #0]
	bl	strlen
	ldr	r8, .L19+4
	ldr	r1, .L19+8
	str	r0, [sl, #4]
	mov	r9, r0
	sub	r5, r0, #1
	add	r7, sl, #8
	mov	r6, #0
.L8:
	cmp	r5, #0
	str	r0, [r7], #4
	blt	.L14
	ldrb	r3, [r4, r5]	@ zero_extendqisi2
	ldrb	ip, [r1, r6]	@ zero_extendqisi2
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r3, ip
	mov	r3, r5
	bne	.L5
	b	.L3
.L6:
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	cmp	r2, ip
	beq	.L3
.L5:
	subs	r3, r3, #1
	bcs	.L6
.L13:
	cmp	r3, r5
	add	r6, r6, #1
	streq	r8, [r7, #-4]
	cmp	r6, #256
	bne	.L8
	cmp	r5, #0
	str	r0, [sl, #1032]
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	add	r0, r4, r0
	ldrb	r2, [r0, #-1]	@ zero_extendqisi2
	ldr	r1, .L19+8
	mov	r3, #0
	ldrb	r0, [r1, r2]	@ zero_extendqisi2
.L11:
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	cmp	r2, r0
	rsbeq	r9, r3, r5
	add	r3, r3, #1
	cmp	r3, r5
	bne	.L11
	str	r9, [sl, #1032]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L3:
	rsb	r2, r3, r0
	sub	r2, r2, #1
	str	r2, [r7, #-4]
	b	.L13
.L14:
	mov	r3, r5
	b	.L13
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.word	32767
	.word	.LANCHOR1
	.size	bmha_init, .-bmha_init
	.align	2
	.global	bmha_search
	.type	bmha_search, %function
bmha_search:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	ldr	r5, .L37
	ldr	r7, [r5, #4]
	sub	r7, r7, #1
	subs	r3, r7, r1
	bpl	.L29
	rsb	sl, r1, #32512
	ldr	r6, [r5, #0]
	ldr	r8, [r5, #1032]
	ldr	ip, .L37+4
	add	r4, r0, r1
	add	sl, sl, #255
.L35:
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	add	r2, r5, r2, asl #2
	ldr	r2, [r2, #8]
	adds	r3, r3, r2
	bmi	.L35
	cmp	sl, r3
	bgt	.L29
	sub	r3, r3, #32512
	sub	r3, r3, #255
	rsb	r0, r7, r3
	add	r0, r4, r0
	mov	r2, r7
.L24:
	subs	r2, r2, #1
	bmi	.L31
	ldrb	r9, [r0, r2]	@ zero_extendqisi2
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldrb	r9, [ip, r9]	@ zero_extendqisi2
	ldrb	r1, [ip, r1]	@ zero_extendqisi2
	cmp	r9, r1
	beq	.L24
	adds	r3, r3, r8
	bmi	.L35
.L29:
	mov	r0, #0
.L31:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	bx	lr
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	bmha_search, .-bmha_search
	.global	lowervec
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	lowervec, %object
	.size	lowervec, 256
lowervec:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	62
	.byte	63
	.byte	64
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	91
	.byte	92
	.byte	93
	.byte	94
	.byte	95
	.byte	96
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	123
	.byte	124
	.byte	125
	.byte	126
	.byte	127
	.byte	99
	.byte	117
	.byte	101
	.byte	97
	.byte	97
	.byte	97
	.byte	97
	.byte	99
	.byte	101
	.byte	101
	.byte	101
	.byte	105
	.byte	105
	.byte	105
	.byte	97
	.byte	97
	.byte	101
	.byte	-111
	.byte	-110
	.byte	111
	.byte	111
	.byte	111
	.byte	117
	.byte	117
	.byte	121
	.byte	111
	.byte	117
	.byte	-101
	.byte	-100
	.byte	-99
	.byte	-98
	.byte	-97
	.byte	97
	.byte	105
	.byte	111
	.byte	117
	.byte	110
	.byte	110
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-85
	.byte	-84
	.byte	-83
	.byte	-82
	.byte	-81
	.byte	-80
	.byte	-79
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-69
	.byte	-68
	.byte	-67
	.byte	-66
	.byte	-65
	.byte	-64
	.byte	-63
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-53
	.byte	-52
	.byte	-51
	.byte	-50
	.byte	-49
	.byte	-48
	.byte	-47
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-37
	.byte	-36
	.byte	-35
	.byte	-34
	.byte	-33
	.byte	-32
	.byte	-31
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-21
	.byte	-20
	.byte	-19
	.byte	-18
	.byte	-17
	.byte	-16
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.byte	-5
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	pat, %object
	.size	pat, 4
pat:
	.space	4
	.type	patlen, %object
	.size	patlen, 4
patlen:
	.space	4
	.type	skip, %object
	.size	skip, 1024
skip:
	.space	1024
	.type	skip2, %object
	.size	skip2, 4
skip2:
	.space	4
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-12ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",%progbits
