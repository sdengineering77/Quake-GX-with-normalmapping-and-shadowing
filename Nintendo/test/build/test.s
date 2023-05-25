	.file	"test.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl main
	.type	main, @function
main:
.LFB63:
	.file 1 "d:/Data/Nintendo/test/source/test.c"
	.loc 1 24 0
.LVL0:
	mflr 0
.LCFI0:
	stwu 1,-128(1)
.LCFI1:
	stw 28,112(1)
.LCFI2:
	.loc 1 35 0
	lis 28,.LANCHOR0@ha
	.loc 1 24 0
	stw 0,132(1)
.LCFI3:
	stw 29,116(1)
.LCFI4:
	.loc 1 35 0
	la 29,.LANCHOR0@l(28)
	.loc 1 24 0
	stw 27,108(1)
.LCFI5:
	stw 30,120(1)
.LCFI6:
	stw 31,124(1)
.LCFI7:
	.loc 1 28 0
	bl VIDEO_Init
.LVL1:
	.loc 1 31 0
	bl WPAD_Init
	.loc 1 35 0
	li 3,0
	bl VIDEO_GetPreferredMode
	stw 3,.LANCHOR0@l(28)
	.loc 1 38 0
	bl SYS_AllocateFramebuffer
	.loc 1 41 0
	lwz 9,.LANCHOR0@l(28)
	.loc 1 38 0
	addis 0,3,0x4000
	stw 0,4(29)
	.loc 1 41 0
	mr 3,0
	lhz 6,4(9)
	li 4,20
	lhz 7,8(9)
	li 5,20
	slwi 8,6,1
	bl CON_Init
	.loc 1 44 0
	lwz 3,.LANCHOR0@l(28)
	bl VIDEO_Configure
	.loc 1 47 0
	lwz 3,4(29)
	bl VIDEO_SetNextFramebuffer
	.loc 1 50 0
	li 3,0
	bl VIDEO_SetBlack
	.loc 1 53 0
	bl VIDEO_Flush
	.loc 1 56 0
	bl VIDEO_WaitVSync
	.loc 1 57 0
	lwz 9,.LANCHOR0@l(28)
	lwz 0,0(9)
	andi. 9,0,1
	bne- 0,.L20
.L2:
	.loc 1 64 0
	lis 3,.LC0@ha
	addi 31,1,8
	la 3,.LC0@l(3)
	.loc 1 72 0
	addi 28,1,20
	.loc 1 64 0
	crxor 6,6,6
	bl printf
	.loc 1 71 0
	lis 9,.LC1@ha
	la 27,.LC1@l(9)
	li 4,0
	mr 5,31
	mr 6,31
	mr 3,27
	.loc 1 72 0
	li 29,1
.LVL2:
	.loc 1 71 0
	crxor 6,6,6
	bl printf
	.loc 1 72 0
	lis 9,.LC2@ha
	la 30,.LC2@l(9)
	li 4,0
	mr 3,30
	mr 5,31
	mr 6,31
	crxor 6,6,6
	bl printf
.L4:
	.loc 1 71 0
	mr 4,29
	mr 6,28
	mr 5,31
	mr 3,27
	crxor 6,6,6
	bl printf
	.loc 1 72 0
	mr 4,29
	mr 6,28
	mr 3,30
	mr 5,31
	.loc 1 70 0
	addi 28,28,12
	.loc 1 72 0
	crxor 6,6,6
	bl printf
	.loc 1 70 0
	cmpwi 7,29,3
	addi 29,29,1
	bne+ 7,.L4
	.loc 1 76 0
	lis 3,.LC3@ha
	li 4,4
	la 3,.LC3@l(3)
	.loc 1 81 0
	li 28,1
.LVL3:
	.loc 1 76 0
	crxor 6,6,6
	bl printf
	lis 11,.LANCHOR1@ha
	.loc 1 81 0
	lis 9,.LC4@ha
	.loc 1 76 0
	la 31,.LANCHOR1@l(11)
	.loc 1 81 0
	la 30,.LC4@l(9)
	lfs 1,.LANCHOR1@l(11)
	mr 3,30
	li 4,0
	mr 5,31
	mr 6,31
	mr 7,31
	addi 27,31,20
	creqv 6,6,6
	bl printf
	mr 29,27
