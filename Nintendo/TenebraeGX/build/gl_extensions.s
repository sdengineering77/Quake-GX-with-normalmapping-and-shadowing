	.file	"gl_extensions.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl glGetString
	.type	glGetString, @function
glGetString:
.LFB64:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_extensions.c"
	.loc 1 13 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 14 0
	lis 9,cur_state@ha
	.loc 1 13 0
	stw 0,12(1)
	.loc 1 14 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L11
	.loc 1 16 0
	cmpwi 7,3,7937
	beq- 7,.L9
	cmplwi 7,3,7937
	ble- 7,.L12
	cmpwi 7,3,7938
	beq- 7,.L6
	cmpwi 7,3,7939
	bne+ 7,.L4
	.loc 1 21 0
	lis 3,.LANCHOR0@ha
.LVL1:
	la 3,.LANCHOR0@l(3)
	addi 3,3,16
.L3:
	.loc 1 24 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL2:
.L12:
.LCFI2:
	.cfi_restore_state
	.loc 1 16 0
	cmpwi 7,3,7936
	beq- 7,.L13
.L4:
	.loc 1 22 0
	lis 4,.LC0@ha
	li 3,1280
.LVL3:
	la 4,.LC0@l(4)
	li 5,22
	bl _glSetErrorEx
	.loc 1 24 0
	lwz 0,12(1)
	.loc 1 22 0
	li 3,0
	.loc 1 24 0
	mtlr 0
	addi 1,1,8
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
.LVL4:
.L6:
.LCFI4:
	.cfi_restore_state
	lwz 0,12(1)
	.loc 1 20 0
	lis 3,.LANCHOR0@ha
.LVL5:
	la 3,.LANCHOR0@l(3)
	.loc 1 24 0
	mtlr 0
	.loc 1 20 0
	addi 3,3,12
	.loc 1 24 0
	addi 1,1,8
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	blr
.LVL6:
.L13:
.LCFI6:
	.cfi_restore_state
	lwz 0,12(1)
	.loc 1 18 0
	lis 3,.LANCHOR0@ha
.LVL7:
	la 3,.LANCHOR0@l(3)
	.loc 1 24 0
	mtlr 0
	addi 1,1,8
	.cfi_remember_state
.LCFI7:
	.cfi_def_cfa_offset 0
	blr
.LVL8:
.L9:
.LCFI8:
	.cfi_restore_state
	lwz 0,12(1)
	.loc 1 19 0
	lis 3,.LANCHOR0@ha
.LVL9:
	la 3,.LANCHOR0@l(3)
	.loc 1 24 0
	mtlr 0
	.loc 1 19 0
	addi 3,3,8
	.loc 1 24 0
	addi 1,1,8
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	blr
.LVL10:
.L11:
.LCFI10:
	.cfi_restore_state
	.loc 1 14 0 discriminator 1
	lis 4,.LC0@ha
	li 3,1282
.LVL11:
	la 4,.LC0@l(4)
	li 5,14
	bl _glSetErrorEx
	li 3,0
	b .L3
	.cfi_endproc
.LFE64:
	.size	glGetString, .-glGetString
	.align 2
	.globl _glGetProcAddress
	.type	_glGetProcAddress, @function
_glGetProcAddress:
.LFB65:
	.loc 1 29 0
	.cfi_startproc
.LVL12:
	stwu 1,-16(1)
.LCFI11:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 31 0
	lis 3,.LC1@ha
