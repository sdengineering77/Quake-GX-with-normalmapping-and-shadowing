	.file	"jutils.c.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl jdiv_round_up
	.type	jdiv_round_up, @function
jdiv_round_up:
.LFB0:
	.file 1 "d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/jutils.c.c"
	.loc 1 71 0
	.cfi_startproc
.LVL0:
	.loc 1 72 0
	add 3,3,4
.LVL1:
	.loc 1 73 0
	.loc 1 72 0
	addi 3,3,-1
	.loc 1 73 0
	divw 3,3,4
	blr
	.cfi_endproc
.LFE0:
	.size	jdiv_round_up, .-jdiv_round_up
	.align 2
	.globl jround_up
	.type	jround_up, @function
jround_up:
.LFB1:
	.loc 1 80 0
	.cfi_startproc
.LVL2:
	.loc 1 81 0
	addi 0,4,-1
	.loc 1 83 0
	.loc 1 81 0
	add 3,0,3
.LVL3:
	.loc 1 82 0
	divw 3,3,4
.LVL4:
	.loc 1 83 0
	mullw 3,3,4
	blr
	.cfi_endproc
.LFE1:
	.size	jround_up, .-jround_up
	.align 2
	.globl jcopy_sample_rows
	.type	jcopy_sample_rows, @function
jcopy_sample_rows:
.LFB2:
	.loc 1 115 0
	.cfi_startproc
.LVL5:
	.loc 1 127 0
	cmpwi 0,7,0
	.loc 1 115 0
	mflr 0
	stwu 1,-32(1)
.LCFI0:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 29,20(1)
	mr 29,8
	.cfi_offset 29, -12
