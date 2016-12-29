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
	.file	"bitfiles.c"
	.text
	.align	2
	.global	bfopen
	.type	bfopen, %function
bfopen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	mov	r0, #8
	mov	r6, r1
	bl	malloc
	subs	r4, r0, #0
	beq	.L2
	mov	r0, r5
	mov	r1, r6
	bl	fopen
	cmp	r0, #0
	movne	r3, #0
	mov	r5, r0
	str	r0, [r4, #0]
	strneb	r3, [r4, #5]
	strneb	r3, [r4, #7]
	beq	.L8
.L2:
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, pc}
.L8:
	mov	r0, r4
	bl	free
	mov	r4, r5
	b	.L2
	.size	bfopen, .-bfopen
	.align	2
	.global	bfread
	.type	bfread, %function
bfread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldrb	r3, [r0, #5]	@ zero_extendqisi2
	mov	r4, r0
	cmp	r3, #0
	beq	.L10
	sub	r3, r3, #1
	and	r3, r3, #255
	ldrb	r0, [r0, #4]	@ zero_extendqisi2
	mov	r2, r3
.L11:
	mov	r0, r0, asr r2
	strb	r3, [r4, #5]
	and	r0, r0, #1
	ldmfd	sp!, {r4, pc}
.L10:
	ldr	r0, [r0, #0]
	bl	fgetc
	mov	r2, #7
	and	r0, r0, #255
	strb	r0, [r4, #4]
	mov	r3, r2
	b	.L11
	.size	bfread, .-bfread
	.align	2
	.global	bfwrite
	.type	bfwrite, %function
bfwrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldrb	r3, [r1, #7]	@ zero_extendqisi2
	mov	r4, r1
	cmp	r3, #8
	mov	r5, r0
	beq	.L13
	add	r3, r3, #1
	and	r3, r3, #255
.L14:
	ldrb	r2, [r4, #6]	@ zero_extendqisi2
	and	r5, r5, #1
	orr	r5, r5, r2, asl #1
	strb	r3, [r4, #7]
	strb	r5, [r4, #6]
	ldmfd	sp!, {r3, r4, r5, pc}
.L13:
	ldrb	r0, [r1, #6]	@ zero_extendqisi2
	ldr	r1, [r1, #0]
	bl	fputc
	mov	r3, #1
	b	.L14
	.size	bfwrite, .-bfwrite
	.align	2
	.global	bfclose
	.type	bfclose, %function
bfclose:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #0]
	bl	fclose
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	b	free
	.size	bfclose, .-bfclose
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-12ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",%progbits
