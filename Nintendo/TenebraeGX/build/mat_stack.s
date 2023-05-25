	.file	"mat_stack.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl DestroyStack
	.type	DestroyStack, @function
DestroyStack:
.LFB68:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/mat_stack.c"
	.loc 1 41 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 42 0
	lwz 3,0(3)
.LVL1:
	cmpwi 7,3,0
	beq- 7,.L2
	.cfi_offset 65, 4
	.loc 1 44 0
	bl free
.L2:
	.loc 1 46 0
	li 0,0
	stw 0,0(31)
	.loc 1 47 0
	stw 0,8(31)
	.loc 1 48 0
	stw 0,12(31)
	.loc 1 49 0
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
.LFE68:
	.size	DestroyStack, .-DestroyStack
	.align 2
	.globl GrowStack
	.type	GrowStack, @function
GrowStack:
.LFB69:
	.loc 1 52 0
	.cfi_startproc
.LVL3:
	mflr 0
	stwu 1,-24(1)
.LCFI2:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	stw 0,28(1)
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.loc 1 53 0
	lwz 28,8(3)
	.loc 1 52 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 53 0
	cmplw 7,28,4
	.loc 1 52 0
	stw 29,12(1)
	.loc 1 53 0
	blt- 7,.L8
	.cfi_offset 29, -12
.LVL4:
.L4:
	.loc 1 75 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL5:
	lwz 31,20(1)
.LVL6:
	addi 1,1,24
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL7:
.L8:
.LCFI4:
	.cfi_restore_state
	.loc 1 58 0
	lwz 4,4(3)
.LVL8:
	li 3,32
.LVL9:
	.loc 1 56 0
	lwz 29,0(31)
.LVL10:
	.loc 1 58 0
	mullw 4,30,4
	bl memalign
.LVL11:
	.loc 1 60 0
	cmpwi 7,3,0
	.loc 1 58 0
	stw 3,0(31)
	.loc 1 60 0
	beq- 7,.L9
	.loc 1 67 0
	cmpwi 7,29,0
	beq- 7,.L7
	.loc 1 69 0
	lwz 5,4(31)
	mr 4,29
	mullw 5,28,5
	bl memcpy
	.loc 1 71 0
	mr 3,29
	bl free
.L7:
	.loc 1 75 0
	lwz 0,28(1)
	.loc 1 74 0
	stw 30,8(31)
	.loc 1 75 0
	mtlr 0
	lwz 28,8(1)
.LVL12:
	lwz 29,12(1)
.LVL13:
	lwz 30,16(1)
.LVL14:
	lwz 31,20(1)
.LVL15:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI5:
	.cfi_def_cfa_offset 0
	blr
.LVL16:
.L9:
.LCFI6:
	.cfi_restore_state
	.loc 1 62 0
	lis 4,.LC0@ha
	li 3,1285
	la 4,.LC0@l(4)
	li 5,62
	bl _glSetErrorEx
	.loc 1 63 0
	stw 29,0(31)
	.loc 1 64 0
	b .L4
	.cfi_endproc
.LFE69:
	.size	GrowStack, .-GrowStack
	.align 2
	.globl InitStack
	.type	InitStack, @function
InitStack:
.LFB67:
	.loc 1 30 0
	.cfi_startproc
.LVL17:
	.loc 1 31 0
	li 0,0
	.loc 1 34 0
	stw 5,4(3)
	.loc 1 31 0
	stw 0,0(3)
	.loc 1 38 0
	.loc 1 32 0
	stw 0,8(3)
	.loc 1 33 0
	stw 0,12(3)
	.loc 1 36 0
	b GrowStack
.LVL18:
.LVL19:
.LVL20:
	.cfi_endproc
.LFE67:
	.size	InitStack, .-InitStack
	.align 2
	.globl InitStackPrjMtx
	.type	InitStackPrjMtx, @function
InitStackPrjMtx:
.LFB66:
	.loc 1 25 0
	.cfi_startproc
.LVL21:
	.loc 1 26 0
	li 5,76
	.loc 1 27 0
	.loc 1 26 0
	b InitStack
.LVL22:
.LVL23:
	.cfi_endproc
.LFE66:
	.size	InitStackPrjMtx, .-InitStackPrjMtx
	.align 2
	.globl InitStackMtx44
	.type	InitStackMtx44, @function
InitStackMtx44:
.LFB65:
	.loc 1 20 0
	.cfi_startproc
.LVL24:
	.loc 1 21 0
	li 5,64
	.loc 1 22 0
	.loc 1 21 0
	b InitStack
.LVL25:
.LVL26:
	.cfi_endproc
.LFE65:
	.size	InitStackMtx44, .-InitStackMtx44
	.align 2
	.globl InitStackMtx
	.type	InitStackMtx, @function
InitStackMtx:
.LFB64:
	.loc 1 15 0
	.cfi_startproc
.LVL27:
	.loc 1 16 0
	li 5,48
	.loc 1 17 0
	.loc 1 16 0
	b InitStack
.LVL28:
.LVL29:
	.cfi_endproc
.LFE64:
	.size	InitStackMtx, .-InitStackMtx
	.align 2
	.globl Pop
	.type	Pop, @function
