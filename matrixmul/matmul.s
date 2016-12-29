	.arch armv5t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"matmul.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d \000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #72
	mov	r3, #0
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L2
.L5:
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L3
.L4:
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-72]
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-68]
	add	r2, r2, r3
	mvn	r3, #47
	mov	r2, r2, asl #2
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-60]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
.L3:
	ldr	r3, [fp, #-68]
	cmp	r3, #1
	ble	.L4
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L2:
	ldr	r3, [fp, #-72]
	cmp	r3, #1
	ble	.L5
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L6
.L9:
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L7
.L8:
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-72]
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-68]
	add	r2, r2, r3
	mvn	r3, #31
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-60]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
.L7:
	ldr	r3, [fp, #-68]
	cmp	r3, #1
	ble	.L8
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L6:
	ldr	r3, [fp, #-72]
	cmp	r3, #1
	ble	.L9
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L10
.L15:
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L11
.L14:
	mov	r3, #0
	str	r3, [fp, #-56]
	mov	r3, #0
	str	r3, [fp, #-64]
	b	.L12
.L13:
	ldr	r3, [fp, #-72]
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-64]
	add	r2, r2, r3
	mvn	r3, #47
	mov	r2, r2, asl #2
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-64]
	mov	r1, r2, asl #1
	ldr	r2, [fp, #-68]
	add	r1, r1, r2
	mvn	r2, #31
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r2, r1, r2
	ldr	r2, [r2, #0]
	mul	r3, r2, r3
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L12:
	ldr	r3, [fp, #-64]
	cmp	r3, #1
	ble	.L13
	ldr	r3, [fp, #-72]
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-68]
	add	r2, r2, r3
	mvn	r3, #15
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-56]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
.L11:
	ldr	r3, [fp, #-68]
	cmp	r3, #1
	ble	.L14
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L10:
	ldr	r3, [fp, #-72]
	cmp	r3, #1
	ble	.L15
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L16
.L19:
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L17
.L18:
	ldr	r3, [fp, #-72]
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-68]
	add	r2, r2, r3
	mvn	r3, #15
	mov	r2, r2, asl #2
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, .L21
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
.L17:
	ldr	r3, [fp, #-68]
	cmp	r3, #1
	ble	.L18
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L16:
	ldr	r3, [fp, #-72]
	cmp	r3, #1
	ble	.L19
	mov	r0, #10
	bl	putchar
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L22:
	.align	2
.L21:
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-12ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",%progbits