.LVL13:
	mr 4,31
	la 3,.LC1@l(3)
	.loc 1 29 0
	stw 0,20(1)
	.loc 1 31 0
	.cfi_offset 65, 4
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L16
	.loc 1 32 0
	lis 3,.LC2@ha
	mr 4,31
	la 3,.LC2@l(3)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L17
	.loc 1 33 0
	lis 3,.LC3@ha
	mr 4,31
	la 3,.LC3@l(3)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L18
	.loc 1 35 0
	lis 3,.LC4@ha
	mr 4,31
	la 3,.LC4@l(3)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L19
	.loc 1 36 0
	lis 3,.LC5@ha
	mr 4,31
	la 3,.LC5@l(3)
	bl strcmp
	cmpwi 7,3,0
	.loc 1 38 0
	li 3,0
	.loc 1 36 0
	bne- 7,.L15
	.loc 1 39 0
	lwz 0,20(1)
	.loc 1 36 0
	lis 3,glDrawRangeElements@ha
	.loc 1 39 0
	lwz 31,12(1)
.LVL14:
	.loc 1 36 0
	la 3,glDrawRangeElements@l(3)
	.loc 1 39 0
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI12:
	.cfi_def_cfa_offset 0
	blr
.LVL15:
.L17:
.LCFI13:
	.cfi_restore_state
	.loc 1 32 0
	lis 3,glActiveTextureARB@ha
	la 3,glActiveTextureARB@l(3)
.L15:
	.loc 1 39 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL16:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL17:
.L16:
.LCFI15:
	.cfi_restore_state
	lwz 0,20(1)
	.loc 1 31 0
	lis 3,glMultiTexCoord2fARB@ha
	.loc 1 39 0
	lwz 31,12(1)
.LVL18:
	.loc 1 31 0
	la 3,glMultiTexCoord2fARB@l(3)
	.loc 1 39 0
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI16:
	.cfi_def_cfa_offset 0
	blr
.LVL19:
.L19:
.LCFI17:
	.cfi_restore_state
	.loc 1 35 0
	lis 3,glDrawRangeElementsEXT@ha
	la 3,glDrawRangeElementsEXT@l(3)
	b .L15
.L18:
	.loc 1 39 0
	lwz 0,20(1)
	.loc 1 33 0
	lis 3,glClientActiveTextureARB@ha
	.loc 1 39 0
	lwz 31,12(1)
.LVL20:
	.loc 1 33 0
	la 3,glClientActiveTextureARB@l(3)
	.loc 1 39 0
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI18:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE65:
	.size	_glGetProcAddress, .-_glGetProcAddress
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
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	vender, @object
	.size	vender, 6
vender:
	.string	"gl2gx"
	.zero	2
	.type	renderer, @object
	.size	renderer, 3
renderer:
	.string	"gx"
	.zero	1
	.type	version, @object
	.size	version, 4
version:
	.string	"1.2"
	.type	extensions, @object
	.size	extensions, 167
extensions:
	.string	"GL_EXT_texture_lod_bias\nGL_EXT_texture_filter_anisotropic\nGL_ARB_multitexture\nGL_EXT_texture_env_add\nGL_EXT_texture_env_combine\nGL_EXT_draw_range_elements\nGL_EXT_bgra"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_extensions.c"
	.zero	3
.LC1:
	.string	"glMultiTexCoord2fARB"
	.zero	3
.LC2:
	.string	"glActiveTextureARB"
	.zero	1
.LC3:
	.string	"glClientActiveTextureARB"
	.zero	3
.LC4:
	.string	"glDrawRangeElementsEXT"
	.zero	1