Pop:
.LFB70:
	.loc 1 78 0
	.cfi_startproc
.LVL30:
	mflr 0
	stwu 1,-8(1)
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 79 0
	lwz 9,12(3)
	cmpwi 7,9,0
	beq- 7,.L17
	.cfi_offset 65, 4
	.loc 1 86 0
	lwz 0,12(1)
	.loc 1 85 0
	addi 9,9,-1
	stw 9,12(3)
	.loc 1 86 0
	mtlr 0
	addi 1,1,8
	.cfi_remember_state
.LCFI8:
	.cfi_def_cfa_offset 0
	blr
.L17:
.LCFI9:
	.cfi_restore_state
	.loc 1 82 0
	lis 4,.LC0@ha
	li 3,1284
.LVL31:
	la 4,.LC0@l(4)
	li 5,82
	bl _glSetErrorEx
	.loc 1 86 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI10:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE70:
	.size	Pop, .-Pop
	.align 2
	.globl Top
	.type	Top, @function
Top:
.LFB72:
	.loc 1 105 0
	.cfi_startproc
.LVL32:
	mflr 0
	stwu 1,-16(1)
.LCFI11:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 106 0
	lwz 0,0(3)
	.cfi_offset 65, 4
	.loc 1 107 0
	li 3,0
.LVL33:
	.loc 1 106 0
	cmpwi 7,0,0
	beq- 7,.L19
	.loc 1 114 0
	lwz 11,8(31)
	lwz 9,12(31)
	addi 11,11,-1
	cmplw 7,9,11
	bgt- 7,.L22
.L20:
.LVL34:
	.loc 1 122 0
	lwz 3,4(31)
	mullw 9,9,3
	add 3,0,9
.LVL35:
.L19:
	.loc 1 123 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL36:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI12:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL37:
.L22:
.LCFI13:
	.cfi_restore_state
	.loc 1 116 0
	stw 11,12(31)
	.loc 1 117 0
	lis 4,.LC0@ha
	li 3,1283
	la 4,.LC0@l(4)
	li 5,117
	bl _glSetErrorEx
	lwz 0,0(31)
	lwz 9,12(31)
	b .L20
	.cfi_endproc
.LFE72:
	.size	Top, .-Top
	.align 2
	.globl Push
	.type	Push, @function
Push:
.LFB71:
	.loc 1 89 0
	.cfi_startproc
.LVL38:
	mflr 0
	stwu 1,-16(1)
.LCFI14:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
	.loc 1 90 0
	lwz 11,8(3)
	lwz 9,12(3)
	addi 0,11,-1
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	cmplw 7,9,0
	bge- 7,.L26
	.loc 1 97 0
	bl Top
.LVL39:
	.loc 1 98 0
	lwz 9,12(31)
	.loc 1 97 0
	mr 30,3
.LVL40:
	.loc 1 100 0
	mr 3,31
.LVL41:
	.loc 1 98 0
	addi 0,9,1
	stw 0,12(31)
	.loc 1 100 0
	bl Top
	lwz 5,4(31)
	mr 4,30
	bl memcpy
	.loc 1 102 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL42:
	mtlr 0
	lwz 31,12(1)
.LVL43:
	addi 1,1,16
	.cfi_remember_state
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL44:
.L26:
.LCFI16:
	.cfi_restore_state
	.loc 1 92 0
	stw 0,12(3)
	.loc 1 93 0
	lis 4,.LC0@ha
	li 3,1283
.LVL45:
	la 4,.LC0@l(4)
	li 5,93
	bl _glSetErrorEx
	.loc 1 102 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL46:
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI17:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE71:
	.size	Push, .-Push
	.align 2
	.globl TopMtx
	.type	TopMtx, @function
TopMtx:
.LFB73:
	.loc 1 126 0
	.cfi_startproc
.LVL47:
	.loc 1 127 0
	lwz 0,4(3)
	cmpwi 7,0,48
	bne- 7,.L28
	.loc 1 133 0
	.loc 1 132 0
	b Top
.LVL48:
.L28:
	.loc 1 133 0
	li 3,0
.LVL49:
	blr
	.cfi_endproc
.LFE73:
	.size	TopMtx, .-TopMtx
	.align 2
	.globl TopMtx44
	.type	TopMtx44, @function
TopMtx44:
.LFB74:
	.loc 1 136 0
	.cfi_startproc
.LVL50:
	mflr 0
	stwu 1,-8(1)
.LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 137 0
	lwz 0,4(3)
	.cfi_offset 65, 4
	cmpwi 7,0,64
	beq- 7,.L33
	.loc 1 141 0
	cmpwi 7,0,76
	.loc 1 148 0
	li 0,0
	.loc 1 141 0
	bne- 7,.L31
.LBB2:
	.loc 1 143 0
	bl Top
.LVL51:
	mr 0,3
.L31:
.LBE2:
	.loc 1 150 0
	mr 3,0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI19:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL52:
.L33:
.LCFI20:
	.cfi_restore_state
	lwz 0,12(1)
	addi 1,1,8
.LCFI21:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 139 0
	b Top
