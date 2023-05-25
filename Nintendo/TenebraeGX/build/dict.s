	.file	"dict.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl __gl_dictListNewDict
	.type	__gl_dictListNewDict, @function
__gl_dictListNewDict:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/dict.c"
	.loc 1 49 0
	.cfi_startproc
.LVL0:
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 50 0
	li 3,20
.LVL1:
	.loc 1 49 0
	stw 30,8(1)
	stw 0,20(1)
	.loc 1 49 0
	mr 30,4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.loc 1 50 0
	bl malloc
.LVL2:
	.loc 1 53 0
	cmpwi 0,3,0
	beq- 0,.L2
.LVL3:
	.loc 1 57 0
	li 0,0
	.loc 1 58 0
	stw 3,4(3)
	.loc 1 57 0
	stw 0,0(3)
	.loc 1 59 0
	stw 3,8(3)
	.loc 1 61 0
	stw 31,12(3)
	.loc 1 62 0
	stw 30,16(3)
.LVL4:
.L2:
	.loc 1 65 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL5:
	mtlr 0
	lwz 31,12(1)
.LVL6:
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE0:
	.size	__gl_dictListNewDict, .-__gl_dictListNewDict
	.align 2
	.globl __gl_dictListDeleteDict
	.type	__gl_dictListDeleteDict, @function
__gl_dictListDeleteDict:
.LFB1:
	.loc 1 69 0
	.cfi_startproc
.LVL7:
	mflr 0
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	stw 0,20(1)
	stw 30,8(1)
	.loc 1 69 0
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 1 72 0
	lwz 31,4(3)
.LVL8:
	cmpw 7,31,3
	beq- 7,.L5
.LVL9:
.L7:
	.loc 1 73 0 discriminator 2
	mr 3,31
	bl free
	.loc 1 72 0 discriminator 2
	lwz 31,4(31)
.LVL10:
	cmpw 7,31,30
	bne+ 7,.L7
.L5:
	.loc 1 75 0
	mr 3,30
	bl free
	.loc 1 76 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL11:
	mtlr 0
	lwz 31,12(1)
.LVL12:
	addi 1,1,16
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE1:
	.size	__gl_dictListDeleteDict, .-__gl_dictListDeleteDict
	.align 2
	.globl __gl_dictListInsertBefore
	.type	__gl_dictListInsertBefore, @function
__gl_dictListInsertBefore:
.LFB2:
	.loc 1 80 0
	.cfi_startproc
.LVL13:
	mflr 0
	stwu 1,-24(1)
.LCFI4:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 31,20(1)
	mr 31,4
	.cfi_offset 31, -4
.LVL14:
.L11:
	.loc 1 84 0 discriminator 1
	lwz 31,8(31)
.LVL15:
	.loc 1 85 0 discriminator 1
	mr 5,29
	lwz 0,0(31)
	cmpwi 7,0,0
	mr 4,0
	beq- 7,.L10
	lwz 0,16(30)
	lwz 3,12(30)
	mtctr 0
	bctrl
	cmpwi 7,3,0
	beq+ 7,.L11
.L10:
	.loc 1 87 0
	li 3,12
	bl malloc
.LVL16:
	.loc 1 88 0
	cmpwi 0,3,0
	beq- 0,.L12
	.loc 1 91 0
	lwz 0,4(31)
	.loc 1 90 0
	stw 29,0(3)
	.loc 1 91 0
	stw 0,4(3)
	.loc 1 92 0
	lwz 9,4(31)
	.loc 1 94 0
	stw 3,4(31)
	.loc 1 92 0
	stw 3,8(9)
	.loc 1 93 0
	stw 31,8(3)
.L12:
	.loc 1 97 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL17:
	mtlr 0
	lwz 30,16(1)
.LVL18:
	lwz 31,20(1)
.LVL19:
	addi 1,1,24
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2:
	.size	__gl_dictListInsertBefore, .-__gl_dictListInsertBefore
	.align 2
	.globl __gl_dictListDelete
	.type	__gl_dictListDelete, @function
__gl_dictListDelete:
.LFB3:
	.loc 1 101 0
	.cfi_startproc
.LVL20:
	mflr 0
	stwu 1,-8(1)
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 102 0
	lwz 9,4(4)
	.loc 1 104 0
	mr 3,4
.LVL21:
	.loc 1 101 0
	stw 0,12(1)
	.loc 1 102 0
	lwz 0,8(4)
	.cfi_offset 65, 4
	stw 0,8(9)
	.loc 1 103 0
	lwz 11,8(4)
	stw 9,4(11)
	.loc 1 104 0
	bl free
.LVL22:
	.loc 1 105 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE3:
	.size	__gl_dictListDelete, .-__gl_dictListDelete
	.align 2
	.globl __gl_dictListSearch
	.type	__gl_dictListSearch, @function
__gl_dictListSearch:
.LFB4:
	.loc 1 109 0
	.cfi_startproc
