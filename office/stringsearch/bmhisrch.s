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
	.file	"bmhisrch.c"
	.text
	.align	2
	.global	bhmi_cleanup
	.type	bhmi_cleanup, %function
bhmi_cleanup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	ldr	r0, [r3, #0]
	b	free
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	bhmi_cleanup, .-bhmi_cleanup
	.align	2
	.global	bmhi_init
	.type	bmhi_init, %function
bmhi_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	bl	strlen
	ldr	r8, .L20
	mov	r4, r0
	mov	r1, r0
	ldr	r0, [r8, #0]
	str	r4, [r8, #4]
	bl	realloc
	cmp	r0, #0
	mov	r7, r0
	str	r0, [r8, #0]
	mov	r6, r4
	beq	.L19
	ldr	r0, .L20+4
	bl	atexit
	cmp	r4, #0
	ble	.L6
	bl	__ctype_toupper_loc
	mov	r3, #0
.L7:
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldr	r2, [r0, #0]
	ldr	r2, [r2, r1, asl #2]
	strb	r2, [r7, r3]
	add	r3, r3, #1
	cmp	r4, r3
	bne	.L7
.L6:
	ldr	r3, .L20+8
	add	r2, r3, #1024
.L8:
	str	r4, [r3, #4]!
	cmp	r3, r2
	bne	.L8
	sub	r5, r4, #1
	cmp	r5, #0
	ble	.L9
	bl	__ctype_tolower_loc
	ldr	ip, [r0, #0]
	mov	r3, #0
.L10:
	ldrb	r1, [r7, r3]	@ zero_extendqisi2
	rsb	r2, r3, r5
	add	r0, r8, r1, asl #2
	str	r2, [r0, #8]
	ldr	r1, [ip, r1, asl #2]
	add	r3, r3, #1
	add	r1, r8, r1, asl #2
	cmp	r3, r5
	str	r2, [r1, #8]
	ldr	r2, .L20
	bne	.L10
	add	r4, r7, r4
	ldrb	r1, [r4, #-1]	@ zero_extendqisi2
	ldr	r0, .L20+12
	add	r3, r2, r1, asl #2
	str	r0, [r3, #8]
	ldr	ip, [ip, r1, asl #2]
	mov	r3, #0
	add	r2, r2, ip, asl #2
	str	r0, [r2, #8]
.L11:
	ldrb	r2, [r7, r3]	@ zero_extendqisi2
	cmp	r1, r2
	rsbeq	r6, r3, r5
	add	r3, r3, #1
	cmp	r3, r5
	bne	.L11
	str	r6, [r8, #1032]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L9:
	add	r7, r7, r4
	ldrb	r6, [r7, #-1]	@ zero_extendqisi2
	ldr	r5, .L20+12
	add	r3, r8, r6, asl #2
	str	r5, [r3, #8]
	bl	__ctype_tolower_loc
	ldr	r3, [r0, #0]
	str	r4, [r8, #1032]
	ldr	r3, [r3, r6, asl #2]
	add	r8, r8, r3, asl #2
	str	r5, [r8, #8]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L19:
	mov	r0, #1
	bl	exit
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.word	bhmi_cleanup
	.word	.LANCHOR0+4
	.word	32767
	.size	bmhi_init, .-bmhi_init
	.align	2
	.global	bmhi_search
	.type	bmhi_search, %function
bmhi_search:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r5, .L37
	sub	sp, sp, #12
	ldr	r8, [r5, #4]
	sub	r8, r8, #1
	subs	r3, r8, r1
	bpl	.L30
	ldr	r2, [r5, #1032]
	rsb	r9, r1, #32512
	ldr	r7, [r5, #0]
	str	r2, [sp, #4]
	add	r4, r0, r1
	add	r9, r9, #255
.L35:
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	add	r2, r5, r2, asl #2
	ldr	r2, [r2, #8]
	adds	r3, r3, r2
	bmi	.L35
	cmp	r9, r3
	bgt	.L30
	sub	r3, r3, #32512
	sub	fp, r3, #255
	rsb	r6, r8, fp
	add	r6, r4, r6
	mov	sl, r8
.L25:
	subs	sl, sl, #1
	bmi	.L32
	bl	__ctype_toupper_loc
	ldrb	r2, [r6, sl]	@ zero_extendqisi2
	ldr	r0, [r0, #0]
	ldrb	r1, [r7, sl]	@ zero_extendqisi2
	ldr	r2, [r0, r2, asl #2]
	cmp	r2, r1
	beq	.L25
	ldr	r2, [sp, #4]
	adds	r3, fp, r2
	bmi	.L35
.L30:
	mov	r6, #0
.L32:
	mov	r0, r6
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
	.size	bmhi_search, .-bmhi_search
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
