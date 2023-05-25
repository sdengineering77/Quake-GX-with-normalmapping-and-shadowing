	.file	"gl_extensions.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl _glGetProcAddress
	.type	_glGetProcAddress, @function
_glGetProcAddress:
.LFB67:
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/gl_extensions.c"
	.loc 1 29 0
.LVL0:
	mflr 0
.LCFI0:
	stwu 1,-16(1)
.LCFI1:
	stw 31,12(1)
.LCFI2:
	mr 31,3
	stw 0,20(1)
.LCFI3:
	.loc 1 31 0
	lis 3,.LC0@ha
.LVL1:
	la 3,.LC0@l(3)
	mr 4,31
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L2
	lis 9,glMultiTexCoord2fARB@ha
	la 3,glMultiTexCoord2fARB@l(9)
.L4:
	.loc 1 39 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2:
	addi 1,1,16
	mtlr 0
	blr
.LVL3:
.L2:
	.loc 1 32 0
	lis 3,.LC1@ha
	mr 4,31
	la 3,.LC1@l(3)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L5
	.loc 1 39 0
	lwz 0,20(1)
	.loc 1 32 0
	lis 9,glActiveTextureARB@ha
	la 3,glActiveTextureARB@l(9)
	.loc 1 39 0
	lwz 31,12(1)
.LVL4:
	mtlr 0
	addi 1,1,16
	blr
.LVL5:
.L5:
	.loc 1 33 0
	lis 3,.LC2@ha
	mr 4,31
	la 3,.LC2@l(3)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L7
	.loc 1 39 0
	lwz 0,20(1)
	.loc 1 33 0
	lis 9,glClientActiveTextureARB@ha
	la 3,glClientActiveTextureARB@l(9)
	.loc 1 39 0
	lwz 31,12(1)
.LVL6:
	mtlr 0
	addi 1,1,16
	blr
.LVL7:
.L7:
	.loc 1 35 0
	lis 3,.LC3@ha
	mr 4,31
	la 3,.LC3@l(3)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L9
	lis 9,glDrawRangeElementsEXT@ha
	la 3,glDrawRangeElementsEXT@l(9)
	b .L4
.L9:
	.loc 1 36 0
	lis 3,.LC4@ha
	mr 4,31
	la 3,.LC4@l(3)
	bl strcmp
	cmpwi 7,3,0
	li 3,0
	bne- 7,.L4
	lis 9,glDrawRangeElements@ha
	la 3,glDrawRangeElements@l(9)
	b .L4
.LFE67:
	.size	_glGetProcAddress, .-_glGetProcAddress
	.align 2
	.globl glGetString
	.type	glGetString, @function
glGetString:
.LFB66:
	.loc 1 13 0
.LVL8:
	mflr 0
.LCFI4:
	stwu 1,-8(1)
.LCFI5:
	.loc 1 14 0
	lis 9,cur_state@ha
	.loc 1 13 0
	stw 0,12(1)
.LCFI6:
	.loc 1 14 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L26
	.loc 1 16 0
	cmpwi 7,3,7937
	beq- 7,.L21
	cmplwi 7,3,7937
	ble- 7,.L27
	cmpwi 7,3,7938
	beq- 7,.L22
	cmpwi 7,3,7939
	bne+ 7,.L19
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	addi 3,9,4
.LVL9:
.L18:
	.loc 1 24 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL10:
.L27:
	.loc 1 16 0
	cmpwi 7,3,7936
	beq- 7,.L28
.L19:
	.loc 1 22 0
	lis 4,.LC5@ha
	li 3,1280
.LVL11:
	la 4,.LC5@l(4)
	li 5,22
	bl _glSetErrorEx
	.loc 1 24 0
	lwz 0,12(1)
	.loc 1 22 0
	li 3,0
	.loc 1 24 0
	addi 1,1,8
	mtlr 0
	blr
.LVL12:
.L22:
	lwz 0,12(1)
	.loc 1 16 0
	lis 9,.LANCHOR0@ha
	la 3,.LANCHOR0@l(9)
.LVL13:
	.loc 1 24 0
	addi 1,1,8
	mtlr 0
	blr
.LVL14:
.L28:
	lwz 0,12(1)
	.loc 1 16 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 24 0
	addi 1,1,8
	.loc 1 16 0
	addi 3,9,172
.LVL15:
	.loc 1 24 0
	mtlr 0
	blr
