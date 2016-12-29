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
	.file	"qsort_small.c"
	.text
	.align	2
	.global	compare
	.type	compare, %function
compare:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	bl	strcmp
	cmp	r0, #0
	blt	.L3
	bne	.L4
	ldmfd	sp!, {r3, pc}
.L4:
	mvn	r0, #0
	ldmfd	sp!, {r3, pc}
.L3:
	mov	r0, #1
	ldmfd	sp!, {r3, pc}
	.size	compare, .-compare
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 7680000
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	cmp	r0, #1
	sub	sp, sp, #7667712
	sub	sp, sp, #12288
	ble	.L18
	ldr	r0, [r1, #4]
	ldr	r1, .L21
	bl	fopen
	mov	r4, #0
	mov	r5, r0
	ldr	r6, .L21+4
	b	.L8
.L20:
	cmp	r4, r6
	beq	.L19
	add	r4, r4, #1
.L8:
	add	r3, sp, #0
	mov	r0, r5
	ldr	r1, .L21+8
	add	r2, r3, r4, asl #7
	bl	__isoc99_fscanf
	cmp	r0, #1
	beq	.L20
	ldr	r1, .L21+12
	mov	r2, r4
	mov	r0, #1
	bl	__printf_chk
	mov	r0, sp
	mov	r1, r4
	mov	r2, #128
	ldr	r3, .L21+16
	bl	qsort
	cmp	r4, #0
	beq	.L17
.L12:
	mov	r5, #0
.L13:
	add	r3, sp, #0
	add	r0, r3, r5, asl #7
	add	r5, r5, #1
	bl	puts
	cmp	r5, r4
	blt	.L13
.L17:
	mov	r0, #0
	add	sp, sp, #339968
	add	sp, sp, #7340032
	ldmfd	sp!, {r4, r5, r6, pc}
.L19:
	mov	r2, r4
	ldr	r1, .L21+12
	bl	__printf_chk
	mov	r0, sp
	mov	r1, r4
	mov	r2, #128
	ldr	r3, .L21+16
	bl	qsort
	b	.L12
.L18:
	ldr	r3, .L21+20
	ldr	r0, .L21+24
	ldr	r3, [r3, #0]
	mov	r1, #1
	mov	r2, #26
	bl	fwrite
	mvn	r0, #0
	bl	exit
.L22:
	.align	2
.L21:
	.word	.LC1
	.word	60000
	.word	.LC2
	.word	.LC3
	.word	compare
	.word	stderr
	.word	.LC0
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Usage: qsort_small <file>\012\000"
	.space	1
.LC1:
	.ascii	"r\000"
	.space	2
.LC2:
	.ascii	"%s\000"
	.space	1
.LC3:
	.ascii	"\012Sorting %d elements.\012\012\000"
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-12ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",%progbits