.LVL53:
	.cfi_endproc
.LFE74:
	.size	TopMtx44, .-TopMtx44
	.align 2
	.globl StackSize
	.type	StackSize, @function
StackSize:
.LFB75:
	.loc 1 153 0
	.cfi_startproc
.LVL54:
	.loc 1 154 0
	lwz 3,12(3)
.LVL55:
	.loc 1 155 0
	addi 3,3,1
	blr
	.cfi_endproc
.LFE75:
	.size	StackSize, .-StackSize
	.align 2
	.globl MaxStackSize
	.type	MaxStackSize, @function
MaxStackSize:
.LFB76:
	.loc 1 157 0
	.cfi_startproc
.LVL56:
	.loc 1 159 0
	lwz 3,8(3)
.LVL57:
	blr
	.cfi_endproc
.LFE76:
	.size	MaxStackSize, .-MaxStackSize
	.align 2
	.globl TopPrjMtx
	.type	TopPrjMtx, @function
TopPrjMtx:
.LFB77:
	.loc 1 162 0
	.cfi_startproc
.LVL58:
	.loc 1 163 0
	lwz 0,4(3)
	cmpwi 7,0,76
	bne- 7,.L37
	.loc 1 169 0
	.loc 1 168 0
	b Top
.LVL59:
.L37:
	.loc 1 169 0
	li 3,0
.LVL60:
	blr
	.cfi_endproc