.LVL16:
.L21:
	lwz 0,12(1)
	.loc 1 18 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 24 0
	addi 1,1,8
	.loc 1 18 0
	addi 3,9,180
.LVL17:
	.loc 1 24 0
	mtlr 0
	blr
.LVL18:
.L26:
	.loc 1 14 0
	lis 4,.LC5@ha
	li 3,1282
.LVL19:
	la 4,.LC5@l(4)
	li 5,14
	bl _glSetErrorEx
	li 3,0
	b .L18
.LFE66:
	.size	glGetString, .-glGetString
	.comm	_tempcolorelement,16,4
	.comm	_tempnormalelement,12,4
	.comm	_temptexcoordelement,64,4
	.comm	norm,20,4
	.comm	vert,20,4
	.comm	tex,160,4
	.comm	color,20,4
	.comm	_normalelements,12000,32
	.comm	_vertexelements,12000,32
	.comm	_texcoordelements,64000,32
	.comm	_colorelements,16000,32
	.comm	vert_i,4,4
	.comm	_type,4,4
	.comm	_GLtype,4,4
	.comm	cur_tex,4,4
	.comm	cur_tex_client,4,4
	.comm	depthtestenabled,1,1
	.comm	depthupdate,1,1
	.comm	depthfunction,4,4
	.comm	_cleardepth,4,4
	.comm	model_stack,16,4
	.comm	projection_stack,16,4
	.comm	texture_stack,128,4
	.comm	curmtx,4,4
	.comm	cur_mode,4,4
	.comm	lights,1312,4
	.comm	globAmbient,16,4
	.comm	curmat,68,4
	.comm	gxcullfaceanabled,1,1
	.comm	gxwinding,4,4
	.comm	lighting,1,1
	.comm	blend_type,1,1
	.comm	blend_src,1,1
	.comm	blend_dst,1,1
	.comm	blend_op,1,1
	.comm	cull_mode,1,1
	.comm	cur_state,4,4
	.comm	fb_max_height,4,4
	.comm	fb_max_width,4,4
	.comm	scissor_test,1,1
	.comm	scissorInfo,16,4
	.comm	viewPort,16,4
	.comm	normNear,4,4
	.comm	normFar,4,4
	.comm	line_width,4,4
	.comm	point_size,4,4
	.comm	pack,20,4
	.comm	unpack,20,4
	.comm	color_write_mask,4,4
	.comm	copy_mat_enabled,1,1
	.comm	copy_material,4,4
	.comm	_clearcolor,4,1
	.comm	Trans,32,4
	.comm	fog_enable,1,1
	.comm	fog_mode,1,1
	.comm	fog_startz,4,4
	.comm	fog_endz,4,4
	.comm	fog_density,4,4
	.comm	fog_color,4,1
	.comm	glTexEnvs,864,4
	.comm	read_mode,4,4
	.comm	call_offset,4,4
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	version, @object
	.size	version, 4
version:
	.string	"1.2"
	.type	extensions, @object
	.size	extensions, 167
extensions:
	.string	"GL_EXT_texture_lod_bias\nGL_EXT_texture_filter_anisotropic\nGL_ARB_multitexture\nGL_EXT_texture_env_add\nGL_EXT_texture_env_combine\nGL_EXT_draw_range_elements\nGL_EXT_bgra"
	.zero	1
	.type	vender, @object
	.size	vender, 6
vender:
	.string	"gl2gx"
	.zero	2
	.type	renderer, @object
	.size	renderer, 3
renderer:
	.string	"gx"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"glMultiTexCoord2fARB"
	.zero	3
.LC1:
	.string	"glActiveTextureARB"
	.zero	1
.LC2:
	.string	"glClientActiveTextureARB"
	.zero	3
.LC3:
	.string	"glDrawRangeElementsEXT"
	.zero	1
.LC4:
	.string	"glDrawRangeElements"
