	.file	"gl_textures.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl _glGetSize
	.type	_glGetSize, @function
_glGetSize:
.LFB71:
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/gl_textures.c"
	.loc 1 197 0
.LVL0:
	.loc 1 199 0
	cmplwi 7,3,39
	ble- 7,.L21
.L2:
	li 10,0
.LVL1:
	li 11,0
.LVL2:
	li 0,0
.LVL3:
	li 9,0
.LVL4:
	li 8,0
.LVL5:
.L11:
	.loc 1 210 0
	cmpwi 7,4,6405
	beq- 7,.L15
.L23:
	cmplwi 7,4,6405
	ble- 7,.L22
	cmpwi 7,4,6409
	beq- 7,.L17
	xoris 0,4,0xffff
.LVL6:
	cmpwi 7,0,-32695
	beq 7,.L17
	cmpwi 7,4,6406
	bnelr+ 7
	.loc 1 215 0
	stw 9,0(5)
	blr
.LVL7:
.L21:
	.loc 1 199 0
	lis 9,.L10@ha
	slwi 0,3,2
	la 9,.L10@l(9)
	lwzx 11,9,0
	add 11,11,9
	mtctr 11
	bctr
	.section	.rodata
	.align 2
	.align 2
.L10:
	.long .L3-.L10
	.long .L4-.L10
	.long .L5-.L10
	.long .L6-.L10
	.long .L7-.L10
	.long .L2-.L10
	.long .L8-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L2-.L10
	.long .L9-.L10
	.section	".text"
.LVL8:
.L22:
	.loc 1 210 0
	cmpwi 7,4,6403
	beq- 7,.L13
	cmpwi 7,4,6404
	bnelr+ 7
	.loc 1 213 0
	stw 11,0(5)
	blr
.L17:
	.loc 1 217 0
	stw 8,0(5)
	blr
.LVL9:
.L3:
	.loc 1 210 0
	cmpwi 7,4,6405
	.loc 1 201 0
	li 10,0
.LVL10:
	li 11,0
.LVL11:
	li 0,0
.LVL12:
	li 9,0
.LVL13:
	li 8,4
.LVL14:
	.loc 1 210 0
	bne+ 7,.L23
.L15:
	.loc 1 214 0
	stw 0,0(5)
	blr
.LVL15:
.L4:
	.loc 1 202 0
	li 10,0
.LVL16:
	li 11,0
.LVL17:
	li 0,0
.LVL18:
	li 9,0
.LVL19:
	li 8,8
.LVL20:
	b .L11
.LVL21:
.L5:
	.loc 1 203 0
	li 10,0
.LVL22:
	li 11,0
.LVL23:
	li 0,0
.LVL24:
	li 9,4
.LVL25:
	li 8,4
.LVL26:
	b .L11
.LVL27:
.L6:
	.loc 1 204 0
	li 10,0
.LVL28:
	li 11,0
.LVL29:
	li 0,0
.LVL30:
	li 9,8
.LVL31:
	li 8,8
.LVL32:
	b .L11
.LVL33:
.L7:
	.loc 1 205 0
	li 10,5
.LVL34:
	li 11,6
.LVL35:
	li 0,5
.LVL36:
	li 9,0
.LVL37:
	li 8,0
.LVL38:
	b .L11
.LVL39:
.L8:
	.loc 1 199 0
	li 10,8
.LVL40:
	li 11,8
.LVL41:
	li 0,8
.LVL42:
	li 9,8
.LVL43:
	li 8,0
.LVL44:
	b .L11
.LVL45:
.L9:
	li 10,0
.LVL46:
	li 11,0
.LVL47:
	li 0,0
.LVL48:
	li 9,8
.LVL49:
	li 8,0
.LVL50:
	b .L11
.L13:
	.loc 1 212 0
	stw 10,0(5)
	blr
.LFE71:
	.size	_glGetSize, .-_glGetSize
	.align 2
	.globl GX_SetTevCIn
	.type	GX_SetTevCIn, @function
GX_SetTevCIn:
.LFB73:
	.loc 1 269 0
.LVL51:
	.loc 1 272 0
	cmpwi 6,3,5890
	.loc 1 270 0
	li 0,15
	stb 0,0(5)
	.loc 1 272 0
	beq- 6,.L40
	.loc 1 276 0
	addis 9,3,0xffff
	addi 9,9,31552
	cmplwi 7,9,7
	bgt- 7,.L28
	.loc 1 278 0
	addi 0,3,64
	stb 0,0(6)
.L27:
	.loc 1 290 0
	cmpwi 7,4,768
	beq- 7,.L33
.L41:
	cmpwi 7,4,770
	bnelr+ 7
	.loc 1 293 0
	li 0,9
	stb 0,0(5)
	blr
.L28:
	.loc 1 287 0
	li 0,0
	.loc 1 284 0
	li 9,-1
	.loc 1 287 0
	ori 0,0,34167
	.loc 1 284 0
	stb 9,0(6)
	.loc 1 287 0
	cmpw 7,3,0
	beq- 7,.L31
	xoris 0,3,0xffff
	cmpwi 7,0,-31368
	beq 7,.L32
	bnelr+ 6
	b .L27
.L40:
	.loc 1 290 0
	cmpwi 7,4,768
	.loc 1 274 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	stb 0,0(6)
	.loc 1 290 0
	bne+ 7,.L41
.L33:
	.loc 1 292 0
	li 0,8
	stb 0,0(5)
	blr
.L32:
	.loc 1 304 0
	cmpwi 7,4,768
	beq- 7,.L37
	cmpwi 7,4,770
	bnelr+ 7
	.loc 1 307 0
	stb 8,0(5)
	blr
.L31:
	.loc 1 297 0
	cmpwi 7,4,768
	beq- 7,.L35
	cmpwi 7,4,770
	bnelr+ 7
	.loc 1 300 0
	li 0,5
	stb 0,0(5)
	blr
.L35:
	.loc 1 299 0
	li 0,10
	stb 0,0(5)
	blr
.L37:
	.loc 1 306 0
	stb 7,0(5)
	blr
.LFE73:
	.size	GX_SetTevCIn, .-GX_SetTevCIn
	.align 2
	.globl GX_SetTevAIn
	.type	GX_SetTevAIn, @function
GX_SetTevAIn:
.LFB74:
	.loc 1 314 0
.LVL52:
	.loc 1 317 0
	cmpwi 6,3,5890
	.loc 1 315 0
	li 0,7
	stb 0,0(5)
	.loc 1 317 0
	beq- 6,.L52
	.loc 1 321 0
	addis 9,3,0xffff
	addi 9,9,31552
	cmplwi 7,9,7
	bgt- 7,.L46
	.loc 1 323 0
	addi 0,3,64
	stb 0,0(6)
.L45:
	.loc 1 334 0
	li 0,4
	stb 0,0(5)
	blr
.L46:
	.loc 1 332 0
	li 0,0
	.loc 1 329 0
	li 9,-1
	.loc 1 332 0
	ori 0,0,34167
	.loc 1 329 0
	stb 9,0(6)
	.loc 1 332 0
	cmpw 7,3,0
	beq- 7,.L49
	xoris 0,3,0xffff
	cmpwi 7,0,-31368
	beq 7,.L50
	bnelr+ 6
	b .L45
.L52:
	.loc 1 319 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	stb 0,0(6)
	.loc 1 334 0
	li 0,4
	stb 0,0(5)
	blr
.L50:
	.loc 1 336 0
	stb 7,0(5)
	blr
.L49:
	.loc 1 335 0
	li 0,5
	stb 0,0(5)
	blr
.LFE74:
	.size	GX_SetTevAIn, .-GX_SetTevAIn
	.align 2
	.globl GX_IncReg
	.type	GX_IncReg, @function
GX_IncReg:
.LFB75:
	.loc 1 341 0
.LVL53:
	.loc 1 342 0
	cmpwi 7,3,1
	li 0,2
	beq- 7,.L57
	cmpwi 7,3,2
	li 0,1
	bne+ 7,.L57
	li 0,3
.L57:
	.loc 1 349 0
	mr 3,0
.LVL54:
	blr
.LFE75:
	.size	GX_IncReg, .-GX_IncReg
	.align 2
	.globl GX_IncCCReg
	.type	GX_IncCCReg, @function
GX_IncCCReg:
.LFB76:
	.loc 1 352 0
.LVL55:
	.loc 1 353 0
	cmpwi 7,3,1
	li 0,4
	beq- 7,.L64
	cmpwi 7,3,2
	li 0,2
	bne+ 7,.L64
	li 0,6
.L64:
	.loc 1 360 0
	mr 3,0
.LVL56:
	blr
.LFE76:
	.size	GX_IncCCReg, .-GX_IncCCReg
	.align 2
	.globl GX_IncCAReg
	.type	GX_IncCAReg, @function
GX_IncCAReg:
.LFB77:
	.loc 1 363 0
.LVL57:
	.loc 1 364 0
	cmpwi 7,3,1
	li 0,5
	beq- 7,.L71
	cmpwi 7,3,2
	li 0,3
	bne+ 7,.L71
	li 0,7
.L71:
	.loc 1 371 0
	mr 3,0
.LVL58:
	blr
.LFE77:
	.size	GX_IncCAReg, .-GX_IncCAReg
	.align 2
	.globl GX_IncAAReg
	.type	GX_IncAAReg, @function
GX_IncAAReg:
.LFB78:
	.loc 1 374 0
.LVL59:
	.loc 1 375 0
	cmpwi 7,3,1
	li 0,2
	beq- 7,.L78
	cmpwi 7,3,2
	li 0,1
	bne+ 7,.L78
	li 0,3
.L78:
	.loc 1 382 0
	mr 3,0
.LVL60:
	blr
.LFE78:
	.size	GX_IncAAReg, .-GX_IncAAReg
	.align 2
	.globl GX_IncTexMap
	.type	GX_IncTexMap, @function
GX_IncTexMap:
.LFB79:
	.loc 1 385 0
.LVL61:
	.loc 1 386 0
	cmplwi 7,3,7
	ble- 7,.L93
.L82:
	li 3,0
.LVL62:
	blr
.LVL63:
.L93:
	lis 9,.L90@ha
	slwi 0,3,2
	la 9,.L90@l(9)
	lwzx 11,9,0
	add 11,11,9
	mtctr 11
	bctr
	.section	.rodata
	.align 2
	.align 2
.L90:
	.long .L82-.L90
	.long .L83-.L90
	.long .L84-.L90
	.long .L85-.L90
	.long .L86-.L90
	.long .L87-.L90
	.long .L88-.L90
	.long .L89-.L90
	.section	".text"
.L89:
	li 3,7
.LVL64:
	blr
.LVL65:
.L83:
	.loc 1 389 0
	li 3,1
.LVL66:
	blr
.LVL67:
.L84:
	.loc 1 390 0
	li 3,2
.LVL68:
	blr
.LVL69:
.L85:
	.loc 1 391 0
	li 3,3
.LVL70:
	blr
.LVL71:
.L86:
	.loc 1 392 0
	li 3,4
.LVL72:
	blr
.LVL73:
.L87:
	.loc 1 393 0
	li 3,5
.LVL74:
	.loc 1 398 0
	blr
.LVL75:
.L88:
	.loc 1 386 0
	li 3,6
.LVL76:
	blr
.LFE79:
	.size	GX_IncTexMap, .-GX_IncTexMap
	.align 2
	.globl GX_IncTexCoord
	.type	GX_IncTexCoord, @function
GX_IncTexCoord:
.LFB80:
	.loc 1 401 0
.LVL77:
	.loc 1 402 0
	cmplwi 7,3,7
	ble- 7,.L106
.L95:
	li 3,0
.LVL78:
	blr
.LVL79:
.L106:
	lis 9,.L103@ha
	slwi 0,3,2
	la 9,.L103@l(9)
	lwzx 11,9,0
	add 11,11,9
	mtctr 11
	bctr
	.section	.rodata
	.align 2
	.align 2
.L103:
	.long .L95-.L103
	.long .L96-.L103
	.long .L97-.L103
	.long .L98-.L103
	.long .L99-.L103
	.long .L100-.L103
	.long .L101-.L103
	.long .L102-.L103
	.section	".text"
.L102:
	li 3,7
.LVL80:
	blr
.LVL81:
.L96:
	.loc 1 405 0
	li 3,1
.LVL82:
	blr
.LVL83:
.L97:
	.loc 1 406 0
	li 3,2
.LVL84:
	blr
.LVL85:
.L98:
	.loc 1 407 0
	li 3,3
.LVL86:
	blr
.LVL87:
.L99:
	.loc 1 408 0
	li 3,4
.LVL88:
	blr
.LVL89:
.L100:
	.loc 1 409 0
	li 3,5
.LVL90:
	.loc 1 414 0
	blr
.LVL91:
.L101:
	.loc 1 402 0
	li 3,6
.LVL92:
	blr
.LFE80:
	.size	GX_IncTexCoord, .-GX_IncTexCoord
	.align 2
	.globl setAniso
	.type	setAniso, @function
setAniso:
.LFB83:
	.loc 1 785 0
.LVL93:
	.loc 1 786 0
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	fcmpu 7,1,0
	bnl- 7,.L108
	.loc 1 788 0
	lis 9,cur_tex@ha
	li 0,0
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stb 0,22(11)
	blr
.L108:
	.loc 1 790 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,1,0
	bnl- 7,.L112
	.loc 1 792 0
	lis 9,cur_tex@ha
	li 0,1
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stb 0,22(11)
	blr
.L112:
	.loc 1 796 0
	lis 9,cur_tex@ha
	li 0,2
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stb 0,22(11)
	blr
.LFE83:
	.size	setAniso, .-setAniso
	.align 2
	.globl setMaxLod
	.type	setMaxLod, @function
setMaxLod:
.LFB84:
	.loc 1 801 0
.LVL94:
	.loc 1 802 0
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,1,0
	bgt- 7,.L125
	.loc 1 806 0
	lis 9,.LC8@ha
	lfs 0,.LC8@l(9)
	fcmpu 7,1,0
	blt- 7,.L125
	.loc 1 812 0
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stfs 1,12(11)
	blr
.L125:
	.loc 1 808 0
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stfs 0,12(11)
	blr
.LFE84:
	.size	setMaxLod, .-setMaxLod
	.align 2
	.type	scale_s32, @function
scale_s32:
.LFB98:
	.loc 1 1112 0
.LVL95:
	stwu 1,-16(1)
.LCFI0:
	.loc 1 1119 0
	lis 9,0x4330
	xoris 0,3,0x8000
	stw 9,8(1)
	lis 9,.LC10@ha
	stw 0,12(1)
	lfs 0,.LC10@l(9)
	lis 9,.LC11@ha
	lfd 13,8(1)
	.loc 1 1121 0
	addi 1,1,16
	.loc 1 1119 0
	fsub 13,13,0
	lfs 0,.LC11@l(9)
	frsp 13,13
	fmuls 1,13,0
	.loc 1 1121 0
	blr
.LFE98:
	.size	scale_s32, .-scale_s32
	.align 2
	.globl isUsed
	.type	isUsed, @function
isUsed:
.LFB106:
	.loc 1 1403 0
.LVL96:
	.loc 1 1405 0
	lwz 0,8(3)
	.loc 1 1404 0
	addi 4,4,-1
.LVL97:
	.loc 1 1405 0
	cmplw 7,4,0
	li 0,0
	bge- 7,.L134
	.loc 1 1409 0
	lwz 9,4(3)
	lbzx 0,9,4
.L134:
	.loc 1 1410 0
	mr 3,0
.LVL98:
	blr
.LFE106:
	.size	isUsed, .-isUsed
	.align 2
	.globl getTex
	.type	getTex, @function
getTex:
.LFB107:
	.loc 1 1414 0
.LVL99:
	.loc 1 1414 0
	lwz 3,0(3)
.LVL100:
	mulli 4,4,76
.LVL101:
	addi 3,3,-76
	.loc 1 1416 0
	add 3,3,4
	blr
.LFE107:
	.size	getTex, .-getTex
	.align 2
	.globl getCur
	.type	getCur, @function
getCur:
.LFB108:
	.loc 1 1419 0
.LVL102:
	mflr 0
.LCFI1:
	stwu 1,-16(1)
.LCFI2:
	.loc 1 1420 0
	lis 9,cur_tex@ha
	.loc 1 1419 0
	stw 31,12(1)
.LCFI3:
	stw 0,20(1)
.LCFI4:
	stw 30,8(1)
.LCFI5:
	.loc 1 1419 0
	mr 30,3
	.loc 1 1420 0
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	lwz 31,84(11)
	mr 4,31
	bl isUsed
.LVL103:
	cmpwi 7,3,0
	beq- 7,.L139
	.loc 1 1421 0
	lwz 9,0(30)
	mulli 0,31,76
	.loc 1 1425 0
	lwz 30,8(1)
.LVL104:
	.loc 1 1421 0
	addi 9,9,-76
	.loc 1 1425 0
	lwz 31,12(1)
	.loc 1 1421 0
	add 3,9,0
	.loc 1 1425 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LVL105:
.L139:
	lwz 0,20(1)
	.loc 1 1424 0
	lwz 3,0(30)
	.loc 1 1425 0
	lwz 30,8(1)
.LVL106:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	blr
.LFE108:
	.size	getCur, .-getCur
	.align 2
	.globl _glSetEnableTex
	.type	_glSetEnableTex, @function
_glSetEnableTex:
.LFB112:
	.loc 1 1484 0
.LVL107:
	.loc 1 1485 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	stbx 3,9,0
	.loc 1 1486 0
	blr
.LFE112:
	.size	_glSetEnableTex, .-_glSetEnableTex
	.align 2
	.globl _glGetEnableTex
	.type	_glGetEnableTex, @function
_glGetEnableTex:
.LFB113:
	.loc 1 1488 0
.LVL108:
	.loc 1 1488 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	.loc 1 1490 0
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1488 0
	mulli 0,0,108
	.loc 1 1490 0
	lbzx 3,9,0
.LVL109:
	blr
.LFE113:
	.size	_glGetEnableTex, .-_glGetEnableTex
	.align 2
	.globl GX_getTexObj
	.type	GX_getTexObj, @function
GX_getTexObj:
.LFB114:
	.loc 1 1493 0
.LVL110:
	mflr 0
.LCFI6:
	stwu 1,-8(1)
.LCFI7:
	mr 4,3
	.loc 1 1494 0
	lis 3,texMan@ha
.LVL111:
	la 3,texMan@l(3)
	.loc 1 1493 0
	stw 0,12(1)
.LCFI8:
	.loc 1 1494 0
	bl getTex
.LVL112:
	.loc 1 1496 0
	cmpwi 0,3,0
.LVL113:
	bne- 0,.L154
.L148:
	.loc 1 1501 0
	lwz 0,12(1)
	.loc 1 1500 0
	li 3,0
.LVL114:
	.loc 1 1501 0
	addi 1,1,8
	mtlr 0
	blr
.LVL115:
.L154:
	.loc 1 1496 0
	lwz 0,4(3)
	.loc 1 1500 0
	addi 3,3,36
.LVL116:
	.loc 1 1496 0
	cmpwi 7,0,0
	beq- 7,.L148
	.loc 1 1501 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE114:
	.size	GX_getTexObj, .-GX_getTexObj
	.align 2
	.globl convertInternalFormat
	.type	convertInternalFormat, @function
convertInternalFormat:
.LFB116:
	.loc 1 1569 0
.LVL117:
	.loc 1 1571 0
	li 0,0
	ori 0,0,32834
	cmpw 7,3,0
	.loc 1 1570 0
	li 0,1
	stw 0,0(4)
	.loc 1 1571 0
	bgt- 7,.L164
	li 0,0
	ori 0,0,32832
	cmpw 7,3,0
	blt- 7,.L172
.L162:
	.loc 1 1582 0
	li 9,1
.L170:
	.loc 1 1619 0
	mr 3,9
.LVL118:
	blr
.LVL119:
.L164:
	.loc 1 1571 0
	li 0,0
	ori 0,0,32845
	cmpw 7,3,0
	ble- 7,.L173
	li 0,0
	ori 0,0,32854
	cmpw 7,3,0
	ble- 7,.L174
	li 0,0
	li 9,5
	ori 0,0,32855
	cmpw 7,3,0
	beq- 7,.L170
	li 0,0
	ori 0,0,32859
	cmpw 7,3,0
	ble- 7,.L160
.L156:
	.loc 1 1617 0
	li 9,5
	li 0,0
	.loc 1 1619 0
	mr 3,9
.LVL120:
	.loc 1 1617 0
	stw 0,0(4)
	.loc 1 1619 0
	blr
.LVL121:
.L173:
	.loc 1 1571 0
	li 0,0
	ori 0,0,32843
	cmpw 7,3,0
	bge- 7,.L162
	li 0,0
	ori 0,0,32840
	cmpw 7,3,0
	bgt- 7,.L157
	li 0,0
	ori 0,0,32836
	cmpw 7,3,0
	blt- 7,.L158
.L161:
	.loc 1 1618 0
	li 9,3
	.loc 1 1619 0
	mr 3,9
.LVL122:
	blr
.LVL123:
.L172:
	.loc 1 1571 0
	cmpwi 7,3,6408
	beq- 7,.L160
	bgt- 7,.L165
	cmpwi 7,3,3
	beq- 7,.L159
	ble- 7,.L175
	cmpwi 7,3,6406
	beq- 7,.L161
	bgt- 7,.L159
	cmpwi 7,3,4
	bne+ 7,.L156
.L160:
	li 9,6
	.loc 1 1619 0
	mr 3,9
.LVL124:
	blr
.LVL125:
.L174:
	.loc 1 1571 0
	li 0,0
	ori 0,0,32853
	cmpw 7,3,0
	bge- 7,.L160
	li 0,0
	ori 0,0,32847
	cmpw 7,3,0
	blt- 7,.L156
.L159:
	.loc 1 1591 0
	li 9,4
	.loc 1 1619 0
	mr 3,9
.LVL126:
	blr
.LVL127:
.L165:
	.loc 1 1571 0
	cmpwi 7,3,10768
	beq- 7,.L159
	bgt- 7,.L167
	cmpwi 7,3,6409
	beq- 7,.L157
	cmpwi 7,3,6410
	bne+ 7,.L156
.L158:
	.loc 1 1588 0
	li 9,2
	.loc 1 1619 0
	mr 3,9
.LVL128:
	blr
.LVL129:
.L167:
	.loc 1 1571 0
	li 0,0
	ori 0,0,32827
	cmpw 7,3,0
	blt- 7,.L156
	li 0,0
	ori 0,0,32830
	cmpw 7,3,0
	ble- 7,.L161
.L157:
	li 9,0
	.loc 1 1619 0
	mr 3,9
.LVL130:
	blr
.LVL131:
.L175:
	.loc 1 1571 0
	cmpwi 7,3,1
	beq- 7,.L157
	cmpwi 7,3,2
	bne+ 7,.L156
	b .L158
.LFE116:
	.size	convertInternalFormat, .-convertInternalFormat
	.align 2
	.globl IsPowerOfTwo
	.type	IsPowerOfTwo, @function
IsPowerOfTwo:
.LFB118:
	.loc 1 1638 0
.LVL132:
	.loc 1 1638 0
	mr 0,3
	neg 3,3
.LVL133:
	and 3,3,0
	.loc 1 1640 0
	xor 3,3,0
	cntlzw 3,3
	srwi 3,3,5
	blr
.LFE118:
	.size	IsPowerOfTwo, .-IsPowerOfTwo
	.align 2
	.globl glIsTexture
	.type	glIsTexture, @function
glIsTexture:
.LFB125:
	.loc 1 2043 0
.LVL134:
	mflr 0
.LCFI9:
	stwu 1,-8(1)
.LCFI10:
	.loc 1 2044 0
	lis 9,cur_state@ha
	.loc 1 2043 0
	mr 4,3
	stw 0,12(1)
.LCFI11:
	.loc 1 2044 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L179
.LVL135:
	lis 4,.LC14@ha
.LVL136:
	li 3,1282
.LVL137:
	la 4,.LC14@l(4)
	li 5,2044
	bl _glSetErrorEx
	.loc 1 2047 0
	lwz 0,12(1)
	.loc 1 2044 0
	li 3,0
	.loc 1 2047 0
	addi 1,1,8
	mtlr 0
	blr
.LVL138:
.L179:
	.loc 1 2046 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl isUsed
.LVL139:
	.loc 1 2047 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE125:
	.size	glIsTexture, .-glIsTexture
	.align 2
	.globl CorrectGLtype
	.type	CorrectGLtype, @function
CorrectGLtype:
.LFB120:
	.loc 1 1667 0
.LVL140:
	.loc 1 1668 0
	cmplwi 7,4,6410
	.loc 1 1667 0
	mflr 0
.LCFI12:
	stwu 1,-8(1)
.LCFI13:
	stw 0,12(1)
.LCFI14:
	.loc 1 1668 0
	bgt- 7,.L186
	cmplwi 7,4,6403
	blt- 7,.L197
.L185:
	.loc 1 1687 0
	cmplwi 7,3,32822
	ble- 7,.L198
	cmplwi 7,3,33634
	blt- 7,.L188
	cmplwi 7,3,33636
	ble- 7,.L190
	cmplwi 7,3,33640
	bgt- 7,.L188
.L191:
	.loc 1 1711 0
	cmpwi 7,4,6408
	beq- 7,.L189
	xoris 0,4,0xffff
	cmpwi 7,0,-32543
	beq 7,.L189
	.loc 1 1717 0
	lis 4,.LC14@ha
.LVL141:
	li 3,1280
.LVL142:
	la 4,.LC14@l(4)
	li 5,1717
	bl _glSetErrorEx
	li 3,0
	b .L187
.LVL143:
.L186:
	.loc 1 1668 0
	addis 9,4,0xffff
	addi 9,9,32544
	cmplwi 7,9,1
	ble- 7,.L185
.L184:
	.loc 1 1683 0
	lis 4,.LC14@ha
.LVL144:
	li 3,1280
.LVL145:
	la 4,.LC14@l(4)
	li 5,1683
	bl _glSetErrorEx
	li 3,0
.L187:
	.loc 1 1737 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL146:
.L198:
	.loc 1 1687 0
	cmplwi 7,3,32819
	bge- 7,.L191
	cmplwi 7,3,5120
	blt- 7,.L188
	cmplwi 7,3,5126
	bgt- 7,.L199
.L189:
	.loc 1 1737 0
	lwz 0,12(1)
	.loc 1 1733 0
	li 3,1
.LVL147:
	.loc 1 1737 0
	addi 1,1,8
	mtlr 0
	blr
.LVL148:
.L197:
	.loc 1 1668 0
	cmpwi 7,4,6400
	bne+ 7,.L184
	b .L185
.L199:
	.loc 1 1687 0
	xoris 0,3,0xffff
	cmpwi 7,0,-32718
	beq 7,.L190
.L188:
	.loc 1 1732 0
	lis 4,.LC14@ha
.LVL149:
	li 3,1280
.LVL150:
	la 4,.LC14@l(4)
	li 5,1732
	bl _glSetErrorEx
	.loc 1 1737 0
	lwz 0,12(1)
	.loc 1 1732 0
	li 3,0
	.loc 1 1737 0
	addi 1,1,8
	mtlr 0
	blr
.LVL151:
.L190:
	.loc 1 1693 0
	cmpwi 7,4,6407
	beq- 7,.L189
	.loc 1 1699 0
	lis 4,.LC14@ha
.LVL152:
	li 3,1280
.LVL153:
	la 4,.LC14@l(4)
	li 5,1699
	bl _glSetErrorEx
	.loc 1 1737 0
	lwz 0,12(1)
	.loc 1 1699 0
	li 3,0
	.loc 1 1737 0
	addi 1,1,8
	mtlr 0
	blr
.LFE120:
	.size	CorrectGLtype, .-CorrectGLtype
	.align 2
	.globl glSetComAlpha
	.type	glSetComAlpha, @function
glSetComAlpha:
.LFB93:
	.loc 1 980 0
.LVL154:
	.loc 1 981 0
	cmpwi 7,3,8448
	.loc 1 980 0
	mflr 0
.LCFI15:
	stwu 1,-8(1)
.LCFI16:
	stw 0,12(1)
.LCFI17:
	.loc 1 981 0
	beq- 7,.L202
	cmplwi 7,3,8448
	ble- 7,.L206
	xoris 0,3,0xffff
	cmpwi 7,0,-31513
	beq 7,.L202
	cmplwi 7,3,34023
	blt- 7,.L201
	addis 9,3,0xffff
	addi 9,9,31372
	cmplwi 7,9,1
	bgt- 7,.L201
.L202:
	.loc 1 989 0
	stw 3,0(4)
.L201:
	.loc 1 991 0
	lis 4,.LC14@ha
.LVL155:
	li 3,1280
.LVL156:
	la 4,.LC14@l(4)
	li 5,991
	bl _glSetErrorEx
	.loc 1 994 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL157:
.L206:
	.loc 1 981 0
	cmpwi 7,3,260
	beq- 7,.L202
	cmpwi 7,3,7681
	beq- 7,.L202
	.loc 1 991 0
	lis 4,.LC14@ha
.LVL158:
	li 3,1280
.LVL159:
	la 4,.LC14@l(4)
	li 5,991
	bl _glSetErrorEx
	.loc 1 994 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE93:
	.size	glSetComAlpha, .-glSetComAlpha
	.align 2
	.globl glSetComRGB
	.type	glSetComRGB, @function
glSetComRGB:
.LFB92:
	.loc 1 962 0
.LVL160:
	.loc 1 963 0
	cmpwi 7,3,8448
	.loc 1 962 0
	mflr 0
.LCFI18:
	stwu 1,-8(1)
.LCFI19:
	stw 0,12(1)
.LCFI20:
	.loc 1 963 0
	beq- 7,.L209
	cmplwi 7,3,8448
	ble- 7,.L213
	xoris 0,3,0xffff
	cmpwi 7,0,-31513
	beq 7,.L209
	cmplwi 7,3,34023
	blt- 7,.L208
	addis 9,3,0xffff
	addi 9,9,31372
	cmplwi 7,9,1
	bgt- 7,.L208
.L209:
	.loc 1 971 0
	stw 3,0(4)
.L208:
	.loc 1 975 0
	lis 4,.LC14@ha
.LVL161:
	li 3,1280
.LVL162:
	la 4,.LC14@l(4)
	li 5,975
	bl _glSetErrorEx
	.loc 1 977 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL163:
.L213:
	.loc 1 963 0
	cmpwi 7,3,260
	beq- 7,.L209
	cmpwi 7,3,7681
	beq- 7,.L209
	.loc 1 975 0
	lis 4,.LC14@ha
.LVL164:
	li 3,1280
.LVL165:
	la 4,.LC14@l(4)
	li 5,975
	bl _glSetErrorEx
	.loc 1 977 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE92:
	.size	glSetComRGB, .-glSetComRGB
	.align 2
	.globl glSetAlphaOp
	.type	glSetAlphaOp, @function
glSetAlphaOp:
.LFB91:
	.loc 1 950 0
.LVL166:
	.loc 1 951 0
	cmpwi 7,3,770
	.loc 1 950 0
	mflr 0
.LCFI21:
	stwu 1,-8(1)
.LCFI22:
	stw 0,12(1)
.LCFI23:
	.loc 1 951 0
	bne+ 7,.L215
	.loc 1 954 0
	stw 3,0(4)
.L215:
	.loc 1 957 0
	lis 4,.LC14@ha
.LVL167:
	li 3,1280
.LVL168:
	la 4,.LC14@l(4)
	li 5,957
	bl _glSetErrorEx
	.loc 1 959 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE91:
	.size	glSetAlphaOp, .-glSetAlphaOp
	.align 2
	.globl glSetRGBOp
	.type	glSetRGBOp, @function
glSetRGBOp:
.LFB90:
	.loc 1 936 0
.LVL169:
	.loc 1 937 0
	cmpwi 7,3,768
	.loc 1 936 0
	mflr 0
.LCFI24:
	stwu 1,-8(1)
.LCFI25:
	stw 0,12(1)
.LCFI26:
	.loc 1 937 0
	beq- 7,.L220
	cmpwi 7,3,770
	beq- 7,.L220
	.loc 1 945 0
	lis 4,.LC14@ha
.LVL170:
	li 3,1280
.LVL171:
	la 4,.LC14@l(4)
	li 5,945
	bl _glSetErrorEx
	.loc 1 947 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL172:
.L220:
	.loc 1 941 0
	stw 3,0(4)
	.loc 1 945 0
	lis 4,.LC14@ha
.LVL173:
	la 4,.LC14@l(4)
	li 3,1280
.LVL174:
	li 5,945
	bl _glSetErrorEx
	.loc 1 947 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE90:
	.size	glSetRGBOp, .-glSetRGBOp
	.align 2
	.globl glSetSrc
	.type	glSetSrc, @function
glSetSrc:
.LFB89:
	.loc 1 917 0
.LVL175:
	mflr 0
.LCFI27:
	stwu 1,-8(1)
.LCFI28:
	.loc 1 918 0
	addis 9,3,0xffff
	.loc 1 917 0
	stw 0,12(1)
.LCFI29:
	.loc 1 918 0
	addi 0,9,31552
	cmplwi 7,0,7
	bgt- 7,.L223
	.loc 1 933 0
	lwz 0,12(1)
	addi 1,1,8
	.loc 1 920 0
	stw 3,0(4)
	.loc 1 933 0
	mtlr 0
	blr
.L223:
	.loc 1 923 0
	cmpwi 7,3,5890
	beq- 7,.L227
	cmplwi 7,3,5890
	bge- 7,.L229
.L226:
	.loc 1 931 0
	lis 4,.LC14@ha
.LVL176:
	li 3,1280
.LVL177:
	la 4,.LC14@l(4)
	li 5,931
	bl _glSetErrorEx
.L230:
	.loc 1 933 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL178:
.L229:
	.loc 1 923 0
	addi 0,9,31370
	cmplwi 7,0,2
	bgt- 7,.L226
.L227:
	.loc 1 929 0
	stw 3,0(4)
	.loc 1 931 0
	lis 4,.LC14@ha
.LVL179:
	la 4,.LC14@l(4)
	li 3,1280
.LVL180:
	li 5,931
	bl _glSetErrorEx
	b .L230
.LFE89:
	.size	glSetSrc, .-glSetSrc
	.align 2
	.globl glSetTexEnvMode
	.type	glSetTexEnvMode, @function
glSetTexEnvMode:
.LFB88:
	.loc 1 901 0
.LVL181:
	.loc 1 902 0
	cmplwi 7,3,8449
	.loc 1 901 0
	mflr 0
.LCFI30:
	stwu 1,-8(1)
.LCFI31:
	stw 0,12(1)
.LCFI32:
	.loc 1 902 0
	bgt- 7,.L234
	cmplwi 7,3,8448
	blt- 7,.L238
.L233:
	.loc 1 914 0
	lwz 0,12(1)
	addi 1,1,8
	.loc 1 909 0
	stw 3,0(4)
	.loc 1 914 0
	mtlr 0
	blr
.L234:
	.loc 1 902 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31376
	beq 7,.L233
	.loc 1 912 0
	lis 4,.LC14@ha
