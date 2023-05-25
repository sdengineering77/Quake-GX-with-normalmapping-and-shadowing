	.file	"cd_null.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl CDAudio_Play
	.type	CDAudio_Play, @function
CDAudio_Play:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/cd_null.c"
	.loc 1 23 0
	.cfi_startproc
.LVL0:
	.loc 1 24 0
	blr
	.cfi_endproc
.LFE38:
	.size	CDAudio_Play, .-CDAudio_Play
	.align 2
	.globl CDAudio_Stop
	.type	CDAudio_Stop, @function
CDAudio_Stop:
.LFB39:
	.loc 1 28 0
	.cfi_startproc
	.loc 1 29 0
	blr
	.cfi_endproc
.LFE39:
	.size	CDAudio_Stop, .-CDAudio_Stop
	.align 2
	.globl CDAudio_Pause
	.type	CDAudio_Pause, @function
CDAudio_Pause:
.LFB40:
	.loc 1 33 0
	.cfi_startproc
	.loc 1 34 0
	blr
	.cfi_endproc
.LFE40:
	.size	CDAudio_Pause, .-CDAudio_Pause
	.align 2
	.globl CDAudio_Resume
	.type	CDAudio_Resume, @function
CDAudio_Resume:
.LFB41:
	.loc 1 38 0
	.cfi_startproc
	.loc 1 39 0
	blr
	.cfi_endproc
.LFE41:
	.size	CDAudio_Resume, .-CDAudio_Resume
	.align 2
	.globl CDAudio_Update
	.type	CDAudio_Update, @function
CDAudio_Update:
.LFB42:
	.loc 1 43 0
	.cfi_startproc
	.loc 1 44 0
	blr
	.cfi_endproc
.LFE42:
	.size	CDAudio_Update, .-CDAudio_Update
	.align 2
	.globl CDAudio_Init
	.type	CDAudio_Init, @function
CDAudio_Init:
.LFB43:
	.loc 1 48 0
	.cfi_startproc
	.loc 1 50 0
	li 3,0
	blr
	.cfi_endproc
.LFE43:
	.size	CDAudio_Init, .-CDAudio_Init
	.align 2
	.globl CDAudio_Shutdown
	.type	CDAudio_Shutdown, @function
CDAudio_Shutdown:
.LFB44:
	.loc 1 54 0
	.cfi_startproc
	.loc 1 55 0
	blr
	.cfi_endproc
.LFE44:
	.size	CDAudio_Shutdown, .-CDAudio_Shutdown
	.comm	causticschain,4,4
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5f7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x1
	.4byte	.LASF82
	.4byte	.LASF83
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x72
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0x87
	.uleb128 0x7
	.4byte	0x41
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x64
	.4byte	0xcf
	.uleb128 0x8
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x48
	.4byte	0xdf
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x33
	.4byte	0xef
	.uleb128 0x8
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x72
	.4byte	0x105
	.uleb128 0x8
	.4byte	0x48
	.byte	0x1
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x87
	.4byte	0x115
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x16
	.4byte	0x72
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x7
	.4byte	0x115
	.4byte	0x13b
	.uleb128 0x8
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x14
	.byte	0x4
	.byte	0x52
	.4byte	0x18e
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0x54
	.4byte	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x55
	.4byte	0x72
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x56
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x57
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.string	"pad"
	.byte	0x4
	.byte	0x58
	.4byte	0x18e
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x87
	.4byte	0x19e
	.uleb128 0x8
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x59
	.4byte	0x13b
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x48
	.byte	0x4
	.byte	0x5b
	.4byte	0x25e
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0x5d
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0x61
	.4byte	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0x64
	.4byte	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.byte	0x65
	.4byte	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0x66
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x5c
	.byte	0x4
	.byte	0x96
	.4byte	0x383
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x9a
	.4byte	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0xa0
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0xa1
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x4
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x4
	.byte	0xa5
	.4byte	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0xa6
	.4byte	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x4
	.byte	0xa7
	.4byte	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x4
	.byte	0xa9
	.4byte	0x47e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x4
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x4
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x4
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4
	.byte	0xb0
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x4
	.byte	0xb1
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x4
	.byte	0xb2
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x4
	.byte	0xb3
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a9
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x4
	.byte	0x67
	.4byte	0x1a9
	.uleb128 0xc
	.byte	0x2c
	.byte	0x4
	.byte	0x7e
	.4byte	0x3db
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x4
	.byte	0x80
	.4byte	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x4
	.byte	0x81
	.4byte	0x72
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x4
	.byte	0x82
	.4byte	0x3db
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38f
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x4
	.byte	0x84
	.4byte	0x39a
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x1c
	.byte	0x4
	.byte	0x8a
	.4byte	0x45b
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x4
	.byte	0x8c
	.4byte	0x45b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x4
	.byte	0x8d
	.4byte	0x45b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x4
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x4
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x4
	.byte	0x92
	.4byte	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x4
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ec
	.uleb128 0x6
	.byte	0x4
	.4byte	0x45b
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x4
	.byte	0x94
	.4byte	0x3ec
	.uleb128 0x6
	.byte	0x4
	.4byte	0x19e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x467
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e1
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x4
	.byte	0xb4
	.4byte	0x25e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x484
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x4
	.byte	0x5
	.2byte	0x490
	.4byte	0x4f5
	.uleb128 0xe
	.string	"U8"
	.byte	0x5
	.2byte	0x492
	.4byte	0x4f5
	.uleb128 0xe
	.string	"S8"
	.byte	0x5
	.2byte	0x493
	.4byte	0x4fa
	.uleb128 0xe
	.string	"U16"
	.byte	0x5
	.2byte	0x494
	.4byte	0x4ff
	.uleb128 0xe
	.string	"S16"
	.byte	0x5
	.2byte	0x495
	.4byte	0x504
	.uleb128 0xe
	.string	"U32"
	.byte	0x5
	.2byte	0x496
	.4byte	0x509
	.uleb128 0xe
	.string	"S32"
	.byte	0x5
	.2byte	0x497
	.4byte	0x50e
	.uleb128 0xe
	.string	"F32"
	.byte	0x5
	.2byte	0x498
	.4byte	0x92
	.byte	0
	.uleb128 0x5
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x25
	.uleb128 0x5
	.4byte	0x3a
	.uleb128 0x5
	.4byte	0x33
	.uleb128 0x5
	.4byte	0x48
	.uleb128 0x5
	.4byte	0x41
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x499
	.4byte	0x495
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x552
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x1
	.byte	0x16
	.4byte	0x87
	.byte	0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.byte	0x16
	.4byte	0x97
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x6
	.2byte	0xc2c
	.4byte	0x48f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x548
	.4byte	0x5ef
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x5f4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x513
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
	.uleb128 0x1b
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"texture_s"
.LASF57:
	.string	"texture_t"