.LC5:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl_extensions.c"
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
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI1-.LFB67
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI5-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE2:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB67-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 4 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 7 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/glint.h"
	.file 8 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0xce4
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0x1
	.4byte	.LASF165
	.4byte	.LASF166
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
	.byte	0xd6
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x7
	.4byte	0x69
	.uleb128 0x8
	.string	"u8"
	.byte	0x4
	.byte	0xf
	.4byte	0x42
	.uleb128 0x8
	.string	"u32"
	.byte	0x4
	.byte	0x11
	.4byte	0x30
	.uleb128 0x8
	.string	"f32"
	.byte	0x4
	.byte	0x29
	.4byte	0x91
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x35
	.4byte	0xd3
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0xc
	.byte	0x5
	.byte	0x27
	.4byte	0x132
	.uleb128 0xb
	.string	"x"
	.byte	0x5
	.byte	0x28
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"y"
	.byte	0x5
	.byte	0x28
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"z"
	.byte	0x5
	.byte	0x28
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x29
	.4byte	0x101
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6
	.2byte	0x3b8
	.4byte	0x17f
	.uleb128 0xd
	.string	"r"
	.byte	0x6
	.2byte	0x3b9
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"g"
	.byte	0x6
	.2byte	0x3ba
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.string	"b"
	.byte	0x6
	.2byte	0x3bb
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"a"
	.byte	0x6
	.2byte	0x3bc
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x3bd
	.4byte	0x13d
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x40
	.byte	0x6
	.2byte	0x3d6
	.4byte	0x1a8
	.uleb128 0xd
	.string	"val"
	.byte	0x6
	.2byte	0x3d7
	.4byte	0x1a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.4byte	0xdd
	.4byte	0x1b8
	.uleb128 0x10
	.4byte	0xfe
	.byte	0xf
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x3d8
	.4byte	0x18b
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d1
	.uleb128 0x7
	.4byte	0xb3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1dc
	.uleb128 0x11
	.uleb128 0x12
	.byte	0x10
	.byte	0x7
	.byte	0x15
	.4byte	0x1fe
	.uleb128 0xb
	.string	"v"
	.byte	0x7
	.byte	0x16
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"w"
	.byte	0x7
	.byte	0x17
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0x18
	.4byte	0x1dd
	.uleb128 0x12
	.byte	0x8
	.byte	0x7
	.byte	0x1b
	.4byte	0x22a
	.uleb128 0xb
	.string	"s"
	.byte	0x7
	.byte	0x1c
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"t"
	.byte	0x7
	.byte	0x1d
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0x1e
	.4byte	0x209
	.uleb128 0x12
	.byte	0x10
	.byte	0x7
	.byte	0x21
	.4byte	0x26e
	.uleb128 0xb
	.string	"r"
	.byte	0x7
	.byte	0x22
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"g"
	.byte	0x7
	.byte	0x23
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"b"
	.byte	0x7
	.byte	0x24
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"a"
	.byte	0x7
	.byte	0x25
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x26
	.4byte	0x235
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x14
	.byte	0x7
	.byte	0x42
	.4byte	0x2ca
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x7
	.byte	0x43
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"p"
	.byte	0x7
	.byte	0x44
	.4byte	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x7
	.byte	0x45
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x7
	.byte	0x46
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x7
	.byte	0x47
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x7
	.byte	0x48
	.4byte	0x279
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x31a
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x8
	.byte	0xe
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x8
	.byte	0xf
	.4byte	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x8
	.byte	0x10
	.4byte	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"cur"
	.byte	0x8
	.byte	0x11
	.4byte	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x8
	.byte	0x12
	.4byte	0x2d5
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xa4
	.byte	0x7
	.byte	0x83
	.4byte	0x3e0
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x7
	.byte	0x84
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"obj"
	.byte	0x7
	.byte	0x86
	.4byte	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"pos"
	.byte	0x7
	.byte	0x88
	.4byte	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x7
	.byte	0x8a
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x7
	.byte	0x8c
	.4byte	0x26e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x7
	.byte	0x8d
	.4byte	0x26e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x7
	.byte	0x8e
	.4byte	0x26e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x7
	.byte	0x90
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x7
	.byte	0x91
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x7
	.byte	0x92
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x7
	.byte	0x93
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x7
	.byte	0x94
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x7
	.byte	0x95
	.4byte	0x325
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x44
	.byte	0x7
	.byte	0xa0
	.4byte	0x43e
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x7
	.byte	0xa1
	.4byte	0x26e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x7
	.byte	0xa2
	.4byte	0x26e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x7
	.byte	0xa3
	.4byte	0x26e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x7
	.byte	0xa4
	.4byte	0x26e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x7
	.byte	0xa5
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x7
	.byte	0xa6
	.4byte	0x3eb
	.uleb128 0x14
	.4byte	.LASF167
	.byte	0x4
	.byte	0x7
	.byte	0xbf
	.4byte	0x468
	.uleb128 0x15
	.4byte	.LASF55
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF56
	.sleb128 1
	.uleb128 0x15
	.4byte	.LASF57
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x7
	.byte	0xc3
	.4byte	0x449
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x10
	.byte	0x7
	.byte	0xe8
	.4byte	0x4b4
	.uleb128 0xb
	.string	"x"
	.byte	0x7
	.byte	0xe9
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"y"
	.byte	0x7
	.byte	0xea
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x7
	.byte	0xeb
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x7
	.byte	0xec
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x7
	.byte	0xed
	.4byte	0x473
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x14
	.byte	0x7
	.byte	0xfb
	.4byte	0x522
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x7
	.byte	0xfc
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x7
	.byte	0xfd
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x7
	.byte	0xfe
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x7
	.byte	0xff
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x100
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x101
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x102
	.4byte	0x4bf
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x8
	.byte	0x7
	.2byte	0x117
	.4byte	0x55a
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x118
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x119
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x11a
	.4byte	0x52e
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x6c
	.byte	0x7
	.2byte	0x127
	.4byte	0x6be
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x7
	.2byte	0x128
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x12a
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x12b
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x12c
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x12d
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x12e
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x12f
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x130
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x131
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x132
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x133
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x135
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x137
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x138
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x13a
	.4byte	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x13b
	.4byte	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x13c
	.4byte	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x13d
	.4byte	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"tex"
	.byte	0x7
	.2byte	0x13f
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x141
	.4byte	0x26e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x143
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x144
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0xf
	.4byte	0x25
	.4byte	0x6ce
	.uleb128 0x10
	.4byte	0xfe
	.byte	0x2
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x145
	.4byte	0x566
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF96
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	0x9f
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST0
	.4byte	0x707
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x1
	.byte	0x1c
	.4byte	0x1cb
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF97
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.4byte	0xc8
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST2
	.4byte	0x734
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x1
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0xf
	.4byte	0x69
	.4byte	0x744
	.uleb128 0x10
	.4byte	0xfe
	.byte	0x5
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0x1
	.byte	0x6
	.4byte	0x755
	.byte	0x5
	.byte	0x3
	.4byte	vender
	.uleb128 0x7
	.4byte	0x734
	.uleb128 0xf
	.4byte	0x69
	.4byte	0x76a
	.uleb128 0x10
	.4byte	0xfe
	.byte	0x2
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x1
	.byte	0x7
	.4byte	0x77b
	.byte	0x5
	.byte	0x3
	.4byte	renderer
	.uleb128 0x7
	.4byte	0x75a
	.uleb128 0xf
	.4byte	0x69
	.4byte	0x790
	.uleb128 0x10
	.4byte	0xfe
	.byte	0x3
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x1
	.byte	0x8
	.4byte	0x7a1
	.byte	0x5
	.byte	0x3
	.4byte	version
	.uleb128 0x7
	.4byte	0x780
	.uleb128 0xf
	.4byte	0x69
	.4byte	0x7b6
	.uleb128 0x10
	.4byte	0xfe
	.byte	0xa6
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x1
	.byte	0x9
	.4byte	0x7c7
	.byte	0x5
	.byte	0x3
	.4byte	extensions
	.uleb128 0x7
	.4byte	0x7a6
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x7
	.byte	0x3c
	.4byte	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0x7
	.byte	0x3d
	.4byte	0x132
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xf
	.4byte	0x22a
	.4byte	0x800
	.uleb128 0x10
	.4byte	0xfe
	.byte	0x7
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF106
	.byte	0x7
	.byte	0x3e
	.4byte	0x7f0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x1a
	.4byte	.LASF107
	.byte	0x7
	.byte	0x4a
	.4byte	0x2ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x1a
	.4byte	.LASF108
	.byte	0x7
	.byte	0x4b
	.4byte	0x2ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xf
	.4byte	0x2ca
	.4byte	0x846
	.uleb128 0x10
	.4byte	0xfe
	.byte	0x7
	.byte	0x0
	.uleb128 0x1b
	.string	"tex"
	.byte	0x7
	.byte	0x4c
	.4byte	0x836
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x7
	.byte	0x4d
	.4byte	0x2ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xf
	.4byte	0x132
	.4byte	0x87b
	.uleb128 0x1c
	.4byte	0xfe
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0x7
	.byte	0x4f
	.4byte	0x86a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x1a
	.4byte	.LASF110
	.byte	0x7
	.byte	0x50
	.4byte	0x86a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xf
	.4byte	0x22a
	.4byte	0x8b6
	.uleb128 0x10
	.4byte	0xfe
	.byte	0x7
	.uleb128 0x1c
	.4byte	0xfe
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF111
	.byte	0x7
	.byte	0x51
	.4byte	0x89f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xf
	.4byte	0x26e
	.4byte	0x8d9
	.uleb128 0x1c
	.4byte	0xfe
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF112
	.byte	0x7
	.byte	0x52
	.4byte	0x8c8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0x7
	.byte	0x5c
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0x7
	.byte	0x5d
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x1a
	.4byte	.LASF115
	.byte	0x7
	.byte	0x5e
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0x7
	.byte	0x60
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x1a
	.4byte	.LASF117
	.byte	0x7
	.byte	0x61
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x1a
	.4byte	.LASF118
	.byte	0x7
	.byte	0x6a
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x1a
	.4byte	.LASF119
	.byte	0x7
	.byte	0x6b
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x1a
	.4byte	.LASF120
	.byte	0x7
	.byte	0x6c
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0x7
	.byte	0x6d
	.4byte	0x91
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x1a
	.4byte	.LASF122
	.byte	0x7
	.byte	0x79
	.4byte	0x31a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x1a
	.4byte	.LASF123
	.byte	0x7
	.byte	0x7a
	.4byte	0x31a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xf
	.4byte	0x31a
	.4byte	0x9c1
	.uleb128 0x10
	.4byte	0xfe
	.byte	0x7
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF124
	.byte	0x7
	.byte	0x7b
	.4byte	0x9b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x1a
	.4byte	.LASF125
	.byte	0x7
	.byte	0x7c
	.4byte	0x9e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x6
	.byte	0x4
	.4byte	0x31a
	.uleb128 0x1a
	.4byte	.LASF126
	.byte	0x7
	.byte	0x7d
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xf
	.4byte	0x3e0
	.4byte	0xa0d
	.uleb128 0x10
	.4byte	0xfe
	.byte	0x7
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0x7
	.byte	0x98
	.4byte	0x9fd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x1a
	.4byte	.LASF128
	.byte	0x7
	.byte	0x9b
	.4byte	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x1a
	.4byte	.LASF129
	.byte	0x7
	.byte	0xa8
	.4byte	0x43e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x1a
	.4byte	.LASF130
	.byte	0x7
	.byte	0xab
	.4byte	0xf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x1a
	.4byte	.LASF131
	.byte	0x7
	.byte	0xac
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x1a
	.4byte	.LASF132
	.byte	0x7
	.byte	0xb0
	.4byte	0xf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x1a
	.4byte	.LASF133
	.byte	0x7
	.byte	0xb7
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x1a
	.4byte	.LASF134
	.byte	0x7
	.byte	0xb8
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x1a
	.4byte	.LASF135
	.byte	0x7
	.byte	0xb9
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x1a
	.4byte	.LASF136
	.byte	0x7
	.byte	0xba
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x1a
	.4byte	.LASF137
	.byte	0x7
	.byte	0xbc
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x1a
	.4byte	.LASF138
	.byte	0x7
	.byte	0xc5
	.4byte	0x468
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x1a
	.4byte	.LASF139
	.byte	0x7
	.byte	0xef
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x1a
	.4byte	.LASF140
	.byte	0x7
	.byte	0xf0
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x1a
	.4byte	.LASF141
	.byte	0x7
	.byte	0xf1
	.4byte	0x37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x1a
	.4byte	.LASF142
	.byte	0x7
	.byte	0xf2
	.4byte	0x4b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x1a
	.4byte	.LASF143
	.byte	0x7
	.byte	0xf3
	.4byte	0x4b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x1a
	.4byte	.LASF144
	.byte	0x7
	.byte	0xf4
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x1a
	.4byte	.LASF145
	.byte	0x7
	.byte	0xf5
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x1a
	.4byte	.LASF146
	.byte	0x7
	.byte	0xf7
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x1a
	.4byte	.LASF147
	.byte	0x7
	.byte	0xf8
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x1d
	.4byte	.LASF148
	.byte	0x7
	.2byte	0x104
	.4byte	0x522
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0x7
	.2byte	0x105
	.4byte	0x522
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xf
	.4byte	0xf3
	.4byte	0xbbd
	.uleb128 0x10
	.4byte	0xfe
	.byte	0x3
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF150
	.byte	0x7
	.2byte	0x106
	.4byte	0xbad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x7
	.2byte	0x10c
	.4byte	0xf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x1d
	.4byte	.LASF152
	.byte	0x7
	.2byte	0x10d
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x1d
	.4byte	.LASF153
	.byte	0x7
	.2byte	0x110
	.4byte	0x17f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xf
	.4byte	0x55a
	.4byte	0xc19
	.uleb128 0x10
	.4byte	0xfe
	.byte	0x3
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF154
	.byte	0x7
	.2byte	0x124
	.4byte	0xc09
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x1d
	.4byte	.LASF155
	.byte	0x7
	.2byte	0x149
	.4byte	0xf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x1d
	.4byte	.LASF156
	.byte	0x7
	.2byte	0x14a
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x1d
	.4byte	.LASF157
	.byte	0x7
	.2byte	0x14b
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x1d
	.4byte	.LASF158
	.byte	0x7
	.2byte	0x14c
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x1d
	.4byte	.LASF159
	.byte	0x7
	.2byte	0x14d
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x1d
	.4byte	.LASF160
	.byte	0x7
	.2byte	0x14e
	.4byte	0x17f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xf
	.4byte	0x6ce
	.4byte	0xcae
	.uleb128 0x10
	.4byte	0xfe
	.byte	0x7
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF161
	.byte	0x7
	.2byte	0x150
	.4byte	0xc9e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x1d
	.4byte	.LASF162
	.byte	0x7
	.2byte	0x155
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x7
	.2byte	0x158
	.4byte	0x7b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
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
	.uleb128 0xe
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x3e4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xce8
	.4byte	0x6da
	.string	"_glGetProcAddress"
	.4byte	0x707
	.string	"glGetString"
	.4byte	0x7cc
	.string	"_tempcolorelement"
	.4byte	0x7de
	.string	"_tempnormalelement"
	.4byte	0x800
	.string	"_temptexcoordelement"
	.4byte	0x812
	.string	"norm"
	.4byte	0x824
	.string	"vert"
	.4byte	0x846
	.string	"tex"
	.4byte	0x858
	.string	"color"
	.4byte	0x87b
	.string	"_normalelements"
	.4byte	0x88d
	.string	"_vertexelements"
	.4byte	0x8b6
	.string	"_texcoordelements"
	.4byte	0x8d9
	.string	"_colorelements"
	.4byte	0x8eb
	.string	"vert_i"
	.4byte	0x8fd
	.string	"_type"
	.4byte	0x90f
	.string	"_GLtype"
	.4byte	0x921
	.string	"cur_tex"
	.4byte	0x933
	.string	"cur_tex_client"
	.4byte	0x945
	.string	"depthtestenabled"
	.4byte	0x957
	.string	"depthupdate"
	.4byte	0x969
	.string	"depthfunction"
	.4byte	0x97b
	.string	"_cleardepth"
	.4byte	0x98d
	.string	"model_stack"
	.4byte	0x99f
	.string	"projection_stack"
	.4byte	0x9c1
	.string	"texture_stack"
	.4byte	0x9d3
	.string	"curmtx"
	.4byte	0x9eb
	.string	"cur_mode"
	.4byte	0xa0d
	.string	"lights"
	.4byte	0xa1f
	.string	"globAmbient"
	.4byte	0xa31
	.string	"curmat"
	.4byte	0xa43
	.string	"gxcullfaceanabled"
	.4byte	0xa55
	.string	"gxwinding"
	.4byte	0xa67
	.string	"lighting"
	.4byte	0xa79
	.string	"blend_type"
	.4byte	0xa8b
	.string	"blend_src"
	.4byte	0xa9d
	.string	"blend_dst"
	.4byte	0xaaf
	.string	"blend_op"
	.4byte	0xac1
	.string	"cull_mode"
	.4byte	0xad3
	.string	"cur_state"
	.4byte	0xae5
	.string	"fb_max_height"
	.4byte	0xaf7
	.string	"fb_max_width"
	.4byte	0xb09
	.string	"scissor_test"
	.4byte	0xb1b
	.string	"scissorInfo"
	.4byte	0xb2d
	.string	"viewPort"
	.4byte	0xb3f
	.string	"normNear"
	.4byte	0xb51
	.string	"normFar"
	.4byte	0xb63
	.string	"line_width"
	.4byte	0xb75
	.string	"point_size"
	.4byte	0xb87
	.string	"pack"
	.4byte	0xb9a
	.string	"unpack"
	.4byte	0xbbd
	.string	"color_write_mask"
	.4byte	0xbd0
	.string	"copy_mat_enabled"
	.4byte	0xbe3
	.string	"copy_material"
	.4byte	0xbf6
	.string	"_clearcolor"
	.4byte	0xc19
	.string	"Trans"
	.4byte	0xc2c
	.string	"fog_enable"
	.4byte	0xc3f
	.string	"fog_mode"
	.4byte	0xc52
	.string	"fog_startz"
	.4byte	0xc65
	.string	"fog_endz"
	.4byte	0xc78
	.string	"fog_density"
	.4byte	0xc8b
	.string	"fog_color"
	.4byte	0xcae
	.string	"glTexEnvs"
	.4byte	0xcc1
	.string	"read_mode"
	.4byte	0xcd4
	.string	"call_offset"
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
.LASF71:
	.string	"scale"
