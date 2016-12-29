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
	.file	"bmhsrch.c"
	.text
	.align	2
	.global	bmh_init
	.type	bmh_init, %function
bmh_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L15
	mov	r4, r0
	str	r0, [r5, #0]
	bl	strlen
	mov	r3, r5
	ldr	r2, .L15+4
	str	r0, [r3, #4]!
	mov	r6, r0
.L2:
	str	r0, [r3, #4]!
	cmp	r3, r2
	bne	.L2
	cmp	r0, #0
	movgt	r3, #0
	subgt	r2, r0, #1
	ble	.L14
.L3:
	ldrb	r1, [r4, r3]	@ zero_extendqisi2
	rsb	ip, r3, r2
	add	r3, r3, #1
	add	r1, r5, r1, asl #2
	cmp	r0, r3
	str	ip, [r1, #8]
	bne	.L3
.L6:
	add	r3, r4, r0
	ldrb	ip, [r3, #-1]	@ zero_extendqisi2
	ldr	r1, .L15+8
	add	r3, r5, ip, asl #2
	cmp	r2, #0
	str	r0, [r5, #1032]
	str	r1, [r3, #8]
	ldmlefd	sp!, {r4, r5, r6, pc}
	mov	r3, #0
.L4:
	ldrb	r1, [r4, r3]	@ zero_extendqisi2
	cmp	r1, ip
	rsbeq	r6, r3, r2
	add	r3, r3, #1
	cmp	r3, r2
	bne	.L4
	str	r6, [r5, #1032]
	ldmfd	sp!, {r4, r5, r6, pc}
.L14:
	sub	r2, r0, #1
	b	.L6
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.word	.LANCHOR0+1028
	.word	32767
	.size	bmh_init, .-bmh_init
	.align	2
	.global	bmh_search
	.type	bmh_search, %function
bmh_search:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}
	ldr	r5, .L33
	ldr	r7, [r5, #4]
	sub	r7, r7, #1
	subs	r3, r7, r1
	bpl	.L25
	rsb	sl, r1, #32512
	ldr	r6, [r5, #0]
	ldr	r8, [r5, #1032]
	add	r4, r0, r1
	add	sl, sl, #255
.L31:
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	add	r2, r5, r2, asl #2
	ldr	r2, [r2, #8]
	adds	r3, r3, r2
	bmi	.L31
	cmp	sl, r3
	bgt	.L25
	sub	r3, r3, #32512
	sub	r3, r3, #255
	rsb	r0, r7, r3
	add	r0, r4, r0
	mov	r2, r7
.L20:
	subs	r2, r2, #1
	bmi	.L27
	ldrb	ip, [r0, r2]	@ zero_extendqisi2
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	cmp	ip, r1
	beq	.L20
	adds	r3, r3, r8
	bmi	.L31
.L25:
	mov	r0, #0
.L27:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.size	bmh_search, .-bmh_search
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