.LFE77:
	.size	TopPrjMtx, .-TopPrjMtx
	.comm	call_offset,4,4
	.comm	read_mode,4,4
	.comm	glTexEnvs,864,4
	.comm	fog_color,4,1
	.comm	fog_density,4,4
	.comm	fog_endz,4,4
	.comm	fog_startz,4,4
	.comm	fog_mode,1,1
	.comm	fog_enable,1,1
	.comm	Trans,32,4
	.comm	_clearcolor,4,1
	.comm	copy_material,4,4
	.comm	copy_mat_enabled,1,1
	.comm	color_write_mask,4,4
	.comm	unpack,20,4
	.comm	pack,20,4
	.comm	point_size,4,4
	.comm	line_width,4,4
	.comm	normFar,4,4
	.comm	normNear,4,4
	.comm	viewPort,16,4
	.comm	scissorInfo,16,4
	.comm	scissor_test,1,1
	.comm	fb_max_width,4,4
	.comm	fb_max_height,4,4
	.comm	cur_state,4,4
	.comm	cull_mode,1,1
	.comm	blend_op,1,1
	.comm	blend_dst,1,1
	.comm	blend_src,1,1
	.comm	blend_type,1,1
	.comm	lighting,1,1
	.comm	gxwinding,4,4
	.comm	gxcullfaceanabled,1,1
	.comm	curmat,68,4
	.comm	globAmbient,16,4
	.comm	lights,1312,4
	.comm	cur_mode,4,4
	.comm	curmtx,4,4
	.comm	texture_stack,128,4
	.comm	projection_stack,16,4
	.comm	model_stack,16,4
	.comm	_cleardepth,4,4
	.comm	depthfunction,4,4
	.comm	depthupdate,1,1
	.comm	depthtestenabled,1,1
	.comm	cur_tex_client,4,4
	.comm	cur_tex,4,4
	.comm	_GLtype,4,4
	.comm	_type,4,4
	.comm	vert_i,4,4
	.comm	_colorelements,16000,32
	.comm	_texcoordelements,64000,32
	.comm	_vertexelements,12000,32
	.comm	_normalelements,12000,32
	.comm	color,20,4
	.comm	tex,160,4
	.comm	vert,20,4
	.comm	norm,20,4
	.comm	_temptexcoordelement,64,4
	.comm	_tempnormalelement,12,4
	.comm	_tempcolorelement,16,4
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/mat_stack.c"
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 4 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/glint.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1003
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0x1
	.4byte	.LASF178
	.4byte	.LASF179
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0xd4
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
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2a
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x50
	.4byte	0x30
	.uleb128 0x6
	.string	"u8"
	.byte	0x4
	.byte	0x11
	.4byte	0x94
	.uleb128 0x6
	.string	"u32"
	.byte	0x4
	.byte	0x13
	.4byte	0x9f
	.uleb128 0x6
	.string	"f32"
	.byte	0x4
	.byte	0x2b
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe1
	.uleb128 0x9
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0xc
	.byte	0x5
	.byte	0x5e
	.4byte	0x113
	.uleb128 0xb
	.string	"x"
	.byte	0x5
	.byte	0x5f
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"y"
	.byte	0x5
	.byte	0x5f
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"z"
	.byte	0x5
	.byte	0x5f
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x60
	.4byte	0xe2
	.uleb128 0x6
	.string	"Mtx"
	.byte	0x5
	.byte	0x73
	.4byte	0x129
	.uleb128 0xc
	.4byte	0xbf
	.4byte	0x13f
	.uleb128 0xd
	.4byte	0x30
	.byte	0x2
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x89
	.4byte	0x14a
	.uleb128 0xc
	.4byte	0xbf
	.4byte	0x160
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF180
	.byte	0x4
	.byte	0x6
	.2byte	0x490
	.4byte	0x1c0
	.uleb128 0xf
	.string	"U8"
	.byte	0x6
	.2byte	0x492
	.4byte	0x1c0
	.uleb128 0xf
	.string	"S8"
	.byte	0x6
	.2byte	0x493
	.4byte	0x1c5
	.uleb128 0xf
	.string	"U16"
	.byte	0x6
	.2byte	0x494
	.4byte	0x1ca
	.uleb128 0xf
	.string	"S16"
	.byte	0x6
	.2byte	0x495
	.4byte	0x1cf
	.uleb128 0xf
	.string	"U32"
	.byte	0x6
	.2byte	0x496
	.4byte	0xcf
	.uleb128 0xf
	.string	"S32"
	.byte	0x6
	.2byte	0x497
	.4byte	0x1d4
	.uleb128 0xf
	.string	"F32"
	.byte	0x6
	.2byte	0x498
	.4byte	0xca
	.byte	0
	.uleb128 0x7
	.4byte	0x37
	.uleb128 0x7
	.4byte	0x47
	.uleb128 0x7
	.4byte	0x3e
	.uleb128 0x7
	.4byte	0x4e
	.uleb128 0x7
	.4byte	0x55
	.uleb128 0x10
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x499
	.4byte	0x160
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6
	.2byte	0x49e
	.4byte	0x227
	.uleb128 0x12
	.string	"r"
	.byte	0x6
	.2byte	0x49f
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"g"
	.byte	0x6
	.2byte	0x4a0
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"b"
	.byte	0x6
	.2byte	0x4a1
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"a"
	.byte	0x6
	.2byte	0x4a2
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x4a3
	.4byte	0x1e5
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x40
	.byte	0x6
	.2byte	0x4f1
	.4byte	0x250
	.uleb128 0x12
	.string	"val"
	.byte	0x6
	.2byte	0x4f2
	.4byte	0x250
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	0xb4
	.4byte	0x260
	.uleb128 0xd
	.4byte	0x30
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x4f3
	.4byte	0x233
	.uleb128 0x8
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x7
	.byte	0x93
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0x94
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0x99
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x7
	.byte	0x9d
	.4byte	0x55
	.uleb128 0x13
	.byte	0x10
	.byte	0x8
	.byte	0x15
	.4byte	0x2ca
	.uleb128 0xb
	.string	"v"
	.byte	0x8
	.byte	0x17
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"w"
	.byte	0x8
	.byte	0x18
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x8
	.byte	0x19
	.4byte	0x2a9
	.uleb128 0x13
	.byte	0x8
	.byte	0x8
	.byte	0x1b
	.4byte	0x2f6
	.uleb128 0xb
	.string	"s"
	.byte	0x8
	.byte	0x1d
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"t"
	.byte	0x8
	.byte	0x1e
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x1f
	.4byte	0x2d5
	.uleb128 0x13
	.byte	0x10
	.byte	0x8
	.byte	0x21
	.4byte	0x33a
	.uleb128 0xb
	.string	"r"
	.byte	0x8
	.byte	0x23
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"g"
	.byte	0x8
	.byte	0x24
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"b"
	.byte	0x8
	.byte	0x25
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"a"
	.byte	0x8
	.byte	0x26
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x8
	.byte	0x27
	.4byte	0x301
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x14
	.byte	0x8
	.byte	0x42
	.4byte	0x396
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x8
	.byte	0x44
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"p"
	.byte	0x8
	.byte	0x45
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x8
	.byte	0x46
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x8
	.byte	0x47
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x8
	.byte	0x48
	.4byte	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x8
	.byte	0x49
	.4byte	0x345
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4c
	.byte	0x8
	.byte	0x70
	.4byte	0x3e6
	.uleb128 0xb
	.string	"mat"
	.byte	0x8
	.byte	0x72
	.4byte	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x8
	.byte	0x73
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x8
	.byte	0x74
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x8
	.byte	0x75
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x8
	.byte	0x76
	.4byte	0x3a1
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x436
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x9
	.byte	0xe
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x9
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x9
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x9
	.byte	0x12
	.4byte	0x3f1
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0xa4
	.byte	0x8
	.byte	0x83
	.4byte	0x4fc
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x8
	.byte	0x85
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"obj"
	.byte	0x8
	.byte	0x87
	.4byte	0x260
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"pos"
	.byte	0x8
	.byte	0x89
	.4byte	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x8
	.byte	0x8b
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x8
	.byte	0x8d
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x8
	.byte	0x8e
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x8
	.byte	0x8f
	.4byte	0x33a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x8
	.byte	0x91
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x8
	.byte	0x92
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x8
	.byte	0x93
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x8
	.byte	0x94
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x8
	.byte	0x95
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x8
	.byte	0x96
	.4byte	0x441
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x44
	.byte	0x8
	.byte	0xa0
	.4byte	0x55a
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x8
	.byte	0xa2
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x8
	.byte	0xa3
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x8
	.byte	0xa4
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x8
	.byte	0xa5
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x8
	.byte	0xa6
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x8
	.byte	0xa7
	.4byte	0x507
	.uleb128 0x15
	.4byte	.LASF181
	.byte	0x4
	.byte	0x8
	.byte	0xbf
	.4byte	0x584
	.uleb128 0x16
	.4byte	.LASF64
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF65
	.sleb128 1
	.uleb128 0x16
	.4byte	.LASF66
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x8
	.byte	0xc4
	.4byte	0x565
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x10
	.byte	0x8
	.byte	0xe8
	.4byte	0x5d0
	.uleb128 0xb
	.string	"x"
	.byte	0x8
	.byte	0xea
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"y"
	.byte	0x8
	.byte	0xeb
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x8
	.byte	0xec
	.4byte	0x29e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x8
	.byte	0xed
	.4byte	0x29e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x8
	.byte	0xee
	.4byte	0x58f
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x14
	.byte	0x8
	.byte	0xfb
	.4byte	0x63f
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x8
	.byte	0xfd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x8
	.byte	0xfe
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x8
	.byte	0xff
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x100
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x101
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x102
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x103
	.4byte	0x5db
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x8
	.byte	0x8
	.2byte	0x117
	.4byte	0x677
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x119
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x11a
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x11b
	.4byte	0x64b
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x6c
	.byte	0x8
	.2byte	0x127
	.4byte	0x7db
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x8
	.2byte	0x129
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x12b
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x8
	.2byte	0x12c
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x12d
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x12e
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x12f
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x130
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x131
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x132
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x133
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x134
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x17
	.4byte	.LASF40
	.byte	0x8
	.2byte	0x136
	.4byte	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x138
	.4byte	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x139
	.4byte	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x13b
	.4byte	0x7db
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x13c
	.4byte	0x7db
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x13d
	.4byte	0x7db
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x13e
	.4byte	0x7db
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"tex"
	.byte	0x8
	.2byte	0x140
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x142
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x144
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x145
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0
	.uleb128 0xc
	.4byte	0x272
	.4byte	0x7eb
	.uleb128 0xd
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x146
	.4byte	0x683
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF104
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST0
	.4byte	0x81e
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x28
	.4byte	0x81e
	.4byte	.LLST1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x436
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF105
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST2
	.4byte	0x867
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x33
	.4byte	0x81e
	.4byte	.LLST3
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.byte	0x33
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x1a
	.string	"old"
	.byte	0x1
	.byte	0x38
	.4byte	0x436
	.4byte	.LLST5
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x8a9
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x1d
	.4byte	0x81e
	.4byte	.LLST6
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LASF46
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.4byte	.LLST8
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF107
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x8de
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x18
	.4byte	0x81e
	.4byte	.LLST9
	.uleb128 0x19
	.string	"num"
	.byte	0x1
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST10
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF108
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x913
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x13
	.4byte	0x81e
	.4byte	.LLST11
	.uleb128 0x19
	.string	"num"
	.byte	0x1
	.byte	0x13
	.4byte	0x25
	.4byte	.LLST12
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF109
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x948
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0xe
	.4byte	0x81e
	.4byte	.LLST13
	.uleb128 0x19
	.string	"num"
	.byte	0x1
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST14
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Pop"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST15
	.4byte	0x96f
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x4d
	.4byte	0x81e
	.4byte	.LLST16
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Top"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.4byte	0x45
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST17
	.4byte	0x9a9
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x68
	.4byte	0x81e
	.4byte	.LLST18
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x1
	.byte	0x78
	.4byte	0x26c
	.4byte	.LLST19
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF110
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST20
	.4byte	0x9de
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x58
	.4byte	0x81e
	.4byte	.LLST21
	.uleb128 0x1a
	.string	"p1"
	.byte	0x1
	.byte	0x61
	.4byte	0x45
	.4byte	.LLST22
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF111
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.4byte	0xa08
	.4byte	.LFB73
	.4byte	.LFE73
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa08
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x7d
	.4byte	0x81e
	.4byte	.LLST23
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11e
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF112
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0xa4e
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST24
	.4byte	0xa4e
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x87
	.4byte	0x81e
	.4byte	.LLST25
	.uleb128 0x21
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x22
	.string	"ptr"
	.byte	0x1
	.byte	0x8f
	.4byte	0xa54
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x13f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e6
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF113
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB75
	.4byte	.LFE75
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa84
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x98
	.4byte	0x81e
	.4byte	.LLST26
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF114
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB76
	.4byte	.LFE76
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xaae
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x9c
	.4byte	0x81e
	.4byte	.LLST27
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF115
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.4byte	0xa54
	.4byte	.LFB77
	.4byte	.LFE77
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xad8
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0xa1
	.4byte	0x81e
	.4byte	.LLST28
	.byte	0
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x548
	.4byte	0xae6
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	0xaeb
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1d9
	.uleb128 0x25
	.4byte	.LASF117
	.byte	0x8
	.byte	0x3d
	.4byte	0x33a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x25
	.4byte	.LASF118
	.byte	0x8
	.byte	0x3e
	.4byte	0x113
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xc
	.4byte	0x2f6
	.4byte	0xb25
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x25
	.4byte	.LASF119
	.byte	0x8
	.byte	0x3f
	.4byte	0xb15
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x25
	.4byte	.LASF120
	.byte	0x8
	.byte	0x4b
	.4byte	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x25
	.4byte	.LASF121
	.byte	0x8
	.byte	0x4c
	.4byte	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xc
	.4byte	0x396
	.4byte	0xb6b
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x26
	.string	"tex"
	.byte	0x8
	.byte	0x4d
	.4byte	0xb5b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x25
	.4byte	.LASF100
	.byte	0x8
	.byte	0x4e
	.4byte	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xc
	.4byte	0x113
	.4byte	0xba0
	.uleb128 0x27
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x25
	.4byte	.LASF122
	.byte	0x8
	.byte	0x50
	.4byte	0xb8f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x25
	.4byte	.LASF123
	.byte	0x8
	.byte	0x51
	.4byte	0xb8f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xc
	.4byte	0x2f6
	.4byte	0xbdb
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.uleb128 0x27
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x25
	.4byte	.LASF124
	.byte	0x8
	.byte	0x52
	.4byte	0xbc4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xc
	.4byte	0x33a
	.4byte	0xbfe
	.uleb128 0x27
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x25
	.4byte	.LASF125
	.byte	0x8
	.byte	0x53
	.4byte	0xbed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x25
	.4byte	.LASF126
	.byte	0x8
	.byte	0x5d
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x25
	.4byte	.LASF127
	.byte	0x8
	.byte	0x5e
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x25
	.4byte	.LASF128
	.byte	0x8
	.byte	0x5f
	.4byte	0x272
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x25
	.4byte	.LASF129
	.byte	0x8
	.byte	0x61
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x25
	.4byte	.LASF130
	.byte	0x8
	.byte	0x62
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x25
	.4byte	.LASF131
	.byte	0x8
	.byte	0x6b
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x25
	.4byte	.LASF132
	.byte	0x8
	.byte	0x6c
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x25
	.4byte	.LASF133
	.byte	0x8
	.byte	0x6d
	.4byte	0x272
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x25
	.4byte	.LASF134
	.byte	0x8
	.byte	0x6e
	.4byte	0x86
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x25
	.4byte	.LASF135
	.byte	0x8
	.byte	0x7a
	.4byte	0x436
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x25
	.4byte	.LASF136
	.byte	0x8
	.byte	0x7b
	.4byte	0x436
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xc
	.4byte	0x436
	.4byte	0xce6
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x25
	.4byte	.LASF137
	.byte	0x8
	.byte	0x7c
	.4byte	0xcd6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x25
	.4byte	.LASF138
	.byte	0x8
	.byte	0x7d
	.4byte	0x81e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x25
	.4byte	.LASF139
	.byte	0x8
	.byte	0x7e
	.4byte	0x272
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xc
	.4byte	0x4fc
	.4byte	0xd2c
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x25
	.4byte	.LASF140
	.byte	0x8
	.byte	0x99
	.4byte	0xd1c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x25
	.4byte	.LASF141
	.byte	0x8
	.byte	0x9c
	.4byte	0x33a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x25
	.4byte	.LASF142
	.byte	0x8
	.byte	0xa9
	.4byte	0x55a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x25
	.4byte	.LASF143
	.byte	0x8
	.byte	0xac
	.4byte	0xd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x25
	.4byte	.LASF144
	.byte	0x8
	.byte	0xad
	.4byte	0x272
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x25
	.4byte	.LASF145
	.byte	0x8
	.byte	0xb1
	.4byte	0xd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x25
	.4byte	.LASF146
	.byte	0x8
	.byte	0xb8
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x25
	.4byte	.LASF147
	.byte	0x8
	.byte	0xb9
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x25
	.4byte	.LASF148
	.byte	0x8
	.byte	0xba
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x25
	.4byte	.LASF149
	.byte	0x8
	.byte	0xbb
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x25
	.4byte	.LASF150
	.byte	0x8
	.byte	0xbd
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x25
	.4byte	.LASF151
	.byte	0x8
	.byte	0xc6
	.4byte	0x584
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x25
	.4byte	.LASF152
	.byte	0x8
	.byte	0xf0
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x25
	.4byte	.LASF153
	.byte	0x8
	.byte	0xf1
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x25
	.4byte	.LASF154
	.byte	0x8
	.byte	0xf2
	.4byte	0x27d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x25
	.4byte	.LASF155
	.byte	0x8
	.byte	0xf3
	.4byte	0x5d0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x25
	.4byte	.LASF156
	.byte	0x8
	.byte	0xf4
	.4byte	0x5d0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x25
	.4byte	.LASF157
	.byte	0x8
	.byte	0xf5
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x25
	.4byte	.LASF158
	.byte	0x8
	.byte	0xf6
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x25
	.4byte	.LASF159
	.byte	0x8
	.byte	0xf8
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x25
	.4byte	.LASF160
	.byte	0x8
	.byte	0xf9
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x28
	.4byte	.LASF161
	.byte	0x8
	.2byte	0x105
	.4byte	0x63f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x28
	.4byte	.LASF162
	.byte	0x8
	.2byte	0x106
	.4byte	0x63f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xc
	.4byte	0xd4
	.4byte	0xedc
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x28
	.4byte	.LASF163
	.byte	0x8
	.2byte	0x107
	.4byte	0xecc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x28
	.4byte	.LASF164
	.byte	0x8
	.2byte	0x10d
	.4byte	0xd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x28
	.4byte	.LASF165
	.byte	0x8
	.2byte	0x10e
	.4byte	0x272
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x28
	.4byte	.LASF166
	.byte	0x8
	.2byte	0x111
	.4byte	0x227
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xc
	.4byte	0x677
	.4byte	0xf38
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x28
	.4byte	.LASF167
	.byte	0x8
	.2byte	0x125
	.4byte	0xf28
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x28
	.4byte	.LASF168
	.byte	0x8
	.2byte	0x14a
	.4byte	0xd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x28
	.4byte	.LASF169
	.byte	0x8
	.2byte	0x14b
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x28
	.4byte	.LASF170
	.byte	0x8
	.2byte	0x14c
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x28
	.4byte	.LASF171
	.byte	0x8
	.2byte	0x14d
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x28
	.4byte	.LASF172
	.byte	0x8
	.2byte	0x14e
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x28
	.4byte	.LASF173
	.byte	0x8
	.2byte	0x14f
	.4byte	0x227
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xc
	.4byte	0x7eb
	.4byte	0xfcd
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x28
	.4byte	.LASF174
	.byte	0x8
	.2byte	0x151
	.4byte	0xfbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x28
	.4byte	.LASF175
	.byte	0x8
	.2byte	0x156
	.4byte	0x272
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x28
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x159
	.4byte	0x293
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB68-.Ltext0
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
	.4byte	.LFE68-.Ltext0
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
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI3-.Ltext0
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
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 8
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-1-.Ltext0
	.2byte	0xb
	.byte	0x8f
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL11-1-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0xa
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x5
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0xa
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL20-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB70-.Ltext0
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
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB72-.Ltext0
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
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-1-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
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
.LASF80:
	.string	"scale"
