
matmul.o:     file format elf32-littlearm


Disassembly of section .text.startup:

00000000 <main>:
#include <stdio.h>

int main()
{
   0:	e92d4010 	push	{r4, lr}
}

__fortify_function int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
   4:	e59f404c 	ldr	r4, [pc, #76]	; 58 <main+0x58>
   8:	e3a02013 	mov	r2, #19
   c:	e1a01004 	mov	r1, r4
  10:	e3a00001 	mov	r0, #1
  14:	ebfffffe 	bl	0 <__printf_chk>
  18:	e1a01004 	mov	r1, r4
  1c:	e3a02016 	mov	r2, #22
  20:	e3a00001 	mov	r0, #1
  24:	ebfffffe 	bl	0 <__printf_chk>
  28:	e1a01004 	mov	r1, r4
  2c:	e3a0202b 	mov	r2, #43	; 0x2b
  30:	e3a00001 	mov	r0, #1
  34:	ebfffffe 	bl	0 <__printf_chk>
  38:	e1a01004 	mov	r1, r4
  3c:	e3a02032 	mov	r2, #50	; 0x32
  40:	e3a00001 	mov	r0, #1
  44:	ebfffffe 	bl	0 <__printf_chk>
  48:	e3a0000a 	mov	r0, #10
  4c:	ebfffffe 	bl	0 <putchar>
            printf("%d ", c[i][j]);
        }
    }
	printf("\n");
    return 0;
  50:	e3a00000 	mov	r0, #0
  54:	e8bd8010 	pop	{r4, pc}
  58:	00000000 	.word	0x00000000