.L6:
	lfs 1,0(29)
	mr 4,28
	mr 6,29
	mr 7,29
	mr 3,30
	mr 5,31
	creqv 6,6,6
	bl printf
	.loc 1 80 0
	cmpwi 7,28,3
	addi 29,29,20
	addi 28,28,1
	bne+ 7,.L6
	.loc 1 84 0
	lis 9,.LC5@ha
	li 4,0
	la 30,.LC5@l(9)
	mr 5,31
	mr 3,30
	mr 6,31
	mr 7,31
	mr 28,27
.LVL4:
	crxor 6,6,6
	bl printf
	li 29,1
.LVL5:
.L8:
	mr 4,29
	mr 6,28
	mr 7,28
	mr 3,30
	mr 5,31
	.loc 1 83 0
	addi 28,28,20
	.loc 1 84 0
	crxor 6,6,6
	bl printf
	.loc 1 83 0
	cmpwi 7,29,3
	addi 29,29,1
	bne+ 7,.L8
.LBB2:
	.loc 1 91 0
	bl WPAD_ScanPads
	.loc 1 95 0
	li 3,0
	bl WPAD_ButtonsDown
	.loc 1 98 0
	andi. 0,3,128
	bne- 0,.L21
.L10:
	.loc 1 101 0
	bl VIDEO_WaitVSync
	.loc 1 91 0
	bl WPAD_ScanPads
	.loc 1 95 0
	li 3,0
	bl WPAD_ButtonsDown
	.loc 1 98 0
	andi. 0,3,128
	beq+ 0,.L10
.L21:
	li 3,0
	bl exit
.LVL6:
.L20:
.LBE2:
	.loc 1 57 0
	bl VIDEO_WaitVSync
	b .L2
.LFE63:
	.size	main, .-main
	.globl cubedata
	.section	".data"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	cubedata, @object
	.size	cubedata, 80
cubedata:
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"\033[2;0H"
	.zero	1
.LC1:
	.string	"%02d va %p - &va[] %p \n"
.LC2:
	.string	"%02d pva %p - &pva[] %p \n"
	.zero	2
.LC3:
	.string	"num vertices %d\n"
	.zero	3
.LC4:
	.string	"%02d cubedata %p - &cubedata[] %p - cubedata[] %p float: %f\n"
	.zero	3
.LC5:
	.string	"%02d vertices %p - &vertices[] %p - vertices[] %p\n"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	rmode, @object
	.size	rmode, 4
rmode:
	.zero	4
	.type	xfb, @object
	.size	xfb, 4
xfb:
	.zero	4
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
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI1-.LFB63
	.byte	0xe
	.uleb128 0x80
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI4-.LCFI2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI7-.LCFI4
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9b
	.uleb128 0x5
	.align 2
