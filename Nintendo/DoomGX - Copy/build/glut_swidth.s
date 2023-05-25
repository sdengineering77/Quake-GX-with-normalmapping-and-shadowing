	.file	"glut_swidth.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl glutStrokeWidth
	.type	glutStrokeWidth, @function
glutStrokeWidth:
.LFB2:
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_swidth.c"
	.loc 1 14 0
.LVL0:
	.loc 1 18 0
	cmpwi 0,4,0
	.loc 1 14 0
	stwu 1,-16(1)
.LCFI0:
	.loc 1 18 0
	blt- 0,.L2
	lwz 0,4(3)
	cmpw 7,4,0
	bge- 7,.L2
	.loc 1 20 0
	lwz 0,8(3)
	slwi 9,4,4
	.loc 1 21 0
	add. 9,9,0
.LVL1:
	beq- 0,.L2
	.loc 1 22 0
	lfs 0,12(9)
	addi 9,1,8
.LVL2:
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,8(1)
.LVL3:
	.loc 1 25 0
	addi 1,1,16
	blr
.LVL4:
.L2:
	.loc 1 22 0
	li 3,0
.LVL5:
	.loc 1 25 0
	addi 1,1,16
	blr
.LFE2:
	.size	glutStrokeWidth, .-glutStrokeWidth
	.align 2
	.globl glutStrokeLength
	.type	glutStrokeLength, @function
glutStrokeLength:
.LFB3:
	.loc 1 29 0
.LVL6:
	.loc 1 35 0
	lbz 0,0(4)
	.loc 1 29 0
	mr 8,3
	stwu 1,-24(1)
.LCFI1:
	.loc 1 35 0
	li 3,0
.LVL7:
	cmpwi 7,0,0
	beq- 7,.L12
	.loc 1 40 0
	lis 9,.LC1@ha
	.loc 1 31 0
	lwz 10,4(8)
	.loc 1 40 0
	lfs 11,.LC1@l(9)
.LVL8:
.L13:
	.loc 1 37 0
	cmpw 7,10,0
	.loc 1 40 0
	xoris 11,3,0x8000
	.loc 1 38 0
	slwi 9,0,4
.LVL9:
	.loc 1 37 0
	bgt- 7,.L14
	.loc 1 38 0
	lwz 0,8(8)
	.loc 1 39 0
	add. 9,9,0
.LVL10:
	beq- 0,.L14
	.loc 1 40 0
	lis 0,0x4330
	stw 11,12(1)
	stw 0,8(1)
	fmr 13,11
	lfs 12,12(9)
	addi 9,1,16
.LVL11:
	lfd 0,8(1)
	fsub 0,0,13
	frsp 0,0
	fadds 0,0,12
	fmr 13,0
	fctiwz 12,13
	stfiwx 12,0,9
	lwz 3,16(1)
.LVL12:
.L14:
	.loc 1 35 0
	lbzu 0,1(4)
	cmpwi 7,0,0
	bne+ 7,.L13
.L12:
	.loc 1 44 0
	addi 1,1,24
.LVL13:
	blr
.LFE3:
	.size	glutStrokeLength, .-glutStrokeLength
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560836
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
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE2:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
	.file 2 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glutstroke.h"
	.section	.debug_info
	.4byte	0x27d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1
	.4byte	.LASF32
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
	.4byte	0x9c
	.uleb128 0x6
	.string	"x"
	.byte	0x2
	.byte	0xb
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"y"
	.byte	0x2
	.byte	0xc
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0xd
	.4byte	0x7b
	.uleb128 0x5
	.byte	0x8
	.byte	0x2
	.byte	0xf
	.4byte	0xcc
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x2
	.byte	0x10
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x11
	.4byte	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd2
	.uleb128 0xa
	.4byte	0x9c
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x5
	.byte	0x10
	.byte	0x2
	.byte	0x14
	.4byte	0x123
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x2
	.byte	0x15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x2
	.byte	0x16
	.4byte	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x2
	.byte	0x17
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x2
	.byte	0x18
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x129
	.uleb128 0xa
	.4byte	0xd7
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x2
	.byte	0x19
	.4byte	0xe2
	.uleb128 0x5
	.byte	0x14
	.byte	0x2
	.byte	0x1b
	.4byte	0x187
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x2
	.byte	0x1c
	.4byte	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x2
	.byte	0x1d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ch"
	.byte	0x2
	.byte	0x1e
	.4byte	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"top"
	.byte	0x2
	.byte	0x1f
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x2
	.byte	0x20
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x18d
	.uleb128 0xa
	.4byte	0x66
	.uleb128 0x9
	.byte	0x4
	.4byte	0x198
	.uleb128 0xa
	.4byte	0x12e
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x2
	.byte	0x21
	.4byte	0x1a8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x139
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x2
	.byte	0x23
	.4byte	0x5d
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.4byte	0x20a
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd
	.4byte	0x1ae
	.4byte	.LLST1
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0xd
	.4byte	0x41
	.byte	0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0xf
	.4byte	0x19d
	.uleb128 0xf
	.string	"ch"
	.byte	0x1
	.byte	0x10
	.4byte	0x192
	.4byte	.LLST2
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.4byte	0x275
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1c
	.4byte	0x1ae
	.4byte	.LLST4
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1c
	.4byte	0x275
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0x1e
	.4byte	0x41
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1e
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1f
	.4byte	0x19d
	.uleb128 0xf
	.string	"ch"
	.byte	0x1
	.byte	0x20
	.4byte	0x192
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x27b
	.uleb128 0xa
	.4byte	0x2c
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x37
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x281
	.4byte	0x1b9
	.string	"glutStrokeWidth"
	.4byte	0x20a
	.string	"glutStrokeLength"
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
.LASF12:
	.string	"coord"
.LASF4:
	.string	"short unsigned int"
.LASF19:
	.string	"StrokeCharRec"
.LASF29:
	.string	"fontinfo"
.LASF24:
	.string	"GLUTstrokeFont"
.LASF28:
	.string	"string"
.LASF13:
	.string	"CoordRec"
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
.LASF26:
	.string	"glutStrokeWidth"
.LASF27:
	.string	"glutStrokeLength"
.LASF9:
	.string	"long long int"
.LASF31:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF14:
	.string	"StrokeRec"
.LASF20:
	.string	"name"
.LASF33:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF3:
	.string	"short int"
.LASF21:
	.string	"num_chars"
.LASF15:
	.string	"num_strokes"
.LASF7:
	.string	"long int"
.LASF32:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_swidth.c"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"length"
.LASF10:
	.string	"long long unsigned int"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
