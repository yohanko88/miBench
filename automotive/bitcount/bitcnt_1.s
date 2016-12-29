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
	.file	"bitcnt_1.c"
	.text
	.align	2
	.global	bit_count
	.type	bit_count, %function
bit_count:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0
	beq	.L4
	mov	r0, #0
.L3:
	sub	r2, r3, #1
	ands	r3, r3, r2
	add	r0, r0, #1
	bne	.L3
	bx	lr
.L4:
	mov	r0, r3
	bx	lr
	.size	bit_count, .-bit_count
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-12ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",%progbits