.LEFDE0:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB63-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/Utils/devkitPro/libogc/include/gctypes.h"
	.file 3 "c:/Utils/devkitPro/libogc/include/ogc/gx_struct.h"
	.file 4 "c:/Utils/devkitPro/libogc/include/ogc/gu.h"
	.section	.debug_info
	.4byte	0x2f1
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
	.string	"u8"
	.byte	0x2
	.byte	0xf
	.4byte	0x2f
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x2
	.string	"u16"
	.byte	0x2
	.byte	0x10
	.4byte	0x41
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.string	"u32"
	.byte	0x2
	.byte	0x11
	.4byte	0x53
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.string	"f32"
	.byte	0x2
	.byte	0x29
	.4byte	0x88
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x96
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3c
	.byte	0x3
	.byte	0x3a
	.4byte	0x16e
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x3
	.byte	0x3b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x3
	.byte	0x3c
	.4byte	0x36
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3d
	.4byte	0x36
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0x3e
	.4byte	0x36
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0x3f
	.4byte	0x36
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x40
	.4byte	0x36
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0x41
	.4byte	0x36
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.byte	0x42
	.4byte	0x36
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.byte	0x43
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x3
	.byte	0x44
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"aa"
	.byte	0x3
	.byte	0x45
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0x46
	.4byte	0x16e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x3
	.byte	0x47
	.4byte	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0x0
	.uleb128 0xa
	.4byte	0x25
	.4byte	0x184
	.uleb128 0xb
	.4byte	0xa9
	.byte	0xb
	.uleb128 0xb
	.4byte	0xa9
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.4byte	0x25
	.4byte	0x194
	.uleb128 0xb
	.4byte	0xa9
	.byte	0x6
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x3
	.byte	0x48
	.4byte	0xac
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0xc
	.byte	0x4
	.byte	0x27
	.4byte	0x1d2
	.uleb128 0x9
	.string	"x"
	.byte	0x4
	.byte	0x28
	.4byte	0x7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"y"
	.byte	0x4
	.byte	0x28
	.4byte	0x7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"z"
	.byte	0x4
	.byte	0x28
	.4byte	0x7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x4
	.byte	0x29
	.4byte	0x1a1
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF27
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.4byte	0x6f
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST0
	.4byte	0x278
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x18
	.4byte	0x6f
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x18
	.4byte	0xa3
	.4byte	.LLST2
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x42
	.4byte	0x6f
	.4byte	.LLST3
	.uleb128 0x11
	.string	"va"
	.byte	0x1
	.byte	0x43
	.4byte	0x278
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x12
	.string	"pva"
	.byte	0x1
	.byte	0x44
	.4byte	0x288
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4b
	.4byte	0x6f
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4e
	.4byte	0x29e
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5f
	.4byte	0x48
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.4byte	0x1d2
	.4byte	0x288
	.uleb128 0xb
	.4byte	0xa9
	.byte	0x7
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d2
	.uleb128 0xa
	.4byte	0x88
	.4byte	0x29e
	.uleb128 0xb
	.4byte	0xa9
	.byte	0x4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x28e
	.uleb128 0x11
	.string	"xfb"
	.byte	0x1
	.byte	0xc
	.4byte	0x19f
	.byte	0x5
	.byte	0x3
	.4byte	xfb
	.uleb128 0x15
	.4byte	.LASF33
	.byte	0x1
	.byte	0xd
	.4byte	0x2c6
	.byte	0x5
	.byte	0x3
	.4byte	rmode
	.uleb128 0x5
	.byte	0x4
	.4byte	0x194
	.uleb128 0xa
	.4byte	0x88
	.4byte	0x2e2
	.uleb128 0xb
	.4byte	0xa9
	.byte	0x3
	.uleb128 0xb
	.4byte	0xa9
	.byte	0x4
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0xf
	.4byte	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cubedata
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2f5
	.4byte	0x1eb
	.string	"main"
	.4byte	0x2e2
	.string	"cubedata"
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
.LASF19:
	.string	"field_rendering"
.LASF32:
	.string	"pressed"
.LASF1:
	.string	"short unsigned int"
.LASF24:
	.string	"_vecf"
.LASF13:
	.string	"xfbHeight"
.LASF31:
	.string	"vertices"
.LASF7:
	.string	"float"
.LASF3:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned char"
.LASF30:
	.string	"numverts"
.LASF26:
	.string	"long unsigned int"
.LASF11:
	.string	"fbWidth"
.LASF35:
	.string	"d:/Data/Nintendo/test/source/test.c"
.LASF36:
	.string	"d:\\\\Data\\\\Nintendo\\\\test\\\\build"
.LASF25:
	.string	"Vector"
.LASF8:
	.string	"double"
.LASF10:
	.string	"viTVMode"
.LASF37:
	.string	"main"
.LASF15:
	.string	"viYOrigin"
.LASF12:
	.string	"efbHeight"
.LASF2:
	.string	"unsigned int"
.LASF18:
	.string	"xfbMode"
.LASF38:
	.string	"cubedata"
.LASF9:
	.string	"char"
.LASF23:
	.string	"_gx_rmodeobj"
.LASF17:
	.string	"viHeight"
.LASF28:
	.string	"argc"
.LASF6:
	.string	"long long int"
.LASF34:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF33:
	.string	"rmode"
.LASF21:
	.string	"vfilter"
.LASF5:
	.string	"short int"
.LASF14:
	.string	"viXOrigin"
.LASF29:
	.string	"argv"
.LASF20:
	.string	"sample_pattern"
.LASF27:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF22:
	.string	"GXRModeObj"
.LASF16:
	.string	"viWidth"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
