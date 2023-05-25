	.file	"gx_vid.cpp"
	.section	".text"
.Ltext0:
	.align 2
	.globl _Z10GLimp_Initv
	.type	_Z10GLimp_Initv, @function
_Z10GLimp_Initv:
.LFB61:
	.file 1 "d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_vid.cpp"
	.loc 1 31 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 40 0
	.cfi_offset 65, 4
	bl _Z7qgxInitv
	.loc 1 42 0
	lwz 0,12(1)
	li 3,1
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE61:
	.size	_Z10GLimp_Initv, .-_Z10GLimp_Initv
	.align 2
	.globl _Z14GLimp_Shutdownv
	.type	_Z14GLimp_Shutdownv, @function
_Z14GLimp_Shutdownv:
.LFB62:
	.loc 1 44 0
	.cfi_startproc
	.loc 1 46 0
	blr
	.cfi_endproc
.LFE62:
	.size	_Z14GLimp_Shutdownv, .-_Z14GLimp_Shutdownv
	.align 2
	.globl _Z14GLimp_SetGammaPtS_S_
	.type	_Z14GLimp_SetGammaPtS_S_, @function
_Z14GLimp_SetGammaPtS_S_:
.LFB63:
	.loc 1 48 0
	.cfi_startproc
.LVL0:
	.loc 1 50 0
	blr
	.cfi_endproc
.LFE63:
	.size	_Z14GLimp_SetGammaPtS_S_, .-_Z14GLimp_SetGammaPtS_S_
	.align 2
	.globl _Z23GLimp_DeactivateContextv
	.type	_Z23GLimp_DeactivateContextv, @function
_Z23GLimp_DeactivateContextv:
.LFB64:
	.loc 1 52 0
	.cfi_startproc
	.loc 1 55 0
	blr
	.cfi_endproc
.LFE64:
	.size	_Z23GLimp_DeactivateContextv, .-_Z23GLimp_DeactivateContextv
	.align 2
	.globl _Z21GLimp_ActivateContextv
	.type	_Z21GLimp_ActivateContextv, @function
_Z21GLimp_ActivateContextv:
.LFB65:
	.loc 1 57 0
	.cfi_startproc
	.loc 1 60 0
	blr
	.cfi_endproc
.LFE65:
	.size	_Z21GLimp_ActivateContextv, .-_Z21GLimp_ActivateContextv
	.align 2
	.globl _Z15Vid_SwapBuffersb
	.type	_Z15Vid_SwapBuffersb, @function
_Z15Vid_SwapBuffersb:
.LFB67:
	.loc 1 146 0
	.cfi_startproc
.LVL1:
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 31,12(1)
	.loc 1 147 0
	lis 3,.LC0@ha
.LVL2:
	.loc 1 150 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.loc 1 147 0
	mr 4,30
	.loc 1 150 0
	la 31,.LANCHOR0@l(31)
	.loc 1 147 0
	la 3,.LC0@l(3)
	.loc 1 146 0
	stw 0,20(1)
	.loc 1 147 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 1 148 0
	bl GX_Flush
	.loc 1 149 0
	bl GX_DrawDone
	.loc 1 150 0
	lwz 0,8(31)
	mr 4,30
	slwi 0,0,2
	lwzx 3,31,0
	bl GX_CopyDisp
	.loc 1 152 0
	lwz 0,8(31)
	slwi 0,0,2
	lwzx 3,31,0
	bl VIDEO_SetNextFramebuffer
	.loc 1 153 0
	bl VIDEO_Flush
	.loc 1 156 0
	lwz 0,8(31)
	xori 0,0,1
	stw 0,8(31)
	.loc 1 157 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE67:
	.size	_Z15Vid_SwapBuffersb, .-_Z15Vid_SwapBuffersb
	.align 2
	.globl _Z8Vid_Initv
	.type	_Z8Vid_Initv, @function
_Z8Vid_Initv:
.LFB66:
	.loc 1 66 0
	.cfi_startproc
.LVL3:
	stwu 1,-48(1)
.LCFI4:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 29,36(1)
.LBB2:
	.loc 1 68 0
	lis 29,.LANCHOR0@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
.LBE2:
	.loc 1 66 0
	stw 0,52(1)
.LBB3:
	.loc 1 68 0
	li 0,0
	.cfi_offset 65, 4
.LBE3:
	.loc 1 66 0
	stw 31,44(1)
.LBB4:
	.loc 1 68 0
	la 31,.LANCHOR0@l(29)
	.cfi_offset 31, -4
