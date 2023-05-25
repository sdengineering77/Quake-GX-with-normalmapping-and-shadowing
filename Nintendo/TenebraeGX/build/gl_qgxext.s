	.file	"gl_qgxext.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl GX_InitGXExt
	.type	GX_InitGXExt, @function
GX_InitGXExt:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_qgxext.c"
	.loc 1 38 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 39 0
	lis 11,.LANCHOR0@ha
	.loc 1 45 0
	li 3,1
	.loc 1 39 0
	la 9,.LANCHOR0@l(11)
	.loc 1 45 0
	li 4,9
	.loc 1 38 0
	stw 0,12(1)
	.loc 1 39 0
	li 0,0
	.cfi_offset 65, 4
	.loc 1 40 0
	stw 0,4(9)
	.loc 1 45 0
	li 5,1
	.loc 1 41 0
	stw 0,8(9)
	.loc 1 45 0
	li 6,4
	li 7,0
	.loc 1 39 0
	stw 0,.LANCHOR0@l(11)
	.loc 1 45 0
	bl GX_SetVtxAttrFmt
	.loc 1 46 0
	li 3,1
	li 4,13
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 47 0
	li 3,1
	li 4,14
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 50 0
	li 3,2
	li 4,9
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 51 0
	li 3,2
	li 4,13
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 52 0
	li 3,2
	li 4,14
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 55 0
	li 3,3
	li 4,9
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 58 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE38:
	.size	GX_InitGXExt, .-GX_InitGXExt
	.align 2
	.globl GX_BindGLTex
	.type	GX_BindGLTex, @function
GX_BindGLTex:
.LFB39:
	.loc 1 82 0
	.cfi_startproc
.LVL0:
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 83 0
	mr 3,4
.LVL1:
	.loc 1 82 0
	stw 0,20(1)
	.loc 1 83 0
	.cfi_offset 65, 4
	bl GX_getTexObj
.LVL2:
	.loc 1 84 0
	cmpwi 7,3,0
	beq- 7,.L2
	.loc 1 85 0
	mr 4,31
	bl GX_LoadTexObj
.LVL3:
.L2:
	.loc 1 87 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE39:
	.size	GX_BindGLTex, .-GX_BindGLTex
	.align 2
	.globl GX_AsGXPrimitiveType
	.type	GX_AsGXPrimitiveType, @function
GX_AsGXPrimitiveType:
.LFB40:
	.loc 1 96 0
	.cfi_startproc
.LVL4:
	.loc 1 96 0
	cmplwi 7,3,9
	li 0,0
	bgt- 7,.L6
	lis 9,.LANCHOR1@ha
	la 9,.LANCHOR1@l(9)
	lbzx 0,9,3
.L6:
	.loc 1 117 0
	mr 3,0
.LVL5:
	blr
	.cfi_endproc
.LFE40:
	.size	GX_AsGXPrimitiveType, .-GX_AsGXPrimitiveType
	.align 2
	.globl GX_SetupGLRender
	.type	GX_SetupGLRender, @function
GX_SetupGLRender:
.LFB41:
	.loc 1 126 0
	.cfi_startproc
	mflr 0
	stwu 1,-24(1)
.LCFI4:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	.loc 1 146 0
	li 31,0
	.cfi_offset 31, -4
	.loc 1 126 0
	stw 0,28(1)
	.loc 1 128 0
	.cfi_offset 65, 4
	bl GX_LoadGLProjection
	.loc 1 131 0
	li 3,2
	bl GX_SetCullMode
	.loc 1 134 0
	li 3,1
	bl GX_SetAlphaUpdate
	.loc 1 135 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 138 0
	li 4,3
	li 5,1
	li 3,1
	bl GX_SetZMode
	.loc 1 141 0
	li 3,1
	bl GX_SetZCompLoc
	.loc 1 142 0
	li 3,7
	li 4,1
	li 5,0
	li 6,7
	li 7,1
	bl GX_SetAlphaCompare
	.loc 1 146 0
	li 0,0
.LVL6:
	rlwimi 0,31,24,0,7
.LVL7:
	.loc 1 147 0
	lis 9,.LC0@ha
	.loc 1 146 0
	rlwimi 0,31,16,8,15
	.loc 1 147 0
	lfs 2,.LC0@l(9)
	lis 9,.LC1@ha
	.loc 1 146 0
	rlwimi 0,31,8,16,23
	.loc 1 147 0
	lfs 3,.LC1@l(9)
	lis 9,.LC2@ha
	.loc 1 146 0
	rlwimi 0,31,0,24,31
	.loc 1 147 0
	mr 4,1
	lfs 4,.LC2@l(9)
	lis 9,.LC3@ha
	stwu 0,8(4)
	li 3,0
	lfs 1,.LC3@l(9)
	bl GX_SetFog
.LVL8:
	.loc 1 155 0
	lwz 0,28(1)
	.loc 1 150 0
	lis 11,.LANCHOR0@ha
	.loc 1 155 0
	mtlr 0
	.loc 1 150 0
	la 9,.LANCHOR0@l(11)
	.loc 1 151 0
	stw 31,4(9)
	.loc 1 152 0
	stw 31,8(9)
	.loc 1 150 0
	stw 31,.LANCHOR0@l(11)
	.loc 1 155 0
	lwz 31,20(1)
	addi 1,1,24
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE41:
	.size	GX_SetupGLRender, .-GX_SetupGLRender
	.align 2
	.globl GX_InitAmbientShader
	.type	GX_InitAmbientShader, @function
GX_InitAmbientShader:
.LFB42:
	.loc 1 169 0
	.cfi_startproc
.LVL9:
	stwu 1,-16(1)
.LCFI6:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 171 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 169 0
	stw 0,20(1)
	.loc 1 171 0
	lwz 0,.LANCHOR0@l(31)
	.cfi_offset 65, 4
	cmpwi 7,0,1
	beq- 7,.L10
	.loc 1 174 0
	bl GX_ClearVtxDesc
.LVL10:
	.loc 1 175 0
	li 3,9
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 176 0
	li 3,13
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 177 0
	li 4,1
	li 3,14
	bl GX_SetVtxDesc
	.loc 1 178 0
	bl GX_InvVtxCache
	.loc 1 181 0
	li 3,2
	bl GX_SetNumTexGens
	.loc 1 184 0
	li 3,0
	li 4,1
	li 5,4
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 185 0
	li 3,1
	li 4,1
	li 5,5
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 188 0
	li 3,0
	li 4,15
	li 5,8
	li 6,13
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 189 0
	li 8,0
	li 7,1
	li 3,0
	li 4,0
	li 5,0
	li 6,0
	bl GX_SetTevColorOp
	.loc 1 190 0
	li 4,0
	li 5,0
	li 6,6
	li 3,0
	bl GX_SetTevOrder
	.loc 1 191 0
	li 3,0
	bl GX_SetTevDirect
	.loc 1 193 0
	li 3,1
	li 4,15
	li 5,9
	li 6,0
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 194 0
	li 8,0
	li 7,1
	li 3,1
	li 4,0
	li 5,0
	li 6,0
	bl GX_SetTevColorOp
	.loc 1 195 0
	li 4,1
	li 5,1
	li 6,6
	li 3,1
	bl GX_SetTevOrder
	.loc 1 196 0
	li 3,1
	bl GX_SetTevDirect
	.loc 1 198 0
	li 3,2
	li 4,15
	li 5,9
	li 6,12
	li 7,0
	bl GX_SetTevColorIn
	.loc 1 199 0
	li 7,1
	li 8,0
	li 3,2
	li 4,0
	li 5,0
	li 6,0
	bl GX_SetTevColorOp
	.loc 1 200 0
	li 4,0
	li 5,2
	li 6,6
	li 3,2
	bl GX_SetTevOrder
	.loc 1 201 0
	li 3,2
	bl GX_SetTevDirect
	.loc 1 204 0
	li 0,1
	.loc 1 207 0
	li 3,0
	.loc 1 204 0
	stw 0,.LANCHOR0@l(31)
	.loc 1 207 0
	bl GX_SetAlphaUpdate
	.loc 1 208 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 211 0
	li 4,1
	li 5,1
	li 3,0
	li 6,5
	bl GX_SetBlendMode
	.loc 1 214 0
	li 3,2
	bl GX_SetCullMode
	.loc 1 217 0
	li 3,1
	li 4,3
	li 5,1
	bl GX_SetZMode
.L10:
	.loc 1 222 0
	li 3,1
	bl GX_SetNumTevStages
	.loc 1 224 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE42:
	.size	GX_InitAmbientShader, .-GX_InitAmbientShader
	.align 2
	.globl GX_InitWorldBumpShader
	.type	GX_InitWorldBumpShader, @function
