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
	.file	"bitstrng.c"
	.text
	.align	2
	.global	bitstring
	.type	bitstring, %function
bitstring:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r2, #3
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	add	ip, r2, r2, asr #2
	movne	r4, #0
	moveq	r4, #1
	rsb	ip, ip, r4
	add	r3, ip, r3
	cmp	r3, #0
	ble	.L11
	rsb	r6, r0, #0
	and	r6, r6, #3
	cmp	r3, r6
	movcc	r6, r3
	cmp	r3, #3
	movls	r6, r3
	cmp	r6, #0
	mov	r5, r0
	beq	.L14
	mov	r4, #0
	mov	r7, #32
.L5:
	mov	ip, r5
	add	r4, r4, #1
	strb	r7, [ip], #1
	cmp	r6, r4
	mov	r5, ip
	bhi	.L5
	cmp	r3, r6
	beq	.L6
.L4:
	rsb	r9, r6, r3
	mov	r7, r9, lsr #2
	movs	sl, r7, asl #2
	beq	.L7
	ldr	r8, .L26
	add	r6, r0, r6
	mov	r5, #0
.L8:
	add	r5, r5, #1
	cmp	r5, r7
	str	r8, [r6], #4
	bcc	.L8
	cmp	r9, sl
	add	ip, ip, sl
	add	r4, r4, sl
	beq	.L6
.L7:
	rsb	ip, r4, ip
	mov	r5, #32
.L10:
	strb	r5, [ip, r4]
	add	r4, r4, #1
	cmp	r3, r4
	bgt	.L10
.L6:
	add	r0, r0, r3
.L11:
	mov	r4, #32
	b	.L24
.L13:
	mov	ip, r1, asr r2
	and	ip, ip, #1
	add	ip, ip, #48
	tst	r2, #3
	strb	ip, [r3], #1
	bne	.L12
	cmp	r2, #0
	strneb	r4, [r0, #1]
	addne	r3, r0, #2
.L12:
	mov	r0, r3
.L24:
	subs	r2, r2, #1
	mov	r3, r0
	bpl	.L13
	mov	r3, #0
	strb	r3, [r0, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	bx	lr
.L14:
	mov	ip, r0
	mov	r4, r6
	b	.L4
.L27:
	.align	2
.L26:
	.word	538976288
	.size	bitstring, .-bitstring
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-12ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",%progbits