.LASF89:
	.string	"CargOp"
.LASF142:
	.string	"scissorInfo"
.LASF13:
	.string	"size_t"
.LASF94:
	.string	"alpha_scale"
.LASF125:
	.string	"curmtx"
.LASF155:
	.string	"fog_enable"
.LASF149:
	.string	"unpack"
.LASF128:
	.string	"globAmbient"
.LASF76:
	.string	"max_filter"
.LASF33:
	.string	"type"
.LASF9:
	.string	"GLuint"
.LASF96:
	.string	"_glGetProcAddress"
.LASF65:
	.string	"row_length"
.LASF17:
	.string	"long long unsigned int"
.LASF124:
	.string	"texture_stack"
.LASF144:
	.string	"normNear"
.LASF41:
	.string	"spotDir"
.LASF57:
	.string	"GL_STATE_NEWLIST"
.LASF162:
	.string	"read_mode"
.LASF55:
	.string	"GL_STATE_NONE"
.LASF118:
	.string	"depthtestenabled"
.LASF20:
	.string	"_vecf"
.LASF16:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF48:
	.string	"linear"
.LASF23:
	.string	"_gx_litobj"
.LASF32:
	.string	"size"
.LASF120:
	.string	"depthfunction"
.LASF105:
	.string	"_tempnormalelement"
