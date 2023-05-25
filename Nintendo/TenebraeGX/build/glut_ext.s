	.file	"glut_ext.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl glutExtensionSupported
	.type	glutExtensionSupported, @function
glutExtensionSupported:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_ext.c"
	.loc 1 16 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 22 0
	li 4,32
	.loc 1 16 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,28(1)
	stw 29,12(1)
	stw 31,20(1)
	.loc 1 22 0
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	bl strchr
.LVL1:
	.loc 1 23 0
	mr. 0,3
	.loc 1 24 0
	li 3,0
.LVL2:
	.loc 1 23 0
	beq- 0,.L18
.LVL3:
.L2:
	.loc 1 45 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL4:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL5:
.L18:
.LCFI2:
	.cfi_restore_state
	.loc 1 23 0 discriminator 1
	lbz 9,0(30)
	.loc 1 24 0 discriminator 1
	mr 3,0
	.loc 1 23 0 discriminator 1
	cmpwi 7,9,0
	beq- 7,.L2
	.loc 1 26 0
	lis 29,.LANCHOR0@ha
	lwz 31,.LANCHOR0@l(29)
	cmpwi 7,31,0
	beq- 7,.L19
.LVL6:
.L16:
	.loc 1 33 0
	mr 3,31
	mr 4,30
	bl strstr
.LVL7:
	.loc 1 34 0
	mr. 29,3
	.loc 1 36 0
	mr 3,30
.LVL8:
	.loc 1 34 0
	beq- 0,.L9
	.loc 1 36 0
	bl strlen
	.loc 1 37 0
	cmpw 7,29,31
	.loc 1 36 0
	add 0,29,3
.LVL9:
	.loc 1 37 0
	mr 31,0
.LVL10:
	beq- 7,.L5
	.loc 1 37 0 is_stmt 0 discriminator 1
	lbz 9,-1(29)
	cmpwi 7,9,32
	bne+ 7,.L16
.L5:
	.loc 1 38 0 is_stmt 1
	lbzx 9,29,3
	mr 31,0
	cmpwi 7,9,32
	cmpwi 6,9,0
	beq- 7,.L11
	.loc 1 38 0 is_stmt 0 discriminator 1
	bne+ 6,.L16
.L11:
	.loc 1 39 0 is_stmt 1
	li 3,1
	b .L2
.LVL11:
.L9:
	.loc 1 44 0
	li 3,0
	b .L2
.LVL12:
.L19:
	.loc 1 27 0
	li 3,7939
	bl glGetString
.LVL13:
	mr 31,3
	stw 3,.LANCHOR0@l(29)
.LVL14:
	b .L16
	.cfi_endproc
.LFE0:
	.size	glutExtensionSupported, .-glutExtensionSupported
	.align 2
	.globl __glutIsSupportedByGLX
	.type	__glutIsSupportedByGLX, @function
__glutIsSupportedByGLX:
.LFB1:
	.loc 1 51 0
	.cfi_startproc
.LVL15:
	.loc 1 87 0
	li 3,0
.LVL16:
	blr
	.cfi_endproc
.LFE1:
	.size	__glutIsSupportedByGLX, .-__glutIsSupportedByGLX
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	extensions.9271, @object
	.size	extensions.9271, 4
extensions.9271:
	.zero	4
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x139
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x1
	.4byte	.LASF18
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x5
	.4byte	0x6d
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.byte	0x9a
	.4byte	0x36
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.4byte	0x9e
	.uleb128 0x5
	.4byte	0x7f
	.uleb128 0x4
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.4byte	0x4b
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x114
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0xf
	.4byte	0x74
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x1
	.byte	0x11
	.4byte	0x98
	.byte	0x5
	.byte	0x3
	.4byte	extensions.9271
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x12
	.4byte	0x98
	.4byte	.LLST2
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x13
	.4byte	0xa3
	.4byte	.LLST3
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x13
	.4byte	0xa3
	.4byte	.LLST4
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	0x4b
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x32
	.4byte	0x67
	.4byte	.LLST5
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
	.uleb128 0x6
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
	.sleb128 24
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
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
.LASF6:
	.string	"long long int"
.LASF18:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_ext.c"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"terminator"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF16:
	.string	"extension"
.LASF10:
	.string	"float"
.LASF21:
	.string	"__glutIsSupportedByGLX"
.LASF14:
	.string	"where"
.LASF3:
	.string	"unsigned char"
.LASF19:
	.string	"GLubyte"
.LASF9:
	.string	"char"
.LASF1:
	.string	"long int"
.LASF20:
	.string	"glutExtensionSupported"
.LASF11:
	.string	"double"
.LASF17:
	.string	"GNU C 4.6.3"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"start"
.LASF4:
	.string	"short int"
.LASF12:
	.string	"extensions"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