.LC5:
	.string	"glDrawRangeElements"
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 5 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 7 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/glint.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd9c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0x1
	.4byte	.LASF169
	.4byte	.LASF170
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x93
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x94
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x99
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x9a
	.4byte	0x42
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0x9d
	.4byte	0x62
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0xd4
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2a
	.4byte	0x42
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x50
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF18
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x7
	.4byte	0x69
	.uleb128 0x8
	.string	"u8"
	.byte	0x5
	.byte	0x11
	.4byte	0xba
	.uleb128 0x8
	.string	"u32"
	.byte	0x5
	.byte	0x13
	.4byte	0xc5
	.uleb128 0x8
	.string	"f32"
	.byte	0x5
	.byte	0x2b
	.4byte	0x91
	.uleb128 0x9
	.4byte	0x91
	.uleb128 0x9
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x6
	.byte	0x4
	.4byte	0x120
	.uleb128 0xa
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0xc
	.byte	0x6
	.byte	0x5e
	.4byte	0x159
	.uleb128 0xc
	.string	"x"
	.byte	0x6
	.byte	0x5f
	.4byte	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"y"
	.byte	0x6
	.byte	0x5f
	.4byte	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"z"
	.byte	0x6
	.byte	0x5f
	.4byte	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x6
	.byte	0x60
	.4byte	0x128
	.uleb128 0xd
	.4byte	.LASF171
	.byte	0x4
	.byte	0x7
	.2byte	0x490
	.4byte	0x1c4
	.uleb128 0xe
	.string	"U8"
	.byte	0x7
	.2byte	0x492
	.4byte	0x1c4
	.uleb128 0xe
	.string	"S8"
	.byte	0x7
	.2byte	0x493
	.4byte	0x1c9
	.uleb128 0xe
	.string	"U16"
	.byte	0x7
	.2byte	0x494
	.4byte	0x1ce
	.uleb128 0xe
	.string	"S16"
	.byte	0x7
	.2byte	0x495
	.4byte	0x1d3
	.uleb128 0xe
	.string	"U32"
	.byte	0x7
	.2byte	0x496
	.4byte	0x10e
	.uleb128 0xe
	.string	"S32"
	.byte	0x7
	.2byte	0x497
	.4byte	0x1d8
	.uleb128 0xe
	.string	"F32"
	.byte	0x7
	.2byte	0x498
	.4byte	0x109
	.byte	0
	.uleb128 0x9
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x49
	.uleb128 0x9
	.4byte	0x74
	.uleb128 0x9
	.4byte	0x50
	.uleb128 0x9
	.4byte	0x62
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x7
	.2byte	0x499
	.4byte	0x164
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x4
	.byte	0x7
	.2byte	0x49e
	.4byte	0x22b
	.uleb128 0x11
	.string	"r"
	.byte	0x7
	.2byte	0x49f
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"g"
	.byte	0x7
	.2byte	0x4a0
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"b"
	.byte	0x7
	.2byte	0x4a1
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"a"
	.byte	0x7
	.2byte	0x4a2
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x4a3
	.4byte	0x1e9
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x40
	.byte	0x7
	.2byte	0x4f1
	.4byte	0x254
	.uleb128 0x11
	.string	"val"
	.byte	0x7
	.2byte	0x4f2
	.4byte	0x254
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	0xf3
	.4byte	0x264
	.uleb128 0x13
	.4byte	0x30
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x4f3
	.4byte	0x237
	.uleb128 0x6
	.byte	0x4
	.4byte	0x276
	.uleb128 0x7
	.4byte	0xb3
	.uleb128 0x14
	.byte	0x10
	.byte	0x8
	.byte	0x15
	.4byte	0x29c
	.uleb128 0xc
	.string	"v"
	.byte	0x8
	.byte	0x17
	.4byte	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"w"
	.byte	0x8
	.byte	0x18
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x8
	.byte	0x19
	.4byte	0x27b
	.uleb128 0x14
	.byte	0x8
	.byte	0x8
	.byte	0x1b
	.4byte	0x2c8
	.uleb128 0xc
	.string	"s"
	.byte	0x8
	.byte	0x1d
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"t"
	.byte	0x8
	.byte	0x1e
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x8
	.byte	0x1f
	.4byte	0x2a7
	.uleb128 0x14
	.byte	0x10
	.byte	0x8
	.byte	0x21
	.4byte	0x30c
	.uleb128 0xc
	.string	"r"
	.byte	0x8
	.byte	0x23
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"g"
	.byte	0x8
	.byte	0x24
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"b"
	.byte	0x8
	.byte	0x25
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"a"
	.byte	0x8
	.byte	0x26
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x27
	.4byte	0x2d3
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x14
	.byte	0x8
	.byte	0x42
	.4byte	0x368
	.uleb128 0x15
	.4byte	.LASF33
	.byte	0x8
	.byte	0x44
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"p"
	.byte	0x8
	.byte	0x45
	.4byte	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x8
	.byte	0x46
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x8
	.byte	0x47
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x8
	.byte	0x48
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x8
	.byte	0x49
	.4byte	0x317
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x3b8
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x9
	.byte	0xe
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x9
	.byte	0xf
	.4byte	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x9
	.byte	0x10
	.4byte	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x9
	.byte	0x12
	.4byte	0x373
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0xa4
	.byte	0x8
	.byte	0x83
	.4byte	0x47e
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x8
	.byte	0x85
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"obj"
	.byte	0x8
	.byte	0x87
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"pos"
	.byte	0x8
	.byte	0x89
	.4byte	0x29c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x8
	.byte	0x8b
	.4byte	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x8
	.byte	0x8d
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x8
	.byte	0x8e
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x8
	.byte	0x8f
	.4byte	0x30c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x8
	.byte	0x91
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x8
	.byte	0x92
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x8
	.byte	0x93
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x8
	.byte	0x94
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x8
	.byte	0x95
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x8
	.byte	0x96
	.4byte	0x3c3
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x44
	.byte	0x8
	.byte	0xa0
	.4byte	0x4dc
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x8
	.byte	0xa2
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x8
	.byte	0xa3
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x8
	.byte	0xa4
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x8
	.byte	0xa5
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x8
	.byte	0xa6
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x8
	.byte	0xa7
	.4byte	0x489
	.uleb128 0x16
	.4byte	.LASF172
	.byte	0x4
	.byte	0x8
	.byte	0xbf
	.4byte	0x506
	.uleb128 0x17
	.4byte	.LASF58
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF59
	.sleb128 1
	.uleb128 0x17
	.4byte	.LASF60
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x8
	.byte	0xc4
	.4byte	0x4e7
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x10
	.byte	0x8
	.byte	0xe8
	.4byte	0x552
	.uleb128 0xc
	.string	"x"
	.byte	0x8
	.byte	0xea
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"y"
	.byte	0x8
	.byte	0xeb
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x8
	.byte	0xec
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x8
	.byte	0xed
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x8
	.byte	0xee
	.4byte	0x511
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x14
	.byte	0x8
	.byte	0xfb
	.4byte	0x5c1
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x8
	.byte	0xfd
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x8
	.byte	0xfe
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x8
	.byte	0xff
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x100
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x101
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x102
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x103
	.4byte	0x55d
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x8
	.byte	0x8
	.2byte	0x117
	.4byte	0x5f9
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x119
	.4byte	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x11a
	.4byte	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x11b
	.4byte	0x5cd
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x6c
	.byte	0x8
	.2byte	0x127
	.4byte	0x75d
	.uleb128 0x18
	.4byte	.LASF43
	.byte	0x8
	.2byte	0x129
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x12b
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x12c
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x12d
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x12e
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x12f
	.4byte	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x130
	.4byte	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x131
	.4byte	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x8
	.2byte	0x132
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x133
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x134
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x136
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x138
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x139
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x13b
	.4byte	0x75d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x13c
	.4byte	0x75d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x13d
	.4byte	0x75d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x13e
	.4byte	0x75d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.string	"tex"
	.byte	0x8
	.2byte	0x140
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x142
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x144
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x145
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0
	.uleb128 0x12
	.4byte	0x25
	.4byte	0x76d
	.uleb128 0x13
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x146
	.4byte	0x605
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF99
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST0
	.4byte	0x7a6
	.uleb128 0x1a
	.4byte	.LASF101
	.byte	0x1
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF100
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	0x9f
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST2
	.4byte	0x7d3
	.uleb128 0x1a
	.4byte	.LASF102
	.byte	0x1
	.byte	0x1c
	.4byte	0x270
	.4byte	.LLST3
	.byte	0
	.uleb128 0x12
	.4byte	0x69
	.4byte	0x7e3
	.uleb128 0x13
	.4byte	0x30
	.byte	0x5
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0x1
	.byte	0x6
	.4byte	0x7f4
	.byte	0x5
	.byte	0x3
	.4byte	vender
	.uleb128 0x7
	.4byte	0x7d3
	.uleb128 0x12
	.4byte	0x69
	.4byte	0x809
	.uleb128 0x13
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x1
	.byte	0x7
	.4byte	0x81a
	.byte	0x5
	.byte	0x3
	.4byte	renderer
	.uleb128 0x7
	.4byte	0x7f9
	.uleb128 0x12
	.4byte	0x69
	.4byte	0x82f
	.uleb128 0x13
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x1
	.byte	0x8
	.4byte	0x840
	.byte	0x5
	.byte	0x3
	.4byte	version
	.uleb128 0x7
	.4byte	0x81f
	.uleb128 0x12
	.4byte	0x69
	.4byte	0x855
	.uleb128 0x13
	.4byte	0x30
	.byte	0xa6
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x1
	.byte	0x9
	.4byte	0x866
	.byte	0x5
	.byte	0x3
	.4byte	extensions
	.uleb128 0x7
	.4byte	0x845
	.uleb128 0x1c
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x548
	.4byte	0x879
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.4byte	0x87e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1dd
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x8
	.byte	0x3d
	.4byte	0x30c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0x8
	.byte	0x3e
	.4byte	0x159
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0x12
	.4byte	0x2c8
	.4byte	0x8b8
	.uleb128 0x13
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF110
	.byte	0x8
	.byte	0x3f
	.4byte	0x8a8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x1d
	.4byte	.LASF111
	.byte	0x8
	.byte	0x4b
	.4byte	0x368
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x8
	.byte	0x4c
	.4byte	0x368
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0x12
	.4byte	0x368
	.4byte	0x8fe
	.uleb128 0x13
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x1e
	.string	"tex"
	.byte	0x8
	.byte	0x4d
	.4byte	0x8ee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x1d
	.4byte	.LASF95
	.byte	0x8
	.byte	0x4e
	.4byte	0x368
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0x12
	.4byte	0x159
	.4byte	0x933
	.uleb128 0x1f
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x8
	.byte	0x50
	.4byte	0x922
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x1d
	.4byte	.LASF114
	.byte	0x8
	.byte	0x51
	.4byte	0x922
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0x12
	.4byte	0x2c8
	.4byte	0x96e
	.uleb128 0x13
	.4byte	0x30
	.byte	0x7
	.uleb128 0x1f
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF115
	.byte	0x8
	.byte	0x52
	.4byte	0x957
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0x12
	.4byte	0x30c
	.4byte	0x991
	.uleb128 0x1f
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF116
	.byte	0x8
	.byte	0x53
	.4byte	0x980
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x1d
	.4byte	.LASF117
	.byte	0x8
	.byte	0x5d
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x8
	.byte	0x5e
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0x8
	.byte	0x5f
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x8
	.byte	0x61
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x8
	.byte	0x62
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0x8
	.byte	0x6b
	.4byte	0xe9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0x8
	.byte	0x6c
	.4byte	0xe9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0x8
	.byte	0x6d
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x8
	.byte	0x6e
	.4byte	0x91
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x8
	.byte	0x7a
	.4byte	0x3b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x8
	.byte	0x7b
	.4byte	0x3b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0x12
	.4byte	0x3b8
	.4byte	0xa79
	.uleb128 0x13
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0x8
	.byte	0x7c
	.4byte	0xa69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0x8
	.byte	0x7d
	.4byte	0xa9d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b8
	.uleb128 0x1d
	.4byte	.LASF130
	.byte	0x8
	.byte	0x7e
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0x12
	.4byte	0x47e
	.4byte	0xac5
	.uleb128 0x13
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF131
	.byte	0x8
	.byte	0x99
	.4byte	0xab5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x1d
	.4byte	.LASF132
	.byte	0x8
	.byte	0x9c
	.4byte	0x30c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x1d
	.4byte	.LASF133
	.byte	0x8
	.byte	0xa9
	.4byte	0x4dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x8
	.byte	0xac
	.4byte	0x113
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0x8
	.byte	0xad
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x1d
	.4byte	.LASF136
	.byte	0x8
	.byte	0xb1
	.4byte	0x113
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0x8
	.byte	0xb8
	.4byte	0xe9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0x8
	.byte	0xb9
	.4byte	0xe9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x1d
	.4byte	.LASF139
	.byte	0x8
	.byte	0xba
	.4byte	0xe9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x8
	.byte	0xbb
	.4byte	0xe9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x1d
	.4byte	.LASF141
	.byte	0x8
	.byte	0xbd
	.4byte	0xe9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x1d
	.4byte	.LASF142
	.byte	0x8
	.byte	0xc6
	.4byte	0x506
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x8
	.byte	0xf0
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x1d
	.4byte	.LASF144
	.byte	0x8
	.byte	0xf1
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x1d
	.4byte	.LASF145
	.byte	0x8
	.byte	0xf2
	.4byte	0x37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x1d
	.4byte	.LASF146
	.byte	0x8
	.byte	0xf3
	.4byte	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0x8
	.byte	0xf4
	.4byte	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x1d
	.4byte	.LASF148
	.byte	0x8
	.byte	0xf5
	.4byte	0xfe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0x8
	.byte	0xf6
	.4byte	0xfe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x1d
	.4byte	.LASF150
	.byte	0x8
	.byte	0xf8
	.4byte	0xfe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x8
	.byte	0xf9
	.4byte	0xfe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x20
	.4byte	.LASF152
	.byte	0x8
	.2byte	0x105
	.4byte	0x5c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x20
	.4byte	.LASF153
	.byte	0x8
	.2byte	0x106
	.4byte	0x5c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0x12
	.4byte	0x113
	.4byte	0xc75
	.uleb128 0x13
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.4byte	.LASF154
	.byte	0x8
	.2byte	0x107
	.4byte	0xc65
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x20
	.4byte	.LASF155
	.byte	0x8
	.2byte	0x10d
	.4byte	0x113
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x20
	.4byte	.LASF156
	.byte	0x8
	.2byte	0x10e
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x20
	.4byte	.LASF157
	.byte	0x8
	.2byte	0x111
	.4byte	0x22b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0x12
	.4byte	0x5f9
	.4byte	0xcd1
	.uleb128 0x13
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.4byte	.LASF158
	.byte	0x8
	.2byte	0x125
	.4byte	0xcc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x20
	.4byte	.LASF159
	.byte	0x8
	.2byte	0x14a
	.4byte	0x113
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x20
	.4byte	.LASF160
	.byte	0x8
	.2byte	0x14b
	.4byte	0xe9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x20
	.4byte	.LASF161
	.byte	0x8
	.2byte	0x14c
	.4byte	0xfe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x20
	.4byte	.LASF162
	.byte	0x8
	.2byte	0x14d
	.4byte	0xfe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x20
	.4byte	.LASF163
	.byte	0x8
	.2byte	0x14e
	.4byte	0xfe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x20
	.4byte	.LASF164
	.byte	0x8
	.2byte	0x14f
	.4byte	0x22b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0x12
	.4byte	0x76d
	.4byte	0xd66
	.uleb128 0x13
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x20
	.4byte	.LASF165
	.byte	0x8
	.2byte	0x151
	.4byte	0xd56
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x20
	.4byte	.LASF166
	.byte	0x8
	.2byte	0x156
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x20
	.4byte	.LASF167
	.byte	0x8
	.2byte	0x159
	.4byte	0x7b
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
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.4byte	.LFB64-.Ltext0
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
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB65-.Ltext0
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
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF74:
	.string	"scale"
