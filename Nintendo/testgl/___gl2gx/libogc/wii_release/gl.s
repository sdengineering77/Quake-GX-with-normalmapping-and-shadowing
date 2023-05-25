	.file	"gl.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl glTexGeni
	.type	glTexGeni, @function
glTexGeni:
.LFB69:
	.file 1 "c:/projects/wii/gl2gx/libogc/../source/gl.c"
	.loc 1 22 0
.LVL0:
	.loc 1 22 0
	blr
.LFE69:
	.size	glTexGeni, .-glTexGeni
	.align 2
	.globl glVertex3f
	.type	glVertex3f, @function
glVertex3f:
.LFB84:
	.loc 1 173 0
.LVL1:
	stwu 1,-24(1)
.LCFI0:
	.loc 1 174 0
	lis 9,vert_i@ha
	.loc 1 173 0
	stmw 29,12(1)
.LCFI1:
	.loc 1 174 0
	lwz 12,vert_i@l(9)
	cmpwi 7,12,1000
	ble- 7,.L4
.LBB39:
.LBB40:
	.loc 1 1195 0
	li 0,1285
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,176
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L9
.L4:
.LBE40:
.LBE39:
	.loc 1 185 0
	lis 9,_colorelements@ha
	slwi 10,12,4
	la 9,_colorelements@l(9)
	.loc 1 180 0
	mulli 0,12,12
	.loc 1 185 0
	add 10,10,9
	lis 9,_tempcolorelement@ha
	la 9,_tempcolorelement@l(9)
	.loc 1 187 0
	lis 11,_normalelements@ha
	.loc 1 185 0
	lswi 5,9,16
	stswi 5,10,16
	.loc 1 187 0
	la 11,_normalelements@l(11)
	lis 9,_tempnormalelement@ha
	add 11,0,11
	la 9,_tempnormalelement@l(9)
	.loc 1 180 0
	lis 4,_vertexelements@ha
	.loc 1 187 0
	lswi 5,9,12
	stswi 5,11,12
	.loc 1 180 0
	la 4,_vertexelements@l(4)
	.loc 1 187 0
	lis 9,_texcoordelements@ha
	.loc 1 180 0
	add 29,0,4
	.loc 1 187 0
	la 9,_texcoordelements@l(9)
	slwi 3,12,3
	.loc 1 180 0
	stfsx 1,4,0
	.loc 1 190 0
	li 0,8
	.loc 1 187 0
	add 3,3,9
	.loc 1 182 0
	stfs 3,8(29)
	.loc 1 187 0
	lis 9,_temptexcoordelement+4@ha
	.loc 1 181 0
	stfs 2,4(29)
	.loc 1 190 0
	mtctr 0
	.loc 1 187 0
	la 9,_temptexcoordelement+4@l(9)
	addi 3,3,4
.L7:
	.loc 1 192 0
	lfs 0,-4(9)
	lfs 13,0(9)
	addi 9,9,8
	stfs 0,-4(3)
	stfs 13,0(3)
	addi 3,3,8000
	.loc 1 190 0
	bdnz .L7
	.loc 1 195 0
	addi 0,12,1
	lis 9,vert_i@ha
	stw 0,vert_i@l(9)
.L9:
	.loc 1 196 0
	lmw 29,12(1)
	addi 1,1,24
	blr
.LFE84:
	.size	glVertex3f, .-glVertex3f
	.align 2
	.globl glVertex4f
	.type	glVertex4f, @function
glVertex4f:
.LFB83:
	.loc 1 169 0
.LVL2:
	.loc 1 170 0
	b glVertex3f
.LVL3:
.LFE83:
	.size	glVertex4f, .-glVertex4f
	.align 2
	.globl glVertex3fv
	.type	glVertex3fv, @function
glVertex3fv:
.LFB82:
	.loc 1 165 0
.LVL4:
	.loc 1 166 0
	lfs 3,8(3)
	lfs 1,0(3)
	lfs 2,4(3)
	b glVertex3f
.LVL5:
.LFE82:
	.size	glVertex3fv, .-glVertex3fv
	.align 2
	.globl glVertex2f
	.type	glVertex2f, @function
glVertex2f:
.LFB81:
	.loc 1 160 0
.LVL6:
	.loc 1 161 0
	lis 9,.LC1@ha
	lfs 3,.LC1@l(9)
	b glVertex3f
.LVL7:
.LFE81:
	.size	glVertex2f, .-glVertex2f
	.align 2
	.globl glVertex2i
	.type	glVertex2i, @function
glVertex2i:
.LFB80:
	.loc 1 156 0
.LVL8:
	stwu 1,-16(1)
.LCFI2:
	.loc 1 157 0
	xoris 3,3,0x8000
.LVL9:
	lis 0,0x4330
	xoris 4,4,0x8000
.LVL10:
	stw 3,12(1)
	lis 9,.LC3@ha
	stw 0,8(1)
	lfs 0,.LC3@l(9)
	lis 9,.LC1@ha
	lfd 1,8(1)
	stw 4,12(1)
	fsub 1,1,0
	lfs 3,.LC1@l(9)
	lfd 2,8(1)
	.loc 1 158 0
	addi 1,1,16
	.loc 1 157 0
	fsub 2,2,0
	frsp 1,1
	frsp 2,2
	b glVertex3f
.LFE80:
	.size	glVertex2i, .-glVertex2i
	.align 2
	.globl glNormal3f
	.type	glNormal3f, @function
glNormal3f:
.LFB85:
	.loc 1 198 0
.LVL11:
	.loc 1 199 0
	lis 9,_tempnormalelement@ha
	la 11,_tempnormalelement@l(9)
	stfs 1,_tempnormalelement@l(9)
	.loc 1 201 0
	stfs 3,8(11)
	.loc 1 200 0
	stfs 2,4(11)
	.loc 1 202 0
	blr
.LFE85:
	.size	glNormal3f, .-glNormal3f
	.align 2
	.globl glColor4f
	.type	glColor4f, @function
glColor4f:
.LFB88:
	.loc 1 212 0
.LVL12:
	.loc 1 218 0
	lis 9,copy_mat_enabled@ha
	lbz 0,copy_mat_enabled@l(9)
	.loc 1 214 0
	lis 9,_tempcolorelement@ha
	la 10,_tempcolorelement@l(9)
	stfs 1,_tempcolorelement@l(9)
	.loc 1 218 0
	cmpwi 7,0,0
	.loc 1 215 0
	stfs 2,4(10)
	.loc 1 216 0
	stfs 3,8(10)
	.loc 1 217 0
	stfs 4,12(10)
	.loc 1 218 0
	beqlr- 7
	.loc 1 220 0
	lis 9,copy_material@ha
	lwz 0,copy_material@l(9)
	cmpwi 7,0,4610
	beq- 7,.L27
	cmplwi 7,0,4610
	bgt- 7,.L30
	cmpwi 7,0,4608
	beq- 7,.L25
	cmpwi 7,0,4609
	bnelr+ 7
	b .L26
.L30:
	cmpwi 7,0,5632
	beq- 7,.L28
	cmpwi 7,0,5634
	bnelr+ 7
	b .L29
.L28:
	.loc 1 222 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	b .L32
.L25:
	.loc 1 223 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	addi 9,9,16
	b .L32
.L26:
	.loc 1 224 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	addi 9,9,32
	b .L32
.L27:
	.loc 1 225 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	addi 9,9,48
	b .L32
.L29:
	.loc 1 227 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	.loc 1 228 0
	addi 11,9,32
	.loc 1 227 0
	addi 9,9,16
	.loc 1 228 0
	lswi 5,10,16
	stswi 5,11,16
.L32:
	.loc 1 227 0
	lswi 5,10,16
	stswi 5,9,16
	blr
.LFE88:
	.size	glColor4f, .-glColor4f
	.align 2
	.globl glColor3f
	.type	glColor3f, @function
glColor3f:
.LFB87:
	.loc 1 208 0
.LVL13:
	.loc 1 209 0
	lis 9,.LC4@ha
	lfs 4,.LC4@l(9)
	b glColor4f
.LVL14:
.LFE87:
	.size	glColor3f, .-glColor3f
	.align 2
	.globl glColor3ub
	.type	glColor3ub, @function
glColor3ub:
.LFB89:
	.loc 1 237 0
.LVL15:
	stwu 1,-16(1)
.LCFI3:
	.loc 1 238 0
	lis 0,0x4330
	lis 9,.LC6@ha
	stw 3,12(1)
	stw 0,8(1)
	lfs 0,.LC6@l(9)
	lis 9,.LC7@ha
	lfd 1,8(1)
	stw 4,12(1)
	fsub 1,1,0
	lfd 2,8(1)
	stw 5,12(1)
	fsub 2,2,0
	lfd 3,8(1)
	frsp 1,1
	.loc 1 239 0
	addi 1,1,16
	.loc 1 238 0
	fsub 3,3,0
	lfs 0,.LC7@l(9)
	frsp 2,2
	lis 9,.LC4@ha
	fdivs 1,1,0
	lfs 4,.LC4@l(9)
	frsp 3,3
	fdivs 2,2,0
	fdivs 3,3,0
	b glColor4f
.LVL16:
.LFE89:
	.size	glColor3ub, .-glColor3ub
	.align 2
	.globl glColor4ub
	.type	glColor4ub, @function
glColor4ub:
.LFB90:
	.loc 1 245 0
.LVL17:
	stwu 1,-16(1)
.LCFI4:
	.loc 1 246 0
	lis 0,0x4330
	lis 9,.LC6@ha
	stw 3,12(1)
	stw 0,8(1)
	lfs 0,.LC6@l(9)
	lis 9,.LC7@ha
	lfd 1,8(1)
	stw 4,12(1)
	fsub 1,1,0
	lfd 2,8(1)
	stw 5,12(1)
	fsub 2,2,0
	lfd 3,8(1)
	frsp 1,1
	stw 6,12(1)
	fsub 3,3,0
	lfd 4,8(1)
	frsp 2,2
	.loc 1 247 0
	addi 1,1,16
	.loc 1 246 0
	fsub 4,4,0
	lfs 0,.LC7@l(9)
	frsp 3,3
	fdivs 1,1,0
	frsp 4,4
	fdivs 2,2,0
	fdivs 4,4,0
	fdivs 3,3,0
	b glColor4f
.LVL18:
.LFE90:
	.size	glColor4ub, .-glColor4ub
	.align 2
	.globl glColor3fv
	.type	glColor3fv, @function
glColor3fv:
.LFB91:
	.loc 1 250 0
.LVL19:
	.loc 1 251 0
	lfs 3,8(3)
	lfs 1,0(3)
	lfs 2,4(3)
	b glColor3f
.LVL20:
.LFE91:
	.size	glColor3fv, .-glColor3fv
	.align 2
	.globl glTexCoord2f
	.type	glTexCoord2f, @function
glTexCoord2f:
.LFB92:
	.loc 1 255 0
.LVL21:
	.loc 1 256 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,_temptexcoordelement@ha
	la 9,_temptexcoordelement@l(9)
	slwi 0,0,3
	add 11,0,9
	stfsx 1,9,0
	.loc 1 257 0
	stfs 2,4(11)
	.loc 1 258 0
	blr
.LFE92:
	.size	glTexCoord2f, .-glTexCoord2f
	.align 2
	.globl glLightN
	.type	glLightN, @function
glLightN:
.LFB94:
	.loc 1 280 0
.LVL22:
	.loc 1 282 0
	addi 0,3,-16384
	cmplwi 7,0,7
	bgt- 7,.L44
	lis 9,.L53@ha
	slwi 0,0,2
	la 9,.L53@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L53:
	.long .L45-.L53
	.long .L46-.L53
	.long .L47-.L53
	.long .L48-.L53
	.long .L49-.L53
	.long .L50-.L53
	.long .L51-.L53
	.long .L52-.L53
	.section	".text"
.L45:
	li 3,0
.LVL23:
	blr
.LVL24:
.L46:
	.loc 1 284 0
	li 3,1
.LVL25:
	blr
.LVL26:
.L47:
	.loc 1 285 0
	li 3,2
.LVL27:
	blr
.LVL28:
.L48:
	.loc 1 286 0
	li 3,3
.LVL29:
	blr
.LVL30:
.L49:
	.loc 1 287 0
	li 3,4
.LVL31:
	blr
.LVL32:
.L50:
	.loc 1 288 0
	li 3,5
.LVL33:
	blr
.LVL34:
.L51:
	.loc 1 289 0
	li 3,6
.LVL35:
	blr
.LVL36:
.L44:
.LBB45:
.LBB46:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,293
	lis 9,glErrLine@ha
	li 3,-1
.LVL37:
	stw 0,glErrLine@l(9)
	blr
.LVL38:
.L52:
	.loc 1 294 0
	li 3,7
.LVL39:
.LVL40:
.LBE46:
.LBE45:
	.loc 1 298 0
	blr
.LFE94:
	.size	glLightN, .-glLightN
	.align 2
	.globl glMaterialfv
	.type	glMaterialfv, @function
glMaterialfv:
.LFB98:
	.loc 1 396 0
.LVL41:
	.loc 1 397 0
	cmpwi 7,4,4610
	.loc 1 396 0
	mflr 0
.LCFI5:
	stwu 1,-16(1)
.LCFI6:
	stw 31,12(1)
.LCFI7:
	mr 31,5
	stw 0,20(1)
.LCFI8:
	.loc 1 397 0
	beq- 7,.L61
.LVL42:
	cmplwi 7,4,4610
	bgt- 7,.L65
	cmpwi 7,4,4608
	beq- 7,.L59
	cmpwi 7,4,4609
	bne+ 7,.L58
	b .L60
.L65:
	cmpwi 7,4,5633
	beq- 7,.L63
	cmpwi 7,4,5634
	beq- 7,.L64
	cmpwi 7,4,5632
	bne+ 7,.L58
	b .L62
.L64:
	.loc 1 400 0
	li 4,4608
.LVL43:
	bl glMaterialfv
.LVL44:
	b .L60
.LVL45:
.L62:
	.loc 1 404 0
	lfs 0,0(5)
	lis 9,curmat@ha
	stfs 0,curmat@l(9)
	la 9,curmat@l(9)
	.loc 1 405 0
	lfs 0,4(5)
	stfs 0,4(9)
	.loc 1 406 0
	lfs 0,8(5)
	stfs 0,8(9)
	.loc 1 407 0
	lfs 0,12(5)
	stfs 0,12(9)
	b .L67
.L60:
	.loc 1 410 0
	lfs 0,0(31)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	stfs 0,32(9)
	.loc 1 411 0
	lfs 0,4(31)
	stfs 0,36(9)
	.loc 1 412 0
	lfs 0,8(31)
	stfs 0,40(9)
	.loc 1 413 0
	lfs 0,12(31)
	stfs 0,44(9)
	b .L67
.L59:
	.loc 1 416 0
	lfs 0,0(5)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	stfs 0,16(9)
	.loc 1 417 0
	lfs 0,4(5)
	stfs 0,20(9)
	.loc 1 418 0
	lfs 0,8(5)
	stfs 0,24(9)
	.loc 1 419 0
	lfs 0,12(5)
	stfs 0,28(9)
	b .L67
.L61:
	.loc 1 422 0
	lfs 0,0(5)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	stfs 0,48(9)
	.loc 1 423 0
	lfs 0,4(5)
	stfs 0,52(9)
	.loc 1 424 0
	lfs 0,8(5)
	stfs 0,56(9)
	.loc 1 425 0
	lfs 0,12(5)
	stfs 0,60(9)
	b .L67
.L63:
	.loc 1 428 0
	lfs 0,0(5)
	lis 9,curmat+64@ha
	stfs 0,curmat+64@l(9)
	b .L67
.L58:
.LBB49:
.LBB50:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,431
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.L67:
.LBE50:
.LBE49:
	.loc 1 434 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL46:
	addi 1,1,16
	mtlr 0
	blr
.LFE98:
	.size	glMaterialfv, .-glMaterialfv
	.align 2
	.globl glFogf
	.type	glFogf, @function
glFogf:
.LFB108:
	.loc 1 679 0
.LVL47:
	stwu 1,-16(1)
.LCFI9:
	.loc 1 680 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L69
.LBB61:
.LBB62:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,680
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L89
.L69:
.LBE62:
.LBE61:
	.loc 1 682 0
	cmpwi 7,3,2915
	beq- 7,.L74
	cmplwi 7,3,2915
	bgt- 7,.L77
	cmpwi 7,3,2914
	bne+ 7,.L72
	b .L73
.L77:
	cmpwi 7,3,2916
	beq- 7,.L75
	cmpwi 7,3,2917
	bne+ 7,.L72
	.loc 1 685 0
	fmr 0,1
	lis 9,.LC11@ha
	lfs 1,.LC11@l(9)
.LVL48:
	fcmpu 7,0,1
	cror 30,29,30
	beq- 7,.L82
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 9,8(1)
	b .L83
.L82:
	fsub 0,0,1
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 9,12(1)
	addis 9,9,0x8000
.L83:
	cmpwi 7,9,2049
	beq- 7,.L80
	cmpwi 7,9,9729
	beq- 7,.L81
	cmpwi 7,9,2048
	bne+ 7,.L88
	b .L79
.L81:
	.loc 1 688 0
	li 0,2
	b .L90
.L79:
	.loc 1 691 0
	li 0,4
.L90:
	lis 9,fog_mode@ha
	stb 0,fog_mode@l(9)
	b .L87
.L80:
	.loc 1 694 0
	li 0,5
	b .L90
.L88:
.LBB63:
.LBB64:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,697
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L89
.LVL49:
.L74:
.LBE64:
.LBE63:
	.loc 1 702 0
	lis 9,fog_startz@ha
	stfs 1,fog_startz@l(9)
	b .L87
.L75:
	.loc 1 705 0
	lis 9,fog_endz@ha
	stfs 1,fog_endz@l(9)
	b .L87
.L73:
	.loc 1 708 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,1,0
	bnl+ 7,.L84
.LBB65:
.LBB66:
	.loc 1 1195 0
	li 0,1281
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,710
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L89
.L84:
.LBE66:
.LBE65:
	.loc 1 713 0
	lis 9,.LC12@ha
	fmr 13,1
	lfd 0,.LC12@l(9)
	lis 9,fog_density@ha
	fdiv 0,0,13
	frsp 0,0
	stfs 0,fog_density@l(9)
	b .L87
.L72:
.LBB67:
.LBB68:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,716
.L89:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.L87:
.LBE68:
.LBE67:
	.loc 1 719 0
	addi 1,1,16
	blr
.LFE108:
	.size	glFogf, .-glFogf
	.align 2
	.globl glFogi
	.type	glFogi, @function
glFogi:
.LFB107:
	.loc 1 674 0
.LVL50:
	stwu 1,-16(1)
.LCFI10:
	.loc 1 675 0
	xoris 4,4,0x8000
.LVL51:
	lis 0,0x4330
	lis 9,.LC3@ha
	stw 4,12(1)
	stw 0,8(1)
	lfs 0,.LC3@l(9)
	lfd 1,8(1)
	.loc 1 676 0
	addi 1,1,16
	.loc 1 675 0
	fsub 1,1,0
	frsp 1,1
	b glFogf
.LVL52:
.LFE107:
	.size	glFogi, .-glFogi
	.align 2
	.globl _glSetErrorEx
	.type	_glSetErrorEx, @function
_glSetErrorEx:
.LFB122:
	.loc 1 1194 0
.LVL53:
	.loc 1 1195 0
	lis 9,glErrCode@ha
	stw 3,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,glErrFile@ha
	stw 4,glErrFile@l(9)
	.loc 1 1197 0
	lis 9,glErrLine@ha
	stw 5,glErrLine@l(9)
	.loc 1 1198 0
	blr
.LFE122:
	.size	_glSetErrorEx, .-_glSetErrorEx
	.align 2
	.globl glColorMask
	.type	glColorMask, @function
glColorMask:
.LFB124:
	.loc 1 1212 0
.LVL54:
	.loc 1 1213 0
	xori 3,3,1
.LVL55:
	.loc 1 1214 0
	xori 4,4,1
.LVL56:
	.loc 1 1215 0
	xori 5,5,1
.LVL57:
	.loc 1 1216 0
	xori 6,6,1
