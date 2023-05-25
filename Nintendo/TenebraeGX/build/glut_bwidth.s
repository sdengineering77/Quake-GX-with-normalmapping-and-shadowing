	.file	"glut_bwidth.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl glutBitmapWidth
	.type	glutBitmapWidth, @function
glutBitmapWidth:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_bwidth.c"
	.loc 1 13 0
	.cfi_startproc
.LVL0:
	.loc 1 17 0
	lwz 0,8(3)
	.loc 1 13 0
	mr 9,3
.LVL1:
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.loc 1 18 0
	li 3,0
.LVL2:
	.loc 1 17 0
	cmpw 7,0,4
	bgt- 7,.L2
	.loc 1 17 0 is_stmt 0 discriminator 1
	lwz 11,4(9)
	add 11,0,11
	cmpw 7,4,11
	bge- 7,.L2
	.loc 1 19 0 is_stmt 1
	subf 0,0,4
	lwz 9,12(9)
.LVL3:
	slwi 0,0,2
	lwzx 9,9,0
.LVL4:
	.loc 1 20 0
	cmpwi 7,9,0
	beq- 7,.L2
	.loc 1 21 0
	lfs 0,16(9)
	addi 9,1,8
.LVL5:
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,8(1)
.L2:
	.loc 1 24 0
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE0:
	.size	glutBitmapWidth, .-glutBitmapWidth
	.align 2
	.globl glutBitmapLength
	.type	glutBitmapLength, @function
glutBitmapLength:
.LFB1:
	.loc 1 28 0
	.cfi_startproc
.LVL6:
	.loc 1 34 0
	lbz 0,0(4)
.LVL7:
	.loc 1 33 0
	li 10,0
	.loc 1 28 0
	stwu 1,-24(1)
.LCFI2:
	.cfi_def_cfa_offset 24
	.loc 1 34 0
	cmpwi 7,0,0
	beq- 7,.L8
	lwz 9,8(3)
	.loc 1 39 0
	lis 5,0x4330
	lis 6,.LC1@ha
.LVL8:
.L11:
	.loc 1 36 0
	cmpw 7,9,0
	.loc 1 37 0
	subf 11,9,0
	.loc 1 39 0
	xoris 8,10,0x8000
	.loc 1 37 0
	slwi 11,11,2
	.loc 1 36 0
	bgt- 7,.L9
	.loc 1 36 0 is_stmt 0 discriminator 1
	lwz 7,4(3)
	add 7,9,7
	cmpw 7,0,7
	blt- 7,.L10
.L9:
	.loc 1 37 0 is_stmt 1
	lwz 7,12(3)
	lwzx 11,7,11
.LVL9:
	.loc 1 38 0
	cmpwi 7,11,0
	beq- 7,.L10
	.loc 1 39 0
	stw 8,12(1)
	stw 5,8(1)
	lfs 0,.LC1@l(6)
	lfd 12,8(1)
	lfs 13,16(11)
	addi 11,1,16
.LVL10:
	fsub 0,12,0
	frsp 0,0
	fadds 0,0,13
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 10,16(1)
.LVL11:
.L10:
	.loc 1 34 0
	lbzu 0,1(4)
.LVL12:
	cmpwi 7,0,0
	bne+ 7,.L11
.LVL13:
.L8:
	.loc 1 43 0
	mr 3,10
.LVL14:
	addi 1,1,24
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE1:
	.size	glutBitmapLength, .-glutBitmapLength
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560836
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glutbitmap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x269
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1
	.4byte	.LASF33
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x9a
	.4byte	0x28
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x9d
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x9e
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	0x61
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	0x56
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa8
	.uleb128 0x5
	.4byte	0x44
	.uleb128 0x8
	.byte	0x18
	.byte	0x3
	.byte	0xc
	.4byte	0x10a
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x3
	.byte	0xd
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0xe
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0xf
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0x10
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.byte	0x11
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.byte	0x12
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x13
	.4byte	0xad
	.uleb128 0x8
	.byte	0x10
	.byte	0x3
	.byte	0x15
	.4byte	0x155
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.byte	0x16
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x3
	.byte	0x17
	.4byte	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x3
	.byte	0x18
	.4byte	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"ch"
	.byte	0x3
	.byte	0x19
	.4byte	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x15b
	.uleb128 0x5
	.4byte	0x88
	.uleb128 0x5
	.4byte	0x3d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x16b
	.uleb128 0x5
	.4byte	0x170
	.uleb128 0x7
	.byte	0x4
	.4byte	0x176
	.uleb128 0x5
	.4byte	0x10a
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x3
	.byte	0x1a
	.4byte	0x186
	.uleb128 0x7
	.byte	0x4
	.4byte	0x115
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x3
	.byte	0x1c
	.4byte	0x7f
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x1ec
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0xc
	.4byte	0x18c
	.4byte	.LLST1
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0xc
	.4byte	0x3d
	.byte	0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0xe
	.4byte	0x17b
	.4byte	.LLST2
	.uleb128 0xf
	.string	"ch"
	.byte	0x1
	.byte	0xf
	.4byte	0x170
	.4byte	.LLST3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST4
	.4byte	0x261
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1b
	.4byte	0x18c
	.4byte	.LLST5
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1b
	.4byte	0x261
	.4byte	.LLST6
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x1d
	.4byte	0x3d
	.4byte	.LLST7
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1d
	.4byte	0x3d
	.4byte	.LLST8
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1e
	.4byte	0x17b
	.4byte	.LLST9
	.uleb128 0xf
	.string	"ch"
	.byte	0x1
	.byte	0x1f
	.4byte	0x170
	.4byte	.LLST10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x267
	.uleb128 0x5
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
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
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
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x5b
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
.LASF23:
	.string	"first"
.LASF28:
	.string	"glutBitmapWidth"
.LASF19:
	.string	"bitmap"
.LASF27:
	.string	"fontinfo"
.LASF30:
	.string	"string"
.LASF25:
	.string	"GLUTbitmapFont"
.LASF8:
	.string	"float"
.LASF13:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"GLsizei"
.LASF16:
	.string	"xorig"
.LASF4:
	.string	"short unsigned int"
.LASF29:
	.string	"glutBitmapLength"
.LASF15:
	.string	"height"
.LASF32:
	.string	"GNU C 4.6.3"
.LASF33:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_bwidth.c"
.LASF9:
	.string	"double"
.LASF20:
	.string	"BitmapCharRec"
.LASF26:
	.string	"font"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"yorig"
.LASF11:
	.string	"char"
.LASF12:
	.string	"long long int"
.LASF21:
	.string	"name"
.LASF14:
	.string	"width"
.LASF3:
	.string	"short int"
.LASF22:
	.string	"num_chars"
.LASF5:
	.string	"GLubyte"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF18:
	.string	"advance"
.LASF7:
	.string	"GLfloat"
.LASF31:
	.string	"length"
.LASF24:
	.string	"BitmapFontPtr"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
