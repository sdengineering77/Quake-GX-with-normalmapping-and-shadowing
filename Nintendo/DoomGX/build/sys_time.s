	.file	"sys_time.cpp"
	.section	".text"
.Ltext0:
	.globl __floatdidf
	.align 2
	.globl _Z16Sys_Millisecondsv
	.type	_Z16Sys_Millisecondsv, @function
_Z16Sys_Millisecondsv:
.LFB61:
	.file 1 "d:/Data/Nintendo/DoomGX/src/sys/ogc/sys_time.cpp"
	.loc 1 14 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 0,20(1)
.LBB2:
	.loc 1 15 0
	.cfi_offset 65, 4
	bl gettime
	.loc 1 16 0
	bl __floatdidf
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	lis 9,.LC2@ha
	lfs 13,.LC2@l(9)
.LBE2:
	.loc 1 18 0
	addi 9,1,8
.LBB3:
	.loc 1 16 0
	fmul 0,1,0
	fmul 0,0,13
.LBE3:
	.loc 1 18 0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,20(1)
	lwz 3,8(1)
	mtlr 0
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE61:
	.size	_Z16Sys_Millisecondsv, .-_Z16Sys_Millisecondsv
	.align 2
	.globl _Z17Sys_GetClockTicksv
	.type	_Z17Sys_GetClockTicksv, @function
_Z17Sys_GetClockTicksv:
.LFB62:
	.loc 1 20 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB4:
	.loc 1 21 0
	.cfi_offset 65, 4
	bl gettime
	.loc 1 22 0
	bl __floatdidf
.LBE4:
	.loc 1 24 0
	lwz 0,12(1)
.LBB5:
	.loc 1 22 0
	lis 9,.LC4@ha
.LBE5:
	.loc 1 24 0
	mtlr 0
.LBB6:
	.loc 1 22 0
	lfs 0,.LC4@l(9)
.LBE6:
	.loc 1 24 0
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	fmul 1,1,0
	blr
	.cfi_endproc
.LFE62:
	.size	_Z17Sys_GetClockTicksv, .-_Z17Sys_GetClockTicksv
	.align 2
	.globl _Z23Sys_ClockTicksPerSecondv
	.type	_Z23Sys_ClockTicksPerSecondv, @function
_Z23Sys_ClockTicksPerSecondv:
.LFB63:
	.loc 1 26 0
	.cfi_startproc
	.loc 1 27 0
	lis 9,.LC6@ha
	.loc 1 28 0
	lfs 1,.LC6@l(9)
	blr
	.cfi_endproc
.LFE63:
	.size	_Z23Sys_ClockTicksPerSecondv, .-_Z23Sys_ClockTicksPerSecondv
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1148846080
.LC4:
	.4byte	1094713344
