	.file	"registry.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl gluGetString
	.type	gluGetString, @function
gluGetString:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libutil/registry.c"
	.loc 1 52 0
	.cfi_startproc
.LVL0:
	.loc 1 54 0
	xoris 0,3,0xfffe
	cmpwi 7,0,-30272
	beq 7,.L3
	.loc 1 56 0
	lis 0,0x1
	ori 0,0,35265
	cmpw 7,3,0
	.loc 1 59 0
	li 3,0
.LVL1:
	.loc 1 56 0
	bnelr- 7
	.loc 1 57 0
	lis 3,.LANCHOR0@ha
	la 3,.LANCHOR0@l(3)
	addi 3,3,4
	blr
.LVL2:
.L3:
	.loc 1 55 0
	lis 3,.LANCHOR0@ha
.LVL3:
	la 3,.LANCHOR0@l(3)
	.loc 1 60 0
	blr
	.cfi_endproc
.LFE0:
	.size	gluGetString, .-gluGetString
	.align 2
	.globl gluCheckExtension
	.type	gluCheckExtension, @function
gluCheckExtension:
.LFB1:
	.loc 1 71 0
	.cfi_startproc
.LVL4:
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 28,8(1)
	.loc 1 77 0
	mr. 28,4
	.cfi_offset 28, -16
	.cfi_register 65, 0
	.loc 1 71 0
	stw 30,16(1)
	.loc 1 77 0
	li 30,0
	.cfi_offset 30, -8
	.loc 1 71 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	.loc 1 77 0
	beq- 0,.L7
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 79 0
	mr 3,28
.LVL5:
	bl strlen
.LVL6:
	addi 3,3,1
	bl malloc
.LVL7:
	.loc 1 80 0
	mr. 29,3
	beq- 0,.L7
	.loc 1 83 0
	mr 4,28
	lis 30,.LC0@ha
	bl strcpy
.LVL8:
	la 30,.LC0@l(30)
	.loc 1 85 0
	mr 3,29
.LVL9:
.L8:
	.loc 1 85 0 is_stmt 0 discriminator 1
	mr 4,30
	bl strtok
.LVL10:
	.loc 1 86 0 is_stmt 1 discriminator 1
	mr 4,31
	.loc 1 85 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L14
	.loc 1 86 0
	bl strcmp
.LVL11:
	cmpwi 7,3,0
	.loc 1 90 0
	li 3,0
	.loc 1 86 0
	bne+ 7,.L8
	.loc 1 87 0
	li 30,1
.L9:
.LVL12:
	.loc 1 92 0
	mr 3,29
	bl free
.LVL13:
.L7:
	.loc 1 94 0
	lwz 0,28(1)
	mr 3,30
	lwz 28,8(1)
.LVL14:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
.LVL15:
	addi 1,1,24
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL16:
.L14:
.LCFI2:
	.cfi_restore_state
	.loc 1 72 0
	li 30,0
	b .L9
	.cfi_endproc
.LFE1:
	.size	gluCheckExtension, .-gluCheckExtension
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	versionString, @object
	.size	versionString, 4
versionString:
	.string	"1.3"
	.type	extensionString, @object
	.size	extensionString, 53
extensionString:
	.string	"GLU_EXT_nurbs_tessellator GLU_EXT_object_space_tess "
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	" "
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a5
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x1
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x93
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x94
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x9a
	.4byte	0x42
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x5e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x85
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xde
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x33
	.4byte	0x25
	.4byte	.LLST0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	0x37
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.4byte	0x15c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x46
	.4byte	0x9a
	.4byte	.LLST2
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x46
	.4byte	0x9a
	.4byte	.LLST3
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x48
	.4byte	0x37
	.4byte	.LLST4
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x49
	.4byte	0xac
	.4byte	.LLST5
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4a
	.4byte	0xac
	.4byte	.LLST6
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4b
	.4byte	0xac
	.4byte	.LLST7
	.byte	0
	.uleb128 0xb
	.4byte	0x5e
	.4byte	0x16c
	.uleb128 0xc
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2c
	.4byte	0x17d
	.byte	0x5
	.byte	0x3
	.4byte	versionString
	.uleb128 0x6
	.4byte	0x15c
	.uleb128 0xb
	.4byte	0x5e
	.4byte	0x192
	.uleb128 0xc
	.4byte	0x30
	.byte	0x34
	.byte	0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2d
	.4byte	0x1a3
	.byte	0x5
	.byte	0x3
	.4byte	extensionString
	.uleb128 0x6
	.4byte	0x182
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -131072
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB1-.Ltext0
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
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-1-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-1-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x6d
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
	.string	"long long int"
.LASF2:
	.string	"unsigned int"
.LASF0:
	.string	"GLenum"
.LASF28:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF16:
	.string	"gluCheckExtension"
.LASF14:
	.string	"long unsigned int"
.LASF17:
	.string	"name"
.LASF20:
	.string	"flag"
.LASF23:
	.string	"deleteThis"
.LASF18:
	.string	"extName"
.LASF22:
	.string	"lookHere"
.LASF24:
	.string	"versionString"
.LASF3:
	.string	"unsigned char"
.LASF6:
	.string	"GLubyte"
.LASF11:
	.string	"char"
.LASF1:
	.string	"GLboolean"
.LASF26:
	.string	"GNU C 4.6.3"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"long long unsigned int"
.LASF19:
	.string	"extString"
.LASF9:
	.string	"double"
.LASF27:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libutil/registry.c"
.LASF7:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF15:
	.string	"gluGetString"
.LASF8:
	.string	"float"
.LASF5:
	.string	"short int"
.LASF25:
	.string	"extensionString"
.LASF21:
	.string	"word"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