.LVL58:
	.loc 1 1213 0
	lis 11,color_write_mask@ha
	cntlzw 3,3
	.loc 1 1214 0
	cntlzw 4,4
	.loc 1 1215 0
	cntlzw 5,5
	.loc 1 1216 0
	cntlzw 6,6
	.loc 1 1213 0
	la 9,color_write_mask@l(11)
	srwi 3,3,5
	.loc 1 1214 0
	srwi 4,4,5
	.loc 1 1215 0
	srwi 5,5,5
	.loc 1 1216 0
	srwi 6,6,5
	.loc 1 1213 0
	stb 3,color_write_mask@l(11)
	.loc 1 1216 0
	stb 6,3(9)
	.loc 1 1214 0
	stb 4,1(9)
	.loc 1 1215 0
	stb 5,2(9)
	.loc 1 1217 0
	blr
.LFE124:
	.size	glColorMask, .-glColorMask
	.align 2
	.globl glGetIntegerv
	.type	glGetIntegerv, @function
glGetIntegerv:
.LFB119:
	.loc 1 1080 0
.LVL59:
	mflr 0
.LCFI11:
	stwu 1,-32(1)
.LCFI12:
	.loc 1 1081 0
	lis 9,cur_state@ha
	.loc 1 1080 0
	stw 31,28(1)
.LCFI13:
	mr 31,4
	stw 0,36(1)
.LCFI14:
	.loc 1 1081 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L98
.LVL60:
.LBB74:
.LBB75:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,1081
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L124
.L98:
.LBE75:
.LBE74:
	.loc 1 1083 0
	cmpwi 7,4,0
	beq- 7,.L124
.LVL61:
	.loc 1 1085 0
	cmplwi 7,3,3359
	bgt- 7,.L118
	cmplwi 7,3,3352
	bge- 7,.L108
	cmplwi 7,3,3317
	bgt- 7,.L119
	cmplwi 7,3,3312
	bge- 7,.L107
	cmpwi 7,3,2979
	beq- 7,.L104
	cmplwi 7,3,2979
	bgt- 7,.L120
	cmpwi 7,3,2976
	bne+ 7,.L102
	b .L103
.L120:
	cmpwi 7,3,2980
	beq- 7,.L105
	cmpwi 7,3,2981
	bne+ 7,.L102
	b .L106
.L119:
	cmplwi 7,3,3328
	blt- 7,.L102
	cmplwi 7,3,3333
	ble- 7,.L107
	addi 0,3,-3344
	cmplwi 7,0,5
	bgt- 7,.L102
	b .L108
.L118:
	cmpwi 7,3,3385
	beq- 7,.L114
	cmplwi 7,3,3385
	bgt- 7,.L121
	cmpwi 7,3,3381
	beq- 7,.L111
	cmplwi 7,3,3381
	bgt- 7,.L122
	cmpwi 7,3,3377
	beq- 7,.L117
	cmpwi 7,3,3379
	bne+ 7,.L102
	b .L110
.L122:
	cmpwi 7,3,3382
	beq- 7,.L112
	cmpwi 7,3,3384
	bne+ 7,.L102
	b .L113
.L121:
	cmplwi 7,3,32878
	bgt- 7,.L123
	cmplwi 7,3,32875
	bge- 7,.L107
	cmpwi 7,3,3387
	bne+ 7,.L102
	b .L111
.L123:
	xoris 0,3,0xffff
	cmpwi 7,0,-32535
	beq 7,.L116
	xoris 0,3,0xffff
	cmpwi 7,0,-31518
	beq 7,.L117
	xoris 0,3,0xffff
	cmpwi 7,0,-32536
	bne 7,.L102
	b .L116
.L103:
	.loc 1 1088 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	b .L125
.L110:
	.loc 1 1094 0
	li 0,1024
	b .L125
.L117:
	.loc 1 1099 0
	li 0,8
	b .L125
.L104:
	.loc 1 1102 0
	lis 3,model_stack@ha
.LVL62:
	la 3,model_stack@l(3)
	b .L128
.LVL63:
.L106:
	.loc 1 1105 0
	lis 3,texture_stack@ha
.LVL64:
	la 3,texture_stack@l(3)
	b .L128
.LVL65:
.L105:
	.loc 1 1108 0
	lis 3,projection_stack@ha
.LVL66:
	la 3,projection_stack@l(3)
.L128:
	bl StackSize
.LVL67:
	b .L127
.LVL68:
.L112:
	.loc 1 1111 0
	lis 3,model_stack@ha
.LVL69:
	la 3,model_stack@l(3)
	b .L126
.LVL70:
.L114:
	.loc 1 1114 0
	lis 3,texture_stack@ha
.LVL71:
	la 3,texture_stack@l(3)
	b .L126
.LVL72:
.L113:
	.loc 1 1117 0
	lis 3,projection_stack@ha
.LVL73:
	la 3,projection_stack@l(3)
.L126:
	bl MaxStackSize
.LVL74:
.L127:
	stw 3,0(31)
	b .L124
.LVL75:
.L116:
	.loc 1 1123 0
	li 0,32000
	b .L125
.L111:
	.loc 1 1127 0
	li 0,16
	b .L125
.L107:
	.loc 1 1145 0
	mr 4,31
	bl _glGetPixelStore
.LVL76:
	b .L124
.LVL77:
.L108:
.LBB76:
	.loc 1 1163 0
	addi 4,1,8
.LVL78:
	bl _glGetPixelTransferf
.LVL79:
	.loc 1 1164 0
	lfs 0,8(1)
.LVL80:
	fctiwz 0,0
	stfiwx 0,0,31
	b .L124
.LVL81:
.L102:
.LBE76:
.LBB77:
.LBB78:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,1168
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.LBE78:
.LBE77:
	.loc 1 1169 0
	li 0,0
.L125:
	stw 0,0(31)
.LVL82:
.L124:
	.loc 1 1172 0
	lwz 0,36(1)
	lwz 31,28(1)
.LVL83:
	addi 1,1,32
	mtlr 0
	blr
.LFE119:
	.size	glGetIntegerv, .-glGetIntegerv
	.align 2
	.globl updateFog
	.type	updateFog, @function
updateFog:
.LFB105:
	.loc 1 644 0
	mflr 0
.LCFI15:
	stwu 1,-16(1)
.LCFI16:
	.loc 1 645 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	.loc 1 644 0
	stw 0,20(1)
.LCFI17:
	.loc 1 645 0
	bl TopPrjMtx
	.loc 1 646 0
	lis 9,fog_enable@ha
	lbz 0,fog_enable@l(9)
	cmpwi 7,0,0
	beq- 7,.L130
	.loc 1 648 0
	lis 9,fog_mode@ha
	addi 4,1,8
	lbz 11,fog_mode@l(9)
	lis 9,fog_color@ha
	andi. 0,11,2
	beq- 0,.L132
	.loc 1 650 0
	lwz 0,fog_color@l(9)
	lis 9,fog_startz@ha
	stw 0,8(1)
	lfs 1,fog_startz@l(9)
	lis 9,fog_endz@ha
	lfs 4,72(3)
.LVL84:
	lfs 3,68(3)
	mr 3,11
.LVL85:
	lfs 2,fog_endz@l(9)
	b .L136
.L132:
	.loc 1 654 0
	lwz 0,fog_color@l(9)
	lis 9,fog_density@ha
	stw 0,8(1)
	lfs 2,fog_density@l(9)
	lis 9,.LC1@ha
	lfs 4,72(3)
.LVL86:
	lfs 3,68(3)
	mr 3,11
.LVL87:
	lfs 1,.LC1@l(9)
	b .L136
.L130:
	.loc 1 659 0
	lis 9,fog_color@ha
	addi 4,1,8
	lwz 0,fog_color@l(9)
	lis 9,fog_startz@ha
	stw 0,8(1)
	lfs 1,fog_startz@l(9)
	lis 9,fog_endz@ha
	lfs 2,fog_endz@l(9)
	lfs 4,72(3)
.LVL88:
	lfs 3,68(3)
	li 3,0
.LVL89:
.L136:
	bl GX_SetFog
	.loc 1 661 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LFE105:
	.size	updateFog, .-updateFog
	.align 2
	.type	draw_axis_align_blanker_quad, @function
draw_axis_align_blanker_quad:
.LFB100:
	.loc 1 480 0
	stwu 1,-136(1)
.LCFI18:
	mflr 0
.LCFI19:
	stmw 29,124(1)
.LCFI20:
	.loc 1 490 0
	addi 29,1,8
	.loc 1 480 0
	stw 0,140(1)
.LCFI21:
	.loc 1 481 0
	bl GX_SetCurrentGXThread
	.loc 1 490 0
	mr 3,29
	bl ps_guMtxIdentity
	.loc 1 491 0
	mr 3,29
	li 4,3
	.loc 1 492 0
	addi 29,1,56
	.loc 1 491 0
	bl GX_LoadPosMtxImm
	.loc 1 492 0
	lis 9,.LC1@ha
	lfs 2,.LC1@l(9)
	lis 9,.LC24@ha
	lfs 1,.LC24@l(9)
	lis 9,.LC25@ha
	lfs 4,.LC25@l(9)
	fmr 3,2
	lis 9,.LC26@ha
	fmr 5,2
	lfs 6,.LC26@l(9)
	mr 3,29
	bl guOrtho
	.loc 1 493 0
	li 4,1
	mr 3,29
	bl GX_LoadProjectionMtx
	.loc 1 494 0
	li 3,3
	bl GX_SetCurrentMtx
	.loc 1 497 0
	bl GX_ClearVtxDesc
	.loc 1 498 0
	li 3,9
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 499 0
	li 4,1
	li 3,11
	bl GX_SetVtxDesc
	.loc 1 502 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 503 0
	li 3,0
	bl GX_SetNumTexGens
	.loc 1 504 0
	li 3,1
	bl GX_SetNumTevStages
	.loc 1 505 0
	li 3,0
	bl GX_SetNumIndStages
	.loc 1 507 0
	li 5,255
	li 6,4
	li 3,0
	li 4,255
	bl GX_SetTevOrder
	.loc 1 508 0
	li 3,0
	li 4,4
	bl GX_SetTevOp
	.loc 1 511 0
	li 3,0
	li 4,1
	li 5,0
	li 6,0
	bl GX_SetBlendMode
	.loc 1 515 0
	li 3,0
	bl GX_SetCullMode
	.loc 1 517 0
	lis 9,scissor_test@ha
	lbz 0,scissor_test@l(9)
	cmpwi 7,0,0
	beq- 7,.L138
	.loc 1 519 0
	lis 11,scissorInfo@ha
	la 9,scissorInfo@l(11)
	lwz 3,scissorInfo@l(11)
	lwz 6,12(9)
	lwz 4,4(9)
	lwz 5,8(9)
	bl GX_SetModScissor
	b .L140
.L138:
	.loc 1 523 0
	bl GX_SetMaxScissor
.L140:
	.loc 1 527 0
	bl GX_DrawDone
	.loc 1 529 0
	li 3,128
	li 4,0
	li 5,4
	bl GX_Begin
	.loc 1 531 0
	lis 9,_cleardepth@ha
	lfs 0,_cleardepth@l(9)
.LBB97:
.LBB99:
	.file 2 "c:/devkitPRO/libogc/include/ogc/gx.h"
	.loc 2 1141 0
	lis 9,0xcc00
	ori 9,9,32768
	li 7,0
.LBE99:
.LBE97:
	.loc 1 531 0
	fneg 0,0
.LVL90:
.LBB101:
.LBB98:
	.loc 2 1141 0
	stw 7,0(9)
	.loc 2 1142 0
	stw 7,0(9)
.LBE98:
.LBE101:
	.loc 1 532 0
	lis 11,_clearcolor@ha
	la 10,_clearcolor@l(11)
.LBB102:
.LBB100:
	.loc 2 1143 0
	stfs 0,0(9)
.LBE100:
.LBE102:
	.loc 1 532 0
	lbz 8,_clearcolor@l(11)
.LVL91:
.LBB103:
.LBB104:
	.loc 2 1141 0
	lis 11,.LC25@ha
	lfs 13,.LC25@l(11)
.LBE104:
.LBE103:
.LBB106:
.LBB108:
	.loc 2 1142 0
	lis 11,.LC24@ha
.LBE108:
.LBE106:
	.loc 1 532 0
	lbz 6,3(10)
.LVL92:
	lbz 0,1(10)
.LVL93:
.LBB110:
.LBB107:
	.loc 2 1142 0
	lfs 12,.LC24@l(11)
.LBE107:
.LBE110:
	.loc 1 532 0
	lbz 11,2(10)
.LVL94:
.LBB111:
.LBB112:
	.loc 2 1247 0
	stb 8,0(9)
	.loc 2 1248 0
	stb 0,0(9)
	.loc 2 1249 0
	stb 11,0(9)
	.loc 2 1250 0
	stb 6,0(9)
.LBE112:
.LBE111:
.LBB113:
.LBB105:
	.loc 2 1141 0
	stfs 13,0(9)
	.loc 2 1142 0
	stw 7,0(9)
	.loc 2 1143 0
	stfs 0,0(9)
.LBE105:
.LBE113:
.LBB114:
.LBB115:
	.loc 2 1247 0
	stb 8,0(9)
	.loc 2 1248 0
	stb 0,0(9)
	.loc 2 1249 0
	stb 11,0(9)
	.loc 2 1250 0
	stb 6,0(9)
.LBE115:
.LBE114:
.LBB116:
.LBB109:
	.loc 2 1141 0
	stfs 13,0(9)
	.loc 2 1142 0
	stfs 12,0(9)
	.loc 2 1143 0
	stfs 0,0(9)
.LBE109:
.LBE116:
.LBB117:
.LBB118:
	.loc 2 1247 0
	stb 8,0(9)
	.loc 2 1248 0
	stb 0,0(9)
	.loc 2 1249 0
	stb 11,0(9)
	.loc 2 1250 0
	stb 6,0(9)
.LBE118:
.LBE117:
.LBB119:
.LBB120:
	.loc 2 1141 0
	stw 7,0(9)
	.loc 2 1142 0
	stfs 12,0(9)
	.loc 2 1143 0
	stfs 0,0(9)
.LBE120:
.LBE119:
.LBB121:
.LBB122:
	.loc 2 1247 0
	stb 8,0(9)
	.loc 2 1248 0
	stb 0,0(9)
	.loc 2 1249 0
	stb 11,0(9)
	.loc 2 1250 0
	stb 6,0(9)
.LBE122:
.LBE121:
	.loc 1 541 0
	bl GX_DrawDone
.LVL95:
	.loc 1 542 0
	lwz 0,140(1)
	lmw 29,124(1)
	addi 1,1,136
	mtlr 0
	blr
.LFE100:
	.size	draw_axis_align_blanker_quad, .-draw_axis_align_blanker_quad
	.align 2
	.globl glHint
	.type	glHint, @function
glHint:
.LFB66:
	.loc 1 14 0
.LVL96:
	.loc 1 14 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LBB125:
.LBB126:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,14
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE126:
.LBE125:
.LFE66:
	.size	glHint, .-glHint
	.align 2
	.globl glGetError
	.type	glGetError, @function
glGetError:
.LFB123:
	.loc 1 1200 0
	.loc 1 1201 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	lis 9,glErrCode@ha
	andi. 0,0,1
	beq- 0,.L147
.LBB129:
.LBB130:
	.loc 1 1195 0
	li 0,1282
	.loc 1 1196 0
	lis 11,glErrFile@ha
	.loc 1 1195 0
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	.loc 1 1197 0
	li 0,1201
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 3,0
.LVL97:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL98:
.L147:
.LBE130:
.LBE129:
	.loc 1 1203 0
	lwz 3,glErrCode@l(9)
.LVL99:
	.loc 1 1204 0
	stw 0,glErrCode@l(9)
.LVL100:
	.loc 1 1206 0
	blr
.LFE123:
	.size	glGetError, .-glGetError
	.align 2
	.globl glPointSize
	.type	glPointSize, @function
glPointSize:
.LFB121:
	.loc 1 1182 0
.LVL101:
	.loc 1 1183 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L152
.LBB133:
.LBB134:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,1183
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.L152:
.LBE134:
.LBE133:
	.loc 1 1185 0
	lis 9,point_size@ha
	stfs 1,point_size@l(9)
	blr
.LFE121:
	.size	glPointSize, .-glPointSize
	.align 2
	.globl glLineWidth
	.type	glLineWidth, @function
glLineWidth:
.LFB120:
	.loc 1 1175 0
.LVL102:
	.loc 1 1176 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L157
.LBB137:
.LBB138:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,1176
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.L157:
.LBE138:
.LBE137:
	.loc 1 1178 0
	lis 9,line_width@ha
	stfs 1,line_width@l(9)
	blr
.LFE120:
	.size	glLineWidth, .-glLineWidth
	.align 2
	.globl glActiveTextureARB
	.type	glActiveTextureARB, @function
glActiveTextureARB:
.LFB118:
	.loc 1 1065 0
.LVL103:
	.loc 1 1066 0
	addis 3,3,0xffff
.LVL104:
	.loc 1 1065 0
	mflr 0
.LCFI22:
	.loc 1 1066 0
	addi 3,3,31552
	.loc 1 1065 0
	stwu 1,-8(1)
.LCFI23:
	.loc 1 1066 0
	cmplwi 7,3,8
	.loc 1 1065 0
	stw 0,12(1)
.LCFI24:
	.loc 1 1066 0
	ble- 7,.L162
.LBB141:
.LBB142:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,1068
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L166
.L162:
.LBE142:
.LBE141:
	.loc 1 1074 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	.loc 1 1072 0
	lis 9,cur_tex@ha
	stw 3,cur_tex@l(9)
	.loc 1 1074 0
	cmpwi 7,0,5890
	bne+ 7,.L166
	.loc 1 1076 0
	li 3,5890
	bl glMatrixMode
.L166:
	.loc 1 1078 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE118:
	.size	glActiveTextureARB, .-glActiveTextureARB
	.align 2
	.globl glClientActiveTextureARB
	.type	glClientActiveTextureARB, @function
glClientActiveTextureARB:
.LFB117:
	.loc 1 1054 0
.LVL105:
	.loc 1 1055 0
	addis 3,3,0xffff
.LVL106:
	addi 3,3,31552
	cmplwi 7,3,8
	ble- 7,.L168
.LBB145:
.LBB146:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,1057
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.L168:
.LBE146:
.LBE145:
	.loc 1 1061 0
	lis 9,cur_tex_client@ha
	stw 3,cur_tex_client@l(9)
	blr
.LFE117:
	.size	glClientActiveTextureARB, .-glClientActiveTextureARB
	.align 2
	.globl glMultiTexCoord2fARB
	.type	glMultiTexCoord2fARB, @function
glMultiTexCoord2fARB:
.LFB116:
	.loc 1 1040 0
.LVL107:
	.loc 1 1041 0
	addis 3,3,0xffff
.LVL108:
	addi 0,3,31552
	cmplwi 7,0,8
	ble- 7,.L173
.LBB149:
.LBB150:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,1043
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.L173:
.LBE150:
.LBE149:
	.loc 1 1050 0
	lis 9,_temptexcoordelement@ha
	slwi 0,0,3
	la 9,_temptexcoordelement@l(9)
	add 11,0,9
	stfsx 1,9,0
	stfs 2,4(11)
	blr
.LFE116:
	.size	glMultiTexCoord2fARB, .-glMultiTexCoord2fARB
	.align 2
	.globl glGetFloatv
	.type	glGetFloatv, @function
glGetFloatv:
.LFB115:
	.loc 1 966 0
.LVL109:
	mflr 0
.LCFI25:
	stwu 1,-40(1)
.LCFI26:
	.loc 1 967 0
	lis 9,cur_state@ha
	.loc 1 966 0
	stw 31,36(1)
.LCFI27:
	mr 31,4
	stw 0,44(1)
.LCFI28:
	.loc 1 967 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L178
.LVL110:
.LBB158:
.LBB159:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,967
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L199
.L178:
.LBE159:
.LBE158:
	.loc 1 969 0
	cmpwi 7,4,0
	bne+ 7,.L181
.LVL111:
.LBB160:
.LBB161:
	.loc 1 1195 0
	li 0,1281
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,971
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L199
.L181:
.LBE161:
.LBE160:
	.loc 1 975 0
	cmplwi 7,3,3359
	bgt- 7,.L188
	cmplwi 7,3,3352
	bge- 7,.L186
	cmplwi 7,3,3317
	bgt- 7,.L189
	cmplwi 7,3,3312
	bge- 7,.L184
	cmplwi 7,3,2981
	bgt- 7,.L190
	cmplwi 7,3,2979
	bge- 7,.L184
	cmpwi 7,3,2976
	b .L198
.L190:
	cmplwi 7,3,2984
	bgt- 7,.L183
	b .L185
.L189:
	cmplwi 7,3,3328
	blt- 7,.L183
	cmplwi 7,3,3333
	ble- 7,.L184
	addi 0,3,-3344
	cmplwi 7,0,5
	bgt- 7,.L183
	b .L186