.LASF19:
	.string	"Vector"
.LASF54:
	.string	"Material"
.LASF73:
	.string	"ColorTrans"
.LASF14:
	.string	"long int"
.LASF52:
	.string	"emissive"
.LASF26:
	.string	"VertexElement"
.LASF136:
	.string	"blend_op"
.LASF110:
	.string	"_vertexelements"
.LASF30:
	.string	"enable"
.LASF157:
	.string	"fog_startz"
.LASF12:
	.string	"double"
.LASF77:
	.string	"wrap_s"
.LASF78:
	.string	"wrap_t"
.LASF135:
	.string	"blend_dst"
.LASF10:
	.string	"GLsizei"
.LASF49:
	.string	"quad_t"
.LASF123:
	.string	"projection_stack"
.LASF70:
	.string	"_trans"
.LASF6:
	.string	"GLint"
.LASF166:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF50:
	.string	"LightObj"
.LASF156:
	.string	"fog_mode"
.LASF59:
	.string	"boxInfo"
.LASF2:
	.string	"unsigned int"
.LASF113:
	.string	"vert_i"
.LASF98:
	.string	"proc"
.LASF28:
	.string	"GXColorf"
.LASF25:
	.string	"long unsigned int"
.LASF103:
	.string	"extensions"
.LASF39:
	.string	"_light"