.LVL6:
	stw 0,36(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 127 0
	ble- 0,.L3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LVL7:
	.loc 1 124 0
	slwi 4,4,2
.LVL8:
	.loc 1 125 0
	slwi 31,6,2
	.loc 1 124 0
	add 3,3,4
	.loc 1 125 0
	add 31,5,31
	.loc 1 107 0
	stw 7,8(1)
	addi 30,3,-4
	addi 31,31,-4
.LVL9:
.L5:
	.loc 1 131 0 discriminator 2
	lwzu 3,4(31)
.LVL10:
	mr 5,29
	lwzu 4,4(30)
.LVL11:
	bl memcpy
.LVL12:
	.loc 1 127 0 discriminator 2
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L5
.LVL13:
.L3:
	.loc 1 137 0
	lwz 0,36(1)
	lwz 29,20(1)
.LVL14:
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
.LFE2:
	.size	jcopy_sample_rows, .-jcopy_sample_rows
	.align 2
	.globl jcopy_block_row
	.type	jcopy_block_row, @function
jcopy_block_row:
.LFB3:
	.loc 1 144 0
	.cfi_startproc
.LVL15:
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 146 0
	slwi 5,5,7
.LVL16:
	.loc 1 144 0
	stw 0,12(1)
	.loc 1 144 0
	mr 0,3
	.cfi_offset 65, 4
	.loc 1 146 0
	mr 3,4
.LVL17:
	mr 4,0
.LVL18:
	bl memcpy
.LVL19:
	.loc 1 157 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE3:
	.size	jcopy_block_row, .-jcopy_block_row
	.align 2
	.globl jzero_far
	.type	jzero_far, @function
jzero_far:
.LFB4:
	.loc 1 164 0
	.cfi_startproc
.LVL20:
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 5,4
	.loc 1 166 0
	li 4,0
.LVL21:
	.loc 1 164 0
	stw 0,12(1)
	.loc 1 166 0
	.cfi_offset 65, 4
	bl memset
.LVL22:
	.loc 1 175 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE4:
	.size	jzero_far, .-jzero_far
	.globl jpeg_natural_order
	.globl jpeg_zigzag_order
	.section	.rodata
	.align 2
	.type	jpeg_natural_order, @object
	.size	jpeg_natural_order, 320
jpeg_natural_order:
	.long	0
	.long	1
	.long	8
	.long	16
	.long	9
	.long	2
	.long	3
	.long	10
	.long	17
	.long	24
	.long	32
	.long	25
	.long	18
	.long	11
	.long	4
	.long	5
	.long	12
	.long	19
	.long	26
	.long	33
	.long	40
	.long	48
	.long	41
	.long	34
	.long	27
	.long	20
	.long	13
	.long	6
	.long	7
	.long	14
	.long	21
	.long	28
	.long	35
	.long	42
	.long	49
	.long	56
	.long	57
	.long	50
	.long	43
	.long	36
	.long	29
	.long	22
	.long	15
	.long	23
	.long	30
	.long	37
	.long	44
	.long	51
	.long	58
	.long	59
	.long	52
	.long	45
	.long	38
	.long	31
	.long	39
	.long	46
	.long	53
	.long	60
	.long	61
	.long	54
	.long	47
	.long	55
	.long	62
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.long	63
	.type	jpeg_zigzag_order, @object
	.size	jpeg_zigzag_order, 256
jpeg_zigzag_order:
	.long	0
	.long	1
	.long	5
	.long	6
	.long	14
	.long	15
	.long	27
	.long	28
	.long	2
	.long	4
	.long	7
	.long	13
	.long	16
	.long	26
	.long	29
	.long	42
	.long	3
	.long	8
	.long	12
	.long	17
	.long	25
	.long	30
	.long	41
	.long	43
	.long	9
	.long	11
	.long	18
	.long	24
	.long	31
	.long	40
	.long	44
	.long	53
	.long	10
	.long	19
	.long	23
	.long	32
	.long	39
	.long	45
	.long	52
	.long	54
	.long	20
	.long	22
	.long	33
	.long	38
	.long	46
	.long	51
	.long	55
	.long	60
	.long	21
	.long	34
	.long	37
	.long	47
	.long	50
	.long	56
	.long	59
	.long	61
	.long	35
	.long	36
	.long	48
	.long	49
	.long	57
	.long	58
	.long	62
	.long	63
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 3 "d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/../jpeg-6/jmorecfg.h"
	.file 4 "d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/jpeglib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2d9
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x1
	.4byte	.LASF41
	.4byte	.LASF42
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xd4
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x3b
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x63
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xb1
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x4f
	.4byte	0xab
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x50
	.4byte	0xbc
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x53
	.4byte	0xcd
	.uleb128 0x7
	.4byte	0x8a
	.4byte	0xdd
	.uleb128 0x8
	.4byte	0x37
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x54
	.4byte	0xe8
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc2
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x7
	.4byte	0x25
	.4byte	0x105
	.uleb128 0x8
	.4byte	0x37
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0x3e
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x13a
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x44
	.4byte	0x3e
	.4byte	.LLST0
	.uleb128 0xb
	.string	"b"
	.byte	0x1
	.byte	0x44
	.4byte	0x3e
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	0x3e
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x16f
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x4d
	.4byte	0x3e
	.4byte	.LLST1
	.uleb128 0xb
	.string	"b"
	.byte	0x1
	.byte	0x4d
	.4byte	0x3e
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST2
	.4byte	0x21f
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6b
	.4byte	0xb1
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x6b
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x6c
	.4byte	0xb1
	.4byte	.LLST5
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x6c
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x6d
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x6d
	.4byte	0x95
	.4byte	.LLST8
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x74
	.4byte	0xa0
	.4byte	.LLST9
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x74
	.4byte	0xa0
	.4byte	.LLST10
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x76
	.4byte	0x2c
	.4byte	.LLST11
	.uleb128 0xf
	.string	"row"
	.byte	0x1
	.byte	0x7a
	.4byte	0x25
	.4byte	.LLST12
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST13
	.4byte	0x266
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x8d
	.4byte	0xdd
	.4byte	.LLST14
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x8d
	.4byte	0xdd
	.4byte	.LLST15
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x8e
	.4byte	0x95
	.4byte	.LLST16
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST17
	.4byte	0x29e
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0xa1
	.4byte	0x6f
	.4byte	.LLST18
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0xa1
	.4byte	0x2c
	.4byte	.LLST19
	.byte	0
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x1
	.byte	0x18
	.4byte	0x2b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	jpeg_zigzag_order
	.uleb128 0x11
	.4byte	0xf5
	.uleb128 0x7
	.4byte	0x25
	.4byte	0x2c5
	.uleb128 0x8
	.4byte	0x37
	.byte	0x4f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0x31
	.4byte	0x2d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	jpeg_natural_order
	.uleb128 0x11
	.4byte	0x2b5
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB2-.Ltext0
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
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 -4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 -4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB3-.Ltext0
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
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB4-.Ltext0
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
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x55
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
.LASF14:
	.string	"JSAMPROW"
.LASF10:
	.string	"size_t"
.LASF26:
	.string	"num_cols"
.LASF29:
	.string	"count"
.LASF1:
	.string	"long int"
.LASF32:
	.string	"input_row"
.LASF18:
	.string	"double"
.LASF38:
	.string	"jpeg_zigzag_order"
.LASF20:
	.string	"jround_up"
.LASF36:
	.string	"target"
.LASF28:
	.string	"outptr"
.LASF6:
	.string	"long long int"
.LASF3:
	.string	"unsigned char"
.LASF24:
	.string	"dest_row"
.LASF8:
	.string	"long unsigned int"
.LASF31:
	.string	"jcopy_block_row"
.LASF5:
	.string	"short unsigned int"
.LASF35:
	.string	"jzero_far"
.LASF16:
	.string	"JBLOCK"
.LASF40:
	.string	"GNU C 4.6.3"
.LASF23:
	.string	"output_array"
.LASF30:
	.string	"jcopy_sample_rows"
.LASF12:
	.string	"JCOEF"
.LASF0:
	.string	"unsigned int"
.LASF22:
	.string	"source_row"
.LASF7:
	.string	"long long unsigned int"
.LASF19:
	.string	"jdiv_round_up"
.LASF11:
	.string	"JSAMPLE"
.LASF13:
	.string	"JDIMENSION"
.LASF21:
	.string	"input_array"
.LASF41:
	.string	"d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/jutils.c.c"
.LASF9:
	.string	"char"
.LASF17:
	.string	"JBLOCKROW"
.LASF33:
	.string	"output_row"
.LASF27:
	.string	"inptr"
.LASF4:
	.string	"short int"
.LASF37:
	.string	"bytestozero"
.LASF42:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF34:
	.string	"num_blocks"
.LASF2:
	.string	"signed char"
.LASF25:
	.string	"num_rows"
.LASF15:
	.string	"JSAMPARRAY"
.LASF39:
	.string	"jpeg_natural_order"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