.L188:
	cmplwi 7,3,32878
	bgt- 7,.L191
	cmplwi 7,3,32875
	bge- 7,.L184
	cmpwi 7,3,3382
	beq- 7,.L184
	cmplwi 7,3,3382
	bgt- 7,.L192
	cmpwi 7,3,3377
	beq- 7,.L184
	cmpwi 7,3,3379
.L198:
	bne+ 7,.L183
	b .L184
.L192:
	addi 0,3,-3384
	cmplwi 7,0,1
	b .L196
.L191:
	xoris 0,3,0xffff
	cmpwi 7,0,-31518
	beq 7,.L184
	cmplwi 7,3,34018
	bgt- 7,.L193
	addis 9,3,0xffff
	addi 9,9,32536
	cmplwi 7,9,1
.L196:
	bgt- 7,.L183
	b .L184
.L193:
	xoris 0,3,0xffff
	cmpwi 7,0,-31489
	bne 7,.L183
	.loc 1 978 0
	lis 9,.LC34@ha
	lfs 0,.LC34@l(9)
	stfs 0,0(4)
.L185:
	.loc 1 982 0
	mr 4,31
	bl _glGetMatrixf
.LVL112:
	b .L194
.LVL113:
.L186:
	.loc 1 998 0
	mr 4,31
	bl _glGetPixelTransferf
.LVL114:
	b .L194
.LVL115:
.L184:
.LBB162:
	.loc 1 1030 0
	addi 4,1,8
.LVL116:
	bl glGetIntegerv
.LVL117:
	.loc 1 1031 0
	lwz 0,8(1)
.LVL118:
	lis 9,.LC3@ha
	xoris 0,0,0x8000
	lfs 13,.LC3@l(9)
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lfd 0,24(1)
	fsub 0,0,13
	frsp 0,0
	stfs 0,0(31)
.LVL119:
.L183:
.LBE162:
.LBB163:
.LBB164:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,1034
.L199:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.L194:
.LBE164:
.LBE163:
	.loc 1 1037 0
	lwz 0,44(1)
	lwz 31,36(1)
.LVL120:
	addi 1,1,40
	mtlr 0
	blr
.LFE115:
	.size	glGetFloatv, .-glGetFloatv
	.align 2
	.globl glDepthFunc
	.type	glDepthFunc, @function
glDepthFunc:
.LFB114:
	.loc 1 943 0
.LVL121:
	.loc 1 944 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L201
.LBB169:
.LBB170:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,944
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L216
.L201:
.LBE170:
.LBE169:
	.loc 1 946 0
	addi 0,3,-512
	cmplwi 7,0,7
	bgt- 7,.L204
	lis 9,.L213@ha
	slwi 0,0,2
	la 9,.L213@l(9)
	lis 11,depthfunction@ha
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L213:
	.long .L205-.L213
	.long .L206-.L213
	.long .L207-.L213
	.long .L208-.L213
	.long .L209-.L213
	.long .L210-.L213
	.long .L211-.L213
	.long .L212-.L213
	.section	".text"
.L205:
	.loc 1 948 0
	li 0,0
	b .L215
.L206:
	.loc 1 949 0
	li 0,1
	b .L215
.L207:
	.loc 1 950 0
	li 0,2
	b .L215
.L208:
	.loc 1 951 0
	li 0,3
	b .L215
.L209:
	.loc 1 952 0
	li 0,4
	b .L215
.L210:
	.loc 1 953 0
	li 0,5
	b .L215
.L211:
	.loc 1 954 0
	li 0,6
	b .L215
.L212:
	.loc 1 955 0
	li 0,7
.L215:
	stw 0,depthfunction@l(11)
	blr
.L204:
.LBB171:
.LBB172:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,957
.L216:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE172:
.LBE171:
.LFE114:
	.size	glDepthFunc, .-glDepthFunc
	.align 2
	.globl glDepthMask
	.type	glDepthMask, @function
glDepthMask:
.LFB110:
	.loc 1 740 0
.LVL122:
	.loc 1 741 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L218
.LBB177:
.LBB178:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,741
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L225
.L218:
.LBE178:
.LBE177:
	.loc 1 743 0
	cmpwi 7,3,0
	beq- 7,.L222
	cmpwi 7,3,1
	bne+ 7,.L221
.L222:
	.loc 1 746 0
	lis 9,depthupdate@ha
	stb 3,depthupdate@l(9)
	blr
.L221:
.LBB179:
.LBB180:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,748
.L225:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE180:
.LBE179:
.LFE110:
	.size	glDepthMask, .-glDepthMask
	.align 2
	.globl glFogfv
	.type	glFogfv, @function
glFogfv:
.LFB109:
	.loc 1 722 0
.LVL123:
	stwu 1,-16(1)
.LCFI29:
	.loc 1 723 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L227
.LBB183:
.LBB184:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,723
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L232
.L227:
.LBE184:
.LBE183:
	.loc 1 725 0
	cmpwi 7,3,2918
	lfs 1,0(4)
	bne+ 7,.L230
	.loc 1 728 0
	lis 9,.LC7@ha
	addi 10,1,8
	lfs 13,.LC7@l(9)
	lis 9,fog_color@ha
	la 11,fog_color@l(9)
	fmuls 0,1,13
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 0,8(1)
	stb 0,fog_color@l(9)
	.loc 1 729 0
	lfs 0,4(4)
	fmuls 0,0,13
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 0,8(1)
	stb 0,1(11)
	.loc 1 730 0
	lfs 0,8(4)
	fmuls 0,0,13
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 0,8(1)
	stb 0,2(11)
	.loc 1 731 0
	lfs 0,12(4)
	fmuls 0,0,13
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 0,8(1)
	stb 0,3(11)
	b .L232
.L230:
	.loc 1 737 0
	addi 1,1,16
	.loc 1 734 0
	b glFogf
.LVL124:
.LVL125:
.L232:
	.loc 1 737 0
	addi 1,1,16
	blr
.LFE109:
	.size	glFogfv, .-glFogfv
	.align 2
	.globl glFlush
	.type	glFlush, @function
glFlush:
.LFB104:
	.loc 1 632 0
	mflr 0
.LCFI30:
	stwu 1,-8(1)
.LCFI31:
	.loc 1 634 0
	lis 9,cur_state@ha
	.loc 1 632 0
	stw 0,12(1)
.LCFI32:
	.loc 1 634 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L234
.LBB187:
.LBB188:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,634
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L237
.L234:
.LBE188:
.LBE187:
	.loc 1 636 0
	bl GX_DrawDone
.L237:
	.loc 1 637 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE104:
	.size	glFlush, .-glFlush
	.align 2
	.globl glClearDepth
	.type	glClearDepth, @function
glClearDepth:
.LFB103:
	.loc 1 614 0
.LVL126:
	.loc 1 616 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L239
.LBB191:
.LBB192:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,616
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.L239:
.LBE192:
.LBE191:
	.loc 1 618 0
	lis 9,.LC4@ha
	lfs 13,.LC4@l(9)
	fmr 0,13
	fcmpu 7,1,0
	bng- 7,.L242
	fmr 1,13
.LVL127:
	b .L245
.L242:
	.loc 1 622 0
	lis 9,.LC39@ha
	lfd 0,.LC39@l(9)
	fcmpu 7,1,0
	bnl+ 7,.L245
	fmr 1,0
.LVL128:
.L245:
	.loc 1 627 0
	frsp 0,1
	lis 9,_cleardepth@ha
	stfs 0,_cleardepth@l(9)
	blr
.LFE103:
	.size	glClearDepth, .-glClearDepth
	.align 2
	.globl glClearColor
	.type	glClearColor, @function
glClearColor:
.LFB102:
	.loc 1 604 0
.LVL129:
	stwu 1,-16(1)
.LCFI33:
	.loc 1 606 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 7,0,1
	beq- 0,.L250
.LBB195:
.LBB196:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,606
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L253
.L250:
.LBE196:
.LBE195:
	.loc 1 608 0
	lis 9,.LC7@ha
	lis 8,_clearcolor@ha
	lfs 0,.LC7@l(9)
	addi 9,1,8
	.loc 1 611 0
	addi 7,1,8
	.loc 1 608 0
	fmuls 13,1,0
	.loc 1 609 0
	fmuls 12,2,0
	.loc 1 610 0
	fmuls 11,3,0
	.loc 1 608 0
	fctiwz 13,13
	.loc 1 609 0
	fctiwz 12,12
	.loc 1 611 0
	fmuls 0,4,0
	.loc 1 608 0
	stfiwx 13,0,9
	.loc 1 610 0
	fctiwz 13,11
	.loc 1 608 0
	lwz 10,8(1)
	.loc 1 611 0
	fctiwz 0,0
	.loc 1 609 0
	stfiwx 12,0,9
	lwz 0,8(1)
	.loc 1 610 0
	stfiwx 13,0,9
	.loc 1 608 0
	la 9,_clearcolor@l(8)
	.loc 1 610 0
	lwz 11,8(1)
	.loc 1 611 0
	stfiwx 0,0,7
	.loc 1 608 0
	stb 10,_clearcolor@l(8)
	.loc 1 609 0
	stb 0,1(9)
	.loc 1 611 0
	lwz 0,8(1)
	.loc 1 610 0
	stb 11,2(9)
	.loc 1 611 0
	stb 0,3(9)
.L253:
	.loc 1 612 0
	addi 1,1,16
	blr
.LFE102:
	.size	glClearColor, .-glClearColor
	.align 2
	.globl glClear
	.type	glClear, @function
glClear:
.LFB101:
	.loc 1 546 0
.LVL130:
	mflr 0
.LCFI34:
	stwu 1,-32(1)
.LCFI35:
	.loc 1 547 0
	lis 9,cur_state@ha
	.loc 1 546 0
	stw 31,28(1)
.LCFI36:
	stw 0,36(1)
.LCFI37:
	.loc 1 547 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L255
.LBB199:
.LBB200:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,547
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L265
.L255:
.LBE200:
.LBE199:
	.loc 1 562 0
	andi. 0,3,16384
	rlwinm 9,3,24,31,31
	cmpwi 7,9,0
	beq- 0,.L258
	beq- 7,.L260
	.loc 1 571 0
	lis 9,_cleardepth@ha
	lfs 0,_cleardepth@l(9)
	lis 9,.LC41@ha
	lfs 13,.LC41@l(9)
	lis 9,.LC11@ha
	fmuls 0,0,13
	lfs 13,.LC11@l(9)
	lis 9,_clearcolor@ha
	lwz 0,_clearcolor@l(9)
	fcmpu 7,0,13
	stw 0,8(1)
	cror 30,29,30
	beq- 7,.L262
	fctiwz 0,0
	addi 9,1,12
	stfiwx 0,0,9
	lwz 4,12(1)
	b .L263
.L262:
	fsub 0,0,13
	addi 9,1,16
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,16(1)
	addis 4,4,0x8000
.L263:
	addi 3,1,8
.LVL131:
	bl GX_SetCopyClear
	.loc 1 572 0
	bl getBackFramebuffer
	li 4,1
	bl GX_CopyDisp
	.loc 1 573 0
	bl GX_DrawDone
	b .L265
.LVL132:
.L260:
	.loc 1 580 0
	li 4,0
	li 5,0
	li 3,0
.LVL133:
	bl GX_SetZMode
	.loc 1 581 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 582 0
	li 3,1
	b .L266
.LVL134:
.L258:
	.loc 1 586 0
	beq- 7,.L265
	.loc 1 593 0
	li 4,7
	li 5,1
	li 3,1
.LVL135:
	bl GX_SetZMode
	.loc 1 594 0
	li 3,0
	bl GX_SetColorUpdate
	.loc 1 595 0
	li 3,0
.L266:
	bl GX_SetAlphaUpdate
	.loc 1 599 0
	lwz 0,36(1)
	lwz 31,28(1)
	addi 1,1,32
	mtlr 0
	.loc 1 597 0
	b draw_axis_align_blanker_quad
.LVL136:
.L265:
	.loc 1 599 0
	lwz 0,36(1)
	lwz 31,28(1)
	addi 1,1,32
	mtlr 0
	blr
.LFE101:
	.size	glClear, .-glClear
	.align 2
	.globl glGetMaterialfv
	.type	glGetMaterialfv, @function
glGetMaterialfv:
.LFB99:
	.loc 1 439 0
.LVL137:
	.loc 1 440 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L268
.LBB205:
.LBB206:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,440
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L280
.L268:
.LBE206:
.LBE205:
	.loc 1 444 0
	cmpwi 7,4,4610
	beq- 7,.L274
	cmplwi 7,4,4610
	bgt- 7,.L277
	cmpwi 7,4,4608
	beq- 7,.L272
	cmpwi 7,4,4609
	bne+ 7,.L271
	b .L273
.L277:
	cmpwi 7,4,5632
	beq- 7,.L275
	cmpwi 7,4,5633
	bne+ 7,.L271
	b .L276
.L275:
	.loc 1 448 0
	lis 11,curmat@ha
	la 9,curmat@l(11)
	lfs 11,curmat@l(11)
	lfs 0,4(9)
	lfs 12,12(9)
	lfs 13,8(9)
	b .L278
.L273:
	.loc 1 452 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	lfs 11,32(9)
	lfs 12,44(9)
	lfs 13,40(9)
	lfs 0,36(9)
	b .L278
.L272:
	.loc 1 456 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	lfs 11,16(9)
	lfs 12,28(9)
	lfs 13,24(9)
	lfs 0,20(9)
	b .L278
.L274:
	.loc 1 460 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	lfs 11,48(9)
	lfs 12,60(9)
	lfs 13,56(9)
	lfs 0,52(9)
	b .L278
.L276:
	.loc 1 463 0
	lis 9,curmat+64@ha
	lfs 0,curmat+64@l(9)
	stfs 0,0(5)
	blr
.L271:
.LBB207:
.LBB208:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,466
.L280:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.L278:
.LBE208:
.LBE207:
	.loc 1 475 0
	stfs 12,12(5)
	.loc 1 472 0
	stfs 11,0(5)
	.loc 1 473 0
	stfs 0,4(5)
	.loc 1 474 0
	stfs 13,8(5)
	blr
.LFE99:
	.size	glGetMaterialfv, .-glGetMaterialfv
	.align 2
	.globl glMaterialf
	.type	glMaterialf, @function
glMaterialf:
.LFB97:
	.loc 1 385 0
.LVL138:
	.loc 1 386 0
	cmpwi 7,4,5633
	bne+ 7,.L282
	.loc 1 389 0
	lis 9,curmat+64@ha
	stfs 1,curmat+64@l(9)
	blr
.L282:
.LBB211:
.LBB212:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,391
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE212:
.LBE211:
.LFE97:
	.size	glMaterialf, .-glMaterialf
	.align 2
	.globl glLightModelfv
	.type	glLightModelfv, @function
glLightModelfv:
.LFB93:
	.loc 1 262 0
.LVL139:
	.loc 1 263 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L287
.LBB217:
.LBB218:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,263
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L293
.L287:
.LBE218:
.LBE217:
	.loc 1 265 0
	cmpwi 7,3,2899
	bne+ 7,.L290
	.loc 1 268 0
	lfs 0,0(4)
	lis 9,globAmbient@ha
	stfs 0,globAmbient@l(9)
	la 9,globAmbient@l(9)
	.loc 1 269 0
	lfs 0,4(4)
	stfs 0,4(9)
	.loc 1 270 0
	lfs 0,8(4)
	stfs 0,8(9)
	.loc 1 271 0
	lfs 0,12(4)
	stfs 0,12(9)
	blr
.L290:
.LBB219:
.LBB220:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,274
.L293:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE220:
.LBE219:
.LFE93:
	.size	glLightModelfv, .-glLightModelfv
	.align 2
	.globl glViewport
	.type	glViewport, @function
glViewport:
.LFB79:
	.loc 1 149 0
.LVL140:
	.loc 1 150 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L295
.LBB223:
.LBB224:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,150
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.L295:
	.loc 1 151 0
	lis 11,viewPort@ha
	la 9,viewPort@l(11)
	stw 3,viewPort@l(11)
	stw 4,4(9)
	stw 6,12(9)
	stw 5,8(9)
	blr
.LBE224:
.LBE223:
.LFE79:
	.size	glViewport, .-glViewport
	.align 2
	.globl glDepthRange
	.type	glDepthRange, @function
glDepthRange:
.LFB78:
	.loc 1 138 0
.LVL141:
	.loc 1 139 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L300
.LBB227:
.LBB228:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,139
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.L300:
.LBE228:
.LBE227:
	.loc 1 141 0
	frsp 0,1
	lis 9,normNear@ha
	.loc 1 142 0
	frsp 13,2
	.loc 1 141 0
	stfs 0,normNear@l(9)
	.loc 1 142 0
	lis 9,normFar@ha
	stfs 13,normFar@l(9)
	blr
.LFE78:
	.size	glDepthRange, .-glDepthRange
	.align 2
	.globl glFrontFace
	.type	glFrontFace, @function
glFrontFace:
.LFB77:
	.loc 1 118 0
.LVL142:
	.loc 1 120 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L305
.LBB233:
.LBB234:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,120
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L311
.L305:
.LBE234:
.LBE233:
	.loc 1 122 0
	addi 0,3,-2304
	cmplwi 7,0,1
	bgt- 7,.L308
	.loc 1 126 0
	lis 9,gxwinding@ha
	stw 3,gxwinding@l(9)
	blr
.L308:
.LBB235:
.LBB236:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,128
.L311:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE236:
.LBE235:
.LFE77:
	.size	glFrontFace, .-glFrontFace
	.align 2
	.globl glCullFace
	.type	glCullFace, @function
glCullFace:
.LFB76:
	.loc 1 98 0
.LVL143:
	.loc 1 99 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L313
.LBB241:
.LBB242:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,99
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L322
.L313:
.LBE242:
.LBE241:
	.loc 1 101 0
	cmpwi 7,3,1029
	beq- 7,.L318
	cmpwi 7,3,1032
	beq- 7,.L319
	cmpwi 7,3,1028
	.loc 1 104 0
	li 0,1
	.loc 1 101 0
	beq- 7,.L321
	b .L316
.L318:
	.loc 1 107 0
	li 0,2
	b .L321
.L319:
	.loc 1 110 0
	li 0,3
.L321:
	lis 9,cull_mode@ha
	stb 0,cull_mode@l(9)
	blr
.L316:
.LBB243:
.LBB244:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,113
.L322:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE244:
.LBE243:
.LFE76:
	.size	glCullFace, .-glCullFace
	.align 2
	.globl glScissor
	.type	glScissor, @function
glScissor:
.LFB75:
	.loc 1 82 0
.LVL144:
	.loc 1 83 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L324
.LBB249:
.LBB250:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,83
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L331
.L324:
.LBE250:
.LBE249:
	.loc 1 85 0
	cmpwi 7,5,0
	blt- 7,.L327
	cmpwi 7,6,0
	bge+ 7,.L329
.L327:
.LBB251:
.LBB252:
	.loc 1 1195 0
	li 0,1281
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,87
.L331:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.L329:
	.loc 1 91 0
	lis 11,scissorInfo@ha
	la 9,scissorInfo@l(11)
	stw 3,scissorInfo@l(11)
	stw 4,4(9)
	stw 6,12(9)
	stw 5,8(9)
	blr
.LBE252:
.LBE251:
.LFE75:
	.size	glScissor, .-glScissor
	.align 2
	.globl glBlendFunc
	.type	glBlendFunc, @function
glBlendFunc:
.LFB74:
	.loc 1 50 0
.LVL145:
	.loc 1 51 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 0,0,1
	beq- 0,.L333
.LBB259:
.LBB260:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,51
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L360
.L333:
.LBE260:
.LBE259:
	.loc 1 53 0
	cmpwi 7,3,771
	beq- 7,.L340
	cmplwi 7,3,771
	bgt- 7,.L345
	cmpwi 7,3,1
	beq- 7,.L338
	cmplwi 7,3,1
	blt- 7,.L358
	cmpwi 7,3,770
	bne+ 7,.L336
	b .L339
.L345:
	cmpwi 7,3,773
	beq- 7,.L342
	cmplwi 7,3,773
	.loc 1 61 0
	li 0,6
	.loc 1 53 0
	blt- 7,.L358
	cmpwi 7,3,774
	beq- 7,.L343
	cmpwi 7,3,775
	bne+ 7,.L336
	b .L344
.L338:
	.loc 1 56 0
	lis 9,blend_src@ha
	stb 3,blend_src@l(9)
.LVL146:
	b .L346
.LVL147:
.L343:
	.loc 1 57 0
	li 0,2
