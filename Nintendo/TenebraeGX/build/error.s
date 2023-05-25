	.file	"error.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl gluErrorString
	.type	gluErrorString, @function
gluErrorString:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libutil/error.c"
	.loc 1 69 0
	.cfi_startproc
.LVL0:
	.loc 1 70 0
	cmpwi 0,3,0
	.loc 1 69 0
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 70 0
	beq- 0,.L6
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 73 0
	addi 0,3,-1280
	cmplwi 7,0,5
	ble- 7,.L10
	.loc 1 77 0
	xoris 0,3,0xffff
	cmpwi 7,0,-32719
	beq 7,.L7
	.loc 1 80 0
	addis 9,3,0xfffe
	addi 0,9,30172
	cmplwi 7,0,4
	ble- 7,.L11
	.loc 1 83 0
	addi 0,9,30821
	cmplwi 7,0,36
	ble- 7,.L12
	.loc 1 86 0
	addi 0,9,30921
	.loc 1 90 0
	li 3,0
.LVL1:
	.loc 1 86 0
	cmplwi 7,0,7
	bgt- 7,.L2
	.loc 1 87 0
	addi 3,9,30922
	bl __gluTessErrorString
.LVL2:
	.loc 1 91 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
.LVL3:
.L6:
.LCFI2:
	.cfi_restore_state
	.loc 1 71 0
	lis 3,.LC0@ha
.LVL4:
	la 3,.LC0@l(3)
.L2:
	.loc 1 91 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL5:
.L10:
.LCFI4:
	.cfi_restore_state
	.loc 1 74 0
	lis 9,.LANCHOR1@ha
	slwi 0,0,2
	la 9,.LANCHOR1@l(9)
	lis 31,.LANCHOR0@ha
	lwzx 6,9,0
	lis 9,glErrFile@ha
	lwz 7,glErrFile@l(9)
	lis 9,glErrLine@ha
	la 31,.LANCHOR0@l(31)
	lwz 8,glErrLine@l(9)
	lis 5,.LC2@ha
	mr 3,31
.LVL6:
	li 4,1024
	la 5,.LC2@l(5)
	crxor 6,6,6
	bl snprintf
	.loc 1 91 0
	lwz 0,20(1)
	.loc 1 75 0
	mr 3,31
	.loc 1 91 0
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI5:
	.cfi_def_cfa_offset 0
	blr
.LVL7:
.L11:
.LCFI6:
	.cfi_restore_state
	.loc 1 81 0
	lis 9,.LANCHOR1@ha
	slwi 0,0,2
	la 9,.LANCHOR1@l(9)
	.loc 1 91 0
	lwz 31,12(1)
	.loc 1 81 0
	add 9,9,0
	.loc 1 91 0
	lwz 0,20(1)
	.loc 1 81 0
	lwz 3,24(9)
.LVL8:
	.loc 1 91 0
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI7:
	.cfi_def_cfa_offset 0
	blr
.LVL9:
.L7:
.LCFI8:
	.cfi_restore_state
	.loc 1 78 0
	lis 3,.LC1@ha
.LVL10:
	la 3,.LC1@l(3)
	b .L2
.LVL11:
.L12:
	.loc 1 84 0
	addi 3,9,30822
.LVL12:
	bl __gluNURBSErrorString
.LVL13:
	b .L2
	.cfi_endproc
.LFE0:
	.size	gluErrorString, .-gluErrorString
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
	.type	glErrorStrings, @object
	.size	glErrorStrings, 24
glErrorStrings:
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.type	gluErrorStrings, @object
	.size	gluErrorStrings, 20
gluErrorStrings:
	.long	.LC3
	.long	.LC4
	.long	.LC8
	.long	.LC9
	.long	.LC5
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"no error"
	.zero	3
.LC1:
	.string	"table too large"
.LC2:
	.string	"%s at %s - %d"
	.zero	2
.LC3:
	.string	"invalid enumerant"
	.zero	2
.LC4:
	.string	"invalid value"
	.zero	2
.LC5:
	.string	"invalid operation"
	.zero	2
.LC6:
	.string	"stack overflow"
	.zero	1
.LC7:
	.string	"stack underflow"
.LC8:
	.string	"out of memory"
	.zero	2
.LC9:
	.string	""
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	error_string, @object
	.size	error_string, 1024
error_string:
	.zero	1024
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x15e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x1
	.4byte	.LASF20
	.4byte	.LASF21
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF4
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
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x9a
	.4byte	0x37
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	0x53
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x5
	.4byte	0x7a
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0xd3
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0xd3
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x44
	.4byte	0x25
	.4byte	.LLST1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x9
	.4byte	0x9b
	.4byte	0xe9
	.uleb128 0xa
	.4byte	0x30
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2c
	.4byte	0xfa
	.byte	0x5
	.byte	0x3
	.4byte	glErrorStrings
	.uleb128 0x5
	.4byte	0xd9
	.uleb128 0x9
	.4byte	0x9b
	.4byte	0x10f
	.uleb128 0xa
	.4byte	0x30
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x35
	.4byte	0x120
	.byte	0x5
	.byte	0x3
	.4byte	gluErrorStrings
	.uleb128 0x5
	.4byte	0xff
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x136
	.uleb128 0xc
	.4byte	0x30
	.2byte	0x3ff
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x41
	.4byte	0x125
	.byte	0x5
	.byte	0x3
	.4byte	error_string
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x3f
	.4byte	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x40
	.4byte	0x4c
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 131072
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-1-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 131072
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
.LASF11:
	.string	"long long int"
.LASF6:
	.string	"short unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF4:
	.string	"GLenum"
.LASF21:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF20:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libutil/error.c"
.LASF23:
	.string	"errorCode"
.LASF17:
	.string	"glErrFile"
.LASF13:
	.string	"long unsigned int"
.LASF12:
	.string	"long long unsigned int"
.LASF22:
	.string	"gluErrorString"
.LASF18:
	.string	"glErrLine"
.LASF14:
	.string	"glErrorStrings"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"GLubyte"
.LASF15:
	.string	"gluErrorStrings"
.LASF9:
	.string	"long int"
.LASF8:
	.string	"double"
.LASF19:
	.string	"GNU C 4.6.3"
.LASF16:
	.string	"error_string"
.LASF2:
	.string	"signed char"
.LASF7:
	.string	"float"
.LASF3:
	.string	"short int"
.LASF10:
	.string	"char"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