.LBE4:
	.loc 1 66 0
	stw 30,40(1)
	stw 28,32(1)
.LBB5:
	.loc 1 68 0
	stw 0,8(31)
	.loc 1 70 0
	.cfi_offset 28, -16
	.cfi_offset 30, -8
	bl VIDEO_Init
	.loc 1 73 0
	lis 4,0x8
	li 3,32
	bl memalign
	.loc 1 74 0
	li 4,0
	lis 5,0x8
	.loc 1 73 0
	mr 30,3
.LVL4:
	.loc 1 74 0
	bl memset
.LVL5:
	.loc 1 77 0
	li 3,0
	bl VIDEO_GetPreferredMode
	mr 9,3
	.loc 1 78 0
	lhz 4,8(3)
	lhz 5,6(3)
	lhz 6,16(3)
	lis 3,.LC1@ha
	.loc 1 77 0
	stw 9,12(31)
	.loc 1 78 0
	la 3,.LC1@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 1 79 0
	lwz 3,12(31)
	.loc 1 82 0
	lhz 10,8(3)
	.loc 1 80 0
	lhz 9,10(3)
	.loc 1 79 0
	lhz 11,14(3)
	.loc 1 82 0
	addi 0,10,-48
	.loc 1 80 0
	addi 9,9,-10
	.loc 1 82 0
	sth 0,8(3)
	.loc 1 79 0
	addi 11,11,20
	.loc 1 83 0
	li 0,480
	.loc 1 80 0
	sth 9,10(3)
	.loc 1 81 0
	li 9,24
	.loc 1 79 0
	sth 11,14(3)
	.loc 1 81 0
	sth 9,12(3)
	.loc 1 83 0
	sth 0,6(3)
	.loc 1 87 0
	bl SYS_AllocateFramebuffer
	addis 0,3,0x4000
	.loc 1 88 0
	lwz 3,12(31)
	.loc 1 87 0
	stw 0,.LANCHOR0@l(29)
	.loc 1 88 0
	bl SYS_AllocateFramebuffer
	.loc 1 91 0
	lwz 9,12(31)
	.loc 1 88 0
	addis 3,3,0x4000
	.loc 1 91 0
	lwz 0,8(31)
	.loc 1 88 0
	stw 3,4(31)
	.loc 1 91 0
	li 4,20
	slwi 0,0,2
	li 5,20
	lhz 6,4(9)
	lhz 7,8(9)
	lwzx 3,31,0
	slwi 8,6,1
	bl CON_Init
	.loc 1 93 0
	lwz 3,12(31)
	bl VIDEO_Configure
	.loc 1 95 0
	lwz 0,8(31)
	slwi 0,0,2
	lwzx 3,31,0
	bl VIDEO_SetNextFramebuffer
	.loc 1 96 0
	li 3,0
	bl VIDEO_SetBlack
	.loc 1 97 0
	bl VIDEO_Flush
	.loc 1 98 0
	bl VIDEO_WaitVSync
	.loc 1 99 0
	lwz 9,12(31)
	lwz 0,0(9)
	andi. 9,0,1
	bne- 0,.L10
.L8:
	.loc 1 101 0
	lwz 0,8(31)
	.loc 1 107 0
	li 28,0
	.loc 1 104 0
	mr 3,30
	.loc 1 107 0
	li 30,0
.LVL6:
	.loc 1 101 0
	xori 0,0,1
	.loc 1 104 0
	lis 4,0x8
	.loc 1 101 0
	stw 0,8(31)
	.loc 1 107 0
	rlwimi 30,28,24,0,7
.LVL7:
	rlwimi 30,28,16,8,15
	.loc 1 108 0
	mr 29,1
	.loc 1 104 0
	bl GX_Init
.LVL8:
	.loc 1 107 0
	li 0,-1
	rlwimi 30,0,8,16,23
	.loc 1 108 0
	lis 4,0xff
	.loc 1 107 0
	rlwimi 30,0,0,24,31
	.loc 1 108 0
	ori 4,4,65535
	stwu 30,8(29)
	.loc 1 135 0
	rlwimi 30,28,8,16,23
	.loc 1 136 0
	rlwimi 30,28,0,24,31
	.loc 1 108 0
	mr 3,29
	bl GX_SetCopyClear
	.loc 1 111 0
	lwz 9,12(31)
	lis 0,0x4330
	lhz 11,4(9)
	stw 0,16(1)
	stw 11,20(1)
	lhz 9,6(9)
	stw 0,24(1)
	stw 9,28(1)
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	lis 9,.LC5@ha
	lfd 3,16(1)
	lfd 4,24(1)
	fsub 3,3,0
	lfs 1,.LC5@l(9)
	fsub 4,4,0
	lis 9,.LC4@ha
	fmr 2,1
	lfs 6,.LC4@l(9)
	frsp 3,3
	frsp 4,4
	fmr 5,1
	bl GX_SetViewport
	.loc 1 112 0
	lwz 9,12(31)
	lhz 4,8(9)
	lhz 3,6(9)
	bl GX_GetYScaleFactor
	.loc 1 113 0
	bl GX_SetDispCopyYScale
	.loc 1 114 0
	lwz 9,12(31)
	.loc 1 113 0
	mr 28,3