.LASF97:
	.string	"CargOp"
.LASF155:
	.string	"scissorInfo"
.LASF106:
	.string	"InitStack"
.LASF102:
	.string	"alpha_scale"
.LASF138:
	.string	"curmtx"
.LASF168:
	.string	"fog_enable"
.LASF162:
	.string	"unpack"
.LASF141:
	.string	"globAmbient"
.LASF85:
	.string	"max_filter"
.LASF37:
	.string	"type"
.LASF28:
	.string	"GLuint"
.LASF74:
	.string	"row_length"
.LASF41:
	.string	"nearZclip"
.LASF137:
	.string	"texture_stack"
.LASF157:
	.string	"normNear"
.LASF50:
	.string	"spotDir"
.LASF66:
	.string	"GL_STATE_NEWLIST"
.LASF175:
	.string	"read_mode"
.LASF64:
	.string	"GL_STATE_NONE"
.LASF131:
	.string	"depthtestenabled"
.LASF20:
	.string	"_vecf"
.LASF5:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF57:
	.string	"linear"
.LASF23:
	.string	"_gx_litobj"
.LASF36:
	.string	"size"
.LASF6:
	.string	"long long unsigned int"
.LASF133:
	.string	"depthfunction"
.LASF118:
	.string	"_tempnormalelement"