.LASF92:
	.string	"CargOp"
.LASF146:
	.string	"scissorInfo"
.LASF13:
	.string	"size_t"
.LASF97:
	.string	"alpha_scale"
.LASF129:
	.string	"curmtx"
.LASF159:
	.string	"fog_enable"
.LASF153:
	.string	"unpack"
.LASF132:
	.string	"globAmbient"
.LASF79:
	.string	"max_filter"
.LASF36:
	.string	"type"
.LASF9:
	.string	"GLuint"
.LASF100:
	.string	"_glGetProcAddress"
.LASF68:
	.string	"row_length"
.LASF19:
	.string	"long long unsigned int"
.LASF128:
	.string	"texture_stack"
.LASF148:
	.string	"normNear"
.LASF44:
	.string	"spotDir"
.LASF169:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_extensions.c"
.LASF60:
	.string	"GL_STATE_NEWLIST"
.LASF166:
	.string	"read_mode"
.LASF58:
	.string	"GL_STATE_NONE"
.LASF122:
	.string	"depthtestenabled"
.LASF24:
	.string	"_vecf"
.LASF18:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF51:
	.string	"linear"
.LASF27:
	.string	"_gx_litobj"
.LASF35:
	.string	"size"
.LASF124:
	.string	"depthfunction"