GX_InitWorldBumpShader:
.LFB43:
	.loc 1 246 0
	.cfi_startproc
.LVL11:
	stwu 1,-168(1)
.LCFI8:
	.cfi_def_cfa_offset 168
	mflr 0
	stw 30,160(1)
	.loc 1 248 0
	lis 30,.LANCHOR0@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 246 0
	stw 0,172(1)
	.loc 1 248 0
	lwz 0,.LANCHOR0@l(30)
	.cfi_offset 65, 4
	.loc 1 246 0
	stw 29,156(1)
	mr 29,4
	.cfi_offset 29, -12
	.loc 1 248 0
	cmpwi 7,0,2
	.loc 1 246 0
	stw 31,164(1)
	.loc 1 246 0
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 248 0
	beq- 7,.L12
	.loc 1 252 0
	li 0,2
	stw 0,.LANCHOR0@l(30)
	.loc 1 255 0
	bl GX_PixModeSync
.LVL12:
	.loc 1 256 0
	bl GX_DrawDone
	.loc 1 259 0
	bl GX_ClearVtxDesc
	.loc 1 260 0
	li 3,9
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 261 0
	li 3,13
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 262 0
	li 3,14
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 263 0
	bl GX_InvVtxCache
	.loc 1 266 0
	lis 9,glow_texture_object@ha
	lwz 4,glow_texture_object@l(9)
	li 3,1
	bl GX_BindGLTex
	.loc 1 269 0
	li 3,3
	bl GX_SetNumTexGens
	.loc 1 272 0
	li 3,0
	li 4,1
	li 5,4
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 273 0
	li 3,1
	li 4,1
	li 5,5
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 274 0
	li 8,64
	li 3,2
	li 4,0
	li 5,0
	li 6,30
	li 7,0
	bl GX_SetTexCoordGen2
	.loc 1 277 0
	li 3,0
	li 4,15
	li 5,8
	li 6,6
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 278 0
	li 8,1
	li 7,1
	li 3,0
	li 4,0
	li 5,0
	li 6,0
	bl GX_SetTevColorOp
	.loc 1 279 0
	li 4,1
	li 5,1
	li 6,4
	li 3,0
	bl GX_SetTevOrder
	.loc 1 280 0
	li 3,0
	bl GX_SetTevDirect
	.loc 1 282 0
	li 3,1
	li 4,15
	li 5,8
	li 6,2
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 283 0
	li 8,0
	li 7,1
	li 3,1
	li 4,0
	li 5,0
	li 6,1
	bl GX_SetTevColorOp
	.loc 1 284 0
	li 4,0
	li 5,0
	li 6,6
	li 3,1
	bl GX_SetTevOrder
	.loc 1 285 0
	li 3,1
	bl GX_SetTevDirect
	.loc 1 287 0
	li 3,2
	li 4,8
	li 5,15
	li 6,0
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 288 0
	li 7,0
	li 8,0
	li 3,2
	li 4,15
	li 5,0
	li 6,0
	bl GX_SetTevColorOp
	.loc 1 289 0
	li 4,2
	li 5,5
	li 6,6
	li 3,2
	bl GX_SetTevOrder
	.loc 1 290 0
	li 3,2
	bl GX_SetTevDirect
	.loc 1 293 0
	li 3,0
	bl GX_SetAlphaUpdate
	.loc 1 294 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 297 0
	li 4,1
	li 5,1
	li 6,5
	li 3,1
	bl GX_SetBlendMode
	.loc 1 300 0
	li 3,2
	bl GX_SetCullMode
	.loc 1 303 0
	li 3,3
	bl GX_SetNumTevStages
	.loc 1 306 0
	li 3,1
	li 4,3
	li 5,1
	bl GX_SetZMode
.L12:
	.loc 1 310 0
	la 30,.LANCHOR0@l(30)
	lwz 0,8(30)
	cmpw 7,0,29
	beq- 7,.L13
.LBB2:
	.loc 1 313 0
	stw 29,8(30)
	.loc 1 316 0
	bl GX_GetCurrGLModelViewMtx
	mr 4,3
	li 5,48
	addi 3,1,8
	bl memcpy
	.loc 1 317 0
	addi 3,1,8
	li 4,30
	li 5,1
	bl GX_LoadTexMtxImm
.L13:
.LBE2:
	.loc 1 321 0
	lwz 0,4(30)
	cmpw 7,0,31
	beq- 7,.L11
.LBB3:
	.loc 1 324 0
	stw 31,4(30)
	.loc 1 326 0
	bl GX_GetCurrGLPrjMtx
	mr 4,3
	li 5,64
	addi 3,1,56
	bl memcpy
.LVL13:
	.loc 1 331 0
	lis 9,glwidth@ha
	lwz 10,glwidth@l(9)
	.loc 1 332 0
	lis 9,glheight@ha
	.loc 1 329 0
	lwz 8,2132(31)
	lis 0,0x4330
	.loc 1 330 0
	lwz 11,2136(31)
	.loc 1 331 0
	xoris 10,10,0x8000
	.loc 1 332 0
	lwz 9,glheight@l(9)
	.loc 1 329 0
	xoris 8,8,0x8000
	.loc 1 330 0
	xoris 11,11,0x8000
	.loc 1 329 0
	stw 0,120(1)
	.loc 1 332 0
	xoris 9,9,0x8000
	.loc 1 331 0
	stw 0,128(1)
	.loc 1 330 0
	stw 0,136(1)
	.loc 1 338 0
	addi 3,1,8
	.loc 1 332 0
	stw 9,148(1)
	.loc 1 329 0
	lis 9,.LC6@ha
	.loc 1 332 0
	stw 0,144(1)
	.loc 1 338 0
	li 4,64
	.loc 1 329 0
	stw 8,124(1)
	.loc 1 333 0
	li 0,0
	.loc 1 331 0
	stw 10,132(1)
	.loc 1 338 0
	li 5,1
	.loc 1 330 0
	stw 11,140(1)
	.loc 1 329 0
	lfs 0,.LC6@l(9)
	.loc 1 331 0
	lis 9,.LC7@ha
	.loc 1 332 0
	lfd 10,144(1)
	.loc 1 329 0
	lfd 11,120(1)
	.loc 1 331 0
	lfd 13,128(1)
	.loc 1 330 0
	lfd 12,136(1)
	.loc 1 329 0
	fsub 11,11,0
	.loc 1 331 0
	fsub 13,13,0
	.loc 1 333 0
	stw 0,12(1)
	.loc 1 330 0
	fsub 12,12,0
	.loc 1 333 0
	stw 0,20(1)
	.loc 1 332 0
	fsub 0,10,0
	.loc 1 328 0
	lfs 10,76(1)
	.loc 1 331 0
	frsp 13,13
	.loc 1 333 0
	stw 0,24(1)
	.loc 1 330 0
	frsp 12,12
	.loc 1 333 0
	stw 0,36(1)
	.loc 1 329 0
	frsp 11,11
	.loc 1 333 0
	stw 0,40(1)
	.loc 1 332 0
	frsp 0,0
	.loc 1 333 0
	stw 0,44(1)
	.loc 1 331 0
	fdivs 11,11,13
	lfs 13,.LC7@l(9)
	.loc 1 333 0
	lis 9,.LC8@ha
	lwz 9,.LC8@l(9)
	stw 9,48(1)
	.loc 1 328 0
	lis 9,.LC4@ha
	.loc 1 332 0
	fdivs 0,12,0
	.loc 1 328 0
	lfs 12,.LC4@l(9)
	fmuls 12,10,12
.LVL14:
	.loc 1 327 0
	lfs 10,56(1)
	.loc 1 331 0
	fsubs 11,11,13
.LVL15:
	.loc 1 332 0
	fsubs 0,0,13
.LVL16:
	.loc 1 327 0
	fmuls 13,10,13
	.loc 1 333 0
	stfs 12,28(1)
	stfs 11,16(1)
	stfs 0,32(1)
	stfs 13,8(1)
	stw 0,52(1)
	.loc 1 338 0
	bl GX_LoadTexMtxImm
.LVL17:
.L11:
.LBE3:
	.loc 1 342 0
	lwz 0,172(1)
	lwz 29,156(1)
.LVL18:
	mtlr 0
	lwz 30,160(1)
	lwz 31,164(1)
.LVL19:
	addi 1,1,168
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE43:
	.size	GX_InitWorldBumpShader, .-GX_InitWorldBumpShader
	.align 2
	.globl GX_InitShadowShader
	.type	GX_InitShadowShader, @function
GX_InitShadowShader:
.LFB44:
	.loc 1 354 0
	.cfi_startproc
