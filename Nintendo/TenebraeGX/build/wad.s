	.file	"wad.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl W_CleanupName
	.type	W_CleanupName, @function
W_CleanupName:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/wad.c"
	.loc 1 42 0
	.cfi_startproc
.LVL0:
	.loc 1 46 0
	li 0,16
	li 9,0
	mtctr 0
.LVL1:
.L4:
	.loc 1 48 0
	lbzx 11,3,9
.LVL2:
	.loc 1 49 0
	cmpwi 7,11,0
	.loc 1 52 0
	addi 0,11,-65
	cmplwi 6,0,25
	.loc 1 49 0
	beq- 7,.L6
	.loc 1 52 0
	bgt- 6,.L3
	.loc 1 53 0
	addi 11,11,32
.LVL3:
.L3:
	.loc 1 54 0
	stbx 11,4,9
	.loc 1 46 0
	addi 9,9,1
.LVL4:
	bdnz .L4
	blr
.LVL5:
.L6:
	.loc 1 58 0 discriminator 2
	subfic 11,9,16
	li 0,0
.LVL6:
	mtctr 11
.L7:
	stbx 0,4,9
	.loc 1 57 0 discriminator 2
	addi 9,9,1
.LVL7:
	bdnz .L7
	blr
	.cfi_endproc
.LFE38:
	.size	W_CleanupName, .-W_CleanupName
	.align 2
	.globl W_LoadWadFile
	.type	W_LoadWadFile, @function
W_LoadWadFile:
.LFB39:
	.loc 1 69 0
	.cfi_startproc
.LVL8:
	mflr 0
	stwu 1,-40(1)