.LASF109:
	.string	"_tempnormalelement"
.LASF171:
	.string	"_wgpipe"
.LASF57:
	.string	"Material"
.LASF76:
	.string	"ColorTrans"
.LASF14:
	.string	"long int"
.LASF55:
	.string	"emissive"
.LASF29:
	.string	"VertexElement"
.LASF140:
	.string	"blend_op"
.LASF114:
	.string	"_vertexelements"
.LASF33:
	.string	"enable"
.LASF161:
	.string	"fog_startz"
.LASF12:
	.string	"double"
.LASF80:
	.string	"wrap_s"
.LASF81:
	.string	"wrap_t"
.LASF139:
	.string	"blend_dst"
.LASF10:
	.string	"GLsizei"
.LASF52:
	.string	"quad_t"
.LASF127:
	.string	"projection_stack"
.LASF73:
	.string	"_trans"
.LASF6:
	.string	"GLint"
.LASF54:
	.string	"_mat"
.LASF53:
	.string	"LightObj"
.LASF160:
	.string	"fog_mode"
.LASF62:
	.string	"boxInfo"
.LASF2:
	.string	"unsigned int"
.LASF117:
	.string	"vert_i"
.LASF102:
	.string	"proc"
.LASF31:
	.string	"GXColorf"
.LASF21:
	.string	"long unsigned int"
