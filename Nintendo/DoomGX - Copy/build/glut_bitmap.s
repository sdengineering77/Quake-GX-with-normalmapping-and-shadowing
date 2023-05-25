	.file	"glut_bitmap.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl glutBitmapCharacter
	.type	glutBitmapCharacter, @function
glutBitmapCharacter:
.LFB2:
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_bitmap.c"
	.loc 1 12 0
.LVL0:
	mflr 0
.LCFI0:
	stwu 1,-48(1)
.LCFI1:
	stw 31,44(1)
.LCFI2:
	stw 0,52(1)
.LCFI3:
	.loc 1 18 0
	lwz 9,8(3)
	cmpw 7,9,4
	bgt- 7,.L6
	lwz 0,4(3)
	add 0,9,0
	cmpw 7,4,0
	bge- 7,.L6
	.loc 1 21 0
	subf 0,9,4
	lwz 9,12(3)
	slwi 0,0,2
	lwzx 31,9,0
.LVL1:
	.loc 1 22 0
	cmpwi 7,31,0
	beq- 7,.L6
	.loc 1 24 0
	li 3,3312
.LVL2:
	addi 4,1,8
.LVL3:
	bl glGetIntegerv
	.loc 1 25 0
	li 3,3313
	addi 4,1,12
	bl glGetIntegerv
	.loc 1 26 0
	li 3,3314
	addi 4,1,16
	bl glGetIntegerv
	.loc 1 27 0
	li 3,3315
	addi 4,1,20
	bl glGetIntegerv
	.loc 1 28 0
	li 3,3316
	addi 4,1,24
	bl glGetIntegerv
	.loc 1 29 0
	li 3,3317
	addi 4,1,28
	bl glGetIntegerv
	.loc 1 34 0
	li 3,3312
	li 4,0
	bl glPixelStorei
	.loc 1 35 0
	li 3,3313
	li 4,0
	bl glPixelStorei
	.loc 1 36 0
	li 3,3314
	li 4,0
	bl glPixelStorei
	.loc 1 37 0
	li 3,3315
	li 4,0
	bl glPixelStorei
	.loc 1 38 0
	li 3,3316
	li 4,0
	bl glPixelStorei
	.loc 1 39 0
	li 3,3317
	li 4,1
	bl glPixelStorei
	.loc 1 40 0
	lis 9,.LC0@ha
	lwz 5,20(31)
	lfs 1,8(31)
	lfs 2,12(31)
	lfs 3,16(31)
	lfs 4,.LC0@l(9)
	lwz 3,0(31)
	lwz 4,4(31)
	bl glBitmap
	.loc 1 43 0
	lwz 4,8(1)
.LVL4:
	li 3,3312
	bl glPixelStorei
	.loc 1 44 0
	lwz 4,12(1)
.LVL5:
	li 3,3313
	bl glPixelStorei
	.loc 1 45 0
	lwz 4,16(1)
.LVL6:
	li 3,3314
	bl glPixelStorei
	.loc 1 46 0
	lwz 4,20(1)
.LVL7:
	li 3,3315
	bl glPixelStorei
	.loc 1 47 0
	lwz 4,24(1)
.LVL8:
	li 3,3316
	bl glPixelStorei
	.loc 1 48 0
	lwz 4,28(1)
.LVL9:
	li 3,3317
	bl glPixelStorei
.LVL10:
.L6:
	.loc 1 50 0
	lwz 0,52(1)
	lwz 31,44(1)
.LVL11:
	addi 1,1,48
	mtlr 0
	blr
.LFE2:
	.size	glutBitmapCharacter, .-glutBitmapCharacter
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	0
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x41
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.align 2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI3-.LCFI1
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE0:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
	.file 2 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
	.file 3 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glutbitmap.h"
	.section	.debug_info
	.4byte	0x242
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1
	.4byte	.LASF35
	.4byte	.LASF36
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
	.4byte	.LASF4
	.byte	0x2
	.byte	0x99
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x9a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x9d
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x9e
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	0x70
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	0x65
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x5
	.4byte	0x53
	.uleb128 0x8
	.byte	0x18
	.byte	0x3
	.byte	0xc
	.4byte	0x119
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0xd
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0xe
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0xf
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.byte	0x10
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.byte	0x11
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x3
	.byte	0x12
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x13
	.4byte	0xbc
	.uleb128 0x8
	.byte	0x10
	.byte	0x3
	.byte	0x15
	.4byte	0x164
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x3
	.byte	0x16
	.4byte	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x3
	.byte	0x17
	.4byte	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.byte	0x18
	.4byte	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"ch"
	.byte	0x3
	.byte	0x19
	.4byte	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x16a
	.uleb128 0x5
	.4byte	0x97
	.uleb128 0x5
	.4byte	0x4c
	.uleb128 0x7
	.byte	0x4
	.4byte	0x17a
	.uleb128 0x5
	.4byte	0x17f
	.uleb128 0x7
	.byte	0x4
	.4byte	0x185
	.uleb128 0x5
	.4byte	0x119
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x3
	.byte	0x1a
	.4byte	0x195
	.uleb128 0x7
	.byte	0x4
	.4byte	0x124
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x3
	.byte	0x1c
	.4byte	0x8e
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0xb
	.4byte	0x19b
	.4byte	.LLST1
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0xb
	.4byte	0x4c
	.4byte	.LLST2
	.uleb128 0xe
	.string	"ch"
	.byte	0x1
	.byte	0xd
	.4byte	0x17f
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0xe
	.4byte	0x18a
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0xf
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0xf
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0xf
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x10
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x10
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x10
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.section	.debug_abbrev
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x26
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x246
	.4byte	0x1a6
	.string	"glutBitmapCharacter"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"lsbfirst"
.LASF24:
	.string	"first"
.LASF31:
	.string	"skiprows"
.LASF20:
	.string	"bitmap"
.LASF38:
	.string	"fontinfo"
.LASF26:
	.string	"GLUTbitmapFont"
.LASF30:
	.string	"rowlength"
.LASF9:
	.string	"float"
.LASF14:
	.string	"long long unsigned int"
.LASF37:
	.string	"glutBitmapCharacter"
.LASF7:
	.string	"GLsizei"
.LASF32:
	.string	"skippixels"
.LASF6:
	.string	"short unsigned int"
.LASF16:
	.string	"height"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"xorig"
.LASF10:
	.string	"double"
.LASF21:
	.string	"BitmapCharRec"
.LASF27:
	.string	"font"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"yorig"
.LASF12:
	.string	"char"
.LASF4:
	.string	"GLint"
.LASF13:
	.string	"long long int"
.LASF33:
	.string	"alignment"
.LASF22:
	.string	"name"
.LASF28:
	.string	"swapbytes"
.LASF36:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF15:
	.string	"width"
.LASF3:
	.string	"short int"
.LASF23:
	.string	"num_chars"
.LASF5:
	.string	"GLubyte"
.LASF19:
	.string	"advance"
.LASF11:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF34:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF8:
	.string	"GLfloat"
.LASF25:
	.string	"BitmapFontPtr"
.LASF35:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_bitmap.c"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