.LVL182:
	li 3,1280
.LVL183:
	la 4,.LC14@l(4)
	li 5,912
	bl _glSetErrorEx
.L239:
	.loc 1 914 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL184:
.L238:
	.loc 1 902 0
	cmpwi 7,3,260
	beq- 7,.L233
	cmpwi 7,3,7681
	beq- 7,.L233
	.loc 1 912 0
	lis 4,.LC14@ha
.LVL185:
	li 3,1280
.LVL186:
	la 4,.LC14@l(4)
	li 5,912
	bl _glSetErrorEx
	b .L239
.LFE88:
	.size	glSetTexEnvMode, .-glSetTexEnvMode
	.align 2
	.globl glGetTexLevelParameteriv
	.type	glGetTexLevelParameteriv, @function
glGetTexLevelParameteriv:
.LFB72:
	.loc 1 225 0
.LVL187:
	mflr 0
.LCFI33:
	stwu 1,-16(1)
.LCFI34:
	.loc 1 226 0
	lis 9,cur_state@ha
	.loc 1 225 0
	stw 30,8(1)
.LCFI35:
	mr 30,4
	stw 0,20(1)
.LCFI36:
	stw 31,12(1)
.LCFI37:
	.loc 1 225 0
	mr 31,6
	.loc 1 226 0
	lwz 0,cur_state@l(9)
	andi. 11,0,1
	bne- 0,.L270
.LVL188:
	.loc 1 228 0
	cmpwi 7,6,0
	beq- 7,.L271
.LVL189:
	.loc 1 234 0
	addis 9,3,0xffff
	addi 9,9,32669
	cmplwi 7,9,1
	ble- 7,.L246
	xoris 0,3,0xffff
	cmpwi 7,0,-32656
	beq 7,.L246
	.loc 1 249 0
	xoris 0,5,0xffff
	cmpwi 7,0,-32675
	beq 7,.L259
	cmplwi 7,5,32861
	ble- 7,.L272
	xoris 0,5,0xffff
	cmpwi 7,0,-32672
	beq 7,.L262
	cmplwi 7,5,32864
	bgt- 7,.L267
	xoris 0,5,0xffff
	cmpwi 7,0,-32674
	beq 7,.L260
	xoris 0,5,0xffff
	cmpwi 7,0,-32673
	beq 7,.L273
.L253:
	.loc 1 263 0
	lis 4,.LC14@ha
	li 3,1281
.LVL190:
	la 4,.LC14@l(4)
	li 5,263
.LVL191:
	bl _glSetErrorEx
.LVL192:
	b .L268
.LVL193:
.L246:
	.loc 1 236 0
	cmpwi 7,5,4097
	beq- 7,.L251
	xoris 0,5,0xffff
	cmpwi 7,0,-32655
	beq 7,.L264
	cmpwi 7,5,4096
	beq- 7,.L274
	.loc 1 242 0
	stw 11,0(31)
	.loc 1 243 0
	lis 4,.LC14@ha
	la 4,.LC14@l(4)
	li 3,1281
.LVL194:
	li 5,243
.LVL195:
	bl _glSetErrorEx
.LVL196:
	b .L268
.LVL197:
.L270:
	.loc 1 226 0
	lis 4,.LC14@ha
	li 3,1282
.LVL198:
	la 4,.LC14@l(4)
	li 5,226
.LVL199:
	bl _glSetErrorEx
.LVL200:
.L268:
	.loc 1 266 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL201:
	lwz 31,12(1)
.LVL202:
	mtlr 0
	addi 1,1,16
	blr
.LVL203:
.L272:
	.loc 1 249 0
	cmpwi 7,5,4099
	beq- 7,.L256
	cmplwi 7,5,4099
	ble- 7,.L275
	cmpwi 7,5,4101
	beq- 7,.L257
	xoris 0,5,0xffff
	cmpwi 7,0,-32676
	bne 7,.L253
	.loc 1 256 0
	lis 3,texMan@ha
.LVL204:
	la 3,texMan@l(3)
	bl getCur
.LVL205:
	mr 5,31
	lbz 3,3(3)
	li 4,6403
.LVL206:
.L269:
	.loc 1 266 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL207:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.loc 1 261 0
	b _glGetSize
.LVL208:
.L251:
	.loc 1 239 0
	lis 3,texMan@ha
.LVL209:
	la 3,texMan@l(3)
	bl getCur
.LVL210:
	lwz 0,24(3)
	sraw 0,0,30
	stw 0,0(31)
	b .L268
.LVL211:
.L267:
	.loc 1 249 0
	xoris 0,5,0xffff
	cmpwi 7,0,-32671
	beq 7,.L263
	xoris 0,5,0xffff
	cmpwi 7,0,-32655
	bne 7,.L253
.L264:
	.loc 1 253 0
	li 0,1
	stw 0,0(31)
	b .L268
.L274:
	.loc 1 238 0
	lis 3,texMan@ha
.LVL212:
	la 3,texMan@l(3)
	bl getCur
.LVL213:
	lwz 0,20(3)
	sraw 0,0,30
	stw 0,0(31)
	b .L268
.LVL214:
.L271:
	.loc 1 230 0
	lis 4,.LC14@ha
	li 3,1281
.LVL215:
	la 4,.LC14@l(4)
	li 5,230
.LVL216:
	bl _glSetErrorEx
.LVL217:
	b .L268
.LVL218:
.L275:
	.loc 1 249 0
	cmpwi 7,5,4096
	beq- 7,.L254
	cmpwi 7,5,4097
	bne+ 7,.L253
	.loc 1 252 0
	lis 3,texMan@ha
.LVL219:
	la 3,texMan@l(3)
	bl getCur
.LVL220:
	lwz 0,24(3)
	stw 0,0(31)
	b .L268
.LVL221:
.L262:
	.loc 1 260 0
	lis 3,texMan@ha
.LVL222:
	la 3,texMan@l(3)
	bl getCur
.LVL223:
	mr 5,31
	lbz 3,3(3)
	li 4,6409
	b .L269
.LVL224:
.L257:
	.loc 1 255 0
	stw 11,0(6)
	b .L268
.L273:
	.loc 1 259 0
	lis 3,texMan@ha
.LVL225:
	la 3,texMan@l(3)
	bl getCur
.LVL226:
	mr 5,31
	lbz 3,3(3)
	li 4,6406
	b .L269
.LVL227:
.L260:
	.loc 1 258 0
	lis 3,texMan@ha
.LVL228:
	la 3,texMan@l(3)
	bl getCur
.LVL229:
	mr 5,31
	lbz 3,3(3)
	li 4,6405
	b .L269
.LVL230:
.L256:
	.loc 1 254 0
	lis 3,texMan@ha
.LVL231:
	la 3,texMan@l(3)
	bl getCur
.LVL232:
	lwz 0,68(3)
	stw 0,0(31)
	b .L268
.LVL233:
.L259:
	.loc 1 257 0
	lis 3,texMan@ha
.LVL234:
	la 3,texMan@l(3)
	bl getCur
.LVL235:
	mr 5,31
	lbz 3,3(3)
	li 4,6404
	b .L269
.LVL236:
.L263:
	.loc 1 261 0
	lis 3,texMan@ha
.LVL237:
	la 3,texMan@l(3)
	bl getCur
.LVL238:
	li 4,0
	lbz 3,3(3)
	ori 4,4,32841
	mr 5,31
	b .L269
.LVL239:
.L254:
	.loc 1 251 0
	lis 3,texMan@ha
.LVL240:
	la 3,texMan@l(3)
	bl getCur
.LVL241:
	lwz 0,20(3)
	stw 0,0(31)
	b .L268
.LFE72:
	.size	glGetTexLevelParameteriv, .-glGetTexLevelParameteriv
	.align 2
	.globl GL2GX_Filter
	.type	GL2GX_Filter, @function
GL2GX_Filter:
.LFB70:
	.loc 1 146 0
.LVL242:
	.loc 1 147 0
	cmpwi 7,3,9984
	.loc 1 146 0
	mflr 0
.LCFI38:
	stwu 1,-8(1)
.LCFI39:
	stw 0,12(1)
.LCFI40:
	.loc 1 147 0
	beq- 7,.L280
	ble- 7,.L287
	cmpwi 7,3,9986
	beq- 7,.L282
	bge- 7,.L288
	.loc 1 152 0
	li 0,3
	stb 0,0(4)
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L287:
	.loc 1 147 0
	cmpwi 7,3,9728
	beq- 7,.L278
	cmpwi 7,3,9729
	beq- 7,.L289
.L277:
	.loc 1 156 0
	lis 4,.LC14@ha
.LVL243:
	li 3,1280
.LVL244:
	la 4,.LC14@l(4)
	li 5,156
	bl _glSetErrorEx
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL245:
.L288:
	.loc 1 147 0
	cmpwi 7,3,9987
	bne+ 7,.L277
	.loc 1 154 0
	li 0,5
	stb 0,0(4)
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L289:
	.loc 1 150 0
	li 0,1
	stb 0,0(4)
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L278:
	.loc 1 149 0
	li 0,0
	stb 0,0(4)
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L282:
	.loc 1 153 0
	li 0,4
	stb 0,0(4)
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L280:
	.loc 1 151 0
	li 0,2
	stb 0,0(4)
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE70:
	.size	GL2GX_Filter, .-GL2GX_Filter
	.align 2
	.globl GL2GX_Wrap
	.type	GL2GX_Wrap, @function
GL2GX_Wrap:
.LFB69:
	.loc 1 133 0
.LVL246:
	.loc 1 134 0
	cmpwi 7,3,10497
	.loc 1 133 0
	mflr 0
.LCFI41:
	stwu 1,-8(1)
.LCFI42:
	stw 0,12(1)
.LCFI43:
	.loc 1 134 0
	beq- 7,.L293
	xoris 0,3,0xffff
	cmpwi 7,0,-32465
	beq 7,.L292
	cmpwi 7,3,10496
	beq- 7,.L292
	.loc 1 140 0
	lis 4,.LC14@ha
.LVL247:
	li 3,1280
.LVL248:
	la 4,.LC14@l(4)
	li 5,140
	bl _glSetErrorEx
	.loc 1 143 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL249:
.L292:
	.loc 1 137 0
	li 0,0
	stb 0,0(4)
	.loc 1 143 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L293:
	.loc 1 138 0
	li 0,1
	stb 0,0(4)
	.loc 1 143 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE69:
	.size	GL2GX_Wrap, .-GL2GX_Wrap
	.align 2
	.globl _glGetPixelStore
	.type	_glGetPixelStore, @function
_glGetPixelStore:
.LFB68:
	.loc 1 111 0
.LVL250:
	mflr 0
.LCFI44:
	stwu 1,-8(1)
.LCFI45:
	stw 0,12(1)
.LCFI46:
	.loc 1 112 0
	addi 0,3,-3312
	cmplwi 7,0,21
	ble- 7,.L313
.L297:
	.loc 1 127 0
	lis 4,.LC14@ha
.LVL251:
	li 3,1280
.LVL252:
	la 4,.LC14@l(4)
	li 5,127
	bl _glSetErrorEx
.LVL253:
.L312:
	.loc 1 130 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L313:
	.loc 1 112 0
	lis 9,.L310@ha
	slwi 0,0,2
	la 9,.L310@l(9)
	lwzx 11,9,0
	add 11,11,9
	mtctr 11
	bctr
	.section	.rodata
	.align 2
	.align 2
.L310:
	.long .L298-.L310
	.long .L299-.L310
	.long .L300-.L310
	.long .L301-.L310
	.long .L302-.L310
	.long .L303-.L310
	.long .L297-.L310
	.long .L297-.L310
	.long .L297-.L310
	.long .L297-.L310
	.long .L297-.L310
	.long .L297-.L310
	.long .L297-.L310
	.long .L297-.L310
	.long .L297-.L310
	.long .L297-.L310
	.long .L304-.L310
	.long .L305-.L310
	.long .L306-.L310
	.long .L307-.L310
	.long .L308-.L310
	.long .L309-.L310
	.section	".text"
.L309:
	.loc 1 119 0
	lis 9,pack+16@ha
	lwz 0,pack+16@l(9)
	stw 0,0(4)
	b .L312
.L298:
	.loc 1 120 0
	lis 9,unpack@ha
	lbz 0,unpack@l(9)
	stw 0,0(4)
	b .L312
.L299:
	.loc 1 121 0
	lis 9,unpack+1@ha
	lbz 0,unpack+1@l(9)
	stw 0,0(4)
	b .L312
.L300:
	.loc 1 122 0
	lis 9,unpack+4@ha
	lwz 0,unpack+4@l(9)
	stw 0,0(4)
	b .L312
.L301:
	.loc 1 123 0
	lis 9,unpack+8@ha
	lwz 0,unpack+8@l(9)
	stw 0,0(4)
	b .L312
.L302:
	.loc 1 124 0
	lis 9,unpack+12@ha
	lwz 0,unpack+12@l(9)
	stw 0,0(4)
	b .L312
.L303:
	.loc 1 125 0
	lis 9,unpack+16@ha
	lwz 0,unpack+16@l(9)
	stw 0,0(4)
	b .L312
.L304:
	.loc 1 114 0
	lis 9,pack@ha
	lbz 0,pack@l(9)
	stw 0,0(4)
	b .L312
.L305:
	.loc 1 115 0
	lis 9,pack+1@ha
	lbz 0,pack+1@l(9)
	stw 0,0(4)
	b .L312
.L306:
	.loc 1 116 0
	lis 9,pack+4@ha
	lwz 0,pack+4@l(9)
	stw 0,0(4)
	b .L312
.L307:
	.loc 1 117 0
	lis 9,pack+8@ha
	lwz 0,pack+8@l(9)
	stw 0,0(4)
	b .L312
.L308:
	.loc 1 118 0
	lis 9,pack+12@ha
	lwz 0,pack+12@l(9)
	stw 0,0(4)
	b .L312
.LFE68:
	.size	_glGetPixelStore, .-_glGetPixelStore
	.align 2
	.globl glPixelStorei
	.type	glPixelStorei, @function
glPixelStorei:
.LFB67:
	.loc 1 22 0
.LVL254:
	mflr 0
.LCFI47:
	stwu 1,-16(1)
.LCFI48:
	.loc 1 23 0
	lis 9,cur_state@ha
	.loc 1 22 0
	stw 31,12(1)
.LCFI49:
	mr 31,4
	stw 0,20(1)
.LCFI50:
	.loc 1 23 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L349
.LVL255:
	.loc 1 25 0
	addi 0,3,-3312
	cmplwi 7,0,21
	ble- 7,.L350
.L318:
	.loc 1 104 0
	lis 4,.LC14@ha
	li 3,1280
.LVL256:
	la 4,.LC14@l(4)
	li 5,104
	bl _glSetErrorEx
	b .L348
.LVL257:
.L350:
	.loc 1 25 0
	lis 9,.L331@ha
	slwi 0,0,2
	la 9,.L331@l(9)
	lwzx 11,9,0
	add 11,11,9
	mtctr 11
	bctr
	.section	.rodata
	.align 2
	.align 2
.L331:
	.long .L319-.L331
	.long .L320-.L331
	.long .L321-.L331
	.long .L322-.L331
	.long .L323-.L331
	.long .L324-.L331
	.long .L318-.L331
	.long .L318-.L331
	.long .L318-.L331
	.long .L318-.L331
	.long .L318-.L331
	.long .L318-.L331
	.long .L318-.L331
	.long .L318-.L331
	.long .L318-.L331
	.long .L318-.L331
	.long .L325-.L331
	.long .L326-.L331
	.long .L327-.L331
	.long .L328-.L331
	.long .L329-.L331
	.long .L330-.L331
	.section	".text"
.L349:
	.loc 1 23 0
	lis 4,.LC14@ha
	li 3,1282
.LVL258:
	la 4,.LC14@l(4)
	li 5,23
	bl _glSetErrorEx
.LVL259:
.L348:
	.loc 1 107 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL260:
	addi 1,1,16
	mtlr 0
	blr
.LVL261:
.L330:
	.loc 1 54 0
	cmplwi 7,4,8
	bgt- 7,.L338
.LVL262:
	li 0,1
	slw 0,0,4
	andi. 9,0,278
	bne- 0,.L339
.L338:
	.loc 1 61 0
	lis 4,.LC14@ha
.LVL263:
	li 3,1281
.LVL264:
	la 4,.LC14@l(4)
	li 5,61
	bl _glSetErrorEx
.LVL265:
.L339:
	.loc 1 63 0
	lis 9,pack+16@ha
	stw 31,pack+16@l(9)
	b .L348
.L329:
	.loc 1 46 0
	cmpwi 7,4,0
	blt- 7,.L351
.LVL266:
	.loc 1 51 0
	lis 9,pack+12@ha
	stw 4,pack+12@l(9)
	b .L348
.LVL267:
.L328:
	.loc 1 38 0
	cmpwi 7,4,0
	blt- 7,.L352
.LVL268:
	.loc 1 43 0
	lis 9,pack+8@ha
	stw 4,pack+8@l(9)
	b .L348
.LVL269:
.L327:
	.loc 1 30 0
	cmpwi 7,4,0
	blt- 7,.L353
.LVL270:
	.loc 1 35 0
	lis 9,pack+4@ha
	stw 4,pack+4@l(9)
	b .L348
.LVL271:
.L326:
	.loc 1 28 0
	addic 9,4,-1
	subfe 0,9,4
	lis 9,pack+1@ha
	stb 0,pack+1@l(9)
	b .L348
.L325:
	.loc 1 27 0
	addic 9,4,-1
	subfe 0,9,4
	lis 9,pack@ha
	stb 0,pack@l(9)
	b .L348
.L324:
	.loc 1 92 0
	cmplwi 7,4,8
	bgt- 7,.L346
.LVL272:
	li 0,1
	slw 0,0,4
	andi. 9,0,278
	bne- 0,.L347
.L346:
	.loc 1 99 0
	lis 4,.LC14@ha
.LVL273:
	li 3,1281
.LVL274:
	la 4,.LC14@l(4)
	li 5,99
	bl _glSetErrorEx
.LVL275:
.L347:
	.loc 1 101 0
	lis 9,unpack+16@ha
	stw 31,unpack+16@l(9)
	b .L348
.L323:
	.loc 1 84 0
	cmpwi 7,4,0
	blt- 7,.L354
.LVL276:
	.loc 1 89 0
	lis 9,unpack+12@ha
	stw 4,unpack+12@l(9)
	b .L348
.LVL277:
.L322:
	.loc 1 76 0
	cmpwi 7,4,0
	blt- 7,.L355
.LVL278:
	.loc 1 81 0
	lis 9,unpack+8@ha
	stw 4,unpack+8@l(9)
	b .L348
.LVL279:
.L321:
	.loc 1 68 0
	cmpwi 7,4,0
	blt- 7,.L356
.LVL280:
	.loc 1 73 0
	lis 9,unpack+4@ha
	stw 4,unpack+4@l(9)
	b .L348
.LVL281:
.L320:
	.loc 1 66 0
	addic 9,4,-1
	subfe 0,9,4
	lis 9,unpack+1@ha
	stb 0,unpack+1@l(9)
	b .L348
.L319:
	.loc 1 65 0
	addic 9,4,-1
	subfe 0,9,4
	lis 9,unpack@ha
	stb 0,unpack@l(9)
	b .L348
.LVL282:
.L356:
	.loc 1 70 0
	lis 4,.LC14@ha
.LVL283:
	li 3,1281
.LVL284:
	la 4,.LC14@l(4)
	li 5,70
	bl _glSetErrorEx
	b .L348
.LVL285:
.L355:
	.loc 1 78 0
	lis 4,.LC14@ha
.LVL286:
	li 3,1281
.LVL287:
	la 4,.LC14@l(4)
	li 5,78
	bl _glSetErrorEx
	b .L348
.LVL288:
.L354:
	.loc 1 86 0
	lis 4,.LC14@ha
.LVL289:
	li 3,1281
.LVL290:
	la 4,.LC14@l(4)
	li 5,86
	bl _glSetErrorEx
	b .L348
.LVL291:
.L353:
	.loc 1 32 0
	lis 4,.LC14@ha
.LVL292:
	li 3,1281
.LVL293:
	la 4,.LC14@l(4)
	li 5,32
	bl _glSetErrorEx
	b .L348
.LVL294:
.L352:
	.loc 1 40 0
	lis 4,.LC14@ha
.LVL295:
	li 3,1281
.LVL296:
	la 4,.LC14@l(4)
	li 5,40
	bl _glSetErrorEx
	b .L348
.LVL297:
.L351:
	.loc 1 48 0
	lis 4,.LC14@ha
.LVL298:
	li 3,1281
.LVL299:
	la 4,.LC14@l(4)
	li 5,48
	bl _glSetErrorEx
	b .L348
.LFE67:
	.size	glPixelStorei, .-glPixelStorei
	.align 2
	.globl glPixelStoref
	.type	glPixelStoref, @function
glPixelStoref:
.LFB66:
	.loc 1 17 0
.LVL300:
	stwu 1,-16(1)
.LCFI51:
	.loc 1 18 0
	fctiwz 0,1
.LVL301:
	addi 9,1,8
	stfiwx 0,0,9
	lwz 4,8(1)
	.loc 1 19 0
	addi 1,1,16
	.loc 1 18 0
	b glPixelStorei
.LVL302:
.LFE66:
	.size	glPixelStoref, .-glPixelStoref
	.align 2
	.globl deleteTex
	.type	deleteTex, @function
deleteTex:
.LFB105:
	.loc 1 1372 0
.LVL303:
	mflr 0
.LCFI52:
	stwu 1,-24(1)
.LCFI53:
	stw 29,12(1)
.LCFI54:
	.loc 1 1373 0
	addi 29,4,-1
	.loc 1 1372 0
	stw 0,28(1)
.LCFI55:
	stw 30,16(1)
.LCFI56:
	mr 30,3
	stw 31,20(1)
.LCFI57:
	.loc 1 1375 0
	lwz 9,4(3)
	lbzx 0,9,29
	cmpwi 7,0,0
	beq- 7,.L366
	.loc 1 1378 0
	lwz 9,0(3)
	mulli 0,29,76
	add 31,0,9
.LVL304:
	.loc 1 1380 0
	lwz 3,4(31)
.LVL305:
	cmpwi 7,3,0
	beq- 7,.L362
	.loc 1 1382 0
	lwz 4,28(31)
.LVL306:
	bl releaseTextureSlot
.LVL307:
.L362:
	.loc 1 1385 0
	li 0,0
	.loc 1 1393 0
	li 11,1
.LVL308:
	stb 0,8(31)
	.loc 1 1385 0
	stw 0,4(31)
	.loc 1 1386 0
	stw 0,20(31)
	.loc 1 1387 0
	stw 0,24(31)
	.loc 1 1388 0
	stw 0,32(31)
	.loc 1 1393 0
	li 0,9
	mtctr 0
.L364:
	add 9,31,11
	li 0,0
	stb 0,8(9)
	.loc 1 1391 0
	addi 11,11,1
	bdnz .L364
	.loc 1 1396 0
	lwz 11,4(30)
.LVL309:
	stbx 0,29,11
	.loc 1 1397 0
	lwz 9,12(30)
	addi 9,9,-1
	stw 9,12(30)
.LVL310:
.L366:
	.loc 1 1399 0
	lwz 0,28(1)
	lwz 29,12(1)
	lwz 30,16(1)
.LVL311:
	mtlr 0
	lwz 31,20(1)
.LVL312:
	addi 1,1,24
	blr
.LFE105:
	.size	deleteTex, .-deleteTex
	.align 2
	.globl glDeleteTextures
	.type	glDeleteTextures, @function
glDeleteTextures:
.LFB124:
	.loc 1 2020 0
.LVL313:
	mflr 0
.LCFI58:
	stwu 1,-24(1)
.LCFI59:
	.loc 1 2021 0
	lis 9,cur_state@ha
	.loc 1 2020 0
	stw 29,12(1)
.LCFI60:
	mr 29,3
	stw 0,28(1)
.LCFI61:
	stw 31,20(1)
.LCFI62:
	mr 31,4
	.loc 1 2021 0
	lwz 0,cur_state@l(9)
	.loc 1 2020 0
	stw 28,8(1)
.LCFI63:
	.loc 1 2021 0
	andi. 9,0,1
	.loc 1 2020 0
	stw 30,16(1)
.LCFI64:
	.loc 1 2021 0
	bne- 0,.L381
.LVL314:
	.loc 1 2025 0
	cmpwi 6,3,0
	blt- 6,.L382
.LVL315:
	.loc 1 2031 0
	cmpwi 7,4,0
	beq- 7,.L375
.LVL316:
	.loc 1 2037 0
	beq- 6,.L379
	lis 9,texMan@ha
	.loc 1 2034 0
	li 30,0
.LVL317:
	la 28,texMan@l(9)
.L378:
	.loc 1 2039 0
	lwz 4,0(31)
.LVL318:
	.loc 1 2037 0
	addi 30,30,1
	.loc 1 2039 0
	mr 3,28
.LVL319:
	addi 31,31,4
	bl deleteTex
	.loc 1 2037 0
	cmpw 7,30,29
	bne+ 7,.L378
.LVL320:
.L379:
	.loc 1 2041 0
	lwz 0,28(1)
	lwz 28,8(1)
	lwz 29,12(1)
.LVL321:
	mtlr 0
	lwz 30,16(1)
.LVL322:
	lwz 31,20(1)
.LVL323:
	addi 1,1,24
	blr
.LVL324:
.L381:
	.loc 1 2021 0
	lis 4,.LC14@ha
	li 3,1282
	la 4,.LC14@l(4)
	li 5,2021
	bl _glSetErrorEx
	.loc 1 2041 0
	lwz 0,28(1)
	lwz 28,8(1)
	lwz 29,12(1)
.LVL325:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL326:
	addi 1,1,24
	blr
.LVL327:
.L382:
	.loc 1 2027 0
	lis 4,.LC14@ha
	li 3,1281
.LVL328:
	la 4,.LC14@l(4)
	li 5,2027
	bl _glSetErrorEx
	b .L379
.LVL329:
.L375:
	.loc 1 2033 0
	lis 4,.LC14@ha
.LVL330:
	li 3,1281
.LVL331:
	la 4,.LC14@l(4)
	li 5,2033
	bl _glSetErrorEx
	b .L379
.LFE124:
	.size	glDeleteTextures, .-glDeleteTextures
	.align 2
	.globl computeStart
	.type	computeStart, @function
computeStart:
.LFB119:
	.loc 1 1643 0
.LVL332:
	.loc 1 1644 0
	mr. 7,4
	.loc 1 1643 0
	mflr 0
.LCFI65:
	stwu 1,-32(1)
.LCFI66:
	stw 31,28(1)
.LCFI67:
	mr 31,3
	stw 0,36(1)
.LCFI68:
	.loc 1 1644 0
	bne- 0,.L384
.LVL333:
	.loc 1 1664 0
	lwz 0,36(1)
	.loc 1 1646 0
	lwz 3,4(3)
	.loc 1 1664 0
	lwz 31,28(1)
.LVL334:
	mtlr 0
	addi 1,1,32
	blr
.LVL335:
.L384:
	.loc 1 1651 0
	cmpwi 7,7,1
	beq- 7,.L391
	.loc 1 1657 0
	lhz 3,22(3)
	rlwinm 7,7,0,0xff
.LVL336:
	lhz 4,26(31)
	li 6,1
	lwz 5,0(31)
	bl GX_GetTexBufferSize
.LVL337:
.L389:
	.loc 1 1660 0
	lwz 0,4(31)
	.loc 1 1664 0
	lwz 31,28(1)
.LVL338:
.LBB4:
.LBB5:
	.file 2 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/glint.h"
	.loc 2 349 0
	add 9,0,3
.LVL339:
.LBE5:
.LBE4:
	.loc 1 1660 0
	stw 0,8(1)
.LVL340:
	.loc 1 1664 0
	lwz 0,36(1)
	.loc 1 1663 0
	mr 3,9
.LVL341:
.LBB7:
.LBB6:
	.loc 2 349 0
	stw 9,8(1)
.LBE6:
.LBE7:
	.loc 1 1664 0
	addi 1,1,32
	mtlr 0
	blr
.LVL342:
.L391:
	.loc 1 1653 0
	lhz 4,26(31)
	li 6,0
	lwz 5,0(31)
	lhz 3,22(3)
	bl GX_GetTexBufferSize
.LVL343:
	b .L389
.LFE119:
	.size	computeStart, .-computeStart
	.align 2
	.globl glTexSubImage2D
	.type	glTexSubImage2D, @function
glTexSubImage2D:
.LFB121:
	.loc 1 1745 0
.LVL344:
	mflr 0
.LCFI69:
	stwu 1,-72(1)
.LCFI70:
	.loc 1 1746 0
	lis 11,cur_state@ha
	.loc 1 1745 0
	stw 25,44(1)
.LCFI71:
	mr 25,8
	stw 0,76(1)
.LCFI72:
	stw 26,48(1)
.LCFI73:
	mr 26,6
	.loc 1 1746 0
	lwz 0,cur_state@l(11)
	.loc 1 1745 0
	stw 27,52(1)
.LCFI74:
	mr 27,4
	.loc 1 1746 0
	andi. 11,0,1
	.loc 1 1745 0
	stw 28,56(1)
.LCFI75:
	stw 29,60(1)
.LCFI76:
	mr 28,10
	stw 30,64(1)
.LCFI77:
	mr 29,9
	stw 31,68(1)
.LCFI78:
	mr 30,7
	stw 24,40(1)
.LCFI79:
	.loc 1 1745 0
	mr 31,5
	.loc 1 1746 0
	bne- 0,.L418
.LVL345:
	.loc 1 1750 0
	cmpwi 7,3,3553
	beq- 7,.L396
	.loc 1 1752 0
	lis 4,.LC14@ha
	li 3,1280
.LVL346:
	la 4,.LC14@l(4)
	li 5,1752
	bl _glSetErrorEx
.LVL347:
.L417:
	.loc 1 1822 0
	lwz 0,76(1)
	lwz 24,40(1)
.LVL348:
	lwz 25,44(1)
.LVL349:
	mtlr 0
	lwz 26,48(1)
.LVL350:
	lwz 27,52(1)
.LVL351:
	lwz 28,56(1)
.LVL352:
	lwz 29,60(1)
.LVL353:
	lwz 30,64(1)
.LVL354:
	lwz 31,68(1)
.LVL355:
	addi 1,1,72
	blr
.LVL356:
.L396:
	.loc 1 1757 0
	cmpwi 7,10,6656
	beq- 7,.L398
.LVL357:
	cmpwi 7,9,6400
	beq- 7,.L398
.LVL358:
	.loc 1 1763 0
	cmplwi 7,4,10
	ble- 7,.L401
.LVL359:
	.loc 1 1765 0
	lis 4,.LC14@ha
.LVL360:
	li 3,1281
.LVL361:
	la 4,.LC14@l(4)
	li 5,1765
	bl _glSetErrorEx
.LVL362:
	.loc 1 1822 0
	lwz 0,76(1)
	lwz 24,40(1)
	lwz 25,44(1)
.LVL363:
	mtlr 0
	lwz 26,48(1)
.LVL364:
	lwz 27,52(1)
.LVL365:
	lwz 28,56(1)
.LVL366:
	lwz 29,60(1)
.LVL367:
	lwz 30,64(1)
.LVL368:
	lwz 31,68(1)
.LVL369:
	addi 1,1,72
	blr
.LVL370:
.L418:
	.loc 1 1746 0
	lis 4,.LC14@ha
	li 3,1282
.LVL371:
	la 4,.LC14@l(4)
	li 5,1746
	bl _glSetErrorEx
	.loc 1 1822 0
	lwz 0,76(1)
	lwz 24,40(1)
	lwz 25,44(1)
.LVL372:
	mtlr 0
	lwz 26,48(1)
.LVL373:
	lwz 27,52(1)
.LVL374:
	lwz 28,56(1)
.LVL375:
	lwz 29,60(1)
.LVL376:
	lwz 30,64(1)
.LVL377:
	lwz 31,68(1)
.LVL378:
	addi 1,1,72
	blr
.LVL379:
.L401:
	.loc 1 1769 0
	mr 3,10
.LVL380:
	mr 4,9
.LVL381:
	bl CorrectGLtype
.LVL382:
	.loc 1 1771 0
	cmpwi 7,3,0
	beq- 7,.L417
	.loc 1 1776 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	.loc 1 1778 0
	lwz 0,4(3)
.LVL383:
	.loc 1 1776 0
	mr 24,3
.LVL384:
	.loc 1 1778 0
	cmpwi 7,0,0
	beq- 7,.L419
	.loc 1 1788 0
	xoris 0,31,0x8000
	lis 11,0x4330
	stw 0,28(1)
	lis 9,.LC10@ha
	stw 11,24(1)
	lfs 12,.LC10@l(9)
	lis 9,.LC8@ha
	lfd 0,24(1)
	lfs 11,.LC8@l(9)
	fsub 0,0,12
	.loc 1 1785 0
	lwz 0,20(3)
	.loc 1 1786 0
	lwz 10,24(3)
	.loc 1 1788 0
	frsp 0,0
	fcmpu 7,0,11
	blt- 7,.L406
.LVL385:
	sraw 0,0,27
	add 9,30,31
	xoris 0,0,0x8000
	xoris 9,9,0x8000
	stw 0,28(1)
	stw 9,36(1)
	stw 11,32(1)
	lfd 13,24(1)
	lfd 0,32(1)
	fsub 13,13,12
	fsub 0,0,12
	frsp 13,13
	frsp 0,0
	fcmpu 7,13,0
	blt- 7,.L406
	xoris 0,26,0x8000
	stw 0,28(1)
	lfd 0,24(1)
	fsub 0,0,12
	frsp 0,0
	fcmpu 7,0,11
	blt- 7,.L406
	sraw 0,10,27
	add 9,25,26
	xoris 0,0,0x8000
	xoris 9,9,0x8000
	stw 0,28(1)
	stw 9,36(1)
	lfd 0,24(1)
	lfd 13,32(1)
	fsub 0,0,12
	fsub 13,13,12
	frsp 0,0
	frsp 13,13
	fcmpu 7,0,13
	blt- 7,.L406
	.loc 1 1797 0
	cmpwi 7,25,0
	blt- 7,.L412
	cmpwi 7,30,0
	blt- 7,.L412
	.loc 1 1803 0
	lwz 0,68(3)
	cmpw 7,0,29
	beq- 7,.L420
	.loc 1 1809 0
	mr 4,27
	bl computeStart
.LVL386:
	.loc 1 1810 0
	lwz 5,0(24)
	lwz 8,20(24)
	.loc 1 1809 0
	mr 4,3
.LVL387:
	.loc 1 1810 0
	lwz 9,24(24)
	mr 3,29
	lwz 6,80(1)
	mr 7,28
	mr 10,31
	stw 26,8(1)
	stw 30,12(1)
	.loc 1 1813 0
	lis 28,cur_tex@ha
.LVL388:
	.loc 1 1810 0
	stw 25,16(1)
	bl TransferPixels
