   1              		.file	"matmul.c"
   2              		.intel_syntax noprefix
   3              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   4              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   5              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   6              	# options passed:  -imultiarch x86_64-linux-gnu matmul.c -masm=intel
   7              	# -mtune=generic -march=x86-64 -g -O3 -fverbose-asm -fstack-protector
   8              	# -Wformat -Wformat-security
   9              	# options enabled:  -faggressive-loop-optimizations
  10              	# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
  11              	# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
  12              	# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
  13              	# -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
  14              	# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
  15              	# -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
  16              	# -fgnu-runtime -fgnu-unique -fguess-branch-probability
  17              	# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
  18              	# -findirect-inlining -finline -finline-atomics -finline-functions
  19              	# -finline-functions-called-once -finline-small-functions -fipa-cp
  20              	# -fipa-cp-clone -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
  21              	# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
  22              	# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
  23              	# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
  24              	# -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
  25              	# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
  26              	# -fpredictive-commoning -fprefetch-loop-arrays -free -freg-struct-return
  27              	# -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
  28              	# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
  29              	# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
  30              	# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
  31              	# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
  32              	# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
  33              	# -fstack-protector -fstrict-aliasing -fstrict-overflow
  34              	# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
  35              	# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
  36              	# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
  37              	# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
  38              	# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
  39              	# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
  40              	# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-partial-pre
  41              	# -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop
  42              	# -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
  43              	# -ftree-switch-conversion -ftree-tail-merge -ftree-ter
  44              	# -ftree-vect-loop-version -ftree-vectorize -ftree-vrp -funit-at-a-time
  45              	# -funswitch-loops -funwind-tables -fvar-tracking
  46              	# -fvar-tracking-assignments -fvect-cost-model -fverbose-asm
  47              	# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
  48              	# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
  49              	# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4
  50              	# -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs
  51              	
  52              		.text
  53              	.Ltext0:
  54              		.section	.rodata.str1.1,"aMS",@progbits,1
  55              	.LC0:
  56 0000 25642000 		.string	"%d "
  57              		.section	.text.startup,"ax",@progbits
  58              		.p2align 4,,15
  59              		.globl	main
  61              	main:
  62              	.LFB24:
  63              		.file 1 "matmul.c"
   1:matmul.c      **** #include <stdio.h>
   2:matmul.c      **** 
   3:matmul.c      **** int main()
   4:matmul.c      **** {
  64              		.loc 1 4 0
  65              		.cfi_startproc
  66              	.LVL0:
   5:matmul.c      ****     int a[2][2], b[2][2], c[2][2];
   6:matmul.c      ****     int i,j,k;
   7:matmul.c      ****     int index = 0;
   8:matmul.c      ****     int sum;
   9:matmul.c      ****     for(i=0; i<2; i++) {
  10:matmul.c      ****         for(j=0; j<2; j++) {
  11:matmul.c      ****             a[i][j] = ++index;
  67              		.loc 1 11 0
  68 0000 48BA0100 		movabs	rdx, 8589934593	# tmp90,
  68      00000200 
  68      0000
  69              	.LVL1:
  70 000a 48B80300 		movabs	rax, 17179869187	# tmp100,
  70      00000400 
  70      0000
  71              	.LVL2:
   4:matmul.c      ****     int a[2][2], b[2][2], c[2][2];
  72              		.loc 1 4 0
  73 0014 55       		push	rbp	#
  74              		.cfi_def_cfa_offset 16
  75              		.cfi_offset 6, -16
  12:matmul.c      ****         }
  13:matmul.c      ****     }
  14:matmul.c      ****     
  15:matmul.c      ****     for(i=0; i<2; i++) {
  16:matmul.c      ****         for(j=0; j<2; j++) {
  17:matmul.c      ****             b[i][j] = ++index;
  18:matmul.c      ****         }
  19:matmul.c      ****     }
  20:matmul.c      ****     
  21:matmul.c      ****     for(i=0; i<2; i++) {
  22:matmul.c      ****         for(j=0; j<2; j++) {
  23:matmul.c      ****             sum = 0;
  24:matmul.c      ****             for(k=0; k<2; k++) {
  25:matmul.c      ****                 sum = sum + a[i][k] * b[k][j];
  76              		.loc 1 25 0
  77 0015 4889D6   		mov	rsi, rdx	# tmp103, tmp90
  78 0018 48C1FE20 		sar	rsi, 32	# tmp103,
  79              	.LVL3:
   4:matmul.c      ****     int a[2][2], b[2][2], c[2][2];
  80              		.loc 1 4 0
  81 001c 53       		push	rbx	#
  82              		.cfi_def_cfa_offset 24
  83              		.cfi_offset 3, -24
  84              		.loc 1 25 0
  85 001d 8D0CF500 		lea	ecx, [0+rsi*8]	# tmp105,
  85      000000
  86              	.LVL4:
   4:matmul.c      ****     int a[2][2], b[2][2], c[2][2];
  87              		.loc 1 4 0
  88 0024 4883EC08 		sub	rsp, 8	#,
  89              		.cfi_def_cfa_offset 32
  90              		.loc 1 25 0
  91 0028 89CF     		mov	edi, ecx	# D.2439, tmp105
  92 002a 29F7     		sub	edi, esi	# D.2439, tmp103
  93 002c 8D3492   		lea	esi, [rdx+rdx*4]	# D.2439,
  94              	.LVL5:
  95 002f 8D1452   		lea	edx, [rdx+rdx*2]	# D.2439,
  96              	.LVL6:
  97 0032 8D1451   		lea	edx, [rcx+rdx*2]	# sum,
  26:matmul.c      ****             }
  27:matmul.c      ****             c[i][j] = sum;
  98              		.loc 1 27 0
  99 0035 8D2C37   		lea	ebp, [rdi+rsi]	# tmp126,
  25:matmul.c      ****             }
 100              		.loc 1 25 0
 101 0038 4889C1   		mov	rcx, rax	# tmp128, tmp100
 102 003b 48C1F920 		sar	rcx, 32	# tmp128,
 103              	.LBB6:
 104              	.LBB7:
 105              		.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
   1:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** /* Checking macros for stdio functions.
   2:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    Copyright (C) 2004-2014 Free Software Foundation, Inc.
   3:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    This file is part of the GNU C Library.
   4:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
   5:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    The GNU C Library is free software; you can redistribute it and/or
   6:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    modify it under the terms of the GNU Lesser General Public
   7:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    License as published by the Free Software Foundation; either
   8:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    version 2.1 of the License, or (at your option) any later version.
   9:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  10:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    The GNU C Library is distributed in the hope that it will be useful,
  11:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    but WITHOUT ANY WARRANTY; without even the implied warranty of
  12:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  13:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    Lesser General Public License for more details.
  14:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  15:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    You should have received a copy of the GNU Lesser General Public
  16:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    License along with the GNU C Library; if not, see
  17:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    <http://www.gnu.org/licenses/>.  */
  18:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  19:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #ifndef _STDIO_H
  20:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** # error "Never include <bits/stdio2.h> directly; use <stdio.h> instead."
  21:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #endif
  22:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  23:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __sprintf_chk (char *__restrict __s, int __flag, size_t __slen,
  24:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			  const char *__restrict __format, ...) __THROW;
  25:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __vsprintf_chk (char *__restrict __s, int __flag, size_t __slen,
  26:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			   const char *__restrict __format,
  27:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			   _G_va_list __ap) __THROW;
  28:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  29:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #ifdef __va_arg_pack
  30:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __fortify_function int
  31:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __NTH (sprintf (char *__restrict __s, const char *__restrict __fmt, ...))
  32:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** {
  33:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
  34:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 				  __bos (__s), __fmt, __va_arg_pack ());
  35:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** }
  36:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #elif !defined __cplusplus
  37:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** # define sprintf(str, ...) \
  38:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   __builtin___sprintf_chk (str, __USE_FORTIFY_LEVEL - 1, __bos (str), \
  39:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			   __VA_ARGS__)
  40:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #endif
  41:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  42:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __fortify_function int
  43:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __NTH (vsprintf (char *__restrict __s, const char *__restrict __fmt,
  44:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 		 _G_va_list __ap))
  45:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** {
  46:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   return __builtin___vsprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
  47:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 				   __bos (__s), __fmt, __ap);
  48:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** }
  49:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  50:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #if defined __USE_BSD || defined __USE_ISOC99 || defined __USE_UNIX98
  51:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  52:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __snprintf_chk (char *__restrict __s, size_t __n, int __flag,
  53:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			   size_t __slen, const char *__restrict __format,
  54:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			   ...) __THROW;
  55:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __vsnprintf_chk (char *__restrict __s, size_t __n, int __flag,
  56:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			    size_t __slen, const char *__restrict __format,
  57:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			    _G_va_list __ap) __THROW;
  58:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  59:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** # ifdef __va_arg_pack
  60:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __fortify_function int
  61:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __NTH (snprintf (char *__restrict __s, size_t __n,
  62:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 		 const char *__restrict __fmt, ...))
  63:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** {
  64:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  65:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 				   __bos (__s), __fmt, __va_arg_pack ());
  66:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** }
  67:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** # elif !defined __cplusplus
  68:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #  define snprintf(str, len, ...) \
  69:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   __builtin___snprintf_chk (str, len, __USE_FORTIFY_LEVEL - 1, __bos (str), \
  70:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			    __VA_ARGS__)
  71:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** # endif
  72:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  73:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __fortify_function int
  74:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __NTH (vsnprintf (char *__restrict __s, size_t __n,
  75:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 		  const char *__restrict __fmt, _G_va_list __ap))
  76:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** {
  77:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   return __builtin___vsnprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  78:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 				    __bos (__s), __fmt, __ap);
  79:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** }
  80:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  81:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #endif
  82:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  83:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #if __USE_FORTIFY_LEVEL > 1
  84:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  85:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __fprintf_chk (FILE *__restrict __stream, int __flag,
  86:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			  const char *__restrict __format, ...);
  87:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __printf_chk (int __flag, const char *__restrict __format, ...);
  88:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __vfprintf_chk (FILE *__restrict __stream, int __flag,
  89:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			   const char *__restrict __format, _G_va_list __ap);
  90:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __vprintf_chk (int __flag, const char *__restrict __format,
  91:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			  _G_va_list __ap);
  92:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  93:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** # ifdef __va_arg_pack
  94:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __fortify_function int
  95:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** fprintf (FILE *__restrict __stream, const char *__restrict __fmt, ...)
  96:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** {
  97:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  98:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			__va_arg_pack ());
  99:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** }
 100:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
 101:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __fortify_function int
 102:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** printf (const char *__restrict __fmt, ...)
 103:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** {
 104:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
 106              		.loc 2 104 0
 107 003f BF010000 		mov	edi, 1	#,
 107      00
 108              	.LBE7:
 109              	.LBE6:
 110              		.loc 1 27 0
 111 0044 48C1E220 		sal	rdx, 32	# tmp123,
 112 0048 4809D5   		or	rbp, rdx	# tmp126, tmp123
 113              	.LVL7:
  25:matmul.c      ****             }
 114              		.loc 1 25 0
 115 004b 8D14CD00 		lea	edx, [0+rcx*8]	# tmp130,
 115      000000
 116              	.LVL8:
 117 0052 89D6     		mov	esi, edx	# D.2439, tmp130
 118 0054 29CE     		sub	esi, ecx	# D.2439, tmp128
 119 0056 8D0C80   		lea	ecx, [rax+rax*4]	# D.2439,
 120              	.LVL9:
 121 0059 8D0440   		lea	eax, [rax+rax*2]	# D.2439,
 122              	.LVL10:
 123 005c 8D0442   		lea	eax, [rdx+rax*2]	# sum,
 124              		.loc 1 27 0
 125 005f 8D1C0E   		lea	ebx, [rsi+rcx]	# tmp151,
 126              	.LBB14:
 127              	.LBB8:
 128              		.loc 2 104 0
 129 0062 89EA     		mov	edx, ebp	#, tmp126
 130 0064 BE000000 		mov	esi, OFFSET FLAT:.LC0	#,
 130      00
 131              	.LBE8:
 132              	.LBE14:
 133              		.loc 1 27 0
 134 0069 48C1E020 		sal	rax, 32	# tmp148,
 135 006d 4809C3   		or	rbx, rax	# tmp151, tmp148
 136              	.LVL11:
 137              	.LBB15:
 138              	.LBB9:
 139              		.loc 2 104 0
 140 0070 31C0     		xor	eax, eax	#
 141 0072 E8000000 		call	__printf_chk	#
 141      00
 142              	.LVL12:
 143              	.LBE9:
 144              	.LBE15:
  28:matmul.c      ****         }
  29:matmul.c      ****     }
  30:matmul.c      ****     
  31:matmul.c      ****     for(i=0; i<2; i++) {
  32:matmul.c      ****         for(j=0; j<2; j++) {
  33:matmul.c      ****             printf("%d ", c[i][j]);
 145              		.loc 1 33 0
 146 0077 4889EA   		mov	rdx, rbp	# tmp153, tmp126
 147              	.LBB16:
 148              	.LBB10:
 149              		.loc 2 104 0
 150 007a BE000000 		mov	esi, OFFSET FLAT:.LC0	#,
 150      00
 151 007f BF010000 		mov	edi, 1	#,
 151      00
 152              	.LBE10:
 153              	.LBE16:
 154              		.loc 1 33 0
 155 0084 48C1FA20 		sar	rdx, 32	# tmp153,
 156              	.LBB17:
 157              	.LBB11:
 158              		.loc 2 104 0
 159 0088 31C0     		xor	eax, eax	#
 160 008a E8000000 		call	__printf_chk	#
 160      00
 161              	.LVL13:
 162 008f 89DA     		mov	edx, ebx	#, tmp151
 163 0091 BE000000 		mov	esi, OFFSET FLAT:.LC0	#,
 163      00
 164 0096 BF010000 		mov	edi, 1	#,
 164      00
 165              	.LBE11:
 166              	.LBE17:
 167              		.loc 1 33 0
 168 009b 48C1FB20 		sar	rbx, 32	# tmp155,
 169              	.LBB18:
 170              	.LBB12:
 171              		.loc 2 104 0
 172 009f 31C0     		xor	eax, eax	#
 173 00a1 E8000000 		call	__printf_chk	#
 173      00
 174              	.LVL14:
 175              	.LBE12:
 176              	.LBE18:
 177              		.loc 1 33 0
 178 00a6 4889DA   		mov	rdx, rbx	# tmp155, tmp155
 179              	.LBB19:
 180              	.LBB13:
 181              		.loc 2 104 0
 182 00a9 BE000000 		mov	esi, OFFSET FLAT:.LC0	#,
 182      00
 183 00ae BF010000 		mov	edi, 1	#,
 183      00
 184 00b3 31C0     		xor	eax, eax	#
 185 00b5 E8000000 		call	__printf_chk	#
 185      00
 186              	.LVL15:
 187              	.LBE13:
 188              	.LBE19:
 189              	.LBB20:
 190              	.LBB21:
 191 00ba BF0A0000 		mov	edi, 10	#,
 191      00
 192 00bf E8000000 		call	putchar	#
 192      00
 193              	.LVL16:
 194              	.LBE21:
 195              	.LBE20:
  34:matmul.c      ****         }
  35:matmul.c      ****     }
  36:matmul.c      **** 	printf("\n");
  37:matmul.c      ****     return 0;
  38:matmul.c      **** }...
 196              		.loc 1 38 0
 197 00c4 4883C408 		add	rsp, 8	#,
 198              		.cfi_def_cfa_offset 24
 199 00c8 31C0     		xor	eax, eax	#
 200 00ca 5B       		pop	rbx	#
 201              		.cfi_def_cfa_offset 16
 202 00cb 5D       		pop	rbp	#
 203              		.cfi_def_cfa_offset 8
 204 00cc C3       		ret
 205              		.cfi_endproc
 206              	.LFE24:
 208              		.text
 209              	.Letext0:
 210              		.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
 211              		.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
 212              		.file 5 "/usr/include/libio.h"
 213              		.file 6 "/usr/include/stdio.h"
 214              		.file 7 "<built-in>"