.LVL9:
	.loc 1 114 0
	li 4,0
	lhz 5,4(9)
	li 3,0
.LVL10:
	lhz 6,6(9)
	bl GX_SetScissor
	.loc 1 115 0
	lwz 9,12(31)
	li 3,0
	li 4,0
	lhz 5,4(9)
	lhz 6,6(9)
	bl GX_SetDispCopySrc
	.loc 1 116 0
	lwz 9,12(31)
	rlwinm 4,28,0,0xffff
	lhz 3,4(9)
	bl GX_SetDispCopyDst
	.loc 1 117 0
	lwz 4,12(31)
	li 5,1
	lbz 3,25(4)
	addi 6,4,50
	addi 4,4,26
	bl GX_SetCopyFilter
	.loc 1 118 0
	lwz 9,12(31)
	lhz 0,8(9)
	lhz 4,16(9)
	slwi 0,0,1
	lbz 3,24(9)
	xor 4,4,0
	cntlzw 4,4
	srwi 4,4,5
	bl GX_SetFieldMode
	.loc 1 120 0
	li 4,0
	li 3,1
	bl GX_SetPixelFmt
	.loc 1 122 0
	li 3,2
	bl GX_SetCullMode
	.loc 1 123 0
	lwz 0,8(31)
	li 4,1
	slwi 0,0,2
	lwzx 3,31,0
	bl GX_CopyDisp
	.loc 1 124 0
	li 3,0
	bl GX_SetDispCopyGamma
	.loc 1 126 0
	li 3,1
	bl GX_SetAlphaUpdate
	.loc 1 127 0
	li 5,1
	li 4,3
	li 3,1
	bl GX_SetZMode
	.loc 1 128 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 130 0
	li 3,1
	bl _Z15Vid_SwapBuffersb
	.loc 1 131 0
	bl VIDEO_WaitVSync
	.loc 1 137 0
	lis 4,0xff
	ori 4,4,65535
	mr 3,29
	stw 30,8(1)
	bl GX_SetCopyClear
	.loc 1 139 0
	li 3,1
	bl _Z15Vid_SwapBuffersb
	.loc 1 140 0
	bl VIDEO_WaitVSync
	.loc 1 142 0
	li 3,7
	li 4,0
	li 5,0
	li 6,7
	li 7,0
	bl GX_SetAlphaCompare
.LBE5:
	.loc 1 144 0
	lwz 0,52(1)
	lwz 28,32(1)
.LVL11:
	mtlr 0
	lwz 29,36(1)
	lwz 30,40(1)
.LVL12:
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL13:
.L10:
.LCFI6:
	.cfi_restore_state
.LBB6:
	.loc 1 99 0 discriminator 1
	bl VIDEO_WaitVSync
	b .L8
.LBE6:
	.cfi_endproc
.LFE66:
	.size	_Z8Vid_Initv, .-_Z8Vid_Initv
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC3:
	.4byte	1501560832
.LC4:
	.4byte	1065353216
.LC5:
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	">>> void Vid_SwapBuffers(boolean clear) %d\r\n"
	.zero	3
.LC1:
	.string	">>> vidrmode->xfbHeight %d vidrmode->efbHeight %d vidrmode->viHeight %d\r\n"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	_ZL14vidframebuffer, @object
	.size	_ZL14vidframebuffer, 8
_ZL14vidframebuffer:
	.zero	8
	.type	_ZL13vidcurrbuffer, @object
	.size	_ZL13vidcurrbuffer, 4
_ZL13vidcurrbuffer:
	.zero	4
	.type	_ZL8vidrmode, @object
	.size	_ZL8vidrmode, 4
