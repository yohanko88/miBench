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
	.file	"bstr_i.c"
	.text
	.align	2
	.global	bstr_i
	.type	bstr_i, %function
bstr_i:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	stmfd	sp!, {r4, r5, r6, lr}
	beq	.L5
	ldrb	r4, [r0, #0]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L6
	mov	r5, r0
	mov	r6, #0
	b	.L3
.L4:
	cmn	r5, #1
	orr	r6, r4, r6, asl #1
	beq	.L2
	ldrb	r4, [r5, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L2
.L3:
	mov	r1, r4
	ldr	r0, .L14
	bl	strchr
	cmp	r0, #0
	and	r4, r4, #1
	bne	.L4
.L2:
	mov	r0, r6
	ldmfd	sp!, {r4, r5, r6, pc}
.L5:
	mov	r6, r0
	b	.L2
.L6:
	mov	r6, r4
	b	.L2
.L15:
	.align	2
.L14:
	.word	.LC0
	.size	bstr_i, .-bstr_i
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"01\000"
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-12ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",%progbits