.LVL20:
	mflr 0
	stwu 1,-24(1)
.LCFI10:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,28(1)
	stw 31,20(1)
	.loc 1 354 0
	mr 31,4
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 357 0
	bl GX_PixModeSync
.LVL21:
	.loc 1 358 0
	bl GX_DrawDone
	.loc 1 360 0
	lis 9,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(9)
	cmpwi 7,0,3
	beq- 7,.L16
.LBB4:
	.loc 1 364 0
	li 0,3
	stw 0,.LANCHOR0@l(9)
	.loc 1 367 0
	bl GX_ClearVtxDesc
	.loc 1 368 0
	li 4,1
	li 3,9
	bl GX_SetVtxDesc
	.loc 1 369 0
	bl GX_InvVtxCache
	.loc 1 372 0
	li 3,0
	bl GX_SetNumTexGens
	.loc 1 378 0
	li 9,0
	li 0,0
.LVL22:
	.loc 1 382 0
	mr 4,1
	.loc 1 378 0
	rlwimi 0,9,24,0,7
.LVL23:
	.loc 1 382 0
	li 3,0
	.loc 1 379 0
	rlwimi 0,9,16,8,15
	.loc 1 380 0
	rlwimi 0,9,8,16,23
	.loc 1 381 0
	li 9,4
	rlwimi 0,9,0,24,31
	.loc 1 382 0
	stwu 0,8(4)
	bl GX_SetTevKColor
.LVL24:
	.loc 1 383 0
	li 3,0
	li 4,28
	bl GX_SetTevKAlphaSel
	.loc 1 384 0
	li 3,0
	li 4,15
	li 5,15
	li 6,15
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 385 0
	li 8,0
	li 3,0
	li 4,0
	li 5,0
	li 6,0
	li 7,1
	bl GX_SetTevColorOp
	.loc 1 386 0
	li 3,0
	li 4,7
	li 5,7
	li 6,7
	li 7,6
	bl GX_SetTevAlphaIn
	.loc 1 387 0
	li 7,1
	li 8,0
	li 3,0
	li 4,0
	li 5,0
	li 6,0
	bl GX_SetTevAlphaOp
	.loc 1 388 0
	li 4,255
	li 5,256
	li 6,6
	li 3,0
	bl GX_SetTevOrder
	.loc 1 389 0
	li 3,0
	bl GX_SetTevDirect
	.loc 1 392 0
	li 3,1
	bl GX_SetAlphaUpdate
	.loc 1 393 0
	li 3,0
	bl GX_SetColorUpdate
	.loc 1 396 0
	li 3,1
	bl GX_SetNumTevStages
	.loc 1 399 0
	li 3,1
	li 4,6
	li 5,0
	bl GX_SetZMode
.L16:
.LBE4:
	.loc 1 404 0
	cmpwi 7,30,0
	beq- 7,.L17
	.loc 1 405 0
	cmpwi 7,31,0
	bne- 7,.L23
	.loc 1 408 0
	li 3,1
	bl GX_SetCullMode
