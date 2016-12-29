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
	.file	"bitcnt_2.c"
	.text
	.align	2
	.global	bitcount
	.type	bitcount, %function
bitcount:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L2
	ldr	r3, .L2+4
	and	r2, r0, r2
	and	r3, r0, r3
	ldr	r1, .L2+8
	ldr	r0, .L2+12
	add	r3, r3, r2, lsr #1
	and	r0, r3, r0
	and	r1, r3, r1
	ldr	r2, .L2+16
	ldr	r3, .L2+20
	add	r1, r1, r0, lsr #2
	and	r3, r1, r3
	and	r2, r1, r2
	add	r2, r3, r2, lsr #4
	bic	r1, r2, #-16777216
	bic	r1, r1, #65280
	bic	r3, r2, #16711680
	add	r3, r1, r3, lsr #8
	mov	r0, r3, asl #16
	mov	r3, r3, lsr #16
	add	r0, r3, r0, lsr #16
	bx	lr
.L3:
	.align	2
.L2:
	.word	-1431655766
	.word	1431655765
	.word	858993459
	.word	-858993460
	.word	-252645136
	.word	252645135
	.size	bitcount, .-bitcount
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-12ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",%progbits