.LVL23:
	mflr 0
	stwu 1,-24(1)
.LCFI8:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,20(1)
	.loc 1 110 0
	mr 31,3
	.cfi_offset 31, -4
.LVL24:
	.loc 1 109 0
	stw 0,28(1)
	b .L17
	.cfi_offset 65, 4
.LVL25:
.L19:
	.loc 1 114 0 discriminator 1
	lwz 0,16(30)
	lwz 3,12(30)
	mtctr 0
	bctrl
.LVL26:
	cmpwi 7,3,0
	bne- 7,.L16
.L17:
	.loc 1 113 0 discriminator 1
	lwz 31,4(31)
.LVL27:
	.loc 1 114 0 discriminator 1
	mr 4,29
	lwz 0,0(31)
	cmpwi 7,0,0
	mr 5,0
	bne+ 7,.L19
.L16:
	.loc 1 117 0
	lwz 0,28(1)
	mr 3,31
	lwz 29,12(1)
.LVL28:
	mtlr 0
	lwz 30,16(1)
.LVL29:
	lwz 31,20(1)
.LVL30:
	addi 1,1,24
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE4:
	.size	__gl_dictListSearch, .-__gl_dictListSearch
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/dict-list.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x28f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x1
	.4byte	.LASF26
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x2
	.byte	0x43
	.4byte	0x41
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x44
	.4byte	0x4e
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x14
	.byte	0x2
	.byte	0x65
	.4byte	0x85
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x66
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x67
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"leq"
	.byte	0x2
	.byte	0x68
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x45
	.4byte	0x90
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0xc
	.byte	0x2
	.byte	0x5f
	.4byte	0xc7
	.uleb128 0x8
	.string	"key"
	.byte	0x2
	.byte	0x60
	.4byte	0x36
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x61
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x62
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x85
	.uleb128 0xa
	.byte	0x1
	.4byte	0x21
	.4byte	0xe7
	.uleb128 0xb
	.4byte	0x41
	.uleb128 0xb
	.4byte	0x36
	.uleb128 0xb
	.4byte	0x36
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x17d
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x17d
	.uleb128 0xd
	.4byte	.LASF5
	.byte	0x1
	.byte	0x2f
	.4byte	0x41
	.4byte	.LLST1
	.uleb128 0xe
	.string	"leq"
	.byte	0x1
	.byte	0x2f
	.4byte	0xe7
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x32
	.4byte	0x17d
	.byte	0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF4
	.byte	0x1
	.byte	0x33
	.4byte	0xc7
	.4byte	.LLST3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x43
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST4
	.4byte	0x1bb
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x44
	.4byte	0x17d
	.4byte	.LLST5
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0x46
	.4byte	0xc7
	.4byte	.LLST6
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	0xc7
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST7
	.4byte	0x213
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4f
	.4byte	0x17d
	.4byte	.LLST8
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4f
	.4byte	0xc7
	.4byte	.LLST9
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0x4f
	.4byte	0x36
	.4byte	.LLST10
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x51
	.4byte	0xc7
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST11
	.4byte	0x24b
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x64
	.4byte	0x17d
	.4byte	.LLST12
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x64
	.4byte	0xc7
	.4byte	.LLST13
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.4byte	0xc7
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST14
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x6c
	.4byte	0x17d
	.4byte	.LLST15
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0x6c
	.4byte	0x36
	.4byte	.LLST16
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0x6e
	.4byte	0xc7
	.4byte	.LLST17
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2-1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
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
	.sleb128 16
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB3-.Ltext0
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
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE4-.Ltext0
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
.LASF13:
	.string	"long long int"
.LASF19:
	.string	"__gl_dictListNewDict"
.LASF0:
	.string	"unsigned int"
.LASF24:
	.string	"__gl_dictListSearch"
.LASF2:
	.string	"DictListKey"
.LASF4:
	.string	"head"
.LASF21:
	.string	"newNode"
.LASF3:
	.string	"DictList"
.LASF14:
	.string	"long long unsigned int"
.LASF10:
	.string	"unsigned char"
.LASF16:
	.string	"char"
.LASF1:
	.string	"long int"
.LASF6:
	.string	"DictListNode"
.LASF22:
	.string	"__gl_dictListDeleteDict"
.LASF23:
	.string	"__gl_dictListDelete"
.LASF25:
	.string	"GNU C 4.6.3"
.LASF18:
	.string	"node"
.LASF12:
	.string	"short unsigned int"
.LASF9:
	.string	"signed char"
.LASF5:
	.string	"frame"
.LASF7:
	.string	"next"
.LASF26:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/dict.c"
.LASF17:
	.string	"dict"
.LASF11:
	.string	"short int"
.LASF8:
	.string	"prev"
.LASF20:
	.string	"__gl_dictListInsertBefore"
.LASF15:
	.string	"long unsigned int"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