_ZL8vidrmode:
	.zero	4
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 3 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 4 "c:/utils/devkitPro/libogc/include/ogc/gx_struct.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4b4
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x4
	.4byte	.LASF62
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2a
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x35
	.4byte	0x50
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x36
	.4byte	0x62
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.4byte	0x74
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x50
	.4byte	0x86
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
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
	.string	"u8"
	.byte	0x3
	.byte	0x11
	.4byte	0x33
	.uleb128 0x5
	.string	"u16"
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x5
	.string	"u32"
	.byte	0x3
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x5
	.string	"s8"
	.byte	0x3
	.byte	0x16
	.4byte	0x21
	.uleb128 0x5
	.string	"s16"
	.byte	0x3
	.byte	0x17
	.4byte	0x45
	.uleb128 0x5
	.string	"s32"
	.byte	0x3
	.byte	0x18
	.4byte	0x69
	.uleb128 0x5
	.string	"vu8"
	.byte	0x3
	.byte	0x1b
	.4byte	0xe6
	.uleb128 0x6
	.4byte	0x9b
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1c
	.4byte	0xf6
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x1d
	.4byte	0x106
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x5
	.string	"vs8"
	.byte	0x3
	.byte	0x20
	.4byte	0x116
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x126
	.uleb128 0x6
	.4byte	0xc5
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x22
	.4byte	0x136
	.uleb128 0x6
	.4byte	0xd0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2e
	.4byte	0x154
	.uleb128 0x6
	.4byte	0x13b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x3c
	.byte	0x4
	.byte	0x3a
	.4byte	0x22b
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3b
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3c
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3d
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x3e
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0x3f
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x40
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x41
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x42
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x43
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x44
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"aa"
	.byte	0x4
	.byte	0x45
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0x46
	.4byte	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x47
	.4byte	0x241
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0xb
	.4byte	0x3e
	.4byte	0x241
	.uleb128 0xc
	.4byte	0x86
	.byte	0xb
	.uleb128 0xc
	.4byte	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x3e
	.4byte	0x251
	.uleb128 0xc
	.4byte	0x86
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x4
	.byte	0x48
	.4byte	0x169
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF35
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x4
	.byte	0x5
	.2byte	0x490
	.4byte	0x2c3
	.uleb128 0xe
	.string	"U8"
	.byte	0x5
	.2byte	0x492
	.4byte	0xdb
	.uleb128 0xe
	.string	"S8"
	.byte	0x5
	.2byte	0x493
	.4byte	0x10b
	.uleb128 0xe
	.string	"U16"
	.byte	0x5
	.2byte	0x494
	.4byte	0xeb
	.uleb128 0xe
	.string	"S16"
	.byte	0x5
	.2byte	0x495
	.4byte	0x11b
	.uleb128 0xe
	.string	"U32"
	.byte	0x5
	.2byte	0x496
	.4byte	0xfb
	.uleb128 0xe
	.string	"S32"
	.byte	0x5
	.2byte	0x497
	.4byte	0x12b
	.uleb128 0xe
	.string	"F32"
	.byte	0x5
	.2byte	0x498
	.4byte	0x149
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x499
	.4byte	0x263
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x4
	.byte	0x5
	.2byte	0x49e
	.4byte	0x311
	.uleb128 0x11
	.string	"r"
	.byte	0x5
	.2byte	0x49f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"g"
	.byte	0x5
	.2byte	0x4a0
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"b"
	.byte	0x5
	.2byte	0x4a1
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"a"
	.byte	0x5
	.2byte	0x4a2
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x4a3
	.4byte	0x2cf
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF40
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.byte	0x1f
	.4byte	.LASF65
	.4byte	0x162
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2c
	.4byte	.LASF45
	.4byte	.LFB62
	.4byte	.LFE62
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF49
	.byte	0x1
	.byte	0x30
	.4byte	.LASF51
	.4byte	.LFB63
	.4byte	.LFE63
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x39a
	.uleb128 0x15
	.string	"red"
	.byte	0x1
	.byte	0x30
	.4byte	0x39a
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x1
	.byte	0x30
	.4byte	0x39a
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x1
	.byte	0x30
	.4byte	0x39a
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.4byte	0x62
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0x34
	.4byte	.LASF46
	.4byte	.LFB64
	.4byte	.LFE64
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.byte	0x39
	.4byte	.LASF48
	.4byte	.LFB65
	.4byte	.LFE65
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0x92
	.4byte	.LASF52
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST1
	.4byte	0x3fa
	.uleb128 0x19
	.4byte	.LASF53
	.byte	0x1
	.byte	0x92
	.4byte	0x162
	.4byte	.LLST2
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0x42
	.4byte	.LASF55
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST3
	.4byte	0x455
	.uleb128 0x1a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1b
	.4byte	.LASF56
	.byte	0x1
	.byte	0x43
	.4byte	0x160
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.byte	0x6b
	.4byte	0x311
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LASF66
	.byte	0x1
	.byte	0x70
	.4byte	0x13b
	.uleb128 0x1b
	.4byte	.LASF25
	.byte	0x1
	.byte	0x71
	.4byte	0x74
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x548
	.4byte	0x463
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x468
	.uleb128 0x17
	.byte	0x4
	.4byte	0x2c3
	.uleb128 0xb
	.4byte	0x160
	.4byte	0x47e
	.uleb128 0xc
	.4byte	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3e
	.4byte	0x46e
	.byte	0x5
	.byte	0x3
	.4byte	_ZL14vidframebuffer
	.uleb128 0x1f
	.4byte	.LASF59
	.byte	0x1
	.byte	0x3f
	.4byte	0x4a0
	.byte	0x5
	.byte	0x3
	.4byte	_ZL8vidrmode
	.uleb128 0x17
	.byte	0x4
	.4byte	0x251
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.byte	0x40
	.4byte	0x74
	.byte	0x5
	.byte	0x3
	.4byte	_ZL13vidcurrbuffer
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
	.uleb128 0x16
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
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.4byte	.LFB61-.Ltext0
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
	.4byte	.LFE61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB67-.Ltext0
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
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6c
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
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF67:
	.string	"wgPipe"