.LASF180:
	.string	"_wgpipe"
.LASF63:
	.string	"Material"
.LASF107:
	.string	"InitStackPrjMtx"
.LASF82:
	.string	"ColorTrans"
.LASF9:
	.string	"long int"
.LASF61:
	.string	"emissive"
.LASF30:
	.string	"VertexElement"
.LASF111:
	.string	"TopMtx"
.LASF134:
	.string	"_cleardepth"
.LASF149:
	.string	"blend_op"
.LASF123:
	.string	"_vertexelements"
.LASF34:
	.string	"enable"
.LASF170:
	.string	"fog_startz"
.LASF42:
	.string	"farZclip"
.LASF86:
	.string	"wrap_s"
.LASF87:
	.string	"wrap_t"
.LASF104:
	.string	"DestroyStack"
.LASF148:
	.string	"blend_dst"
.LASF29:
	.string	"GLsizei"
.LASF51:
	.string	"ambient"
.LASF58:
	.string	"quad_t"
.LASF136:
	.string	"projection_stack"
.LASF79:
	.string	"_trans"
.LASF105:
	.string	"GrowStack"
.LASF27:
	.string	"GLint"
.LASF13:
	.string	"size_t"
.LASF60:
	.string	"_mat"
.LASF114:
	.string	"MaxStackSize"