.L19:
	.loc 1 410 0
	li 3,1
	li 4,1
	li 5,1
	li 6,5
	bl GX_SetBlendMode
	.loc 1 420 0
	lwz 0,28(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI11:
	.cfi_def_cfa_offset 0
	blr
.L17:
.LCFI12:
	.cfi_restore_state
	.loc 1 412 0
	cmpwi 7,31,0
	bne- 7,.L24
	.loc 1 415 0
	li 3,2
	bl GX_SetCullMode
.L22:
	.loc 1 417 0
	li 3,3
	li 4,1
	li 5,1
	li 6,5
	bl GX_SetBlendMode
	.loc 1 420 0
	lwz 0,28(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI13:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L24:
.LCFI14:
	.cfi_restore_state
	.loc 1 413 0
	li 3,1
	bl GX_SetCullMode
	b .L22
.L23:
	.loc 1 406 0
	li 3,2
	bl GX_SetCullMode
	b .L19
	.cfi_endproc
.LFE44:
	.size	GX_InitShadowShader, .-GX_InitShadowShader
	.align 2
	.globl GX_GrabEFB
	.type	GX_GrabEFB, @function
GX_GrabEFB:
.LFB45:
	.loc 1 428 0
	.cfi_startproc
.LVL25:
	stwu 1,-40(1)
.LCFI15:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 26,16(1)
	mr 26,3
	.cfi_offset 26, -24
	.cfi_register 65, 0
	stw 27,20(1)
	mr 27,4
	.cfi_offset 27, -20
	stw 28,24(1)
	mr 28,5
	.cfi_offset 28, -16
	stw 31,36(1)
	.loc 1 432 0
	rlwinm 31,6,0,0xffff
	.cfi_offset 31, -4
	.loc 1 428 0
	stw 0,44(1)
	stw 25,12(1)
	mr 25,8
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	stw 29,28(1)
	mr 29,9
	.cfi_offset 29, -12
	stw 30,32(1)
	.loc 1 428 0
	mr 30,7
	.cfi_offset 30, -8
	.loc 1 429 0
	bl GX_PixModeSync
.LVL26:
	.loc 1 430 0
	bl GX_DrawDone
	.loc 1 432 0
	rlwinm 3,26,0,0xffff
	rlwinm 4,27,0,0xffff
	rlwinm 5,28,0,0xffff
	mr 6,31
	bl GX_SetTexCopySrc
	.loc 1 433 0
	lis 9,glwidth@ha
	lwz 3,glwidth@l(9)
	mr 5,30
	mr 6,29
	mr 4,31
	rlwinm 3,3,0,0xffff
	bl GX_SetTexCopyDst
	.loc 1 436 0
	lwz 3,48(1)
	mr 4,25
	bl GX_CopyTex
	.loc 1 437 0
	bl GX_PixModeSync
	.loc 1 441 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
.LVL27:
	lwz 27,20(1)
.LVL28:
	lwz 28,24(1)
.LVL29:
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
	.cfi_endproc
.LFE45:
	.size	GX_GrabEFB, .-GX_GrabEFB
	.comm	causticschain,4,4
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
	.type	CSWTCH.11, @object
	.size	CSWTCH.11, 10
CSWTCH.11:
	.byte	-72
	.byte	-88
	.byte	0
	.byte	-80
	.byte	-112
	.byte	-104
	.byte	-96
	.byte	-128
	.byte	-104
	.byte	-96
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1266679807
.LC1:
	.4byte	1036831949
.LC2:
	.4byte	1065353216
.LC3:
	.4byte	0
.LC4:
	.4byte	-1090519040
.LC6:
	.4byte	1501560836
.LC7:
	.4byte	1056964608
.LC8:
	.4byte	-1082130432
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	gxCurrentShader, @object
	.size	gxCurrentShader, 4
gxCurrentShader:
	.zero	4
	.type	currentBumpShaderLight, @object
	.size	currentBumpShaderLight, 4
currentBumpShaderLight:
	.zero	4
	.type	currentBumpShaderEntity, @object
	.size	currentBumpShaderEntity, 4
currentBumpShaderEntity:
	.zero	4
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 4 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 15 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 16 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1bf7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x1
	.4byte	.LASF337
	.4byte	.LASF338
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
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2a
	.4byte	0x2c
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.byte	0x50
	.4byte	0x48
	.uleb128 0x7
	.string	"u8"
	.byte	0x4
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x7
	.string	"u32"
	.byte	0x4
	.byte	0x13
	.4byte	0xa5
	.uleb128 0x7
	.string	"f32"
	.byte	0x4
	.byte	0x2b
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x22
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x9
	.byte	0x40
	.byte	0x5
	.byte	0x52
	.4byte	0x158
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0x54
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0x54
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x55
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0x56
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x57
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x168
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x178
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0x59
	.4byte	0xed
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x193
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	0x48
	.4byte	0x1a3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x1b3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0xa5
	.4byte	0x1d8
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.byte	0xa7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0xa8
	.4byte	0x1a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x5
	.byte	0xa9
	.4byte	0x1b3
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1f9
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x3a
	.4byte	0x209
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x219
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x4
	.byte	0x6
	.byte	0x6f
	.4byte	0x234
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x6
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x6
	.byte	0x72
	.4byte	0x219
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x7
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x7
	.byte	0x17
	.4byte	0x255
	.uleb128 0xb
	.4byte	0x23f
	.4byte	0x265
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x48
	.byte	0x8
	.byte	0xef
	.4byte	0x316
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x8
	.byte	0xf1
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x8
	.byte	0xf2
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x8
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x8
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x8
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x8
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x8
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x8
	.byte	0xf9
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x8
	.byte	0xfa
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x8
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x8
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x8
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x8
	.byte	0xfe
	.4byte	0x265
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x331
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x10
	.byte	0x9
	.byte	0x1e
	.4byte	0x376
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x9
	.byte	0x20
	.4byte	0x41d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x9
	.byte	0x21
	.4byte	0x423
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x9
	.byte	0x22
	.4byte	0x697
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x9
	.byte	0x23
	.4byte	0x423
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x40
	.byte	0xa
	.byte	0xca
	.4byte	0x41d
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0xa
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0xa
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0xa
	.byte	0xd0
	.4byte	0xf4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0xa
	.byte	0xd2
	.4byte	0x9f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0xa
	.byte	0xd5
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0xa
	.byte	0xd6
	.4byte	0xf79
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0xa
	.byte	0xd8
	.4byte	0xf7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0xa
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"key"
	.byte	0xa
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xa
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xa
	.byte	0xdc
	.4byte	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x376
	.uleb128 0x5
	.byte	0x4
	.4byte	0x331
	.uleb128 0xf
	.4byte	.LASF62
	.2byte	0x248
	.byte	0x9
	.byte	0x27
	.4byte	0x697
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x9
	.byte	0x29
	.4byte	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x9
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x9
	.byte	0x2d
	.4byte	0x316
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x9
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x9
	.byte	0x30
	.4byte	0x6a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x9
	.byte	0x31
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x9
	.byte	0x32
	.4byte	0x6a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x9
	.byte	0x33
	.4byte	0x24a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x9
	.byte	0x34
	.4byte	0x972
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x9
	.byte	0x35
	.4byte	0x423
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x9
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x9
	.byte	0x37
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x9
	.byte	0x38
	.4byte	0xe7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x9
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x9
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x9
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x9
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x9
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x9
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x9
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x9
	.byte	0x44
	.4byte	0x9f5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x9
	.byte	0x48
	.4byte	0x24a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x9
	.byte	0x49
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x9
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x9
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x9
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x9
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x9
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x9
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x9
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x9
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x9
	.byte	0x57
	.4byte	0xb15
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x9
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x9
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x9
	.byte	0x5c
	.4byte	0xb1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x9
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x9
	.byte	0x60
	.4byte	0x24a
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x9
	.byte	0x61
	.4byte	0x24a
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x9
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x9
	.byte	0x63
	.4byte	0x24a
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x9
	.byte	0x64
	.4byte	0x24a
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x429
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x9
	.byte	0x24
	.4byte	0x331
	.uleb128 0xb
	.4byte	0x23f
	.4byte	0x6be
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF94
	.2byte	0x1a4
	.byte	0xa
	.2byte	0x180
	.4byte	0x972
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0xa
	.2byte	0x182
	.4byte	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0xa
	.2byte	0x183
	.4byte	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0xa
	.2byte	0x185
	.4byte	0x12c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0xa
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0xa
	.2byte	0x187
	.4byte	0xb61
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0xa
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0xa
	.2byte	0x18e
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0xa
	.2byte	0x18e
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0xa
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0xa
	.2byte	0x194
	.4byte	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0xa
	.2byte	0x195
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0xa
	.2byte	0x195
	.4byte	0x24a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0xa
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0xa
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0xa
	.2byte	0x19d
	.4byte	0x12ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0xa
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x1a0
	.4byte	0xf31
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0xa
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x1a3
	.4byte	0x12d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x1a6
	.4byte	0x12da
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0xa
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x1a9
	.4byte	0x12e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x1ac
	.4byte	0x12e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x1af
	.4byte	0xf3d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x1b2
	.4byte	0xf85
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x1b5
	.4byte	0x12ec
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x1b8
	.4byte	0xff3
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0xa
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x1bb
	.4byte	0xf7f
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x1bd
	.4byte	0x12f2
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x1c0
	.4byte	0x1302
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x1c2
	.4byte	0xe7
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x1c3
	.4byte	0xe7
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x1c9
	.4byte	0x234
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6be
	.uleb128 0xd
	.4byte	.LASF134
	.byte	0x34
	.byte	0xa
	.byte	0xb6
	.4byte	0x9f5
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0xa
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0xa
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0xa
	.byte	0xbc
	.4byte	0xf4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0xa
	.byte	0xbe
	.4byte	0x9f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF135
	.byte	0xa
	.byte	0xc1
	.4byte	0xf31
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0xa
	.byte	0xc2
	.4byte	0xf5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF136
	.byte	0xa
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0xa
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x978
	.uleb128 0x12
	.4byte	.LASF137
	.4byte	0x20030
	.byte	0xb
	.2byte	0xa09
	.4byte	0xb15
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xb
	.2byte	0xa0f
	.4byte	0xb15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xb
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xb
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0xb
	.2byte	0xa17
	.4byte	0x16dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xb
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xb
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xb
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xb
	.2byte	0xa1d
	.4byte	0xb36
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xb
	.2byte	0xa1f
	.4byte	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xb
	.2byte	0xa21
	.4byte	0x16dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0xb
	.2byte	0xa25
	.4byte	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xb
	.2byte	0xa2b
	.4byte	0x16e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xb
	.2byte	0xa2d
	.4byte	0x16e8
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xb
	.2byte	0xa2f
	.4byte	0x16e8
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xb
	.2byte	0xa31
	.4byte	0x16e8
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xb
	.2byte	0xa33
	.4byte	0x172d
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xb
	.2byte	0xa37
	.4byte	0x173e
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9fb
	.uleb128 0xb
	.4byte	0x33
	.4byte	0xb2b
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF155
	.byte	0x9
	.byte	0x66
	.4byte	0x429
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb2b
	.uleb128 0xb
	.4byte	0x41
	.4byte	0xb4c
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.byte	0x34
	.4byte	0xb61
	.uleb128 0x14
	.4byte	.LASF156
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF157
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF158
	.byte	0xc
	.byte	0x34
	.4byte	0xb4c
	.uleb128 0x9
	.byte	0x4
	.byte	0xc
	.byte	0x64
	.4byte	0xb8f
	.uleb128 0xe
	.string	"v"
	.byte	0xc
	.byte	0x65
	.4byte	0xb8f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF159
	.byte	0xc
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0xb9f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF160
	.byte	0xc
	.byte	0x67
	.4byte	0xb6c
	.uleb128 0x9
	.byte	0xc
	.byte	0xa
	.byte	0x3b
	.4byte	0xbc1
	.uleb128 0xa
	.4byte	.LASF161
	.byte	0xa
	.byte	0x3d
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF162
	.byte	0xa
	.byte	0x3e
	.4byte	0xbaa
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0x14
	.byte	0xa
	.byte	0x52
	.4byte	0xc1f
	.uleb128 0xa
	.4byte	.LASF164
	.byte	0xa
	.byte	0x54
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF165
	.byte	0xa
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0xa
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF166
	.byte	0xa
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.string	"pad"
	.byte	0xa
	.byte	0x58
	.4byte	0xc1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0xc2f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF167
	.byte	0xa
	.byte	0x59
	.4byte	0xbcc
	.uleb128 0xd
	.4byte	.LASF168
	.byte	0x48
	.byte	0xa
	.byte	0x5b
	.4byte	0xcef
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xa
	.byte	0x5d
	.4byte	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF169
	.byte	0xa
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF170
	.byte	0xa
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF171
	.byte	0xa
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF172
	.byte	0xa
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF173
	.byte	0xa
	.byte	0x61
	.4byte	0xe14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0xa
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF175
	.byte	0xa
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF176
	.byte	0xa
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF177
	.byte	0xa
	.byte	0x64
	.4byte	0xe1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF178
	.byte	0xa
	.byte	0x65
	.4byte	0xe1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF179
	.byte	0xa
	.byte	0x66
	.4byte	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xd
	.4byte	.LASF180
	.byte	0x5c
	.byte	0xa
	.byte	0x96
	.4byte	0xe14
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0xa
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF135
	.byte	0xa
	.byte	0x9a
	.4byte	0xf31
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0xa
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF181
	.byte	0xa
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0xa
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF182
	.byte	0xa
	.byte	0xa0
	.4byte	0x1a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF183
	.byte	0xa
	.byte	0xa1
	.4byte	0x1a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF184
	.byte	0xa
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF185
	.byte	0xa
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0xa
	.byte	0xa5
	.4byte	0xf37
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF173
	.byte	0xa
	.byte	0xa6
	.4byte	0xe14
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF187
	.byte	0xa
	.byte	0xa7
	.4byte	0xe14
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF119
	.byte	0xa
	.byte	0xa9
	.4byte	0xf3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xa
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0xa
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0xa
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF189
	.byte	0xa
	.byte	0xb0
	.4byte	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF190
	.byte	0xa
	.byte	0xb1
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF191
	.byte	0xa
	.byte	0xb2
	.4byte	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0xa
	.byte	0xb3
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcef
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc3a
	.uleb128 0x6
	.4byte	.LASF193
	.byte	0xa
	.byte	0x67
	.4byte	0xc3a
	.uleb128 0x9
	.byte	0x8
	.byte	0xa
	.byte	0x78
	.4byte	0xe4e
	.uleb128 0xe
	.string	"v"
	.byte	0xa
	.byte	0x7a
	.4byte	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF194
	.byte	0xa
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF195
	.byte	0xa
	.byte	0x7c
	.4byte	0xe2b
	.uleb128 0x9
	.byte	0x2c
	.byte	0xa
	.byte	0x7e
	.4byte	0xe9a
	.uleb128 0xa
	.4byte	.LASF196
	.byte	0xa
	.byte	0x80
	.4byte	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF197
	.byte	0xa
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF198
	.byte	0xa
	.byte	0x82
	.4byte	0xe9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0xa
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe20
	.uleb128 0x6
	.4byte	.LASF199
	.byte	0xa
	.byte	0x84
	.4byte	0xe59
	.uleb128 0xd
	.4byte	.LASF200
	.byte	0x1c
	.byte	0xa
	.byte	0x8a
	.4byte	0xf1a
	.uleb128 0xa
	.4byte	.LASF201
	.byte	0xa
	.byte	0x8c
	.4byte	0xf1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF202
	.byte	0xa
	.byte	0x8d
	.4byte	0xf1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0xa
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0xa
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xa
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF204
	.byte	0xa
	.byte	0x92
	.4byte	0xf20
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF205
	.byte	0xa
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xeab
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf1a
	.uleb128 0x6
	.4byte	.LASF206
	.byte	0xa
	.byte	0x94
	.4byte	0xeab
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc2f
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf26
	.uleb128 0x5
	.byte	0x4
	.4byte	0xea0
	.uleb128 0x6
	.4byte	.LASF207
	.byte	0xa
	.byte	0xb4
	.4byte	0xcef
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0xf5e
	.uleb128 0xc
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0x9f5
	.4byte	0xf6e
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF208
	.byte	0xa
	.byte	0xc6
	.4byte	0x978
	.uleb128 0x5
	.byte	0x4
	.4byte	0x69d
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf85
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf43
	.uleb128 0x6
	.4byte	.LASF209
	.byte	0xa
	.byte	0xdd
	.4byte	0x376
	.uleb128 0x9
	.byte	0x28
	.byte	0xa
	.byte	0xe0
	.4byte	0xff3
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0xa
	.byte	0xe2
	.4byte	0xff3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0xa
	.byte	0xe3
	.4byte	0xf31
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF210
	.byte	0xa
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF211
	.byte	0xa
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF212
	.byte	0xa
	.byte	0xe6
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF213
	.byte	0xa
	.byte	0xe7
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d8
	.uleb128 0x6
	.4byte	.LASF214
	.byte	0xa
	.byte	0xe8
	.4byte	0xf96
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x15
	.byte	0x28
	.byte	0xa
	.2byte	0x11e
	.4byte	0x107d
	.uleb128 0x11
	.4byte	.LASF215
	.byte	0xa
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF216
	.byte	0xa
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF217
	.byte	0xa
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF218
	.byte	0xa
	.2byte	0x123
	.4byte	0xb9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF219
	.byte	0xa
	.2byte	0x124
	.4byte	0xb9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0xa
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0xa
	.2byte	0x126
	.4byte	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0xa
	.2byte	0x127
	.4byte	0x100a
	.uleb128 0x17
	.2byte	0x53c
	.byte	0xa
	.2byte	0x142
	.4byte	0x126e
	.uleb128 0x11
	.4byte	.LASF221
	.byte	0xa
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF222
	.byte	0xa
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF223
	.byte	0xa
	.2byte	0x145
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF224
	.byte	0xa
	.2byte	0x146
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF225
	.byte	0xa
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF226
	.byte	0xa
	.2byte	0x148
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF227
	.byte	0xa
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.4byte	.LASF228
	.byte	0xa
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF229
	.byte	0xa
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF203
	.byte	0xa
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF230
	.byte	0xa
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0xa
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0xa
	.2byte	0x14f
	.4byte	0xb61
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0xa
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF231
	.byte	0xa
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0xa
	.2byte	0x153
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0xa
	.2byte	0x153
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF216
	.byte	0xa
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF232
	.byte	0xa
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF233
	.byte	0xa
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF234
	.byte	0xa
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF235
	.byte	0xa
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF236
	.byte	0xa
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF237
	.byte	0xa
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF238
	.byte	0xa
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0xa
	.2byte	0x15e
	.4byte	0x126e
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF239
	.byte	0xa
	.2byte	0x15f
	.4byte	0x126e
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x11
	.4byte	.LASF240
	.byte	0xa
	.2byte	0x160
	.4byte	0xb3c
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x11
	.4byte	.LASF241
	.byte	0xa
	.2byte	0x161
	.4byte	0x1284
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x1284
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x107d
	.4byte	0x1294
	.uleb128 0xc
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF242
	.byte	0xa
	.2byte	0x162
	.4byte	0x1089
	.uleb128 0x18
	.byte	0x4
	.byte	0xa
	.2byte	0x172
	.4byte	0x12c2
	.uleb128 0x14
	.4byte	.LASF243
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF244
	.sleb128 1
	.uleb128 0x14
	.4byte	.LASF245
	.sleb128 2
	.uleb128 0x14
	.4byte	.LASF246
	.sleb128 3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF247
	.byte	0xa
	.2byte	0x172
	.4byte	0x12a0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x178
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf8b
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbc1
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe4e
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf6e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xb
	.4byte	0xff9
	.4byte	0x1302
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe9a
	.uleb128 0x9
	.byte	0x10
	.byte	0xd
	.byte	0x16
	.4byte	0x132d
	.uleb128 0xa
	.4byte	.LASF164
	.byte	0xd
	.byte	0x18
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF165
	.byte	0xd
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF248
	.byte	0xd
	.byte	0x1a
	.4byte	0x1308
	.uleb128 0x6
	.4byte	.LASF249
	.byte	0xe
	.byte	0x93
	.4byte	0x48
	.uleb128 0x19
	.4byte	.LASF250
	.byte	0x14
	.byte	0xb
	.2byte	0x981
	.4byte	0x136f
	.uleb128 0x11
	.4byte	.LASF251
	.byte	0xb
	.2byte	0x983
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF201
	.byte	0xb
	.2byte	0x985
	.4byte	0x136f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1343
	.uleb128 0x16
	.4byte	.LASF252
	.byte	0xb
	.2byte	0x987
	.4byte	0x1343
	.uleb128 0x1a
	.4byte	.LASF298
	.byte	0x4
	.byte	0xb
	.2byte	0x98d
	.4byte	0x13bf
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0xb
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1b
	.4byte	.LASF254
	.byte	0xb
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0xb
	.2byte	0x993
	.4byte	0x23f
	.uleb128 0x1b
	.4byte	.LASF256
	.byte	0xb
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF257
	.byte	0xb
	.2byte	0x997
	.4byte	0x1381
	.uleb128 0x10
	.4byte	.LASF258
	.2byte	0x890
	.byte	0xb
	.2byte	0x99d
	.4byte	0x157f
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0xb
	.2byte	0x99f
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF259
	.byte	0xb
	.2byte	0x9a1
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xb
	.2byte	0x9a1
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0xb
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF260
	.byte	0xb
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF261
	.byte	0xb
	.2byte	0x9a9
	.4byte	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF262
	.byte	0xb
	.2byte	0x9ab
	.4byte	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x11
	.4byte	.LASF263
	.byte	0xb
	.2byte	0x9ad
	.4byte	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x11
	.4byte	.LASF264
	.byte	0xb
	.2byte	0x9af
	.4byte	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0xb
	.2byte	0x9b1
	.4byte	0x12d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1c
	.string	"vis"
	.byte	0xb
	.2byte	0x9b3
	.4byte	0x157f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF265
	.byte	0xb
	.2byte	0x9b5
	.4byte	0x157f
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x11
	.4byte	.LASF266
	.byte	0xb
	.2byte	0x9b7
	.4byte	0xf7f
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x11
	.4byte	.LASF267
	.byte	0xb
	.2byte	0x9b9
	.4byte	0x12ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x11
	.4byte	.LASF268
	.byte	0xb
	.2byte	0x9bb
	.4byte	0x1004
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x11
	.4byte	.LASF269
	.byte	0xb
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x11
	.4byte	.LASF270
	.byte	0xb
	.2byte	0x9bf
	.4byte	0x1590
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x11
	.4byte	.LASF271
	.byte	0xb
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0xb
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x11
	.4byte	.LASF272
	.byte	0xb
	.2byte	0x9c5
	.4byte	0xb36
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x11
	.4byte	.LASF273
	.byte	0xb
	.2byte	0x9c7
	.4byte	0x1375
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x11
	.4byte	.LASF274
	.byte	0xb
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0xb
	.2byte	0x9cb
	.4byte	0x24a
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x11
	.4byte	.LASF275
	.byte	0xb
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x11
	.4byte	.LASF276
	.byte	0xb
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x11
	.4byte	.LASF277
	.byte	0xb
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x11
	.4byte	.LASF278
	.byte	0xb
	.2byte	0x9d3
	.4byte	0x24a
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1590
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13bf
	.uleb128 0x16
	.4byte	.LASF279
	.byte	0xb
	.2byte	0x9d5
	.4byte	0x13cb
	.uleb128 0x12
	.4byte	.LASF280
	.4byte	0x1e864
	.byte	0xb
	.2byte	0x9db
	.4byte	0x16dc
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xb
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF281
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF282
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF283
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF284
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF285
	.byte	0xb
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xb
	.2byte	0x9e5
	.4byte	0xb36
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF286
	.byte	0xb
	.2byte	0x9e7
	.4byte	0x16dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF287
	.byte	0xb
	.2byte	0x9e9
	.4byte	0x16e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF288
	.byte	0xb
	.2byte	0x9eb
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF289
	.byte	0xb
	.2byte	0x9eb
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF290
	.byte	0xb
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF291
	.byte	0xb
	.2byte	0x9f3
	.4byte	0x16e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF292
	.byte	0xb
	.2byte	0x9f5
	.4byte	0x16e8
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x11
	.4byte	.LASF293
	.byte	0xb
	.2byte	0x9f7
	.4byte	0x16e8
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x11
	.4byte	.LASF294
	.byte	0xb
	.2byte	0x9f9
	.4byte	0x16e8
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x11
	.4byte	.LASF295
	.byte	0xb
	.2byte	0x9fb
	.4byte	0x16ff
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x11
	.4byte	.LASF238
	.byte	0xb
	.2byte	0x9ff
	.4byte	0x1710
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x11
	.4byte	.LASF230
	.byte	0xb
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1294
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1596
	.uleb128 0xb
	.4byte	0x23f
	.4byte	0x16ff
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xd5
	.4byte	0x1710
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x1721
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x16
	.4byte	.LASF296
	.byte	0xb
	.2byte	0xa05
	.4byte	0x15a2
	.uleb128 0xb
	.4byte	0x132d
	.4byte	0x173e
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1721
	.uleb128 0x7
	.string	"Mtx"
	.byte	0xf
	.byte	0x73
	.4byte	0x174f
	.uleb128 0xb
	.4byte	0xc5
	.4byte	0x1765
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF297
	.byte	0xf
	.byte	0x89
	.4byte	0x1770
	.uleb128 0xb
	.4byte	0xc5
	.4byte	0x1786
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF299
	.byte	0x4
	.byte	0x10
	.2byte	0x490
	.4byte	0x17e6
	.uleb128 0x1e
	.string	"U8"
	.byte	0x10
	.2byte	0x492
	.4byte	0x17e6
	.uleb128 0x1e
	.string	"S8"
	.byte	0x10
	.2byte	0x493
	.4byte	0x17eb
	.uleb128 0x1e
	.string	"U16"
	.byte	0x10
	.2byte	0x494
	.4byte	0x17f0
	.uleb128 0x1e
	.string	"S16"
	.byte	0x10
	.2byte	0x495
	.4byte	0x17f5
	.uleb128 0x1e
	.string	"U32"
	.byte	0x10
	.2byte	0x496
	.4byte	0x17fa
	.uleb128 0x1e
	.string	"S32"
	.byte	0x10
	.2byte	0x497
	.4byte	0x17ff
	.uleb128 0x1e
	.string	"F32"
	.byte	0x10
	.2byte	0x498
	.4byte	0xd0
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.uleb128 0x8
	.4byte	0x25
	.uleb128 0x8
	.4byte	0x3a
	.uleb128 0x8
	.4byte	0x33
	.uleb128 0x8
	.4byte	0x48
	.uleb128 0x8
	.4byte	0x41
	.uleb128 0x16
	.4byte	.LASF300
	.byte	0x10
	.2byte	0x499
	.4byte	0x1786
	.uleb128 0x19
	.4byte	.LASF301
	.byte	0x4
	.byte	0x10
	.2byte	0x49e
	.4byte	0x1852
	.uleb128 0x1c
	.string	"r"
	.byte	0x10
	.2byte	0x49f
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1c
	.string	"g"
	.byte	0x10
	.2byte	0x4a0
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x1c
	.string	"b"
	.byte	0x10
	.2byte	0x4a1
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x1c
	.string	"a"
	.byte	0x10
	.2byte	0x4a2
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF302
	.byte	0x10
	.2byte	0x4a3
	.4byte	0x1810
	.uleb128 0x19
	.4byte	.LASF303
	.byte	0x20
	.byte	0x10
	.2byte	0x4b9
	.4byte	0x187b
	.uleb128 0x1c
	.string	"val"
	.byte	0x10
	.2byte	0x4ba
	.4byte	0x187b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	0xba
	.4byte	0x188b
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.4byte	.LASF304
	.byte	0x10
	.2byte	0x4bb
	.4byte	0x185e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x188b
	.uleb128 0x13
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.4byte	0x18be
	.uleb128 0x14
	.4byte	.LASF305
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF306
	.sleb128 1
	.uleb128 0x14
	.4byte	.LASF307
	.sleb128 2
	.uleb128 0x14
	.4byte	.LASF308
	.sleb128 3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF309
	.byte	0x1
	.byte	0x12
	.4byte	0x189d
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF339
	.byte	0x1
	.byte	0x26
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF312
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST1
	.4byte	0x1924
	.uleb128 0x21
	.4byte	.LASF310
	.byte	0x1
	.byte	0x52
	.4byte	0xb0
	.4byte	.LLST2
	.uleb128 0x21
	.4byte	.LASF311
	.byte	0x1
	.byte	0x52
	.4byte	0x41
	.4byte	.LLST3
	.uleb128 0x22
	.string	"tex"
	.byte	0x1
	.byte	0x53
	.4byte	0x1897
	.4byte	.LLST4
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF340
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x195b
	.uleb128 0x21
	.4byte	.LASF97
	.byte	0x1
	.byte	0x60
	.4byte	0x1338
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LASF320
	.byte	0x1
	.byte	0x61
	.4byte	0xb0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF313
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST6
	.4byte	0x1984
	.uleb128 0x22
	.string	"col"
	.byte	0x1
	.byte	0x91
	.4byte	0x1852
	.4byte	.LLST7
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF314
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST8
	.4byte	0x19ad
	.uleb128 0x21
	.4byte	.LASF315
	.byte	0x1
	.byte	0xa9
	.4byte	0xe0
	.4byte	.LLST9
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF316
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST10
	.4byte	0x1a79
	.uleb128 0x21
	.4byte	.LASF317
	.byte	0x1
	.byte	0xf6
	.4byte	0x16e2
	.4byte	.LLST11
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.byte	0xf6
	.4byte	0xb36
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	0x1a02
	.uleb128 0x26
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x137
	.4byte	0x1744
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x27
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x26
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x142
	.4byte	0x1765
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"c0"
	.byte	0x1
	.2byte	0x143
	.4byte	0x7a
	.uleb128 0x29
	.string	"c1"
	.byte	0x1
	.2byte	0x143
	.4byte	0x7a
	.4byte	.LLST13
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.2byte	0x143
	.4byte	0x7a
	.4byte	.LLST14
	.uleb128 0x29
	.string	"t"
	.byte	0x1
	.2byte	0x143
	.4byte	0x7a
	.4byte	.LLST15
	.uleb128 0x28
	.string	"ss"
	.byte	0x1
	.2byte	0x143
	.4byte	0x7a
	.uleb128 0x28
	.string	"st"
	.byte	0x1
	.2byte	0x143
	.4byte	0x7a
	.uleb128 0x26
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x14d
	.4byte	0x1744
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x162
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST16
	.4byte	0x1ace
	.uleb128 0x2b
	.string	"add"
	.byte	0x1
	.2byte	0x162
	.4byte	0xe0
	.4byte	.LLST17
	.uleb128 0x2c
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x162
	.4byte	0xe0
	.4byte	.LLST18
	.uleb128 0x27
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x2d
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x169
	.4byte	0x1852
	.4byte	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x1ac
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST20
	.4byte	0x1b74
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x41
	.4byte	.LLST21
	.uleb128 0x2b
	.string	"y"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x41
	.4byte	.LLST22
	.uleb128 0x2c
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x41
	.4byte	.LLST23
	.uleb128 0x2c
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x41
	.4byte	.LLST24
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xb0
	.4byte	.LLST25
	.uleb128 0x2c
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xb0
	.4byte	.LLST26
	.uleb128 0x2c
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xb0
	.4byte	.LLST27
	.uleb128 0x2c
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x41
	.4byte	.LLST28
	.uleb128 0x2e
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x5d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF328
	.byte	0x1
	.byte	0x15
	.4byte	0x18be
	.byte	0x5
	.byte	0x3
	.4byte	gxCurrentShader
	.uleb128 0x2f
	.4byte	.LASF329
	.byte	0x1
	.byte	0x16
	.4byte	0x16e2
	.byte	0x5
	.byte	0x3
	.4byte	currentBumpShaderLight
	.uleb128 0x2f
	.4byte	.LASF330
	.byte	0x1
	.byte	0x17
	.4byte	0xb36
	.byte	0x5
	.byte	0x3
	.4byte	currentBumpShaderEntity
	.uleb128 0x30
	.4byte	.LASF331
	.byte	0x1
	.byte	0xb
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF332
	.byte	0xb
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF333
	.byte	0xb
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF334
	.byte	0xb
	.2byte	0xc2c
	.4byte	0xf85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x32
	.4byte	.LASF335
	.byte	0x10
	.2byte	0x548
	.4byte	0x1bef
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	0x1bf4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1804
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
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
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.4byte	.LFB38-.Ltext0
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
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB39-.Ltext0
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
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB41-.Ltext0
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
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB42-.Ltext0
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
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 168
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-1-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-1-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
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
.LASF257:
	.string	"lightcmd_t"
.LASF46:
	.string	"efrag_s"
.LASF93:
	.string	"efrag_t"
.LASF135:
	.string	"plane"
.LASF217:
	.string	"interval"
.LASF94:
	.string	"model_s"
.LASF103:
	.string	"clipmins"
.LASF197:
	.string	"mipadjust"
.LASF154:
	.string	"lightinstant"
.LASF225:
	.string	"boundingradius"
.LASF110:
	.string	"planes"
.LASF242:
	.string	"aliashdr_t"
.LASF245:
	.string	"mod_alias"
.LASF115:
	.string	"edges"
.LASF136:
	.string	"firstsurface"
.LASF152:
	.string	"binomials"
.LASF329:
	.string	"currentBumpShaderLight"
.LASF260:
	.string	"brightness"
.LASF78:
	.string	"frame_start_time"
.LASF24:
	.string	"numfaces"
.LASF117:
	.string	"nodes"
.LASF304:
	.string	"GXTexObj"
.LASF52:
	.string	"contents"
.LASF201:
	.string	"next"
.LASF222:
	.string	"version"
.LASF293:
	.string	"tshalfangles"
.LASF144:
	.string	"lastblend"
.LASF237:
	.string	"texcoords"
.LASF288:
	.string	"lightpos"
.LASF88:
	.string	"origin1"
.LASF89:
	.string	"origin2"
.LASF297:
	.string	"Mtx44"
.LASF176:
	.string	"anim_max"
.LASF125:
	.string	"clipnodes"
.LASF119:
	.string	"texinfo"
.LASF23:
	.string	"firstface"
.LASF326:
	.string	"mipmap"
.LASF290:
	.string	"lastframeinstant"
.LASF139:
	.string	"lockframe"
.LASF64:
	.string	"update_type"
.LASF86:
	.string	"leafnums"
.LASF99:
	.string	"synctype"
.LASF112:
	.string	"numvertexes"
.LASF159:
	.string	"lightnormalindex"
.LASF63:
	.string	"forcelink"
.LASF57:
	.string	"efrags"
.LASF51:
	.string	"mleaf_s"
.LASF209:
	.string	"mleaf_t"
.LASF182:
	.string	"texturemins"
.LASF91:
	.string	"angles1"
.LASF92:
	.string	"angles2"
.LASF280:
	.string	"aliaslightinstant_s"
.LASF324:
	.string	"GX_GrabEFB"
.LASF122:
	.string	"numsurfedges"
.LASF15:
	.string	"uint32_t"
.LASF120:
	.string	"numsurfaces"
.LASF196:
	.string	"vecs"
.LASF320:
	.string	"_type"
.LASF157:
	.string	"ST_RAND"
.LASF218:
	.string	"bboxmin"
.LASF10:
	.string	"float"
.LASF323:
	.string	"invertOp"
.LASF34:
	.string	"modelindex"
.LASF333:
	.string	"glheight"
.LASF162:
	.string	"mvertex_t"
.LASF60:
	.string	"index"
.LASF6:
	.string	"long long unsigned int"
.LASF210:
	.string	"firstclipnode"
.LASF264:
	.string	"halo"
.LASF127:
	.string	"hulls"
.LASF171:
	.string	"gl_texturenum"
.LASF81:
	.string	"pose1"
.LASF82:
	.string	"pose2"
.LASF37:
	.string	"skin"
.LASF213:
	.string	"clip_maxs"
.LASF227:
	.string	"numskins"
.LASF87:
	.string	"translate_start_time"
.LASF338:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF65:
	.string	"baseline"
.LASF302:
	.string	"GXColor"
.LASF70:
	.string	"efrag"
.LASF268:
	.string	"volumeVerts"
.LASF101:
	.string	"radius"
.LASF287:
	.string	"lastlight"
.LASF272:
	.string	"owner"
.LASF146:
	.string	"lastshadowonly"
.LASF38:
	.string	"effects"
.LASF316:
	.string	"GX_InitWorldBumpShader"
.LASF134:
	.string	"mnode_s"
.LASF151:
	.string	"tangents"
.LASF173:
	.string	"texturechain"
.LASF321:
	.string	"tpMtx"
.LASF39:
	.string	"color"
.LASF188:
	.string	"lightmaptexturenum"
.LASF318:
	.string	"mvMtx"
.LASF212:
	.string	"clip_mins"
.LASF294:
	.string	"colors"
.LASF328:
	.string	"gxCurrentShader"
.LASF310:
	.string	"gxTexmap"
.LASF169:
	.string	"width"
.LASF286:
	.string	"lasthdr"
.LASF277:
	.string	"haloalpha"
.LASF255:
	.string	"asVec"
.LASF174:
	.string	"anim_total"
.LASF299:
	.string	"_wgpipe"
.LASF17:
	.string	"_Bool"
.LASF62:
	.string	"entity_s"
.LASF155:
	.string	"entity_t"
.LASF106:
	.string	"nummodelsurfaces"
.LASF138:
	.string	"_next"
.LASF25:
	.string	"dmodel_t"
.LASF100:
	.string	"flags"
.LASF183:
	.string	"extents"
.LASF177:
	.string	"anim_next"
.LASF248:
	.string	"plane_t"
.LASF20:
	.string	"origin"
.LASF108:
	.string	"submodels"
.LASF198:
	.string	"texture"
.LASF109:
	.string	"numplanes"
.LASF132:
	.string	"entities"
.LASF22:
	.string	"visleafs"
.LASF240:
	.string	"texels"
.LASF69:
	.string	"model"
.LASF47:
	.string	"leaf"
.LASF256:
	.string	"asVoid"
.LASF8:
	.string	"char"
.LASF189:
	.string	"styles"
.LASF26:
	.string	"planenum"
.LASF43:
	.string	"pflags"
.LASF191:
	.string	"cached_dlight"
.LASF83:
	.string	"aliasframeinstant"
.LASF32:
	.string	"vec3_t"
.LASF276:
	.string	"cubescale"
.LASF261:
	.string	"visible"
.LASF44:
	.string	"entity_state_t"
.LASF18:
	.string	"mins"
.LASF53:
	.string	"visframe"
.LASF339:
	.string	"GX_InitGXExt"
.LASF58:
	.string	"firstmarksurface"
.LASF195:
	.string	"medge_t"
.LASF61:
	.string	"ambient_sound_level"
.LASF232:
	.string	"poseverts"
.LASF29:
	.string	"data"
.LASF221:
	.string	"ident"
.LASF199:
	.string	"mtexinfo_t"
.LASF158:
	.string	"synctype_t"
.LASF124:
	.string	"numclipnodes"
.LASF241:
	.string	"frames"
.LASF118:
	.string	"numtexinfo"
.LASF50:
	.string	"entnext"
.LASF14:
	.string	"uint8_t"
.LASF71:
	.string	"syncbase"
.LASF131:
	.string	"lightdata"
.LASF102:
	.string	"clipbox"
.LASF291:
	.string	"extvertices"
.LASF334:
	.string	"causticschain"
.LASF77:
	.string	"topnode"
.LASF80:
	.string	"blend"
.LASF247:
	.string	"modtype_t"
.LASF36:
	.string	"colormap"
.LASF192:
	.string	"samples"
.LASF215:
	.string	"firstpose"
.LASF5:
	.string	"long long int"
.LASF190:
	.string	"cached_light"
.LASF104:
	.string	"clipmaxs"
.LASF42:
	.string	"light_lev"
.LASF269:
	.string	"numVolumeVerts"
.LASF226:
	.string	"eyeposition"
.LASF322:
	.string	"GX_InitShadowShader"
.LASF21:
	.string	"headnode"
.LASF28:
	.string	"dclipnode_t"
.LASF194:
	.string	"cachededgeoffset"
.LASF243:
	.string	"mod_brush"
.LASF228:
	.string	"skinwidth"
.LASF223:
	.string	"scale"
.LASF85:
	.string	"numleafs"
.LASF295:
	.string	"triangleVis"
.LASF309:
	.string	"gxshader_t"
.LASF331:
	.string	"glow_texture_object"
.LASF208:
	.string	"mnode_t"
.LASF311:
	.string	"texnr"
.LASF231:
	.string	"size"
.LASF259:
	.string	"baseColor"
.LASF96:
	.string	"needload"
.LASF165:
	.string	"dist"
.LASF49:
	.string	"entity"
.LASF172:
	.string	"gl_lumitex"
.LASF312:
	.string	"GX_BindGLTex"
.LASF168:
	.string	"texture_s"
.LASF193:
	.string	"texture_t"
.LASF330:
	.string	"currentBumpShaderEntity"
.LASF284:
	.string	"lastvorg"
.LASF170:
	.string	"height"
.LASF180:
	.string	"msurface_s"
.LASF207:
	.string	"msurface_t"
.LASF129:
	.string	"textures"
.LASF220:
	.string	"maliasframedesc_t"
.LASF150:
	.string	"normals"
.LASF133:
	.string	"cache"
.LASF31:
	.string	"vec_t"
.LASF313:
	.string	"GX_SetupGLRender"
.LASF315:
	.string	"hasLuma"
.LASF236:
	.string	"binormals"
.LASF234:
	.string	"commands"
.LASF187:
	.string	"shadowchain"
.LASF141:
	.string	"paliashdr"
.LASF175:
	.string	"anim_min"
.LASF11:
	.string	"long double"
.LASF73:
	.string	"lightTimestamp"
.LASF160:
	.string	"trivertx_t"
.LASF72:
	.string	"skinnum"
.LASF114:
	.string	"numedges"
.LASF235:
	.string	"triangles"
.LASF273:
	.string	"scizz"
.LASF303:
	.string	"_gx_texobj"
.LASF325:
	.string	"clear"
.LASF211:
	.string	"lastclipnode"
.LASF314:
	.string	"GX_InitAmbientShader"
.LASF266:
	.string	"visSurf"
.LASF55:
	.string	"parent"
.LASF262:
	.string	"isStatic"
.LASF2:
	.string	"short int"
.LASF148:
	.string	"shadowonly"
.LASF145:
	.string	"lastent"
.LASF251:
	.string	"coords"
.LASF317:
	.string	"light"
.LASF12:
	.string	"long int"
.LASF48:
	.string	"leafnext"
.LASF166:
	.string	"signbits"
.LASF184:
	.string	"light_s"
.LASF185:
	.string	"light_t"
.LASF179:
	.string	"offsets"
.LASF219:
	.string	"bboxmax"
.LASF300:
	.string	"WGPipe"
.LASF296:
	.string	"aliaslightinstant_t"
.LASF249:
	.string	"GLenum"
.LASF107:
	.string	"numsubmodels"
.LASF298:
	.string	"lightcmd_u"
.LASF283:
	.string	"lasteangles"
.LASF203:
	.string	"numverts"
.LASF250:
	.string	"screenrect_s"
.LASF252:
	.string	"screenrect_t"
.LASF153:
	.string	"triplanes"
.LASF79:
	.string	"frame_interval"
.LASF254:
	.string	"asFloat"
.LASF178:
	.string	"alternate_anims"
.LASF116:
	.string	"numnodes"
.LASF149:
	.string	"vertices"
.LASF56:
	.string	"compressed_vis"
.LASF95:
	.string	"name"
.LASF230:
	.string	"numtris"
.LASF285:
	.string	"lastlradius"
.LASF4:
	.string	"unsigned int"
.LASF327:
	.string	"pixsize"
.LASF113:
	.string	"vertexes"
.LASF281:
	.string	"lasteorg"
.LASF253:
	.string	"asInt"
.LASF45:
	.string	"cache_user_s"
.LASF126:
	.string	"marksurfaces"
.LASF30:
	.string	"cache_user_t"
.LASF7:
	.string	"long unsigned int"
.LASF238:
	.string	"indecies"
.LASF66:
	.string	"msgtime"
.LASF271:
	.string	"numVisSurf"
.LASF40:
	.string	"alpha"
.LASF275:
	.string	"rspeed"
.LASF54:
	.string	"minmaxs"
.LASF332:
	.string	"glwidth"
.LASF200:
	.string	"glpoly_s"
.LASF206:
	.string	"glpoly_t"
.LASF13:
	.string	"byte"
.LASF282:
	.string	"lastlorg"
.LASF336:
	.string	"GNU C 4.6.3"
.LASF164:
	.string	"normal"
.LASF90:
	.string	"rotate_start_time"
.LASF140:
	.string	"updateframe"
.LASF97:
	.string	"type"
.LASF76:
	.string	"trivial_accept"
.LASF1:
	.string	"unsigned char"
.LASF229:
	.string	"skinheight"
.LASF214:
	.string	"hull_t"
.LASF84:
	.string	"brushlightinstant"
.LASF186:
	.string	"polys"
.LASF142:
	.string	"lastpose1"
.LASF143:
	.string	"lastpose2"
.LASF204:
	.string	"neighbours"
.LASF270:
	.string	"lightCmds"
.LASF111:
	.string	"leafs"
.LASF98:
	.string	"numframes"
.LASF123:
	.string	"surfedges"
.LASF41:
	.string	"style"
.LASF59:
	.string	"nummarksurfaces"
.LASF305:
	.string	"gx_noShader"
.LASF308:
	.string	"gx_shadowShader"
.LASF130:
	.string	"visdata"
.LASF258:
	.string	"shadowlight_s"
.LASF279:
	.string	"shadowlight_t"
.LASF128:
	.string	"numtextures"
.LASF337:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_qgxext.c"
.LASF301:
	.string	"_gx_color"
.LASF147:
	.string	"lastpaliashdr"
.LASF68:
	.string	"msg_angles"
.LASF35:
	.string	"frame"
.LASF307:
	.string	"gx_worldBumpShader"
.LASF306:
	.string	"gx_ambientShader"
.LASF74:
	.string	"dlightframe"
.LASF244:
	.string	"mod_sprite"
.LASF0:
	.string	"signed char"
.LASF224:
	.string	"scale_origin"
.LASF121:
	.string	"surfaces"
.LASF19:
	.string	"maxs"
.LASF267:
	.string	"volumeCmds"
.LASF3:
	.string	"short unsigned int"
.LASF202:
	.string	"chain"
.LASF292:
	.string	"tslights"
.LASF335:
	.string	"wgPipe"
.LASF33:
	.string	"angles"
.LASF205:
	.string	"firstvertex"
.LASF156:
	.string	"ST_SYNC"
.LASF289:
	.string	"vieworg"
.LASF233:
	.string	"posedata"
.LASF27:
	.string	"children"
.LASF9:
	.string	"double"
.LASF105:
	.string	"firstmodelsurface"
.LASF274:
	.string	"filtercube"
.LASF239:
	.string	"gl_lumatex"
.LASF319:
	.string	"prMtx"
.LASF278:
	.string	"oldlightorigin"
.LASF246:
	.string	"mod_alias3"
.LASF340:
	.string	"GX_AsGXPrimitiveType"
.LASF163:
	.string	"mplane_s"
.LASF167:
	.string	"mplane_t"
.LASF75:
	.string	"dlightbits"
.LASF67:
	.string	"msg_origins"
.LASF263:
	.string	"castShadow"
.LASF161:
	.string	"position"
.LASF216:
	.string	"numposes"
.LASF137:
	.string	"aliasframeinstant_s"
.LASF16:
	.string	"qboolean"
.LASF181:
	.string	"firstedge"
.LASF265:
	.string	"entvis"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