.LASF79:
	.string	"minlod"
.LASF47:
	.string	"constant"
.LASF122:
	.string	"model_stack"
.LASF53:
	.string	"shininess"
.LASF99:
	.string	"name"
.LASF134:
	.string	"blend_src"
.LASF83:
	.string	"edgelod"
.LASF60:
	.string	"width"
.LASF112:
	.string	"_colorelements"
.LASF119:
	.string	"depthupdate"
.LASF8:
	.string	"short unsigned int"
.LASF138:
	.string	"cur_state"
.LASF34:
	.string	"VertexArray"
.LASF58:
	.string	"glState"
.LASF56:
	.string	"GL_STATE_BEGIN"
.LASF158:
	.string	"fog_endz"
.LASF7:
	.string	"GLubyte"
.LASF153:
	.string	"_clearcolor"
.LASF18:
	.string	"bool"
.LASF5:
	.string	"short int"
.LASF114:
	.string	"_type"
.LASF163:
	.string	"call_offset"
.LASF143:
	.string	"viewPort"
.LASF131:
	.string	"gxwinding"
.LASF150:
	.string	"color_write_mask"
.LASF167:
	.string	"_glState"
.LASF102:
	.string	"version"
.LASF1:
	.string	"GLboolean"
.LASF111:
	.string	"_texcoordelements"