.LASF59:
	.string	"LightObj"
.LASF169:
	.string	"fog_mode"
.LASF18:
	.string	"Mtx44"
.LASF68:
	.string	"boxInfo"
.LASF0:
	.string	"unsigned int"
.LASF126:
	.string	"vert_i"
.LASF45:
	.string	"begin"
.LASF32:
	.string	"GXColorf"
.LASF7:
	.string	"long unsigned int"
.LASF48:
	.string	"_light"
.LASF88:
	.string	"minlod"
.LASF56:
	.string	"constant"
.LASF135:
	.string	"model_stack"
.LASF62:
	.string	"shininess"
.LASF147:
	.string	"blend_src"
.LASF92:
	.string	"edgelod"
.LASF69:
	.string	"width"
.LASF125:
	.string	"_colorelements"
.LASF132:
	.string	"depthupdate"
.LASF2:
	.string	"short unsigned int"
.LASF151:
	.string	"cur_state"
.LASF38:
	.string	"VertexArray"
.LASF67:
	.string	"glState"
.LASF65:
	.string	"GL_STATE_BEGIN"
.LASF171:
	.string	"fog_endz"
.LASF166:
	.string	"_clearcolor"
.LASF4:
	.string	"short int"
.LASF127:
	.string	"_type"
.LASF91:
	.string	"biasclamp"