.LVL389:
	.loc 1 1811 0
	add 9,24,27
	li 0,1
	stb 0,8(9)
	.loc 1 1813 0
	lis 29,glTexEnvs@ha
.LVL390:
	la 29,glTexEnvs@l(29)
	addi 27,24,36
.LVL391:
	lwz 11,cur_tex@l(28)
	mr 3,27
	lwz 4,4(24)
	li 10,1
	mulli 11,11,108
	lhz 5,22(24)
	lhz 6,26(24)
	add 11,11,29
	lbz 7,3(24)
	lbz 9,4(11)
	lbz 8,3(11)
	bl GX_InitTexObj
	.loc 1 1815 0
	lwz 9,cur_tex@l(28)
	mr 3,27
	mulli 9,9,108
	add 9,9,29
	addi 11,9,16
	lfs 3,16(9)
	lbz 4,1(9)
	lbz 5,2(9)
	lfs 1,8(9)
	lfs 2,12(9)
	lbz 8,6(11)
	lbz 6,4(11)
	lbz 7,5(11)
	bl GX_InitTexObjLOD
	.loc 1 1819 0
	lwz 9,cur_tex@l(28)
	.loc 1 1821 0
	lwz 4,28(24)
	.loc 1 1819 0
	mulli 9,9,108
	.loc 1 1821 0
	lwz 3,4(24)
	.loc 1 1819 0
	add 9,9,29
	lbz 0,1(9)
	stb 0,72(24)
	.loc 1 1821 0
	bl DCFlushRange
	b .L417
.LVL392:
.L398:
	.loc 1 1759 0
	lis 4,.LC14@ha
	li 3,1280
.LVL393:
	la 4,.LC14@l(4)
	li 5,1759
	bl _glSetErrorEx
.LVL394:
	.loc 1 1822 0
	lwz 0,76(1)
	lwz 24,40(1)
	lwz 25,44(1)
.LVL395:
	mtlr 0
	lwz 26,48(1)
.LVL396:
	lwz 27,52(1)
.LVL397:
	lwz 28,56(1)
.LVL398:
	lwz 29,60(1)
.LVL399:
	lwz 30,64(1)
.LVL400:
	lwz 31,68(1)
.LVL401:
	addi 1,1,72
	blr
.LVL402:
.L406:
	.loc 1 1793 0
	lis 4,.LC14@ha
	li 3,1281
.LVL403:
	la 4,.LC14@l(4)
	li 5,1793
	bl _glSetErrorEx
	b .L417
.L419:
	.loc 1 1780 0
	lis 4,.LC14@ha
	li 3,1282
	la 4,.LC14@l(4)
	li 5,1780
	bl _glSetErrorEx
	b .L417
.LVL404:
.L412:
	.loc 1 1799 0
	lis 4,.LC14@ha
	li 3,1281
.LVL405:
	la 4,.LC14@l(4)
	li 5,1799
	bl _glSetErrorEx
	b .L417
.LVL406:
.L420:
	.loc 1 1805 0
	lis 4,.LC14@ha
	li 3,1280
.LVL407:
	la 4,.LC14@l(4)
	li 5,1805
	bl _glSetErrorEx
	b .L417
.LFE121:
	.size	glTexSubImage2D, .-glTexSubImage2D
	.align 2
	.globl GenArray
	.type	GenArray, @function
GenArray:
.LFB117:
	.loc 1 1623 0
.LVL408:
	mflr 0
.LCFI80:
	stwu 1,-16(1)
.LCFI81:
	stw 30,8(1)
.LCFI82:
	mr 30,6
	stw 0,20(1)
.LCFI83:
	mr 0,3
	.loc 1 1624 0
	li 6,1
.LVL409:
	rlwinm 3,4,0,0xffff
.LVL410:
	rlwinm 4,5,0,0xffff
.LVL411:
	mr 5,0
	.loc 1 1623 0
	stw 31,12(1)
.LCFI84:
	.loc 1 1624 0
	bl GX_GetTexBufferSize
.LVL412:
	stw 3,0(30)
	.loc 1 1626 0
	bl getTextureSlot
	.loc 1 1628 0
	mr. 31,3
.LVL413:
	beq- 0,.L422
	.loc 1 1633 0
	lwz 5,0(30)
	li 4,127
	bl memset
.L422:
	.loc 1 1636 0
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
.LVL414:
	lwz 31,12(1)
.LVL415:
	mtlr 0
	addi 1,1,16
	blr
.LFE117:
	.size	GenArray, .-GenArray
	.align 2
	.globl glTexImage2D
	.type	glTexImage2D, @function
glTexImage2D:
.LFB123:
	.loc 1 1853 0
.LVL416:
	mflr 0
.LCFI85:
	stwu 1,-80(1)
.LCFI86:
	.loc 1 1854 0
	lis 11,cur_state@ha
	.loc 1 1853 0
	stw 25,52(1)
.LCFI87:
	mr 25,10
	stw 0,84(1)
.LCFI88:
	stw 26,56(1)
.LCFI89:
	mr 26,9
	.loc 1 1854 0
	lwz 0,cur_state@l(11)
	.loc 1 1853 0
	stw 27,60(1)
.LCFI90:
	mr 27,5
	.loc 1 1854 0
	andi. 11,0,1
	.loc 1 1853 0
	stw 28,64(1)
.LCFI91:
	stw 29,68(1)
.LCFI92:
	mr 28,6
	stw 30,72(1)
.LCFI93:
	mr 29,3
	stw 31,76(1)
.LCFI94:
	mr 30,4
	stw 23,44(1)
.LCFI95:
	mr 31,7
	stw 24,48(1)
.LCFI96:
	.loc 1 1854 0
	beq- 0,.L426
.LVL417:
	lis 4,.LC14@ha
	li 3,1282
	la 4,.LC14@l(4)
	li 5,1854
	bl _glSetErrorEx
.LVL418:
.LVL419:
.L486:
	.loc 1 2016 0
	lwz 0,84(1)
	lwz 23,44(1)
.LVL420:
	lwz 24,48(1)
.LVL421:
	mtlr 0
	lwz 25,52(1)
.LVL422:
	lwz 26,56(1)
.LVL423:
	lwz 27,60(1)
.LVL424:
	lwz 28,64(1)
.LVL425:
	lwz 29,68(1)
.LVL426:
	lwz 30,72(1)
.LVL427:
	lwz 31,76(1)
.LVL428:
	addi 1,1,80
	blr
.LVL429:
.L426:
	.loc 1 1858 0
	mr 3,6
	bl IsPowerOfTwo
.LVL430:
	cmpwi 7,3,0
	li 3,0
	bne- 7,.L491
	.loc 1 1860 0
	xoris 0,29,0xffff
	cmpwi 7,0,-32668
	beq 7,.L492
.L432:
	.loc 1 1877 0
	cmpwi 7,29,3553
	beq- 7,.L439
	.loc 1 1879 0
	lis 4,.LC14@ha
	li 3,1280
	la 4,.LC14@l(4)
	li 5,1879
	bl _glSetErrorEx
	.loc 1 2016 0
	lwz 0,84(1)
	lwz 23,44(1)
	lwz 24,48(1)
	mtlr 0
	lwz 25,52(1)
.LVL431:
	lwz 26,56(1)
.LVL432:
	lwz 27,60(1)
.LVL433:
	lwz 28,64(1)
.LVL434:
	lwz 29,68(1)
.LVL435:
	lwz 30,72(1)
.LVL436:
	lwz 31,76(1)
.LVL437:
	addi 1,1,80
	blr
.LVL438:
.L439:
	.loc 1 1883 0
	cmpwi 7,3,0
	beq- 7,.L441
	cmpwi 7,28,0
	blt- 7,.L441
	cmpwi 7,31,0
	blt- 7,.L441
	.loc 1 1890 0
	cmpwi 7,25,6656
	beq- 7,.L445
	cmpwi 7,26,6400
	beq- 7,.L445
	.loc 1 1897 0
	cmplwi 7,30,10
	ble- 7,.L448
	.loc 1 1899 0
	lis 4,.LC14@ha
	li 3,1281
	la 4,.LC14@l(4)
	li 5,1899
	bl _glSetErrorEx
	b .L486
.L491:
	.loc 1 1858 0
	mr 3,31
	bl IsPowerOfTwo
	.loc 1 1860 0
	xoris 0,29,0xffff
	cmpwi 7,0,-32668
	.loc 1 1858 0
	cntlzw 3,3
	srwi 3,3,5
	xori 3,3,1
	.loc 1 1860 0
	bne 7,.L432
.L492:
	.loc 1 1862 0
	cmpwi 7,3,0
	beq- 7,.L434
	li 0,1024
	sraw 0,0,30
	cmpw 7,28,0
	bgt- 7,.L434
	cmpw 7,31,0
	bgt- 7,.L434
	cmpwi 7,30,10
	bgt+ 7,.L434
.LBB8:
	.loc 1 1870 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	.loc 1 1872 0
	slw 0,31,30
	.loc 1 1871 0
	slw 9,28,30
	.loc 1 1872 0
	stw 0,24(3)
.LVL439:
	.loc 1 1871 0
	stw 9,20(3)
	b .L486
.LVL440:
.L434:
.LBE8:
.LBB9:
	.loc 1 1864 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	.loc 1 1865 0
	li 0,0
	.loc 1 1866 0
	stw 0,24(3)
.LVL441:
	.loc 1 1865 0
	stw 0,20(3)
.LBE9:
	.loc 1 2016 0
	lwz 0,84(1)
	lwz 23,44(1)
	lwz 24,48(1)
	mtlr 0
	lwz 25,52(1)
.LVL442:
	lwz 26,56(1)
.LVL443:
	lwz 27,60(1)
.LVL444:
	lwz 28,64(1)
.LVL445:
	lwz 29,68(1)
.LVL446:
	lwz 30,72(1)
.LVL447:
	lwz 31,76(1)
.LVL448:
	addi 1,1,80
	blr
.LVL449:
.L441:
	.loc 1 1885 0
	lis 4,.LC14@ha
	li 3,1281
	la 4,.LC14@l(4)
	li 5,1885
	bl _glSetErrorEx
	b .L486
.L445:
	.loc 1 1892 0
	lis 4,.LC14@ha
	li 3,1280
	la 4,.LC14@l(4)
	li 5,1892
	bl _glSetErrorEx
	b .L486
.L448:
	.loc 1 1903 0
	mr 3,25
	mr 4,26
	bl CorrectGLtype
	.loc 1 1905 0
	mr. 0,3
	beq- 0,.L486
	.loc 1 1910 0
	mr 3,27
	addi 4,1,24
	.loc 1 1903 0
	stw 0,24(1)
.LVL450:
	.loc 1 1910 0
	bl convertInternalFormat
	.loc 1 1914 0
	lwz 0,24(1)
	.loc 1 1910 0
	mr 23,3
.LVL451:
	.loc 1 1914 0
	cmpwi 7,0,0
	bne- 7,.L451
.LVL452:
	.loc 1 1916 0
	lis 4,.LC14@ha
	li 3,1280
	la 4,.LC14@l(4)
	li 5,1916
	bl _glSetErrorEx
.LVL453:
	b .L486
.LVL454:
.L451:
	.loc 1 1922 0
	lis 3,texMan@ha
	.loc 1 1924 0
	slw 29,31,30
.LVL455:
	.loc 1 1922 0
	la 3,texMan@l(3)
	.loc 1 1925 0
	slw 27,28,30
.LVL456:
	.loc 1 1922 0
	bl getCur
.LVL457:
	.loc 1 1930 0
	cmpwi 6,31,1
	.loc 1 1922 0
	mr 24,3
.LVL458:
	.loc 1 1930 0
	beq- 6,.L493
.L453:
	.loc 1 1933 0
	lwz 0,24(24)
	cmpw 7,0,29
	beq- 7,.L461
	beq- 6,.L461
	li 0,0
.LVL459:
.L463:
	.loc 1 1935 0
	cmpwi 7,30,0
	bne- 7,.L494
.L467:
	.loc 1 1941 0
	lwz 3,4(24)
	cmpwi 7,3,0
	beq- 7,.L469
	cmpwi 7,0,0
	bne- 7,.L471
	cmpwi 7,30,0
	beq- 7,.L495
.L471:
	.loc 1 1988 0
	lwz 0,0(24)
	cmpw 7,23,0
	beq- 7,.L478
	.loc 1 1990 0
	lis 4,.LC14@ha
	li 3,1281
	la 4,.LC14@l(4)
	li 5,1990
	bl _glSetErrorEx
.LVL460:
	b .L486
.LVL461:
.L495:
.LBB10:
	.loc 1 1945 0
	lwz 4,28(24)
	bl releaseTextureSlot
.LVL462:
	.loc 1 1946 0
	stw 30,4(24)
.LVL463:
.L469:
	.loc 1 1952 0
	li 0,0
	li 11,1
.LVL464:
	stb 0,8(24)
	li 0,9
	mtctr 0
.L474:
	add 9,24,11
.LVL465:
	li 0,0
	stb 0,8(9)
	.loc 1 1950 0
	addi 11,11,1
	bdnz .L474
	.loc 1 1955 0
	mr 3,23
	mr 4,28
	mr 5,31
	addi 6,1,28
	li 7,10
	bl GenArray
.LVL466:
	.loc 1 1957 0
	cmpwi 7,3,0
	.loc 1 1955 0
	stw 3,4(24)
	.loc 1 1957 0
	beq- 7,.L496
	.loc 1 1973 0
	lbz 11,74(24)
	.loc 1 1971 0
	li 9,3553
	.loc 1 1966 0
	lwz 0,28(1)
.LVL467:
	.loc 1 1973 0
	cmpwi 7,11,0
	.loc 1 1971 0
	stw 9,32(24)
	.loc 1 1966 0
	stw 0,28(24)
	.loc 1 1964 0
	stw 26,68(24)
	.loc 1 1965 0
	stw 23,0(24)
	.loc 1 1968 0
	stw 29,24(24)
	.loc 1 1969 0
	stw 27,20(24)
	.loc 1 1973 0
	bne- 7,.L478
.LVL468:
.LBB11:
	.loc 1 1975 0
	cmpw 7,29,27
.LVL469:
	mr 9,29
.LVL470:
	bge- 7,.L480
	mr 9,27
.L480:
	.loc 1 1979 0
	cmpwi 7,9,1
	.loc 1 1977 0
	stb 11,74(24)
	.loc 1 1979 0
	ble- 7,.L478
	li 11,0
.L482:
	.loc 1 1981 0
	srawi 9,9,1
	addi 0,11,1
.LVL471:
	.loc 1 1979 0
	cmpwi 7,9,1
	.loc 1 1981 0
	rlwinm 11,0,0,0xff
	.loc 1 1979 0
	bgt+ 7,.L482
.LBE11:
.LBE10:
	.loc 1 1991 0
	stb 11,74(24)
.LVL472:
.L478:
	.loc 1 1995 0
	lwz 0,88(1)
	cmpwi 7,0,0
	beq- 7,.L486
.LBB12:
	.loc 1 1997 0
	mr 4,30
	mr 3,24
	bl computeStart
.LVL473:
	.loc 1 1998 0
	lwz 6,88(1)
	.loc 1 1997 0
	mr 4,3
.LVL474:
	.loc 1 1998 0
	mr 5,23
	mr 3,26
	mr 7,25
	mr 8,28
	mr 9,31
	li 0,0
	li 10,0
	stw 0,8(1)
	.loc 1 2002 0
	lis 27,cur_tex@ha
.LVL475:
	.loc 1 1998 0
	stw 28,12(1)
	.loc 1 2002 0
	lis 29,glTexEnvs@ha
.LVL476:
	.loc 1 1998 0
	stw 31,16(1)
	bl TransferPixels
.LVL477:
	.loc 1 2000 0
	li 0,1
	add 9,24,30
	stb 0,8(9)
	.loc 1 2002 0
	la 29,glTexEnvs@l(29)
	addi 28,24,36
.LVL478:
	lwz 4,4(24)
	lwz 11,cur_tex@l(27)
	mr 3,28
	lhz 5,22(24)
	li 10,1
	mulli 11,11,108
	lhz 6,26(24)
	lbz 7,3(24)
	add 11,11,29
	lbz 9,4(11)
	lbz 8,3(11)
	bl GX_InitTexObj
	.loc 1 2004 0
	lwz 9,cur_tex@l(27)
	mr 3,28
	mulli 9,9,108
	add 9,9,29
	addi 11,9,16
	lfs 3,16(9)
	lbz 4,1(9)
	lbz 5,2(9)
	lfs 1,8(9)
	lfs 2,12(9)
	lbz 8,6(11)
	lbz 6,4(11)
	lbz 7,5(11)
	bl GX_InitTexObjLOD
	.loc 1 2008 0
	lwz 9,cur_tex@l(27)
	.loc 1 2010 0
	lwz 3,4(24)
	.loc 1 2008 0
	mulli 9,9,108
	add 9,9,29
	lbz 0,1(9)
	stb 0,72(24)
	.loc 1 2010 0
	lwz 4,28(1)
	bl DCFlushRange
	b .L486
.LVL479:
.L461:
.LBE12:
	.loc 1 1933 0
	lwz 0,20(24)
	li 9,0
.LVL480:
.L458:
	cmpw 7,27,0
	li 0,1
	beq- 7,.L466
	xori 0,28,1
	cntlzw 0,0
	srwi 0,0,5
.L466:
	.loc 1 1935 0
	or. 0,0,9
	bne+ 0,.L467
	b .L463
.LVL481:
.L493:
	.loc 1 1930 0
	cmpwi 7,28,1
	bne+ 7,.L453
	lwz 0,24(3)
	cmpw 7,0,29
	bne+ 7,.L461
.LVL482:
	lwz 0,20(3)
	xor 9,0,27
.LVL483:
	cntlzw 9,9
	srwi 9,9,5
	b .L458
.LVL484:
.L494:
	.loc 1 1937 0
	lis 4,.LC14@ha
	li 3,1281
	la 4,.LC14@l(4)
	li 5,1937
	bl _glSetErrorEx
.LVL485:
	b .L486
.L496:
.LBB13:
	.loc 1 1959 0
	lis 4,.LC14@ha
	li 3,1285
	la 4,.LC14@l(4)
	li 5,1959
	bl _glSetErrorEx
	b .L486
.LBE13:
.LFE123:
	.size	glTexImage2D, .-glTexImage2D
	.align 2
	.globl glTexImage1D
	.type	glTexImage1D, @function
glTexImage1D:
.LFB122:
	.loc 1 1832 0
.LVL486:
	mflr 0
.LCFI97:
	stwu 1,-24(1)
.LCFI98:
	.loc 1 1833 0
	lis 11,cur_state@ha
	.loc 1 1832 0
	mr 12,9
	stw 31,20(1)
.LCFI99:
	mr 31,10
	stw 0,28(1)
.LCFI100:
	.loc 1 1833 0
	lwz 0,cur_state@l(11)
	andi. 11,0,1
	.loc 1 1832 0
	mr 11,8
	.loc 1 1833 0
	bne- 0,.L504
.LVL487:
	.loc 1 1835 0
	xoris 0,3,0xffff
	cmpwi 7,0,-32669
	beq 7,.L505
	.loc 1 1841 0
	mr 8,7
	mr 9,11
	mr 10,12
	li 3,3553
.LVL488:
	li 7,1
.LVL489:
	stw 31,8(1)
	bl glTexImage2D
.LVL490:
	.loc 1 1844 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL491:
	addi 1,1,24
	mtlr 0
	blr
.LVL492:
.L505:
	.loc 1 1837 0
	li 3,0
.LVL493:
	mr 8,7
	ori 3,3,32868
	mr 9,11
	mr 10,12
	li 7,1
.LVL494:
	stw 31,8(1)
	bl glTexImage2D
.LVL495:
	.loc 1 1844 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL496:
	addi 1,1,24
	mtlr 0
	blr
.LVL497:
.L504:
	.loc 1 1833 0
	lis 4,.LC14@ha
.LVL498:
	li 3,1282
.LVL499:
	la 4,.LC14@l(4)
	li 5,1833
.LVL500:
	bl _glSetErrorEx
.LVL501:
	.loc 1 1844 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL502:
	addi 1,1,24
	mtlr 0
	blr
.LFE122:
	.size	glTexImage1D, .-glTexImage1D
	.align 2
	.globl activateTex
	.type	activateTex, @function
activateTex:
.LFB104:
	.loc 1 1347 0
.LVL503:
	mflr 0
.LCFI101:
	stwu 1,-24(1)
.LCFI102:
	stw 31,20(1)
.LCFI103:
	mr 31,3
	stw 0,28(1)
.LCFI104:
	stw 29,12(1)
.LCFI105:
	.loc 1 1350 0
	lwz 9,4(3)
	.loc 1 1348 0
	addi 3,4,-1
.LVL504:
	.loc 1 1347 0
	stw 30,16(1)