.L358:
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
	b .L346
.L344:
	.loc 1 58 0
	li 0,3
	b .L358
.L339:
	.loc 1 59 0
	li 0,4
	b .L358
.L340:
	.loc 1 60 0
	li 0,5
	b .L358
.L342:
	.loc 1 62 0
	li 0,7
	b .L358
.L336:
.LBB261:
.LBB262:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,64
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.LVL148:
.L346:
.LBE262:
.LBE261:
	.loc 1 67 0
	cmpwi 7,4,769
	beq- 7,.L351
	cmplwi 7,4,769
	bgt- 7,.L356
	cmpwi 7,4,1
	beq- 7,.L349
	cmplwi 7,4,1
	.loc 1 69 0
	li 0,0
	.loc 1 67 0
	blt- 7,.L359
	cmpwi 7,4,768
	bne+ 7,.L347
	b .L350
.L356:
	cmpwi 7,4,771
	beq- 7,.L353
	cmplwi 7,4,771
	.loc 1 73 0
	li 0,4
	.loc 1 67 0
	blt- 7,.L359
	cmpwi 7,4,772
	beq- 7,.L354
	cmpwi 7,4,773
	bne+ 7,.L347
	b .L355
.L349:
	.loc 1 70 0
	lis 9,blend_dst@ha
	stb 4,blend_dst@l(9)
.LVL149:
	blr
.LVL150:
.L350:
	.loc 1 71 0
	li 0,2
	b .L359
.L351:
	.loc 1 72 0
	li 0,3
	b .L359
.L353:
	.loc 1 74 0
	li 0,5
	b .L359
.L354:
	.loc 1 75 0
	li 0,6
	b .L359
.L355:
	.loc 1 76 0
	li 0,7
.L359:
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	blr
.L347:
.LBB263:
.LBB264:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,77
.L360:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE264:
.LBE263:
.LFE74:
	.size	glBlendFunc, .-glBlendFunc
	.align 2
	.globl glColorMaterial
	.type	glColorMaterial, @function
glColorMaterial:
.LFB73:
	.loc 1 35 0
.LVL151:
	.loc 1 36 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L362
.LBB269:
.LBB270:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,36
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L369
.L362:
.LBE270:
.LBE269:
	.loc 1 38 0
	cmpwi 7,4,5632
	beq- 7,.L366
	cmplwi 7,4,5632
	bgt- 7,.L367
	addi 0,4,-4608
	cmplwi 7,0,2
	bgt- 7,.L365
	b .L366
.L367:
	cmpwi 7,4,5634
	bne+ 7,.L365
.L366:
	.loc 1 44 0
	lis 9,copy_material@ha
	stw 4,copy_material@l(9)
	blr
.L365:
.LBB271:
.LBB272:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,45
.L369:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE272:
.LBE271:
.LFE73:
	.size	glColorMaterial, .-glColorMaterial
	.align 2
	.globl glClipPlane
	.type	glClipPlane, @function
glClipPlane:
.LFB72:
	.loc 1 30 0
.LVL152:
	.loc 1 30 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LBB275:
.LBB276:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,30
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE276:
.LBE275:
.LFE72:
	.size	glClipPlane, .-glClipPlane
	.align 2
	.globl glShadeModel
	.type	glShadeModel, @function
glShadeModel:
.LFB71:
	.loc 1 28 0
.LVL153:
	.loc 1 28 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LBB279:
.LBB280:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,28
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE280:
.LBE279:
.LFE71:
	.size	glShadeModel, .-glShadeModel
	.align 2
	.globl glPolygonMode
	.type	glPolygonMode, @function
glPolygonMode:
.LFB70:
	.loc 1 24 0
.LVL154:
	.loc 1 24 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LBB283:
.LBB284:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,24
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE284:
.LBE283:
.LFE70:
	.size	glPolygonMode, .-glPolygonMode
	.align 2
	.globl glLightModeli
	.type	glLightModeli, @function
glLightModeli:
.LFB68:
	.loc 1 18 0
.LVL155:
	.loc 1 18 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LBB287:
.LBB288:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,18
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE288:
.LBE287:
.LFE68:
	.size	glLightModeli, .-glLightModeli
	.align 2
	.globl glPolygonOffset
	.type	glPolygonOffset, @function
glPolygonOffset:
.LFB67:
	.loc 1 16 0
.LVL156:
	.loc 1 16 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LBB291:
.LBB292:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,16
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE292:
.LBE291:
.LFE67:
	.size	glPolygonOffset, .-glPolygonOffset
	.align 2
	.globl glDisable
	.type	glDisable, @function
glDisable:
.LFB113:
	.loc 1 875 0
.LVL157:
	mflr 0
.LCFI38:
	stwu 1,-8(1)
.LCFI39:
	.loc 1 876 0
	lis 9,cur_state@ha
	.loc 1 875 0
	stw 0,12(1)
.LCFI40:
	.loc 1 876 0
	lwz 0,cur_state@l(9)
	andi. 0,0,1
	beq- 0,.L391
.LBB302:
.LBB303:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,876
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L424
.L391:
.LBE303:
.LBE302:
	.loc 1 878 0
	cmpwi 7,3,3058
	beq- 7,.L422
	cmplwi 7,3,3058
	bgt- 7,.L404
	cmpwi 7,3,2903
	beq- 7,.L397
	cmplwi 7,3,2903
	bgt- 7,.L405
	cmplwi 7,3,2882
	bgt- 7,.L406
	cmplwi 7,3,2881
	bge- 7,.L422
	cmpwi 7,3,2848
	beq- 7,.L422
	cmpwi 7,3,2852
	beq- 7,.L422
	cmpwi 7,3,2832
	b .L428
.L406:
	cmpwi 7,3,2884
	beq- 7,.L395
	cmpwi 7,3,2896
	bne+ 7,.L394
	b .L396
.L405:
	cmpwi 7,3,2977
	beq- 7,.L422
	cmplwi 7,3,2977
	bgt- 7,.L407
	cmpwi 7,3,2929
	beq- 7,.L399
	cmpwi 7,3,2960
	beq- 7,.L422
	cmpwi 7,3,2912
	bne+ 7,.L394
	b .L398
.L407:
	cmpwi 7,3,3024
	beq- 7,.L422
	cmpwi 7,3,3042
	beq- 7,.L400
	cmpwi 7,3,3008
	b .L428
.L404:
	cmpwi 7,3,3553
	beq- 7,.L402
	cmplwi 7,3,3553
	bgt- 7,.L408
	cmpwi 7,3,3456
	beq- 7,.L422
	cmplwi 7,3,3456
	bgt- 7,.L409
	cmpwi 7,3,3089
	beq- 7,.L401
	cmplwi 7,3,3089
	blt- 7,.L394
	addi 0,3,-3168
	cmplwi 7,0,3
	b .L423
.L409:
	cmpwi 7,3,3472
	beq- 7,.L422
	cmplwi 7,3,3472
	blt- 7,.L394
	addi 0,3,-3508
	cmplwi 7,0,4
.L423:
	bgt- 7,.L394
	b .L422
.L408:
	cmplwi 7,3,12293
	bgt- 7,.L410
	cmplwi 7,3,12288
	bge- 7,.L422
	addi 0,3,-10753
	cmplwi 7,0,1
	b .L423
.L410:
	cmplwi 7,3,16384
	blt- 7,.L394
	cmplwi 7,3,16391
	ble- 7,.L403
	li 0,0
	ori 0,0,32823
	cmpw 7,3,0
.L428:
	bne+ 7,.L394
	b .L422
.L400:
	.loc 1 880 0
	lis 9,blend_type@ha
	stb 0,blend_type@l(9)
	b .L422
.L399:
	.loc 1 881 0
	lis 9,depthtestenabled@ha
	stb 0,depthtestenabled@l(9)
	b .L422
.L396:
	.loc 1 882 0
	lis 9,lighting@ha
	stb 0,lighting@l(9)
	b .L422
.L402:
	.loc 1 883 0
	li 3,0
.LVL158:
	bl _glSetEnableTex
	b .L422
.LVL159:
.L403:
.LBB304:
.LBB305:
.LBB306:
	.loc 1 282 0
	addi 0,3,-16384
	cmplwi 7,0,7
	bgt- 7,.L411
	lis 9,.L420@ha
	slwi 0,0,2
	la 9,.L420@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L420:
	.long .L412-.L420
	.long .L413-.L420
	.long .L414-.L420
	.long .L415-.L420
	.long .L416-.L420
	.long .L417-.L420
	.long .L418-.L420
	.long .L419-.L420
	.section	".text"
.L412:
	li 11,0
.LVL160:
	b .L421
.LVL161:
.L413:
	li 11,1
.LVL162:
	b .L421
.LVL163:
.L414:
	li 11,2
.LVL164:
	b .L421
.LVL165:
.L415:
	li 11,3
.LVL166:
	b .L421
.LVL167:
.L416:
	li 11,4
.LVL168:
	b .L421
.LVL169:
.L417:
	li 11,5
.LVL170:
	b .L421
.LVL171:
.L411:
.LBB307:
.LBB308:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,293
.L424:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L422
.L419:
	li 11,7
.LVL172:
.L421:
.LBE308:
.LBE307:
.LBE306:
.LBE305:
	.loc 1 896 0
	mulli 11,11,164
.LVL173:
	lis 9,lights@ha
	li 0,0
	la 9,lights@l(9)
	stbx 0,11,9
	b .L422
.L395:
.LBE304:
	.loc 1 899 0
	lis 9,gxcullfaceanabled@ha
	stb 0,gxcullfaceanabled@l(9)
	b .L422
.L398:
	.loc 1 900 0
	lis 9,fog_enable@ha
	stb 0,fog_enable@l(9)
	b .L422
.L397:
	.loc 1 901 0
	lis 9,copy_mat_enabled@ha
	stb 0,copy_mat_enabled@l(9)
	b .L422
.L401:
	.loc 1 902 0
	lis 9,scissor_test@ha
	stb 0,scissor_test@l(9)
	b .L422
.L394:
.LBB309:
.LBB310:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,936
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L424
.L418:
	.loc 1 1197 0
	li 11,6
.LVL174:
	b .L421
.LVL175:
.L422:
.LBE310:
.LBE309:
	.loc 1 939 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE113:
	.size	glDisable, .-glDisable
	.align 2
	.globl glIsEnabled
	.type	glIsEnabled, @function
glIsEnabled:
.LFB112:
	.loc 1 794 0
.LVL176:
	mflr 0
.LCFI41:
	stwu 1,-8(1)
.LCFI42:
	.loc 1 796 0
	lis 9,cur_state@ha
	.loc 1 794 0
	stw 0,12(1)
.LCFI43:
	.loc 1 796 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L430
.LBB322:
.LBB323:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 3,0
.LVL177:
	li 0,796
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L473
.LVL178:
.L430:
.LBE323:
.LBE322:
	.loc 1 798 0
	cmpwi 7,3,3089
	beq- 7,.L442
	cmplwi 7,3,3089
	bgt- 7,.L445
	cmpwi 7,3,2912
	beq- 7,.L438
	cmplwi 7,3,2912
	bgt- 7,.L446
	cmplwi 7,3,2882
	bgt- 7,.L447
	cmplwi 7,3,2881
	bge- 7,.L434
	cmpwi 7,3,2848
	beq- 7,.L434
	cmpwi 7,3,2852
	beq- 7,.L434
	cmpwi 7,3,2832
	b .L471
.L447:
	cmpwi 7,3,2896
	beq- 7,.L436
	cmpwi 7,3,2903
	beq- 7,.L437
	cmpwi 7,3,2884
	bne+ 7,.L433
	b .L435
.L446:
	cmpwi 7,3,3008
	beq- 7,.L434
	cmplwi 7,3,3008
	bgt- 7,.L448
	cmpwi 7,3,2960
	beq- 7,.L434
	cmpwi 7,3,2977
	beq- 7,.L434
	cmpwi 7,3,2929
	bne+ 7,.L433
	b .L439
.L448:
	cmpwi 7,3,3042
	beq- 7,.L440
	cmplwi 7,3,3042
	bgt- 7,.L449
	cmpwi 7,3,3024
	b .L471
.L449:
	cmpwi 7,3,3057
	beq- 7,.L441
	cmpwi 7,3,3058
	b .L471
.L445:
	cmplwi 7,3,10754
	bgt- 7,.L450
	cmplwi 7,3,10753
	bge- 7,.L434
	cmpwi 7,3,3472
	beq- 7,.L434
	cmplwi 7,3,3472
	bgt- 7,.L451
	cmplwi 7,3,3168
	blt- 7,.L433
	cmplwi 7,3,3171
	ble- 7,.L434
	cmpwi 7,3,3456
.L471:
	bne+ 7,.L433
	b .L434
.L451:
	cmplwi 7,3,3508
	blt- 7,.L433
	cmplwi 7,3,3512
	ble- 7,.L434
	addi 0,3,-3552
	cmplwi 7,0,1
	bgt- 7,.L433
	b .L441
.L450:
	cmplwi 7,3,16391
	bgt- 7,.L452
	cmplwi 7,3,16384
	bge- 7,.L443
	addi 0,3,-12288
	cmplwi 7,0,5
	bgt- 7,.L433
	b .L434
.L452:
	xoris 0,3,0xffff
	cmpwi 7,0,-32713
	beq 7,.L434
	cmplwi 7,3,32823
	blt- 7,.L433
	addis 9,3,0xffff
	addi 9,9,32652
	cmplwi 7,9,5
	bgt- 7,.L433
	b .L465
.L434:
	li 3,0
.LVL179:
	b .L432
.LVL180:
.L440:
	.loc 1 800 0
	lis 9,blend_type@ha
	lbz 0,blend_type@l(9)
	b .L472
.L437:
	.loc 1 801 0
	lis 9,copy_mat_enabled@ha
	lbz 0,copy_mat_enabled@l(9)
.L472:
	xori 3,0,1
.LVL181:
	cntlzw 3,3
	srwi 3,3,5
	b .L432
.LVL182:
.L435:
	.loc 1 802 0
	lis 9,gxcullfaceanabled@ha
	lbz 0,gxcullfaceanabled@l(9)
	b .L472
.L439:
	.loc 1 803 0
	lis 9,depthtestenabled@ha
	lbz 0,depthtestenabled@l(9)
	b .L472
.L438:
	.loc 1 804 0
	lis 9,fog_enable@ha
	lbz 0,fog_enable@l(9)
	b .L472
.L465:
	.loc 1 811 0
	bl _glIsArrayEnabled
.LVL183:
	b .L432
.LVL184:
.L441:
	.loc 1 815 0
	lis 9,cur_tex@ha
	lwz 3,cur_tex@l(9)
.LVL185:
	bl _glGetEnableTex
	b .L432
.LVL186:
.L443:
.LBB324:
.LBB325:
.LBB326:
	.loc 1 282 0
	addi 0,3,-16384
	cmplwi 7,0,7
	bgt- 7,.L453
	lis 9,.L462@ha
	slwi 0,0,2
	la 9,.L462@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L462:
	.long .L454-.L462
	.long .L455-.L462
	.long .L456-.L462
	.long .L457-.L462
	.long .L458-.L462
	.long .L459-.L462
	.long .L460-.L462
	.long .L461-.L462
	.section	".text"
.L454:
	li 0,0
.LVL187:
	b .L463
.LVL188:
.L455:
	li 0,1
.LVL189:
	b .L463
.LVL190:
.L456:
	li 0,2
.LVL191:
	b .L463
.LVL192:
.L457:
	li 0,3
.LVL193:
	b .L463
.LVL194:
.L458:
	li 0,4
.LVL195:
	b .L463
.LVL196:
.L459:
	li 0,5
.LVL197:
	b .L463
.LVL198:
.L453:
.LBE326:
.LBE325:
.LBB327:
.LBB328:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 3,0
.LVL199:
	li 0,828
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L473
.LVL200:
.L461:
	.loc 1 829 0
	li 0,7
.LVL201:
.L463:
.LBE328:
.LBE327:
	.loc 1 831 0
	mulli 0,0,164
.LVL202:
	lis 9,lights@ha
	la 9,lights@l(9)
	lbzx 0,9,0
	b .L472
.L436:
.LBE324:
	.loc 1 834 0
	lis 9,lighting@ha
	lbz 0,lighting@l(9)
	b .L472
.L442:
	.loc 1 835 0
	lis 9,scissor_test@ha
	lbz 3,scissor_test@l(9)
.LVL203:
	b .L432
.LVL204:
.L433:
.LBB329:
.LBB330:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 3,0
.LVL205:
	li 0,869
.L473:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L432
.LVL206:
.L460:
	li 0,6
.LVL207:
	b .L463
.LVL208:
.L432:
.LBE330:
.LBE329:
	.loc 1 872 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE112:
	.size	glIsEnabled, .-glIsEnabled
	.align 2
	.globl glLightf
	.type	glLightf, @function
glLightf:
.LFB95:
	.loc 1 300 0
.LVL209:
	.loc 1 301 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L475
.LBB339:
.LBB340:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,301
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L497
.L475:
.LBE340:
.LBE339:
.LBB341:
.LBB342:
	.loc 1 282 0
	addi 0,3,-16384
	cmplwi 7,0,7
	bgt- 7,.L478
	lis 9,.L487@ha
	slwi 0,0,2
	la 9,.L487@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L487:
	.long .L479-.L487
	.long .L480-.L487
	.long .L481-.L487
	.long .L482-.L487
	.long .L483-.L487
	.long .L484-.L487
	.long .L485-.L487
	.long .L486-.L487
	.section	".text"
.L479:
	li 11,0
.LVL210:
	b .L488
.LVL211:
.L480:
	li 11,1
.LVL212:
	b .L488
.LVL213:
.L481:
	li 11,2
.LVL214:
	b .L488
.LVL215:
.L482:
	li 11,3
.LVL216:
	b .L488
.LVL217:
.L483:
	li 11,4
.LVL218:
	b .L488
.LVL219:
.L484:
	li 11,5
.LVL220:
	b .L488
.LVL221:
.L478:
.LBB343:
.LBB344:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,293
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L497
.L486:
	.loc 1 1197 0
	li 11,7
.LVL222:
.L488:
.LBE344:
.LBE343:
.LBE342:
.LBE341:
	.loc 1 308 0
	addi 0,4,-4613
	cmplwi 7,0,4
	bgt- 7,.L489
	lis 9,.L495@ha
	slwi 0,0,2
	la 9,.L495@l(9)
	lwzx 0,9,0
	add 0,0,9
	lis 9,lights@ha
	mtctr 0
	la 0,lights@l(9)
	mulli 9,11,164
	bctr
	.section	.rodata
	.align 2
	.align 2
.L495:
	.long .L490-.L495
	.long .L491-.L495
	.long .L492-.L495
	.long .L493-.L495
	.long .L494-.L495
	.section	".text"
.L491:
	.loc 1 310 0
	add 9,9,0
	stfs 1,148(9)
	blr
.L490:
	.loc 1 311 0
	add 9,9,0
	stfs 1,144(9)
	blr
.L492:
	.loc 1 312 0
	add 9,9,0
	stfs 1,152(9)
	blr
.L493:
	.loc 1 313 0
	add 9,9,0
	stfs 1,156(9)
	blr
.L494:
	.loc 1 314 0
	add 9,9,0
	stfs 1,160(9)
	blr
.L489:
.LBB345:
.LBB346:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
.LVL223:
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,316
.L497:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.L485:
	li 11,6
.LVL224:
	b .L488
.LBE346:
.LBE345:
.LFE95:
	.size	glLightf, .-glLightf
	.align 2
	.globl glEnable
	.type	glEnable, @function
glEnable:
.LFB111:
	.loc 1 755 0
.LVL225:
	mflr 0
.LCFI44:
	stwu 1,-8(1)
.LCFI45:
	.loc 1 756 0
	lis 9,cur_state@ha
	.loc 1 755 0
	stw 0,12(1)
.LCFI46:
	.loc 1 756 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L499
.LBB358:
.LBB359:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,756
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L528
.L499:
.LBE359:
.LBE358:
	.loc 1 758 0
	cmpwi 7,3,2929
	beq- 7,.L507
	cmplwi 7,3,2929
	bgt- 7,.L512
	cmpwi 7,3,2896
	beq- 7,.L504
	cmplwi 7,3,2896
	bgt- 7,.L513
	cmpwi 7,3,2884
	bne+ 7,.L502
	b .L503
.L513:
	cmpwi 7,3,2903
	beq- 7,.L505
	cmpwi 7,3,2912
	bne+ 7,.L502
	b .L506
