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
	.file	"bitcnt_3.c"
	.text
	.align	2
	.global	ntbl_bitcount
	.type	ntbl_bitcount, %function
ntbl_bitcount:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	and	r1, r0, #15
	and	r2, r0, #240
	ldrb	ip, [r3, r1]	@ zero_extendqisi2
	ldrb	r1, [r3, r2, lsr #4]	@ zero_extendqisi2
	and	r2, r0, #3840
	str	r4, [sp, #-4]!
	ldrb	r4, [r3, r2, lsr #8]	@ zero_extendqisi2
	and	r2, r0, #61440
	add	r1, ip, r1
	ldrb	ip, [r3, r2, lsr #12]	@ zero_extendqisi2
	and	r2, r0, #983040
	add	r1, r1, r4
	ldrb	r4, [r3, r2, lsr #16]	@ zero_extendqisi2
	and	r2, r0, #15728640
	add	r1, r1, ip
	ldrb	ip, [r3, r2, lsr #20]	@ zero_extendqisi2
	and	r2, r0, #251658240
	ldrb	r2, [r3, r2, lsr #24]	@ zero_extendqisi2
	add	r1, r1, r4
	ldrb	r3, [r3, r0, lsr #28]	@ zero_extendqisi2
	add	r1, r1, ip
	add	r0, r1, r2
	add	r0, r0, r3
	ldmfd	sp!, {r4}
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	ntbl_bitcount, .-ntbl_bitcount
	.align	2
	.global	BW_btbl_bitcount
	.type	BW_btbl_bitcount, %function
BW_btbl_bitcount:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5
	mov	r1, r0, lsr #8
	and	r2, r0, #255
	and	r1, r1, #255
	ldrb	ip, [r3, r1]	@ zero_extendqisi2
	str	r4, [sp, #-4]!
	mov	r1, r0, lsr #16
	ldrb	r4, [r3, r2]	@ zero_extendqisi2
	and	r1, r1, #255
	ldrb	r2, [r3, r0, lsr #24]	@ zero_extendqisi2
	add	r0, r4, ip
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	add	r0, r0, r2
	add	r0, r0, r3
	ldmfd	sp!, {r4}
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.size	BW_btbl_bitcount, .-BW_btbl_bitcount
	.align	2
	.global	AR_btbl_bitcount
	.type	AR_btbl_bitcount, %function
AR_btbl_bitcount:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	mov	ip, r0, lsr #8
	and	r2, r0, #255
	mov	r1, r0, lsr #16
	and	ip, ip, #255
	ldrb	ip, [r3, ip]	@ zero_extendqisi2
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	and	r1, r1, #255
	ldrb	r1, [r3, r1]	@ zero_extendqisi2
	add	r2, ip, r2
	ldrb	r0, [r3, r0, lsr #24]	@ zero_extendqisi2
	add	r2, r1, r2
	sub	sp, sp, #8
	add	r0, r0, r2
	add	sp, sp, #8
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	AR_btbl_bitcount, .-AR_btbl_bitcount
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	bits, %object
	.size	bits, 256
bits:
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	6
	.byte	7
	.byte	7
	.byte	8
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-12ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",%progbits
