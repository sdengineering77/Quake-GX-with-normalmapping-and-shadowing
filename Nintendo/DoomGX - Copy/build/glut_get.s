	.file	"glut_get.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl _glutGet
	.type	_glutGet, @function
_glutGet:
.LFB2:
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_get.c"
	.loc 1 14 0
.LVL0:
	.loc 1 16 0
	cmplwi 7,3,501
	.loc 1 14 0
	mflr 0
.LCFI0:
	stwu 1,-8(1)
.LCFI1:
	mr 4,3
	stw 0,12(1)
.LCFI2:
	.loc 1 16 0
	bgt- 7,.L9
.LVL1:
	cmplwi 7,3,500
	blt- 7,.L16
.LVL2:
	li 3,0
.LVL3:
.L17:
	.loc 1 154 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL4:
.L9:
	.loc 1 16 0
	cmpwi 7,3,503
	beq- 7,.L5
.LVL5:
	cmplwi 7,3,503
	blt- 7,.L6
	cmpwi 7,3,504
	beq- 7,.L14
.L2:
	.loc 1 151 0
	lis 3,.LC0@ha
.LVL6:
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl __glutWarning
.LVL7:
	.loc 1 154 0
	lwz 0,12(1)
	.loc 1 151 0
	li 3,-1
	.loc 1 154 0
	addi 1,1,8
	mtlr 0
	blr
.LVL8:
.L16:
	.loc 1 16 0
	cmpwi 7,3,102
	beq- 7,.L4
	cmplwi 7,3,102
	bgt- 7,.L10
	cmplwi 7,3,100
	blt- 7,.L2
	li 3,0
.LVL9:
	b .L17
.LVL10:
.L10:
	cmpwi 7,3,103
	bne+ 7,.L2
.L5:
	.loc 1 34 0
	li 3,201
.LVL11:
.L14:
	bl __glutGet
.LVL12:
	.loc 1 154 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL13:
.L6:
	.loc 1 22 0
	li 3,200
.LVL14:
	bl __glutGet
.LVL15:
	.loc 1 154 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL16:
.L4:
	.loc 1 32 0
	li 3,200
.LVL17:
	b .L14
.LFE2:
	.size	_glutGet, .-_glutGet
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"invalid glutGet parameter: %d"
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
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
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
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
	.file 2 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
	.section	.debug_info
	.4byte	0xaa
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0x1
	.4byte	.LASF12
	.4byte	.LASF13
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x2
	.byte	0x93
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.4byte	0x4c
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0xd
	.4byte	0x25
	.4byte	.LLST1
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
	.uleb128 0x3
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x1b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xae
	.4byte	0x84
	.string	"_glutGet"
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
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"GLenum"
.LASF15:
	.string	"_glutGet"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_get.c"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"char"
.LASF11:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF7:
	.string	"long int"
.LASF13:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF6:
	.string	"double"
.LASF4:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF5:
	.string	"float"
.LASF3:
	.string	"short int"
.LASF16:
	.string	"param"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