.L512:
	cmpwi 7,3,3553
	beq- 7,.L510
	cmplwi 7,3,3553
	bgt- 7,.L514
	cmpwi 7,3,3042
	beq- 7,.L508
	cmpwi 7,3,3089
	bne+ 7,.L502
	b .L509
.L514:
	addi 0,3,-16384
	cmplwi 7,0,7
	bgt- 7,.L502
	b .L527
.L508:
	.loc 1 760 0
	li 0,1
	lis 9,blend_type@ha
	stb 0,blend_type@l(9)
	b .L526
.L507:
	.loc 1 761 0
	li 0,1
	lis 9,depthtestenabled@ha
	stb 0,depthtestenabled@l(9)
	b .L526
.L504:
	.loc 1 762 0
	li 0,1
	lis 9,lighting@ha
	stb 0,lighting@l(9)
	b .L526
.L510:
	.loc 1 763 0
	li 3,1
.LVL226:
	bl _glSetEnableTex
	b .L526
.LVL227:
.L527:
.LBB360:
.LBB361:
.LBB362:
	.loc 1 282 0
	addi 0,3,-16384
	cmplwi 7,0,7
	bgt- 7,.L515
	lis 9,.L524@ha
	slwi 0,0,2
	la 9,.L524@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L524:
	.long .L516-.L524
	.long .L517-.L524
	.long .L518-.L524
	.long .L519-.L524
	.long .L520-.L524
	.long .L521-.L524
	.long .L522-.L524
	.long .L523-.L524
	.section	".text"
.L516:
	li 11,0
.LVL228:
	b .L525
.LVL229:
.L517:
	li 11,1
.LVL230:
	b .L525
.LVL231:
.L518:
	li 11,2
.LVL232:
	b .L525
.LVL233:
.L519:
	li 11,3
.LVL234:
	b .L525
.LVL235:
.L520:
	li 11,4
.LVL236:
	b .L525
.LVL237:
.L521:
	li 11,5
.LVL238:
	b .L525
.LVL239:
.L515:
.LBE362:
.LBE361:
.LBB363:
.LBB364:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,776
.L528:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L526
.L523:
	li 11,7
.LVL240:
.L525:
.LBE364:
.LBE363:
	.loc 1 779 0
	mulli 11,11,164
.LVL241:
	lis 9,lights@ha
	li 0,1
	la 9,lights@l(9)
	stbx 0,11,9
	b .L526
.L503:
.LBE360:
	.loc 1 782 0
	li 0,1
	lis 9,gxcullfaceanabled@ha
	stb 0,gxcullfaceanabled@l(9)
	b .L526
.L506:
	.loc 1 783 0
	li 0,1
	lis 9,fog_enable@ha
	stb 0,fog_enable@l(9)
	b .L526
.L505:
	.loc 1 784 0
	li 0,1
	lis 9,copy_mat_enabled@ha
	stb 0,copy_mat_enabled@l(9)
	b .L526
.L509:
	.loc 1 785 0
	li 0,1
	lis 9,scissor_test@ha
	stb 0,scissor_test@l(9)
	b .L526
.L502:
.LBB365:
.LBB366:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,788
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L528
.L522:
	.loc 1 1197 0
	li 11,6
.LVL242:
	b .L525
.LVL243:
.L526:
.LBE366:
.LBE365:
	.loc 1 791 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE111:
	.size	glEnable, .-glEnable
	.align 2
	.globl glLightfv
	.type	glLightfv, @function
glLightfv:
.LFB96:
	.loc 1 321 0
.LVL244:
	mflr 0
.LCFI47:
	stwu 1,-88(1)
.LCFI48:
	.loc 1 322 0
	lis 9,cur_state@ha
	.loc 1 321 0
	mr 11,4
	stmw 28,72(1)
.LCFI49:
	mr 31,5
	stw 0,92(1)
.LCFI50:
	.loc 1 322 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L530
.LVL245:
.LBB376:
.LBB377:
	.loc 1 1195 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
.LVL246:
	.loc 1 1197 0
	li 0,322
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L552
.LVL247:
.L530:
.LBE377:
.LBE376:
.LBB378:
.LBB379:
	.loc 1 282 0
	addi 0,3,-16384
	cmplwi 7,0,7
	bgt- 7,.L533
	lis 9,.L542@ha
	slwi 0,0,2
	la 9,.L542@l(9)
	lwzx 0,9,0
	add 0,0,9
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L542:
	.long .L534-.L542
	.long .L535-.L542
	.long .L536-.L542
	.long .L537-.L542
	.long .L538-.L542
	.long .L539-.L542
	.long .L540-.L542
	.long .L541-.L542
	.section	".text"
.L534:
	li 4,0
.LVL248:
	b .L543
.LVL249:
.L535:
	li 4,1
.LVL250:
	b .L543
.LVL251:
.L536:
	li 4,2
.LVL252:
	b .L543
.LVL253:
.L537:
	li 4,3
.LVL254:
	b .L543
.LVL255:
.L538:
	li 4,4
.LVL256:
	b .L543
.LVL257:
.L539:
	li 4,5
.LVL258:
	b .L543
.LVL259:
.L533:
.LBB380:
.LBB381:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
.LVL260:
	stw 9,glErrFile@l(11)
	.loc 1 1197 0
	li 0,293
.LVL261:
.L552:
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L551
.LVL262:
.L541:
	li 4,7
.LVL263:
.L543:
.LBE381:
.LBE380:
.LBE379:
.LBE378:
	.loc 1 331 0
	addi 0,11,-4608
	.loc 1 329 0
	lis 9,.LANCHOR0@ha
	.loc 1 331 0
	cmplwi 7,0,4
	.loc 1 329 0
	la 9,.LANCHOR0@l(9)
	addi 11,1,8
.LVL264:
	lswi 5,9,12
	stswi 5,11,12
	.loc 1 331 0
	bgt- 7,.L544
	lis 9,.L550@ha
	slwi 0,0,2
	la 9,.L550@l(9)
	mulli 30,4,164
	lwzx 0,9,0
	lfs 12,0(31)
	add 0,0,9
	lis 9,lights@ha
	mtctr 0
	la 28,lights@l(9)
	bctr
	.section	.rodata
	.align 2
	.align 2
.L550:
	.long .L545-.L550
	.long .L546-.L550
	.long .L547-.L550
	.long .L548-.L550
	.long .L549-.L550
	.section	".text"
.L548:
	.loc 1 336 0
	lfs 0,4(31)
	.loc 1 340 0
	lis 3,model_stack@ha
.LVL265:
	.loc 1 337 0
	lfs 13,8(31)
	.loc 1 340 0
	la 3,model_stack@l(3)
	.loc 1 336 0
	stfs 0,12(1)
	.loc 1 335 0
	stfs 12,8(1)
	.loc 1 337 0
	stfs 13,16(1)
	.loc 1 340 0
	bl TopMtx
.LVL266:
	add 5,30,28
	addi 4,1,8
	addi 5,5,68
	bl ps_guVecMultiply
	.loc 1 342 0
	lfs 0,12(31)
	add 9,30,28
	stfs 0,80(9)
	b .L551
.LVL267:
.L546:
	.loc 1 346 0
	add 9,30,28
	stfs 12,112(9)
	.loc 1 347 0
	lfs 0,4(31)
	stfs 0,116(9)
	.loc 1 348 0
	lfs 0,8(31)
	stfs 0,120(9)
	.loc 1 349 0
	lfs 0,12(31)
	stfs 0,124(9)
	b .L551
.L545:
	.loc 1 352 0
	add 9,30,28
	stfs 12,96(9)
	.loc 1 353 0
	lfs 0,4(31)
	stfs 0,100(9)
	.loc 1 354 0
	lfs 0,8(31)
	stfs 0,104(9)
	.loc 1 355 0
	lfs 0,12(31)
	stfs 0,108(9)
	b .L551
.L547:
	.loc 1 358 0
	add 9,30,28
	stfs 12,128(9)
	.loc 1 359 0
	lfs 0,4(31)
	stfs 0,132(9)
	.loc 1 360 0
	lfs 0,8(31)
	stfs 0,136(9)
	.loc 1 361 0
	lfs 0,12(31)
	stfs 0,140(9)
	b .L551
.L549:
.LBB382:
	.loc 1 365 0
	add 9,30,28
	.loc 1 372 0
	lis 3,model_stack@ha
.LVL268:
	.loc 1 365 0
	stfs 12,84(9)
	.loc 1 372 0
	addi 29,1,20
	la 3,model_stack@l(3)
	.loc 1 366 0
	lfs 0,4(31)
	stfs 0,88(9)
	.loc 1 367 0
	lfs 0,8(31)
	stfs 0,92(9)
	.loc 1 372 0
	bl TopMtx
.LVL269:
	mr 4,29
	bl ps_guMtxTranspose
	.loc 1 374 0
	add 4,30,28
	addi 4,4,84
	mr 3,29
	mr 5,4
	bl ps_guVecMultiply
	b .L551
.LVL270:
.L544:
.LBB383:
.LBB384:
	.loc 1 1195 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	lis 11,glErrFile@ha
	.loc 1 1197 0
	li 0,377
	.loc 1 1196 0
	stw 9,glErrFile@l(11)
	b .L552
.LVL271:
.L540:
	.loc 1 1197 0
	li 4,6
.LVL272:
	b .L543
.LVL273:
.L551:
.LBE384:
.LBE383:
.LBE382:
	.loc 1 381 0
	lwz 0,92(1)
	lmw 28,72(1)
.LVL274:
	addi 1,1,88
	mtlr 0
	blr
.LFE96:
	.size	glLightfv, .-glLightfv
	.align 2
	.globl glNormal3fv
	.type	glNormal3fv, @function
glNormal3fv:
.LFB86:
	.loc 1 204 0
.LVL275:
.LBB387:
.LBB389:
	.loc 1 199 0
	lis 9,_tempnormalelement@ha
	lfs 13,0(3)
.LBE389:
.LBE387:
	.loc 1 205 0
	lfs 12,4(3)
.LVL276:
.LBB391:
.LBB388:
	.loc 1 199 0
	la 11,_tempnormalelement@l(9)
.LBE388:
.LBE391:
	.loc 1 205 0
	lfs 0,8(3)
.LVL277:
.LBB392:
.LBB390:
	.loc 1 199 0
	stfs 13,_tempnormalelement@l(9)
	.loc 1 201 0
	stfs 0,8(11)
	.loc 1 200 0
	stfs 12,4(11)
.LBE390:
.LBE392:
	.loc 1 206 0
	blr
.LFE86:
	.size	glNormal3fv, .-glNormal3fv
	.globl glErrCode
	.globl glErrFile
	.globl glErrLine
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
	.type	C.39.13575, @object
	.size	C.39.13575, 12
C.39.13575:
	.zero	12
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	0
.LC3:
	.4byte	1501560836
.LC4:
	.4byte	1065353216
.LC6:
	.4byte	1501560832
.LC7:
	.4byte	1132396544
.LC11:
	.4byte	1325400064
.LC24:
	.4byte	1139802112
.LC25:
	.4byte	1142947840
.LC26:
	.4byte	1065353217
.LC34:
	.4byte	1082130432
.LC41:
	.4byte	1266679807
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC12:
	.4byte	1075195458
	.4byte	-17155559
.LC39:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"c:/projects/wii/gl2gx/libogc/../source/gl.c"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	glErrCode, @object
	.size	glErrCode, 4
glErrCode:
	.zero	4
	.type	glErrFile, @object
	.size	glErrFile, 4
glErrFile:
	.zero	4
	.type	glErrLine, @object
	.size	glErrLine, 4
glErrLine:
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
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x4
	.4byte	.LCFI0-.LFB84
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x4
	.4byte	.LCFI2-.LFB80
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x4
	.4byte	.LCFI3-.LFB89
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.byte	0x4
	.4byte	.LCFI4-.LFB90
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.byte	0x4
	.4byte	.LCFI6-.LFB98
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI9-.LFB108
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI10-.LFB107
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x4
	.4byte	.LCFI12-.LFB119
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.byte	0x4
	.4byte	.LCFI16-.LFB105
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.byte	0x4
	.4byte	.LCFI18-.LFB100
	.byte	0xe
	.uleb128 0x88
	.byte	0x4
	.4byte	.LCFI20-.LCFI18
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.align 2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.align 2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.align 2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.align 2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x4
	.4byte	.LCFI23-.LFB118
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.align 2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.align 2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI26-.LFB115
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.align 2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.align 2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI29-.LFB109
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.byte	0x4
	.4byte	.LCFI31-.LFB104
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.align 2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.byte	0x4
	.4byte	.LCFI33-.LFB102
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.byte	0x4
	.4byte	.LCFI35-.LFB101
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI37-.LCFI35
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.align 2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.align 2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.align 2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.align 2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.align 2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.align 2
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.align 2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.align 2
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.align 2
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.align 2
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.align 2
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.align 2
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.align 2
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.align 2
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.align 2
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI39-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI42-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.align 2
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI45-.LFB111
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE110:
.LSFDE112:
	.4byte	.LEFDE112-.LASFDE112
.LASFDE112:
	.4byte	.Lframe0
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.byte	0x4
	.4byte	.LCFI48-.LFB96
	.byte	0xe
	.uleb128 0x58
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE112:
.LSFDE114:
	.4byte	.LEFDE114-.LASFDE114
.LASFDE114:
	.4byte	.Lframe0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.align 2
.LEFDE114:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB84-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB80-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB89-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE89-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LFB90-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LFB98-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB108-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB107-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LFB119-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL59-.Ltext0
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
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LFB105-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LFB100-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL125-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LFB104-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LFB102-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI33-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LFB101-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST102:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST103:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL159-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST104:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST105:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI42-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST106:
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST107:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST109:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL224-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST110:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI45-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST111:
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL227-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST112:
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST113:
	.4byte	.LFB96-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI48-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	0x0
	.4byte	0x0