.LASF80:
	.string	"wgPipe"
.LASF82:
	.string	"d:/Data/Nintendo/TenebraeGX/src/cd_null.c"
.LASF71:
	.string	"WGPipe"
.LASF84:
	.string	"_wgpipe"
.LASF47:
	.string	"polys"
.LASF44:
	.string	"extents"
.LASF8:
	.string	"char"
.LASF19:
	.string	"dist"
.LASF78:
	.string	"CDAudio_Shutdown"
.LASF2:
	.string	"short int"
.LASF48:
	.string	"shadowchain"
.LASF30:
	.string	"texturechain"
.LASF76:
	.string	"CDAudio_Resume"
.LASF14:
	.string	"qboolean"
.LASF21:
	.string	"signbits"
.LASF64:
	.string	"chain"
.LASF67:
	.string	"neighbours"
.LASF35:
	.string	"alternate_anims"
.LASF83:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF26:
	.string	"width"
.LASF77:
	.string	"CDAudio_Update"
.LASF10:
	.string	"float"
.LASF22:
	.string	"mplane_t"
.LASF5:
	.string	"long long int"
.LASF85:
	.string	"CDAudio_Play"
.LASF36:
	.string	"offsets"
.LASF65:
	.string	"numverts"
.LASF79:
	.string	"causticschain"
.LASF12:
	.string	"long int"
.LASF29:
	.string	"gl_lumitex"
.LASF42:
	.string	"numedges"
.LASF72:
	.string	"track"
.LASF86:
	.string	"CDAudio_Init"
.LASF56:
	.string	"samples"
.LASF13:
	.string	"byte"
.LASF25:
	.string	"name"
.LASF1:
	.string	"unsigned char"
.LASF16:
	.string	"vec_t"
.LASF53:
	.string	"styles"
.LASF49:
	.string	"texinfo"
.LASF38:
	.string	"visframe"
.LASF17:
	.string	"vec3_t"
.LASF54:
	.string	"cached_light"
.LASF0:
	.string	"signed char"
.LASF40:
	.string	"flags"
.LASF6:
	.string	"long long unsigned int"
.LASF20:
	.string	"type"
.LASF27:
	.string	"height"
.LASF4:
	.string	"unsigned int"
.LASF31:
	.string	"anim_total"
.LASF33:
	.string	"anim_max"
.LASF75:
	.string	"CDAudio_Pause"
.LASF23:
	.string	"mplane_s"
.LASF41:
	.string	"firstedge"
.LASF3:
	.string	"short unsigned int"
.LASF62:
	.string	"glpoly_s"
.LASF69:
	.string	"glpoly_t"
.LASF32:
	.string	"anim_min"
.LASF52:
	.string	"lightmaptexturenum"
.LASF15:
	.string	"_Bool"
.LASF11:
	.string	"long double"
.LASF60:
	.string	"texture"
.LASF66:
	.string	"lightTimestamp"
.LASF43:
	.string	"texturemins"
.LASF50:
	.string	"dlightframe"
.LASF7:
	.string	"long unsigned int"
.LASF61:
	.string	"mtexinfo_t"
.LASF9:
	.string	"double"
.LASF37:
	.string	"msurface_s"
.LASF70:
	.string	"msurface_t"
.LASF28:
	.string	"gl_texturenum"
.LASF55:
	.string	"cached_dlight"
.LASF39:
	.string	"plane"
.LASF45:
	.string	"light_s"
.LASF46:
	.string	"light_t"
.LASF59:
	.string	"mipadjust"
.LASF51:
	.string	"dlightbits"
.LASF74:
	.string	"CDAudio_Stop"
.LASF18:
	.string	"normal"
.LASF81:
	.string	"GNU C 4.6.3"
.LASF73:
	.string	"looping"
.LASF68:
	.string	"firstvertex"
.LASF58:
	.string	"vecs"
.LASF63:
	.string	"next"
.LASF34:
	.string	"anim_next"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