.LASF106:
	.string	"extensions"
.LASF42:
	.string	"_light"
.LASF82:
	.string	"minlod"
.LASF50:
	.string	"constant"
.LASF126:
	.string	"model_stack"
.LASF56:
	.string	"shininess"
.LASF101:
	.string	"name"
.LASF138:
	.string	"blend_src"
.LASF86:
	.string	"edgelod"
.LASF63:
	.string	"width"
.LASF116:
	.string	"_colorelements"
.LASF123:
	.string	"depthupdate"
.LASF8:
	.string	"short unsigned int"
.LASF142:
	.string	"cur_state"
.LASF37:
	.string	"VertexArray"
.LASF61:
	.string	"glState"
.LASF59:
	.string	"GL_STATE_BEGIN"
.LASF162:
	.string	"fog_endz"
.LASF7:
	.string	"GLubyte"
.LASF157:
	.string	"_clearcolor"
.LASF5:
	.string	"short int"
.LASF118:
	.string	"_type"
.LASF167:
	.string	"call_offset"
.LASF147:
	.string	"viewPort"
.LASF135:
	.string	"gxwinding"
.LASF154:
	.string	"color_write_mask"
.LASF172:
	.string	"_glState"
.LASF105:
	.string	"version"
.LASF1:
	.string	"GLboolean"