.LLST114:
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL270-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST115:
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL273-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST116:
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL274-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST117:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL272-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 4 "c:/projects/wii/gl2gx/libogc/include/GL/gl.h"
	.file 5 "c:/devkitPRO/libogc/include/gctypes.h"
	.file 6 "c:/devkitPRO/libogc/include/ogc/gu.h"
	.file 7 "c:/projects/wii/gl2gx/libogc/../source/include/glint.h"
	.file 8 "c:/projects/wii/gl2gx/libogc/../source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0x2653
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF264
	.byte	0x1
	.4byte	.LASF265
	.4byte	.LASF266
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
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
	.uleb128 0x7
	.byte	0x4
	.4byte	0x81
	.uleb128 0x8
	.4byte	0x74
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
	.byte	0x4
	.byte	0x92
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x93
	.4byte	0x3a
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x94
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x98
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x99
	.4byte	0x3a
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x9b
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0x9c
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x9d
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x4
	.byte	0x9e
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.byte	0x9f
	.4byte	0x8d
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x4
	.byte	0xa0
	.4byte	0x8d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x121
	.uleb128 0x8
	.4byte	0x105
	.uleb128 0x7
	.byte	0x4
	.4byte	0x12c
	.uleb128 0x8
	.4byte	0xef
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x7
	.byte	0x4
	.4byte	0xef
	.uleb128 0x9
	.string	"u8"
	.byte	0x5
	.byte	0xf
	.4byte	0x3a
	.uleb128 0x9
	.string	"u32"
	.byte	0x5
	.byte	0x11
	.4byte	0x30
	.uleb128 0x9
	.string	"f32"
	.byte	0x5
	.byte	0x29
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x5
	.byte	0x35
	.4byte	0x13d
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0x36
	.4byte	0x17d
	.uleb128 0xb
	.4byte	.LASF26
	.sleb128 0
	.uleb128 0xb
	.4byte	.LASF27
	.sleb128 1
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0xc
	.byte	0x6
	.byte	0x27
	.4byte	0x1ae
	.uleb128 0xd
	.string	"x"
	.byte	0x6
	.byte	0x28
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"y"
	.byte	0x6
	.byte	0x28
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"z"
	.byte	0x6
	.byte	0x28
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x6
	.byte	0x29
	.4byte	0x17d
	.uleb128 0x9
	.string	"Mtx"
	.byte	0x6
	.byte	0x2f
	.4byte	0x1c4
	.uleb128 0xe
	.4byte	0x152
	.4byte	0x1da
	.uleb128 0xf
	.4byte	0x37
	.byte	0x2
	.uleb128 0xf
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x6
	.byte	0x35
	.4byte	0x1e5
	.uleb128 0xe
	.4byte	0x152
	.4byte	0x1fb
	.uleb128 0xf
	.4byte	0x37
	.byte	0x3
	.uleb128 0xf
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x4
	.byte	0x2
	.2byte	0x3b8
	.4byte	0x23d
	.uleb128 0x11
	.string	"r"
	.byte	0x2
	.2byte	0x3b9
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"g"
	.byte	0x2
	.2byte	0x3ba
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"b"
	.byte	0x2
	.2byte	0x3bb
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"a"
	.byte	0x2
	.2byte	0x3bc
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x3bd
	.4byte	0x1fb
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x40
	.byte	0x2
	.2byte	0x3d6
	.4byte	0x266
	.uleb128 0x11
	.string	"val"
	.byte	0x2
	.2byte	0x3d7
	.4byte	0x266
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xe
	.4byte	0x147
	.4byte	0x276
	.uleb128 0xf
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x2
	.2byte	0x3d8
	.4byte	0x249
	.uleb128 0x7
	.byte	0x4
	.4byte	0x288
	.uleb128 0x13
	.uleb128 0x14
	.byte	0x10
	.byte	0x7
	.byte	0x16
	.4byte	0x2aa
	.uleb128 0xd
	.string	"v"
	.byte	0x7
	.byte	0x17
	.4byte	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"w"
	.byte	0x7
	.byte	0x18
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x7
	.byte	0x19
	.4byte	0x289
	.uleb128 0x14
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.4byte	0x2d6
	.uleb128 0xd
	.string	"s"
	.byte	0x7
	.byte	0x1d
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"t"
	.byte	0x7
	.byte	0x1e
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x7
	.byte	0x1f
	.4byte	0x2b5
	.uleb128 0x14
	.byte	0x10
	.byte	0x7
	.byte	0x22
	.4byte	0x31a
	.uleb128 0xd
	.string	"r"
	.byte	0x7
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"g"
	.byte	0x7
	.byte	0x24
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"b"
	.byte	0x7
	.byte	0x25
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"a"
	.byte	0x7
	.byte	0x26
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x7
	.byte	0x27
	.4byte	0x2e1
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x14
	.byte	0x7
	.byte	0x42
	.4byte	0x376
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x7
	.byte	0x43
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"p"
	.byte	0x7
	.byte	0x44
	.4byte	0x282
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x7
	.byte	0x45
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x7
	.byte	0x46
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x7
	.byte	0x47
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x7
	.byte	0x48
	.4byte	0x325
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x4c
	.byte	0x7
	.byte	0x6b
	.4byte	0x3c6
	.uleb128 0xd
	.string	"mat"
	.byte	0x7
	.byte	0x6c
	.4byte	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x7
	.byte	0x6d
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x7
	.byte	0x6e
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x7
	.byte	0x6f
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x7
	.byte	0x70
	.4byte	0x381
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x416
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x8
	.byte	0xe
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x8
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF41
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
	.4byte	.LASF52
	.byte	0x8
	.byte	0x12
	.4byte	0x3d1
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0xa4
	.byte	0x7
	.byte	0x7e
	.4byte	0x4dc
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x7
	.byte	0x7f
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"obj"
	.byte	0x7
	.byte	0x81
	.4byte	0x276
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"pos"
	.byte	0x7
	.byte	0x83
	.4byte	0x2aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x7
	.byte	0x85
	.4byte	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x7
	.byte	0x87
	.4byte	0x31a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x7
	.byte	0x88
	.4byte	0x31a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x7
	.byte	0x89
	.4byte	0x31a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x7
	.byte	0x8b
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x7
	.byte	0x8c
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.byte	0x8d
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.byte	0x8e
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.byte	0x8f
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x7
	.byte	0x90
	.4byte	0x421
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x44
	.byte	0x7
	.byte	0x9b
	.4byte	0x53a
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.byte	0x9c
	.4byte	0x31a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9d
	.4byte	0x31a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x7
	.byte	0x9e
	.4byte	0x31a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x7
	.byte	0x9f
	.4byte	0x31a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.byte	0xa0
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x7
	.byte	0xa1
	.4byte	0x4e7
	.uleb128 0x16
	.4byte	.LASF267
	.byte	0x4
	.byte	0x7
	.byte	0xba
	.4byte	0x564
	.uleb128 0xb
	.4byte	.LASF69
	.sleb128 0
	.uleb128 0xb
	.4byte	.LASF70
	.sleb128 1
	.uleb128 0xb
	.4byte	.LASF71
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x7
	.byte	0xbe
	.4byte	0x545
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x10
	.byte	0x7
	.byte	0xe3
	.4byte	0x5b0
	.uleb128 0xd
	.string	"x"
	.byte	0x7
	.byte	0xe4
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"y"
	.byte	0x7
	.byte	0xe5
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.byte	0xe6
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.byte	0xe7
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x7
	.byte	0xe8
	.4byte	0x56f
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x14
	.byte	0x7
	.byte	0xf6
	.4byte	0x61c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.byte	0xf7
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.byte	0xf8
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.byte	0xf9
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.byte	0xfa
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.byte	0xfb
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x7
	.byte	0xfc
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x7
	.byte	0xfd
	.4byte	0x5bb
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x8
	.byte	0x7
	.2byte	0x112
	.4byte	0x653
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x113
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x114
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x115
	.4byte	0x627
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x6c
	.byte	0x7
	.2byte	0x122
	.4byte	0x7b7
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x7
	.2byte	0x123
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x125
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x126
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x127
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x128
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x129
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x12a
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x12b
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x12c
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x12d
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x12e
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x130
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x132
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x133
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x135
	.4byte	0x7b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x136
	.4byte	0x7b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x137
	.4byte	0x7b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x138
	.4byte	0x7b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.string	"tex"
	.byte	0x7
	.2byte	0x13a
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x13c
	.4byte	0x31a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x13e
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x13f
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0xe
	.4byte	0xa2
	.4byte	0x7c7
	.uleb128 0xf
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x140
	.4byte	0x65f
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x4aa
	.byte	0x1
	.byte	0x1
	.4byte	0x805
	.uleb128 0x19
	.string	"e"
	.byte	0x1
	.2byte	0x4a9
	.4byte	0xa2
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x4a9
	.4byte	0x7b
	.uleb128 0x1a
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x4a9
	.4byte	0x58
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x474
	.byte	0x1
	.byte	0x3
	.4byte	0x832
	.uleb128 0x19
	.string	"x"
	.byte	0x2
	.2byte	0x473
	.4byte	0x152
	.uleb128 0x19
	.string	"y"
	.byte	0x2
	.2byte	0x473
	.4byte	0x152
	.uleb128 0x19
	.string	"z"
	.byte	0x2
	.2byte	0x473
	.4byte	0x152
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x4de
	.byte	0x1
	.byte	0x3
	.4byte	0x869
	.uleb128 0x19
	.string	"r"
	.byte	0x2
	.2byte	0x4dd
	.4byte	0x13d
	.uleb128 0x19
	.string	"g"
	.byte	0x2
	.2byte	0x4dd
	.4byte	0x13d
	.uleb128 0x19
	.string	"b"
	.byte	0x2
	.2byte	0x4dd
	.4byte	0x13d
	.uleb128 0x19
	.string	"a"
	.byte	0x2
	.2byte	0x4dd
	.4byte	0x13d
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF268
	.byte	0x2
	.2byte	0x470
	.byte	0x3
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x1
	.byte	0x51
	.4byte	0x8b1
	.uleb128 0x1e
	.4byte	.LASF113
	.byte	0x1
	.byte	0x16
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF114
	.byte	0x1
	.byte	0x16
	.4byte	0xa2
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF115
	.byte	0x1
	.byte	0x16
	.4byte	0xc3
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF117
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LLST1
	.4byte	0x917
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.byte	0xad
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.byte	0xad
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x20
	.string	"z"
	.byte	0x1
	.byte	0xad
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xbd
	.4byte	0x58
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB39
	.4byte	.LBE39
	.byte	0x1
	.byte	0xb0
	.uleb128 0x23
	.4byte	0x7f8
	.uleb128 0x23
	.4byte	0x7ec
	.uleb128 0x23
	.4byte	0x7e2
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x1
	.byte	0x51
	.4byte	0x963
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.byte	0xa9
	.4byte	0xef
	.4byte	.LLST3
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.byte	0xa9
	.4byte	0xef
	.4byte	.LLST4
	.uleb128 0x24
	.string	"z"
	.byte	0x1
	.byte	0xa9
	.4byte	0xef
	.4byte	.LLST5
	.uleb128 0x24
	.string	"w"
	.byte	0x1
	.byte	0xa9
	.4byte	0xef
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.byte	0x1
	.byte	0x51
	.4byte	0x988
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.byte	0xa4
	.4byte	0x126
	.4byte	.LLST8
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF120
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.byte	0x1
	.byte	0x51
	.4byte	0x9ba
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.byte	0xa0
	.4byte	0xef
	.4byte	.LLST10
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.byte	0xa0
	.4byte	0xef
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF121
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST12
	.4byte	0x9ee
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.byte	0x9c
	.4byte	0xc3
	.4byte	.LLST13
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.byte	0x9c
	.4byte	0xc3
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.byte	0x1
	.4byte	0xa18
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.byte	0xc6
	.4byte	0xef
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.byte	0xc6
	.4byte	0xef
	.uleb128 0x26
	.string	"z"
	.byte	0x1
	.byte	0xc6
	.4byte	0xef
	.byte	0x0
	.uleb128 0x27
	.4byte	0x9ee
	.4byte	.LFB85
	.4byte	.LFE85
	.byte	0x1
	.byte	0x51
	.4byte	0xa44
	.uleb128 0x28
	.4byte	0x9fc
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x28
	.4byte	0xa05
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x28
	.4byte	0xa0e
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.4byte	.LFB88
	.4byte	.LFE88
	.byte	0x1
	.byte	0x51
	.4byte	0xa8c
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.byte	0xd4
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x20
	.string	"g"
	.byte	0x1
	.byte	0xd4
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.byte	0xd4
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0xd4
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.byte	0x1
	.byte	0x51
	.4byte	0xacb
	.uleb128 0x24
	.string	"r"
	.byte	0x1
	.byte	0xd0
	.4byte	0xef
	.4byte	.LLST18
	.uleb128 0x24
	.string	"g"
	.byte	0x1
	.byte	0xd0
	.4byte	0xef
	.4byte	.LLST19
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.byte	0xd0
	.4byte	0xef
	.4byte	.LLST20
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LLST21
	.4byte	0xb12
	.uleb128 0x24
	.string	"red"
	.byte	0x1
	.byte	0xea
	.4byte	0xce
	.4byte	.LLST22
	.uleb128 0x29
	.4byte	.LASF127
	.byte	0x1
	.byte	0xeb
	.4byte	0xce
	.4byte	.LLST23
	.uleb128 0x29
	.4byte	.LASF128
	.byte	0x1
	.byte	0xec
	.4byte	0xce
	.4byte	.LLST24
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LLST25
	.4byte	0xb68
	.uleb128 0x24
	.string	"red"
	.byte	0x1
	.byte	0xf1
	.4byte	0xce
	.4byte	.LLST26
	.uleb128 0x29
	.4byte	.LASF127
	.byte	0x1
	.byte	0xf2
	.4byte	0xce
	.4byte	.LLST27
	.uleb128 0x29
	.4byte	.LASF128
	.byte	0x1
	.byte	0xf3
	.4byte	0xce
	.4byte	.LLST28
	.uleb128 0x29
	.4byte	.LASF130
	.byte	0x1
	.byte	0xf4
	.4byte	0xce
	.4byte	.LLST29
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.byte	0xfa
	.byte	0x1
	.4byte	.LFB91
	.4byte	.LFE91
	.byte	0x1
	.byte	0x51
	.4byte	0xb8d
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.byte	0xf9
	.4byte	0x126
	.4byte	.LLST31
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.4byte	.LFB92
	.4byte	.LFE92
	.byte	0x1
	.byte	0x51
	.4byte	0xbbd
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0xff
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0xff
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x118
	.byte	0x1
	.4byte	0x58
	.byte	0x1
	.4byte	0xbfa
	.uleb128 0x1a
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x117
	.4byte	0xa2
	.uleb128 0x2b
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x119
	.4byte	0x58
	.uleb128 0x2c
	.uleb128 0x23
	.4byte	0x7f8
	.uleb128 0x23
	.4byte	0x7ec
	.uleb128 0x23
	.4byte	0x7e2
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	0xbbd
	.4byte	.LFB94
	.4byte	.LFE94
	.byte	0x1
	.byte	0x51
	.4byte	0xc40
	.uleb128 0x2d
	.4byte	0xbd0
	.4byte	.LLST34
	.uleb128 0x2e
	.4byte	0xbdc
	.4byte	.LLST35
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB45
	.4byte	.LBE45
	.byte	0x1
	.2byte	0x125
	.uleb128 0x23
	.4byte	0x7f8
	.uleb128 0x23
	.4byte	0x7ec
	.uleb128 0x23
	.4byte	0x7e2
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x18c
	.byte	0x1
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LLST36
	.4byte	0xcab
	.uleb128 0x31
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x18c
	.4byte	0xa2
	.4byte	.LLST37
	.uleb128 0x31
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x18c
	.4byte	0xa2
	.4byte	.LLST38
	.uleb128 0x31
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x18c
	.4byte	0x126
	.4byte	.LLST39
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB49
	.4byte	.LBE49
	.byte	0x1
	.2byte	0x1af
	.uleb128 0x23
	.4byte	0x7f8
	.uleb128 0x23
	.4byte	0x7ec
	.uleb128 0x23
	.4byte	0x7e2
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x298
	.byte	0x1
	.4byte	0xef
	.byte	0x1
	.4byte	0xcc8
	.uleb128 0x19
	.string	"d"
	.byte	0x1
	.2byte	0x297
	.4byte	0xef
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x2a7
	.byte	0x1
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST40
	.4byte	0xd8d
	.uleb128 0x33
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x2a6
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x2a6
	.4byte	0xef
	.4byte	.LLST41
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB61
	.4byte	.LBE61
	.byte	0x1
	.2byte	0x2a8
	.4byte	0xd24
	.uleb128 0x23
	.4byte	0x7f8
	.uleb128 0x23
	.4byte	0x7ec
	.uleb128 0x23
	.4byte	0x7e2
	.byte	0x0
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB63
	.4byte	.LBE63
	.byte	0x1
	.2byte	0x2b9
	.4byte	0xd48
	.uleb128 0x23
	.4byte	0x7f8
	.uleb128 0x23
	.4byte	0x7ec
	.uleb128 0x23
	.4byte	0x7e2
	.byte	0x0
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB65
	.4byte	.LBE65
	.byte	0x1
	.2byte	0x2c6
	.4byte	0xd6c
	.uleb128 0x23
	.4byte	0x7f8
	.uleb128 0x23
	.4byte	0x7ec
	.uleb128 0x23
	.4byte	0x7e2
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB67
	.4byte	.LBE67
	.byte	0x1
	.2byte	0x2cc
	.uleb128 0x23
	.4byte	0x7f8
	.uleb128 0x23
	.4byte	0x7ec
	.uleb128 0x23
	.4byte	0x7e2
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x2a2
	.byte	0x1
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST42
	.4byte	0xdc8
	.uleb128 0x31
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x2a1
	.4byte	0xa2
	.4byte	.LLST43
	.uleb128 0x31
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x2a1
	.4byte	0xc3
	.4byte	.LLST44
	.byte	0x0
	.uleb128 0x27
	.4byte	0x7d3
	.4byte	.LFB122
	.4byte	.LFE122
	.byte	0x1
	.byte	0x51
	.4byte	0xdf1
	.uleb128 0x28
	.4byte	0x7e2
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	0x7ec
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	0x7f8
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x4bc
	.byte	0x1
	.4byte	.LFB124
	.4byte	.LFE124
	.byte	0x1
	.byte	0x51
	.4byte	0xe4a
	.uleb128 0x36
	.string	"red"
	.byte	0x1
	.2byte	0x4b8
	.4byte	0xad
	.4byte	.LLST47
	.uleb128 0x31
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x4b9
	.4byte	0xad
	.4byte	.LLST48
	.uleb128 0x31
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x4ba
	.4byte	0xad
	.4byte	.LLST49
	.uleb128 0x31
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x4bb
	.4byte	0xad
	.4byte	.LLST50
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x438
	.byte	0x1
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST51
	.4byte	0xee7
	.uleb128 0x31
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x438
	.4byte	0xa2
	.4byte	.LLST52
	.uleb128 0x31
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x438
	.4byte	0x131
	.4byte	.LLST53
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB74
	.4byte	.LBE74
	.byte	0x1
	.2byte	0x439
	.4byte	0xea8
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x37
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	0xec6
	.uleb128 0x38
	.string	"val"
	.byte	0x1
	.2byte	0x48a
	.4byte	0x94
	.4byte	.LLST54
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB77
	.4byte	.LBE77
	.byte	0x1
	.2byte	0x490
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x284
	.4byte	.LFB105
	.4byte	.LFE105
	.4byte	.LLST55
	.4byte	0xf0f
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x285
	.4byte	0xf0f
	.4byte	.LLST56
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3c6
	.uleb128 0x3a
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1e0
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	.LLST57
	.4byte	0x10b2
	.uleb128 0x3b
	.string	"x1"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x94
	.uleb128 0x3b
	.string	"y1"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x94
	.uleb128 0x3b
	.string	"x2"
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x94
	.uleb128 0x3b
	.string	"y2"
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x94
	.uleb128 0x3c
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x1da
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3c
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x1b9
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3d
	.4byte	0x805
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x213
	.4byte	0xf9d
	.uleb128 0x2d
	.4byte	0x827
	.4byte	.LLST58
	.uleb128 0x23
	.4byte	0x81d
	.uleb128 0x23
	.4byte	0x813
	.byte	0x0
	.uleb128 0x3d
	.4byte	0x805
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x215
	.4byte	0xfbd
	.uleb128 0x23
	.4byte	0x827
	.uleb128 0x23
	.4byte	0x81d
	.uleb128 0x23
	.4byte	0x813
	.byte	0x0
	.uleb128 0x3d
	.4byte	0x805
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x217
	.4byte	0xfdd
	.uleb128 0x23
	.4byte	0x827
	.uleb128 0x23
	.4byte	0x81d
	.uleb128 0x23
	.4byte	0x813
	.byte	0x0
	.uleb128 0x34
	.4byte	0x832
	.4byte	.LBB111
	.4byte	.LBE111
	.byte	0x1
	.2byte	0x214
	.4byte	0x1016
	.uleb128 0x2d
	.4byte	0x85e
	.4byte	.LLST59
	.uleb128 0x2d
	.4byte	0x854
	.4byte	.LLST60
	.uleb128 0x2d
	.4byte	0x84a
	.4byte	.LLST61
	.uleb128 0x2d
	.4byte	0x840
	.4byte	.LLST62
	.byte	0x0
	.uleb128 0x34
	.4byte	0x832
	.4byte	.LBB114
	.4byte	.LBE114
	.byte	0x1
	.2byte	0x216
	.4byte	0x103f
	.uleb128 0x23
	.4byte	0x85e
	.uleb128 0x23
	.4byte	0x854
	.uleb128 0x23
	.4byte	0x84a
	.uleb128 0x23
	.4byte	0x840
	.byte	0x0
	.uleb128 0x34
	.4byte	0x832
	.4byte	.LBB117
	.4byte	.LBE117
	.byte	0x1
	.2byte	0x218
	.4byte	0x1068
	.uleb128 0x23
	.4byte	0x85e
	.uleb128 0x23
	.4byte	0x854
	.uleb128 0x23
	.4byte	0x84a
	.uleb128 0x23
	.4byte	0x840
	.byte	0x0
	.uleb128 0x34
	.4byte	0x805
	.4byte	.LBB119
	.4byte	.LBE119
	.byte	0x1
	.2byte	0x219
	.4byte	0x108c
	.uleb128 0x23
	.4byte	0x827
	.uleb128 0x23
	.4byte	0x81d
	.uleb128 0x23
	.4byte	0x813
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x832
	.4byte	.LBB121
	.4byte	.LBE121
	.byte	0x1
	.2byte	0x21a
	.uleb128 0x23
	.4byte	0x85e
	.uleb128 0x23
	.4byte	0x854
	.uleb128 0x23
	.4byte	0x84a
	.uleb128 0x23
	.4byte	0x840
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF148
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x1
	.byte	0x51
	.4byte	0x1103
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0x1
	.byte	0xe
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF45
	.byte	0x1
	.byte	0xe
	.4byte	0xa2
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB125
	.4byte	.LBE125
	.byte	0x1
	.byte	0xe
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x4b0
	.byte	0x1
	.4byte	0xa2
	.4byte	.LFB123
	.4byte	.LFE123
	.byte	0x1
	.byte	0x51
	.4byte	0x114e
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.2byte	0x4b3
	.4byte	0xa2
	.4byte	.LLST65
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB129
	.4byte	.LBE129
	.byte	0x1
	.2byte	0x4b1
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x49e
	.byte	0x1
	.4byte	.LFB121
	.4byte	.LFE121
	.byte	0x1
	.byte	0x51
	.4byte	0x1196
	.uleb128 0x33
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x49d
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB133
	.4byte	.LBE133
	.byte	0x1
	.2byte	0x49f
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x497
	.byte	0x1
	.4byte	.LFB120
	.4byte	.LFE120
	.byte	0x1
	.byte	0x51
	.4byte	0x11de
	.uleb128 0x33
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x496
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB137
	.4byte	.LBE137
	.byte	0x1
	.2byte	0x498
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x429
	.byte	0x1
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST68
	.4byte	0x1229
	.uleb128 0x31
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x428
	.4byte	0xa2
	.4byte	.LLST69
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB141
	.4byte	.LBE141
	.byte	0x1
	.2byte	0x42c
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x41e
	.byte	0x1
	.4byte	.LFB117
	.4byte	.LFE117
	.byte	0x1
	.byte	0x51
	.4byte	0x1272
	.uleb128 0x31
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x41d
	.4byte	0xa2
	.4byte	.LLST71
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB145
	.4byte	.LBE145
	.byte	0x1
	.2byte	0x421
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x410
	.byte	0x1
	.4byte	.LFB116
	.4byte	.LFE116
	.byte	0x1
	.byte	0x51
	.4byte	0x12e1
	.uleb128 0x31
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x40f
	.4byte	0xa2
	.4byte	.LLST73
	.uleb128 0x3f
	.string	"s"
	.byte	0x1
	.2byte	0x40f
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x3f
	.string	"t"
	.byte	0x1
	.2byte	0x40f
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x2b
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x418
	.4byte	0x58
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB149
	.4byte	.LBE149
	.byte	0x1
	.2byte	0x413
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x3c6
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST74
	.4byte	0x13a1
	.uleb128 0x31
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x3c5
	.4byte	0xa2
	.4byte	.LLST75
	.uleb128 0x31
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x3c5
	.4byte	0x137
	.4byte	.LLST76
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB158
	.4byte	.LBE158
	.byte	0x1
	.2byte	0x3c7
	.4byte	0x133f
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB160
	.4byte	.LBE160
	.byte	0x1
	.2byte	0x3cb
	.4byte	0x1363
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x37
	.4byte	.LBB162
	.4byte	.LBE162
	.4byte	0x1380
	.uleb128 0x40
	.string	"val"
	.byte	0x1
	.2byte	0x405
	.4byte	0x58
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB163
	.4byte	.LBE163
	.byte	0x1
	.2byte	0x40a
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x3af
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.byte	0x1
	.byte	0x51
	.4byte	0x140c
	.uleb128 0x33
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x3af
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB169
	.4byte	.LBE169
	.byte	0x1
	.2byte	0x3b0
	.4byte	0x13eb
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB171
	.4byte	.LBE171
	.byte	0x1
	.2byte	0x3bd
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x2e4
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.byte	0x1
	.byte	0x51
	.4byte	0x1477
	.uleb128 0x33
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x2e3
	.4byte	0xad
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB177
	.4byte	.LBE177
	.byte	0x1
	.2byte	0x2e5
	.4byte	0x1456
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB179
	.4byte	.LBE179
	.byte	0x1
	.2byte	0x2ec
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x2d2
	.byte	0x1
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST79
	.4byte	0x14d2
	.uleb128 0x31
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x2d1
	.4byte	0xa2
	.4byte	.LLST80
	.uleb128 0x31
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x2d1
	.4byte	0x126
	.4byte	.LLST81
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB183
	.4byte	.LBE183
	.byte	0x1
	.2byte	0x2d3
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x278
	.byte	0x1
	.4byte	.LFB104
	.4byte	.LFE104
	.4byte	.LLST82
	.4byte	0x150d
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB187
	.4byte	.LBE187
	.byte	0x1
	.2byte	0x27a
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x266
	.byte	0x1
	.4byte	.LFB103
	.4byte	.LFE103
	.byte	0x1
	.byte	0x51
	.4byte	0x1555
	.uleb128 0x33
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x266
	.4byte	0x110
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB191
	.4byte	.LBE191
	.byte	0x1
	.2byte	0x268
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x25c
	.byte	0x1
	.4byte	.LFB102
	.4byte	.LFE102
	.4byte	.LLST84
	.4byte	0x15cc
	.uleb128 0x3f
	.string	"red"
	.byte	0x1
	.2byte	0x259
	.4byte	0xfa
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x33
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x25a
	.4byte	0xfa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x33
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x25b
	.4byte	0xfa
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x33
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x25c
	.4byte	0xfa
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB195
	.4byte	.LBE195
	.byte	0x1
	.2byte	0x25e
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x222
	.byte	0x1
	.4byte	.LFB101
	.4byte	.LFE101
	.4byte	.LLST85
	.4byte	0x162f
	.uleb128 0x31
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x222
	.4byte	0xb8
	.4byte	.LLST86
	.uleb128 0x2b
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x225
	.4byte	0x15d
	.uleb128 0x2b
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x226
	.4byte	0x15d
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB199
	.4byte	.LBE199
	.byte	0x1
	.2byte	0x223
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x1b7
	.byte	0x1
	.4byte	.LFB99
	.4byte	.LFE99
	.byte	0x1
	.byte	0x51
	.4byte	0x16cc
	.uleb128 0x33
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xa2
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x137
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x58
	.uleb128 0x3b
	.string	"t"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x31a
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB205
	.4byte	.LBE205
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x16ab
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB207
	.4byte	.LBE207
	.byte	0x1
	.2byte	0x1d2
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x181
	.byte	0x1
	.4byte	.LFB97
	.4byte	.LFE97
	.byte	0x1
	.byte	0x51
	.4byte	0x1730
	.uleb128 0x33
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x181
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x181
	.4byte	0xa2
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x181
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB211
	.4byte	.LBE211
	.byte	0x1
	.2byte	0x187
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x106
	.byte	0x1
	.4byte	.LFB93
	.4byte	.LFE93
	.byte	0x1
	.byte	0x51
	.4byte	0x17a9
	.uleb128 0x33
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x106
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x106
	.4byte	0x126
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB217
	.4byte	.LBE217
	.byte	0x1
	.2byte	0x107
	.4byte	0x1788
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB219
	.4byte	.LBE219
	.byte	0x1
	.2byte	0x112
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF173
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.byte	0x1
	.byte	0x51
	.4byte	0x1810
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.byte	0x91
	.4byte	0xc3
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.byte	0x92
	.4byte	0xc3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.byte	0x93
	.4byte	0xe4
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0x1
	.byte	0x94
	.4byte	0xe4
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB223
	.4byte	.LBE223
	.byte	0x1
	.byte	0x96
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF174
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.4byte	.LFB78
	.4byte	.LFE78
	.byte	0x1
	.byte	0x51
	.4byte	0x1863
	.uleb128 0x1e
	.4byte	.LASF175
	.byte	0x1
	.byte	0x89
	.4byte	0x110
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x1e
	.4byte	.LASF176
	.byte	0x1
	.byte	0x89
	.4byte	0x110
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB227
	.4byte	.LBE227
	.byte	0x1
	.byte	0x8b
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF177
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.byte	0x1
	.byte	0x51
	.4byte	0x18ca
	.uleb128 0x1e
	.4byte	.LASF45
	.byte	0x1
	.byte	0x76
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x41
	.4byte	0x7d3
	.4byte	.LBB233
	.4byte	.LBE233
	.byte	0x1
	.byte	0x78
	.4byte	0x18aa
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB235
	.4byte	.LBE235
	.byte	0x1
	.byte	0x80
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF178
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.4byte	.LFB76
	.4byte	.LFE76
	.byte	0x1
	.byte	0x51
	.4byte	0x1931
	.uleb128 0x1e
	.4byte	.LASF45
	.byte	0x1
	.byte	0x61
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x41
	.4byte	0x7d3
	.4byte	.LBB241
	.4byte	.LBE241
	.byte	0x1
	.byte	0x63
	.4byte	0x1911
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB243
	.4byte	.LBE243
	.byte	0x1
	.byte	0x71
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF179
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.byte	0x1
	.byte	0x51
	.4byte	0x19bb
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.byte	0x51
	.4byte	0xc3
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.byte	0x51
	.4byte	0xc3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.byte	0x51
	.4byte	0xe4
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0x1
	.byte	0x51
	.4byte	0xe4
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.4byte	0x7d3
	.4byte	.LBB249
	.4byte	.LBE249
	.byte	0x1
	.byte	0x53
	.4byte	0x199b
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB251
	.4byte	.LBE251
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF180
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.byte	0x1
	.byte	0x51
	.4byte	0x1a52
	.uleb128 0x1e
	.4byte	.LASF181
	.byte	0x1
	.byte	0x31
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF182
	.byte	0x1
	.byte	0x31
	.4byte	0xa2
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	0x7d3
	.4byte	.LBB259
	.4byte	.LBE259
	.byte	0x1
	.byte	0x33
	.4byte	0x1a0f
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x41
	.4byte	0x7d3
	.4byte	.LBB261
	.4byte	.LBE261
	.byte	0x1
	.byte	0x40
	.4byte	0x1a32
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB263
	.4byte	.LBE263
	.byte	0x1
	.byte	0x4d
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF183
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.byte	0x1
	.byte	0x51
	.4byte	0x1ac6
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0x1
	.byte	0x22
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF45
	.byte	0x1
	.byte	0x22
	.4byte	0xa2
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	0x7d3
	.4byte	.LBB269
	.4byte	.LBE269
	.byte	0x1
	.byte	0x24
	.4byte	0x1aa6
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB271
	.4byte	.LBE271
	.byte	0x1
	.byte	0x2d
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF184
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.byte	0x1
	.byte	0x51
	.4byte	0x1b17
	.uleb128 0x1e
	.4byte	.LASF185
	.byte	0x1
	.byte	0x1e
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF186
	.byte	0x1
	.byte	0x1e
	.4byte	0x11b
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB275
	.4byte	.LBE275
	.byte	0x1
	.byte	0x1e
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF187
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.byte	0x1
	.byte	0x51
	.4byte	0x1b5b
	.uleb128 0x1e
	.4byte	.LASF45
	.byte	0x1
	.byte	0x1c
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB279
	.4byte	.LBE279
	.byte	0x1
	.byte	0x1c
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.byte	0x1
	.byte	0x51
	.4byte	0x1bac
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0x1
	.byte	0x18
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF45
	.byte	0x1
	.byte	0x18
	.4byte	0xa2
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB283
	.4byte	.LBE283
	.byte	0x1
	.byte	0x18
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF189
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.byte	0x1
	.byte	0x51
	.4byte	0x1bfd
	.uleb128 0x1e
	.4byte	.LASF114
	.byte	0x1
	.byte	0x12
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF115
	.byte	0x1
	.byte	0x12
	.4byte	0xc3
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB287
	.4byte	.LBE287
	.byte	0x1
	.byte	0x12
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF190
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x1
	.byte	0x51
	.4byte	0x1c50
	.uleb128 0x1e
	.4byte	.LASF191
	.byte	0x1
	.byte	0x10
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x1e
	.4byte	.LASF192
	.byte	0x1
	.byte	0x10
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x22
	.4byte	0x7d3
	.4byte	.LBB291
	.4byte	.LBE291
	.byte	0x1
	.byte	0x10
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x36b
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST102
	.4byte	0x1d20
	.uleb128 0x31
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x36b
	.4byte	0xa2
	.4byte	.LLST103
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB302
	.4byte	.LBE302
	.byte	0x1
	.2byte	0x36c
	.4byte	0x1c9e
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x37
	.4byte	.LBB304
	.4byte	.LBE304
	.4byte	0x1cff
	.uleb128 0x38
	.string	"n"
	.byte	0x1
	.2byte	0x37d
	.4byte	0x58
	.4byte	.LLST104
	.uleb128 0x2f
	.4byte	0xbbd
	.4byte	.LBB305
	.4byte	.LBE305
	.byte	0x1
	.2byte	0x37d
	.uleb128 0x23
	.4byte	0xc0d
	.uleb128 0x42
	.4byte	.LBB306
	.4byte	.LBE306
	.uleb128 0x43
	.4byte	0xbdc
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB307
	.4byte	.LBE307
	.byte	0x1
	.2byte	0x125
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB309
	.4byte	.LBE309
	.byte	0x1
	.2byte	0x3a8
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.byte	0x1
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x31a
	.byte	0x1
	.4byte	0xad
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST105
	.4byte	0x1df8
	.uleb128 0x36
	.string	"cap"
	.byte	0x1
	.2byte	0x319
	.4byte	0xa2
	.4byte	.LLST106
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB322
	.4byte	.LBE322
	.byte	0x1
	.2byte	0x31c
	.4byte	0x1d72
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x37
	.4byte	.LBB324
	.4byte	.LBE324
	.4byte	0x1dd7
	.uleb128 0x38
	.string	"n"
	.byte	0x1
	.2byte	0x339
	.4byte	0x58
	.4byte	.LLST107
	.uleb128 0x34
	.4byte	0xbbd
	.4byte	.LBB325
	.4byte	.LBE325
	.byte	0x1
	.2byte	0x339
	.4byte	0x1db6
	.uleb128 0x23
	.4byte	0xc0d
	.uleb128 0x42
	.4byte	.LBB326
	.4byte	.LBE326
	.uleb128 0x43
	.4byte	0xbdc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB327
	.4byte	.LBE327
	.byte	0x1
	.2byte	0x33c
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB329
	.4byte	.LBE329
	.byte	0x1
	.2byte	0x365
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x12c
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.byte	0x1
	.byte	0x51
	.4byte	0x1ed9
	.uleb128 0x33
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x12c
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x12c
	.4byte	0xa2
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x12c
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x45
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x12f
	.4byte	0x58
	.4byte	.LLST109
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB339
	.4byte	.LBE339
	.byte	0x1
	.2byte	0x12d
	.4byte	0x1e6f
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x34
	.4byte	0xbbd
	.4byte	.LBB341
	.4byte	.LBE341
	.byte	0x1
	.2byte	0x12f
	.4byte	0x1eb8
	.uleb128 0x23
	.4byte	0xc0d
	.uleb128 0x42
	.4byte	.LBB342
	.4byte	.LBE342
	.uleb128 0x43
	.4byte	0xbdc
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB343
	.4byte	.LBE343
	.byte	0x1
	.2byte	0x125
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB345
	.4byte	.LBE345
	.byte	0x1
	.2byte	0x13c
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x2f3
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST110
	.4byte	0x1fad
	.uleb128 0x31
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x2f2
	.4byte	0xa2
	.4byte	.LLST111
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB358
	.4byte	.LBE358
	.byte	0x1
	.2byte	0x2f4
	.4byte	0x1f27
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x37
	.4byte	.LBB360
	.4byte	.LBE360
	.4byte	0x1f8c
	.uleb128 0x38
	.string	"n"
	.byte	0x1
	.2byte	0x305
	.4byte	0x58
	.4byte	.LLST112
	.uleb128 0x34
	.4byte	0xbbd
	.4byte	.LBB361
	.4byte	.LBE361
	.byte	0x1
	.2byte	0x305
	.4byte	0x1f6b
	.uleb128 0x23
	.4byte	0xc0d
	.uleb128 0x42
	.4byte	.LBB362
	.4byte	.LBE362
	.uleb128 0x43
	.4byte	0xbdc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB363
	.4byte	.LBE363
	.byte	0x1
	.2byte	0x308
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB365
	.4byte	.LBE365
	.byte	0x1
	.2byte	0x314
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x141
	.byte	0x1
	.4byte	.LFB96
	.4byte	.LFE96
	.4byte	.LLST113
	.4byte	0x20bf
	.uleb128 0x31
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x141
	.4byte	0xa2
	.4byte	.LLST114
	.uleb128 0x31
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x141
	.4byte	0xa2
	.4byte	.LLST115
	.uleb128 0x31
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x141
	.4byte	0x126
	.4byte	.LLST116
	.uleb128 0x45
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x144
	.4byte	0x58
	.4byte	.LLST117
	.uleb128 0x3c
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x149
	.4byte	0x1ae
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.4byte	0x7d3
	.4byte	.LBB376
	.4byte	.LBE376
	.byte	0x1
	.2byte	0x142
	.4byte	0x203b
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.uleb128 0x34
	.4byte	0xbbd
	.4byte	.LBB378
	.4byte	.LBE378
	.byte	0x1
	.2byte	0x144
	.4byte	0x2084
	.uleb128 0x23
	.4byte	0xc0d
	.uleb128 0x42
	.4byte	.LBB379
	.4byte	.LBE379
	.uleb128 0x43
	.4byte	0xbdc
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB380
	.4byte	.LBE380
	.byte	0x1
	.2byte	0x125
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.4byte	.LBB382
	.4byte	.LBE382
	.uleb128 0x40
	.string	"mvi"
	.byte	0x1
	.2byte	0x173
	.4byte	0x1b9
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.4byte	0x7d3
	.4byte	.LBB383
	.4byte	.LBE383
	.byte	0x1
	.2byte	0x179
	.uleb128 0x23
	.4byte	0xde9
	.uleb128 0x23
	.4byte	0xde2
	.uleb128 0x23
	.4byte	0xddb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF200
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.4byte	.LFB86
	.4byte	.LFE86
	.byte	0x1
	.byte	0x51
	.4byte	0x2103
	.uleb128 0x20
	.string	"v"
	.byte	0x1
	.byte	0xcc
	.4byte	0x126
	.byte	0x1
	.byte	0x53
	.uleb128 0x46
	.4byte	0x9ee
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0xcd
	.uleb128 0x28
	.4byte	0xa3b
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x28
	.4byte	0xa33
	.byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.uleb128 0x23
	.4byte	0xa2b
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
	.4byte	.LASF201
	.byte	0x7
	.byte	0x3c
	.4byte	0x31a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x47
	.4byte	.LASF202
	.byte	0x7
	.byte	0x3d
	.4byte	0x1ae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xe
	.4byte	0x2d6
	.4byte	0x2137
	.uleb128 0xf
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x47
	.4byte	.LASF203
	.byte	0x7
	.byte	0x3e
	.4byte	0x2127
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x47
	.4byte	.LASF204
	.byte	0x7
	.byte	0x4a
	.4byte	0x376
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x47
	.4byte	.LASF205
	.byte	0x7
	.byte	0x4b
	.4byte	0x376
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xe
	.4byte	0x376
	.4byte	0x217d
	.uleb128 0xf
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x48
	.string	"tex"
	.byte	0x7
	.byte	0x4c
	.4byte	0x216d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x47
	.4byte	.LASF105
	.byte	0x7
	.byte	0x4d
	.4byte	0x376
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xe
	.4byte	0x1ae
	.4byte	0x21b2
	.uleb128 0x49
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x47
	.4byte	.LASF206
	.byte	0x7
	.byte	0x4f
	.4byte	0x21a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x47
	.4byte	.LASF207
	.byte	0x7
	.byte	0x50
	.4byte	0x21a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xe
	.4byte	0x2d6
	.4byte	0x21ed
	.uleb128 0xf
	.4byte	0x37
	.byte	0x7
	.uleb128 0x49
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x47
	.4byte	.LASF208
	.byte	0x7
	.byte	0x51
	.4byte	0x21d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xe
	.4byte	0x31a
	.4byte	0x2210
	.uleb128 0x49
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x47
	.4byte	.LASF209
	.byte	0x7
	.byte	0x52
	.4byte	0x21ff
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x47
	.4byte	.LASF210
	.byte	0x7
	.byte	0x5c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x47
	.4byte	.LASF211
	.byte	0x7
	.byte	0x5d
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x47
	.4byte	.LASF212
	.byte	0x7
	.byte	0x5e
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x47
	.4byte	.LASF213
	.byte	0x7
	.byte	0x60
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x47
	.4byte	.LASF214
	.byte	0x7
	.byte	0x61
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x47
	.4byte	.LASF215
	.byte	0x7
	.byte	0x65
	.4byte	0x13d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x47
	.4byte	.LASF216
	.byte	0x7
	.byte	0x66
	.4byte	0x13d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x47
	.4byte	.LASF217
	.byte	0x7
	.byte	0x67
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x47
	.4byte	.LASF218
	.byte	0x7
	.byte	0x68
	.4byte	0x94
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x47
	.4byte	.LASF219
	.byte	0x7
	.byte	0x74
	.4byte	0x416
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x47
	.4byte	.LASF220
	.byte	0x7
	.byte	0x75
	.4byte	0x416
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xe
	.4byte	0x416
	.4byte	0x22f8
	.uleb128 0xf
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x47
	.4byte	.LASF221
	.byte	0x7
	.byte	0x76
	.4byte	0x22e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x47
	.4byte	.LASF222
	.byte	0x7
	.byte	0x77
	.4byte	0x231c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x7
	.byte	0x4
	.4byte	0x416
	.uleb128 0x47
	.4byte	.LASF223
	.byte	0x7
	.byte	0x78
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xe
	.4byte	0x4dc
	.4byte	0x2344
	.uleb128 0xf
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x47
	.4byte	.LASF224
	.byte	0x7
	.byte	0x93
	.4byte	0x2334
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x47
	.4byte	.LASF225
	.byte	0x7
	.byte	0x96
	.4byte	0x31a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x47
	.4byte	.LASF226
	.byte	0x7
	.byte	0xa3
	.4byte	0x53a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x47
	.4byte	.LASF227
	.byte	0x7
	.byte	0xa6
	.4byte	0x15d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x47
	.4byte	.LASF228
	.byte	0x7
	.byte	0xa7
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x47
	.4byte	.LASF229
	.byte	0x7
	.byte	0xab
	.4byte	0x15d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x47
	.4byte	.LASF230
	.byte	0x7
	.byte	0xb2
	.4byte	0x13d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x47
	.4byte	.LASF231
	.byte	0x7
	.byte	0xb3
	.4byte	0x13d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x47
	.4byte	.LASF232
	.byte	0x7
	.byte	0xb4
	.4byte	0x13d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x47
	.4byte	.LASF233
	.byte	0x7
	.byte	0xb5
	.4byte	0x13d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x47
	.4byte	.LASF234
	.byte	0x7
	.byte	0xb7
	.4byte	0x13d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x47
	.4byte	.LASF235
	.byte	0x7
	.byte	0xc0
	.4byte	0x564
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x47
	.4byte	.LASF236
	.byte	0x7
	.byte	0xea
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x47
	.4byte	.LASF237
	.byte	0x7
	.byte	0xeb
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x47
	.4byte	.LASF238
	.byte	0x7
	.byte	0xec
	.4byte	0xad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x47
	.4byte	.LASF239
	.byte	0x7
	.byte	0xed
	.4byte	0x5b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x47
	.4byte	.LASF240
	.byte	0x7
	.byte	0xee
	.4byte	0x5b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x47
	.4byte	.LASF241
	.byte	0x7
	.byte	0xef
	.4byte	0x152
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x47
	.4byte	.LASF242
	.byte	0x7
	.byte	0xf0
	.4byte	0x152
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x47
	.4byte	.LASF243
	.byte	0x7
	.byte	0xf2
	.4byte	0x152
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x47
	.4byte	.LASF244
	.byte	0x7
	.byte	0xf3
	.4byte	0x152
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x47
	.4byte	.LASF245
	.byte	0x7
	.byte	0xff
	.4byte	0x61c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x4a
	.4byte	.LASF246
	.byte	0x7
	.2byte	0x100
	.4byte	0x61c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xe
	.4byte	0x15d
	.4byte	0x24f3
	.uleb128 0xf
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x4a
	.4byte	.LASF247
	.byte	0x7
	.2byte	0x101
	.4byte	0x24e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x4a
	.4byte	.LASF248
	.byte	0x7
	.2byte	0x107
	.4byte	0x15d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x4a
	.4byte	.LASF249
	.byte	0x7
	.2byte	0x108
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x4a
	.4byte	.LASF250
	.byte	0x7
	.2byte	0x10b
	.4byte	0x23d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xe
	.4byte	0x653
	.4byte	0x254f
	.uleb128 0xf
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x4a
	.4byte	.LASF251
	.byte	0x7
	.2byte	0x11f
	.4byte	0x253f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x4a
	.4byte	.LASF252
	.byte	0x7
	.2byte	0x144
	.4byte	0x15d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x4a
	.4byte	.LASF253
	.byte	0x7
	.2byte	0x145
	.4byte	0x13d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x4a
	.4byte	.LASF254
	.byte	0x7
	.2byte	0x146
	.4byte	0x152
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x4a
	.4byte	.LASF255
	.byte	0x7
	.2byte	0x147
	.4byte	0x152
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x4a
	.4byte	.LASF256
	.byte	0x7
	.2byte	0x148
	.4byte	0x152
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x4a
	.4byte	.LASF257
	.byte	0x7
	.2byte	0x149
	.4byte	0x23d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xe
	.4byte	0x7c7
	.4byte	0x25e4
	.uleb128 0xf
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x4a
	.4byte	.LASF258
	.byte	0x7
	.2byte	0x14b
	.4byte	0x25d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x4a
	.4byte	.LASF259
	.byte	0x7
	.2byte	0x150
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x4a
	.4byte	.LASF260
	.byte	0x7
	.2byte	0x153
	.4byte	0xd9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x4a
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x4a5
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glErrCode
	.uleb128 0x4a
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x4a6
	.4byte	0x7b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glErrFile
	.uleb128 0x4a
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x4a7
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glErrLine
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x20
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x4a
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
	.4byte	0x775
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2657
	.4byte	0x872
	.string	"glTexGeni"
	.4byte	0x8b1
	.string	"glVertex3f"
	.4byte	0x917
	.string	"glVertex4f"
	.4byte	0x963
	.string	"glVertex3fv"
	.4byte	0x988
	.string	"glVertex2f"
	.4byte	0x9ba
	.string	"glVertex2i"
	.4byte	0xa18
	.string	"glNormal3f"
	.4byte	0xa44
	.string	"glColor4f"
	.4byte	0xa8c
	.string	"glColor3f"
	.4byte	0xacb
	.string	"glColor3ub"
	.4byte	0xb12
	.string	"glColor4ub"
	.4byte	0xb68
	.string	"glColor3fv"
	.4byte	0xb8d
	.string	"glTexCoord2f"
	.4byte	0xbfa
	.string	"glLightN"
	.4byte	0xc40
	.string	"glMaterialfv"
	.4byte	0xcc8
	.string	"glFogf"
	.4byte	0xd8d
	.string	"glFogi"
	.4byte	0xdc8
	.string	"_glSetErrorEx"
	.4byte	0xdf1
	.string	"glColorMask"
	.4byte	0xe4a
	.string	"glGetIntegerv"
	.4byte	0xee7
	.string	"updateFog"
	.4byte	0x10b2
	.string	"glHint"
	.4byte	0x1103
	.string	"glGetError"
	.4byte	0x114e
	.string	"glPointSize"
	.4byte	0x1196
	.string	"glLineWidth"
	.4byte	0x11de
	.string	"glActiveTextureARB"
	.4byte	0x1229
	.string	"glClientActiveTextureARB"
	.4byte	0x1272
	.string	"glMultiTexCoord2fARB"
	.4byte	0x12e1
	.string	"glGetFloatv"
	.4byte	0x13a1
	.string	"glDepthFunc"
	.4byte	0x140c
	.string	"glDepthMask"
	.4byte	0x1477
	.string	"glFogfv"
	.4byte	0x14d2
	.string	"glFlush"
	.4byte	0x150d
	.string	"glClearDepth"
	.4byte	0x1555
	.string	"glClearColor"
	.4byte	0x15cc
	.string	"glClear"
	.4byte	0x162f
	.string	"glGetMaterialfv"
	.4byte	0x16cc
	.string	"glMaterialf"
	.4byte	0x1730
	.string	"glLightModelfv"
	.4byte	0x17a9
	.string	"glViewport"
	.4byte	0x1810
	.string	"glDepthRange"
	.4byte	0x1863
	.string	"glFrontFace"
	.4byte	0x18ca
	.string	"glCullFace"
	.4byte	0x1931
	.string	"glScissor"
	.4byte	0x19bb
	.string	"glBlendFunc"
	.4byte	0x1a52
	.string	"glColorMaterial"
	.4byte	0x1ac6
	.string	"glClipPlane"
	.4byte	0x1b17
	.string	"glShadeModel"
	.4byte	0x1b5b
	.string	"glPolygonMode"
	.4byte	0x1bac
	.string	"glLightModeli"
	.4byte	0x1bfd
	.string	"glPolygonOffset"
	.4byte	0x1c50
	.string	"glDisable"
	.4byte	0x1d20
	.string	"glIsEnabled"
	.4byte	0x1df8
	.string	"glLightf"
	.4byte	0x1ed9
	.string	"glEnable"
	.4byte	0x1fad
	.string	"glLightfv"
	.4byte	0x20bf
	.string	"glNormal3fv"
	.4byte	0x2103
	.string	"_tempcolorelement"
	.4byte	0x2115
	.string	"_tempnormalelement"
	.4byte	0x2137
	.string	"_temptexcoordelement"
	.4byte	0x2149
	.string	"norm"
	.4byte	0x215b
	.string	"vert"
	.4byte	0x217d
	.string	"tex"
	.4byte	0x218f
	.string	"color"
	.4byte	0x21b2
	.string	"_normalelements"
	.4byte	0x21c4
	.string	"_vertexelements"
	.4byte	0x21ed
	.string	"_texcoordelements"
	.4byte	0x2210
	.string	"_colorelements"
	.4byte	0x2222
	.string	"vert_i"
	.4byte	0x2234
	.string	"_type"
	.4byte	0x2246
	.string	"_GLtype"
	.4byte	0x2258
	.string	"cur_tex"
	.4byte	0x226a
	.string	"cur_tex_client"
	.4byte	0x227c
	.string	"depthtestenabled"
	.4byte	0x228e
	.string	"depthupdate"
	.4byte	0x22a0
	.string	"depthfunction"
	.4byte	0x22b2
	.string	"_cleardepth"
	.4byte	0x22c4
	.string	"model_stack"
	.4byte	0x22d6
	.string	"projection_stack"
	.4byte	0x22f8
	.string	"texture_stack"
	.4byte	0x230a
	.string	"curmtx"
	.4byte	0x2322
	.string	"cur_mode"
	.4byte	0x2344
	.string	"lights"
	.4byte	0x2356
	.string	"globAmbient"
	.4byte	0x2368
	.string	"curmat"
	.4byte	0x237a
	.string	"gxcullfaceanabled"
	.4byte	0x238c
	.string	"gxwinding"
	.4byte	0x239e
	.string	"lighting"
	.4byte	0x23b0
	.string	"blend_type"
	.4byte	0x23c2
	.string	"blend_src"
	.4byte	0x23d4
	.string	"blend_dst"
	.4byte	0x23e6
	.string	"blend_op"
	.4byte	0x23f8
	.string	"cull_mode"
	.4byte	0x240a
	.string	"cur_state"
	.4byte	0x241c
	.string	"fb_max_height"
	.4byte	0x242e
	.string	"fb_max_width"
	.4byte	0x2440
	.string	"scissor_test"
	.4byte	0x2452
	.string	"scissorInfo"
	.4byte	0x2464
	.string	"viewPort"
	.4byte	0x2476
	.string	"normNear"
	.4byte	0x2488
	.string	"normFar"
	.4byte	0x249a
	.string	"line_width"
	.4byte	0x24ac
	.string	"point_size"
	.4byte	0x24be
	.string	"pack"
	.4byte	0x24d0
	.string	"unpack"
	.4byte	0x24f3
	.string	"color_write_mask"
	.4byte	0x2506
	.string	"copy_mat_enabled"
	.4byte	0x2519
	.string	"copy_material"
	.4byte	0x252c
	.string	"_clearcolor"
	.4byte	0x254f
	.string	"Trans"
	.4byte	0x2562
	.string	"fog_enable"
	.4byte	0x2575
	.string	"fog_mode"
	.4byte	0x2588
	.string	"fog_startz"
	.4byte	0x259b
	.string	"fog_endz"
	.4byte	0x25ae
	.string	"fog_density"
	.4byte	0x25c1
	.string	"fog_color"
	.4byte	0x25e4
	.string	"glTexEnvs"
	.4byte	0x25f7
	.string	"read_mode"
	.4byte	0x260a
	.string	"call_offset"
	.4byte	0x261d
	.string	"glErrCode"
	.4byte	0x2630
	.string	"glErrFile"
	.4byte	0x2643
	.string	"glErrLine"
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
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	.LBB102-.Ltext0
	.4byte	.LBE102-.Ltext0
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB387-.Ltext0
	.4byte	.LBE387-.Ltext0
	.4byte	.LBB392-.Ltext0
	.4byte	.LBE392-.Ltext0
	.4byte	.LBB391-.Ltext0
	.4byte	.LBE391-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF120:
	.string	"glVertex2f"