.LC6:
	.4byte	1311624865
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	1045540029
	.4byte	1020022141
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 3 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 4 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a5
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x4
	.4byte	.LASF32
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2a
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x35
	.4byte	0x50
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x36
	.4byte	0x62
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.4byte	0x74
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x50
	.4byte	0x86
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.string	"u8"
	.byte	0x3
	.byte	0x11
	.4byte	0x33
	.uleb128 0x5
	.string	"u16"
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x5
	.string	"u32"
	.byte	0x3
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x5
	.string	"s8"
	.byte	0x3
	.byte	0x16
	.4byte	0x21
	.uleb128 0x5
	.string	"s16"
	.byte	0x3
	.byte	0x17
	.4byte	0x45
	.uleb128 0x5
	.string	"s32"
	.byte	0x3
	.byte	0x18
	.4byte	0x69
	.uleb128 0x5
	.string	"vu8"
	.byte	0x3
	.byte	0x1b
	.4byte	0xe6
	.uleb128 0x6
	.4byte	0x9b
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1c
	.4byte	0xf6
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x1d
	.4byte	0x106
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x5
	.string	"vs8"
	.byte	0x3
	.byte	0x20
	.4byte	0x116
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x126
	.uleb128 0x6
	.4byte	0xc5
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x22
	.4byte	0x136
	.uleb128 0x6
	.4byte	0xd0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2e
	.4byte	0x154
	.uleb128 0x6
	.4byte	0x13b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0x4
	.2byte	0x490
	.4byte	0x1ce
	.uleb128 0x8
	.string	"U8"
	.byte	0x4
	.2byte	0x492
	.4byte	0xdb
	.uleb128 0x8
	.string	"S8"
	.byte	0x4
	.2byte	0x493
	.4byte	0x10b
	.uleb128 0x8
	.string	"U16"
	.byte	0x4
	.2byte	0x494
	.4byte	0xeb
	.uleb128 0x8
	.string	"S16"
	.byte	0x4
	.2byte	0x495
	.4byte	0x11b
	.uleb128 0x8
	.string	"U32"
	.byte	0x4
	.2byte	0x496
	.4byte	0xfb
	.uleb128 0x8
	.string	"S32"
	.byte	0x4
	.2byte	0x497
	.4byte	0x12b
	.uleb128 0x8
	.string	"F32"
	.byte	0x4
	.2byte	0x498
	.4byte	0x149
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x499
	.4byte	0x16e
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF24
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0xe
	.4byte	.LASF29
	.4byte	0x74
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST0
	.4byte	0x21e
	.uleb128 0xb
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0xf
	.4byte	0x8d
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x10
	.4byte	0x142
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x14
	.4byte	.LASF30
	.4byte	0x142
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST1
	.4byte	0x25b
	.uleb128 0xb
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x15
	.4byte	0x8d
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x16
	.4byte	0x142
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1a
	.4byte	.LASF35
	.4byte	0x142
	.4byte	.LFB63
	.4byte	.LFE63
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x548
	.4byte	0x284
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.4byte	0x289
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1ce
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x1
	.byte	0xb
	.4byte	0x2a3
	.byte	0x8
	.4byte	0x3e51acbd
	.4byte	0x3ccc4d7d
	.uleb128 0xf
	.4byte	0x142
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB61-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB62-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"bool"
.LASF19:
	.string	"vf32"
.LASF34:
	.string	"Sys_ClockTicksPerSecond"
.LASF15:
	.string	"vs16"
.LASF29:
	.string	"_Z16Sys_Millisecondsv"
.LASF36:
	.string	"wgPipe"
.LASF1:
	.string	"uint8_t"
.LASF26:
	.string	"dtime"
.LASF13:
	.string	"vu16"
.LASF0:
	.string	"int8_t"
.LASF14:
	.string	"vu32"
.LASF23:
	.string	"WGPipe"
.LASF17:
	.string	"float"
.LASF31:
	.string	"GNU C++ 4.6.3"
.LASF3:
	.string	"unsigned char"
.LASF22:
	.string	"long unsigned int"
.LASF27:
	.string	"Sys_Milliseconds"
.LASF7:
	.string	"short unsigned int"
.LASF33:
	.string	"_wgpipe"
.LASF25:
	.string	"time"
.LASF18:
	.string	"double"
.LASF16:
	.string	"vs32"
.LASF10:
	.string	"unsigned int"
.LASF20:
	.string	"char"
.LASF35:
	.string	"_Z23Sys_ClockTicksPerSecondv"
.LASF28:
	.string	"Sys_GetClockTicks"
.LASF4:
	.string	"int16_t"
.LASF8:
	.string	"int32_t"
.LASF11:
	.string	"long long int"
.LASF6:
	.string	"uint16_t"
.LASF5:
	.string	"short int"
.LASF30:
	.string	"_Z17Sys_GetClockTicksv"
.LASF9:
	.string	"uint32_t"
.LASF24:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF32:
	.string	"d:/Data/Nintendo/DoomGX/src/sys/ogc/sys_time.cpp"
.LASF12:
	.string	"long long unsigned int"
.LASF37:
	.string	"TB_TIMERCLOCK_SEC_INV"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
