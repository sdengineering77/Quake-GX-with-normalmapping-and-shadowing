	.file	"jcomapi.c.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl jpeg_abort
	.type	jpeg_abort, @function
jpeg_abort:
.LFB0:
	.file 1 "d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/jcomapi.c.c"
	.loc 1 30 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 37 0
	lwz 9,4(3)
	li 4,1
	.loc 1 30 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 37 0
	lwz 0,36(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL1:
	.loc 1 41 0
	lbz 9,12(31)
	li 0,-100
	addic 9,9,-1
	subfe 9,9,9
	and 9,9,0
	addi 9,9,200
	stw 9,16(31)
	.loc 1 42 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2:
	mtlr 0
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE0:
	.size	jpeg_abort, .-jpeg_abort
	.align 2
	.globl jpeg_destroy
	.type	jpeg_destroy, @function
jpeg_destroy:
.LFB1:
	.loc 1 58 0
	.cfi_startproc
.LVL3:
	.loc 1 61 0
	lwz 9,4(3)
	.loc 1 58 0
	mflr 0
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 61 0
	cmpwi 7,9,0
	.loc 1 58 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 61 0
	beq- 7,.L5
	.cfi_offset 65, 4
	.loc 1 62 0
	lwz 0,40(9)
	mtctr 0
	bctrl
.LVL4:
.L5:
	.loc 1 63 0
	li 0,0
	stw 0,4(31)
	.loc 1 64 0
	stw 0,16(31)
	.loc 1 65 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL5:
	mtlr 0
	addi 1,1,16
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1:
	.size	jpeg_destroy, .-jpeg_destroy
	.align 2
	.globl jpeg_alloc_quant_table
	.type	jpeg_alloc_quant_table, @function
jpeg_alloc_quant_table:
.LFB2:
	.loc 1 75 0
	.cfi_startproc
.LVL6:
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 78 0
	li 4,0
	li 5,130
	.loc 1 75 0
	stw 0,12(1)
	.loc 1 79 0
	lwz 9,4(3)
	.loc 1 78 0
	lwz 0,0(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL7:
	.loc 1 80 0
	li 0,0
	stb 0,128(3)
	.loc 1 82 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2:
	.size	jpeg_alloc_quant_table, .-jpeg_alloc_quant_table
	.align 2
	.globl jpeg_alloc_huff_table
	.type	jpeg_alloc_huff_table, @function
jpeg_alloc_huff_table:
.LFB3:
	.loc 1 87 0
	.cfi_startproc
.LVL8:
	mflr 0
	stwu 1,-8(1)
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 90 0
	li 4,0
	li 5,274
	.loc 1 87 0
	stw 0,12(1)
	.loc 1 91 0
	lwz 9,4(3)
	.loc 1 90 0
	lwz 0,0(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL9:
	.loc 1 92 0
	li 0,0
	stb 0,273(3)
	.loc 1 94 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE3:
	.size	jpeg_alloc_huff_table, .-jpeg_alloc_huff_table
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 3 "d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/jpeglib.h"
	.file 4 "d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/../jpeg-6/jmorecfg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6fb
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x1
	.4byte	.LASF78
	.4byte	.LASF79
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x7
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x10
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x3b
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x63
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x87
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x93
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0xb1
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x4f
	.4byte	0xdd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x50
	.4byte	0xee
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd2
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x53
	.4byte	0xff
	.uleb128 0x8
	.4byte	0xa6
	.4byte	0x10f
	.uleb128 0x9
	.4byte	0x37
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x54
	.4byte	0x11a
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf4
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x55
	.4byte	0x12b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10f
	.uleb128 0xa
	.byte	0x82
	.byte	0x3
	.byte	0x60
	.4byte	0x157
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x3
	.byte	0x64
	.4byte	0x157
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x3
	.byte	0x6a
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.byte	0
	.uleb128 0x8
	.4byte	0xbc
	.4byte	0x167
	.uleb128 0x9
	.4byte	0x37
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x3
	.byte	0x6b
	.4byte	0x131
	.uleb128 0xc
	.2byte	0x112
	.byte	0x3
	.byte	0x70
	.4byte	0x1a7
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x3
	.byte	0x72
	.4byte	0x1a7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x3
	.byte	0x74
	.4byte	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x3
	.byte	0x7a
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x111
	.byte	0
	.uleb128 0x8
	.4byte	0xb1
	.4byte	0x1b7
	.uleb128 0x9
	.4byte	0x37
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0xb1
	.4byte	0x1c7
	.uleb128 0x9
	.4byte	0x37
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x3
	.byte	0x7b
	.4byte	0x172
	.uleb128 0x6
	.byte	0x4
	.4byte	0x167
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x14
	.byte	0x3
	.byte	0xfc
	.4byte	0x22b
	.uleb128 0xe
	.string	"err"
	.byte	0x3
	.byte	0xfd
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"mem"
	.byte	0x3
	.byte	0xfd
	.4byte	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x3
	.byte	0xfd
	.4byte	0x433
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x3
	.byte	0xfd
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x3
	.byte	0xfd
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x84
	.byte	0x3
	.2byte	0x276
	.4byte	0x30c
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x3
	.2byte	0x278
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x3
	.2byte	0x27a
	.4byte	0x4b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x3
	.2byte	0x27c
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x3
	.2byte	0x27e
	.4byte	0x4d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x3
	.2byte	0x281
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x3
	.2byte	0x286
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x3
	.2byte	0x28b
	.4byte	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x3
	.2byte	0x28f
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x3
	.2byte	0x297
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x3
	.2byte	0x2a3
	.4byte	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x3
	.2byte	0x2a4
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x3
	.2byte	0x2a8
	.4byte	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x3
	.2byte	0x2a9
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x3
	.2byte	0x2aa
	.4byte	0x25
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x22b
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x30
	.byte	0x3
	.2byte	0x2e7
	.4byte	0x3d4
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x3
	.2byte	0x2e9
	.4byte	0x52b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x3
	.2byte	0x2eb
	.4byte	0x52b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x3
	.2byte	0x2ed
	.4byte	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x3
	.2byte	0x2f0
	.4byte	0x575
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x3
	.2byte	0x2f3
	.4byte	0x5a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x3
	.2byte	0x2f9
	.4byte	0x5d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x3
	.2byte	0x2ff
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x300
	.4byte	0x5fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x3
	.2byte	0x305
	.4byte	0x627
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x3
	.2byte	0x30a
	.4byte	0x4b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x3
	.2byte	0x30b
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x3
	.2byte	0x312
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x312
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x14
	.byte	0x3
	.2byte	0x2b0
	.4byte	0x433
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x3
	.2byte	0x2b1
	.4byte	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x3
	.2byte	0x2b3
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x3
	.2byte	0x2b4
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x3
	.2byte	0x2b5
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x3
	.2byte	0x2b6
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3da
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x3
	.2byte	0x104
	.4byte	0x445
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d8
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF67
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c7
	.uleb128 0x12
	.byte	0x50
	.byte	0x3
	.2byte	0x288
	.4byte	0x476
	.uleb128 0x13
	.string	"i"
	.byte	0x3
	.2byte	0x289
	.4byte	0x476
	.uleb128 0x13
	.string	"s"
	.byte	0x3
	.2byte	0x28a
	.4byte	0x486
	.byte	0
	.uleb128 0x8
	.4byte	0x25
	.4byte	0x486
	.uleb128 0x9
	.4byte	0x37
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x7e
	.4byte	0x496
	.uleb128 0x9
	.4byte	0x37
	.byte	0x4f
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	0x4a2
	.uleb128 0x15
	.4byte	0x439
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x496
	.uleb128 0x14
	.byte	0x1
	.4byte	0x4b9
	.uleb128 0x15
	.4byte	0x439
	.uleb128 0x15
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a8
	.uleb128 0x14
	.byte	0x1
	.4byte	0x4d0
	.uleb128 0x15
	.4byte	0x439
	.uleb128 0x15
	.4byte	0x78
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4bf
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4dc
	.uleb128 0x7
	.4byte	0x85
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x3
	.2byte	0x2e3
	.4byte	0x4ed
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f3
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x3
	.2byte	0x2e4
	.4byte	0x505
	.uleb128 0x6
	.byte	0x4
	.4byte	0x50b
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.4byte	0x6f
	.4byte	0x52b
	.uleb128 0x15
	.4byte	0x439
	.uleb128 0x15
	.4byte	0x25
	.uleb128 0x15
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x511
	.uleb128 0x17
	.byte	0x1
	.4byte	0xe3
	.4byte	0x550
	.uleb128 0x15
	.4byte	0x439
	.uleb128 0x15
	.4byte	0x25
	.uleb128 0x15
	.4byte	0xc7
	.uleb128 0x15
	.4byte	0xc7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x531
	.uleb128 0x17
	.byte	0x1
	.4byte	0x120
	.4byte	0x575
	.uleb128 0x15
	.4byte	0x439
	.uleb128 0x15
	.4byte	0x25
	.uleb128 0x15
	.4byte	0xc7
	.uleb128 0x15
	.4byte	0xc7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x556
	.uleb128 0x17
	.byte	0x1
	.4byte	0x4e1
	.4byte	0x5a4
	.uleb128 0x15
	.4byte	0x439
	.uleb128 0x15
	.4byte	0x25
	.uleb128 0x15
	.4byte	0x90
	.uleb128 0x15
	.4byte	0xc7
	.uleb128 0x15
	.4byte	0xc7
	.uleb128 0x15
	.4byte	0xc7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57b
	.uleb128 0x17
	.byte	0x1
	.4byte	0x4f9
	.4byte	0x5d3
	.uleb128 0x15
	.4byte	0x439
	.uleb128 0x15
	.4byte	0x25
	.uleb128 0x15
	.4byte	0x90
	.uleb128 0x15
	.4byte	0xc7
	.uleb128 0x15
	.4byte	0xc7
	.uleb128 0x15
	.4byte	0xc7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5aa
	.uleb128 0x17
	.byte	0x1
	.4byte	0xe3
	.4byte	0x5fd
	.uleb128 0x15
	.4byte	0x439
	.uleb128 0x15
	.4byte	0x4e1
	.uleb128 0x15
	.4byte	0xc7
	.uleb128 0x15
	.4byte	0xc7
	.uleb128 0x15
	.4byte	0x90
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d9
	.uleb128 0x17
	.byte	0x1
	.4byte	0x120
	.4byte	0x627
	.uleb128 0x15
	.4byte	0x439
	.uleb128 0x15
	.4byte	0x4f9
	.uleb128 0x15
	.4byte	0xc7
	.uleb128 0x15
	.4byte	0xc7
	.uleb128 0x15
	.4byte	0x90
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x603
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x665
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.byte	0x1d
	.4byte	0x439
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LASF75
	.byte	0x1
	.byte	0x1f
	.4byte	0x25
	.4byte	.LLST2
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST3
	.4byte	0x68e
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.byte	0x39
	.4byte	0x439
	.4byte	.LLST4
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF80
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.4byte	0x1d2
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST5
	.4byte	0x6c8
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.byte	0x4a
	.4byte	0x439
	.4byte	.LLST6
	.uleb128 0x1c
	.string	"tbl"
	.byte	0x1
	.byte	0x4c
	.4byte	0x1d2
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	0x452
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.byte	0x56
	.4byte	0x439
	.4byte	.LLST8
	.uleb128 0x1c
	.string	"tbl"
	.byte	0x1
	.byte	0x58
	.4byte	0x452
	.byte	0x1
	.byte	0x53
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
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
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB2-.Ltext0
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
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
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
.LLST8:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-1-.Ltext0
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
.LASF56:
	.string	"access_virt_barray"
.LASF38:
	.string	"msg_code"
.LASF66:
	.string	"j_common_ptr"
.LASF50:
	.string	"alloc_sarray"
.LASF4:
	.string	"short int"
.LASF10:
	.string	"size_t"
.LASF16:
	.string	"JDIMENSION"
.LASF33:
	.string	"error_exit"
.LASF57:
	.string	"free_pool"
.LASF65:
	.string	"total_passes"
.LASF76:
	.string	"jpeg_alloc_huff_table"
.LASF14:
	.string	"UINT8"
.LASF51:
	.string	"alloc_barray"
.LASF62:
	.string	"pass_counter"
.LASF68:
	.string	"jvirt_sarray_ptr"
.LASF23:
	.string	"sent_table"
.LASF71:
	.string	"jvirt_barray_control"
.LASF54:
	.string	"realize_virt_arrays"
.LASF79:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF12:
	.string	"JSAMPLE"
.LASF13:
	.string	"JCOEF"
.LASF42:
	.string	"jpeg_message_table"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"quantval"
.LASF39:
	.string	"msg_parm"
.LASF6:
	.string	"long long int"
.LASF25:
	.string	"bits"
.LASF48:
	.string	"alloc_small"
.LASF43:
	.string	"last_jpeg_message"
.LASF69:
	.string	"jvirt_barray_ptr"
.LASF28:
	.string	"progress"
.LASF31:
	.string	"jpeg_common_struct"
.LASF19:
	.string	"JBLOCK"
.LASF63:
	.string	"pass_limit"
.LASF58:
	.string	"self_destruct"
.LASF34:
	.string	"emit_message"
.LASF49:
	.string	"alloc_large"
.LASF3:
	.string	"unsigned char"
.LASF61:
	.string	"progress_monitor"
.LASF26:
	.string	"huffval"
.LASF29:
	.string	"is_decompressor"
.LASF27:
	.string	"JHUFF_TBL"
.LASF7:
	.string	"long long unsigned int"
.LASF20:
	.string	"JBLOCKROW"
.LASF0:
	.string	"unsigned int"
.LASF59:
	.string	"max_memory_to_use"
.LASF64:
	.string	"completed_passes"
.LASF37:
	.string	"reset_error_mgr"
.LASF24:
	.string	"JQUANT_TBL"
.LASF70:
	.string	"jvirt_sarray_control"
.LASF5:
	.string	"short unsigned int"
.LASF80:
	.string	"jpeg_alloc_quant_table"
.LASF15:
	.string	"UINT16"
.LASF9:
	.string	"char"
.LASF78:
	.string	"d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/jcomapi.c.c"
.LASF1:
	.string	"long int"
.LASF40:
	.string	"trace_level"
.LASF77:
	.string	"GNU C 4.6.3"
.LASF41:
	.string	"num_warnings"
.LASF72:
	.string	"jpeg_abort"
.LASF36:
	.string	"format_message"
.LASF8:
	.string	"long unsigned int"
.LASF18:
	.string	"JSAMPARRAY"
.LASF30:
	.string	"global_state"
.LASF52:
	.string	"request_virt_sarray"
.LASF32:
	.string	"jpeg_error_mgr"
.LASF46:
	.string	"last_addon_message"
.LASF17:
	.string	"JSAMPROW"
.LASF73:
	.string	"jpeg_destroy"
.LASF55:
	.string	"access_virt_sarray"
.LASF45:
	.string	"first_addon_message"
.LASF67:
	.string	"double"
.LASF75:
	.string	"pool"
.LASF74:
	.string	"cinfo"
.LASF53:
	.string	"request_virt_barray"
.LASF35:
	.string	"output_message"
.LASF44:
	.string	"addon_message_table"
.LASF11:
	.string	"boolean"
.LASF21:
	.string	"JBLOCKARRAY"
.LASF47:
	.string	"jpeg_memory_mgr"
.LASF60:
	.string	"jpeg_progress_mgr"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