.LASF50:
	.string	"Vid_SwapBuffers"
.LASF36:
	.string	"WGPipe"
.LASF63:
	.string	"_wgpipe"
.LASF45:
	.string	"_Z14GLimp_Shutdownv"
.LASF0:
	.string	"int8_t"
.LASF58:
	.string	"vidframebuffer"
.LASF5:
	.string	"short int"
.LASF43:
	.string	"GLimp_Shutdown"
.LASF61:
	.string	"GNU C++ 4.6.3"
.LASF29:
	.string	"viHeight"
.LASF42:
	.string	"blue"
.LASF1:
	.string	"uint8_t"
.LASF21:
	.string	"bool"
.LASF34:
	.string	"GXRModeObj"
.LASF51:
	.string	"_Z14GLimp_SetGammaPtS_S_"
.LASF17:
	.string	"float"
.LASF62:
	.string	"d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_vid.cpp"
.LASF11:
	.string	"long long int"
.LASF28:
	.string	"viWidth"
.LASF20:
	.string	"char"
.LASF40:
	.string	"long int"
.LASF57:
	.string	"background"
.LASF26:
	.string	"viXOrigin"
.LASF48:
	.string	"_Z21GLimp_ActivateContextv"
.LASF53:
	.string	"clear"
.LASF41:
	.string	"green"
.LASF49:
	.string	"GLimp_SetGamma"
.LASF56:
	.string	"gpfifo"
.LASF60:
	.string	"vidcurrbuffer"
.LASF66:
	.string	"yscale"
.LASF3:
	.string	"unsigned char"
.LASF31:
	.string	"field_rendering"
.LASF30:
	.string	"xfbMode"
.LASF55:
	.string	"_Z8Vid_Initv"
.LASF13:
	.string	"vu16"
.LASF54:
	.string	"Vid_Init"
.LASF2:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF44:
	.string	"GLimp_DeactivateContext"
.LASF6:
	.string	"uint16_t"
.LASF65:
	.string	"_Z10GLimp_Initv"
.LASF25:
	.string	"xfbHeight"
.LASF32:
	.string	"sample_pattern"
.LASF7:
	.string	"short unsigned int"
.LASF33:
	.string	"vfilter"
.LASF8:
	.string	"int32_t"
.LASF4:
	.string	"int16_t"
.LASF47:
	.string	"GLimp_ActivateContext"
.LASF23:
	.string	"fbWidth"
.LASF37:
	.string	"_gx_rmodeobj"
.LASF15:
	.string	"vs16"
.LASF35:
	.string	"long unsigned int"
.LASF19:
	.string	"vf32"
.LASF39:
	.string	"GXColor"
.LASF16:
	.string	"vs32"
.LASF14:
	.string	"vu32"
.LASF46:
	.string	"_Z23GLimp_DeactivateContextv"
.LASF18:
	.string	"double"
.LASF24:
	.string	"efbHeight"
.LASF27:
	.string	"viYOrigin"
.LASF52:
	.string	"_Z15Vid_SwapBuffersb"
.LASF64:
	.string	"GLimp_Init"
.LASF38:
	.string	"_gx_color"
.LASF22:
	.string	"viTVMode"
.LASF59:
	.string	"vidrmode"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