.LASF115:
	.string	"_texcoordelements"
.LASF111:
	.string	"norm"
.LASF70:
	.string	"skip_pixels"
.LASF41:
	.string	"Stack"
.LASF32:
	.string	"_array"
.LASF48:
	.string	"spotExponent"
.LASF98:
	.string	"glTexEnvSet"
.LASF130:
	.string	"cur_mode"
.LASF164:
	.string	"fog_color"
.LASF72:
	.string	"pixelStore"
.LASF85:
	.string	"biasclamp"
.LASF39:
	.string	"begin"
.LASF150:
	.string	"line_width"
.LASF66:
	.string	"swap"
.LASF163:
	.string	"fog_density"
.LASF11:
	.string	"float"
.LASF170:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF156:
	.string	"copy_material"
.LASF45:
	.string	"ambient"
.LASF71:
	.string	"alignment"
.LASF28:
	.string	"GXLightObj"
.LASF23:
	.string	"WGPipe"
.LASF20:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF149:
	.string	"normFar"
.LASF136:
	.string	"lighting"
.LASF141:
	.string	"cull_mode"
.LASF107:
	.string	"wgPipe"
.LASF67:
	.string	"lsb_first"
.LASF40:
	.string	"elem_size"
.LASF144:
	.string	"fb_max_width"
