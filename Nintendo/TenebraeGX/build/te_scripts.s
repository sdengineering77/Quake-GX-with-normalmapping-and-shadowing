	.file	"te_scripts.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl SC_BlendModeForName
	.type	SC_BlendModeForName, @function
SC_BlendModeForName:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/te_scripts.c"
	.loc 1 43 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	lis 29,.LANCHOR0@ha
	.cfi_offset 29, -12
	stw 0,28(1)
	la 29,.LANCHOR0@l(29)
	stw 30,16(1)
	stw 28,8(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 31,20(1)
	.loc 1 46 0
	li 31,0
	.cfi_offset 31, -4
.LVL1:
.L4:
	.loc 1 43 0
	slwi 30,31,3
	.loc 1 48 0
	mr 4,28
	lwzx 3,29,30
	bl Q_strcasecmp
	.loc 1 46 0
	cmpwi 6,31,9
	.loc 1 48 0
	cmpwi 7,3,0
	.loc 1 46 0
	addi 31,31,1
	.loc 1 48 0
	beq- 7,.L7
	.loc 1 46 0
	bne+ 6,.L4
	.loc 1 53 0
	lis 9,line_num@ha
	lis 3,.LC0@ha
	lwz 4,line_num@l(9)
	lis 5,.LC1@ha
	la 3,.LC0@l(3)
	la 5,.LC1@l(5)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 58 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL2:
	.loc 1 54 0
	li 3,1
	.loc 1 58 0
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL3:
.L7:
.LCFI2:
	.cfi_restore_state
	lwz 0,28(1)
	.loc 1 49 0
	add 30,29,30
	lwz 3,4(30)
	.loc 1 58 0
	mtlr 0
	lwz 28,8(1)
.LVL4:
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE38:
	.size	SC_BlendModeForName, .-SC_BlendModeForName
	.comm	causticschain,4,4
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	blendmodes, @object
	.size	blendmodes, 80
blendmodes:
	.long	.LC2
	.long	1
	.long	.LC3
	.long	0
	.long	.LC4
	.long	770
	.long	.LC5
	.long	772
	.long	.LC6
	.long	768
	.long	.LC7
	.long	774
	.long	.LC8
	.long	771
	.long	.LC9
	.long	773
	.long	.LC10
	.long	769
	.long	.LC11
	.long	775
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"\002Script error at line %i: %s\n"
	.zero	2
.LC1:
	.string	"Bad blend mode name"
.LC2:
	.string	"GL_ONE"
	.zero	1
.LC3:
	.string	"GL_ZERO"
.LC4:
	.string	"GL_SRC_ALPHA"
	.zero	3
.LC5:
	.string	"GL_DST_ALPHA"
	.zero	3
.LC6:
	.string	"GL_SRC_COLOR"
	.zero	3
.LC7:
	.string	"GL_DST_COLOR"
	.zero	3
.LC8:
	.string	"GL_ONE_MINUS_SRC_ALPHA"
	.zero	1
.LC9:
	.string	"GL_ONE_MINUS_DST_ALPHA"
	.zero	1
.LC10:
	.string	"GL_ONE_MINUS_SRC_COLOR"
	.zero	1
.LC11:
	.string	"GL_ONE_MINUS_DST_COLOR"
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/te_scripts.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5eb
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x1
	.4byte	.LASF79
	.4byte	.LASF80
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x4
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x6
	.4byte	0x7f
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x7
	.4byte	0x48
	.4byte	0xc5
	.uleb128 0x8
	.4byte	0x25
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x6a
	.4byte	0xd5
	.uleb128 0x8
	.4byte	0x25
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x25
	.4byte	0xe5
	.uleb128 0x8
	.4byte	0x25
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x41
	.4byte	0xf5
	.uleb128 0x8
	.4byte	0x25
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x7f
	.4byte	0x10b
	.uleb128 0x8
	.4byte	0x25
	.byte	0x1
	.uleb128 0x8
	.4byte	0x25
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x8d
	.4byte	0x11b
	.uleb128 0x8
	.4byte	0x25
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0x16
	.4byte	0x7f
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0x17
	.4byte	0x131
	.uleb128 0x7
	.4byte	0x11b
	.4byte	0x141
	.uleb128 0x8
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x14
	.byte	0x4
	.byte	0x52
	.4byte	0x194
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0x54
	.4byte	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x55
	.4byte	0x7f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x56
	.4byte	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x57
	.4byte	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.string	"pad"
	.byte	0x4
	.byte	0x58
	.4byte	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x8d
	.4byte	0x1a4
	.uleb128 0x8
	.4byte	0x25
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.byte	0x59
	.4byte	0x141
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x48
	.byte	0x4
	.byte	0x5b
	.4byte	0x264
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0x5d
	.4byte	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x5e
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x5e
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x5f
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x60
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0x61
	.4byte	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.byte	0x62
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x63
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.byte	0x63
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0x64
	.4byte	0x38f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.byte	0x65
	.4byte	0x38f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0x66
	.4byte	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x5c
	.byte	0x4
	.byte	0x96
	.4byte	0x389
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.byte	0x98
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x9a
	.4byte	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x9b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x9d
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0x9e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0xa0
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0xa1
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0xa3
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x4
	.byte	0xa3
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x4
	.byte	0xa5
	.4byte	0x47e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0xa6
	.4byte	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x4
	.byte	0xa7
	.4byte	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x4
	.byte	0xa9
	.4byte	0x484
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x4
	.byte	0xac
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x4
	.byte	0xad
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x4
	.byte	0xaf
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4
	.byte	0xb0
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x4
	.byte	0xb1
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x4
	.byte	0xb2
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x4
	.byte	0xb3
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x264
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1af
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x4
	.byte	0x67
	.4byte	0x1af
	.uleb128 0xc
	.byte	0x2c
	.byte	0x4
	.byte	0x7e
	.4byte	0x3e1
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x4
	.byte	0x80
	.4byte	0xf5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x4
	.byte	0x81
	.4byte	0x7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x4
	.byte	0x82
	.4byte	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x83
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x395
	.uleb128 0x5
	.4byte	.LASF61
	.byte	0x4
	.byte	0x84
	.4byte	0x3a0
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x1c
	.byte	0x4
	.byte	0x8a
	.4byte	0x461
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x4
	.byte	0x8c
	.4byte	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x4
	.byte	0x8d
	.4byte	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x4
	.byte	0x8e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x8f
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x4
	.byte	0x90
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x4
	.byte	0x92
	.4byte	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x4
	.byte	0x93
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x3f2
	.uleb128 0x4
	.byte	0x4
	.4byte	0x461
	.uleb128 0x5
	.4byte	.LASF69
	.byte	0x4
	.byte	0x94
	.4byte	0x3f2
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1a4
	.uleb128 0x4
	.byte	0x4
	.4byte	0x46d
	.uleb128 0x4
	.byte	0x4
	.4byte	0x3e7
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0x4
	.byte	0xb4
	.4byte	0x264
	.uleb128 0x4
	.byte	0x4
	.4byte	0x48a
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x4
	.byte	0x5
	.2byte	0x490
	.4byte	0x4fb
	.uleb128 0xe
	.string	"U8"
	.byte	0x5
	.2byte	0x492
	.4byte	0x4fb
	.uleb128 0xe
	.string	"S8"
	.byte	0x5
	.2byte	0x493
	.4byte	0x500
	.uleb128 0xe
	.string	"U16"
	.byte	0x5
	.2byte	0x494
	.4byte	0x505
	.uleb128 0xe
	.string	"S16"
	.byte	0x5
	.2byte	0x495
	.4byte	0x50a
	.uleb128 0xe
	.string	"U32"
	.byte	0x5
	.2byte	0x496
	.4byte	0x50f
	.uleb128 0xe
	.string	"S32"
	.byte	0x5
	.2byte	0x497
	.4byte	0x514
	.uleb128 0xe
	.string	"F32"
	.byte	0x5
	.2byte	0x498
	.4byte	0x98
	.byte	0
	.uleb128 0x6
	.4byte	0x2c
	.uleb128 0x6
	.4byte	0x3a
	.uleb128 0x6
	.4byte	0x33
	.uleb128 0x6
	.4byte	0x41
	.uleb128 0x6
	.4byte	0x25
	.uleb128 0x6
	.4byte	0x48
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x499
	.4byte	0x49b
	.uleb128 0xc
	.byte	0x8
	.byte	0x1
	.byte	0x19
	.4byte	0x54a
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1a
	.4byte	0x64
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x1
	.byte	0x1b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0x1
	.byte	0x1c
	.4byte	0x525
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x58f
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2b
	.4byte	0x64
	.4byte	.LLST1
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.4byte	0x48
	.4byte	.LLST2
	.byte	0
	.uleb128 0x7
	.4byte	0x54a
	.4byte	0x59f
	.uleb128 0x8
	.4byte	0x25
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x1
	.byte	0x1e
	.4byte	0x5b0
	.byte	0x5
	.byte	0x3
	.4byte	blendmodes
	.uleb128 0x14
	.4byte	0x58f
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.byte	0x3c
	.4byte	0x48
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x7
	.2byte	0xc2c
	.4byte	0x495
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x548
	.4byte	0x5e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0x5e8
	.uleb128 0x4
	.byte	0x4
	.4byte	0x519
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"texture_s"
.LASF57:
	.string	"texture_t"
.LASF77:
	.string	"wgPipe"
.LASF71:
	.string	"WGPipe"
.LASF82:
	.string	"SC_BlendModeForName"
.LASF73:
	.string	"glident_t"
.LASF8:
	.string	"char"
.LASF19:
	.string	"dist"
.LASF4:
	.string	"short int"
.LASF48:
	.string	"shadowchain"
.LASF30:
	.string	"texturechain"
.LASF21:
	.string	"signbits"
.LASF14:
	.string	"qboolean"
.LASF72:
	.string	"value"
.LASF64:
	.string	"chain"
.LASF67:
	.string	"neighbours"
.LASF35:
	.string	"alternate_anims"
.LASF80:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF26:
	.string	"width"
.LASF44:
	.string	"extents"
.LASF11:
	.string	"float"
.LASF22:
	.string	"mplane_t"
.LASF5:
	.string	"long long int"
.LASF36:
	.string	"offsets"
.LASF65:
	.string	"numverts"
.LASF76:
	.string	"causticschain"
.LASF9:
	.string	"long int"
.LASF29:
	.string	"gl_lumitex"
.LASF42:
	.string	"numedges"
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
.LASF79:
	.string	"d:/Data/Nintendo/TenebraeGX/src/te_scripts.c"
.LASF75:
	.string	"line_num"
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
.LASF74:
	.string	"blendmodes"
.LASF3:
	.string	"signed char"
.LASF40:
	.string	"flags"
.LASF6:
	.string	"long long unsigned int"
.LASF20:
	.string	"type"
.LASF27:
	.string	"height"
.LASF0:
	.string	"unsigned int"
.LASF31:
	.string	"anim_total"
.LASF33:
	.string	"anim_max"
.LASF23:
	.string	"mplane_s"
.LASF41:
	.string	"firstedge"
.LASF2:
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
.LASF12:
	.string	"long double"
.LASF60:
	.string	"texture"
.LASF66:
	.string	"lightTimestamp"
.LASF43:
	.string	"texturemins"
.LASF47:
	.string	"polys"
.LASF50:
	.string	"dlightframe"
.LASF7:
	.string	"long unsigned int"
.LASF61:
	.string	"mtexinfo_t"
.LASF10:
	.string	"double"
.LASF37:
	.string	"msurface_s"
.LASF70:
	.string	"msurface_t"
.LASF28:
	.string	"gl_texturenum"
.LASF55:
	.string	"cached_dlight"
.LASF81:
	.string	"_wgpipe"
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
.LASF18:
	.string	"normal"
.LASF78:
	.string	"GNU C 4.6.3"
.LASF68:
	.string	"firstvertex"
.LASF58:
	.string	"vecs"
.LASF63:
	.string	"next"
.LASF34:
	.string	"anim_next"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