.LASF100:
	.string	"color"
.LASF176:
	.string	"call_offset"
.LASF156:
	.string	"viewPort"
.LASF144:
	.string	"gxwinding"
.LASF163:
	.string	"color_write_mask"
.LASF181:
	.string	"_glState"
.LASF128:
	.string	"_GLtype"
.LASF26:
	.string	"GLboolean"
.LASF124:
	.string	"_texcoordelements"
.LASF120:
	.string	"norm"
.LASF76:
	.string	"skip_pixels"
.LASF47:
	.string	"Stack"
.LASF33:
	.string	"_array"
.LASF54:
	.string	"spotExponent"
.LASF103:
	.string	"glTexEnvSet"
.LASF178:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/mat_stack.c"
.LASF173:
	.string	"fog_color"
.LASF78:
	.string	"pixelStore"
.LASF159:
	.string	"line_width"
.LASF72:
	.string	"swap"
.LASF172:
	.string	"fog_density"
.LASF11:
	.string	"float"
.LASF179:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF165:
	.string	"copy_material"
.LASF109:
	.string	"InitStackMtx"
.LASF77:
	.string	"alignment"
.LASF24:
	.string	"GXLightObj"
.LASF19:
	.string	"WGPipe"
.LASF16:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF158:
	.string	"normFar"
.LASF145:
	.string	"lighting"
.LASF150:
	.string	"cull_mode"
.LASF116:
	.string	"wgPipe"
.LASF73:
	.string	"lsb_first"
.LASF46:
	.string	"elem_size"
.LASF153:
	.string	"fb_max_width"
.LASF81:
	.string	"bias"
.LASF89:
	.string	"maxlod"
.LASF90:
	.string	"lodbias"
.LASF154:
	.string	"scissor_test"
.LASF160:
	.string	"point_size"
.LASF98:
	.string	"Aarg"
.LASF115:
	.string	"TopPrjMtx"
.LASF10:
	.string	"double"
.LASF35:
	.string	"stride"
.LASF112:
	.string	"TopMtx44"
.LASF31:
	.string	"TexCoordElement"
.LASF21:
	.string	"_gx_color"
.LASF99:
	.string	"AargOp"
.LASF177:
	.string	"GNU C 4.6.3"
.LASF12:
	.string	"long double"
.LASF121:
	.string	"vert"
.LASF8:
	.string	"char"
.LASF96:
	.string	"Carg"
.LASF40:
	.string	"mode"
.LASF53:
	.string	"specular"
.LASF25:
	.string	"GLenum"
.LASF108:
	.string	"InitStackMtx44"
.LASF152:
	.string	"fb_max_height"
.LASF39:
	.string	"_prj_mat"
.LASF14:
	.string	"uint8_t"
.LASF93:
	.string	"maxaniso"
.LASF142:
	.string	"curmat"
.LASF117:
	.string	"_tempcolorelement"
.LASF49:
	.string	"enabled"
.LASF164:
	.string	"copy_mat_enabled"
.LASF161:
	.string	"pack"
.LASF95:
	.string	"comAlpha"
.LASF101:
	.string	"rgb_scale"
.LASF110:
	.string	"Push"
.LASF119:
	.string	"_temptexcoordelement"
.LASF167:
	.string	"Trans"
.LASF15:
	.string	"uint32_t"
.LASF83:
	.string	"_tex_env"
.LASF140:
	.string	"lights"
.LASF84:
	.string	"min_filter"
.LASF122:
	.string	"_normalelements"
.LASF129:
	.string	"cur_tex"
.LASF52:
	.string	"diffuse"
.LASF146:
	.string	"blend_type"
.LASF55:
	.string	"spotCutoff"
.LASF94:
	.string	"comRGB"
.LASF22:
	.string	"GXColor"
.LASF139:
	.string	"cur_mode"
.LASF44:
	.string	"_stack"
.LASF174:
	.string	"glTexEnvs"
.LASF70:
	.string	"height"
.LASF17:
	.string	"guVector"
.LASF71:
	.string	"_pixelStore"
.LASF43:
	.string	"PrjMtx"
.LASF130:
	.string	"cur_tex_client"
.LASF143:
	.string	"gxcullfaceanabled"
.LASF113:
	.string	"StackSize"
.LASF75:
	.string	"skip_rows"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