.LASF75:
	.string	"bias"
.LASF83:
	.string	"maxlod"
.LASF84:
	.string	"lodbias"
.LASF145:
	.string	"scissor_test"
.LASF151:
	.string	"point_size"
.LASF93:
	.string	"Aarg"
.LASF125:
	.string	"_cleardepth"
.LASF34:
	.string	"stride"
.LASF30:
	.string	"TexCoordElement"
.LASF25:
	.string	"_gx_color"
.LASF94:
	.string	"AargOp"
.LASF168:
	.string	"GNU C 4.6.3"
.LASF112:
	.string	"vert"
.LASF95:
	.string	"color"
.LASF15:
	.string	"char"
.LASF91:
	.string	"Carg"
.LASF88:
	.string	"mode"
.LASF47:
	.string	"specular"
.LASF0:
	.string	"GLenum"
.LASF120:
	.string	"cur_tex"
.LASF143:
	.string	"fb_max_height"
.LASF16:
	.string	"uint8_t"
.LASF87:
	.string	"maxaniso"
.LASF133:
	.string	"curmat"
.LASF108:
	.string	"_tempcolorelement"
.LASF43:
	.string	"enabled"
.LASF155:
	.string	"copy_mat_enabled"
.LASF152:
	.string	"pack"
.LASF90:
	.string	"comAlpha"
.LASF96:
	.string	"rgb_scale"
.LASF110:
	.string	"_temptexcoordelement"
.LASF158:
	.string	"Trans"
.LASF17:
	.string	"uint32_t"
.LASF99:
	.string	"glGetString"
.LASF77:
	.string	"_tex_env"
.LASF131:
	.string	"lights"
.LASF78:
	.string	"min_filter"
.LASF103:
	.string	"vender"
.LASF113:
	.string	"_normalelements"
.LASF46:
	.string	"diffuse"
.LASF137:
	.string	"blend_type"
.LASF104:
	.string	"renderer"
.LASF49:
	.string	"spotCutoff"
.LASF89:
	.string	"comRGB"
.LASF26:
	.string	"GXColor"
.LASF119:
	.string	"_GLtype"
.LASF38:
	.string	"_stack"
.LASF165:
	.string	"glTexEnvs"
.LASF64:
	.string	"height"
.LASF22:
	.string	"guVector"
.LASF65:
	.string	"_pixelStore"
.LASF121:
	.string	"cur_tex_client"
.LASF134:
	.string	"gxcullfaceanabled"
.LASF69:
	.string	"skip_rows"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
