	.file	"glut_get.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl _glutGet
	.type	_glutGet, @function
_glutGet:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_get.c"
	.loc 1 14 0
	.cfi_startproc
.LVL0:
	.loc 1 16 0
	cmplwi 7,3,501
	.loc 1 14 0
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 4,3
	stw 0,12(1)
	.loc 1 16 0
	bgt- 7,.L9
	.cfi_offset 65, 4
	cmplwi 7,3,500
	blt- 7,.L14
	.loc 1 18 0
	li 3,0
.LVL1:
.L16:
	.loc 1 154 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L9:
.LCFI2:
	.cfi_restore_state
	.loc 1 16 0
	cmpwi 7,3,503
	beq- 7,.L7
	cmplwi 7,3,503
	bge- 7,.L15
.L4:
	.loc 1 32 0
	li 3,200
	bl __glutGet
.LVL2:
	.loc 1 154 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL3:
.L14:
.LCFI4:
	.cfi_restore_state
	.loc 1 16 0
	cmpwi 7,3,102
	beq- 7,.L4
	cmplwi 7,3,102
	bgt- 7,.L10
	cmplwi 7,3,100
	blt- 7,.L2
	.loc 1 18 0
	li 3,0
.LVL4:
	b .L16
.L15:
	.loc 1 16 0
	cmpwi 7,3,504
	beq- 7,.L12
.L2:
	.loc 1 151 0
	lis 3,.LC0@ha
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl __glutWarning
.LVL5:
	.loc 1 154 0
	lwz 0,12(1)
	.loc 1 152 0
	li 3,-1
	.loc 1 154 0
	mtlr 0
	addi 1,1,8
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	blr
.LVL6:
.L7:
.LCFI6:
	.cfi_restore_state
	.loc 1 24 0
	li 3,201
.LVL7:
	bl __glutGet
.LVL8:
	.loc 1 154 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL9:
.L10:
.LCFI8:
	.cfi_restore_state
	.loc 1 16 0
	cmpwi 7,3,103
	bne+ 7,.L2
	.loc 1 34 0
	li 3,201
.LVL10:
.L12:
	bl __glutGet
.LVL11:
	.loc 1 154 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI9:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE0:
	.size	_glutGet, .-_glutGet
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"invalid glutGet parameter: %d"
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa6
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0x1
	.4byte	.LASF12
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0x93
	.4byte	0x2c
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
	.4byte	.LASF14
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0xd
	.4byte	0x21
	.4byte	.LLST1
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
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.sleb128 8
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE0-.Ltext0
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
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-1-.Ltext0
	.2byte	0x1
	.byte	0x54
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
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF13:
	.string	"GLenum"
.LASF14:
	.string	"_glutGet"
.LASF12:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_get.c"
.LASF10:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF6:
	.string	"double"
.LASF11:
	.string	"GNU C 4.6.3"
.LASF4:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF5:
	.string	"float"
.LASF3:
	.string	"short int"
.LASF15:
	.string	"param"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
