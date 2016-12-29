   1              		.arch armv5t
   2              		.fpu softvfp
   3              		.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
   4              		.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
   5              		.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
   6              		.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
   7              		.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
   8              		.eabi_attribute 26, 2	@ Tag_ABI_enum_size
   9              		.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
  10              		.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
  11              		.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
  12              		.file	"matmul.c"
  13              	@ GNU C (Ubuntu/Linaro 4.7.3-12ubuntu1) version 4.7.3 (arm-linux-gnueabi)
  14              	@	compiled by GNU C version 4.8.2, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
  15              	@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
  16              	@ options passed:  -imultilib sf -imultiarch arm-linux-gnueabi matmul.c
  17              	@ -march=armv5t -mfloat-abi=soft -mtls-dialect=gnu -g -O3 -fverbose-asm
  18              	@ -fstack-protector
  19              	@ options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
  20              	@ -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
  21              	@ -fcrossjumping -fcse-follow-jumps -fdebug-types-section -fdefer-pop
  22              	@ -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
  23              	@ -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
  24              	@ -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
  25              	@ -fgnu-runtime -fguess-branch-probability -fident -fif-conversion
  26              	@ -fif-conversion2 -findirect-inlining -finline -finline-atomics
  27              	@ -finline-functions -finline-functions-called-once
  28              	@ -finline-small-functions -fipa-cp -fipa-cp-clone -fipa-profile
  29              	@ -fipa-pure-const -fipa-reference -fipa-sra -fira-share-save-slots
  30              	@ -fira-share-spill-slots -fivopts -fkeep-static-consts
  31              	@ -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
  32              	@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-register-move
  33              	@ -foptimize-sibling-calls -foptimize-strlen -fpartial-inlining -fpeephole
  34              	@ -fpeephole2 -fpredictive-commoning -fprefetch-loop-arrays
  35              	@ -freg-struct-return -fregmove -freorder-blocks -freorder-functions
  36              	@ -frerun-cse-after-loop -fsched-critical-path-heuristic
  37              	@ -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
  38              	@ -fsched-last-insn-heuristic -fsched-pressure -fsched-rank-heuristic
  39              	@ -fsched-spec -fsched-spec-insn-heuristic -fsched-stalled-insns-dep
  40              	@ -fschedule-insns -fschedule-insns2 -fsection-anchors -fshow-column
  41              	@ -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
  42              	@ -fstack-protector -fstrict-aliasing -fstrict-overflow
  43              	@ -fstrict-volatile-bitfields -fthread-jumps -ftoplevel-reorder
  44              	@ -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp
  45              	@ -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename
  46              	@ -ftree-cselim -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop
  47              	@ -ftree-fre -ftree-loop-distribute-patterns -ftree-loop-if-convert
  48              	@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
  49              	@ -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
  50              	@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
  51              	@ -ftree-slp-vectorize -ftree-sra -ftree-switch-conversion
  52              	@ -ftree-tail-merge -ftree-ter -ftree-vect-loop-version -ftree-vectorize
  53              	@ -ftree-vrp -funit-at-a-time -funswitch-loops -fvar-tracking
  54              	@ -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss -marm
  55              	@ -mglibc -mlittle-endian -msched-prolog -mvectorize-with-neon-quad
  56              	
  57              		.text
  58              	.Ltext0:
  59              		.cfi_sections	.debug_frame
  60              		.section	.text.startup,"ax",%progbits
  61              		.align	2
  62              		.global	main
  64              	main:
  65              	.LFB24:
  66              		.file 1 "matmul.c"
   1:matmul.c      **** #include <stdio.h>
   2:matmul.c      **** 
   3:matmul.c      **** int main()
   4:matmul.c      **** {
  67              		.loc 1 4 0
  68              		.cfi_startproc
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71              	.LVL0:
  72 0000 10402DE9 		stmfd	sp!, {r4, lr}	@,
  73              	.LCFI0:
  74              		.cfi_def_cfa_offset 8
  75              		.cfi_offset 4, -8
  76              		.cfi_offset 14, -4
  77              	.LBB6:
  78              	.LBB7:
  79              		.file 2 "/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio
   1:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** /* Checking macros for stdio functions.
   2:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    Copyright (C) 2004-2014 Free Software Foundation, Inc.
   3:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    This file is part of the GNU C Library.
   4:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
   5:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    The GNU C Library is free software; you can redistribute it and/or
   6:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    modify it under the terms of the GNU Lesser General Public
   7:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    License as published by the Free Software Foundation; either
   8:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    version 2.1 of the License, or (at your option) any later version.
   9:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  10:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    The GNU C Library is distributed in the hope that it will be useful,
  11:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    but WITHOUT ANY WARRANTY; without even the implied warranty of
  12:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  13:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    Lesser General Public License for more details.
  14:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  15:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    You should have received a copy of the GNU Lesser General Public
  16:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    License along with the GNU C Library; if not, see
  17:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****    <http://www.gnu.org/licenses/>.  */
  18:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  19:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** #ifndef _STDIO_H
  20:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** # error "Never include <bits/stdio2.h> directly; use <stdio.h> instead."
  21:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** #endif
  22:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  23:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** extern int __sprintf_chk (char *__restrict __s, int __flag, size_t __slen,
  24:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			  const char *__restrict __format, ...) __THROW;
  25:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** extern int __vsprintf_chk (char *__restrict __s, int __flag, size_t __slen,
  26:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			   const char *__restrict __format,
  27:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			   _G_va_list __ap) __THROW;
  28:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  29:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** #ifdef __va_arg_pack
  30:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** __fortify_function int
  31:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** __NTH (sprintf (char *__restrict __s, const char *__restrict __fmt, ...))
  32:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** {
  33:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
  34:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 				  __bos (__s), __fmt, __va_arg_pack ());
  35:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** }
  36:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** #elif !defined __cplusplus
  37:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** # define sprintf(str, ...) \
  38:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****   __builtin___sprintf_chk (str, __USE_FORTIFY_LEVEL - 1, __bos (str), \
  39:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			   __VA_ARGS__)
  40:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** #endif
  41:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  42:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** __fortify_function int
  43:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** __NTH (vsprintf (char *__restrict __s, const char *__restrict __fmt,
  44:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 		 _G_va_list __ap))
  45:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** {
  46:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****   return __builtin___vsprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
  47:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 				   __bos (__s), __fmt, __ap);
  48:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** }
  49:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  50:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** #if defined __USE_BSD || defined __USE_ISOC99 || defined __USE_UNIX98
  51:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  52:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** extern int __snprintf_chk (char *__restrict __s, size_t __n, int __flag,
  53:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			   size_t __slen, const char *__restrict __format,
  54:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			   ...) __THROW;
  55:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** extern int __vsnprintf_chk (char *__restrict __s, size_t __n, int __flag,
  56:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			    size_t __slen, const char *__restrict __format,
  57:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			    _G_va_list __ap) __THROW;
  58:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  59:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** # ifdef __va_arg_pack
  60:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** __fortify_function int
  61:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** __NTH (snprintf (char *__restrict __s, size_t __n,
  62:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 		 const char *__restrict __fmt, ...))
  63:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** {
  64:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  65:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 				   __bos (__s), __fmt, __va_arg_pack ());
  66:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** }
  67:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** # elif !defined __cplusplus
  68:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** #  define snprintf(str, len, ...) \
  69:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****   __builtin___snprintf_chk (str, len, __USE_FORTIFY_LEVEL - 1, __bos (str), \
  70:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			    __VA_ARGS__)
  71:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** # endif
  72:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  73:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** __fortify_function int
  74:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** __NTH (vsnprintf (char *__restrict __s, size_t __n,
  75:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 		  const char *__restrict __fmt, _G_va_list __ap))
  76:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** {
  77:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****   return __builtin___vsnprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  78:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 				    __bos (__s), __fmt, __ap);
  79:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** }
  80:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  81:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** #endif
  82:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  83:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** #if __USE_FORTIFY_LEVEL > 1
  84:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  85:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** extern int __fprintf_chk (FILE *__restrict __stream, int __flag,
  86:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			  const char *__restrict __format, ...);
  87:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** extern int __printf_chk (int __flag, const char *__restrict __format, ...);
  88:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** extern int __vfprintf_chk (FILE *__restrict __stream, int __flag,
  89:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			   const char *__restrict __format, _G_va_list __ap);
  90:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** extern int __vprintf_chk (int __flag, const char *__restrict __format,
  91:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			  _G_va_list __ap);
  92:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
  93:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** # ifdef __va_arg_pack
  94:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** __fortify_function int
  95:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** fprintf (FILE *__restrict __stream, const char *__restrict __fmt, ...)
  96:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** {
  97:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  98:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 			__va_arg_pack ());
  99:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** }
 100:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** 
 101:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** __fortify_function int
 102:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** printf (const char *__restrict __fmt, ...)
 103:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h **** {
 104:/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/stdio2.h ****   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
  80              		.loc 2 104 0
  81 0004 4C409FE5 		ldr	r4, .L2	@ tmp135,
  82 0008 1320A0E3 		mov	r2, #19	@,
  83 000c 0410A0E1 		mov	r1, r4	@, tmp135
  84 0010 0100A0E3 		mov	r0, #1	@,
  85 0014 FEFFFFEB 		bl	__printf_chk	@
  86              	.LVL1:
  87 0018 0410A0E1 		mov	r1, r4	@, tmp135
  88 001c 1620A0E3 		mov	r2, #22	@,
  89 0020 0100A0E3 		mov	r0, #1	@,
  90 0024 FEFFFFEB 		bl	__printf_chk	@
  91              	.LVL2:
  92 0028 0410A0E1 		mov	r1, r4	@, tmp135
  93 002c 2B20A0E3 		mov	r2, #43	@,
  94 0030 0100A0E3 		mov	r0, #1	@,
  95 0034 FEFFFFEB 		bl	__printf_chk	@
  96              	.LVL3:
  97 0038 0410A0E1 		mov	r1, r4	@, tmp135
  98 003c 3220A0E3 		mov	r2, #50	@,
  99 0040 0100A0E3 		mov	r0, #1	@,
 100 0044 FEFFFFEB 		bl	__printf_chk	@
 101              	.LVL4:
 102              	.LBE7:
 103              	.LBE6:
 104              	.LBB8:
 105              	.LBB9:
 106 0048 0A00A0E3 		mov	r0, #10	@,
 107 004c FEFFFFEB 		bl	putchar	@
 108              	.LVL5:
 109              	.LBE9:
 110              	.LBE8:
   5:matmul.c      ****     int a[2][2], b[2][2], c[2][2];
   6:matmul.c      ****     int i,j,k;
   7:matmul.c      ****     int index = 0;
   8:matmul.c      ****     int sum;
   9:matmul.c      ****     for(i=0; i<2; i++) {
  10:matmul.c      ****         for(j=0; j<2; j++) {
  11:matmul.c      ****             a[i][j] = ++index;
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
  26:matmul.c      ****             }
  27:matmul.c      ****             c[i][j] = sum;
  28:matmul.c      ****         }
  29:matmul.c      ****     }
  30:matmul.c      ****     
  31:matmul.c      ****     for(i=0; i<2; i++) {
  32:matmul.c      ****         for(j=0; j<2; j++) {
  33:matmul.c      ****             printf("%d ", c[i][j]);
  34:matmul.c      ****         }
  35:matmul.c      ****     }
  36:matmul.c      **** 	printf("\n");
  37:matmul.c      ****     return 0;
  38:matmul.c      **** }...
 111              		.loc 1 38 0
 112 0050 0000A0E3 		mov	r0, #0	@,
 113 0054 1080BDE8 		ldmfd	sp!, {r4, pc}	@
 114              	.L3:
 115              		.align	2
 116              	.L2:
 117 0058 00000000 		.word	.LC0
 118              		.cfi_endproc
 119              	.LFE24:
 121              		.section	.rodata.str1.4,"aMS",%progbits,1
 122              		.align	2
 123              	.LC0:
 124 0000 25642000 		.ascii	"%d \000"
 125              		.text
 126              	.Letext0:
 127              		.file 3 "/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/include/stddef.h"
 128              		.file 4 "/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/bits/types
 129              		.file 5 "/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/libio.h"
 130              		.file 6 "/usr/lib/gcc-cross/arm-linux-gnueabi/4.7/../../../../arm-linux-gnueabi/include/stdio.h"
 131              		.file 7 "<built-in>"
