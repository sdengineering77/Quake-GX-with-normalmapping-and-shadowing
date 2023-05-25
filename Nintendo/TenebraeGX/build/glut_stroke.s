	.file	"glut_stroke.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl glutStrokeCharacter
	.type	glutStrokeCharacter, @function
glutStrokeCharacter:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_stroke.c"
	.loc 1 13 0
	.cfi_startproc
.LVL0:
	.loc 1 20 0
	cmpwi 0,4,0
.LVL1:
	.loc 1 13 0
	mflr 0
	stwu 1,-32(1)
.LCFI0:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 0,36(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 20 0
	blt- 0,.L1
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 20 0 is_stmt 0 discriminator 1
	lwz 0,4(3)
	cmpw 7,4,0
	bge- 7,.L1
	.loc 1 22 0 is_stmt 1
	lwz 9,8(3)
	slwi 4,4,4
.LVL2:
	.loc 1 23 0
	add. 30,9,4
	beq- 0,.L1
	.loc 1 24 0
	lwzx 9,9,4
	lwz 31,4(30)
	cmpwi 7,9,0
	stw 9,12(1)
.LVL3:
	ble- 7,.L3
.LVL4:
.L7:
	.loc 1 26 0
	li 3,3
	bl glBegin
.LVL5:
	.loc 1 27 0
	lwz 0,0(31)
	lwz 29,4(31)
	cmpwi 7,0,0
	stw 0,8(1)
.LVL6:
	ble- 7,.L4
.LVL7:
.L8:
	.loc 1 29 0
	lfs 1,0(29)
	lfs 2,4(29)
	.loc 1 28 0
	addi 29,29,8
.LVL8:
	.loc 1 29 0
	bl glVertex2f
.LVL9:
	.loc 1 27 0
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L8
.LVL10:
.L4:
	.loc 1 31 0
	bl glEnd
.LVL11:
	.loc 1 24 0
	lwz 0,12(1)
	.loc 1 25 0
	addi 31,31,8
.LVL12:
	.loc 1 24 0
	addic. 9,0,-1
	stw 9,12(1)
	bne+ 0,.L7
.LVL13:
.L3:
	.loc 1 33 0
	lis 9,.LC0@ha
.LVL14:
	lfs 1,12(30)
	lfs 2,.LC0@l(9)
	fmr 3,2
	bl glTranslatef
.LVL15:
.L1:
	.loc 1 35 0
	lwz 0,36(1)
	lwz 29,20(1)
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE0:
	.size	glutStrokeCharacter, .-glutStrokeCharacter
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	0
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glutstroke.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x239
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x1
	.4byte	.LASF28
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
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0xc
	.4byte	0x1aa
	.4byte	.LLST1
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0xc
	.4byte	0x3d
	.4byte	.LLST2
	.uleb128 0xe
	.string	"ch"
	.byte	0x1
	.byte	0xe
	.4byte	0x18e
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0xf
	.4byte	0x11f
	.4byte	.LLST4
	.uleb128 0xf
	.4byte	.LASF12
	.byte	0x1
	.byte	0x10
	.4byte	0xc8
	.4byte	.LLST5
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x11
	.4byte	0x199
	.4byte	.LLST6
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x12
	.4byte	0x3d
	.4byte	.LLST7
	.uleb128 0xe
	.string	"j"
	.byte	0x1
	.byte	0x12
	.4byte	0x3d
	.4byte	.LLST8
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0xf
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
	.sleb128 32
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
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
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 4
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
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
	.string	"glutStrokeCharacter"
.LASF13:
	.string	"CoordRec"
.LASF5:
	.string	"float"
.LASF10:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF18:
	.string	"right"
.LASF11:
	.string	"num_coords"
.LASF22:
	.string	"bottom"
.LASF27:
	.string	"GNU C 4.6.3"
.LASF6:
	.string	"double"
.LASF28:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_stroke.c"
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
.LASF16:
	.string	"stroke"
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
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
