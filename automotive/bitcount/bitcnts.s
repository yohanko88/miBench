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
	.file	"bitcnts.c"
	.text
	.align	2
	.type	bit_shifter, %function
bit_shifter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0
	beq	.L4
	mov	r0, #0
	mov	r2, r0
.L3:
	and	r1, r3, #1
	movs	r3, r3, asr #1
	moveq	ip, #0
	movne	ip, #1
	add	r2, r2, #1
	cmp	r2, #31
	movhi	ip, #0
	andls	ip, ip, #1
	cmp	ip, #0
	add	r0, r0, r1
	bne	.L3
	bx	lr
.L4:
	mov	r0, r3
	bx	lr
	.size	bit_shifter, .-bit_shifter
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.global	__aeabi_dadd
	.global	__aeabi_dsub
	.global	__aeabi_dcmplt
	.global	__aeabi_dcmpgt
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #1
	sub	sp, sp, #68
	ble	.L19
	mov	r2, #10
	ldr	r0, [r1, #4]
	mov	r1, #0
	bl	strtol
	mov	sl, r0
	ldr	r0, .L20
	bl	puts
	add	r3, sl, sl, asl #1
	add	r3, sl, r3, asl #2
	str	r3, [sp, #36]
	mov	r2, #0
	mov	r3, #0
	ldr	r4, .L20+4
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	mvn	r3, #0
	str	r3, [sp, #16]
	str	r4, [sp, #20]
	ldr	r9, .L20+8
	mov	r7, #0
.L13:
	mov	r1, #0
	add	r0, sp, #48
	bl	gettimeofday
	bl	rand
	cmp	sl, #0
	mov	fp, r0
	ble	.L14
	ldr	r2, [sp, #36]
	ldr	r5, [r9, r7, asl #2]
	mov	r8, r7, asl #2
	add	r4, r2, r0
	mov	r6, #0
.L10:
	mov	r0, fp
	blx	r5
	add	fp, fp, #13
	cmp	fp, r4
	add	r6, r6, r0
	bne	.L10
.L9:
	mov	r1, #0
	add	r0, sp, #56
	bl	gettimeofday
	ldr	r0, [sp, #56]
	bl	__aeabi_i2d
	mov	r4, r0
	ldr	r0, [sp, #60]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L20+12
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r4, r0
	ldr	r0, [sp, #48]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r4, r0
	ldr	r0, [sp, #52]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L20+12
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dcmplt
	cmp	r0, #0
	strne	r4, [sp, #16]
	strne	r5, [sp, #20]
	strne	r7, [sp, #40]
.L11:
	mov	r0, r4
	mov	r1, r5
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	strne	r4, [sp, #24]
	strne	r5, [sp, #28]
	strne	r7, [sp, #44]
.L12:
	ldr	r3, .L20+16
	stmia	sp, {r4-r5}
	ldr	r2, [r3, r8]
	str	r6, [sp, #8]
	add	r7, r7, #1
	mov	r0, #1
	ldr	r1, .L20+20
	bl	__printf_chk
	cmp	r7, #7
	ldr	r4, .L20+8
	bne	.L13
	ldr	r2, [sp, #40]
	ldr	r1, .L20+24
	add	r3, r4, r2, asl #2
	ldr	r2, [r3, #28]
	mov	r0, #1
	bl	__printf_chk
	ldr	r3, [sp, #44]
	ldr	r1, .L20+28
	add	r4, r4, r3, asl #2
	ldr	r2, [r4, #28]
	mov	r0, #1
	bl	__printf_chk
	mov	r0, #0
	add	sp, sp, #68
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L14:
	mov	r6, #0
	mov	r8, r7, asl #2
	b	.L9
.L19:
	ldr	r3, .L20+32
	ldr	r0, .L20+36
	ldr	r3, [r3, #0]
	mov	r1, #1
	mov	r2, #28
	bl	fwrite
	mvn	r0, #0
	bl	exit
.L21:
	.align	2
.L20:
	.word	.LC1
	.word	2146435071
	.word	.LANCHOR0
	.word	1093567616
	.word	.LANCHOR0+28
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	stderr
	.word	.LC0
	.size	main, .-main
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	pBitCntFunc.6784, %object
	.size	pBitCntFunc.6784, 28
pBitCntFunc.6784:
	.word	bit_count
	.word	bitcount
	.word	ntbl_bitcnt
	.word	ntbl_bitcount
	.word	BW_btbl_bitcount
	.word	AR_btbl_bitcount
	.word	bit_shifter
	.type	text.6785, %object
	.size	text.6785, 28
text.6785:
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Usage: bitcnts <iterations>\012\000"
	.space	3
.LC1:
	.ascii	"Bit counter algorithm benchmark\012\000"
	.space	3
.LC2:
	.ascii	"%-38s> Time: %7.3f sec.; Bits: %ld\012\000"
.LC3:
	.ascii	"\012Best  > %s\012\000"
	.space	3
.LC4:
	.ascii	"Worst > %s\012\000"
.LC5:
	.ascii	"Optimized 1 bit/loop counter\000"
	.space	3
.LC6:
	.ascii	"Ratko's mystery algorithm\000"
	.space	2
.LC7:
	.ascii	"Recursive bit count by nybbles\000"
	.space	1
.LC8:
	.ascii	"Non-recursive bit count by nybbles\000"
	.space	1
.LC9:
	.ascii	"Non-recursive bit count by bytes (BW)\000"
	.space	2
.LC10:
	.ascii	"Non-recursive bit count by bytes (AR)\000"
	.space	2
.LC11:
	.ascii	"Shift and count bits\000"
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-12ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",%progbits
