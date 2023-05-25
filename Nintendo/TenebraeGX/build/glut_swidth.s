	.file	"glut_swidth.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl glutStrokeWidth
	.type	glutStrokeWidth, @function
glutStrokeWidth:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_swidth.c"
	.loc 1 14 0
	.cfi_startproc
.LVL0:
	.loc 1 18 0
	cmpwi 0,4,0
.LVL1:
	.loc 1 14 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.loc 1 19 0
	li 0,0
	.loc 1 18 0
	blt- 0,.L2
	.loc 1 18 0 is_stmt 0 discriminator 1
	lwz 9,4(3)
	cmpw 7,4,9
	bge- 7,.L2
	.loc 1 20 0 is_stmt 1
	lwz 9,8(3)
	slwi 4,4,4
.LVL2:
	.loc 1 21 0
	add. 4,9,4
.LVL3:
	beq- 0,.L2
	.loc 1 22 0
	lfs 0,12(4)
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,8(1)
.LVL4:
.L2:
	.loc 1 25 0
	mr 3,0
.LVL5:
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE0:
	.size	glutStrokeWidth, .-glutStrokeWidth
	.align 2
	.globl glutStrokeLength
	.type	glutStrokeLength, @function
glutStrokeLength:
.LFB1:
	.loc 1 29 0
	.cfi_startproc
.LVL6:
	.loc 1 35 0
	lbz 0,0(4)
.LVL7:
	.loc 1 34 0
	li 9,0
	.loc 1 29 0
	stwu 1,-24(1)
.LCFI2:
	.cfi_def_cfa_offset 24
	.loc 1 35 0
	cmpwi 7,0,0
	beq- 7,.L8
	lwz 8,4(3)
	.loc 1 40 0
	lis 6,0x4330
	lis 7,.LC1@ha
.LVL8:
.L10:
	.loc 1 37 0
	cmpw 7,8,0
	.loc 1 40 0
	xoris 10,9,0x8000
	.loc 1 38 0
	slwi 0,0,4
.LVL9:
	.loc 1 37 0
	bgt- 7,.L9
	.loc 1 38 0
	lwz 11,8(3)
.LVL10:
	.loc 1 39 0
	add. 11,11,0
	beq- 0,.L9
	.loc 1 40 0
	stw 10,12(1)
	addi 9,1,16
	stw 6,8(1)
	lfs 0,.LC1@l(7)
	lfd 12,8(1)
	lfs 13,12(11)
	fsub 0,12,0
	frsp 0,0
	fadds 0,0,13
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 9,16(1)
.LVL11:
.L9:
	.loc 1 35 0
	lbzu 0,1(4)
	cmpwi 7,0,0
	bne+ 7,.L10
.LVL12:
.L8:
	.loc 1 44 0
	mr 3,9
.LVL13:
	addi 1,1,24
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE1:
	.size	glutStrokeLength, .-glutStrokeLength
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560836
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glutstroke.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x289
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1
	.4byte	.LASF32
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
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x8
	.byte	0x2
	.byte	0xa
	.4byte	0x98
	.uleb128 0x6
	.string	"x"
	.byte	0x2
	.byte	0xb
	.4byte	0x4b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"y"
	.byte	0x2
	.byte	0xc
	.4byte	0x4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0xd
	.4byte	0x77
	.uleb128 0x5
	.byte	0x8
	.byte	0x2
	.byte	0xf
	.4byte	0xc8
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x2
	.byte	0x10
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x11
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xce
	.uleb128 0xa
	.4byte	0x98
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x12
	.4byte	0xa3
	.uleb128 0x5
	.byte	0x10
	.byte	0x2
	.byte	0x14
	.4byte	0x11f
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x2
	.byte	0x15
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x2
	.byte	0x16
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x2
	.byte	0x17
	.4byte	0x4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x2
	.byte	0x18
	.4byte	0x4b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x125
	.uleb128 0xa
	.4byte	0xd3
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x2
	.byte	0x19
	.4byte	0xde
	.uleb128 0x5
	.byte	0x14
	.byte	0x2
	.byte	0x1b
	.4byte	0x183
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x2
	.byte	0x1c
	.4byte	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x2
	.byte	0x1d
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ch"
	.byte	0x2
	.byte	0x1e
	.4byte	0x18e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"top"
	.byte	0x2
	.byte	0x1f
	.4byte	0x4b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x2
	.byte	0x20
	.4byte	0x4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x189
	.uleb128 0xa
	.4byte	0x62
	.uleb128 0x9
	.byte	0x4
	.4byte	0x194
	.uleb128 0xa
	.4byte	0x12a
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x2
	.byte	0x21
	.4byte	0x1a4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x135
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x2
	.byte	0x23
	.4byte	0x59
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x20c
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd
	.4byte	0x1aa
	.4byte	.LLST1
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0xd
	.4byte	0x3d
	.4byte	.LLST2
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0xf
	.4byte	0x199
	.4byte	.LLST3
	.uleb128 0xf
	.string	"ch"
	.byte	0x1
	.byte	0x10
	.4byte	0x18e
	.4byte	.LLST4
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST5
	.4byte	0x281
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1c
	.4byte	0x1aa
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1c
	.4byte	0x281
	.4byte	.LLST7
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x1e
	.4byte	0x3d
	.4byte	.LLST8
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1e
	.4byte	0x3d
	.4byte	.LLST9
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1f
	.4byte	0x199
	.4byte	.LLST10
	.uleb128 0xf
	.string	"ch"
	.byte	0x1
	.byte	0x20
	.4byte	0x18e
	.4byte	.LLST11
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x287
	.uleb128 0xa
	.4byte	0x28
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
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
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
	.uleb128 0xe
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0-.Ltext0
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
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB1-.Ltext0
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
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
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
.LASF12:
	.string	"coord"
.LASF4:
	.string	"short unsigned int"
.LASF19:
	.string	"StrokeCharRec"
.LASF26:
	.string	"fontinfo"
.LASF24:
	.string	"GLUTstrokeFont"
.LASF29:
	.string	"string"
.LASF13:
	.string	"CoordRec"
.LASF32:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_swidth.c"
.LASF5:
	.string	"float"
.LASF16:
	.string	"stroke"
.LASF1:
	.string	"unsigned char"
.LASF18:
	.string	"right"
.LASF11:
	.string	"num_coords"
.LASF22:
	.string	"bottom"
.LASF31:
	.string	"GNU C 4.6.3"
.LASF6:
	.string	"double"
.LASF25:
	.string	"font"
.LASF17:
	.string	"center"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"char"
.LASF23:
	.string	"StrokeFontPtr"
.LASF27:
	.string	"glutStrokeWidth"
.LASF28:
	.string	"glutStrokeLength"
.LASF9:
	.string	"long long int"
.LASF14:
	.string	"StrokeRec"
.LASF20:
	.string	"name"
.LASF3:
	.string	"short int"
.LASF21:
	.string	"num_chars"
.LASF15:
	.string	"num_strokes"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"length"
.LASF10:
	.string	"long long unsigned int"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