.LASF185:
	.string	"plane"
.LASF137:
	.string	"params"
.LASF121:
	.string	"glVertex2i"
.LASF52:
	.string	"Stack"
.LASF8:
	.string	"char"
.LASF170:
	.string	"glGetMaterialfv"
.LASF17:
	.string	"GLint"
.LASF63:
	.string	"quad_t"
.LASF73:
	.string	"boxInfo"
.LASF18:
	.string	"GLubyte"
.LASF225:
	.string	"globAmbient"
.LASF221:
	.string	"texture_stack"
.LASF235:
	.string	"cur_state"
.LASF101:
	.string	"Carg"
.LASF141:
	.string	"glGetIntegerv"
.LASF236:
	.string	"fb_max_height"
.LASF57:
	.string	"diffuse"
.LASF0:
	.string	"unsigned int"
.LASF117:
	.string	"glVertex3f"
.LASF206:
	.string	"_normalelements"
.LASF65:
	.string	"_mat"
.LASF181:
	.string	"sfactor"
.LASF113:
	.string	"coord"
.LASF58:
	.string	"specular"
.LASF110:
	.string	"line"
.LASF111:
	.string	"GX_Position3f32"
.LASF208:
	.string	"_texcoordelements"
.LASF190:
	.string	"glPolygonOffset"