.LCFI0:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 27,20(1)
	.loc 1 75 0
	lis 27,wad_base@ha
	.cfi_offset 27, -20
	.loc 1 69 0
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,36(1)
	stw 0,44(1)
	stw 24,8(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 28,24(1)
	stw 29,28(1)
	.loc 1 75 0
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl COM_LoadHunkFile
.LVL9:
	.loc 1 76 0
	cmpwi 7,3,0
	.loc 1 75 0
	mr 31,3
	stw 3,wad_base@l(27)
	.loc 1 76 0
	beq- 7,.L18
.L12:
.LVL10:
	.loc 1 81 0
	lwz 9,0(31)
	xoris 0,9,0x5741
	cmpwi 7,0,17458
	beq 7,.L13
	.loc 1 85 0
	lis 3,.LC1@ha
	mr 4,30
	la 3,.LC1@l(3)
	crxor 6,6,6
	bl Sys_Error
.L13:
	.loc 1 87 0
	lis 29,LittleLong@ha
	lwz 3,4(31)
	lwz 0,LittleLong@l(29)
	lis 28,wad_numlumps@ha
	mtctr 0
	bctrl
	.loc 1 88 0
	lwz 0,LittleLong@l(29)
	.loc 1 87 0
	stw 3,wad_numlumps@l(28)
	.loc 1 88 0
	mtctr 0
	lwz 3,8(31)
	bctrl
.LVL11:
	.loc 1 91 0
	lwz 0,wad_numlumps@l(28)
	.loc 1 89 0
	lwz 31,wad_base@l(27)
.LVL12:
	lis 9,wad_lumps@ha
	.loc 1 91 0
	cmpwi 7,0,0
	.loc 1 89 0
	add 31,31,3
	stw 31,wad_lumps@l(9)
.LVL13:
	.loc 1 91 0
	ble- 7,.L11
	li 30,0
.LVL14:
	la 29,LittleLong@l(29)
	la 28,wad_numlumps@l(28)
	b .L16
.LVL15:
.L15:
	lwz 0,0(28)
	addi 31,31,32
.LVL16:
	cmpw 7,0,30
	ble- 7,.L11
.LVL17:
.L16:
	.loc 1 93 0
	lwz 0,0(29)
	.loc 1 91 0
	addi 30,30,1
	.loc 1 93 0
	lwz 3,0(31)
	mtctr 0
	bctrl
	.loc 1 94 0
	lwz 0,0(29)
	.loc 1 93 0
	stw 3,0(31)
	.loc 1 94 0
	mtctr 0
	lwz 3,8(31)
	bctrl
	.loc 1 95 0
	addi 0,31,16
	.loc 1 94 0
	stw 3,8(31)
	.loc 1 95 0
	mr 4,0
	mr 3,0
	bl W_CleanupName
	.loc 1 96 0
	lbz 0,12(31)
	cmpwi 7,0,66
	bne+ 7,.L15
	.loc 1 97 0
	lwz 26,0(31)
	.loc 1 91 0
	addi 31,31,32
.LVL18:
	.loc 1 97 0
	lwz 25,wad_base@l(27)
.LBB4:
.LBB5:
	.loc 1 156 0
	lwz 0,0(29)
	lwzx 3,25,26
.LBE5:
.LBE4:
	.loc 1 97 0
	add 24,25,26
.LVL19:
.LBB8:
.LBB6:
	.loc 1 156 0
	mtctr 0
	bctrl
.LVL20:
	.loc 1 157 0
	lwz 0,0(29)
	.loc 1 156 0
	stwx 3,25,26
	.loc 1 157 0
	mtctr 0
	lwz 3,4(24)
	bctrl
.LBE6:
.LBE8:
	.loc 1 91 0
	lwz 0,0(28)
.LBB9:
.LBB7:
	.loc 1 157 0
	stw 3,4(24)
.LVL21:
.LBE7:
.LBE9:
	.loc 1 91 0
	cmpw 7,0,30
	bgt+ 7,.L16
.LVL22:
.L11:
	.loc 1 99 0
	lwz 0,44(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL23:
	addi 1,1,40
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
.LVL24:
.L18:
.LCFI2:
	.cfi_restore_state
	.loc 1 77 0
	lis 3,.LC0@ha
	mr 4,30
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl Sys_Error
	lwz 31,wad_base@l(27)
	b .L12
	.cfi_endproc
.LFE39:
	.size	W_LoadWadFile, .-W_LoadWadFile
	.align 2
	.globl W_GetLumpinfo
	.type	W_GetLumpinfo, @function
W_GetLumpinfo:
.LFB40:
	.loc 1 108 0
	.cfi_startproc
.LVL25:
	stwu 1,-40(1)
.LCFI3:
	.cfi_def_cfa_offset 40
	mflr 0
	.loc 1 113 0
	addi 4,1,8
	.loc 1 108 0
	stw 28,24(1)
	stw 29,28(1)
	mr 28,3
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_register 65, 0
	stw 31,36(1)
	stw 0,44(1)
	stw 30,32(1)
	.loc 1 113 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl W_CleanupName
.LVL26:
	.loc 1 115 0
	lis 9,wad_numlumps@ha
	lwz 29,wad_numlumps@l(9)
	lis 9,wad_lumps@ha
	lwz 31,wad_lumps@l(9)
.LVL27:
	cmpwi 7,29,0
	ble- 7,.L20
	li 30,0
	b .L22
.LVL28:
.L24:
	addi 31,31,32
.LVL29:
	beq- 6,.L20
.LVL30:
.L22:
	.loc 1 117 0
	addi 4,31,16
	addi 3,1,8
	bl strcmp
	.loc 1 115 0
	addi 30,30,1
	.loc 1 117 0
	cmpwi 7,3,0
	.loc 1 115 0
	cmpw 6,30,29
	.loc 1 117 0
	bne+ 7,.L24
	.loc 1 123 0
	lwz 0,44(1)
	mr 3,31
	lwz 28,24(1)
.LVL31:
	mtlr 0
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL32:
	addi 1,1,40
	.cfi_remember_state
.LCFI4:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL33:
.L20:
.LCFI5:
	.cfi_restore_state
	.loc 1 121 0
	lis 3,.LC2@ha
	mr 4,28
	la 3,.LC2@l(3)
	.loc 1 122 0
	li 31,0
.LVL34:
	.loc 1 121 0
	crxor 6,6,6
	bl Sys_Error
	.loc 1 123 0
	lwz 0,44(1)
	mr 3,31
	lwz 28,24(1)
.LVL35:
	mtlr 0
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI6:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE40:
	.size	W_GetLumpinfo, .-W_GetLumpinfo
	.align 2
	.globl W_GetLumpName
	.type	W_GetLumpName, @function
W_GetLumpName:
.LFB41:
	.loc 1 126 0
	.cfi_startproc
.LVL36:
	mflr 0
	stwu 1,-8(1)
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 129 0
	.cfi_offset 65, 4
	bl W_GetLumpinfo
.LVL37:
	.loc 1 131 0
	lis 9,wad_base@ha
	lwz 3,0(3)
.LVL38:
	lwz 0,wad_base@l(9)
	.loc 1 132 0
	add 3,0,3
	lwz 0,12(1)
	addi 1,1,8
.LCFI8:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE41:
	.size	W_GetLumpName, .-W_GetLumpName
	.align 2
	.globl W_GetLumpNum
	.type	W_GetLumpNum, @function
W_GetLumpNum:
.LFB42:
	.loc 1 135 0
	.cfi_startproc
.LVL39:
	stwu 1,-16(1)
.LCFI9:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 138 0
	mr. 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 135 0
	stw 0,20(1)
	.loc 1 138 0
	blt- 0,.L27
	.cfi_offset 65, 4
	.loc 1 138 0 is_stmt 0 discriminator 1
	lis 9,wad_numlumps@ha
	lwz 0,wad_numlumps@l(9)
	cmpw 7,31,0
	ble- 7,.L28
.L27:
	.loc 1 139 0 is_stmt 1
	lis 3,.LC3@ha
.LVL40:
	mr 4,31
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl Sys_Error
.L28:
.LVL41:
	.loc 1 143 0
	lis 9,wad_lumps@ha
	slwi 31,31,5
.LVL42:
	lwz 9,wad_lumps@l(9)
	lis 11,wad_base@ha
	lwz 3,wad_base@l(11)
	lwzx 0,9,31
	.loc 1 144 0
	lwz 31,12(1)
	add 3,3,0
	lwz 0,20(1)
	addi 1,1,16
.LCFI10:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	mtlr 0
	blr
	.cfi_endproc
.LFE42:
	.size	W_GetLumpNum, .-W_GetLumpNum
	.align 2
	.globl SwapPic
	.type	SwapPic, @function
SwapPic:
.LFB43:
	.loc 1 155 0
	.cfi_startproc
.LVL43:
	stwu 1,-16(1)
.LCFI11:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	.loc 1 156 0
	lis 30,LittleLong@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 155 0
	stw 0,20(1)
	.loc 1 156 0
	lwz 0,LittleLong@l(30)
	.cfi_offset 65, 4
	.loc 1 155 0
	stw 31,12(1)
	.loc 1 155 0
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 156 0
	mtctr 0
	lwz 3,0(3)
.LVL44:
	bctrl
	.loc 1 157 0
	lwz 0,LittleLong@l(30)
	.loc 1 156 0
	stw 3,0(31)
	.loc 1 157 0
	mtctr 0
	lwz 3,4(31)
	bctrl
	.loc 1 158 0
	lwz 0,20(1)
	.loc 1 157 0
	stw 3,4(31)
	.loc 1 158 0
	mtlr 0
	lwz 30,8(1)
	lwz 31,12(1)
.LVL45:
	addi 1,1,16
.LCFI12:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE43:
	.size	SwapPic, .-SwapPic
	.comm	wad_base,4,4
	.comm	wad_lumps,4,4
	.comm	wad_numlumps,4,4
	.comm	causticschain,4,4
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"W_LoadWadFile: couldn't load %s"
.LC1:
	.string	"Wad file %s doesn't have WAD2 id\n"
	.zero	2
.LC2:
	.string	"W_GetLumpinfo: %s not found"
.LC3:
	.string	"W_GetLumpNum: bad number: %i"
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/wad.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x89b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x1
	.4byte	.LASF102
	.4byte	.LASF103
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x7
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x8
	.4byte	0x41
	.4byte	0xc7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x6c
	.4byte	0xd7
	.uleb128 0x9
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0xe7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x33
	.4byte	0xf7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x7a
	.4byte	0x10d
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x8f
	.4byte	0x11d
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x3
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0x17
	.4byte	0x133
	.uleb128 0x8
	.4byte	0x11d
	.4byte	0x143
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0xc
	.byte	0x4
	.byte	0x27
	.4byte	0x176
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x29
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0x29
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2a
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2b
	.4byte	0x143
	.uleb128 0xa
	.byte	0xc
	.byte	0x4
	.byte	0x2f
	.4byte	0x1b4
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x31
	.4byte	0x1b4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x32
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0x33
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x6c
	.4byte	0x1c4
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0x34
	.4byte	0x181
	.uleb128 0xa
	.byte	0x20
	.byte	0x4
	.byte	0x36
	.4byte	0x248
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.byte	0x38
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.byte	0x39
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x4
	.byte	0x3a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x4
	.byte	0x3b
	.4byte	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x4
	.byte	0x3c
	.4byte	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x4
	.byte	0x3d
	.4byte	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x4
	.byte	0x3d
	.4byte	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x4
	.byte	0x3e
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x4
	.byte	0x3f
	.4byte	0x1cf
	.uleb128 0xc
	.byte	0x1
	.4byte	0x41
	.4byte	0x263
	.uleb128 0xd
	.4byte	0x41
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x253
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x14
	.byte	0x5
	.byte	0x52
	.4byte	0x2bc
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x54
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xf
	.string	"pad"
	.byte	0x5
	.byte	0x58
	.4byte	0x2bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.4byte	0x8f
	.4byte	0x2cc
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x5
	.byte	0x59
	.4byte	0x269
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x48
	.byte	0x5
	.byte	0x5b
	.4byte	0x38c
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x5d
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x5
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x61
	.4byte	0x4b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0x64
	.4byte	0x4b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x65
	.4byte	0x4b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0x66
	.4byte	0xd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x5c
	.byte	0x5
	.byte	0x96
	.4byte	0x4b1
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0x9a
	.4byte	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x5
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x5
	.byte	0xa0
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x5
	.byte	0xa1
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x5
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x5
	.byte	0xa5
	.4byte	0x5a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0xa6
	.4byte	0x4b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x5
	.byte	0xa7
	.4byte	0x4b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x5
	.byte	0xa9
	.4byte	0x5ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x5
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x5
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x5
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x5
	.byte	0xb0
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x5
	.byte	0xb1
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x5
	.byte	0xb2
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x5
	.byte	0xb3
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x38c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2d7
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x5
	.byte	0x67
	.4byte	0x2d7
	.uleb128 0xa
	.byte	0x2c
	.byte	0x5
	.byte	0x7e
	.4byte	0x509
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x5
	.byte	0x80
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x5
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x5
	.byte	0x82
	.4byte	0x509
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4bd
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x5
	.byte	0x84
	.4byte	0x4c8
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x1c
	.byte	0x5
	.byte	0x8a
	.4byte	0x589
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x5
	.byte	0x8c
	.4byte	0x589
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x5
	.byte	0x8d
	.4byte	0x589
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x5
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x5
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x5
	.byte	0x92
	.4byte	0x58f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x5
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x51a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x589
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x5
	.byte	0x94
	.4byte	0x51a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2cc
	.uleb128 0x5
	.byte	0x4
	.4byte	0x595
	.uleb128 0x5
	.byte	0x4
	.4byte	0x50f
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x5
	.byte	0xb4
	.4byte	0x38c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5b2
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x4
	.byte	0x6
	.2byte	0x490
	.4byte	0x623
	.uleb128 0x11
	.string	"U8"
	.byte	0x6
	.2byte	0x492
	.4byte	0x623
	.uleb128 0x11
	.string	"S8"
	.byte	0x6
	.2byte	0x493
	.4byte	0x628
	.uleb128 0x11
	.string	"U16"
	.byte	0x6
	.2byte	0x494
	.4byte	0x62d
	.uleb128 0x11
	.string	"S16"
	.byte	0x6
	.2byte	0x495
	.4byte	0x632
	.uleb128 0x11
	.string	"U32"
	.byte	0x6
	.2byte	0x496
	.4byte	0x637
	.uleb128 0x11
	.string	"S32"
	.byte	0x6
	.2byte	0x497
	.4byte	0x63c
	.uleb128 0x11
	.string	"F32"
	.byte	0x6
	.2byte	0x498
	.4byte	0x9a
	.byte	0
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x7
	.4byte	0x25
	.uleb128 0x7
	.4byte	0x3a
	.uleb128 0x7
	.4byte	0x33
	.uleb128 0x7
	.4byte	0x48
	.uleb128 0x7
	.4byte	0x41
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x499
	.4byte	0x5c3
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF105
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.byte	0x1
	.4byte	0x667
	.uleb128 0x14
	.string	"pic"
	.byte	0x1
	.byte	0x9a
	.4byte	0x667
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x176
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x6b9
	.uleb128 0x16
	.string	"in"
	.byte	0x1
	.byte	0x29
	.4byte	0x66
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.string	"out"
	.byte	0x1
	.byte	0x29
	.4byte	0x66
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.4byte	0x41
	.4byte	.LLST0
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.byte	0x2c
	.4byte	0x41
	.4byte	.LLST1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST2
	.4byte	0x735
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x1
	.byte	0x44
	.4byte	0x66
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF88
	.byte	0x1
	.byte	0x46
	.4byte	0x735
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x47
	.4byte	0x73b
	.4byte	.LLST5
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x48
	.4byte	0x41
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LASF24
	.byte	0x1
	.byte	0x49
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	0x64d
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x61
	.uleb128 0x1c
	.4byte	0x65b
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x248
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c4
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF91
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.4byte	0x735
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST9
	.4byte	0x798
	.uleb128 0x19
	.4byte	.LASF33
	.byte	0x1
	.byte	0x6b
	.4byte	0x66
	.4byte	.LLST10
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x6d
	.4byte	0x41
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	.LASF88
	.byte	0x1
	.byte	0x6e
	.4byte	0x735
	.4byte	.LLST12
	.uleb128 0x1e
	.4byte	.LASF90
	.byte	0x1
	.byte	0x6f
	.4byte	0xc7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF92
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST13
	.4byte	0x7d4
	.uleb128 0x19
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7d
	.4byte	0x66
	.4byte	.LLST14
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.byte	0x7f
	.4byte	0x735
	.4byte	.LLST15
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF94
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST16
	.4byte	0x810
	.uleb128 0x1f
	.string	"num"
	.byte	0x1
	.byte	0x86
	.4byte	0x41
	.4byte	.LLST17
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.byte	0x88
	.4byte	0x735
	.4byte	.LLST18
	.byte	0
	.uleb128 0x20
	.4byte	0x64d
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST19
	.4byte	0x82f
	.uleb128 0x1c
	.4byte	0x65b
	.4byte	.LLST20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF95
	.byte	0x2
	.byte	0x63
	.4byte	0x263
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF96
	.byte	0x1
	.byte	0x18
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	wad_numlumps
	.uleb128 0x22
	.4byte	.LASF97
	.byte	0x1
	.byte	0x19
	.4byte	0x735
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	wad_lumps
	.uleb128 0x22
	.4byte	.LASF98
	.byte	0x1
	.byte	0x1a
	.4byte	0xb1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	wad_base
	.uleb128 0x23
	.4byte	.LASF99
	.byte	0x7
	.2byte	0xc2c
	.4byte	0x5bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x24
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x548
	.4byte	0x893
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x898
	.uleb128 0x5
	.byte	0x4
	.4byte	0x641
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
	.uleb128 0x35
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 65
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-1-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-1-.Ltext0
	.2byte	0xb
	.byte	0x3
	.4byte	wad_base
	.byte	0x6
	.byte	0x8f
	.sleb128 -32
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL20-1-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x6
	.byte	0x89
	.sleb128 0
	.byte	0x8a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	wad_lumps
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0xc
	.byte	0x8f
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x3
	.4byte	wad_lumps
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6f
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"texture_s"
.LASF70:
	.string	"texture_t"
.LASF100:
	.string	"wgPipe"
.LASF89:
	.string	"header"
.LASF84:
	.string	"WGPipe"
.LASF86:
	.string	"W_LoadWadFile"
.LASF35:
	.string	"normal"
.LASF26:
	.string	"filepos"
.LASF27:
	.string	"disksize"
.LASF57:
	.string	"extents"
.LASF8:
	.string	"char"
.LASF36:
	.string	"dist"
.LASF2:
	.string	"short int"
.LASF61:
	.string	"shadowchain"
.LASF85:
	.string	"W_CleanupName"
.LASF102:
	.string	"d:/Data/Nintendo/TenebraeGX/src/wad.c"
.LASF43:
	.string	"texturechain"
.LASF87:
	.string	"filename"
.LASF14:
	.string	"qboolean"
.LASF88:
	.string	"lump_p"
.LASF37:
	.string	"signbits"
.LASF25:
	.string	"wadinfo_t"
.LASF91:
	.string	"W_GetLumpinfo"
.LASF77:
	.string	"chain"
.LASF80:
	.string	"neighbours"
.LASF48:
	.string	"alternate_anims"
.LASF103:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF92:
	.string	"W_GetLumpName"
.LASF34:
	.string	"lumpinfo_t"
.LASF10:
	.string	"float"
.LASF38:
	.string	"mplane_t"
.LASF5:
	.string	"long long int"
.LASF18:
	.string	"width"
.LASF49:
	.string	"offsets"
.LASF78:
	.string	"numverts"
.LASF99:
	.string	"causticschain"
.LASF32:
	.string	"pad2"
.LASF12:
	.string	"long int"
.LASF42:
	.string	"gl_lumitex"
.LASF90:
	.string	"clean"
.LASF55:
	.string	"numedges"
.LASF69:
	.string	"samples"
.LASF68:
	.string	"cached_dlight"
.LASF13:
	.string	"byte"
.LASF33:
	.string	"name"
.LASF24:
	.string	"infotableofs"
.LASF1:
	.string	"unsigned char"
.LASF16:
	.string	"vec_t"
.LASF66:
	.string	"styles"
.LASF62:
	.string	"texinfo"
.LASF51:
	.string	"visframe"
.LASF17:
	.string	"vec3_t"
.LASF22:
	.string	"identification"
.LASF0:
	.string	"signed char"
.LASF53:
	.string	"flags"
.LASF6:
	.string	"long long unsigned int"
.LASF29:
	.string	"type"
.LASF19:
	.string	"height"
.LASF4:
	.string	"unsigned int"
.LASF44:
	.string	"anim_total"
.LASF46:
	.string	"anim_max"
.LASF67:
	.string	"cached_light"
.LASF39:
	.string	"mplane_s"
.LASF54:
	.string	"firstedge"
.LASF3:
	.string	"short unsigned int"
.LASF96:
	.string	"wad_numlumps"
.LASF75:
	.string	"glpoly_s"
.LASF82:
	.string	"glpoly_t"
.LASF23:
	.string	"numlumps"
.LASF95:
	.string	"LittleLong"
.LASF93:
	.string	"lump"
.LASF45:
	.string	"anim_min"
.LASF65:
	.string	"lightmaptexturenum"
.LASF15:
	.string	"_Bool"
.LASF11:
	.string	"long double"
.LASF73:
	.string	"texture"
.LASF79:
	.string	"lightTimestamp"
.LASF20:
	.string	"data"
.LASF56:
	.string	"texturemins"
.LASF30:
	.string	"compression"
.LASF60:
	.string	"polys"
.LASF63:
	.string	"dlightframe"
.LASF7:
	.string	"long unsigned int"
.LASF74:
	.string	"mtexinfo_t"
.LASF97:
	.string	"wad_lumps"
.LASF28:
	.string	"size"
.LASF50:
	.string	"msurface_s"
.LASF83:
	.string	"msurface_t"
.LASF41:
	.string	"gl_texturenum"
.LASF104:
	.string	"_wgpipe"
.LASF52:
	.string	"plane"
.LASF58:
	.string	"light_s"
.LASF59:
	.string	"light_t"
.LASF72:
	.string	"mipadjust"
.LASF64:
	.string	"dlightbits"
.LASF21:
	.string	"qpic_t"
.LASF101:
	.string	"GNU C 4.6.3"
.LASF9:
	.string	"double"
.LASF31:
	.string	"pad1"
.LASF94:
	.string	"W_GetLumpNum"
.LASF105:
	.string	"SwapPic"
.LASF81:
	.string	"firstvertex"
.LASF71:
	.string	"vecs"
.LASF98:
	.string	"wad_base"
.LASF76:
	.string	"next"
.LASF47:
	.string	"anim_next"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