.LCFI106:
	.loc 1 1350 0
	lbzx 30,3,9
	cmpwi 7,30,0
	beq- 7,.L514
	.loc 1 1369 0
	lwz 0,28(1)
	lwz 29,12(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
.LVL505:
	addi 1,1,24
	blr
.LVL506:
.L514:
	.loc 1 1353 0
	li 0,1
	.loc 1 1355 0
	mulli 29,3,76
	.loc 1 1353 0
	stbx 0,3,9
	.loc 1 1355 0
	li 4,0
.LVL507:
	li 5,76
	lwz 3,0(31)
.LVL508:
	add 3,29,3
	bl memset
	.loc 1 1356 0
	lwz 11,0(31)
	.loc 1 1365 0
	li 0,9
	li 10,1
.LVL509:
	.loc 1 1356 0
	add 11,29,11
	.loc 1 1365 0
	mtctr 0
	.loc 1 1360 0
	stb 30,74(11)
	.loc 1 1356 0
	stw 30,4(11)
	.loc 1 1365 0
	lwz 9,0(31)
	.loc 1 1357 0
	stw 30,20(11)
	.loc 1 1365 0
	add 9,29,9
	.loc 1 1358 0
	stw 30,24(11)
	.loc 1 1365 0
	stb 30,8(9)
	.loc 1 1359 0
	stw 30,32(11)
.L509:
	.loc 1 1365 0
	lwz 0,0(31)
	add 9,10,29
	li 11,0
	.loc 1 1363 0
	addi 10,10,1
	.loc 1 1365 0
	add 9,9,0
	stb 11,8(9)
	.loc 1 1363 0
	bdnz .L509
	.loc 1 1368 0
	lwz 9,12(31)
	.loc 1 1369 0
	lwz 0,28(1)
	.loc 1 1368 0
	addi 9,9,1
	.loc 1 1369 0
	lwz 29,12(1)
	.loc 1 1368 0
	stw 9,12(31)
	.loc 1 1369 0
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL510:
	addi 1,1,24
	blr
.LFE104:
	.size	activateTex, .-activateTex
	.align 2
	.globl glBindTexture
	.type	glBindTexture, @function
glBindTexture:
.LFB111:
	.loc 1 1473 0
.LVL511:
	mflr 0
.LCFI107:
	stwu 1,-24(1)
.LCFI108:
	.loc 1 1474 0
	lis 9,cur_state@ha
	.loc 1 1473 0
	stw 30,16(1)
.LCFI109:
	mr 30,3
	stw 0,28(1)
.LCFI110:
	stw 31,20(1)
.LCFI111:
	mr 31,4
	.loc 1 1474 0
	lwz 0,cur_state@l(9)
	.loc 1 1473 0
	stw 29,12(1)
.LCFI112:
	.loc 1 1474 0
	andi. 9,0,1
	beq- 0,.L516
.LVL512:
	lis 4,.LC14@ha
	li 3,1282
	la 4,.LC14@l(4)
	li 5,1474
	bl _glSetErrorEx
	.loc 1 1481 0
	lwz 0,28(1)
	lwz 29,12(1)
	lwz 30,16(1)
.LVL513:
	mtlr 0
	lwz 31,20(1)
.LVL514:
	addi 1,1,24
	blr
.LVL515:
.L516:
	.loc 1 1476 0
	lis 29,texMan@ha
	la 29,texMan@l(29)
	mr 3,29
	bl activateTex
	.loc 1 1478 0
	mr 3,29
	mr 4,31
	bl getTex
	.loc 1 1480 0
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	.loc 1 1481 0
	lwz 0,28(1)
	.loc 1 1480 0
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	.loc 1 1478 0
	stw 30,32(3)
	.loc 1 1481 0
	lwz 29,12(1)
	mtlr 0
	.loc 1 1480 0
	add 11,11,9
	.loc 1 1481 0
	lwz 30,16(1)
.LVL516:
	.loc 1 1480 0
	stw 31,84(11)
	.loc 1 1481 0
	lwz 31,20(1)
.LVL517:
	addi 1,1,24
	blr
.LFE111:
	.size	glBindTexture, .-glBindTexture
	.align 2
	.globl resizeMan
	.type	resizeMan, @function
resizeMan:
.LFB103:
	.loc 1 1280 0
.LVL518:
	mflr 0
.LCFI113:
	stwu 1,-24(1)
.LCFI114:
	stw 30,16(1)
.LCFI115:
	mr 30,4
	stw 0,28(1)
.LCFI116:
	stw 31,20(1)
.LCFI117:
	mr 31,3
	.loc 1 1293 0
	lwz 0,12(3)
	lwz 10,8(3)
	.loc 1 1280 0
	stw 29,12(1)
.LCFI118:
	.loc 1 1293 0
	cmplw 7,0,10
	ble- 7,.L521
.LVL519:
	.loc 1 1296 0
	cmpwi 7,10,0
	.loc 1 1295 0
	li 0,0
	stw 0,12(3)
	.loc 1 1296 0
	beq- 7,.L521
	cmplwi 7,10,1
	li 11,0
.LVL520:
	lwz 8,4(3)
	mtctr 10
	blt- 7,.L545
.L524:
	.loc 1 1298 0
	lbzx 0,8,11
	.loc 1 1296 0
	addi 11,11,1
	.loc 1 1298 0
	cmpwi 7,0,0
	beq- 7,.L525
	.loc 1 1299 0
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
.L525:
	.loc 1 1296 0
	bdnz .L524
.L521:
	.loc 1 1304 0
	lwz 9,0(31)
	cmpwi 7,9,0
	beq- 7,.L527
.LVL521:
	lwz 0,4(31)
	cmpwi 7,0,0
	beq- 7,.L527
	.loc 1 1311 0
	cmplw 7,10,30
	li 3,1
	ble- 7,.L530
.L532:
	.loc 1 1344 0
	lwz 0,28(1)
	lwz 29,12(1)
	lwz 30,16(1)
.LVL522:
	mtlr 0
	lwz 31,20(1)
.LVL523:
	addi 1,1,24
	blr
.LVL524:
.L527:
	.loc 1 1306 0
	li 10,0
	.loc 1 1307 0
	stw 10,12(31)
	.loc 1 1306 0
	stw 10,8(31)
.L530:
	.loc 1 1316 0
	mulli 4,30,76
	mr 3,9
	bl realloc
.LVL525:
	.loc 1 1317 0
	mr. 29,3
	beq- 0,.L546
	.loc 1 1323 0
	lwz 3,4(31)
	mr 4,30
	bl realloc
	.loc 1 1325 0
	cmpwi 0,3,0
	beq- 0,.L547
	.loc 1 1334 0
	lwz 0,8(31)
.LVL526:
	cmplw 7,30,0
	ble- 7,.L537
	subf 9,0,30
	mtctr 9
	add 9,3,0
.L539:
	.loc 1 1336 0
	li 0,0
.LVL527:
	stb 0,0(9)
	addi 9,9,1
	.loc 1 1334 0
	bdnz .L539
.LVL528:
.L537:
	.loc 1 1344 0
	lwz 0,28(1)
.LVL529:
	.loc 1 1341 0
	stw 3,4(31)
	li 3,1
	.loc 1 1339 0
	stw 30,8(31)
	.loc 1 1344 0
	mtlr 0
	.loc 1 1340 0
	stw 29,0(31)
	.loc 1 1344 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL530:
	lwz 31,20(1)
.LVL531:
	addi 1,1,24
	blr
.LVL532:
.L546:
	.loc 1 1319 0
	lis 4,.LC14@ha
	li 3,1285
	la 4,.LC14@l(4)
	li 5,1319
	bl _glSetErrorEx
	li 3,0
	b .L532
.L547:
	.loc 1 1327 0
	stw 29,0(31)
	.loc 1 1329 0
	lis 4,.LC14@ha
	li 3,1285
	la 4,.LC14@l(4)
	li 5,1329
	bl _glSetErrorEx
	li 3,0
	b .L532
.LVL533:
.L545:
	li 0,1
	mtctr 0
	b .L524
.LFE103:
	.size	resizeMan, .-resizeMan
	.align 2
	.globl getNextTexID
	.type	getNextTexID, @function
getNextTexID:
.LFB109:
	.loc 1 1428 0
.LVL534:
	mflr 0
.LCFI119:
	stwu 1,-16(1)
.LCFI120:
	mr 11,3
	stw 31,12(1)
.LCFI121:
	stw 0,20(1)
.LCFI122:
	stw 30,8(1)
.LCFI123:
	.loc 1 1430 0
	lwz 31,8(3)
	cmpwi 7,31,0
	beq- 7,.L549
	.loc 1 1432 0
	lwz 9,4(3)
	li 30,1
	lbz 0,0(9)
	cmpwi 7,0,0
	beq- 7,.L553
	.loc 1 1435 0
	mtctr 31
	li 3,0
.LVL535:
	b .L555
.L554:
	.loc 1 1432 0
	lbzx 0,3,9
	cmpwi 7,0,0
	beq- 7,.L563
.L555:
	.loc 1 1430 0
	addi 3,3,1
	bdnz .L554
.LVL536:
.L549:
	.loc 1 1441 0
	mr 3,11
.LVL537:
	slwi 4,31,1
	bl resizeMan
.LVL538:
	li 30,0
	cmpwi 7,3,0
	beq- 7,.L557
	.loc 1 1443 0
	addi 30,31,1
.L557:
	.loc 1 1449 0
	lwz 0,20(1)
	mr 3,30
	lwz 31,12(1)
	lwz 30,8(1)
	mtlr 0
	addi 1,1,16
	blr
.LVL539:
.L563:
	.loc 1 1432 0
	addi 30,3,1
.LVL540:
.L553:
	.loc 1 1434 0
	mr 3,11
.LVL541:
	mr 4,30
	bl activateTex
.LVL542:
	.loc 1 1449 0
	lwz 0,20(1)
	mr 3,30
	lwz 31,12(1)
	lwz 30,8(1)
	mtlr 0
	addi 1,1,16
	blr
.LFE109:
	.size	getNextTexID, .-getNextTexID
	.align 2
	.globl glGenTextures
	.type	glGenTextures, @function
glGenTextures:
.LFB110:
	.loc 1 1452 0
.LVL543:
	mflr 0
.LCFI124:
	stwu 1,-32(1)
.LCFI125:
	.loc 1 1453 0
	lis 9,cur_state@ha
	.loc 1 1452 0
	mfcr 12
.LCFI126:
	stw 29,20(1)
.LCFI127:
	mr 29,3
	stw 0,36(1)
.LCFI128:
	stw 30,24(1)
.LCFI129:
	mr 30,4
	.loc 1 1453 0
	lwz 0,cur_state@l(9)
	.loc 1 1452 0
	stw 28,16(1)
.LCFI130:
	.loc 1 1453 0
	andi. 9,0,1
	.loc 1 1452 0
	stw 31,28(1)
.LCFI131:
	stw 12,12(1)
.LCFI132:
	.loc 1 1453 0
	bne- 0,.L574
.LVL544:
	.loc 1 1455 0
	cmpwi 4,3,0
	blt- 4,.L575
.LVL545:
	.loc 1 1462 0
	lis 9,texMan@ha
	la 28,texMan@l(9)
	lwz 4,12(28)
	mr 3,28
.LVL546:
	add 4,29,4
	bl resizeMan
	.loc 1 1464 0
	beq- 4,.L572
	li 31,0
.LVL547:
.L571:
	addi 31,31,1
.LBB14:
	.loc 1 1466 0
	mr 3,28
	bl getNextTexID
.LBE14:
	.loc 1 1464 0
	cmpw 7,29,31
.LBB15:
	.loc 1 1467 0
	stw 3,0(30)
	addi 30,30,4
.LBE15:
	.loc 1 1464 0
	bne+ 7,.L571
.L572:
	.loc 1 1470 0
	lwz 0,36(1)
	lwz 12,12(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
.LVL548:
	mtcrf 8,12
	lwz 30,24(1)
.LVL549:
	lwz 31,28(1)
.LVL550:
	addi 1,1,32
	blr
.LVL551:
.L574:
	.loc 1 1453 0
	lis 4,.LC14@ha
	li 3,1282
	la 4,.LC14@l(4)
	li 5,1453
	bl _glSetErrorEx
	.loc 1 1470 0
	lwz 0,36(1)
	lwz 12,12(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
.LVL552:
	mtcrf 8,12
	lwz 30,24(1)
.LVL553:
	lwz 31,28(1)
	addi 1,1,32
	blr
.LVL554:
.L575:
	.loc 1 1457 0
	lis 4,.LC14@ha
	li 3,1281
.LVL555:
	la 4,.LC14@l(4)
	li 5,1457
	bl _glSetErrorEx
	.loc 1 1470 0
	lwz 0,36(1)
	lwz 12,12(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
.LVL556:
	mtcrf 8,12
	lwz 30,24(1)
.LVL557:
	lwz 31,28(1)
	addi 1,1,32
	blr
.LFE110:
	.size	glGenTextures, .-glGenTextures
	.align 2
	.globl initTextures
	.type	initTextures, @function
initTextures:
.LFB102:
	.loc 1 1222 0
	mflr 0
.LCFI133:
	stwu 1,-112(1)
.LCFI134:
	.loc 1 1225 0
	lis 10,texMan@ha
	.loc 1 1223 0
	lis 9,cur_tex@ha
	.loc 1 1225 0
	la 11,texMan@l(10)
	.loc 1 1226 0
	li 4,4000
	.loc 1 1222 0
	stw 0,116(1)
.LCFI135:
	.loc 1 1223 0
	li 0,0
	.loc 1 1225 0
	stw 0,12(11)
	.loc 1 1226 0
	mr 3,11
	.loc 1 1225 0
	stw 0,4(11)
	stw 0,8(11)
	.loc 1 1223 0
	stw 0,cur_tex@l(9)
	.loc 1 1225 0
	stw 0,texMan@l(10)
	.loc 1 1222 0
	stw 26,88(1)
.LCFI136:
	stw 27,92(1)
.LCFI137:
	stw 28,96(1)
.LCFI138:
	stw 29,100(1)
.LCFI139:
	.loc 1 1225 0
	stw 0,8(1)
	stw 0,12(1)
	stw 0,16(1)
	stw 0,20(1)
	.loc 1 1226 0
	bl resizeMan
	.loc 1 1231 0
	lis 11,.LANCHOR0@ha
	lis 8,pack@ha
	la 9,.LANCHOR0@l(11)
	lwz 27,.LANCHOR0@l(11)
	lwz 4,4(9)
	.loc 1 1232 0
	lis 10,unpack@ha
	.loc 1 1231 0
	lwz 3,8(9)
	.loc 1 1232 0
	la 11,unpack@l(10)
	.loc 1 1231 0
	lwz 29,12(9)
	lwz 28,16(9)
	.loc 1 1232 0
	lwz 5,32(9)
	lwz 26,36(9)
	lwz 0,20(9)
	lwz 7,24(9)
	lwz 6,28(9)
	.loc 1 1231 0
	la 9,pack@l(8)
	stw 4,4(9)
	stw 3,8(9)
	stw 29,12(9)
	stw 28,16(9)
	.loc 1 1232 0
	lis 9,glTexEnvs@ha
	la 12,glTexEnvs@l(9)
	.loc 1 1243 0
	lis 9,.LC6@ha
	.loc 1 1231 0
	stw 4,44(1)
	.loc 1 1265 0
	li 4,0
	.loc 1 1231 0
	stw 27,pack@l(8)
	.loc 1 1265 0
	ori 4,4,34168
	.loc 1 1232 0
	stw 0,unpack@l(10)
	stw 26,16(11)
	stw 7,4(11)
	stw 6,8(11)
	.loc 1 1231 0
	stw 27,40(1)
	stw 28,56(1)
	.loc 1 1232 0
	stw 0,60(1)
	stw 7,64(1)
	stw 6,68(1)
	stw 26,76(1)
	.loc 1 1243 0
	lfs 0,.LC6@l(9)
	.loc 1 1232 0
	stw 5,12(11)
	.loc 1 1231 0
	stw 3,48(1)
	.loc 1 1242 0
	li 3,0
	.loc 1 1231 0
	stw 29,52(1)
	.loc 1 1232 0
	mr 29,12
	stw 5,72(1)
	li 5,0
.LVL558:
.L577:
	.loc 1 1254 0
	li 6,1
	mulli 9,5,108
	.loc 1 1258 0
	cmpwi 7,6,1
	.loc 1 1250 0
	li 11,0
	.loc 1 1254 0
	add 9,9,29
	.loc 1 1236 0
	li 10,0
	.loc 1 1249 0
	li 8,8448
	.loc 1 1254 0
	addi 7,9,36
	.loc 1 1238 0
	li 0,4
	.loc 1 1239 0
	li 9,1
	.loc 1 1250 0
	stw 11,100(12)
	.loc 1 1256 0
	cmplwi 6,6,2
	.loc 1 1250 0
	stw 11,24(1)
	stw 11,28(1)
	stw 11,32(1)
	stw 11,36(1)
	stw 11,88(12)
	stw 11,92(12)
	stw 11,96(12)
	.loc 1 1260 0
	li 11,5890
	.loc 1 1238 0
	stb 0,1(12)
	.loc 1 1241 0
	stb 9,4(12)
	.loc 1 1247 0
	stb 10,22(12)
	.loc 1 1254 0
	stw 8,32(12)
	.loc 1 1236 0
	stb 10,0(12)
	.loc 1 1239 0
	stb 9,2(12)
	.loc 1 1240 0
	stb 9,3(12)
	.loc 1 1242 0
	stw 3,8(12)
	.loc 1 1243 0
	stfs 0,12(12)
	.loc 1 1244 0
	stw 3,16(12)
	.loc 1 1245 0
	stb 10,20(12)
	.loc 1 1246 0
	stb 10,21(12)
	.loc 1 1249 0
	stw 8,24(12)
	.loc 1 1253 0
	stw 8,28(12)
	.loc 1 1258 0
	bne- 7,.L580
.L587:
	.loc 1 1268 0
	li 0,768
	.loc 1 1269 0
	li 9,770
	.loc 1 1261 0
	stw 11,60(12)
	.loc 1 1268 0
	stw 0,12(7)
	.loc 1 1269 0
	stw 9,36(7)
	.loc 1 1260 0
	stw 11,36(12)
.L579:
	.loc 1 1256 0
	addi 6,6,1
	addi 7,7,4
	.loc 1 1258 0
	cmpwi 7,6,1
	.loc 1 1256 0
	cmplwi 6,6,2
	.loc 1 1260 0
	li 11,5890
	.loc 1 1258 0
	beq- 7,.L587
.L580:
	.loc 1 1268 0
	li 0,768
	.loc 1 1269 0
	li 9,770
	.loc 1 1268 0
	stw 0,12(7)
	.loc 1 1269 0
	stw 9,36(7)
	.loc 1 1265 0
	stw 4,0(7)
	.loc 1 1266 0
	stw 4,24(7)
	.loc 1 1256 0
	ble- 6,.L579
	.loc 1 1234 0
	cmpwi 7,5,7
	.loc 1 1274 0
	li 9,0
	.loc 1 1272 0
	li 0,-1
	.loc 1 1275 0
	stb 9,105(12)
	.loc 1 1272 0
	stw 0,84(12)
	.loc 1 1234 0
	addi 5,5,1
	.loc 1 1274 0
	stb 9,104(12)
	.loc 1 1234 0
	addi 12,12,108
	bne+ 7,.L577
	.loc 1 1277 0
	lwz 0,116(1)
	lwz 26,88(1)
	lwz 27,92(1)
	mtlr 0
	lwz 28,96(1)
	lwz 29,100(1)
	addi 1,1,112
	blr
.LFE102:
	.size	initTextures, .-initTextures
	.align 2
	.globl glTexParameteri
	.type	glTexParameteri, @function
glTexParameteri:
.LFB85:
	.loc 1 817 0
.LVL559:
	mflr 0
.LCFI140:
	stwu 1,-24(1)
.LCFI141:
	.loc 1 818 0
	lis 9,cur_state@ha
	.loc 1 817 0
	stw 31,20(1)
.LCFI142:
	mr 31,5
	stw 0,28(1)
.LCFI143:
	.loc 1 818 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L607
.LVL560:
	.loc 1 820 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32454
	beq 7,.L597
	cmplwi 7,4,33082
	bgt- 7,.L602
	cmpwi 7,4,10241
	beq- 7,.L594
	cmplwi 7,4,10241
	bgt- 7,.L603
	cmpwi 7,4,10240
	beq- 7,.L608
.L592:
	.loc 1 837 0
	lis 3,.LC18@ha
.LVL561:
	la 3,.LC18@l(3)
	crxor 6,6,6
	bl printf
.LVL562:
	.loc 1 838 0
	lis 4,.LC14@ha
	la 4,.LC14@l(4)
	li 3,1280
	li 5,838
	bl _glSetErrorEx
	b .L604
.LVL563:
.L607:
	.loc 1 818 0
	lis 4,.LC14@ha
.LVL564:
	li 3,1282
.LVL565:
	la 4,.LC14@l(4)
	li 5,818
	bl _glSetErrorEx
.LVL566:
.L604:
	.loc 1 841 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL567:
	addi 1,1,24
	mtlr 0
	blr
.LVL568:
.L602:
	.loc 1 820 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32452
	beq 7,.L599
	cmplwi 7,4,33084
	bge- 7,.L609
	.loc 1 827 0
	xoris 0,5,0x8000
	lis 9,0x4330
	stw 0,12(1)
	stw 9,8(1)
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	lfd 1,8(1)
	.loc 1 841 0
	lwz 0,28(1)
	.loc 1 827 0
	fsub 1,1,0
	.loc 1 841 0
	lwz 31,20(1)
.LVL569:
	mtlr 0
	addi 1,1,24
	.loc 1 827 0
	frsp 1,1
	b setMaxLod
.LVL570:
.L597:
	.loc 1 826 0
	lis 9,0x4330
	xoris 0,5,0x8000
	stw 9,8(1)
	lis 9,.LC10@ha
	stw 0,12(1)
	lfs 0,.LC10@l(9)
	lis 9,cur_tex@ha
	lfd 13,8(1)
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	fsub 13,13,0
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	frsp 13,13
	add 11,11,9
	stfs 13,8(11)
	b .L604
.L594:
	.loc 1 822 0
	lis 9,cur_tex@ha
	mr 3,5
.LVL571:
	lwz 4,cur_tex@l(9)
.LVL572:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,1
.LVL573:
.L605:
	.loc 1 841 0
	lwz 0,28(1)
	lwz 31,20(1)
	addi 1,1,24
	mtlr 0
	.loc 1 823 0
	b GL2GX_Filter
.LVL574:
.L599:
	.loc 1 830 0
	lis 3,texMan@ha
.LVL575:
	la 3,texMan@l(3)
	bl getCur
.LVL576:
	stb 31,73(3)
.LVL577:
	b .L604
.LVL578:
.L609:
	.loc 1 820 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32451
	beq 7,.L600
	xoris 0,4,0xffff
	cmpwi 7,0,-31490
	bne 7,.L592
	.loc 1 828 0
	xoris 0,5,0x8000
	lis 9,0x4330
	stw 0,12(1)
	stw 9,8(1)
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	lfd 1,8(1)
	.loc 1 841 0
	lwz 0,28(1)
	.loc 1 828 0
	fsub 1,1,0
	.loc 1 841 0
	lwz 31,20(1)
.LVL579:
	mtlr 0
	addi 1,1,24
	.loc 1 828 0
	frsp 1,1
	b setAniso
.LVL580:
.L603:
	.loc 1 820 0
	cmpwi 7,4,10242
	beq- 7,.L595
	cmpwi 7,4,10243
	bne+ 7,.L592
	.loc 1 825 0
	lis 9,cur_tex@ha
	mr 3,5
.LVL581:
	lwz 4,cur_tex@l(9)
.LVL582:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,4
.LVL583:
.L606:
	.loc 1 841 0
	lwz 0,28(1)
	lwz 31,20(1)
	addi 1,1,24
	mtlr 0
	.loc 1 825 0
	b GL2GX_Wrap
.LVL584:
.L595:
	.loc 1 824 0
	lis 9,cur_tex@ha
	mr 3,5
.LVL585:
	lwz 4,cur_tex@l(9)
.LVL586:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,3
	b .L606
.LVL587:
.L600:
	.loc 1 833 0
	lis 3,texMan@ha
.LVL588:
	la 3,texMan@l(3)
	bl getCur
.LVL589:
	stb 31,74(3)
.LVL590:
	b .L604
.LVL591:
.L608:
	.loc 1 823 0
	lis 9,cur_tex@ha
	mr 3,5
.LVL592:
	lwz 4,cur_tex@l(9)
.LVL593:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,2
	b .L605
.LFE85:
	.size	glTexParameteri, .-glTexParameteri
	.align 2
	.globl glTexParameterf
	.type	glTexParameterf, @function
glTexParameterf:
.LFB86:
	.loc 1 847 0
.LVL594:
	mflr 0
.LCFI144:
	stwu 1,-24(1)
.LCFI145:
	.loc 1 848 0
	lis 9,cur_state@ha
	.loc 1 847 0
	stfd 31,16(1)
.LCFI146:
	fmr 31,1
	stw 0,28(1)
.LCFI147:
	.loc 1 848 0
	lwz 0,cur_state@l(9)
	andi. 11,0,1
	bne- 0,.L623
.LVL595:
	.loc 1 849 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32453
	beq 7,.L617
	cmplwi 7,4,33083
	bgt- 7,.L621
	cmplwi 7,4,10240
	blt- 7,.L614
	cmplwi 7,4,10243
	ble- 7,.L615
	xoris 0,4,0xffff
	cmpwi 7,0,-32454
	bne 7,.L614
	.loc 1 855 0
	lis 9,cur_tex@ha
	.loc 1 869 0
	lwz 0,28(1)
	.loc 1 855 0
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 869 0
	lfd 31,16(1)
.LVL596:
	.loc 1 855 0
	mulli 11,11,108
	.loc 1 869 0
	mtlr 0
	addi 1,1,24
	.loc 1 855 0
	add 11,11,9
	stfs 1,8(11)
	.loc 1 869 0
	blr
.LVL597:
.L623:
	.loc 1 848 0
	lis 4,.LC14@ha
.LVL598:
	li 3,1282
.LVL599:
	la 4,.LC14@l(4)
	li 5,848
	bl _glSetErrorEx
	.loc 1 869 0
	lwz 0,28(1)
	lfd 31,16(1)
.LVL600:
	addi 1,1,24
	mtlr 0
	blr
.LVL601:
.L621:
	.loc 1 849 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32451
	beq 7,.L619
	cmplwi 7,4,33085
	blt- 7,.L618
	xoris 0,4,0xffff
	cmpwi 7,0,-31490
	beq 7,.L624
.L614:
	.loc 1 866 0
	lis 4,.LC14@ha
.LVL602:
	li 3,1280
.LVL603:
	la 4,.LC14@l(4)
	li 5,866
	bl _glSetErrorEx
	.loc 1 869 0
	lwz 0,28(1)
	lfd 31,16(1)
.LVL604:
	addi 1,1,24
	mtlr 0
	blr
.LVL605:
.L617:
	lwz 0,28(1)
	lfd 31,16(1)
.LVL606:
	addi 1,1,24
	mtlr 0
	.loc 1 856 0
	b setMaxLod
.LVL607:
.L619:
	.loc 1 862 0
	lis 3,texMan@ha
.LVL608:
	la 3,texMan@l(3)
	bl getCur
.LVL609:
	fmr 0,31
	addi 9,1,8
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 0,8(1)
	stb 0,74(3)
	.loc 1 869 0
	lwz 0,28(1)
	lfd 31,16(1)
.LVL610:
	addi 1,1,24
	mtlr 0
	blr
.LVL611:
.L615:
	.loc 1 854 0
	fmr 0,1
	addi 9,1,8
	.loc 1 869 0
	lwz 0,28(1)
	lfd 31,16(1)
.LVL612:
	.loc 1 854 0
	fctiwz 13,0
	.loc 1 869 0
	mtlr 0
	.loc 1 854 0
	stfiwx 13,0,9
	lwz 5,8(1)
	.loc 1 869 0
	addi 1,1,24
	.loc 1 854 0
	b glTexParameteri
.LVL613:
.L624:
	.loc 1 869 0
	lwz 0,28(1)
	lfd 31,16(1)
.LVL614:
	addi 1,1,24
	mtlr 0
	.loc 1 857 0
	b setAniso
.LVL615:
.L618:
	.loc 1 859 0
	lis 3,texMan@ha
.LVL616:
	la 3,texMan@l(3)
	bl getCur
.LVL617:
	fmr 0,31
	addi 9,1,8
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 0,8(1)
	stb 0,73(3)
	.loc 1 869 0
	lwz 0,28(1)
	lfd 31,16(1)
.LVL618:
	addi 1,1,24
	mtlr 0
	blr
.LFE86:
	.size	glTexParameterf, .-glTexParameterf
	.align 2
	.globl glTexParameterfv
	.type	glTexParameterfv, @function
glTexParameterfv:
.LFB87:
	.loc 1 874 0
.LVL619:
	mflr 0
.LCFI148:
	stwu 1,-8(1)
.LCFI149:
	.loc 1 875 0
	lis 9,cur_state@ha
	.loc 1 874 0
	stw 0,12(1)
.LCFI150:
	.loc 1 875 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L634
	.loc 1 876 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32666
	beq 7,.L631
	cmplwi 7,4,32870
	bgt- 7,.L632
	cmpwi 7,4,4100
	beq- 7,.L630
	cmplwi 7,4,4100
	blt- 7,.L629
	addi 0,4,-10240
	cmplwi 7,0,3
	ble- 7,.L631
.L629:
	.loc 1 895 0
	lis 4,.LC14@ha
.LVL620:
	li 3,1280
.LVL621:
	la 4,.LC14@l(4)
	li 5,895
.LVL622:
	bl _glSetErrorEx
	.loc 1 898 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL623:
.L632:
	.loc 1 876 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32654
	beq 7,.L631
	cmplwi 7,4,32882
	blt- 7,.L629
	addis 9,4,0xffff
	addi 9,9,32454
	cmplwi 7,9,3
	bgt- 7,.L629
.L631:
	.loc 1 898 0
	lwz 0,12(1)
	addi 1,1,8
	.loc 1 888 0
	lfs 1,0(5)
	.loc 1 898 0
	mtlr 0
	.loc 1 888 0
	b glTexParameterf
.LVL624:
.L630:
	.loc 1 898 0
	lwz 0,12(1)
	.loc 1 891 0
	lis 11,.LANCHOR1@ha
	lfs 11,12(5)
	la 9,.LANCHOR1@l(11)
	lfs 13,0(5)
	.loc 1 898 0
	mtlr 0
	.loc 1 891 0
	lfs 0,4(5)
	.loc 1 898 0
	addi 1,1,8
	.loc 1 891 0
	lfs 12,8(5)
	stfs 0,4(9)
	stfs 13,.LANCHOR1@l(11)
	stfs 11,12(9)
	stfs 12,8(9)
	.loc 1 898 0
	blr
.L634:
	.loc 1 875 0
	lis 4,.LC14@ha
.LVL625:
	li 3,1282
.LVL626:
	la 4,.LC14@l(4)
	li 5,875
.LVL627:
	bl _glSetErrorEx
	.loc 1 898 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE87:
	.size	glTexParameterfv, .-glTexParameterfv
	.align 2
	.globl glSetScale
	.type	glSetScale, @function
glSetScale:
.LFB94:
	.loc 1 997 0
.LVL628:
	fmr 0,1
	stwu 1,-32(1)
.LCFI151:
	mflr 0
.LCFI152:
	stfd 31,24(1)
.LCFI153:
	.loc 1 998 0
	fmr 31,0
	.loc 1 997 0
	stw 31,20(1)
.LCFI154:
	stw 0,36(1)
.LCFI155:
	.loc 1 997 0
	mr 31,3
	.loc 1 998 0
	bl floor
.LVL629:
	fcmpu 7,31,1
	bne- 7,.L645
	.loc 1 1003 0
	fctiwz 0,31
	addi 9,1,8
	stfiwx 0,0,9
	lwz 0,8(1)
	cmpwi 7,0,2
	beq- 7,.L642
	cmpwi 7,0,4
	beq- 7,.L643
	cmpwi 7,0,1
	beq- 7,.L646
	.loc 1 1009 0
	lis 4,.LC14@ha
	li 3,1281
	la 4,.LC14@l(4)
	li 5,1009
	bl _glSetErrorEx
	.loc 1 1011 0
	lwz 0,36(1)
	lwz 31,20(1)
.LVL630:
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
	blr
.LVL631:
.L645:
	.loc 1 1000 0
	lis 4,.LC14@ha
	li 3,1281
	la 4,.LC14@l(4)
	li 5,1000
	bl _glSetErrorEx
	.loc 1 1011 0
	lwz 0,36(1)
	lwz 31,20(1)
.LVL632:
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
	blr
.LVL633:
.L642:
	.loc 1 1006 0
	li 0,1
	stb 0,0(31)
	.loc 1 1011 0
	lwz 0,36(1)
	lwz 31,20(1)
.LVL634:
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
	blr
.LVL635:
.L646:
	.loc 1 1005 0
	li 0,0
	stb 0,0(31)
	.loc 1 1011 0
	lwz 0,36(1)
	lwz 31,20(1)
.LVL636:
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
	blr
.LVL637:
.L643:
	.loc 1 1007 0
	li 0,2
	stb 0,0(31)
	.loc 1 1011 0
	lwz 0,36(1)
	lwz 31,20(1)
.LVL638:
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
	blr
.LFE94:
	.size	glSetScale, .-glSetScale
	.align 2
	.globl _glTexEnvi
	.type	_glTexEnvi, @function
_glTexEnvi:
.LFB96:
	.loc 1 1041 0
.LVL639:
	mflr 0
.LCFI156:
	stwu 1,-16(1)
.LCFI157:
	mr 10,4
	stw 0,20(1)
.LCFI158:
	.loc 1 1042 0
	li 0,0
	ori 0,0,34184
	cmpw 7,3,0
	beq- 7,.L657
.LVL640:
	cmplwi 7,3,34184
	ble- 7,.L675
	xoris 0,3,0xffff
	cmpwi 7,0,-31343
	beq 7,.L661
	cmplwi 7,3,34193
	ble- 7,.L676
	xoris 0,3,0xffff
	cmpwi 7,0,-31336
	beq 7,.L663
	cmplwi 7,3,34200
	ble- 7,.L677
	xoris 0,3,0xffff
	cmpwi 7,0,-31335
	beq 7,.L664
	xoris 0,3,0xffff
	cmpwi 7,0,-31334
	bne 7,.L648
	.loc 1 1058 0
	lis 11,cur_tex@ha
	lwz 9,cur_tex@l(11)
	mulli 9,9,108
	addi 9,9,56
	b .L674
.L675:
	.loc 1 1042 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31374
	beq 7,.L652
	cmplwi 7,3,34162
	bgt- 7,.L667
	cmpwi 7,3,8704
	beq- 7,.L650
	xoris 0,3,0xffff
	cmpwi 7,0,-31375
	beq 7,.L651
	cmpwi 7,3,3356
	beq- 7,.L678
.L648:
	.loc 1 1062 0
	lis 4,.LC14@ha
	li 3,1280
.LVL641:
	la 4,.LC14@l(4)
	li 5,1062
	bl _glSetErrorEx
.LVL642:
	.loc 1 1065 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LVL643:
.L676:
	.loc 1 1042 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31350
	beq 7,.L659
	cmplwi 7,3,34186
	blt- 7,.L658
	xoris 0,3,0xffff
	cmpwi 7,0,-31344
	bne 7,.L648
	.loc 1 1053 0
	lis 11,cur_tex@ha
	lwz 9,cur_tex@l(11)
	mulli 9,9,108
	addi 9,9,48
	b .L673
.L667:
	.loc 1 1042 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31360
	beq 7,.L654
	cmplwi 7,3,34176
	ble- 7,.L679
	xoris 0,3,0xffff
	cmpwi 7,0,-31359
	beq 7,.L655
	xoris 0,3,0xffff
	cmpwi 7,0,-31358
	bne 7,.L648
	.loc 1 1049 0
	lis 9,cur_tex@ha
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1049 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1065 0
	mtlr 0
	.loc 1 1049 0
	mulli 4,4,108
	mr 3,10
.LVL644:
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1049 0
	add 4,4,9
	addi 4,4,44
	b glSetSrc
.LVL645:
.L658:
	.loc 1 1051 0
	lis 9,cur_tex@ha
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1051 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1065 0
	mtlr 0
	.loc 1 1051 0
	mulli 4,4,108
	mr 3,10
.LVL646:
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1051 0
	add 4,4,9
	addi 4,4,64
	b glSetSrc
.LVL647:
.L678:
	.loc 1 1060 0
	xoris 0,4,0x8000
	lis 9,0x4330
	stw 0,12(1)
	stw 9,8(1)
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	lis 9,cur_tex@ha
	lfd 1,8(1)
	lwz 3,cur_tex@l(9)
.LVL648:
	lis 9,glTexEnvs@ha
	fsub 1,1,0
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1060 0
	mulli 3,3,108
	la 9,glTexEnvs@l(9)
	.loc 1 1065 0
	mtlr 0
	addi 1,1,16
	.loc 1 1060 0
	frsp 1,1
	add 3,3,9
	addi 3,3,105
	b glSetScale
.LVL649:
.L659:
	.loc 1 1052 0
	lis 9,cur_tex@ha
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1052 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1065 0
	mtlr 0
	.loc 1 1052 0
	mulli 4,4,108
	mr 3,10
.LVL650:
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1052 0
	add 4,4,9
	addi 4,4,68
	b glSetSrc
.LVL651:
.L654:
	.loc 1 1047 0
	lis 9,cur_tex@ha
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1047 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1065 0
	mtlr 0
	.loc 1 1047 0
	mulli 4,4,108
	mr 3,10
.LVL652:
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1047 0
	add 4,4,9
	addi 4,4,36
	b glSetSrc
.LVL653:
.L651:
	.loc 1 1045 0
	lis 9,cur_tex@ha
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1045 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1065 0
	mtlr 0
	.loc 1 1045 0
	mulli 4,4,108
	mr 3,10
.LVL654:
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1045 0
	add 4,4,9
	addi 4,4,28
	b glSetComRGB
.LVL655:
.L650:
	.loc 1 1044 0
	lis 9,cur_tex@ha
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1044 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1065 0
	mtlr 0
	.loc 1 1044 0
	mulli 4,4,108
	mr 3,10
.LVL656:
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1044 0
	add 4,4,9
	addi 4,4,24
	b glSetTexEnvMode
.LVL657:
.L661:
	.loc 1 1054 0
	lis 11,cur_tex@ha
	lwz 9,cur_tex@l(11)
	mulli 9,9,108
	addi 9,9,52
.L673:
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1054 0
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	mr 3,10
.LVL658:
	.loc 1 1065 0
	mtlr 0
	.loc 1 1054 0
	add 4,9,4
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1054 0
	b glSetRGBOp
.LVL659:
.L663:
	.loc 1 1056 0
	lis 11,cur_tex@ha
	lwz 9,cur_tex@l(11)
	mulli 9,9,108
	addi 9,9,48
.L674:
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1057 0
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	mr 3,10
.LVL660:
	.loc 1 1065 0
	mtlr 0
	.loc 1 1057 0
	add 4,9,4
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1057 0
	b glSetAlphaOp
.LVL661:
.L652:
	.loc 1 1046 0
	lis 11,cur_tex@ha
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1046 0
	lwz 9,cur_tex@l(11)
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	.loc 1 1065 0
	mtlr 0
	.loc 1 1046 0
	mulli 9,9,108
	mr 3,10
.LVL662:
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1046 0
	addi 9,9,32
	add 4,9,4
	b glSetComAlpha
.LVL663:
.L657:
	.loc 1 1050 0
	lis 9,cur_tex@ha
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1050 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1065 0
	mtlr 0
	.loc 1 1050 0
	mulli 4,4,108
	mr 3,10
.LVL664:
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1050 0
	add 4,4,9
	addi 4,4,60
	b glSetSrc
.LVL665:
.L679:
	.loc 1 1042 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31373
	bne 7,.L648
	.loc 1 1059 0
	xoris 0,4,0x8000
	lis 9,0x4330
	stw 0,12(1)
	stw 9,8(1)
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	lis 9,cur_tex@ha
	lfd 1,8(1)
	lwz 3,cur_tex@l(9)
.LVL666:
	lis 9,glTexEnvs@ha
	fsub 1,1,0
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1059 0
	mulli 3,3,108
	la 9,glTexEnvs@l(9)
	.loc 1 1065 0
	mtlr 0
	addi 1,1,16
	.loc 1 1059 0
	frsp 1,1
	add 3,3,9
	addi 3,3,104
	b glSetScale
.LVL667:
.L677:
	.loc 1 1042 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31342
	bne 7,.L648
	.loc 1 1055 0
	lis 11,cur_tex@ha
	lwz 9,cur_tex@l(11)
	mulli 9,9,108
	addi 9,9,56
	b .L673
.L655:
	.loc 1 1048 0
	lis 9,cur_tex@ha
	.loc 1 1065 0
	lwz 0,20(1)
	.loc 1 1048 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1065 0
	mtlr 0
	.loc 1 1048 0
	mulli 4,4,108
	mr 3,10
.LVL668:
	.loc 1 1065 0
	addi 1,1,16
	.loc 1 1048 0
	add 4,4,9
	addi 4,4,40
	b glSetSrc
.LVL669:
.L664:
	.loc 1 1057 0
	lis 11,cur_tex@ha
	lwz 9,cur_tex@l(11)
	mulli 9,9,108
	addi 9,9,52
	b .L674
.LFE96:
	.size	_glTexEnvi, .-_glTexEnvi
	.align 2
	.globl glTexEnvi
	.type	glTexEnvi, @function
glTexEnvi:
.LFB101:
	.loc 1 1193 0
.LVL670:
	mflr 0
.LCFI159:
	stwu 1,-16(1)
.LCFI160:
	.loc 1 1194 0
	lis 9,cur_state@ha
	.loc 1 1193 0
	stw 0,20(1)
.LCFI161:
	.loc 1 1194 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L691
	.loc 1 1196 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31488
	beq 7,.L692
	.loc 1 1208 0
	cmpwi 7,3,8960
	beq- 7,.L693
	.loc 1 1212 0
	mr 4,3
.LVL671:
	lis 3,.LC20@ha
.LVL672:
	la 3,.LC20@l(3)
	crxor 6,6,6
	bl printf
.LVL673:
	.loc 1 1213 0
	lis 4,.LC14@ha
	la 4,.LC14@l(4)
	li 3,1280
	li 5,1213
	bl _glSetErrorEx
.LVL674:
.L690:
	.loc 1 1216 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.L692:
	.loc 1 1197 0
	xoris 0,4,0xffff
	cmpwi 7,0,-31487
	beq 7,.L694
	.loc 1 1204 0
	lis 4,.LC14@ha
.LVL675:
	li 3,1280
.LVL676:
	la 4,.LC14@l(4)
	li 5,1204
.LVL677:
	bl _glSetErrorEx
	.loc 1 1216 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LVL678:
.L691:
	.loc 1 1194 0
	lis 4,.LC14@ha
.LVL679:
	li 3,1282
.LVL680:
	la 4,.LC14@l(4)
	li 5,1194
.LVL681:
	bl _glSetErrorEx
	.loc 1 1216 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LVL682:
.L693:
	lwz 0,20(1)
	.loc 1 1210 0
	mr 3,4
.LVL683:
	.loc 1 1216 0
	addi 1,1,16
	.loc 1 1210 0
	mr 4,5
.LVL684:
	.loc 1 1216 0
	mtlr 0
	.loc 1 1210 0
	b _glTexEnvi
.LVL685:
.L694:
	.loc 1 1199 0
	lis 9,0x4330
	xoris 0,5,0x8000
	stw 9,8(1)
	lis 9,.LC10@ha
	stw 0,12(1)
	lfs 0,.LC10@l(9)
	lis 9,cur_tex@ha
	lfd 13,8(1)
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	fsub 13,13,0
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	frsp 13,13
	add 11,11,9
	stfs 13,16(11)
	b .L690
.LFE101:
	.size	glTexEnvi, .-glTexEnvi
	.align 2
	.globl glTexEnvf
	.type	glTexEnvf, @function
glTexEnvf:
.LFB100:
	.loc 1 1168 0
.LVL686:
	mflr 0
.LCFI162:
	stwu 1,-16(1)
.LCFI163:
	.loc 1 1169 0
	lis 9,cur_state@ha
	.loc 1 1168 0
	stw 0,20(1)
.LCFI164:
	.loc 1 1169 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L706
	.loc 1 1171 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31488
	beq 7,.L707
	.loc 1 1183 0
	cmpwi 7,3,8960
	beq- 7,.L708
	.loc 1 1187 0
	lis 4,.LC14@ha
.LVL687:
	li 3,1280
.LVL688:
	la 4,.LC14@l(4)
	li 5,1187
	bl _glSetErrorEx
.LVL689:
.LVL690:
.L705:
	.loc 1 1190 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.L707:
	.loc 1 1172 0
	xoris 0,4,0xffff
	cmpwi 7,0,-31487
	beq 7,.L709
	.loc 1 1179 0
	lis 4,.LC14@ha
.LVL691:
	li 3,1280
.LVL692:
	la 4,.LC14@l(4)
	li 5,1179
	bl _glSetErrorEx
.LVL693:
	.loc 1 1190 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LVL694:
.L706:
	.loc 1 1169 0
	lis 4,.LC14@ha
.LVL695:
	li 3,1282
.LVL696:
	la 4,.LC14@l(4)
	li 5,1169
	bl _glSetErrorEx
.LVL697:
	.loc 1 1190 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LVL698:
.L708:
	.loc 1 1185 0
	fmr 13,1
	addi 9,1,8
	.loc 1 1190 0
	lwz 0,20(1)
	.loc 1 1185 0
	mr 3,4
.LVL699:
	fctiwz 0,13
	.loc 1 1190 0
	mtlr 0
	.loc 1 1185 0
	stfiwx 0,0,9
	lwz 4,8(1)
.LVL700:
	.loc 1 1190 0
	addi 1,1,16
	.loc 1 1185 0
	b _glTexEnvi
.LVL701:
.L709:
	.loc 1 1174 0
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stfs 1,16(11)
	b .L705
.LFE100:
	.size	glTexEnvf, .-glTexEnvf
	.align 2
	.globl glTexEnviv
	.type	glTexEnviv, @function
glTexEnviv:
.LFB99:
	.loc 1 1124 0
.LVL702:
	mflr 0
.LCFI165:
	stwu 1,-32(1)
.LCFI166:
	.loc 1 1125 0
	lis 9,cur_state@ha
	.loc 1 1124 0
	stw 31,28(1)
.LCFI167:
	mr 31,5
	stw 0,36(1)
.LCFI168:
	stw 29,20(1)
.LCFI169:
	.loc 1 1125 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L725
.LVL703:
	.loc 1 1127 0
	cmpwi 7,5,0
	beq- 7,.L726
.LVL704:
	.loc 1 1133 0
	cmpwi 7,3,8960
	beq- 7,.L727
	.loc 1 1147 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31488
	bne 7,.L720
	.loc 1 1149 0
	xoris 0,4,0xffff
	cmpwi 7,0,-31487
	beq 7,.L728
	.loc 1 1156 0
	lis 4,.LC14@ha
.LVL705:
	li 3,1280
.LVL706:
	la 4,.LC14@l(4)
	li 5,1156
.LVL707:
	bl _glSetErrorEx
	.loc 1 1165 0
	lwz 0,36(1)
	lwz 29,20(1)
	lwz 31,28(1)
.LVL708:
	mtlr 0
	addi 1,1,32
	blr
.LVL709:
.L725:
	.loc 1 1125 0
	lis 4,.LC14@ha
.LVL710:
	li 3,1282
.LVL711:
	la 4,.LC14@l(4)
	li 5,1125
	bl _glSetErrorEx
.L724:
	.loc 1 1165 0
	lwz 0,36(1)
	lwz 29,20(1)
	lwz 31,28(1)
.LVL712:
	mtlr 0
	addi 1,1,32
	blr
.LVL713:
.L720:
	.loc 1 1162 0
	lis 4,.LC14@ha
.LVL714:
	li 3,1280
.LVL715:
	la 4,.LC14@l(4)
	li 5,1162
.LVL716:
	bl _glSetErrorEx
	.loc 1 1165 0
	lwz 0,36(1)
	lwz 29,20(1)
	lwz 31,28(1)
.LVL717:
	mtlr 0
	addi 1,1,32
	blr
.LVL718:
.L727:
	.loc 1 1135 0
	cmpwi 7,4,8705
	beq- 7,.L729
	.loc 1 1144 0
	lwz 0,0(5)
	lis 9,0x4330
	stw 9,8(1)
	lis 9,.LC10@ha
	xoris 0,0,0x8000
	lfs 0,.LC10@l(9)
	stw 0,12(1)
	.loc 1 1165 0
	lwz 0,36(1)
	.loc 1 1144 0
	lfd 1,8(1)
	.loc 1 1165 0
	mtlr 0
	lwz 29,20(1)
	.loc 1 1144 0
	fsub 1,1,0
	.loc 1 1165 0
	lwz 31,28(1)
	addi 1,1,32
	.loc 1 1144 0
	frsp 1,1
	b glTexEnvf
.LVL719:
.L728:
	.loc 1 1151 0
	lwz 0,0(5)
	lis 9,0x4330
	stw 9,8(1)
	lis 9,.LC10@ha
	xoris 0,0,0x8000
	lfs 0,.LC10@l(9)
	stw 0,12(1)
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	lfd 13,8(1)
	la 9,glTexEnvs@l(9)
	.loc 1 1165 0
	lwz 0,36(1)
	.loc 1 1151 0
	mulli 11,11,108
	fsub 13,13,0
	.loc 1 1165 0
	lwz 29,20(1)
	.loc 1 1151 0
	add 11,11,9
	.loc 1 1165 0
	lwz 31,28(1)
	mtlr 0
	addi 1,1,32
	.loc 1 1151 0
	frsp 13,13
	stfs 13,16(11)
	.loc 1 1165 0
	blr
.LVL720:
.L726:
	.loc 1 1129 0
	lis 4,.LC14@ha
.LVL721:
	li 3,1281
.LVL722:
	la 4,.LC14@l(4)
	li 5,1129
.LVL723:
	bl _glSetErrorEx
	b .L724
.LVL724:
.L729:
	.loc 1 1137 0
	lis 9,cur_tex@ha
	lwz 3,0(5)
.LVL725:
	lwz 29,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 29,29,108
	add 29,29,9
	bl scale_s32
.LVL726:
	stfs 1,88(29)
	.loc 1 1138 0
	lwz 3,4(31)
	bl scale_s32
	.loc 1 1139 0
	lwz 3,8(31)
	.loc 1 1138 0
	stfs 1,92(29)
	.loc 1 1139 0
	bl scale_s32
	.loc 1 1140 0
	lwz 3,12(31)
	.loc 1 1139 0
	stfs 1,96(29)
	.loc 1 1140 0
	bl scale_s32
	stfs 1,100(29)
	b .L724
.LFE99:
	.size	glTexEnviv, .-glTexEnviv
	.align 2
	.globl glTexEnvfv
	.type	glTexEnvfv, @function
glTexEnvfv:
.LFB97:
	.loc 1 1068 0
.LVL727:
	mflr 0
.LCFI170:
	stwu 1,-8(1)
.LCFI171:
	.loc 1 1069 0
	lis 9,cur_state@ha
	.loc 1 1068 0
	stw 0,12(1)
.LCFI172:
	.loc 1 1069 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L745
	.loc 1 1071 0
	cmpwi 7,5,0
	beq- 7,.L746
	.loc 1 1077 0
	cmpwi 7,3,8960
	beq- 7,.L747
	.loc 1 1091 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31488
	bne 7,.L740
	.loc 1 1093 0
	xoris 0,4,0xffff
	cmpwi 7,0,-31487
	beq 7,.L748
	.loc 1 1100 0
	lis 4,.LC14@ha
.LVL728:
	li 3,1280
.LVL729:
	la 4,.LC14@l(4)
	li 5,1100
.LVL730:
	bl _glSetErrorEx
	.loc 1 1109 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL731:
.L745:
	.loc 1 1069 0
	lis 4,.LC14@ha
.LVL732:
	li 3,1282
.LVL733:
	la 4,.LC14@l(4)
	li 5,1069
.LVL734:
	bl _glSetErrorEx
.LVL735:
.L744:
	.loc 1 1109 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L740:
	.loc 1 1106 0
	lis 4,.LC14@ha
.LVL736:
	li 3,1280
.LVL737:
	la 4,.LC14@l(4)
	li 5,1106
.LVL738:
	bl _glSetErrorEx
	.loc 1 1109 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL739:
.L747:
	.loc 1 1079 0
	cmpwi 7,4,8705
	bne- 7,.L738
	.loc 1 1081 0
	lis 9,cur_tex@ha
	lfs 13,0(5)
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 11,11,9
	stfs 13,88(11)
	.loc 1 1082 0
	lfs 0,4(5)
	stfs 0,92(11)
	.loc 1 1083 0
	lfs 13,8(5)
	stfs 13,96(11)
	.loc 1 1084 0
	lfs 0,12(5)
	stfs 0,100(11)
	b .L744
.L748:
	.loc 1 1095 0
	lis 9,cur_tex@ha
	.loc 1 1109 0
	lwz 0,12(1)
	.loc 1 1095 0
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	lfs 0,0(5)
	mulli 11,11,108
	.loc 1 1109 0
	mtlr 0
	addi 1,1,8
	.loc 1 1095 0
	add 11,11,9
	stfs 0,16(11)
	.loc 1 1109 0
	blr
.L738:
	lwz 0,12(1)
	addi 1,1,8
	.loc 1 1088 0
	lfs 1,0(5)
	.loc 1 1109 0
	mtlr 0
	.loc 1 1088 0
	b glTexEnvf
.LVL740:
.L746:
	.loc 1 1073 0
	lis 4,.LC14@ha
.LVL741:
	li 3,1281
.LVL742:
	la 4,.LC14@l(4)
	li 5,1073
.LVL743:
	bl _glSetErrorEx
	b .L744
.LFE97:
	.size	glTexEnvfv, .-glTexEnvfv
	.align 2
	.globl _glTexEnvf
	.type	_glTexEnvf, @function
_glTexEnvf:
.LFB95:
	.loc 1 1014 0
.LVL744:
	mflr 0
.LCFI173:
	stwu 1,-16(1)
.LCFI174:
	fmr 0,1
	stw 0,20(1)
.LCFI175:
	.loc 1 1015 0
	li 0,0
	ori 0,0,34184
	cmpw 7,3,0
	beq- 7,.L759
.LVL745:
	cmplwi 7,3,34184
	ble- 7,.L807
	xoris 0,3,0xffff
	cmpwi 7,0,-31343
	beq 7,.L763
	cmplwi 7,3,34193
	ble- 7,.L808
	xoris 0,3,0xffff
	cmpwi 7,0,-31336
	beq 7,.L765
	cmplwi 7,3,34200
	ble- 7,.L809
	xoris 0,3,0xffff
	cmpwi 7,0,-31335
	beq 7,.L766
	xoris 0,3,0xffff
	cmpwi 7,0,-31334
	bne 7,.L750
	.loc 1 1031 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL746:
	cror 30,29,30
	beq- 7,.L801
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL747:
.L802:
	lis 11,cur_tex@ha
	lwz 9,cur_tex@l(11)
	mulli 9,9,108
	addi 9,9,56
.L806:
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1030 0
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	.loc 1 1038 0
	addi 1,1,16
	mtlr 0
	.loc 1 1030 0
	add 4,9,4
	b glSetAlphaOp
.LVL748:
.L807:
	.loc 1 1015 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31374
	beq 7,.L754
	cmplwi 7,3,34162
	bgt- 7,.L769
	cmpwi 7,3,8704
	beq- 7,.L752
	xoris 0,3,0xffff
	cmpwi 7,0,-31375
	beq 7,.L753
	cmpwi 7,3,3356
	beq- 7,.L810
.L750:
	.loc 1 1035 0
	lis 4,.LC14@ha
	li 3,1280
.LVL749:
	la 4,.LC14@l(4)
	li 5,1035
	bl _glSetErrorEx
.LVL750:
	.loc 1 1038 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LVL751:
.L808:
	.loc 1 1015 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31350
	beq 7,.L761
	cmplwi 7,3,34186
	blt- 7,.L760
	xoris 0,3,0xffff
	cmpwi 7,0,-31344
	bne 7,.L750
	.loc 1 1026 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL752:
	cror 30,29,30
	beq- 7,.L791
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL753:
.L792:
	lis 11,cur_tex@ha
	lwz 9,cur_tex@l(11)
	mulli 9,9,108
	addi 9,9,48
	b .L805
.LVL754:
.L769:
	.loc 1 1015 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31360
	beq 7,.L756
	cmplwi 7,3,34176
	ble- 7,.L811
	xoris 0,3,0xffff
	cmpwi 7,0,-31359
	beq 7,.L757
	xoris 0,3,0xffff
	cmpwi 7,0,-31358
	bne 7,.L750
	.loc 1 1022 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL755:
	cror 30,29,30
	beq- 7,.L783
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL756:
.L784:
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1022 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1022 0
	mulli 4,4,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1022 0
	add 4,4,9
	addi 4,4,44
	b glSetSrc
.LVL757:
.L760:
	.loc 1 1024 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL758:
	cror 30,29,30
	beq- 7,.L787
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL759:
.L788:
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1024 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1024 0
	mulli 4,4,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1024 0
	add 4,4,9
	addi 4,4,64
	b glSetSrc
.LVL760:
.L810:
	.loc 1 1033 0
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1033 0
	lwz 3,cur_tex@l(9)
.LVL761:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1033 0
	mulli 3,3,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1033 0
	add 3,3,9
	addi 3,3,105
	b glSetScale
.LVL762:
.L761:
	.loc 1 1025 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL763:
	cror 30,29,30
	beq- 7,.L789
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL764:
.L790:
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1025 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1025 0
	mulli 4,4,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1025 0
	add 4,4,9
	addi 4,4,68
	b glSetSrc
.LVL765:
.L756:
	.loc 1 1020 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL766:
	cror 30,29,30
	beq- 7,.L779
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL767:
.L780:
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1020 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1020 0
	mulli 4,4,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1020 0
	add 4,4,9
	addi 4,4,36
	b glSetSrc
.LVL768:
.L753:
	.loc 1 1018 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL769:
	cror 30,29,30
	beq- 7,.L775
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL770:
.L776:
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1018 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1018 0
	mulli 4,4,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1018 0
	add 4,4,9
	addi 4,4,28
	b glSetComRGB
.LVL771:
.L752:
	.loc 1 1017 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL772:
	cror 30,29,30
	beq- 7,.L773
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL773:
.L774:
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1017 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1017 0
	mulli 4,4,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1017 0
	add 4,4,9
	addi 4,4,24
	b glSetTexEnvMode
.LVL774:
.L763:
	.loc 1 1027 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL775:
	cror 30,29,30
	beq- 7,.L793
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL776:
.L794:
	lis 11,cur_tex@ha
	lwz 9,cur_tex@l(11)
	mulli 9,9,108
	addi 9,9,52
	b .L805
.LVL777:
.L765:
	.loc 1 1029 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL778:
	cror 30,29,30
	beq- 7,.L797
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL779:
.L798:
	lis 11,cur_tex@ha
	lwz 9,cur_tex@l(11)
	mulli 9,9,108
	addi 9,9,48
	b .L806
.LVL780:
.L754:
	.loc 1 1019 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL781:
	cror 30,29,30
	beq- 7,.L777
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL782:
.L778:
	lis 11,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1019 0
	lwz 9,cur_tex@l(11)
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1019 0
	mulli 9,9,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1019 0
	addi 9,9,32
	add 4,9,4
	b glSetComAlpha
.LVL783:
.L759:
	.loc 1 1023 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL784:
	cror 30,29,30
	beq- 7,.L785
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL785:
.L786:
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1023 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1023 0
	mulli 4,4,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1023 0
	add 4,4,9
	addi 4,4,60
	b glSetSrc
.LVL786:
.L811:
	.loc 1 1015 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31373
	bne 7,.L750
	.loc 1 1032 0
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1032 0
	lwz 3,cur_tex@l(9)
.LVL787:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1032 0
	mulli 3,3,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1032 0
	add 3,3,9
	addi 3,3,104
	b glSetScale
.LVL788:
.L809:
	.loc 1 1015 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31342
	bne 7,.L750
	.loc 1 1028 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL789:
	cror 30,29,30
	beq- 7,.L795
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL790:
.L796:
	lis 11,cur_tex@ha
	lwz 9,cur_tex@l(11)
	mulli 9,9,108
	addi 9,9,56
.L805:
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1027 0
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	.loc 1 1038 0
	addi 1,1,16
	mtlr 0
	.loc 1 1027 0
	add 4,9,4
	b glSetRGBOp
.LVL791:
.L787:
	.loc 1 1024 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL792:
	addis 3,3,0x8000
	b .L788
.LVL793:
.L779:
	.loc 1 1020 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL794:
	addis 3,3,0x8000
	b .L780
.LVL795:
.L789:
	.loc 1 1025 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL796:
	addis 3,3,0x8000
	b .L790
.LVL797:
.L797:
	.loc 1 1029 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL798:
	addis 3,3,0x8000
	b .L798
.LVL799:
.L793:
	.loc 1 1027 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL800:
	addis 3,3,0x8000
	b .L794
.LVL801:
.L773:
	.loc 1 1017 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL802:
	addis 3,3,0x8000
	b .L774
.LVL803:
.L775:
	.loc 1 1018 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL804:
	addis 3,3,0x8000
	b .L776
.LVL805:
.L785:
	.loc 1 1023 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL806:
	addis 3,3,0x8000
	b .L786
.LVL807:
.L777:
	.loc 1 1019 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL808:
	addis 3,3,0x8000
	b .L778
.LVL809:
.L766:
	.loc 1 1030 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL810:
	cror 30,29,30
	beq- 7,.L799
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL811:
.L800:
	lis 11,cur_tex@ha
	lwz 9,cur_tex@l(11)
	mulli 9,9,108
	addi 9,9,52
	b .L806
.LVL812:
.L757:
	.loc 1 1021 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	fcmpu 7,0,1
.LVL813:
	cror 30,29,30
	beq- 7,.L781
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL814:
.L782:
	lis 9,cur_tex@ha
	.loc 1 1038 0
	lwz 0,20(1)
	.loc 1 1021 0
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	.loc 1 1038 0
	mtlr 0
	.loc 1 1021 0
	mulli 4,4,108
	.loc 1 1038 0
	addi 1,1,16
	.loc 1 1021 0
	add 4,4,9
	addi 4,4,40
	b glSetSrc
.LVL815:
.L801:
	.loc 1 1031 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL816:
	addis 3,3,0x8000
	b .L802
.LVL817:
.L781:
	.loc 1 1021 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL818:
	addis 3,3,0x8000
	b .L782
.LVL819:
.L791:
	.loc 1 1026 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL820:
	addis 3,3,0x8000
	b .L792
.LVL821:
.L795:
	.loc 1 1028 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL822:
	addis 3,3,0x8000
	b .L796
.LVL823:
.L783:
	.loc 1 1022 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL824:
	addis 3,3,0x8000
	b .L784
.LVL825:
.L799:
	.loc 1 1030 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 3,12(1)
.LVL826:
	addis 3,3,0x8000
	b .L800
.LFE95:
	.size	_glTexEnvf, .-_glTexEnvf
	.align 2
	.globl GX_SetTevCombineStage
	.type	GX_SetTevCombineStage, @function
GX_SetTevCombineStage:
.LFB81:
	.loc 1 418 0
.LVL827:
	stwu 1,-72(1)
.LCFI176:
	mflr 0
.LCFI177:
	stw 22,32(1)
.LCFI178:
	.loc 1 424 0
	mr. 22,3
	.loc 1 418 0
	stw 0,76(1)
.LCFI179:
	.loc 1 419 0
	li 0,0
	.loc 1 418 0
	stw 21,28(1)
.LCFI180:
	mr 21,4
	stw 23,36(1)
.LCFI181:
	stw 24,40(1)
.LCFI182:
	stw 25,44(1)
.LCFI183:
	stw 26,48(1)
.LCFI184:
	stw 27,52(1)
.LCFI185:
	stw 28,56(1)
.LCFI186:
	stw 29,60(1)
.LCFI187:
	stw 30,64(1)
.LCFI188:
	stw 31,68(1)
.LCFI189:
	.loc 1 419 0
	stw 0,0(4)
	.loc 1 424 0
	beq- 0,.L813
.LVL828:
	li 31,0
.LVL829:
	li 26,0
.LVL830:
.L815:
	.loc 1 454 0
	lis 23,cur_tex@ha
	lis 11,glTexEnvs@ha
	lwz 9,cur_tex@l(23)
	la 24,glTexEnvs@l(11)
	.loc 1 444 0
	li 0,-1
	.loc 1 447 0
	li 11,7
	.loc 1 454 0
	mulli 9,9,108
	add 9,9,24
	lwz 10,28(9)
	.loc 1 446 0
	li 9,15
	.loc 1 445 0
	stb 0,19(1)
	.loc 1 454 0
	cmpwi 7,10,8448
	.loc 1 446 0
	stb 9,10(1)
	.loc 1 447 0
	stb 11,13(1)
	.loc 1 444 0
	stb 0,14(1)
	.loc 1 445 0
	stb 0,17(1)
	.loc 1 446 0
	stb 9,8(1)
	.loc 1 447 0
	stb 11,11(1)
	.loc 1 444 0
	stb 0,15(1)
	.loc 1 445 0
	stb 0,18(1)
	.loc 1 446 0
	stb 9,9(1)
	.loc 1 447 0
	stb 11,12(1)
	.loc 1 444 0
	stb 0,16(1)
	.loc 1 454 0
	beq- 7,.L817
	cmplwi 7,10,8448
	ble- 7,.L872
	xoris 0,10,0xffff
	cmpwi 7,0,-31372
	beq 7,.L817
	xoris 0,10,0xffff
	cmpwi 7,0,-31371
	beq 7,.L819
	xoris 0,10,0xffff
	cmpwi 7,0,-31513
	beq 7,.L817
.LVL831:
.L864:
	.loc 1 645 0
	lwz 0,76(1)
	lwz 21,28(1)
.LVL832:
	lwz 22,32(1)
.LVL833:
	mtlr 0
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
.LVL834:
	lwz 27,52(1)
.LVL835:
	lwz 28,56(1)
.LVL836:
	lwz 29,60(1)
.LVL837:
	lwz 30,64(1)
	lwz 31,68(1)
.LVL838:
	addi 1,1,72
	blr
.LVL839:
.L813:
	.loc 1 424 0
	li 31,10
.LVL840:
	li 26,5
.LVL841:
	b .L815
.L872:
	.loc 1 454 0
	cmpwi 7,10,260
	beq- 7,.L817
	cmpwi 7,10,7681
	bne+ 7,.L864
	li 27,1
.LVL842:
.L821:
	.loc 1 643 0
	li 29,0
.LVL843:
	addi 28,1,8
	addi 25,1,14
.L822:
	.loc 1 470 0
	lwz 9,cur_tex@l(23)
	add 5,28,29
	add 6,25,29
	mr 7,31
	mulli 9,9,27
	mr 8,26
	add 9,9,29
	.loc 1 468 0
	addi 29,29,1
	.loc 1 470 0
	slwi 9,9,2
	add 9,9,24
	lwz 4,48(9)
.LVL844:
	lwz 3,36(9)
	bl GX_SetTevCIn
	.loc 1 468 0
	cmpw 7,29,27
	blt+ 7,.L822
	.loc 1 474 0
	lis 9,cur_tex@ha
	lwz 11,cur_tex@l(9)
	mulli 11,11,108
	add 11,11,24
	lwz 9,32(11)
	cmpwi 7,9,8448
	beq- 7,.L824
	cmplwi 7,9,8448
	bgt- 7,.L827
	cmpwi 7,9,260
	beq- 7,.L824
	cmpwi 7,9,7681
	bne+ 7,.L864
	li 28,1
.LVL845:
.L828:
	.loc 1 643 0
	li 29,0
.LVL846:
	addi 31,1,11
.LVL847:
	addi 30,1,17
.L829:
	.loc 1 488 0
	lwz 9,cur_tex@l(23)
	add 5,31,29
	add 6,30,29
	mr 7,26
	mulli 9,9,27
	add 9,9,29
	.loc 1 486 0
	addi 29,29,1
	.loc 1 488 0
	slwi 9,9,2
	add 9,9,24
	lwz 4,72(9)
	lwz 3,60(9)
	bl GX_SetTevAIn
	.loc 1 486 0
	cmpw 7,29,28
	blt+ 7,.L829
	cmpw 7,27,28
.LVL848:
	mr 0,27
.LVL849:
	bge- 7,.L831
	mr 0,28
.L831:
	.loc 1 503 0
	cmpwi 7,0,0
	li 31,-1
.LVL850:
	li 29,0
.LVL851:
	ble- 7,.L834
	mtctr 0
.LVL852:
.L835:
	.loc 1 505 0
	lbzx 0,29,25
	.loc 1 507 0
	cmpwi 1,31,-1
	.loc 1 505 0
	extsb 0,0
.LVL853:
	cmpwi 7,0,-1
	.loc 1 513 0
	cmpw 6,31,0
	.loc 1 505 0
	beq- 7,.L836
	.loc 1 507 0
	beq- 1,.L838
	.loc 1 513 0
	bne- 6,.L873
.L836:
	.loc 1 520 0
	lbzx 0,29,30
.LVL854:
	.loc 1 522 0
	cmpwi 1,31,-1
	.loc 1 503 0
	addi 29,29,1
	.loc 1 520 0
	extsb 0,0
.LVL855:
	cmpwi 7,0,-1
	.loc 1 528 0
	cmpw 6,31,0
	.loc 1 520 0
	beq- 7,.L841
	.loc 1 522 0
	beq- 1,.L843
	.loc 1 528 0
	bne- 6,.L874
.L841:
	.loc 1 503 0
	bdnz .L835
.LVL856:
.L834:
	.loc 1 545 0
	lwz 9,cur_tex@l(23)
	mulli 9,9,108
	add 9,9,24
	lwz 9,28(9)
	cmpwi 7,9,8448
	beq- 7,.L848
	cmplwi 7,9,8448
	bgt- 7,.L852
	cmpwi 7,9,260
	beq- 7,.L846
	cmpwi 7,9,7681
	bne+ 7,.L864
	.loc 1 548 0
	lbz 7,8(1)
	mr 3,22
	li 4,15
.LVL857:
.L870:
	.loc 1 558 0
	li 5,15
	li 6,15
	bl GX_SetTevColorIn
.LVL858:
	li 4,0
.LVL859:
	li 5,0
.LVL860:
.L853:
	.loc 1 583 0
	lwz 9,cur_tex@l(23)
	mr 3,22
	li 7,1
	li 8,0
	mulli 9,9,108
	add 9,9,24
	lbz 6,104(9)
	bl GX_SetTevColorOp
.LVL861:
	.loc 1 593 0
	lwz 9,cur_tex@l(23)
	mulli 9,9,108
	add 9,9,24
	lwz 9,32(9)
	cmpwi 7,9,8448
	beq- 7,.L856
	cmplwi 7,9,8448
	bgt- 7,.L860
	cmpwi 7,9,260
	beq- 7,.L854
	cmpwi 7,9,7681
	bne+ 7,.L864
	.loc 1 596 0
	lbz 7,11(1)
	mr 3,22
	li 4,7
.LVL862:
.L871:
	.loc 1 606 0
	li 5,7
	li 6,7
	bl GX_SetTevAlphaIn
.LVL863:
	li 4,0
.LVL864:
	li 5,0
.LVL865:
.L861:
	.loc 1 629 0
	lwz 9,cur_tex@l(23)
	mr 3,22
	li 7,1
	li 8,0
	mulli 9,9,108
	add 9,9,24
	lbz 6,105(9)
	bl GX_SetTevAlphaOp
.LVL866:
	.loc 1 637 0
	cmpwi 7,31,-1
	.loc 1 635 0
	li 0,1
	stw 0,0(21)
	.loc 1 637 0
	beq- 7,.L875
	.loc 1 643 0
	rlwinm 29,29,0,0xff
.LVL867:
	mr 3,29
	bl GX_IncTexCoord
	mr 28,3
.LVL868:
	mr 3,29
	bl GX_IncTexMap
	mr 4,28
	mr 5,3
	li 6,4
	mr 3,22
	bl GX_SetTevOrder
	.loc 1 645 0
	lwz 0,76(1)
	lwz 21,28(1)
.LVL869:
	lwz 22,32(1)
.LVL870:
	mtlr 0
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
.LVL871:
	lwz 27,52(1)
.LVL872:
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
.LVL873:
	addi 1,1,72
	blr
.LVL874:
.L819:
	.loc 1 454 0
	li 27,3
.LVL875:
	b .L821
.LVL876:
.L827:
	.loc 1 474 0
	xoris 0,9,0xffff
	cmpwi 7,0,-31372
	beq 7,.L824
	xoris 0,9,0xffff
	cmpwi 7,0,-31371
	beq 7,.L826
	xoris 0,9,0xffff
	cmpwi 7,0,-31513
	bne 7,.L864
.L824:
	.loc 1 643 0
	li 28,2
.LVL877:
	b .L828
.LVL878:
.L817:
	li 27,2
.LVL879:
	b .L821
.LVL880:
.L874:
	.loc 1 530 0
	lis 4,.LC14@ha
	li 3,1280
	la 4,.LC14@l(4)
	li 5,530
	bl _glSetErrorEx
.LVL881:
	.loc 1 645 0
	lwz 0,76(1)
	lwz 21,28(1)
.LVL882:
	lwz 22,32(1)
.LVL883:
	mtlr 0
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
.LVL884:
	lwz 27,52(1)
.LVL885:
	lwz 28,56(1)
.LVL886:
	lwz 29,60(1)
.LVL887:
	lwz 30,64(1)
	lwz 31,68(1)
.LVL888:
	addi 1,1,72
	blr
.LVL889:
.L838:
	.loc 1 516 0
	mr 31,0
	b .L836
.L843:
	.loc 1 531 0
	mr 31,0
	.loc 1 503 0
	bdnz .L835
.LVL890:
	b .L834
.LVL891:
.L826:
	.loc 1 474 0
	li 28,3
.LVL892:
	b .L828
.LVL893:
.L873:
	.loc 1 515 0
	lis 4,.LC14@ha
	li 3,1280
	la 4,.LC14@l(4)
	li 5,515
	bl _glSetErrorEx
.LVL894:
	.loc 1 645 0
	lwz 0,76(1)
	lwz 21,28(1)
.LVL895:
	lwz 22,32(1)
.LVL896:
	mtlr 0
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
.LVL897:
	lwz 27,52(1)
.LVL898:
	lwz 28,56(1)
.LVL899:
	lwz 29,60(1)
.LVL900:
	lwz 30,64(1)
	lwz 31,68(1)
.LVL901:
	addi 1,1,72
	blr
.LVL902:
.L852:
	.loc 1 545 0
	xoris 0,9,0xffff
	cmpwi 7,0,-31372
	beq 7,.L850
	xoris 0,9,0xffff
	cmpwi 7,0,-31371
	beq 7,.L851
	xoris 0,9,0xffff
	cmpwi 7,0,-31513
	bne 7,.L864
	.loc 1 568 0
	lbz 4,9(1)
	li 5,15
	lbz 7,8(1)
	mr 3,22
	li 6,15
	bl GX_SetTevColorIn
.LVL903:
	li 4,1
.LVL904:
	li 5,0
.LVL905:
	b .L853
.LVL906:
.L860:
	.loc 1 593 0
	xoris 0,9,0xffff
	cmpwi 7,0,-31372
	beq 7,.L858
	xoris 0,9,0xffff
	cmpwi 7,0,-31371
	beq 7,.L859
	xoris 0,9,0xffff
	cmpwi 7,0,-31513
	bne 7,.L864
	.loc 1 616 0
	lbz 4,12(1)
	li 5,7
	lbz 7,11(1)
	mr 3,22
	li 6,7
	bl GX_SetTevAlphaIn
	li 4,1
.LVL907:
	li 5,0
.LVL908:
	b .L861
.LVL909:
.L875:
	.loc 1 639 0
	mr 3,22
	li 4,255
	li 5,255
	li 6,4
	bl GX_SetTevOrder
	b .L864
.LVL910:
.L846:
	.loc 1 558 0
	lbz 4,9(1)
	mr 3,22
	lbz 7,8(1)
	b .L870
.LVL911:
.L848:
	.loc 1 553 0
	lbz 5,8(1)
	li 4,15
	lbz 6,9(1)
	mr 3,22
	li 7,15
	bl GX_SetTevColorIn
.LVL912:
	li 4,0
.LVL913:
	li 5,0
.LVL914:
	b .L853
.LVL915:
.L851:
	.loc 1 573 0
	lbz 4,9(1)
	mr 3,22
	lbz 5,8(1)
	li 7,15
	lbz 6,10(1)
	bl GX_SetTevColorIn
.LVL916:
	li 4,0
.LVL917:
	li 5,0
.LVL918:
	b .L853
.LVL919:
.L850:
	.loc 1 563 0
	lbz 4,9(1)
	li 5,15
	lbz 7,8(1)
	mr 3,22
	li 6,15
	bl GX_SetTevColorIn
.LVL920:
	li 4,0
.LVL921:
	li 5,2
.LVL922:
	b .L853
.LVL923:
.L856:
	.loc 1 601 0
	lbz 5,11(1)
	li 4,7
	lbz 6,12(1)
	mr 3,22
	li 7,7
	bl GX_SetTevAlphaIn
	li 4,0
.LVL924:
	li 5,0
.LVL925:
	b .L861
.LVL926:
.L854:
	.loc 1 606 0
	lbz 4,12(1)
	mr 3,22
	lbz 7,11(1)
	b .L871
.LVL927:
.L859:
	.loc 1 621 0
	lbz 4,12(1)
	mr 3,22
	lbz 5,11(1)
	li 7,7
	lbz 6,13(1)
	bl GX_SetTevAlphaIn
	li 4,0
.LVL928:
	li 5,0
.LVL929:
	b .L861
.LVL930:
.L858:
	.loc 1 611 0
	lbz 4,12(1)
	li 5,7
	lbz 7,11(1)
	mr 3,22
	li 6,7
	bl GX_SetTevAlphaIn
	li 4,0
.LVL931:
	li 5,2
.LVL932:
	b .L861
.LFE81:
	.size	GX_SetTevCombineStage, .-GX_SetTevCombineStage
	.align 2
	.globl GX_SetTevStage
	.type	GX_SetTevStage, @function
GX_SetTevStage:
.LFB82:
	.loc 1 648 0
.LVL933:
	mflr 0
.LCFI190:
	stwu 1,-40(1)
.LCFI191:
	.loc 1 649 0
	lis 11,glTexEnvs@ha
	.loc 1 648 0
	stw 27,20(1)
.LCFI192:
	.loc 1 649 0
	lis 27,cur_tex@ha
	.loc 1 648 0
	stw 0,44(1)
.LCFI193:
	.loc 1 649 0
	li 0,0
	.loc 1 648 0
	stw 28,24(1)
.LCFI194:
	.loc 1 649 0
	ori 0,0,34160
	lwz 28,cur_tex@l(27)
	.loc 1 648 0
	stw 30,32(1)
.LCFI195:
	.loc 1 649 0
	la 30,glTexEnvs@l(11)
	mulli 9,28,108
	.loc 1 648 0
	stw 31,36(1)
.LCFI196:
	stw 24,8(1)
.LCFI197:
	mr 31,3
	.loc 1 649 0
	add 9,9,30
	.loc 1 648 0
	stw 25,12(1)
.LCFI198:
	.loc 1 649 0
	lwz 11,24(9)
	.loc 1 648 0
	stw 26,16(1)
.LCFI199:
	.loc 1 649 0
	cmpw 7,11,0
	.loc 1 648 0
	stw 29,28(1)
.LCFI200:
	.loc 1 649 0
	beq- 7,.L908
.LVL934:
	.loc 1 661 0
	cmpwi 7,3,0
	.loc 1 656 0
	li 0,1
	stw 0,0(4)
	.loc 1 661 0
	li 26,0
.LVL935:
	li 24,0
.LVL936:
	beq- 7,.L909
.LVL937:
.L881:
	.loc 1 666 0
	lis 3,texMan@ha
.LVL938:
	.loc 1 667 0
	rlwinm 28,28,0,0xff
	.loc 1 666 0
	la 3,texMan@l(3)
	bl getCur
.LVL939:
	mr 25,3
.LVL940:
	.loc 1 667 0
	mr 3,28
	bl GX_IncTexCoord
	mr 29,3
	mr 3,28
	bl GX_IncTexMap
	mr 4,29
	mr 5,3
	li 6,4
	mr 3,31
	bl GX_SetTevOrder
	.loc 1 669 0
	lwz 9,cur_tex@l(27)
	mr 3,31
	li 4,0
	mulli 9,9,108
	li 5,0
	li 7,1
	li 8,0
	add 9,9,30
	lbz 6,104(9)
	bl GX_SetTevColorOp
	.loc 1 670 0
	lwz 9,cur_tex@l(27)
	mr 3,31
	li 4,0
	mulli 9,9,108
	li 5,0
	li 7,1
	li 8,0
	add 9,9,30
	lbz 6,105(9)
	bl GX_SetTevAlphaOp
	.loc 1 680 0
	lwz 9,cur_tex@l(27)
	mulli 9,9,108
	add 9,9,30
	lwz 0,24(9)
	cmpwi 7,0,7681
	beq- 7,.L884
	cmplwi 7,0,7681
	ble- 7,.L910
	cmpwi 7,0,8448
	beq- 7,.L885
	cmpwi 7,0,8449
	bne+ 7,.L905
	.loc 1 712 0
	lwz 0,68(25)
	cmpwi 7,0,6408
	beq- 7,.L911
.L895:
	.loc 1 732 0
	mr 3,31
	li 4,15
	li 5,15
	li 6,15
	li 7,8
	bl GX_SetTevColorIn
.L890:
	.loc 1 744 0
	lwz 9,cur_tex@l(27)
	mulli 9,9,108
	add 9,9,30
	lwz 11,24(9)
	cmpwi 7,11,7681
	beq- 7,.L898
	cmplwi 7,11,7681
	bgt- 7,.L900
	cmpwi 7,11,260
	beq- 7,.L897
	cmpwi 7,11,3042
	bne+ 7,.L905
.L897:
	.loc 1 750 0
	lwz 3,68(25)
	cmpwi 7,3,6407
	beq- 7,.L899
	cmpwi 7,3,6409
	beq- 7,.L899
	.loc 1 758 0
	mr 3,31
	mr 6,24
	li 4,7
	li 5,4
	li 7,7
	bl GX_SetTevAlphaIn
	b .L905
.LVL941:
.L909:
	.loc 1 661 0
	li 26,10
	li 24,5
	b .L881
.LVL942:
.L910:
	.loc 1 680 0
	cmpwi 7,0,260
	beq- 7,.L912
.L905:
	.loc 1 782 0
	lwz 0,44(1)
	lwz 24,8(1)
.LVL943:
	lwz 25,12(1)
.LVL944:
	mtlr 0
	lwz 26,16(1)
.LVL945:
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL946:
	addi 1,1,40
	blr
.LVL947:
.L900:
	.loc 1 744 0
	cmpwi 7,11,8448
	beq- 7,.L897
	cmpwi 7,11,8449
	bne+ 7,.L905
.L899:
	.loc 1 765 0
	mr 3,31
	mr 7,24
	li 4,7
	li 5,7
	li 6,7
	bl GX_SetTevAlphaIn
	.loc 1 782 0
	lwz 0,44(1)
	lwz 24,8(1)
.LVL948:
	lwz 25,12(1)
.LVL949:
	mtlr 0
	lwz 26,16(1)
.LVL950:
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL951:
	addi 1,1,40
	blr
.LVL952:
.L898:
	.loc 1 770 0
	lwz 3,68(25)
	cmpwi 7,3,6407
	beq- 7,.L904
	cmpwi 7,3,6409
	beq- 7,.L904
.L903:
	.loc 1 777 0
	mr 3,31
	li 4,7
	li 5,7
	li 6,7
	li 7,4
	bl GX_SetTevAlphaIn
	.loc 1 782 0
	lwz 0,44(1)
	lwz 24,8(1)
.LVL953:
	lwz 25,12(1)
.LVL954:
	mtlr 0
	lwz 26,16(1)
.LVL955:
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL956:
	addi 1,1,40
	blr
.LVL957:
.L885:
	.loc 1 698 0
	lwz 0,68(25)
	cmpwi 7,0,6406
	beq- 7,.L907
	.loc 1 705 0
	mr 5,26
	mr 3,31
	li 4,15
	li 6,8
	li 7,15
	bl GX_SetTevColorIn
	b .L890
.L884:
	.loc 1 725 0
	lwz 0,68(25)
	cmpwi 7,0,6406
	bne+ 7,.L895
.L907:
	.loc 1 729 0
	mr 7,26
	mr 3,31
	li 4,15
	li 5,15
	li 6,15
	bl GX_SetTevColorIn
	b .L890
.L912:
	.loc 1 684 0
	lwz 0,68(25)
	cmpwi 7,0,6406
	beq- 7,.L907
	.loc 1 691 0
	mr 7,26
	mr 3,31
	li 4,8
	li 5,15
	li 6,15
	bl GX_SetTevColorIn
	b .L890
.LVL958:
.L908:
	.loc 1 782 0
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
.LVL959:
	addi 1,1,40
	.loc 1 652 0
	b GX_SetTevCombineStage
.LVL960:
.L911:
	.loc 1 715 0
	mr 4,26
	mr 3,31
	li 5,8
	li 6,9
	li 7,15
	bl GX_SetTevColorIn
	b .L890
.L904:
	.loc 1 775 0
	mr 7,24
	mr 3,31
	li 4,7
	li 5,7
	li 6,7
	bl GX_SetTevAlphaIn
	b .L903
.LFE82:
	.size	GX_SetTevStage, .-GX_SetTevStage
	.align 2
	.globl GX_SetTextures
	.type	GX_SetTextures, @function
GX_SetTextures:
.LFB115:
	.loc 1 1504 0
.LVL961:
	stwu 1,-56(1)
.LCFI201:
	mflr 0
.LCFI202:
	lis 9,glTexEnvs+84@ha
.LBB16:
	.loc 1 1520 0
	lis 11,texMan@ha
.LBE16:
	.loc 1 1504 0
	stw 25,28(1)
.LCFI203:
.LBB18:
	.loc 1 1556 0
	addi 25,1,8
.LBE18:
	.loc 1 1504 0
	stw 26,32(1)
.LCFI204:
.LBB19:
	.loc 1 1520 0
	la 26,texMan@l(11)
.LBE19:
	.loc 1 1504 0
	stw 27,36(1)
.LCFI205:
	li 27,0
.LVL962:
	stw 28,40(1)
.LCFI206:
	mr 28,3
	stw 29,44(1)
.LCFI207:
	li 29,0
.LVL963:
	stw 30,48(1)
.LCFI208:
	la 30,glTexEnvs+84@l(9)
	stw 31,52(1)
.LCFI209:
	stw 0,60(1)
.LCFI210:
	b .L914
.LVL964:
.L915:
	.loc 1 1508 0
	cmpwi 7,29,7
	addi 30,30,108
	addi 29,29,1
	beq- 7,.L933
.L914:
.LBB20:
	.loc 1 1510 0
	lwz 4,0(30)
	cmpwi 7,4,-1
	beq- 7,.L915
	.loc 1 1515 0
	lbz 0,-84(30)
	cmpwi 7,0,0
	beq+ 7,.L915
	.loc 1 1520 0
	mr 3,26
	bl getTex
.LVL965:
	.loc 1 1522 0
	mr. 31,3
	beq- 0,.L934
	.loc 1 1524 0
	lwz 0,4(31)
	cmpwi 7,0,0
	beq- 7,.L915
	.loc 1 1529 0
	lbz 9,72(31)
	addi 9,9,-2
	cmplwi 7,9,3
	bgt- 7,.L921
.LBB17:
	.loc 1 1539 0
	lbz 8,74(31)
	cmpwi 7,8,0
	beq- 7,.L921
	.loc 1 1541 0
	lbz 0,9(31)
	.loc 1 1542 0
	li 10,1
.LVL966:
	.loc 1 1541 0
	cmpwi 7,0,0
	bne+ 7,.L925
	b .L915
.LVL967:
.L926:
	add 9,31,11
	lbz 0,8(9)
	cmpwi 7,0,0
	beq- 7,.L927
	.loc 1 1542 0
	mr 10,11
.LVL968:
.L925:
	.loc 1 1539 0
	addi 11,10,1
.LVL969:
	cmpw 7,8,11
	bge+ 7,.L926
.L927:
	.loc 1 1547 0
	cmpw 7,8,10
	bgt- 7,.L915
.LVL970:
.L921:
.LBE17:
	.loc 1 1554 0
	rlwinm 3,29,0,0xff
.LVL971:
	.loc 1 1558 0
	addi 27,27,1
	.loc 1 1554 0
	bl GX_IncTexMap
.LVL972:
.LBE20:
	.loc 1 1508 0
	addi 30,30,108
.LBB21:
	.loc 1 1554 0
	mr 4,3
	addi 3,31,36
	bl GX_LoadTexObj
	.loc 1 1556 0
	mr 3,28
	mr 4,25
	bl GX_SetTevStage
.LBE21:
	.loc 1 1508 0
	cmpwi 7,29,7
.LVL973:
.LBB22:
	.loc 1 1560 0
	lwz 0,8(1)
.LBE22:
	.loc 1 1508 0
	addi 29,29,1
.LBB23:
	.loc 1 1560 0
	add 0,28,0
	rlwinm 28,0,0,0xff
.LBE23:
	.loc 1 1508 0
	bne+ 7,.L914
.LVL974:
.L933:
	.loc 1 1563 0
	mr 3,27
	bl GX_SetNumTexGens
.LVL975:
	.loc 1 1566 0
	lwz 0,60(1)
	mr 3,28
	lwz 25,28(1)
	lwz 26,32(1)
	mtlr 0
	lwz 27,36(1)
.LVL976:
	lwz 28,40(1)
.LVL977:
	lwz 29,44(1)
.LVL978:
	lwz 30,48(1)
	lwz 31,52(1)
.LVL979:
	addi 1,1,56
	blr
.LVL980:
.L934:
.LBB24:
	.loc 1 1522 0
	lis 5,.LANCHOR0@ha
	lis 3,.LC14@ha
	la 5,.LANCHOR0@l(5)
	lis 6,.LC25@ha
	la 3,.LC14@l(3)
	addi 5,5,40
	la 6,.LC25@l(6)
	li 4,1522
	bl __assert_func
.LBE24:
.LFE115:
	.size	GX_SetTextures, .-GX_SetTextures
	.globl border_color
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
	.comm	texMan,16,4
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	C.38.14863, @object
	.size	C.38.14863, 20
C.38.14863:
	.byte	0
	.byte	0
	.zero	2
	.long	0
	.long	0
	.long	0
	.long	4
	.type	C.39.14864, @object
	.size	C.39.14864, 20
C.39.14864:
	.byte	0
	.byte	0
	.zero	2
	.long	0
	.long	0
	.long	0
	.long	4
	.type	__FUNCTION__.15040, @object
	.size	__FUNCTION__.15040, 15
__FUNCTION__.15040:
	.string	"GX_SetTextures"
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1073741824
.LC1:
	.4byte	1082130432
.LC6:
	.4byte	1092616192
.LC8:
	.4byte	0
.LC10:
	.4byte	1501560836
.LC11:
	.4byte	805306368
.LC23:
	.4byte	1325400064
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC14:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl_textures.c"
	.zero	1
.LC18:
	.string	"glTexParameteri invalind enum, 0x%X\n"
	.zero	3
.LC20:
	.string	"glTexEnvi invalind enum, 0x%X\n"
	.zero	1
.LC25:
	.string	"p"
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	border_color, @object
	.size	border_color, 16
border_color:
	.zero	16
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
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.byte	0x4
	.4byte	.LCFI0-.LFB98
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI2-.LFB108
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI5-.LCFI2
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI7-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.byte	0x4
	.4byte	.LCFI10-.LFB125
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI13-.LFB120
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.byte	0x4
	.4byte	.LCFI16-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.byte	0x4
	.4byte	.LCFI19-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.byte	0x4
	.4byte	.LCFI22-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.byte	0x4
	.4byte	.LCFI25-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x4
	.4byte	.LCFI28-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.byte	0x4
	.4byte	.LCFI31-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI34-.LFB72
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI37-.LCFI35
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI39-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI42-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI45-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI48-.LFB67
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI51-.LFB66
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.byte	0x4
	.4byte	.LCFI53-.LFB105
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI56-.LCFI54
	.byte	0x9e
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0x9f
	.uleb128 0x1
	.align 2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.byte	0x4
	.4byte	.LCFI59-.LFB124
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI62-.LCFI60
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI64-.LCFI62
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9c
	.uleb128 0x4
	.align 2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x4
	.4byte	.LCFI66-.LFB119
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI70-.LFB121
	.byte	0xe
	.uleb128 0x48
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0x99
	.uleb128 0x7
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI73-.LCFI71
	.byte	0x9a
	.uleb128 0x6
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
	.byte	0x9b
	.uleb128 0x5
	.byte	0x4
	.4byte	.LCFI76-.LCFI74
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI78-.LCFI76
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0x98
	.uleb128 0x8
	.align 2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI81-.LFB117
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI83-.LCFI82
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI84-.LCFI83
	.byte	0x9f
	.uleb128 0x1
	.align 2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.byte	0x4
	.4byte	.LCFI86-.LFB123
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI87-.LCFI86
	.byte	0x99
	.uleb128 0x7
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI89-.LCFI87
	.byte	0x9a
	.uleb128 0x6
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI90-.LCFI89
	.byte	0x9b
	.uleb128 0x5
	.byte	0x4
	.4byte	.LCFI92-.LCFI90
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI94-.LCFI92
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI96-.LCFI94
	.byte	0x98
	.uleb128 0x8
	.byte	0x97
	.uleb128 0x9
	.align 2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x4
	.4byte	.LCFI98-.LFB122
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI99-.LCFI98
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI100-.LCFI99
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.byte	0x4
	.4byte	.LCFI102-.LFB104
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI103-.LCFI102
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI106-.LCFI103
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI108-.LFB111
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI109-.LCFI108
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI111-.LCFI109
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI112-.LCFI111
	.byte	0x9d
	.uleb128 0x3
	.align 2
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.byte	0x4
	.4byte	.LCFI114-.LFB103
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI115-.LCFI114
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI117-.LCFI115
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI118-.LCFI117
	.byte	0x9d
	.uleb128 0x3
	.align 2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI120-.LFB109
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI123-.LCFI120
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI125-.LFB110
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI127-.LCFI125
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x40
	.uleb128 0xc
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI129-.LCFI127
	.byte	0x9e
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI132-.LCFI129
	.byte	0x5
	.uleb128 0x40
	.uleb128 0x5
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.align 2
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.byte	0x4
	.4byte	.LCFI134-.LFB102
	.byte	0xe
	.uleb128 0x70
	.byte	0x4
	.4byte	.LCFI139-.LCFI134
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9b
	.uleb128 0x5
	.byte	0x9a
	.uleb128 0x6
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.byte	0x4
	.4byte	.LCFI141-.LFB85
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI142-.LCFI141
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI143-.LCFI142
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.byte	0x4
	.4byte	.LCFI145-.LFB86
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI146-.LCFI145
	.byte	0xbf
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI147-.LCFI146
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.byte	0x4
	.4byte	.LCFI149-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI150-.LCFI149
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.byte	0x4
	.4byte	.LCFI151-.LFB94
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI153-.LCFI151
	.byte	0xbf
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI155-.LCFI153
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x3
	.align 2
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.byte	0x4
	.4byte	.LCFI157-.LFB96
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI158-.LCFI157
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.byte	0x4
	.4byte	.LCFI160-.LFB101
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI161-.LCFI160
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.byte	0x4
	.4byte	.LCFI163-.LFB100
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI164-.LCFI163
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.byte	0x4
	.4byte	.LCFI166-.LFB99
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI167-.LCFI166
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI169-.LCFI167
	.byte	0x9d
	.uleb128 0x3
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.byte	0x4
	.4byte	.LCFI171-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI172-.LCFI171
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE110:
.LSFDE112:
	.4byte	.LEFDE112-.LASFDE112
.LASFDE112:
	.4byte	.Lframe0
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.byte	0x4
	.4byte	.LCFI174-.LFB95
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI175-.LCFI174
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE112:
.LSFDE114:
	.4byte	.LEFDE114-.LASFDE114
.LASFDE114:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x4
	.4byte	.LCFI176-.LFB81
	.byte	0xe
	.uleb128 0x48
	.byte	0x4
	.4byte	.LCFI178-.LCFI176
	.byte	0x96
	.uleb128 0xa
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI179-.LCFI178
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI180-.LCFI179
	.byte	0x95
	.uleb128 0xb
	.byte	0x4
	.4byte	.LCFI189-.LCFI180
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9b
	.uleb128 0x5
	.byte	0x9a
	.uleb128 0x6
	.byte	0x99
	.uleb128 0x7
	.byte	0x98
	.uleb128 0x8
	.byte	0x97
	.uleb128 0x9
	.align 2
.LEFDE114:
.LSFDE116:
	.4byte	.LEFDE116-.LASFDE116
.LASFDE116:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI191-.LFB82
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI192-.LCFI191
	.byte	0x9b
	.uleb128 0x5
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI193-.LCFI192
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI194-.LCFI193
	.byte	0x9c
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI195-.LCFI194
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI197-.LCFI195
	.byte	0x98
	.uleb128 0x8
	.byte	0x9f
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI200-.LCFI197
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9a
	.uleb128 0x6
	.byte	0x99
	.uleb128 0x7
	.align 2
.LEFDE116:
.LSFDE118:
	.4byte	.LEFDE118-.LASFDE118
.LASFDE118:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI201-.LFB115
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI203-.LCFI201
	.byte	0x99
	.uleb128 0x7
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI204-.LCFI203
	.byte	0x9a
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI205-.LCFI204
	.byte	0x9b
	.uleb128 0x5
	.byte	0x4
	.4byte	.LCFI206-.LCFI205
	.byte	0x9c
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI207-.LCFI206
	.byte	0x9d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI208-.LCFI207
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI210-.LCFI208
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x1
	.align 2
.LEFDE118:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB98-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LFB108-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB125-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE125-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB120-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LFB93-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LFB92-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE92-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LFB91-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE91-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LFB90-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LFB89-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE89-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LFB88-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL208-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL241-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL245-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL245-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI42-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL249-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL249-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI45-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL253-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL253-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LFB67-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI48-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL298-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI51-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LFB105-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI53-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL311-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL307-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST88:
	.4byte	.LFB124-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI59-.Ltext0
	.4byte	.LFE124-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST89:
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL315-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL331-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL331-.Ltext0
	.4byte	.LFE124-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST90:
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL330-.Ltext0
	.4byte	.LFE124-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST91:
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST92:
	.4byte	.LFB119-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI66-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST93:
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL342-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST94:
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST95:
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST96:
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0x0
	.4byte	0x0
.LLST97:
	.4byte	.LFB121-.Ltext0
	.4byte	.LCFI70-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI70-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	0x0
	.4byte	0x0
.LLST98:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL371-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST99:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL359-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL397-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL402-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST100:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL369-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL378-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL401-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL402-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST101:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL396-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL402-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST102:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL400-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL402-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST103:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL372-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL402-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST104:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL382-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL390-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL399-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL402-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST105:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL382-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL388-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL394-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL394-.Ltext0
	.4byte	.LVL398-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL402-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST106:
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL384-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL392-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL402-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL405-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL406-.Ltext0
	.4byte	.LVL407-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL407-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST107:
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST108:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI81-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI81-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST109:
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL410-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST110:
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL410-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST111:
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL411-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL411-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST112:
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL409-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST113:
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST114:
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL415-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST115:
	.4byte	.LFB123-.Ltext0
	.4byte	.LCFI86-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI86-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0x0
	.4byte	0x0
.LLST116:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL426-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL446-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST117:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL427-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL436-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL449-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST118:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL444-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL456-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST119:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL425-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL434-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL445-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL478-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL479-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST120:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL449-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST121:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL418-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST122:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL423-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL449-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST123:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL431-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL442-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL449-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST124:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL429-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL453-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL453-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL457-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL457-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0x0
	.4byte	0x0
.LLST125:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL420-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL451-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST126:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL429-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL467-.Ltext0
	.4byte	.LVL468-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL468-.Ltext0
	.4byte	.LVL471-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL471-.Ltext0
	.4byte	.LVL479-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0x0
	.4byte	0x0
.LLST127:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL458-.Ltext0
	.4byte	.LVL482-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL482-.Ltext0
	.4byte	.LVL484-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL484-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST128:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL426-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL455-.Ltext0
	.4byte	.LVL476-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL479-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST129:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL475-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL479-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST130:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL429-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL459-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL461-.Ltext0
	.4byte	.LVL462-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL463-.Ltext0
	.4byte	.LVL465-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL472-.Ltext0
	.4byte	.LVL473-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL480-.Ltext0
	.4byte	.LVL481-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL483-.Ltext0
	.4byte	.LVL485-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST131:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL429-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST132:
	.4byte	.LVL441-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST133:
	.4byte	.LVL464-.Ltext0
	.4byte	.LVL466-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST134:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL429-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL469-.Ltext0
	.4byte	.LVL470-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL470-.Ltext0
	.4byte	.LVL473-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST135:
	.4byte	.LVL474-.Ltext0
	.4byte	.LVL477-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST136:
	.4byte	.LFB122-.Ltext0
	.4byte	.LCFI98-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI98-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST137:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL488-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL492-.Ltext0
	.4byte	.LVL493-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL499-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST138:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL492-.Ltext0
	.4byte	.LVL495-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL498-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST139:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL492-.Ltext0
	.4byte	.LVL495-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL500-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST140:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL492-.Ltext0
	.4byte	.LVL495-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL501-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST141:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL489-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL489-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL492-.Ltext0
	.4byte	.LVL494-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL494-.Ltext0
	.4byte	.LVL495-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL501-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST142:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL487-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL487-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL492-.Ltext0
	.4byte	.LVL495-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL501-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST143:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL487-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL487-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL492-.Ltext0
	.4byte	.LVL495-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL501-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST144:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL487-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL487-.Ltext0
	.4byte	.LVL491-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL492-.Ltext0
	.4byte	.LVL496-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL502-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST145:
	.4byte	.LFB104-.Ltext0
	.4byte	.LCFI102-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI102-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST146:
	.4byte	.LVL503-.Ltext0
	.4byte	.LVL504-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL504-.Ltext0
	.4byte	.LVL505-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL506-.Ltext0
	.4byte	.LVL510-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST147:
	.4byte	.LVL503-.Ltext0
	.4byte	.LVL507-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST148:
	.4byte	.LVL504-.Ltext0
	.4byte	.LVL508-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST149:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI108-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI108-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST150:
	.4byte	.LVL511-.Ltext0
	.4byte	.LVL512-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL512-.Ltext0
	.4byte	.LVL513-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL516-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST151:
	.4byte	.LVL511-.Ltext0
	.4byte	.LVL512-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL512-.Ltext0
	.4byte	.LVL514-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL517-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST152:
	.4byte	.LFB103-.Ltext0
	.4byte	.LCFI114-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI114-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST153:
	.4byte	.LVL518-.Ltext0
	.4byte	.LVL521-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL521-.Ltext0
	.4byte	.LVL523-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL524-.Ltext0
	.4byte	.LVL531-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL533-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL533-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST154:
	.4byte	.LVL518-.Ltext0
	.4byte	.LVL519-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL519-.Ltext0
	.4byte	.LVL522-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL522-.Ltext0
	.4byte	.LVL524-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL524-.Ltext0
	.4byte	.LVL530-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL532-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST155:
	.4byte	.LVL520-.Ltext0
	.4byte	.LVL525-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL526-.Ltext0
	.4byte	.LVL527-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL528-.Ltext0
	.4byte	.LVL529-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL533-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST156:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI120-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI120-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST157:
	.4byte	.LVL534-.Ltext0
	.4byte	.LVL535-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL535-.Ltext0
	.4byte	.LVL538-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL539-.Ltext0
	.4byte	.LVL542-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST158:
	.4byte	.LVL535-.Ltext0
	.4byte	.LVL537-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL539-.Ltext0
	.4byte	.LVL541-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST159:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI125-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI125-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST160:
	.4byte	.LVL543-.Ltext0
	.4byte	.LVL544-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL544-.Ltext0
	.4byte	.LVL545-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL545-.Ltext0
	.4byte	.LVL546-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL546-.Ltext0
	.4byte	.LVL548-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL551-.Ltext0
	.4byte	.LVL552-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL554-.Ltext0
	.4byte	.LVL555-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL555-.Ltext0
	.4byte	.LVL556-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST161:
	.4byte	.LVL543-.Ltext0
	.4byte	.LVL544-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL544-.Ltext0
	.4byte	.LVL549-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL551-.Ltext0
	.4byte	.LVL553-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL554-.Ltext0
	.4byte	.LVL557-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST162:
	.4byte	.LVL547-.Ltext0
	.4byte	.LVL550-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST163:
	.4byte	.LFB102-.Ltext0
	.4byte	.LCFI134-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI134-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	0x0
	.4byte	0x0
.LLST164:
	.4byte	.LFB85-.Ltext0
	.4byte	.LCFI141-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI141-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST165:
	.4byte	.LVL559-.Ltext0
	.4byte	.LVL561-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL563-.Ltext0
	.4byte	.LVL565-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL566-.Ltext0
	.4byte	.LVL570-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL570-.Ltext0
	.4byte	.LVL571-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL574-.Ltext0
	.4byte	.LVL575-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL578-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL580-.Ltext0
	.4byte	.LVL581-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL584-.Ltext0
	.4byte	.LVL585-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL587-.Ltext0
	.4byte	.LVL588-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL591-.Ltext0
	.4byte	.LVL592-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST166:
	.4byte	.LVL559-.Ltext0
	.4byte	.LVL562-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL563-.Ltext0
	.4byte	.LVL564-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL566-.Ltext0
	.4byte	.LVL570-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL570-.Ltext0
	.4byte	.LVL572-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL574-.Ltext0
	.4byte	.LVL576-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL578-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL580-.Ltext0
	.4byte	.LVL582-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL584-.Ltext0
	.4byte	.LVL586-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL587-.Ltext0
	.4byte	.LVL589-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL591-.Ltext0
	.4byte	.LVL593-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST167:
	.4byte	.LVL559-.Ltext0
	.4byte	.LVL560-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL560-.Ltext0
	.4byte	.LVL567-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL567-.Ltext0
	.4byte	.LVL568-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL568-.Ltext0
	.4byte	.LVL569-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL569-.Ltext0
	.4byte	.LVL570-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL570-.Ltext0
	.4byte	.LVL573-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL573-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL574-.Ltext0
	.4byte	.LVL579-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL579-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL580-.Ltext0
	.4byte	.LVL583-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL583-.Ltext0
	.4byte	.LVL584-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL584-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST168:
	.4byte	.LFB86-.Ltext0
	.4byte	.LCFI145-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI145-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST169:
	.4byte	.LVL594-.Ltext0
	.4byte	.LVL599-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL603-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL605-.Ltext0
	.4byte	.LVL607-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL607-.Ltext0
	.4byte	.LVL608-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL611-.Ltext0
	.4byte	.LVL613-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL613-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL615-.Ltext0
	.4byte	.LVL616-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST170:
	.4byte	.LVL594-.Ltext0
	.4byte	.LVL598-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL602-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL605-.Ltext0
	.4byte	.LVL607-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL607-.Ltext0
	.4byte	.LVL609-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL611-.Ltext0
	.4byte	.LVL613-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL613-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL615-.Ltext0
	.4byte	.LVL617-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST171:
	.4byte	.LVL594-.Ltext0
	.4byte	.LVL595-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL595-.Ltext0
	.4byte	.LVL596-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL596-.Ltext0
	.4byte	.LVL597-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL597-.Ltext0
	.4byte	.LVL600-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL604-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL605-.Ltext0
	.4byte	.LVL606-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL606-.Ltext0
	.4byte	.LVL607-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL607-.Ltext0
	.4byte	.LVL610-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL611-.Ltext0
	.4byte	.LVL612-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL612-.Ltext0
	.4byte	.LVL613-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL613-.Ltext0
	.4byte	.LVL614-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL614-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL615-.Ltext0
	.4byte	.LVL618-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST172:
	.4byte	.LFB87-.Ltext0
	.4byte	.LCFI149-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI149-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST173:
	.4byte	.LVL619-.Ltext0
	.4byte	.LVL621-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL623-.Ltext0
	.4byte	.LVL624-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL624-.Ltext0
	.4byte	.LVL626-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST174:
	.4byte	.LVL619-.Ltext0
	.4byte	.LVL620-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL623-.Ltext0
	.4byte	.LVL624-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL624-.Ltext0
	.4byte	.LVL625-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST175:
	.4byte	.LVL619-.Ltext0
	.4byte	.LVL622-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL623-.Ltext0
	.4byte	.LVL624-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL624-.Ltext0
	.4byte	.LVL627-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST176:
	.4byte	.LFB94-.Ltext0
	.4byte	.LCFI151-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI151-.Ltext0
	.4byte	.LFE94-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST177:
	.4byte	.LVL628-.Ltext0
	.4byte	.LVL629-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST178:
	.4byte	.LVL628-.Ltext0
	.4byte	.LVL629-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL629-.Ltext0
	.4byte	.LVL630-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL631-.Ltext0
	.4byte	.LVL632-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL633-.Ltext0
	.4byte	.LVL634-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL635-.Ltext0
	.4byte	.LVL636-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL637-.Ltext0
	.4byte	.LVL638-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST179:
	.4byte	.LFB96-.Ltext0
	.4byte	.LCFI157-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI157-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST180:
	.4byte	.LVL639-.Ltext0
	.4byte	.LVL641-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL643-.Ltext0
	.4byte	.LVL644-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL645-.Ltext0
	.4byte	.LVL646-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL647-.Ltext0
	.4byte	.LVL648-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL649-.Ltext0
	.4byte	.LVL650-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL651-.Ltext0
	.4byte	.LVL652-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL653-.Ltext0
	.4byte	.LVL654-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL655-.Ltext0
	.4byte	.LVL656-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL657-.Ltext0
	.4byte	.LVL658-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL659-.Ltext0
	.4byte	.LVL660-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL661-.Ltext0
	.4byte	.LVL662-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL663-.Ltext0
	.4byte	.LVL664-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL665-.Ltext0
	.4byte	.LVL666-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL667-.Ltext0
	.4byte	.LVL668-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL669-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST181:
	.4byte	.LVL639-.Ltext0
	.4byte	.LVL640-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL640-.Ltext0
	.4byte	.LVL642-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL643-.Ltext0
	.4byte	.LVL645-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL645-.Ltext0
	.4byte	.LVL647-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL647-.Ltext0
	.4byte	.LVL649-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL649-.Ltext0
	.4byte	.LVL651-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL651-.Ltext0
	.4byte	.LVL653-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL653-.Ltext0
	.4byte	.LVL655-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL655-.Ltext0
	.4byte	.LVL657-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL657-.Ltext0
	.4byte	.LVL659-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL659-.Ltext0
	.4byte	.LVL661-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL661-.Ltext0
	.4byte	.LVL663-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL663-.Ltext0
	.4byte	.LVL665-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL665-.Ltext0
	.4byte	.LVL667-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL667-.Ltext0
	.4byte	.LVL669-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL669-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST182:
	.4byte	.LFB101-.Ltext0
	.4byte	.LCFI160-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI160-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST183:
	.4byte	.LVL670-.Ltext0
	.4byte	.LVL672-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL672-.Ltext0
	.4byte	.LVL673-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL674-.Ltext0
	.4byte	.LVL676-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL678-.Ltext0
	.4byte	.LVL680-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL682-.Ltext0
	.4byte	.LVL683-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL685-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST184:
	.4byte	.LVL670-.Ltext0
	.4byte	.LVL671-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL674-.Ltext0
	.4byte	.LVL675-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL678-.Ltext0
	.4byte	.LVL679-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL682-.Ltext0
	.4byte	.LVL684-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL684-.Ltext0
	.4byte	.LVL685-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL685-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST185:
	.4byte	.LVL670-.Ltext0
	.4byte	.LVL673-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL674-.Ltext0
	.4byte	.LVL677-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL678-.Ltext0
	.4byte	.LVL681-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL682-.Ltext0
	.4byte	.LVL685-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL685-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST186:
	.4byte	.LFB100-.Ltext0
	.4byte	.LCFI163-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI163-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST187:
	.4byte	.LVL686-.Ltext0
	.4byte	.LVL688-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL690-.Ltext0
	.4byte	.LVL692-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL694-.Ltext0
	.4byte	.LVL696-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL698-.Ltext0
	.4byte	.LVL699-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL701-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST188:
	.4byte	.LVL686-.Ltext0
	.4byte	.LVL687-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL690-.Ltext0
	.4byte	.LVL691-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL694-.Ltext0
	.4byte	.LVL695-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL698-.Ltext0
	.4byte	.LVL700-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL700-.Ltext0
	.4byte	.LVL701-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL701-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST189:
	.4byte	.LVL686-.Ltext0
	.4byte	.LVL689-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL690-.Ltext0
	.4byte	.LVL693-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL694-.Ltext0
	.4byte	.LVL697-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL698-.Ltext0
	.4byte	.LVL701-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL701-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST190:
	.4byte	.LFB99-.Ltext0
	.4byte	.LCFI166-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI166-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST191:
	.4byte	.LVL702-.Ltext0
	.4byte	.LVL706-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL709-.Ltext0
	.4byte	.LVL711-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL713-.Ltext0
	.4byte	.LVL715-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL718-.Ltext0
	.4byte	.LVL719-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL719-.Ltext0
	.4byte	.LVL722-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL724-.Ltext0
	.4byte	.LVL725-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST192:
	.4byte	.LVL702-.Ltext0
	.4byte	.LVL705-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL709-.Ltext0
	.4byte	.LVL710-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL713-.Ltext0
	.4byte	.LVL714-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL718-.Ltext0
	.4byte	.LVL719-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL719-.Ltext0
	.4byte	.LVL721-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL724-.Ltext0
	.4byte	.LVL726-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST193:
	.4byte	.LVL702-.Ltext0
	.4byte	.LVL703-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL703-.Ltext0
	.4byte	.LVL704-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL704-.Ltext0
	.4byte	.LVL707-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL707-.Ltext0
	.4byte	.LVL708-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL709-.Ltext0
	.4byte	.LVL712-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL713-.Ltext0
	.4byte	.LVL716-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL716-.Ltext0
	.4byte	.LVL717-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL718-.Ltext0
	.4byte	.LVL719-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL719-.Ltext0
	.4byte	.LVL723-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL723-.Ltext0
	.4byte	.LVL724-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL724-.Ltext0
	.4byte	.LVL726-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL726-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST194:
	.4byte	.LFB97-.Ltext0
	.4byte	.LCFI171-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI171-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST195:
	.4byte	.LVL727-.Ltext0
	.4byte	.LVL729-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL731-.Ltext0
	.4byte	.LVL733-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL735-.Ltext0
	.4byte	.LVL737-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL739-.Ltext0
	.4byte	.LVL740-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL740-.Ltext0
	.4byte	.LVL742-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST196:
	.4byte	.LVL727-.Ltext0
	.4byte	.LVL728-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL731-.Ltext0
	.4byte	.LVL732-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL735-.Ltext0
	.4byte	.LVL736-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL739-.Ltext0
	.4byte	.LVL740-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL740-.Ltext0
	.4byte	.LVL741-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST197:
	.4byte	.LVL727-.Ltext0
	.4byte	.LVL730-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL731-.Ltext0
	.4byte	.LVL734-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL735-.Ltext0
	.4byte	.LVL738-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL739-.Ltext0
	.4byte	.LVL740-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL740-.Ltext0
	.4byte	.LVL743-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST198:
	.4byte	.LFB95-.Ltext0
	.4byte	.LCFI174-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI174-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST199:
	.4byte	.LVL744-.Ltext0
	.4byte	.LVL747-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL748-.Ltext0
	.4byte	.LVL749-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL751-.Ltext0
	.4byte	.LVL753-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL754-.Ltext0
	.4byte	.LVL756-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL757-.Ltext0
	.4byte	.LVL759-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL760-.Ltext0
	.4byte	.LVL761-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL762-.Ltext0
	.4byte	.LVL764-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL765-.Ltext0
	.4byte	.LVL767-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL768-.Ltext0
	.4byte	.LVL770-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL771-.Ltext0
	.4byte	.LVL773-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL774-.Ltext0
	.4byte	.LVL776-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL777-.Ltext0
	.4byte	.LVL779-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL780-.Ltext0
	.4byte	.LVL782-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL783-.Ltext0
	.4byte	.LVL785-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL786-.Ltext0
	.4byte	.LVL787-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL788-.Ltext0
	.4byte	.LVL790-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL791-.Ltext0
	.4byte	.LVL792-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL793-.Ltext0
	.4byte	.LVL794-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL795-.Ltext0
	.4byte	.LVL796-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL797-.Ltext0
	.4byte	.LVL798-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL799-.Ltext0
	.4byte	.LVL800-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL801-.Ltext0
	.4byte	.LVL802-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL803-.Ltext0
	.4byte	.LVL804-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL805-.Ltext0
	.4byte	.LVL806-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL807-.Ltext0
	.4byte	.LVL808-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL811-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL812-.Ltext0
	.4byte	.LVL814-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL815-.Ltext0
	.4byte	.LVL816-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL817-.Ltext0
	.4byte	.LVL818-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL819-.Ltext0
	.4byte	.LVL820-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL821-.Ltext0
	.4byte	.LVL822-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL823-.Ltext0
	.4byte	.LVL824-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL825-.Ltext0
	.4byte	.LVL826-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST200:
	.4byte	.LVL744-.Ltext0
	.4byte	.LVL745-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL745-.Ltext0
	.4byte	.LVL746-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL748-.Ltext0
	.4byte	.LVL750-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL751-.Ltext0
	.4byte	.LVL752-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL754-.Ltext0
	.4byte	.LVL755-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL757-.Ltext0
	.4byte	.LVL758-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL760-.Ltext0
	.4byte	.LVL762-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL762-.Ltext0
	.4byte	.LVL763-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL765-.Ltext0
	.4byte	.LVL766-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL768-.Ltext0
	.4byte	.LVL769-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL771-.Ltext0
	.4byte	.LVL772-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL774-.Ltext0
	.4byte	.LVL775-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL777-.Ltext0
	.4byte	.LVL778-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL780-.Ltext0
	.4byte	.LVL781-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL783-.Ltext0
	.4byte	.LVL784-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL786-.Ltext0
	.4byte	.LVL788-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL788-.Ltext0
	.4byte	.LVL789-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL810-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL812-.Ltext0
	.4byte	.LVL813-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST201:
	.4byte	.LFB81-.Ltext0
	.4byte	.LCFI176-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI176-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	0x0
	.4byte	0x0
.LLST202:
	.4byte	.LVL827-.Ltext0
	.4byte	.LVL828-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL828-.Ltext0
	.4byte	.LVL833-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL833-.Ltext0
	.4byte	.LVL839-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL839-.Ltext0
	.4byte	.LVL857-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL857-.Ltext0
	.4byte	.LVL858-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL858-.Ltext0
	.4byte	.LVL862-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL862-.Ltext0
	.4byte	.LVL863-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL863-.Ltext0
	.4byte	.LVL870-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL874-.Ltext0
	.4byte	.LVL883-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL889-.Ltext0
	.4byte	.LVL896-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL902-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0x0
	.4byte	0x0
.LLST203:
	.4byte	.LVL827-.Ltext0
	.4byte	.LVL831-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL831-.Ltext0
	.4byte	.LVL832-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL832-.Ltext0
	.4byte	.LVL844-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL844-.Ltext0
	.4byte	.LVL869-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL874-.Ltext0
	.4byte	.LVL876-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL876-.Ltext0
	.4byte	.LVL878-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL878-.Ltext0
	.4byte	.LVL880-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL880-.Ltext0
	.4byte	.LVL882-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL889-.Ltext0
	.4byte	.LVL895-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL902-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0x0
	.4byte	0x0
.LLST204:
	.4byte	.LVL829-.Ltext0
	.4byte	.LVL838-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL840-.Ltext0
	.4byte	.LVL847-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL874-.Ltext0
	.4byte	.LVL880-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL891-.Ltext0
	.4byte	.LVL893-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST205:
	.4byte	.LVL830-.Ltext0
	.4byte	.LVL834-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL841-.Ltext0
	.4byte	.LVL871-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL874-.Ltext0
	.4byte	.LVL884-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL889-.Ltext0
	.4byte	.LVL897-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL902-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST206:
	.4byte	.LVL859-.Ltext0
	.4byte	.LVL861-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL904-.Ltext0
	.4byte	.LVL906-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL913-.Ltext0
	.4byte	.LVL915-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL917-.Ltext0
	.4byte	.LVL919-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL921-.Ltext0
	.4byte	.LVL923-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST207:
	.4byte	.LVL864-.Ltext0
	.4byte	.LVL866-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL907-.Ltext0
	.4byte	.LVL909-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL924-.Ltext0
	.4byte	.LVL926-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL928-.Ltext0
	.4byte	.LVL930-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL931-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST208:
	.4byte	.LVL860-.Ltext0
	.4byte	.LVL861-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL905-.Ltext0
	.4byte	.LVL906-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL914-.Ltext0
	.4byte	.LVL915-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL918-.Ltext0
	.4byte	.LVL919-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL922-.Ltext0
	.4byte	.LVL923-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST209:
	.4byte	.LVL865-.Ltext0
	.4byte	.LVL866-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL908-.Ltext0
	.4byte	.LVL909-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL925-.Ltext0
	.4byte	.LVL926-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL929-.Ltext0
	.4byte	.LVL930-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL932-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST210:
	.4byte	.LVL831-.Ltext0
	.4byte	.LVL838-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL850-.Ltext0
	.4byte	.LVL853-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL853-.Ltext0
	.4byte	.LVL854-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL854-.Ltext0
	.4byte	.LVL855-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL855-.Ltext0
	.4byte	.LVL856-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL856-.Ltext0
	.4byte	.LVL873-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL880-.Ltext0
	.4byte	.LVL881-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL881-.Ltext0
	.4byte	.LVL888-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL889-.Ltext0
	.4byte	.LVL890-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL890-.Ltext0
	.4byte	.LVL891-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL893-.Ltext0
	.4byte	.LVL894-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL894-.Ltext0
	.4byte	.LVL901-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL902-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST211:
	.4byte	.LVL831-.Ltext0
	.4byte	.LVL837-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL843-.Ltext0
	.4byte	.LVL867-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL876-.Ltext0
	.4byte	.LVL878-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL880-.Ltext0
	.4byte	.LVL887-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL889-.Ltext0
	.4byte	.LVL900-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL902-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST212:
	.4byte	.LVL831-.Ltext0
	.4byte	.LVL835-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL842-.Ltext0
	.4byte	.LVL872-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL875-.Ltext0
	.4byte	.LVL878-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL879-.Ltext0
	.4byte	.LVL885-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL889-.Ltext0
	.4byte	.LVL898-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL902-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST213:
	.4byte	.LVL831-.Ltext0
	.4byte	.LVL836-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL845-.Ltext0
	.4byte	.LVL868-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL877-.Ltext0
	.4byte	.LVL878-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL880-.Ltext0
	.4byte	.LVL886-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL889-.Ltext0
	.4byte	.LVL891-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL892-.Ltext0
	.4byte	.LVL899-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL902-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST214:
	.4byte	.LVL831-.Ltext0
	.4byte	.LVL839-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.4byte	.LVL848-.Ltext0
	.4byte	.LVL849-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL849-.Ltext0
	.4byte	.LVL852-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL852-.Ltext0
	.4byte	.LVL858-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.4byte	.LVL880-.Ltext0
	.4byte	.LVL881-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.4byte	.LVL889-.Ltext0
	.4byte	.LVL891-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.4byte	.LVL893-.Ltext0
	.4byte	.LVL894-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.4byte	.LVL902-.Ltext0
	.4byte	.LVL903-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.4byte	.LVL910-.Ltext0
	.4byte	.LVL912-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.4byte	.LVL915-.Ltext0
	.4byte	.LVL916-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.4byte	.LVL919-.Ltext0
	.4byte	.LVL920-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.4byte	0x0
	.4byte	0x0
.LLST215:
	.4byte	.LFB82-.Ltext0
	.4byte	.LCFI191-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI191-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST216:
	.4byte	.LVL933-.Ltext0
	.4byte	.LVL934-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL934-.Ltext0
	.4byte	.LVL937-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL937-.Ltext0
	.4byte	.LVL938-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL938-.Ltext0
	.4byte	.LVL941-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL941-.Ltext0
	.4byte	.LVL942-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL942-.Ltext0
	.4byte	.LVL946-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL947-.Ltext0
	.4byte	.LVL951-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL952-.Ltext0
	.4byte	.LVL956-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL957-.Ltext0
	.4byte	.LVL959-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL959-.Ltext0
	.4byte	.LVL960-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL960-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST217:
	.4byte	.LVL933-.Ltext0
	.4byte	.LVL939-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL941-.Ltext0
	.4byte	.LVL942-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL958-.Ltext0
	.4byte	.LVL960-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST218:
	.4byte	.LVL935-.Ltext0
	.4byte	.LVL945-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL947-.Ltext0
	.4byte	.LVL950-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL952-.Ltext0
	.4byte	.LVL955-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL957-.Ltext0
	.4byte	.LVL958-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL960-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST219:
	.4byte	.LVL936-.Ltext0
	.4byte	.LVL943-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL947-.Ltext0
	.4byte	.LVL948-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL952-.Ltext0
	.4byte	.LVL953-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL957-.Ltext0
	.4byte	.LVL958-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL960-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST220:
	.4byte	.LVL940-.Ltext0
	.4byte	.LVL941-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL942-.Ltext0
	.4byte	.LVL944-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL947-.Ltext0
	.4byte	.LVL949-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL952-.Ltext0
	.4byte	.LVL954-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL957-.Ltext0
	.4byte	.LVL958-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL960-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST221:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI201-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI201-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST222:
	.4byte	.LVL961-.Ltext0
	.4byte	.LVL964-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL964-.Ltext0
	.4byte	.LVL977-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL980-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST223:
	.4byte	.LVL963-.Ltext0
	.4byte	.LVL971-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL971-.Ltext0
	.4byte	.LVL972-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL973-.Ltext0
	.4byte	.LVL978-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL980-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST224:
	.4byte	.LVL962-.Ltext0
	.4byte	.LVL976-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL980-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST225:
	.4byte	.LVL964-.Ltext0
	.4byte	.LVL979-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL980-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST226:
	.4byte	.LVL964-.Ltext0
	.4byte	.LVL965-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL966-.Ltext0
	.4byte	.LVL967-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL967-.Ltext0
	.4byte	.LVL968-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL968-.Ltext0
	.4byte	.LVL969-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL969-.Ltext0
	.4byte	.LVL970-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL970-.Ltext0
	.4byte	.LVL972-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL974-.Ltext0
	.4byte	.LVL975-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 7 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
	.file 8 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0x219c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF278
	.byte	0x1
	.4byte	.LASF279
	.4byte	.LASF280
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd6
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
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
	.uleb128 0x7
	.string	"u8"
	.byte	0x3
	.byte	0xf
	.4byte	0x3a
	.uleb128 0x7
	.string	"u32"
	.byte	0x3
	.byte	0x11
	.4byte	0x30
	.uleb128 0x7
	.string	"s8"
	.byte	0x3
	.byte	0x14
	.4byte	0x4a
	.uleb128 0x7
	.string	"s32"
	.byte	0x3
	.byte	0x16
	.4byte	0x58
	.uleb128 0x7
	.string	"f32"
	.byte	0x3
	.byte	0x29
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x35
	.4byte	0x97
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.byte	0x36
	.4byte	0xec
	.uleb128 0x9
	.4byte	.LASF15
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF16
	.sleb128 1
	.byte	0x0
	.uleb128 0xa
	.4byte	0xa1
	.4byte	0xfc
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0xc
	.byte	0x5
	.byte	0x27
	.4byte	0x12d
	.uleb128 0xd
	.string	"x"
	.byte	0x5
	.byte	0x28
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"y"
	.byte	0x5
	.byte	0x28
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"z"
	.byte	0x5
	.byte	0x28
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x29
	.4byte	0xfc
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x4
	.byte	0x6
	.2byte	0x3b8
	.4byte	0x17a
	.uleb128 0xf
	.string	"r"
	.byte	0x6
	.2byte	0x3b9
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"g"
	.byte	0x6
	.2byte	0x3ba
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.string	"b"
	.byte	0x6
	.2byte	0x3bb
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"a"
	.byte	0x6
	.2byte	0x3bc
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x3bd
	.4byte	0x138
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x20
	.byte	0x6
	.2byte	0x3c6
	.4byte	0x1a3
	.uleb128 0xf
	.string	"val"
	.byte	0x6
	.2byte	0x3c7
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x3c8
	.4byte	0x186
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x40
	.byte	0x6
	.2byte	0x3d6
	.4byte	0x1cc
	.uleb128 0xf
	.string	"val"
	.byte	0x6
	.2byte	0x3d7
	.4byte	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.4byte	0xa1
	.4byte	0x1dc
	.uleb128 0xb
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x3d8
	.4byte	0x1af
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1a3
	.uleb128 0x11
	.byte	0x4
	.4byte	0x97
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1fa
	.uleb128 0x12
	.uleb128 0x11
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x7
	.byte	0x93
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0x94
	.4byte	0x3a
	.uleb128 0x13
	.4byte	.LASF281
	.byte	0x7
	.byte	0x96
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0x99
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x7
	.byte	0x9d
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7
	.byte	0x9e
	.4byte	0x89
	.uleb128 0x11
	.byte	0x4
	.4byte	0x250
	.uleb128 0x14
	.4byte	0x217
	.uleb128 0x11
	.byte	0x4
	.4byte	0x25b
	.uleb128 0x14
	.4byte	0x23f
	.uleb128 0x11
	.byte	0x4
	.4byte	0x266
	.uleb128 0x14
	.4byte	0x21e
	.uleb128 0x11
	.byte	0x4
	.4byte	0x21e
	.uleb128 0x11
	.byte	0x4
	.4byte	0x277
	.uleb128 0x14
	.4byte	0x229
	.uleb128 0x11
	.byte	0x4
	.4byte	0x229
	.uleb128 0x14
	.4byte	0x201
	.uleb128 0x11
	.byte	0x4
	.4byte	0x201
	.uleb128 0x15
	.byte	0x10
	.byte	0x2
	.byte	0x15
	.4byte	0x2ae
	.uleb128 0xd
	.string	"v"
	.byte	0x2
	.byte	0x16
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"w"
	.byte	0x2
	.byte	0x17
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x2
	.byte	0x18
	.4byte	0x28d
	.uleb128 0x15
	.byte	0x8
	.byte	0x2
	.byte	0x1b
	.4byte	0x2da
	.uleb128 0xd
	.string	"s"
	.byte	0x2
	.byte	0x1c
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"t"
	.byte	0x2
	.byte	0x1d
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x2
	.byte	0x1e
	.4byte	0x2b9
	.uleb128 0x15
	.byte	0x10
	.byte	0x2
	.byte	0x21
	.4byte	0x31e
	.uleb128 0xd
	.string	"r"
	.byte	0x2
	.byte	0x22
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"g"
	.byte	0x2
	.byte	0x23
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"b"
	.byte	0x2
	.byte	0x24
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"a"
	.byte	0x2
	.byte	0x25
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x2
	.byte	0x26
	.4byte	0x2e5
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x14
	.byte	0x2
	.byte	0x42
	.4byte	0x37a
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x2
	.byte	0x43
	.4byte	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"p"
	.byte	0x2
	.byte	0x44
	.4byte	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x2
	.byte	0x45
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x2
	.byte	0x46
	.4byte	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x2
	.byte	0x47
	.4byte	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x2
	.byte	0x48
	.4byte	0x329
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x3ca
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x8
	.byte	0xe
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x8
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x8
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"cur"
	.byte	0x8
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x8
	.byte	0x12
	.4byte	0x385
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0xa4
	.byte	0x2
	.byte	0x83
	.4byte	0x490
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x2
	.byte	0x84
	.4byte	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"obj"
	.byte	0x2
	.byte	0x86
	.4byte	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"pos"
	.byte	0x2
	.byte	0x88
	.4byte	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x2
	.byte	0x8a
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x2
	.byte	0x8c
	.4byte	0x31e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x2
	.byte	0x8d
	.4byte	0x31e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x2
	.byte	0x8e
	.4byte	0x31e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x2
	.byte	0x90
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x2
	.byte	0x91
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x2
	.byte	0x92
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x2
	.byte	0x93
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x2
	.byte	0x94
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x2
	.byte	0x95
	.4byte	0x3d5
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x44
	.byte	0x2
	.byte	0xa0
	.4byte	0x4ee
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x2
	.byte	0xa1
	.4byte	0x31e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x2
	.byte	0xa2
	.4byte	0x31e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x2
	.byte	0xa3
	.4byte	0x31e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x2
	.byte	0xa4
	.4byte	0x31e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x2
	.byte	0xa5
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x2
	.byte	0xa6
	.4byte	0x49b
	.uleb128 0x17
	.4byte	.LASF282
	.byte	0x4
	.byte	0x2
	.byte	0xbf
	.4byte	0x518
	.uleb128 0x9
	.4byte	.LASF60
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF61
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF62
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x2
	.byte	0xc3
	.4byte	0x4f9
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x10
	.byte	0x2
	.byte	0xe8
	.4byte	0x564
	.uleb128 0xd
	.string	"x"
	.byte	0x2
	.byte	0xe9
	.4byte	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"y"
	.byte	0x2
	.byte	0xea
	.4byte	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x2
	.byte	0xeb
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x2
	.byte	0xec
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x2
	.byte	0xed
	.4byte	0x523
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x14
	.byte	0x2
	.byte	0xfb
	.4byte	0x5d2
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x2
	.byte	0xfc
	.4byte	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x2
	.byte	0xfd
	.4byte	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x2
	.byte	0xfe
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x2
	.byte	0xff
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x100
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x101
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x102
	.4byte	0x56f
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x8
	.byte	0x2
	.2byte	0x117
	.4byte	0x60a
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x118
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x119
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x11a
	.4byte	0x5de
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x6c
	.byte	0x2
	.2byte	0x127
	.4byte	0x76e
	.uleb128 0x18
	.4byte	.LASF45
	.byte	0x2
	.2byte	0x128
	.4byte	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x12a
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x12b
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x12c
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x12d
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x12e
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x12f
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x130
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x131
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x132
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x133
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x135
	.4byte	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x137
	.4byte	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x138
	.4byte	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x13a
	.4byte	0x76e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x13b
	.4byte	0x76e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x13c
	.4byte	0x76e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x13d
	.4byte	0x76e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"tex"
	.byte	0x2
	.2byte	0x13f
	.4byte	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x141
	.4byte	0x31e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x143
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x144
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0xa
	.4byte	0x201
	.4byte	0x77e
	.uleb128 0xb
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x145
	.4byte	0x616
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0x4c
	.byte	0x1
	.byte	0xa4
	.4byte	0x83f
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x1
	.byte	0xa5
	.4byte	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x1
	.byte	0xa6
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.byte	0xa8
	.4byte	0x83f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0xaa
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0xab
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x1
	.byte	0xac
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x1
	.byte	0xae
	.4byte	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x1
	.byte	0xaf
	.4byte	0x1a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x1
	.byte	0xb0
	.4byte	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x1
	.byte	0xb2
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x1
	.byte	0xb3
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x1
	.byte	0xb4
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.byte	0x0
	.uleb128 0xa
	.4byte	0xcc
	.4byte	0x84f
	.uleb128 0xb
	.4byte	0x37
	.byte	0xa
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x1
	.byte	0xb5
	.4byte	0x78a
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x10
	.byte	0x1
	.byte	0xb9
	.4byte	0x89f
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x1
	.byte	0xba
	.4byte	0x89f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x1
	.byte	0xbb
	.4byte	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x1
	.byte	0xbc
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x1
	.byte	0xbd
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x84f
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0x1
	.byte	0xbe
	.4byte	0x85a
	.uleb128 0x19
	.4byte	.LASF283
	.byte	0x2
	.2byte	0x15b
	.byte	0x1
	.byte	0x3
	.4byte	0x8df
	.uleb128 0x1a
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x15a
	.4byte	0x8df
	.uleb128 0x1b
	.string	"n"
	.byte	0x2
	.2byte	0x15a
	.4byte	0x25
	.uleb128 0x1c
	.string	"p"
	.byte	0x2
	.2byte	0x15c
	.4byte	0x8e5
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x48
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1ee
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.byte	0x1
	.byte	0x51
	.4byte	0x96b
	.uleb128 0x1e
	.4byte	.LASF102
	.byte	0x1
	.byte	0xc4
	.4byte	0x97
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF38
	.byte	0x1
	.byte	0xc4
	.4byte	0x201
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF118
	.byte	0x1
	.byte	0xc4
	.4byte	0x26b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"r"
	.byte	0x1
	.byte	0xc6
	.4byte	0x21e
	.4byte	.LLST1
	.uleb128 0x1f
	.string	"g"
	.byte	0x1
	.byte	0xc6
	.4byte	0x21e
	.4byte	.LLST2
	.uleb128 0x1f
	.string	"b"
	.byte	0x1
	.byte	0xc6
	.4byte	0x21e
	.4byte	.LLST3
	.uleb128 0x1f
	.string	"a"
	.byte	0x1
	.byte	0xc6
	.4byte	0x21e
	.4byte	.LLST4
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xc6
	.4byte	0x21e
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.byte	0x1
	.byte	0x51
	.4byte	0x9d5
	.uleb128 0x21
	.string	"src"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x201
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"op"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x201
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"C"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x1ee
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x10c
	.4byte	0x9d5
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x10c
	.4byte	0x97
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x10c
	.4byte	0x97
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0xac
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x13a
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.byte	0x1
	.byte	0x51
	.4byte	0xa37
	.uleb128 0x21
	.string	"src"
	.byte	0x1
	.2byte	0x139
	.4byte	0x201
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"op"
	.byte	0x1
	.2byte	0x139
	.4byte	0x201
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"C"
	.byte	0x1
	.2byte	0x139
	.4byte	0x1ee
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x139
	.4byte	0x9d5
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x139
	.4byte	0x97
	.byte	0x1
	.byte	0x57
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x155
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB75
	.4byte	.LFE75
	.byte	0x1
	.byte	0x51
	.4byte	0xa62
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x154
	.4byte	0x97
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x160
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB76
	.4byte	.LFE76
	.byte	0x1
	.byte	0x51
	.4byte	0xa8d
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x15f
	.4byte	0x97
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x16b
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB77
	.4byte	.LFE77
	.byte	0x1
	.byte	0x51
	.4byte	0xab8
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x97
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x176
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB78
	.4byte	.LFE78
	.byte	0x1
	.byte	0x51
	.4byte	0xae3
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x175
	.4byte	0x97
	.4byte	.LLST15
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x181
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB79
	.4byte	.LFE79
	.byte	0x1
	.byte	0x51
	.4byte	0xb0e
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x180
	.4byte	0x97
	.4byte	.LLST17
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x191
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB80
	.4byte	.LFE80
	.byte	0x1
	.byte	0x51
	.4byte	0xb39
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x190
	.4byte	0x97
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x311
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x1
	.byte	0x51
	.4byte	0xb61
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.2byte	0x310
	.4byte	0x23f
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x321
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.byte	0x1
	.byte	0x51
	.4byte	0xb89
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.2byte	0x320
	.4byte	0x23f
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x458
	.byte	0x1
	.4byte	0x23f
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LLST22
	.4byte	0xbb3
	.uleb128 0x21
	.string	"t"
	.byte	0x1
	.2byte	0x457
	.4byte	0xb6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x57b
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB106
	.4byte	.LFE106
	.byte	0x1
	.byte	0x51
	.4byte	0xbee
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x57a
	.4byte	0xbee
	.4byte	.LLST24
	.uleb128 0x22
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x57a
	.4byte	0x229
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x8a5
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x586
	.byte	0x1
	.4byte	0x89f
	.4byte	.LFB107
	.4byte	.LFE107
	.byte	0x1
	.byte	0x51
	.4byte	0xc31
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x585
	.4byte	0xbee
	.4byte	.LLST26
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x585
	.4byte	0x229
	.4byte	.LLST27
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x58b
	.byte	0x1
	.4byte	0x89f
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST28
	.4byte	0xc60
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x58a
	.4byte	0xbee
	.4byte	.LLST29
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x5cc
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.byte	0x1
	.byte	0x51
	.4byte	0xc87
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.2byte	0x5cb
	.4byte	0xcc
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x5d0
	.byte	0x1
	.4byte	0xcc
	.4byte	.LFB113
	.4byte	.LFE113
	.byte	0x1
	.byte	0x51
	.4byte	0xcb4
	.uleb128 0x24
	.string	"tex"
	.byte	0x1
	.2byte	0x5cf
	.4byte	0x58
	.4byte	.LLST32
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x5d5
	.byte	0x1
	.4byte	0x1e8
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST33
	.4byte	0xcf1
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x5d5
	.4byte	0x229
	.4byte	.LLST34
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.2byte	0x5d6
	.4byte	0x89f
	.4byte	.LLST35
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x621
	.byte	0x1
	.4byte	0xa1
	.4byte	.LFB116
	.4byte	.LFE116
	.byte	0x1
	.byte	0x51
	.4byte	0xd2c
	.uleb128 0x26
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x620
	.4byte	0x21e
	.4byte	.LLST37
	.uleb128 0x22
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x620
	.4byte	0xd2c
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x58
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x666
	.byte	0x1
	.4byte	0x58
	.4byte	.LFB118
	.4byte	.LFE118
	.byte	0x1
	.byte	0x51
	.4byte	0xd5f
	.uleb128 0x26
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x666
	.4byte	0x58
	.4byte	.LLST39
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x7fb
	.byte	0x1
	.4byte	0x20c
	.4byte	.LFB125
	.4byte	.LFE125
	.4byte	.LLST40
	.4byte	0xd8e
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x7fb
	.4byte	0x229
	.4byte	.LLST41
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x683
	.byte	0x1
	.4byte	0x58
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST42
	.4byte	0xdcd
	.uleb128 0x26
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x682
	.4byte	0x201
	.4byte	.LLST43
	.uleb128 0x26
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x682
	.4byte	0x201
	.4byte	.LLST44
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x3d4
	.byte	0x1
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LLST45
	.4byte	0xe06
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x3d3
	.4byte	0x282
	.4byte	.LLST46
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.2byte	0x3d3
	.4byte	0x287
	.4byte	.LLST47
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x3c2
	.byte	0x1
	.4byte	.LFB92
	.4byte	.LFE92
	.4byte	.LLST48
	.4byte	0xe3f
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x3c1
	.4byte	0x282
	.4byte	.LLST49
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.2byte	0x3c1
	.4byte	0x287
	.4byte	.LLST50
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x3b6
	.byte	0x1
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	.LLST51
	.4byte	0xe78
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x282
	.4byte	.LLST52
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x287
	.4byte	.LLST53
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x3a8
	.byte	0x1
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LLST54
	.4byte	0xeb1
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x282
	.4byte	.LLST55
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x287
	.4byte	.LLST56
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x395
	.byte	0x1
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LLST57
	.4byte	0xeea
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x394
	.4byte	0x282
	.4byte	.LLST58
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.2byte	0x394
	.4byte	0x287
	.4byte	.LLST59
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x385
	.byte	0x1
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LLST60
	.4byte	0xf23
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x384
	.4byte	0x282
	.4byte	.LLST61
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.2byte	0x384
	.4byte	0x287
	.4byte	.LLST62
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF153
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST63
	.4byte	0xf79
	.uleb128 0x2b
	.4byte	.LASF105
	.byte	0x1
	.byte	0xdf
	.4byte	0x201
	.4byte	.LLST64
	.uleb128 0x2b
	.4byte	.LASF104
	.byte	0x1
	.byte	0xdf
	.4byte	0x21e
	.4byte	.LLST65
	.uleb128 0x2b
	.4byte	.LASF154
	.byte	0x1
	.byte	0xe0
	.4byte	0x201
	.4byte	.LLST66
	.uleb128 0x2b
	.4byte	.LASF155
	.byte	0x1
	.byte	0xe0
	.4byte	0x26b
	.4byte	.LLST67
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF156
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST68
	.4byte	0xfae
	.uleb128 0x2c
	.string	"p1"
	.byte	0x1
	.byte	0x91
	.4byte	0x21e
	.4byte	.LLST69
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.byte	0x91
	.4byte	0x1ee
	.4byte	.LLST70
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF157
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST71
	.4byte	0xfe3
	.uleb128 0x2c
	.string	"p1"
	.byte	0x1
	.byte	0x84
	.4byte	0x21e
	.4byte	.LLST72
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.byte	0x84
	.4byte	0x1ee
	.4byte	.LLST73
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF158
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST74
	.4byte	0x101b
	.uleb128 0x2b
	.4byte	.LASF154
	.byte	0x1
	.byte	0x6e
	.4byte	0x201
	.4byte	.LLST75
	.uleb128 0x2b
	.4byte	.LASF155
	.byte	0x1
	.byte	0x6e
	.4byte	0x26b
	.4byte	.LLST76
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST77
	.4byte	0x1053
	.uleb128 0x2b
	.4byte	.LASF154
	.byte	0x1
	.byte	0x15
	.4byte	0x201
	.4byte	.LLST78
	.uleb128 0x2b
	.4byte	.LASF118
	.byte	0x1
	.byte	0x15
	.4byte	0x21e
	.4byte	.LLST79
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF160
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST80
	.4byte	0x108b
	.uleb128 0x2b
	.4byte	.LASF154
	.byte	0x1
	.byte	0x10
	.4byte	0x201
	.4byte	.LLST81
	.uleb128 0x2b
	.4byte	.LASF118
	.byte	0x1
	.byte	0x10
	.4byte	0x23f
	.4byte	.LLST82
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x55c
	.byte	0x1
	.4byte	.LFB105
	.4byte	.LFE105
	.4byte	.LLST83
	.4byte	0x10ee
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x55b
	.4byte	0xbee
	.4byte	.LLST84
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x55b
	.4byte	0x229
	.4byte	.LLST85
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x55d
	.4byte	0x25
	.uleb128 0x28
	.string	"tex"
	.byte	0x1
	.2byte	0x562
	.4byte	0x89f
	.4byte	.LLST86
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.2byte	0x56e
	.4byte	0x58
	.4byte	.LLST87
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x7e4
	.byte	0x1
	.4byte	.LFB124
	.4byte	.LFE124
	.4byte	.LLST88
	.4byte	0x1135
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.2byte	0x7e3
	.4byte	0x234
	.4byte	.LLST89
	.uleb128 0x26
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x7e3
	.4byte	0x271
	.4byte	.LLST90
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x7e7
	.4byte	0x25
	.4byte	.LLST91
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x66b
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST92
	.4byte	0x11b4
	.uleb128 0x24
	.string	"tex"
	.byte	0x1
	.2byte	0x66a
	.4byte	0x89f
	.4byte	.LLST93
	.uleb128 0x26
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x66a
	.4byte	0x21e
	.4byte	.LLST94
	.uleb128 0x2d
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x671
	.4byte	0xa1
	.4byte	.LLST95
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.2byte	0x67c
	.4byte	0x48
	.4byte	.LLST96
	.uleb128 0x2e
	.4byte	0x8b0
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x67d
	.uleb128 0x2f
	.4byte	0x8ca
	.uleb128 0x2f
	.4byte	0x8be
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x31
	.4byte	0x8d4
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x6d1
	.byte	0x1
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST97
	.4byte	0x12a8
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x6cc
	.4byte	0x201
	.4byte	.LLST98
	.uleb128 0x26
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x6cc
	.4byte	0x21e
	.4byte	.LLST99
	.uleb128 0x26
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x6cd
	.4byte	0x21e
	.4byte	.LLST100
	.uleb128 0x26
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x6cd
	.4byte	0x21e
	.4byte	.LLST101
	.uleb128 0x26
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x6ce
	.4byte	0x234
	.4byte	.LLST102
	.uleb128 0x26
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x6ce
	.4byte	0x234
	.4byte	.LLST103
	.uleb128 0x26
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x6cf
	.4byte	0x201
	.4byte	.LLST104
	.uleb128 0x26
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x6cf
	.4byte	0x201
	.4byte	.LLST105
	.uleb128 0x22
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x6d0
	.4byte	0x24a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x6e9
	.4byte	0x58
	.uleb128 0x28
	.string	"tex"
	.byte	0x1
	.2byte	0x6f0
	.4byte	0x89f
	.4byte	.LLST106
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.2byte	0x6f8
	.4byte	0x23f
	.uleb128 0x1c
	.string	"w"
	.byte	0x1
	.2byte	0x6f9
	.4byte	0x23f
	.uleb128 0x1c
	.string	"h"
	.byte	0x1
	.2byte	0x6fa
	.4byte	0x23f
	.uleb128 0x2d
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x711
	.4byte	0x48
	.4byte	.LLST107
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x657
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST108
	.4byte	0x1327
	.uleb128 0x26
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x656
	.4byte	0xa1
	.4byte	.LLST109
	.uleb128 0x26
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x656
	.4byte	0x234
	.4byte	.LLST110
	.uleb128 0x26
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x656
	.4byte	0x234
	.4byte	.LLST111
	.uleb128 0x26
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x656
	.4byte	0x1327
	.4byte	.LLST112
	.uleb128 0x26
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x656
	.4byte	0x97
	.4byte	.LLST113
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.2byte	0x65a
	.4byte	0x48
	.4byte	.LLST114
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x25
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x73d
	.byte	0x1
	.4byte	.LFB123
	.4byte	.LFE123
	.4byte	.LLST115
	.4byte	0x14e7
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x738
	.4byte	0x201
	.4byte	.LLST116
	.uleb128 0x26
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x738
	.4byte	0x21e
	.4byte	.LLST117
	.uleb128 0x26
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x739
	.4byte	0x21e
	.4byte	.LLST118
	.uleb128 0x26
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x73a
	.4byte	0x234
	.4byte	.LLST119
	.uleb128 0x26
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x73a
	.4byte	0x234
	.4byte	.LLST120
	.uleb128 0x26
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x73b
	.4byte	0x21e
	.4byte	.LLST121
	.uleb128 0x26
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x73b
	.4byte	0x201
	.4byte	.LLST122
	.uleb128 0x26
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x73b
	.4byte	0x201
	.4byte	.LLST123
	.uleb128 0x22
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x73c
	.4byte	0x24a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x742
	.4byte	0xcc
	.uleb128 0x2d
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x76f
	.4byte	0x58
	.4byte	.LLST124
	.uleb128 0x2d
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x776
	.4byte	0xa1
	.4byte	.LLST125
	.uleb128 0x2d
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x780
	.4byte	0x25
	.4byte	.LLST126
	.uleb128 0x28
	.string	"tex"
	.byte	0x1
	.2byte	0x782
	.4byte	0x89f
	.4byte	.LLST127
	.uleb128 0x2d
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x784
	.4byte	0x234
	.4byte	.LLST128
	.uleb128 0x2d
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x785
	.4byte	0x234
	.4byte	.LLST129
	.uleb128 0x2d
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x78a
	.4byte	0xcc
	.4byte	.LLST130
	.uleb128 0x32
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x78d
	.4byte	0xcc
	.uleb128 0x33
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0x147c
	.uleb128 0x28
	.string	"tex"
	.byte	0x1
	.2byte	0x74e
	.4byte	0x89f
	.4byte	.LLST131
	.byte	0x0
	.uleb128 0x33
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0x149a
	.uleb128 0x28
	.string	"tex"
	.byte	0x1
	.2byte	0x748
	.4byte	0x89f
	.4byte	.LLST132
	.byte	0x0
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x14cc
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.2byte	0x79d
	.4byte	0x58
	.4byte	.LLST133
	.uleb128 0x35
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x2d
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x7b7
	.4byte	0x58
	.4byte	.LLST134
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.4byte	.LBB12
	.4byte	.LBE12
	.uleb128 0x2d
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x7cd
	.4byte	0x48
	.4byte	.LLST135
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x728
	.byte	0x1
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST136
	.4byte	0x1582
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x720
	.4byte	0x201
	.4byte	.LLST137
	.uleb128 0x26
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x721
	.4byte	0x21e
	.4byte	.LLST138
	.uleb128 0x26
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x722
	.4byte	0x21e
	.4byte	.LLST139
	.uleb128 0x26
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x723
	.4byte	0x234
	.4byte	.LLST140
	.uleb128 0x26
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x724
	.4byte	0x21e
	.4byte	.LLST141
	.uleb128 0x26
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x725
	.4byte	0x201
	.4byte	.LLST142
	.uleb128 0x26
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x726
	.4byte	0x201
	.4byte	.LLST143
	.uleb128 0x26
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x727
	.4byte	0x24a
	.4byte	.LLST144
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x543
	.byte	0x1
	.4byte	.LFB104
	.4byte	.LFE104
	.4byte	.LLST145
	.4byte	0x15d7
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x542
	.4byte	0xbee
	.4byte	.LLST146
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x542
	.4byte	0x229
	.4byte	.LLST147
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x544
	.4byte	0x25
	.4byte	.LLST148
	.uleb128 0x36
	.string	"j"
	.byte	0x1
	.2byte	0x552
	.4byte	0x58
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x5c1
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST149
	.4byte	0x1612
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x5c0
	.4byte	0x201
	.4byte	.LLST150
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x5c0
	.4byte	0x229
	.4byte	.LLST151
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x500
	.byte	0x1
	.4byte	0xcc
	.4byte	.LFB103
	.4byte	.LFE103
	.4byte	.LLST152
	.4byte	0x1675
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x4ff
	.4byte	0xbee
	.4byte	.LLST153
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.2byte	0x4ff
	.4byte	0x25
	.4byte	.LLST154
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x501
	.4byte	0x25
	.4byte	.LLST155
	.uleb128 0x32
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x524
	.4byte	0x89f
	.uleb128 0x32
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x52b
	.4byte	0x1ee
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x594
	.byte	0x1
	.4byte	0x229
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST156
	.4byte	0x16b2
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x593
	.4byte	0xbee
	.4byte	.LLST157
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x595
	.4byte	0x25
	.4byte	.LLST158
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x5ac
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST159
	.4byte	0x170a
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.2byte	0x5ab
	.4byte	0x234
	.4byte	.LLST160
	.uleb128 0x24
	.string	"tex"
	.byte	0x1
	.2byte	0x5ab
	.4byte	0x27c
	.4byte	.LLST161
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x5b5
	.4byte	0x25
	.4byte	.LLST162
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x1c
	.string	"nt"
	.byte	0x1
	.2byte	0x5ba
	.4byte	0x229
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x4c6
	.4byte	.LFB102
	.4byte	.LFE102
	.4byte	.LLST163
	.4byte	0x173a
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.2byte	0x4cc
	.4byte	0x25
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"j"
	.byte	0x1
	.2byte	0x4cd
	.4byte	0x25
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x331
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LLST164
	.4byte	0x1785
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x330
	.4byte	0x201
	.4byte	.LLST165
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x330
	.4byte	0x201
	.4byte	.LLST166
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x330
	.4byte	0x21e
	.4byte	.LLST167
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x34f
	.byte	0x1
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LLST168
	.4byte	0x17d0
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x34e
	.4byte	0x201
	.4byte	.LLST169
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x34e
	.4byte	0x201
	.4byte	.LLST170
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x34e
	.4byte	0x23f
	.4byte	.LLST171
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x36a
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LLST172
	.4byte	0x181b
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x369
	.4byte	0x201
	.4byte	.LLST173
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x369
	.4byte	0x201
	.4byte	.LLST174
	.uleb128 0x26
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x369
	.4byte	0x255
	.4byte	.LLST175
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x3e5
	.byte	0x1
	.4byte	.LFB94
	.4byte	.LFE94
	.4byte	.LLST176
	.4byte	0x1854
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x25b
	.4byte	.LLST177
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x1ee
	.4byte	.LLST178
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x411
	.byte	0x1
	.4byte	.LFB96
	.4byte	.LFE96
	.4byte	.LLST179
	.4byte	0x188f
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x410
	.4byte	0x201
	.4byte	.LLST180
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x410
	.4byte	0x21e
	.4byte	.LLST181
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x4a9
	.byte	0x1
	.4byte	.LFB101
	.4byte	.LFE101
	.4byte	.LLST182
	.4byte	0x18da
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x201
	.4byte	.LLST183
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x201
	.4byte	.LLST184
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x21e
	.4byte	.LLST185
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x490
	.byte	0x1
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	.LLST186
	.4byte	0x1925
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x48f
	.4byte	0x201
	.4byte	.LLST187
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x48f
	.4byte	0x201
	.4byte	.LLST188
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x48f
	.4byte	0x23f
	.4byte	.LLST189
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x464
	.byte	0x1
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LLST190
	.4byte	0x1970
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x463
	.4byte	0x201
	.4byte	.LLST191
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x463
	.4byte	0x201
	.4byte	.LLST192
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x463
	.4byte	0x260
	.4byte	.LLST193
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x42c
	.byte	0x1
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	.LLST194
	.4byte	0x19bb
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x42b
	.4byte	0x201
	.4byte	.LLST195
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x42b
	.4byte	0x201
	.4byte	.LLST196
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x42b
	.4byte	0x255
	.4byte	.LLST197
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x3f6
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.4byte	.LLST198
	.4byte	0x19f6
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x3f5
	.4byte	0x201
	.4byte	.LLST199
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x3f5
	.4byte	0x23f
	.4byte	.LLST200
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x1a2
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST201
	.4byte	0x1b17
	.uleb128 0x26
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x97
	.4byte	.LLST202
	.uleb128 0x26
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x1fb
	.4byte	.LLST203
	.uleb128 0x2d
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x97
	.4byte	.LLST204
	.uleb128 0x2d
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x97
	.4byte	.LLST205
	.uleb128 0x2d
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x97
	.4byte	.LLST206
	.uleb128 0x28
	.string	"Aop"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x97
	.4byte	.LLST207
	.uleb128 0x2d
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x1af
	.4byte	0x97
	.4byte	.LLST208
	.uleb128 0x2d
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x97
	.4byte	.LLST209
	.uleb128 0x36
	.string	"C"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x1b17
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.string	"A"
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x1b17
	.byte	0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x38
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x1b27
	.byte	0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x38
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x1b27
	.byte	0x2
	.byte	0x91
	.sleb128 -55
	.uleb128 0x28
	.string	"Tex"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xac
	.4byte	.LLST210
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x58
	.4byte	.LLST211
	.uleb128 0x2d
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x58
	.4byte	.LLST212
	.uleb128 0x2d
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x58
	.4byte	.LLST213
	.uleb128 0x2d
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x58
	.4byte	.LLST214
	.byte	0x0
	.uleb128 0xa
	.4byte	0x97
	.4byte	0x1b27
	.uleb128 0xb
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0xa
	.4byte	0xac
	.4byte	0x1b37
	.uleb128 0xb
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x288
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST215
	.4byte	0x1ba2
	.uleb128 0x26
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x287
	.4byte	0x97
	.4byte	.LLST216
	.uleb128 0x26
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x287
	.4byte	0x1fb
	.4byte	.LLST217
	.uleb128 0x2d
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x292
	.4byte	0x97
	.4byte	.LLST218
	.uleb128 0x2d
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x293
	.4byte	0x97
	.4byte	.LLST219
	.uleb128 0x28
	.string	"tex"
	.byte	0x1
	.2byte	0x29a
	.4byte	0x89f
	.4byte	.LLST220
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x5e0
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST221
	.4byte	0x1c4a
	.uleb128 0x26
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x5df
	.4byte	0x97
	.4byte	.LLST222
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x5e1
	.4byte	0x58
	.4byte	.LLST223
	.uleb128 0x36
	.string	"inc"
	.byte	0x1
	.2byte	0x5e2
	.4byte	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x5e3
	.4byte	0x58
	.4byte	.LLST224
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x1c39
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.2byte	0x5f0
	.4byte	0x89f
	.4byte	.LLST225
	.uleb128 0x35
	.4byte	.LBB17
	.4byte	.LBE17
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.2byte	0x601
	.4byte	0x58
	.4byte	.LLST226
	.uleb128 0x32
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x602
	.4byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF216
	.4byte	0x1c5a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.15040
	.byte	0x0
	.uleb128 0xa
	.4byte	0x74
	.4byte	0x1c5a
	.uleb128 0xb
	.4byte	0x37
	.byte	0xe
	.byte	0x0
	.uleb128 0x14
	.4byte	0x1c4a
	.uleb128 0x3a
	.4byte	.LASF217
	.byte	0x2
	.byte	0x3c
	.4byte	0x31e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x3a
	.4byte	.LASF218
	.byte	0x2
	.byte	0x3d
	.4byte	0x12d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xa
	.4byte	0x2da
	.4byte	0x1c93
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF219
	.byte	0x2
	.byte	0x3e
	.4byte	0x1c83
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x3a
	.4byte	.LASF220
	.byte	0x2
	.byte	0x4a
	.4byte	0x37a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x3a
	.4byte	.LASF221
	.byte	0x2
	.byte	0x4b
	.4byte	0x37a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xa
	.4byte	0x37a
	.4byte	0x1cd9
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x3b
	.string	"tex"
	.byte	0x2
	.byte	0x4c
	.4byte	0x1cc9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x3a
	.4byte	.LASF97
	.byte	0x2
	.byte	0x4d
	.4byte	0x37a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xa
	.4byte	0x12d
	.4byte	0x1d0e
	.uleb128 0x3c
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF222
	.byte	0x2
	.byte	0x4f
	.4byte	0x1cfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x3a
	.4byte	.LASF223
	.byte	0x2
	.byte	0x50
	.4byte	0x1cfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xa
	.4byte	0x2da
	.4byte	0x1d49
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.uleb128 0x3c
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF224
	.byte	0x2
	.byte	0x51
	.4byte	0x1d32
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xa
	.4byte	0x31e
	.4byte	0x1d6c
	.uleb128 0x3c
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF225
	.byte	0x2
	.byte	0x52
	.4byte	0x1d5b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x3a
	.4byte	.LASF226
	.byte	0x2
	.byte	0x5c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x3a
	.4byte	.LASF227
	.byte	0x2
	.byte	0x5d
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x3a
	.4byte	.LASF228
	.byte	0x2
	.byte	0x5e
	.4byte	0x201
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x3a
	.4byte	.LASF229
	.byte	0x2
	.byte	0x60
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x3a
	.4byte	.LASF230
	.byte	0x2
	.byte	0x61
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x3a
	.4byte	.LASF231
	.byte	0x2
	.byte	0x6a
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x3a
	.4byte	.LASF232
	.byte	0x2
	.byte	0x6b
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x3a
	.4byte	.LASF233
	.byte	0x2
	.byte	0x6c
	.4byte	0x201
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x3a
	.4byte	.LASF234
	.byte	0x2
	.byte	0x6d
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x3a
	.4byte	.LASF235
	.byte	0x2
	.byte	0x79
	.4byte	0x3ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x3a
	.4byte	.LASF236
	.byte	0x2
	.byte	0x7a
	.4byte	0x3ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xa
	.4byte	0x3ca
	.4byte	0x1e54
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF237
	.byte	0x2
	.byte	0x7b
	.4byte	0x1e44
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x3a
	.4byte	.LASF238
	.byte	0x2
	.byte	0x7c
	.4byte	0x1e78
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3ca
	.uleb128 0x3a
	.4byte	.LASF239
	.byte	0x2
	.byte	0x7d
	.4byte	0x201
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xa
	.4byte	0x490
	.4byte	0x1ea0
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF240
	.byte	0x2
	.byte	0x98
	.4byte	0x1e90
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x3a
	.4byte	.LASF241
	.byte	0x2
	.byte	0x9b
	.4byte	0x31e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x3a
	.4byte	.LASF242
	.byte	0x2
	.byte	0xa8
	.4byte	0x4ee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x3a
	.4byte	.LASF243
	.byte	0x2
	.byte	0xab
	.4byte	0xcc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x3a
	.4byte	.LASF244
	.byte	0x2
	.byte	0xac
	.4byte	0x201
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x3a
	.4byte	.LASF245
	.byte	0x2
	.byte	0xb0
	.4byte	0xcc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x3a
	.4byte	.LASF246
	.byte	0x2
	.byte	0xb7
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x3a
	.4byte	.LASF247
	.byte	0x2
	.byte	0xb8
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x3a
	.4byte	.LASF248
	.byte	0x2
	.byte	0xb9
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x3a
	.4byte	.LASF249
	.byte	0x2
	.byte	0xba
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x3a
	.4byte	.LASF250
	.byte	0x2
	.byte	0xbc
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x3a
	.4byte	.LASF251
	.byte	0x2
	.byte	0xc5
	.4byte	0x518
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x3a
	.4byte	.LASF252
	.byte	0x2
	.byte	0xef
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x3a
	.4byte	.LASF253
	.byte	0x2
	.byte	0xf0
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x3a
	.4byte	.LASF254
	.byte	0x2
	.byte	0xf1
	.4byte	0x20c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x3a
	.4byte	.LASF255
	.byte	0x2
	.byte	0xf2
	.4byte	0x564
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x3a
	.4byte	.LASF256
	.byte	0x2
	.byte	0xf3
	.4byte	0x564
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x3a
	.4byte	.LASF257
	.byte	0x2
	.byte	0xf4
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x3a
	.4byte	.LASF258
	.byte	0x2
	.byte	0xf5
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x3a
	.4byte	.LASF259
	.byte	0x2
	.byte	0xf7
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x3a
	.4byte	.LASF260
	.byte	0x2
	.byte	0xf8
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x3d
	.4byte	.LASF261
	.byte	0x2
	.2byte	0x104
	.4byte	0x5d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x3d
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x105
	.4byte	0x5d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xa
	.4byte	0xcc
	.4byte	0x2050
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x3d
	.4byte	.LASF263
	.byte	0x2
	.2byte	0x106
	.4byte	0x2040
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x3d
	.4byte	.LASF264
	.byte	0x2
	.2byte	0x10c
	.4byte	0xcc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x3d
	.4byte	.LASF265
	.byte	0x2
	.2byte	0x10d
	.4byte	0x201
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x3d
	.4byte	.LASF266
	.byte	0x2
	.2byte	0x110
	.4byte	0x17a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xa
	.4byte	0x60a
	.4byte	0x20ac
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x3d
	.4byte	.LASF267
	.byte	0x2
	.2byte	0x124
	.4byte	0x209c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x3d
	.4byte	.LASF268
	.byte	0x2
	.2byte	0x149
	.4byte	0xcc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x3d
	.4byte	.LASF269
	.byte	0x2
	.2byte	0x14a
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x3d
	.4byte	.LASF270
	.byte	0x2
	.2byte	0x14b
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x3d
	.4byte	.LASF271
	.byte	0x2
	.2byte	0x14c
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x3d
	.4byte	.LASF272
	.byte	0x2
	.2byte	0x14d
	.4byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x3d
	.4byte	.LASF273
	.byte	0x2
	.2byte	0x14e
	.4byte	0x17a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xa
	.4byte	0x77e
	.4byte	0x2141
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x3d
	.4byte	.LASF274
	.byte	0x2
	.2byte	0x150
	.4byte	0x2131
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x3d
	.4byte	.LASF275
	.byte	0x2
	.2byte	0x155
	.4byte	0x201
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x3d
	.4byte	.LASF276
	.byte	0x2
	.2byte	0x158
	.4byte	0x229
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x3a
	.4byte	.LASF134
	.byte	0x1
	.byte	0xc2
	.4byte	0x8a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texMan
	.uleb128 0x3d
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x367
	.4byte	0x31e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	border_color
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x5
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x5
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
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
	.uleb128 0x5
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
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
	.uleb128 0x2d
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
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
	.4byte	0x7c7
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x21a0
	.4byte	0x8eb
	.string	"_glGetSize"
	.4byte	0x96b
	.string	"GX_SetTevCIn"
	.4byte	0x9db
	.string	"GX_SetTevAIn"
	.4byte	0xa37
	.string	"GX_IncReg"
	.4byte	0xa62
	.string	"GX_IncCCReg"
	.4byte	0xa8d
	.string	"GX_IncCAReg"
	.4byte	0xab8
	.string	"GX_IncAAReg"
	.4byte	0xae3
	.string	"GX_IncTexMap"
	.4byte	0xb0e
	.string	"GX_IncTexCoord"
	.4byte	0xb39
	.string	"setAniso"
	.4byte	0xb61
	.string	"setMaxLod"
	.4byte	0xbb3
	.string	"isUsed"
	.4byte	0xbf4
	.string	"getTex"
	.4byte	0xc31
	.string	"getCur"
	.4byte	0xc60
	.string	"_glSetEnableTex"
	.4byte	0xc87
	.string	"_glGetEnableTex"
	.4byte	0xcb4
	.string	"GX_getTexObj"
	.4byte	0xcf1
	.string	"convertInternalFormat"
	.4byte	0xd32
	.string	"IsPowerOfTwo"
	.4byte	0xd5f
	.string	"glIsTexture"
	.4byte	0xd8e
	.string	"CorrectGLtype"
	.4byte	0xdcd
	.string	"glSetComAlpha"
	.4byte	0xe06
	.string	"glSetComRGB"
	.4byte	0xe3f
	.string	"glSetAlphaOp"
	.4byte	0xe78
	.string	"glSetRGBOp"
	.4byte	0xeb1
	.string	"glSetSrc"
	.4byte	0xeea
	.string	"glSetTexEnvMode"
	.4byte	0xf23
	.string	"glGetTexLevelParameteriv"
	.4byte	0xf79
	.string	"GL2GX_Filter"
	.4byte	0xfae
	.string	"GL2GX_Wrap"
	.4byte	0xfe3
	.string	"_glGetPixelStore"
	.4byte	0x101b
	.string	"glPixelStorei"
	.4byte	0x1053
	.string	"glPixelStoref"
	.4byte	0x108b
	.string	"deleteTex"
	.4byte	0x10ee
	.string	"glDeleteTextures"
	.4byte	0x1135
	.string	"computeStart"
	.4byte	0x11b4
	.string	"glTexSubImage2D"
	.4byte	0x12a8
	.string	"GenArray"
	.4byte	0x132d
	.string	"glTexImage2D"
	.4byte	0x14e7
	.string	"glTexImage1D"
	.4byte	0x1582
	.string	"activateTex"
	.4byte	0x15d7
	.string	"glBindTexture"
	.4byte	0x1612
	.string	"resizeMan"
	.4byte	0x1675
	.string	"getNextTexID"
	.4byte	0x16b2
	.string	"glGenTextures"
	.4byte	0x170a
	.string	"initTextures"
	.4byte	0x173a
	.string	"glTexParameteri"
	.4byte	0x1785
	.string	"glTexParameterf"
	.4byte	0x17d0
	.string	"glTexParameterfv"
	.4byte	0x181b
	.string	"glSetScale"
	.4byte	0x1854
	.string	"_glTexEnvi"
	.4byte	0x188f
	.string	"glTexEnvi"
	.4byte	0x18da
	.string	"glTexEnvf"
	.4byte	0x1925
	.string	"glTexEnviv"
	.4byte	0x1970
	.string	"glTexEnvfv"
	.4byte	0x19bb
	.string	"_glTexEnvf"
	.4byte	0x19f6
	.string	"GX_SetTevCombineStage"
	.4byte	0x1b37
	.string	"GX_SetTevStage"
	.4byte	0x1ba2
	.string	"GX_SetTextures"
	.4byte	0x1c5f
	.string	"_tempcolorelement"
	.4byte	0x1c71
	.string	"_tempnormalelement"
	.4byte	0x1c93
	.string	"_temptexcoordelement"
	.4byte	0x1ca5
	.string	"norm"
	.4byte	0x1cb7
	.string	"vert"
	.4byte	0x1cd9
	.string	"tex"
	.4byte	0x1ceb
	.string	"color"
	.4byte	0x1d0e
	.string	"_normalelements"
	.4byte	0x1d20
	.string	"_vertexelements"
	.4byte	0x1d49
	.string	"_texcoordelements"
	.4byte	0x1d6c
	.string	"_colorelements"
	.4byte	0x1d7e
	.string	"vert_i"
	.4byte	0x1d90
	.string	"_type"
	.4byte	0x1da2
	.string	"_GLtype"
	.4byte	0x1db4
	.string	"cur_tex"
	.4byte	0x1dc6
	.string	"cur_tex_client"
	.4byte	0x1dd8
	.string	"depthtestenabled"
	.4byte	0x1dea
	.string	"depthupdate"
	.4byte	0x1dfc
	.string	"depthfunction"
	.4byte	0x1e0e
	.string	"_cleardepth"
	.4byte	0x1e20
	.string	"model_stack"
	.4byte	0x1e32
	.string	"projection_stack"
	.4byte	0x1e54
	.string	"texture_stack"
	.4byte	0x1e66
	.string	"curmtx"
	.4byte	0x1e7e
	.string	"cur_mode"
	.4byte	0x1ea0
	.string	"lights"
	.4byte	0x1eb2
	.string	"globAmbient"
	.4byte	0x1ec4
	.string	"curmat"
	.4byte	0x1ed6
	.string	"gxcullfaceanabled"
	.4byte	0x1ee8
	.string	"gxwinding"
	.4byte	0x1efa
	.string	"lighting"
	.4byte	0x1f0c
	.string	"blend_type"
	.4byte	0x1f1e
	.string	"blend_src"
	.4byte	0x1f30
	.string	"blend_dst"
	.4byte	0x1f42
	.string	"blend_op"
	.4byte	0x1f54
	.string	"cull_mode"
	.4byte	0x1f66
	.string	"cur_state"
	.4byte	0x1f78
	.string	"fb_max_height"
	.4byte	0x1f8a
	.string	"fb_max_width"
	.4byte	0x1f9c
	.string	"scissor_test"
	.4byte	0x1fae
	.string	"scissorInfo"
	.4byte	0x1fc0
	.string	"viewPort"
	.4byte	0x1fd2
	.string	"normNear"
	.4byte	0x1fe4
	.string	"normFar"
	.4byte	0x1ff6
	.string	"line_width"
	.4byte	0x2008
	.string	"point_size"
	.4byte	0x201a
	.string	"pack"
	.4byte	0x202d
	.string	"unpack"
	.4byte	0x2050
	.string	"color_write_mask"
	.4byte	0x2063
	.string	"copy_mat_enabled"
	.4byte	0x2076
	.string	"copy_material"
	.4byte	0x2089
	.string	"_clearcolor"
	.4byte	0x20ac
	.string	"Trans"
	.4byte	0x20bf
	.string	"fog_enable"
	.4byte	0x20d2
	.string	"fog_mode"
	.4byte	0x20e5
	.string	"fog_startz"
	.4byte	0x20f8
	.string	"fog_endz"
	.4byte	0x210b
	.string	"fog_density"
	.4byte	0x211e
	.string	"fog_color"
	.4byte	0x2141
	.string	"glTexEnvs"
	.4byte	0x2154
	.string	"read_mode"
	.4byte	0x2167
	.string	"call_offset"
	.4byte	0x217a
	.string	"texMan"
	.4byte	0x218c
	.string	"border_color"
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF155:
	.string	"params"
.LASF189:
	.string	"getNextTexID"
.LASF202:
	.string	"stage"
.LASF43:
	.string	"Stack"
.LASF108:
	.string	"base_level"
.LASF163:
	.string	"computeStart"
.LASF124:
	.string	"GX_SetTevAIn"
.LASF186:
	.string	"resizeMan"
.LASF8:
	.string	"char"
.LASF156:
	.string	"GL2GX_Filter"
.LASF27:
	.string	"GLint"
.LASF102:
	.string	"format"
.LASF54:
	.string	"quad_t"
.LASF64:
	.string	"boxInfo"
.LASF216:
	.string	"__FUNCTION__"
.LASF280:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF241:
	.string	"globAmbient"
.LASF237:
	.string	"texture_stack"
.LASF22:
	.string	"GXTexObj"
.LASF93:
	.string	"Carg"
.LASF252:
	.string	"fb_max_height"
.LASF115:
	.string	"usedTexs"
.LASF222:
	.string	"_normalelements"
.LASF183:
	.string	"internalformat"
.LASF164:
	.string	"byteOffset"
.LASF56:
	.string	"_mat"
.LASF284:
	.string	"scale_s32"
.LASF166:
	.string	"xoffset"
.LASF158:
	.string	"_glGetPixelStore"
.LASF49:
	.string	"specular"
.LASF40:
	.string	"_stack"
.LASF140:
	.string	"GX_getTexObj"
.LASF281:
	.string	"GLvoid"
.LASF104:
	.string	"level"
.LASF114:
	.string	"nTexs"
.LASF224:
	.string	"_texcoordelements"
.LASF75:
	.string	"_trans"
.LASF51:
	.string	"spotCutoff"
.LASF79:
	.string	"_tex_env"
.LASF242:
	.string	"curmat"
.LASF90:
	.string	"mode"
.LASF266:
	.string	"_clearcolor"
.LASF122:
	.string	"defcolor"
.LASF85:
	.string	"maxlod"
.LASF60:
	.string	"GL_STATE_NONE"
.LASF106:
	.string	"gxObj"
.LASF23:
	.string	"_gx_litobj"
.LASF58:
	.string	"shininess"
.LASF109:
	.string	"max_level"
.LASF206:
	.string	"Alphabias"
.LASF223:
	.string	"_vertexelements"
.LASF33:
	.string	"GXColorf"
.LASF94:
	.string	"CargOp"
.LASF234:
	.string	"_cleardepth"
.LASF48:
	.string	"diffuse"
.LASF251:
	.string	"cur_state"
.LASF211:
	.string	"max_src"
.LASF218:
	.string	"_tempnormalelement"
.LASF3:
	.string	"signed char"
.LASF162:
	.string	"glDeleteTextures"
.LASF230:
	.string	"cur_tex_client"
.LASF221:
	.string	"vert"
.LASF269:
	.string	"fog_mode"
.LASF194:
	.string	"glSetScale"
.LASF199:
	.string	"glTexEnvfv"
.LASF91:
	.string	"comRGB"
.LASF271:
	.string	"fog_endz"
.LASF227:
	.string	"_type"
.LASF11:
	.string	"float"
.LASF34:
	.string	"_array"
.LASF172:
	.string	"internalFormat"
.LASF77:
	.string	"bias"
.LASF157:
	.string	"GL2GX_Wrap"
.LASF20:
	.string	"GXColor"
.LASF146:
	.string	"CorrectGLtype"
.LASF39:
	.string	"VertexArray"
.LASF259:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF267:
	.string	"Trans"
.LASF261:
	.string	"pack"
.LASF57:
	.string	"emissive"
.LASF132:
	.string	"setMaxLod"
.LASF256:
	.string	"viewPort"
.LASF80:
	.string	"min_filter"
.LASF197:
	.string	"glTexEnvf"
.LASF235:
	.string	"model_stack"
.LASF263:
	.string	"color_write_mask"
.LASF196:
	.string	"glTexEnvi"
.LASF173:
	.string	"border"
.LASF35:
	.string	"enable"
.LASF274:
	.string	"glTexEnvs"
.LASF246:
	.string	"blend_type"
.LASF144:
	.string	"value"
.LASF145:
	.string	"glIsTexture"
.LASF113:
	.string	"used"
.LASF107:
	.string	"glFormat"
.LASF175:
	.string	"iFor"
.LASF273:
	.string	"fog_color"
.LASF105:
	.string	"target"
.LASF65:
	.string	"width"
.LASF212:
	.string	"GX_SetTevStage"
.LASF264:
	.string	"copy_mat_enabled"
.LASF229:
	.string	"cur_tex"
.LASF92:
	.string	"comAlpha"
.LASF178:
	.string	"base_width"
.LASF184:
	.string	"activateTex"
.LASF133:
	.string	"isUsed"
.LASF176:
	.string	"bytes"
.LASF160:
	.string	"glPixelStoref"
.LASF159:
	.string	"glPixelStorei"
.LASF260:
	.string	"point_size"
.LASF187:
	.string	"new_arr"
.LASF210:
	.string	"max_Asrc"
.LASF30:
	.string	"GLfloat"
.LASF16:
	.string	"true"
.LASF265:
	.string	"copy_material"
.LASF147:
	.string	"glSetComAlpha"
.LASF135:
	.string	"texture"
.LASF62:
	.string	"GL_STATE_NEWLIST"
.LASF243:
	.string	"gxcullfaceanabled"
.LASF238:
	.string	"curmtx"
.LASF215:
	.string	"maxlod_in_tex"
.LASF121:
	.string	"texN"
.LASF47:
	.string	"ambient"
.LASF255:
	.string	"scissorInfo"
.LASF198:
	.string	"glTexEnviv"
.LASF244:
	.string	"gxwinding"
.LASF24:
	.string	"GXLightObj"
.LASF110:
	.string	"glTex"
.LASF214:
	.string	"texs"
.LASF129:
	.string	"GX_IncTexMap"
.LASF78:
	.string	"ColorTrans"
.LASF247:
	.string	"blend_src"
.LASF59:
	.string	"Material"
.LASF103:
	.string	"pixels"
.LASF233:
	.string	"depthfunction"
.LASF100:
	.string	"glTexEnvSet"
.LASF254:
	.string	"scissor_test"
.LASF101:
	.string	"_glTex"
.LASF236:
	.string	"projection_stack"
.LASF225:
	.string	"_colorelements"
.LASF68:
	.string	"swap"
.LASF5:
	.string	"long long int"
.LASF119:
	.string	"_glGetSize"
.LASF141:
	.string	"convertInternalFormat"
.LASF258:
	.string	"normFar"
.LASF151:
	.string	"glSetSrc"
.LASF28:
	.string	"GLuint"
.LASF142:
	.string	"valid"
.LASF61:
	.string	"GL_STATE_BEGIN"
.LASF275:
	.string	"read_mode"
.LASF42:
	.string	"elem_size"
.LASF63:
	.string	"glState"
.LASF188:
	.string	"new_used"
.LASF52:
	.string	"constant"
.LASF268:
	.string	"fog_enable"
.LASF136:
	.string	"getTex"
.LASF209:
	.string	"max_Csrc"
.LASF18:
	.string	"_vecf"
.LASF31:
	.string	"VertexElement"
.LASF76:
	.string	"scale"
.LASF87:
	.string	"biasclamp"
.LASF125:
	.string	"GX_IncReg"
.LASF70:
	.string	"row_length"
.LASF232:
	.string	"depthupdate"
.LASF277:
	.string	"border_color"
.LASF203:
	.string	"nstages"
.LASF37:
	.string	"size"
.LASF55:
	.string	"LightObj"
.LASF118:
	.string	"param"
.LASF130:
	.string	"GX_IncTexCoord"
.LASF83:
	.string	"wrap_t"
.LASF185:
	.string	"glBindTexture"
.LASF248:
	.string	"blend_dst"
.LASF66:
	.string	"height"
.LASF219:
	.string	"_temptexcoordelement"
.LASF112:
	.string	"textures"
.LASF161:
	.string	"deleteTex"
.LASF193:
	.string	"glTexParameterfv"
.LASF239:
	.string	"cur_mode"
.LASF128:
	.string	"GX_IncAAReg"
.LASF213:
	.string	"GX_SetTextures"
.LASF177:
	.string	"base_height"
.LASF67:
	.string	"_pixelStore"
.LASF116:
	.string	"TextManager"
.LASF12:
	.string	"long double"
.LASF82:
	.string	"wrap_s"
.LASF285:
	.string	"initTextures"
.LASF139:
	.string	"_glGetEnableTex"
.LASF13:
	.string	"size_t"
.LASF220:
	.string	"norm"
.LASF262:
	.string	"unpack"
.LASF46:
	.string	"spotDir"
.LASF181:
	.string	"max_dim"
.LASF21:
	.string	"_gx_texobj"
.LASF123:
	.string	"defalpha"
.LASF50:
	.string	"spotExponent"
.LASF86:
	.string	"lodbias"
.LASF240:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF84:
	.string	"minlod"
.LASF81:
	.string	"max_filter"
.LASF9:
	.string	"long int"
.LASF182:
	.string	"glTexImage1D"
.LASF179:
	.string	"case1"
.LASF180:
	.string	"case2"
.LASF25:
	.string	"GLenum"
.LASF174:
	.string	"powerOf2"
.LASF44:
	.string	"_light"
.LASF97:
	.string	"color"
.LASF29:
	.string	"GLsizei"
.LASF276:
	.string	"call_offset"
.LASF217:
	.string	"_tempcolorelement"
.LASF165:
	.string	"glTexSubImage2D"
.LASF72:
	.string	"skip_pixels"
.LASF14:
	.string	"bool"
.LASF95:
	.string	"Aarg"
.LASF89:
	.string	"maxaniso"
.LASF279:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl_textures.c"
.LASF171:
	.string	"glTexImage2D"
.LASF0:
	.string	"unsigned int"
.LASF272:
	.string	"fog_density"
.LASF36:
	.string	"stride"
.LASF245:
	.string	"lighting"
.LASF201:
	.string	"GX_SetTevCombineStage"
.LASF148:
	.string	"glSetComRGB"
.LASF7:
	.string	"long unsigned int"
.LASF149:
	.string	"glSetAlphaOp"
.LASF249:
	.string	"blend_op"
.LASF153:
	.string	"glGetTexLevelParameteriv"
.LASF270:
	.string	"fog_startz"
.LASF74:
	.string	"pixelStore"
.LASF134:
	.string	"texMan"
.LASF168:
	.string	"correct_type"
.LASF126:
	.string	"GX_IncCCReg"
.LASF283:
	.string	"OffsetN"
.LASF120:
	.string	"GX_SetTevCIn"
.LASF208:
	.string	"Atex"
.LASF278:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF38:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF150:
	.string	"glSetRGBOp"
.LASF45:
	.string	"enabled"
.LASF143:
	.string	"IsPowerOfTwo"
.LASF71:
	.string	"skip_rows"
.LASF167:
	.string	"yoffset"
.LASF15:
	.string	"false"
.LASF226:
	.string	"vert_i"
.LASF69:
	.string	"lsb_first"
.LASF99:
	.string	"alpha_scale"
.LASF131:
	.string	"setAniso"
.LASF111:
	.string	"_textMan"
.LASF192:
	.string	"glTexParameterf"
.LASF17:
	.string	"Vector"
.LASF170:
	.string	"byte_size"
.LASF191:
	.string	"glTexParameteri"
.LASF253:
	.string	"fb_max_width"
.LASF53:
	.string	"linear"
.LASF190:
	.string	"glGenTextures"
.LASF257:
	.string	"normNear"
.LASF228:
	.string	"_GLtype"
.LASF231:
	.string	"depthtestenabled"
.LASF19:
	.string	"_gx_color"
.LASF152:
	.string	"glSetTexEnvMode"
.LASF88:
	.string	"edgelod"
.LASF205:
	.string	"RGBbias"
.LASF138:
	.string	"_glSetEnableTex"
.LASF204:
	.string	"RGBop"
.LASF127:
	.string	"GX_IncCAReg"
.LASF2:
	.string	"short unsigned int"
.LASF41:
	.string	"begin"
.LASF10:
	.string	"double"
.LASF73:
	.string	"alignment"
.LASF32:
	.string	"TexCoordElement"
.LASF26:
	.string	"GLboolean"
.LASF98:
	.string	"rgb_scale"
.LASF169:
	.string	"GenArray"
.LASF137:
	.string	"getCur"
.LASF282:
	.string	"_glState"
.LASF200:
	.string	"_glTexEnvf"
.LASF195:
	.string	"_glTexEnvi"
.LASF207:
	.string	"Ctex"
.LASF154:
	.string	"pname"
.LASF117:
	.string	"dest"
.LASF250:
	.string	"cull_mode"
.LASF96:
	.string	"AargOp"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