.LASF107:
	.string	"norm"
.LASF67:
	.string	"skip_pixels"
.LASF38:
	.string	"Stack"
.LASF29:
	.string	"_array"
.LASF45:
	.string	"spotExponent"
.LASF95:
	.string	"glTexEnvSet"
.LASF126:
	.string	"cur_mode"
.LASF160:
	.string	"fog_color"
.LASF69:
	.string	"pixelStore"
.LASF140:
	.string	"fb_max_width"
.LASF146:
	.string	"line_width"
.LASF63:
	.string	"swap"
.LASF159:
	.string	"fog_density"
.LASF11:
	.string	"float"
.LASF97:
	.string	"glGetString"
.LASF152:
	.string	"copy_material"
.LASF42:
	.string	"ambient"
.LASF68:
	.string	"alignment"
.LASF24:
	.string	"GXLightObj"
.LASF3:
	.string	"unsigned char"
.LASF145:
	.string	"normFar"
.LASF132:
	.string	"lighting"
.LASF137:
	.string	"cull_mode"
.LASF64:
	.string	"lsb_first"
.LASF37:
	.string	"elem_size"
.LASF51:
	.string	"_mat"
.LASF72:
	.string	"bias"
.LASF80:
	.string	"maxlod"
.LASF82:
	.string	"biasclamp"