.LASF84:
	.string	"_trans"
.LASF60:
	.string	"spotCutoff"
.LASF169:
	.string	"clear_depth"
.LASF88:
	.string	"_tex_env"
.LASF226:
	.string	"curmat"
.LASF45:
	.string	"mode"
.LASF215:
	.string	"depthtestenabled"
.LASF250:
	.string	"_clearcolor"
.LASF118:
	.string	"glVertex4f"
.LASF94:
	.string	"maxlod"
.LASF69:
	.string	"GL_STATE_NONE"
.LASF108:
	.string	"glTexEnvSet"
.LASF33:
	.string	"_gx_litobj"
.LASF197:
	.string	"glEnable"
.LASF223:
	.string	"cur_mode"
.LASF207:
	.string	"_vertexelements"
.LASF37:
	.string	"GXColorf"
.LASF102:
	.string	"CargOp"
.LASF218:
	.string	"_cleardepth"
.LASF193:
	.string	"glDisable"
.LASF135:
	.string	"glMaterialfv"
.LASF202:
	.string	"_tempnormalelement"
.LASF214:
	.string	"cur_tex_client"
.LASF205:
	.string	"vert"
.LASF165:
	.string	"glClearColor"
.LASF253:
	.string	"fog_mode"
.LASF122:
	.string	"_glSetErrorEx"
.LASF255:
	.string	"fog_endz"
.LASF211:
	.string	"_type"
.LASF11:
	.string	"float"
.LASF136:
	.string	"face"
.LASF86:
	.string	"bias"
.LASF32:
	.string	"GXColor"
.LASF47:
	.string	"farZclip"
.LASF243:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF109:
	.string	"file"
.LASF24:
	.string	"GLclampd"
.LASF251:
	.string	"Trans"
.LASF245:
	.string	"pack"
.LASF66:
	.string	"emissive"
.LASF240:
	.string	"viewPort"
.LASF89:
	.string	"min_filter"
.LASF219:
	.string	"model_stack"
.LASF247:
	.string	"color_write_mask"
.LASF266:
	.string	"c:\\\\projects\\\\wii\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF39:
	.string	"enable"
.LASF258:
	.string	"glTexEnvs"
.LASF230:
	.string	"blend_type"
.LASF150:
	.string	"glPointSize"
.LASF162:
	.string	"glFlush"
.LASF157:
	.string	"glGetFloatv"
.LASF171:
	.string	"glMaterialf"
.LASF140:
	.string	"glColorMask"
.LASF257:
	.string	"fog_color"
.LASF263:
	.string	"glErrLine"
.LASF262:
	.string	"glErrFile"
.LASF145:
	.string	"draw_axis_align_blanker_quad"
.LASF149:
	.string	"target"
.LASF74:
	.string	"width"
.LASF248:
	.string	"copy_mat_enabled"
.LASF268:
	.string	"GX_End"
.LASF213:
	.string	"cur_tex"
.LASF54:
	.string	"enabled"
.LASF173:
	.string	"glViewport"
.LASF116:
	.string	"glTexGeni"
.LASF100:
	.string	"comAlpha"
.LASF212:
	.string	"_GLtype"
.LASF158:
	.string	"glDepthFunc"
.LASF168:
	.string	"clear_color"
.LASF244:
	.string	"point_size"
.LASF67:
	.string	"shininess"
.LASF242:
	.string	"normFar"
.LASF21:
	.string	"GLfloat"
.LASF146:
	.string	"GXprojection2D"
.LASF249:
	.string	"copy_material"
.LASF183:
	.string	"glColorMaterial"
.LASF153:
	.string	"texture"
.LASF126:
	.string	"glColor3ub"
.LASF71:
	.string	"GL_STATE_NEWLIST"
.LASF222:
	.string	"curmtx"
.LASF178:
	.string	"glCullFace"
.LASF239:
	.string	"scissorInfo"
.LASF200:
	.string	"glNormal3fv"
.LASF199:
	.string	"lightPos"
.LASF176:
	.string	"far_val"
.LASF228:
	.string	"gxwinding"
.LASF131:
	.string	"glColor3fv"
.LASF34:
	.string	"GXLightObj"
.LASF87:
	.string	"ColorTrans"
.LASF231:
	.string	"blend_src"
.LASF68:
	.string	"Material"
.LASF155:
	.string	"glMultiTexCoord2fARB"
.LASF217:
	.string	"depthfunction"
.LASF177:
	.string	"glFrontFace"
.LASF238:
	.string	"scissor_test"
.LASF220:
	.string	"projection_stack"
.LASF125:
	.string	"glColor3f"
.LASF209:
	.string	"_colorelements"
.LASF143:
	.string	"updateFog"
.LASF77:
	.string	"swap"
.LASF56:
	.string	"ambient"
.LASF5:
	.string	"long long int"
.LASF43:
	.string	"VertexArray"
.LASF128:
	.string	"blue"
.LASF154:
	.string	"glClientActiveTextureARB"
.LASF19:
	.string	"GLuint"
.LASF70:
	.string	"GL_STATE_BEGIN"
.LASF164:
	.string	"depth"
.LASF259:
	.string	"read_mode"
.LASF51:
	.string	"elem_size"
.LASF194:
	.string	"glGetError"
.LASF72:
	.string	"glState"
.LASF61:
	.string	"constant"
.LASF138:
	.string	"glFogf"
.LASF139:
	.string	"glFogi"
.LASF252:
	.string	"fog_enable"
.LASF16:
	.string	"GLbitfield"
.LASF25:
	.string	"bool"
.LASF156:
	.string	"mytex"
.LASF124:
	.string	"glColor4f"
.LASF30:
	.string	"_vecf"
.LASF35:
	.string	"VertexElement"
.LASF85:
	.string	"scale"
.LASF96:
	.string	"biasclamp"
.LASF79:
	.string	"row_length"
.LASF22:
	.string	"GLclampf"
.LASF216:
	.string	"depthupdate"
.LASF41:
	.string	"size"
.LASF64:
	.string	"LightObj"
.LASF115:
	.string	"param"
.LASF91:
	.string	"wrap_s"
.LASF92:
	.string	"wrap_t"
.LASF62:
	.string	"linear"
.LASF167:
	.string	"mask"
.LASF232:
	.string	"blend_dst"
.LASF75:
	.string	"height"
.LASF203:
	.string	"_temptexcoordelement"
.LASF46:
	.string	"nearZclip"
.LASF127:
	.string	"green"
.LASF27:
	.string	"true"
.LASF12:
	.string	"long double"
.LASF48:
	.string	"PrjMtx"
.LASF151:
	.string	"glLineWidth"
.LASF23:
	.string	"GLdouble"
.LASF13:
	.string	"size_t"
.LASF161:
	.string	"glFogfv"
.LASF184:
	.string	"glClipPlane"
.LASF204:
	.string	"norm"
.LASF246:
	.string	"unpack"
.LASF55:
	.string	"spotDir"
.LASF38:
	.string	"_array"
.LASF59:
	.string	"spotExponent"
.LASF95:
	.string	"lodbias"
.LASF224:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF198:
	.string	"glLightfv"
.LASF93:
	.string	"minlod"
.LASF90:
	.string	"max_filter"
.LASF133:
	.string	"light"
.LASF9:
	.string	"long int"
.LASF195:
	.string	"glIsEnabled"
.LASF14:
	.string	"GLenum"
.LASF142:
	.string	"glLightN"
.LASF152:
	.string	"glActiveTextureARB"
.LASF53:
	.string	"_light"
.LASF160:
	.string	"flag"
.LASF105:
	.string	"color"
.LASF20:
	.string	"GLsizei"
.LASF260:
	.string	"call_offset"
.LASF201:
	.string	"_tempcolorelement"
.LASF182:
	.string	"dfactor"
.LASF179:
	.string	"glScissor"
.LASF81:
	.string	"skip_pixels"
.LASF103:
	.string	"Aarg"
.LASF98:
	.string	"maxaniso"
.LASF132:
	.string	"glTexCoord2f"
.LASF148:
	.string	"glHint"
.LASF189:
	.string	"glLightModeli"
.LASF256:
	.string	"fog_density"
.LASF40:
	.string	"stride"
.LASF229:
	.string	"lighting"
.LASF129:
	.string	"glColor4ub"
.LASF159:
	.string	"glDepthMask"
.LASF7:
	.string	"long unsigned int"
.LASF265:
	.string	"c:/projects/wii/gl2gx/libogc/../source/gl.c"
.LASF112:
	.string	"GX_Color4u8"
.LASF130:
	.string	"alpha"
.LASF233:
	.string	"blend_op"
.LASF254:
	.string	"fog_startz"
.LASF83:
	.string	"pixelStore"
.LASF123:
	.string	"glNormal3f"
.LASF175:
	.string	"near_val"
.LASF264:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF42:
	.string	"type"
.LASF166:
	.string	"glClear"
.LASF1:
	.string	"unsigned char"
.LASF29:
	.string	"Mtx44"
.LASF80:
	.string	"skip_rows"
.LASF119:
	.string	"glVertex3fv"
.LASF261:
	.string	"glErrCode"
.LASF26:
	.string	"false"
.LASF210:
	.string	"vert_i"
.LASF78:
	.string	"lsb_first"
.LASF107:
	.string	"alpha_scale"
.LASF180:
	.string	"glBlendFunc"
.LASF147:
	.string	"identity_matrix"
.LASF28:
	.string	"Vector"
.LASF99:
	.string	"comRGB"
.LASF237:
	.string	"fb_max_width"
.LASF241:
	.string	"normNear"
.LASF187:
	.string	"glShadeModel"
.LASF31:
	.string	"_gx_color"
.LASF97:
	.string	"edgelod"
.LASF227:
	.string	"gxcullfaceanabled"
.LASF188:
	.string	"glPolygonMode"
.LASF192:
	.string	"units"
.LASF49:
	.string	"_stack"
.LASF3:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF196:
	.string	"glLightf"
.LASF50:
	.string	"begin"
.LASF144:
	.string	"calc_density"
.LASF174:
	.string	"glDepthRange"
.LASF10:
	.string	"double"
.LASF82:
	.string	"alignment"
.LASF172:
	.string	"glLightModelfv"
.LASF36:
	.string	"TexCoordElement"
.LASF44:
	.string	"_prj_mat"
.LASF191:
	.string	"factor"
.LASF15:
	.string	"GLboolean"
.LASF106:
	.string	"rgb_scale"
.LASF267:
	.string	"_glState"
.LASF76:
	.string	"_pixelStore"
.LASF114:
	.string	"pname"
.LASF163:
	.string	"glClearDepth"
.LASF234:
	.string	"cull_mode"
.LASF104:
	.string	"AargOp"
.LASF134:
	.string	"lightNum"
.LASF186:
	.string	"equation"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