.LASF81:
	.string	"lodbias"
.LASF165:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl_extensions.c"
.LASF147:
	.string	"point_size"
.LASF90:
	.string	"Aarg"
.LASF164:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF121:
	.string	"_cleardepth"
.LASF31:
	.string	"stride"
.LASF27:
	.string	"TexCoordElement"
.LASF21:
	.string	"_gx_color"
.LASF91:
	.string	"AargOp"
.LASF108:
	.string	"vert"
.LASF92:
	.string	"color"
.LASF15:
	.string	"char"
.LASF88:
	.string	"Carg"
.LASF85:
	.string	"mode"
.LASF44:
	.string	"specular"
.LASF0:
	.string	"GLenum"
.LASF116:
	.string	"cur_tex"
.LASF139:
	.string	"fb_max_height"
.LASF141:
	.string	"scissor_test"
.LASF84:
	.string	"maxaniso"
.LASF129:
	.string	"curmat"
.LASF104:
	.string	"_tempcolorelement"
.LASF40:
	.string	"enabled"
.LASF36:
	.string	"begin"
.LASF151:
	.string	"copy_mat_enabled"
.LASF148:
	.string	"pack"
.LASF87:
	.string	"comAlpha"
.LASF93:
	.string	"rgb_scale"
.LASF106:
	.string	"_temptexcoordelement"
.LASF154:
	.string	"Trans"
.LASF74:
	.string	"_tex_env"
.LASF127:
	.string	"lights"
.LASF75:
	.string	"min_filter"
.LASF100:
	.string	"vender"
.LASF109:
	.string	"_normalelements"
.LASF43:
	.string	"diffuse"
.LASF133:
	.string	"blend_type"
.LASF101:
	.string	"renderer"
.LASF46:
	.string	"spotCutoff"
.LASF86:
	.string	"comRGB"
.LASF22:
	.string	"GXColor"
.LASF115:
	.string	"_GLtype"
.LASF35:
	.string	"_stack"
.LASF161:
	.string	"glTexEnvs"
.LASF61:
	.string	"height"
.LASF62:
	.string	"_pixelStore"
.LASF117:
	.string	"cur_tex_client"
.LASF130:
	.string	"gxcullfaceanabled"
.LASF66:
	.string	"skip_rows"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
