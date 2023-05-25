	.file	"render.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	MaximumFan, @function
MaximumFan:
.LFB2:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/render.c"
	.loc 1 162 0
	.cfi_startproc
.LVL0:
	.loc 1 171 0
	lwz 9,20(4)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L13
	lbz 0,20(9)
	cmpwi 7,0,0
	bne- 7,.L13
	mr 7,4
	li 10,1
	.loc 1 172 0
	li 5,1
	b .L6
.LVL1:
.L3:
	.loc 1 171 0 discriminator 2
	lbz 6,20(11)
	cmpwi 7,6,0
	bne- 7,.L2
	.loc 1 171 0 is_stmt 0
	mr 9,11
.LVL2:
.L6:
	.loc 1 172 0 is_stmt 1 discriminator 1
	stb 5,20(9)
	.loc 1 173 0 discriminator 1
	mr 8,10
	.loc 1 172 0 discriminator 1
	stw 0,16(9)
.LVL3:
	.loc 1 175 0 discriminator 1
	addi 10,10,1
.LVL4:
	.loc 1 171 0 discriminator 1
	lwz 7,8(7)
.LVL5:
	mr 0,9
	lwz 11,20(7)
	lbz 6,21(11)
	cmpwi 7,6,0
	bne+ 7,.L3
.LVL6:
.L2:
	.loc 1 175 0 discriminator 1
	lwz 11,4(4)
	lwz 11,20(11)
	lbz 0,21(11)
	cmpwi 7,0,0
	beq- 7,.L14
	.loc 1 175 0 is_stmt 0
	lbz 0,20(11)
	.loc 1 176 0 is_stmt 1
	li 7,1
	.loc 1 175 0
	cmpwi 7,0,0
	beq+ 7,.L19
	b .L14
.LVL7:
.L7:
	.loc 1 175 0 is_stmt 0 discriminator 2
	lbz 0,20(10)
	cmpwi 7,0,0
	bne- 7,.L4
	.loc 1 175 0
	mr 11,10
.L19:
	.loc 1 176 0 is_stmt 1 discriminator 1
	stb 7,20(11)
	.loc 1 177 0 discriminator 1
	addi 8,8,1
.LVL8:
	.loc 1 176 0 discriminator 1
	stw 9,16(11)
.LVL9:
	.loc 1 175 0 discriminator 1
	lwz 9,4(4)
	lwz 4,12(9)
.LVL10:
	mr 9,11
.LVL11:
	lwz 10,4(4)
	lwz 10,20(10)
	lbz 0,21(10)
	cmpwi 7,0,0
	bne+ 7,.L7
.LVL12:
.L4:
	.loc 1 181 0 discriminator 1
	cmpwi 7,11,0
	li 0,0
	beq- 7,.L9
.LVL13:
.L17:
	.loc 1 181 0 is_stmt 0 discriminator 2
	stb 0,20(11)
	lwz 11,16(11)
.LVL14:
	cmpwi 7,11,0
	bne+ 7,.L17
.L9:
	.loc 1 182 0 is_stmt 1
	lis 9,RenderFan@ha
	stw 8,0(3)
	la 0,RenderFan@l(9)
	stw 4,4(3)
	stw 0,8(3)
	.loc 1 183 0
	blr
.LVL15:
.L13:
	.loc 1 167 0
	li 8,0
	.loc 1 168 0
	li 9,0
	b .L2
.LVL16:
.L14:
	.loc 1 175 0
	mr 11,9
	b .L4
	.cfi_endproc
.LFE2:
	.size	MaximumFan, .-MaximumFan
	.align 2
	.type	MaximumStrip, @function
MaximumStrip:
.LFB3:
	.loc 1 189 0
	.cfi_startproc
.LVL17:
	.loc 1 205 0
	lwz 9,20(4)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L35
	lbz 0,20(9)
	cmpwi 7,0,0
	bne- 7,.L35
	.loc 1 206 0
	li 11,1
	stw 0,16(9)
.LVL18:
	stb 11,20(9)
	.loc 1 208 0
	lwz 11,12(4)
	lwz 10,4(11)
.LVL19:
	.loc 1 209 0
	lwz 11,20(10)
	lbz 0,21(11)
	cmpwi 7,0,0
	beq- 7,.L37
	lbz 0,20(11)
	cmpwi 7,0,0
	bne- 7,.L37
	li 7,0
	.loc 1 210 0
	li 0,1
	b .L23
.LVL20:
.L25:
	.loc 1 205 0 discriminator 2
	lbz 8,20(9)
	cmpwi 7,8,0
	bne- 7,.L48
	.loc 1 206 0
	stb 0,20(9)
	stw 11,16(9)
.LVL21:
	.loc 1 208 0
	lwz 11,12(10)
	lwz 10,4(11)
.LVL22:
	.loc 1 209 0
	lwz 11,20(10)
.LVL23:
	lbz 8,21(11)
	cmpwi 7,8,0
	beq- 7,.L47
	.loc 1 209 0 is_stmt 0 discriminator 1
	lbz 8,20(11)
	cmpwi 7,8,0
	bne- 7,.L47
.L23:
	.loc 1 210 0 is_stmt 1
	stb 0,20(11)
	.loc 1 205 0
	addi 7,7,2
	.loc 1 210 0
	stw 9,16(11)
.LVL24:
	.loc 1 188 0
	addi 6,7,1
	.loc 1 205 0
	lwz 10,8(10)
.LVL25:
	lwz 9,20(10)
	lbz 8,21(9)
	cmpwi 7,8,0
	bne+ 7,.L25
.L48:
	rlwinm 12,7,0,31,31
.LVL26:
.L22:
	.loc 1 214 0
	lwz 9,4(4)
	.loc 1 201 0
	li 8,0
	.loc 1 214 0
	lwz 9,20(9)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L27
	lbz 0,20(9)
	cmpwi 7,0,0
	bne- 7,.L27
	.loc 1 215 0
	li 0,1
	stw 11,16(9)
.LVL27:
	stb 0,20(9)
	.loc 1 218 0
	li 5,1
	.loc 1 219 0
	li 6,1
	.loc 1 217 0
	lwz 11,4(4)
	lwz 4,12(11)
.LVL28:
	.loc 1 218 0
	lwz 11,4(4)
.LVL29:
	lwz 11,20(11)
	lbz 0,21(11)
	cmpwi 7,0,0
	bne+ 7,.L28
	b .L51
.LVL30:
.L50:
	.loc 1 219 0
	stb 6,20(11)
	.loc 1 188 0
	addi 5,8,1
	.loc 1 219 0
	stw 9,16(11)
.LVL31:
	.loc 1 214 0
	lwz 9,4(4)
	lwz 9,8(9)
	lwz 4,4(9)
.LVL32:
	lwz 9,4(4)
.LVL33:
	lwz 9,20(9)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L27
	.loc 1 214 0 is_stmt 0 discriminator 2
	lbz 0,20(9)
	cmpwi 7,0,0
	bne- 7,.L27
	.loc 1 215 0 is_stmt 1
	stb 6,20(9)
	stw 11,16(9)
.LVL34:
	.loc 1 217 0
	lwz 11,4(4)
	lwz 4,12(11)
.LVL35:
	.loc 1 218 0
	lwz 11,4(4)
.LVL36:
	lwz 11,20(11)
	lbz 0,21(11)
	cmpwi 7,0,0
	beq- 7,.L42
.L28:
	.loc 1 218 0 is_stmt 0 discriminator 1
	lbz 0,20(11)
	.loc 1 214 0 is_stmt 1 discriminator 1
	addi 8,8,2
	.loc 1 218 0 discriminator 1
	cmpwi 7,0,0
	beq+ 7,.L50
.L42:
	.loc 1 218 0 is_stmt 0
	mr 11,9
	mr 8,5
.LVL37:
.L27:
	.loc 1 224 0 is_stmt 1
	cmpwi 7,12,0
	.loc 1 223 0
	add 7,7,8
.LVL38:
	.loc 1 224 0
	bne- 7,.L30
	.loc 1 225 0
	lwz 4,4(10)
.LVL39:
.L31:
	.loc 1 236 0 discriminator 1
	cmpwi 7,11,0
	beq- 7,.L32
	.loc 1 236 0 is_stmt 0 discriminator 2
	li 0,0
.LVL40:
.L44:
	stb 0,20(11)
	lwz 11,16(11)
.LVL41:
	cmpwi 7,11,0
	bne+ 7,.L44
.L32:
	.loc 1 237 0 is_stmt 1
	lis 9,RenderStrip@ha
	stw 7,0(3)
	la 0,RenderStrip@l(9)
	stw 4,4(3)
	stw 0,8(3)
	.loc 1 238 0
	blr
.LVL42:
.L30:
	.loc 1 226 0
	andi. 0,8,1
	beq- 0,.L31
	.loc 1 233 0
	lwz 4,8(4)
.LVL43:
	.loc 1 232 0
	addi 7,7,-1
.LVL44:
	b .L31
.LVL45:
.L47:
	.loc 1 209 0
	rlwinm 12,6,0,31,31
	.loc 1 205 0
	mr 11,9
	.loc 1 207 0
	mr 7,6
	b .L22
.LVL46:
.L35:
	.loc 1 205 0
	mr 10,4
	li 12,0
	.loc 1 202 0
	li 11,0
	.loc 1 201 0
	li 7,0
	b .L22
.LVL47:
.L37:
	.loc 1 209 0
	mr 11,9
	li 12,1
	.loc 1 207 0
	li 7,1
	b .L22
.LVL48:
.L51:
	.loc 1 218 0
	mr 11,9
	.loc 1 216 0
	li 8,1
	b .L27
	.cfi_endproc
.LFE3:
	.size	MaximumStrip, .-MaximumStrip
	.align 2
	.type	ComputeNormal, @function
ComputeNormal:
.LFB9:
	.loc 1 374 0
	.cfi_startproc
.LVL49:
	.loc 1 376 0
	lwz 11,152(3)
	.loc 1 394 0
	cmpwi 6,5,0
	.loc 1 374 0
	mr 9,3
.LVL50:
	.loc 1 376 0
	addi 11,11,5
	slwi 11,11,5
	add 11,3,11
.LVL51:
	.loc 1 394 0
	bne- 6,.L53
.LVL52:
	.loc 1 395 0
	lis 10,.LC0@ha
	lfd 0,.LC0@l(10)
	stfd 0,16(4)
	stfd 0,8(4)
	stfd 0,0(4)
.LVL53:
.L53:
	.loc 1 399 0
	lfd 9,192(9)
	.loc 1 398 0
	addi 8,9,192
.LVL54:
	.loc 1 399 0
	lfd 12,160(9)
	.loc 1 365 0
	addi 10,9,224
	.loc 1 400 0
	lfd 10,200(9)
	.loc 1 379 0
	li 3,0
.LVL55:
	.loc 1 400 0
	lfd 13,168(9)
	.loc 1 399 0
	fsub 9,9,12
.LVL56:
	.loc 1 401 0
	lfd 11,208(9)
	.loc 1 423 0
	lis 7,.LC0@ha
	.loc 1 401 0
	lfd 0,176(9)
	.loc 1 400 0
	fsub 10,10,13
.LVL57:
	.loc 1 401 0
	fsub 11,11,0
.LVL58:
	.loc 1 402 0
	b .L54
.LVL59:
.L70:
	.loc 1 418 0
	lfd 4,.LC0@l(7)
	fcmpu 7,11,4
	cror 30,29,30
	bne- 7,.L67
	.loc 1 419 0
	fadd 10,10,5
.LVL60:
	fadd 7,7,6
.LVL61:
	fadd 9,9,8
.LVL62:
	stfd 10,0(4)
	stfd 7,8(4)
	stfd 9,16(4)
.LVL63:
.L58:
	.loc 1 427 0 discriminator 1
	fmr 11,12
.LVL64:
	.loc 1 429 0 discriminator 1
	addi 10,10,32
	.loc 1 427 0 discriminator 1
	fmr 10,13
	fmr 9,0
.LVL65:
.L54:
	.loc 1 402 0 discriminator 1
	addi 8,8,32
.LVL66:
	cmplw 7,11,8
	ble- 7,.L69
.LVL67:
	.loc 1 406 0
	lfd 0,176(9)
	lfd 12,16(10)
	.loc 1 404 0
	lfd 5,0(10)
	.loc 1 406 0
	fsub 12,12,0
	.loc 1 405 0
	lfd 8,8(10)
	.loc 1 404 0
	lfd 0,160(9)
	.loc 1 405 0
	lfd 13,168(9)
	.loc 1 410 0
	fmul 7,9,12
	.loc 1 413 0
	lfd 6,8(4)
	.loc 1 404 0
	fsub 0,5,0
.LVL68:
	.loc 1 413 0
	lfd 5,0(4)
	.loc 1 405 0
	fsub 13,8,13
.LVL69:
	.loc 1 413 0
	lfd 8,16(4)
	.loc 1 410 0
	fmsub 7,11,0,7
	.loc 1 409 0
	fmul 3,11,13
	.loc 1 411 0
	fmul 4,10,0
	.loc 1 413 0
	fmul 11,7,6
.LVL70:
	.loc 1 409 0
	fmsub 10,10,12,3
.LVL71:
	.loc 1 411 0
	fmsub 9,9,13,4
.LVL72:
	.loc 1 413 0
	fmadd 11,10,5,11
	fmadd 11,9,8,11
.LVL73:
	.loc 1 414 0
	beq- 6,.L70
	.loc 1 423 0
	lfd 10,.LC0@l(7)
.LVL74:
	fcmpu 7,11,10
	beq- 7,.L58
	.loc 1 425 0
	bng- 7,.L68
	.loc 1 426 0
	cmpwi 7,3,0
	blt- 7,.L63
	.loc 1 427 0
	li 3,1
.LVL75:
	b .L58
.LVL76:
.L67:
	.loc 1 421 0
	fsub 10,5,10
.LVL77:
	fsub 7,6,7
.LVL78:
	fsub 9,8,9
.LVL79:
	stfd 10,0(4)
	stfd 7,8(4)
	stfd 9,16(4)
	b .L58
.LVL80:
.L68:
	.loc 1 429 0
	cmpwi 7,3,1
	beq- 7,.L64
	.loc 1 430 0
	li 3,-1
.LVL81:
	b .L58
.LVL82:
.L69:
	blr
.LVL83:
.L63:
	.loc 1 426 0
	li 3,2
.LVL84:
	blr
.LVL85:
.L64:
	.loc 1 429 0
	li 3,2
.LVL86:
	.loc 1 435 0
	blr
	.cfi_endproc
.LFE9:
	.size	ComputeNormal, .-ComputeNormal
	.align 2
	.type	RenderFan, @function
RenderFan:
.LFB6:
	.loc 1 287 0
	.cfi_startproc
.LVL87:
	mflr 0
	stwu 1,-32(1)
.LCFI0:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 292 0
	lis 9,__gl_noBeginData@ha
	la 9,__gl_noBeginData@l(9)
	.loc 1 287 0
	stw 29,20(1)
	stw 0,36(1)
	mr 29,5
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	.loc 1 292 0
	lwz 0,3360(3)
	.loc 1 287 0
	stw 31,28(1)
	mr 31,4
	.cfi_offset 31, -4
	.loc 1 292 0
	cmpw 7,0,9
	.loc 1 287 0
	stw 27,12(1)
	stw 28,16(1)
	.loc 1 292 0
	beq- 7,.L72
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.loc 1 292 0 is_stmt 0 discriminator 1
	mtctr 0
	li 3,6
.LVL88:
	lwz 4,3640(30)
.LVL89:
	.loc 1 293 0 is_stmt 1 discriminator 1
	lis 28,__gl_noVertexData@ha
	la 28,__gl_noVertexData@l(28)
	.loc 1 292 0 discriminator 1
	bctrl
.LVL90:
	.loc 1 293 0 discriminator 1
	lwz 0,3368(30)
	lwz 9,16(31)
	cmpw 7,0,28
	beq- 7,.L74
.L90:
	lwz 4,3640(30)
	mtctr 0
	lwz 3,12(9)
	bctrl
.L75:
	.loc 1 294 0
	lwz 0,3368(30)
	lwz 9,4(31)
	cmpw 7,0,28
	beq- 7,.L76
	.loc 1 294 0 is_stmt 0 discriminator 1
	lwz 9,16(9)
	mtctr 0
	lwz 4,3640(30)
	lwz 3,12(9)
	bctrl
.L86:
	.loc 1 297 0 is_stmt 1 discriminator 1
	li 27,1
.L87:
	.loc 1 296 0 discriminator 1
	lwz 9,20(31)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L81
.L88:
	.loc 1 296 0 is_stmt 0 discriminator 2
	lbz 0,20(9)
	cmpwi 7,0,0
	bne- 7,.L81
	.loc 1 297 0 is_stmt 1
	stb 27,20(9)
	.loc 1 298 0
	addi 29,29,-1
.LVL91:
	.loc 1 300 0
	lwz 0,3368(30)
	.loc 1 299 0
	lwz 31,8(31)
.LVL92:
	.loc 1 300 0
	cmpw 7,0,28
	lwz 9,4(31)
	beq- 7,.L79
	.loc 1 300 0 is_stmt 0 discriminator 1
	lwz 9,16(9)
	mtctr 0
	lwz 4,3640(30)
	lwz 3,12(9)
	bctrl
	.loc 1 296 0 is_stmt 1 discriminator 1
	lwz 9,20(31)
	lbz 0,21(9)
	cmpwi 7,0,0
	bne+ 7,.L88
.L81:
	.loc 1 303 0
	cmpwi 7,29,0
	bne- 7,.L89
	.loc 1 304 0
	lwz 0,3372(30)
	lis 9,__gl_noEndData@ha
	la 9,__gl_noEndData@l(9)
	cmpw 7,0,9
	beq- 7,.L84
	.loc 1 304 0 is_stmt 0 discriminator 1
	lwz 3,3640(30)
	mtctr 0
	bctrl
	.loc 1 305 0 is_stmt 1 discriminator 1
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL93:
	lwz 30,24(1)
.LVL94:
	lwz 31,28(1)
.LVL95:
	addi 1,1,32
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL96:
.L79:
.LCFI2:
	.cfi_restore_state
	.loc 1 300 0 discriminator 2
	lwz 0,136(30)
	lwz 9,16(9)
	mtctr 0
	lwz 3,12(9)
	bctrl
	b .L87
.L84:
	.loc 1 304 0 discriminator 2
	lwz 0,140(30)
	mtctr 0
	bctrl
	.loc 1 305 0 discriminator 2
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL97:
	lwz 30,24(1)
.LVL98:
	lwz 31,28(1)
.LVL99:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
.LVL100:
.L76:
.LCFI4:
	.cfi_restore_state
	.loc 1 294 0 discriminator 2
	lwz 0,136(30)
	lwz 9,16(9)
	mtctr 0
	lwz 3,12(9)
	bctrl
	b .L86
.L72:
	.loc 1 292 0 discriminator 2
	lwz 0,128(3)
	li 3,6
	.loc 1 293 0 discriminator 2
	lis 28,__gl_noVertexData@ha
	.loc 1 292 0 discriminator 2
	mtctr 0
	.loc 1 293 0 discriminator 2
	la 28,__gl_noVertexData@l(28)
	.loc 1 292 0 discriminator 2
	bctrl
	.loc 1 293 0 discriminator 2
	lwz 0,3368(30)
	lwz 9,16(31)
	cmpw 7,0,28
	bne+ 7,.L90
.L74:
	lwz 0,136(30)
	lwz 3,12(9)
	mtctr 0
	bctrl
	b .L75
.L89:
	.loc 1 303 0 discriminator 1
	lis 3,.LC1@ha
	lis 5,.LANCHOR0@ha
	lis 6,.LC2@ha
	la 3,.LC1@l(3)
	li 4,303
	la 5,.LANCHOR0@l(5)
	la 6,.LC2@l(6)
	bl __assert_func
	.cfi_endproc
.LFE6:
	.size	RenderFan, .-RenderFan
	.align 2
	.type	RenderStrip, @function
RenderStrip:
.LFB7:
	.loc 1 309 0
	.cfi_startproc
.LVL101:
	mflr 0
	stwu 1,-32(1)
.LCFI5:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 314 0
	lis 9,__gl_noBeginData@ha
	la 9,__gl_noBeginData@l(9)
	.loc 1 309 0
	stw 29,20(1)
	stw 0,36(1)
	mr 29,5
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	stw 30,24(1)
	mr 30,4
	.cfi_offset 30, -8
	.loc 1 314 0
	lwz 0,3360(3)
	.loc 1 309 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 314 0
	cmpw 7,0,9
	.loc 1 309 0
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	.loc 1 314 0
	beq- 7,.L92
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.loc 1 314 0 is_stmt 0 discriminator 1
	mtctr 0
	li 3,5
.LVL102:
	lwz 4,3640(31)
.LVL103:
	.loc 1 315 0 is_stmt 1 discriminator 1
	lis 28,__gl_noVertexData@ha
	la 28,__gl_noVertexData@l(28)
	.loc 1 314 0 discriminator 1
	bctrl
.LVL104:
	.loc 1 315 0 discriminator 1
	lwz 0,3368(31)
	lwz 9,16(30)
	cmpw 7,0,28
	beq- 7,.L94
.L112:
	lwz 4,3640(31)
	mtctr 0
	lwz 3,12(9)
	bctrl
.L95:
	.loc 1 316 0
	lwz 0,3368(31)
	lwz 9,4(30)
	cmpw 7,0,28
	beq- 7,.L96
	.loc 1 316 0 is_stmt 0 discriminator 1
	lwz 9,16(9)
	mtctr 0
	lwz 4,3640(31)
	lwz 3,12(9)
	bctrl
.L108:
	.loc 1 319 0 is_stmt 1 discriminator 1
	li 27,1
.L109:
	.loc 1 318 0 discriminator 1
	lwz 9,20(30)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L101
.L110:
	.loc 1 318 0 is_stmt 0 discriminator 2
	lbz 0,20(9)
	cmpwi 7,0,0
	bne- 7,.L101
	.loc 1 319 0 is_stmt 1
	stb 27,20(9)
	.loc 1 308 0
	mr 26,29
	addi 29,29,-1
.LVL105:
	.loc 1 322 0
	lwz 0,3368(31)
	.loc 1 321 0
	lwz 9,12(30)
	.loc 1 322 0
	cmpw 7,0,28
	.loc 1 321 0
	lwz 30,4(9)
.LVL106:
	.loc 1 322 0
	lwz 9,16(30)
.LVL107:
	beq- 7,.L99
	.loc 1 322 0 is_stmt 0 discriminator 1
	lwz 4,3640(31)
	mtctr 0
	lwz 3,12(9)
	bctrl
.L100:
	.loc 1 323 0 is_stmt 1
	lwz 9,20(30)
	lbz 0,21(9)
	cmpwi 7,0,0
	beq- 7,.L101
	.loc 1 323 0 is_stmt 0 discriminator 1
	lbz 0,20(9)
	cmpwi 7,0,0
	bne- 7,.L101
	.loc 1 325 0 is_stmt 1
	stb 27,20(9)
	.loc 1 308 0
	addi 29,26,-2
.LVL108:
	.loc 1 328 0
	lwz 0,3368(31)
	.loc 1 327 0
	lwz 30,8(30)
.LVL109:
	.loc 1 328 0
	cmpw 7,0,28
	lwz 9,4(30)
	beq- 7,.L102
	.loc 1 328 0 is_stmt 0 discriminator 1
	lwz 9,16(9)
	mtctr 0
	lwz 4,3640(31)
	lwz 3,12(9)
	bctrl
	.loc 1 318 0 is_stmt 1 discriminator 1
	lwz 9,20(30)
	lbz 0,21(9)
	cmpwi 7,0,0
	bne+ 7,.L110
.LVL110:
.L101:
	.loc 1 331 0
	cmpwi 7,29,0
	bne- 7,.L111
	.loc 1 332 0
	lwz 0,3372(31)
	lis 9,__gl_noEndData@ha
	la 9,__gl_noEndData@l(9)
	cmpw 7,0,9
	beq- 7,.L106
	.loc 1 332 0 is_stmt 0 discriminator 1
	lwz 3,3640(31)
	mtctr 0
	bctrl
	.loc 1 333 0 is_stmt 1 discriminator 1
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
.LVL111:
	lwz 30,24(1)
.LVL112:
	lwz 31,28(1)
.LVL113:
	addi 1,1,32
	.cfi_remember_state
.LCFI6:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL114:
.L99:
.LCFI7:
	.cfi_restore_state
	.loc 1 322 0 discriminator 2
	lwz 0,136(31)
	lwz 3,12(9)
	mtctr 0
	bctrl
	b .L100
.LVL115:
.L102:
	.loc 1 328 0 discriminator 2
	lwz 0,136(31)
	lwz 9,16(9)
	mtctr 0
	lwz 3,12(9)
	bctrl
	b .L109
.L106:
	.loc 1 332 0 discriminator 2
	lwz 0,140(31)
	mtctr 0
	bctrl
	.loc 1 333 0 discriminator 2
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
.LVL116:
	lwz 30,24(1)
.LVL117:
	lwz 31,28(1)
.LVL118:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI8:
	.cfi_def_cfa_offset 0
	blr
.LVL119:
.L96:
.LCFI9:
	.cfi_restore_state
	.loc 1 316 0 discriminator 2
	lwz 0,136(31)
	lwz 9,16(9)
	mtctr 0
	lwz 3,12(9)
	bctrl
	b .L108
.L92:
	.loc 1 314 0 discriminator 2
	lwz 0,128(3)
	li 3,5
	.loc 1 315 0 discriminator 2
	lis 28,__gl_noVertexData@ha
	.loc 1 314 0 discriminator 2
	mtctr 0
	.loc 1 315 0 discriminator 2
	la 28,__gl_noVertexData@l(28)
	.loc 1 314 0 discriminator 2
	bctrl
	.loc 1 315 0 discriminator 2
	lwz 0,3368(31)
	lwz 9,16(30)
	cmpw 7,0,28
	bne+ 7,.L112
.L94:
	lwz 0,136(31)
	lwz 3,12(9)
	mtctr 0
	bctrl
	b .L95
.L111:
	.loc 1 331 0 discriminator 1
	lis 5,.LANCHOR0@ha
	lis 3,.LC1@ha
	la 5,.LANCHOR0@l(5)
	lis 6,.LC2@ha
	la 3,.LC1@l(3)
	li 4,331
	addi 5,5,12
	la 6,.LC2@l(6)
	bl __assert_func
	.cfi_endproc
.LFE7:
	.size	RenderStrip, .-RenderStrip
	.align 2
	.type	RenderTriangle, @function
RenderTriangle:
.LFB4:
	.loc 1 242 0
	.cfi_startproc
.LVL120:
	.loc 1 246 0
	cmpwi 7,5,1
	.loc 1 242 0
	mflr 0
	stwu 1,-8(1)
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 246 0
	bne- 7,.L115
	.cfi_offset 65, 4
	.loc 1 247 0
	lwz 0,124(3)
	lwz 9,20(4)
	stw 0,16(9)
	stw 9,124(3)
	stb 5,20(9)
	.loc 1 248 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI11:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L115:
.LCFI12:
	.cfi_restore_state
.LBB4:
.LBB5:
	.loc 1 246 0
	lis 5,.LANCHOR0@ha
.LVL121:
	lis 3,.LC1@ha
.LVL122:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC3@ha
	la 3,.LC1@l(3)
	li 4,246
.LVL123:
	addi 5,5,24
	la 6,.LC3@l(6)
	bl __assert_func
.LBE5:
.LBE4:
	.cfi_endproc
.LFE4:
	.size	RenderTriangle, .-RenderTriangle
	.align 2
	.globl __gl_renderMesh
	.type	__gl_renderMesh, @function
__gl_renderMesh:
.LFB0:
	.loc 1 86 0
	.cfi_startproc
.LVL124:
	mflr 0
	stwu 1,-56(1)
.LCFI13:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 29,44(1)
	.loc 1 92 0
	mr 29,4
	.cfi_offset 29, -12
	.loc 1 86 0
	stw 0,60(1)
	.loc 1 90 0
	li 0,0
	.cfi_offset 65, 4
	.loc 1 86 0
	stw 30,48(1)
	.loc 1 92 0
	lwzu 30,64(29)
	.cfi_offset 30, -8
.LVL125:
	.loc 1 86 0
	stw 31,52(1)
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 92 0
	cmpw 7,30,29
	.loc 1 86 0
	stw 24,24(1)
	stw 25,28(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 28,40(1)
	.loc 1 90 0
	stw 0,124(3)
	.loc 1 92 0
	beq- 7,.L116
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.loc 1 92 0 is_stmt 0 discriminator 2
	mr 9,30
.LVL126:
.L118:
	.loc 1 93 0 is_stmt 1 discriminator 2
	stb 0,20(9)
	.loc 1 92 0 discriminator 2
	lwz 9,0(9)
.LVL127:
	cmpw 7,9,29
	bne+ 7,.L118
.LBB10:
.LBB11:
	.loc 1 127 0
	lis 27,RenderTriangle@ha
	b .L141
.LVL128:
.L119:
.LBE11:
.LBE10:
	.loc 1 95 0
	lwz 30,0(30)
.LVL129:
	cmpw 7,30,29
	beq- 7,.L146
.LVL130:
.L141:
	.loc 1 101 0
	lbz 0,21(30)
	cmpwi 7,0,0
	beq- 7,.L119
	.loc 1 101 0 is_stmt 0 discriminator 1
	lbz 0,20(30)
	cmpwi 7,0,0
	bne+ 7,.L119
.LBB17:
.LBB12:
	.loc 1 129 0 is_stmt 1
	lbz 0,120(31)
.LBE12:
.LBE17:
	.loc 1 505 0
	lwz 25,8(30)
.LVL131:
.LBB18:
.LBB13:
	.loc 1 129 0
	cmpwi 7,0,0
	beq- 7,.L147
	.loc 1 127 0
	la 28,RenderTriangle@l(27)
	.loc 1 125 0
	li 26,1
.LVL132:
.L120:
	.loc 1 138 0
	mr 3,31
	mr 4,25
	mr 5,26
	mtctr 28
	bctrl
.LBE13:
.LBE18:
	.loc 1 103 0
	lbz 0,20(30)
	cmpwi 7,0,0
	bne+ 7,.L119
	.loc 1 103 0 is_stmt 0 discriminator 1
	lis 5,.LANCHOR0@ha
	lis 3,.LC1@ha
	la 5,.LANCHOR0@l(5)
	lis 6,.LC4@ha
	la 3,.LC1@l(3)
	li 4,103
	addi 5,5,40
	la 6,.LC4@l(6)
	bl __assert_func
.LVL133:
.L147:
.LBB19:
.LBB14:
	.loc 1 130 0 is_stmt 1
	addi 3,1,8
	mr 4,25
	bl MaximumFan
	lwz 26,8(1)
.LVL134:
	lwz 24,12(1)
.LVL135:
	cmpwi 7,26,1
	lwz 28,16(1)
.LVL136:
	bgt- 7,.L121
	.loc 1 505 0
	mr 24,25
	.loc 1 127 0
	la 28,RenderTriangle@l(27)
	.loc 1 125 0
	li 26,1
.L121:
.LVL137:
	.loc 1 131 0
	lwz 4,12(25)
	addi 3,1,8
.LVL138:
	bl MaximumFan
.LVL139:
	lwz 0,8(1)
	lwz 9,12(1)
	cmpw 7,0,26
	lwz 11,16(1)
	ble- 7,.L122
	mr 28,11
.LVL140:
	mr 24,9
.LVL141:
	mr 26,0
.LVL142:
.L122:
	.loc 1 132 0
	lwz 9,8(25)
	addi 3,1,8
.LVL143:
	lwz 4,4(9)
	bl MaximumFan
.LVL144:
	lwz 0,8(1)
	lwz 9,12(1)
	cmpw 7,0,26
	lwz 11,16(1)
	ble- 7,.L123
	mr 28,11
.LVL145:
	mr 24,9
.LVL146:
	mr 26,0
.LVL147:
.L123:
	.loc 1 134 0
	addi 3,1,8
.LVL148:
	mr 4,25
	bl MaximumStrip
.LVL149:
	lwz 0,8(1)
	lwz 9,12(1)
	cmpw 7,26,0
	lwz 11,16(1)
	bge- 7,.L124
	mr 28,11
.LVL150:
	mr 24,9
.LVL151:
	mr 26,0
.LVL152:
.L124:
	.loc 1 135 0
	lwz 4,12(25)
	addi 3,1,8
.LVL153:
	bl MaximumStrip
.LVL154:
	lwz 0,8(1)
	lwz 9,12(1)
	cmpw 7,26,0
	lwz 11,16(1)
	bge- 7,.L125
	mr 28,11
.LVL155:
	mr 24,9
.LVL156:
	mr 26,0
.LVL157:
.L125:
	.loc 1 136 0
	lwz 9,8(25)
	addi 3,1,8
.LVL158:
	lwz 4,4(9)
	bl MaximumStrip
.LVL159:
	lwz 0,8(1)
	lwz 25,12(1)
.LVL160:
	cmpw 7,26,0
	lwz 9,16(1)
	bge- 7,.L139
	mr 28,9
.LVL161:
	mr 26,0
.LVL162:
	b .L120
.LVL163:
.L148:
.LBE14:
.LBE19:
.LBB20:
.LBB21:
	.loc 1 262 0
	lwz 28,16(28)
.LVL164:
	cmpwi 7,28,0
	bne+ 7,.L128
	.loc 1 282 0
	lwz 0,3372(31)
	lis 9,__gl_noEndData@ha
	la 9,__gl_noEndData@l(9)
	cmpw 7,0,9
	beq- 7,.L135
	lwz 3,3640(31)
	mtctr 0
	bctrl
.L136:
.LBE21:
.LBE20:
	.loc 1 108 0
	li 0,0
	stw 0,124(31)
.LVL165:
.L116:
	.loc 1 110 0
	lwz 0,60(1)
	lwz 24,24(1)
	mtlr 0
	lwz 25,28(1)
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
.LVL166:
	addi 1,1,56
	.cfi_remember_state
.LCFI14:
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
.LVL167:
.L146:
.LCFI15:
	.cfi_restore_state
	.loc 1 95 0
	lwz 28,124(31)
	.loc 1 106 0
	cmpwi 7,28,0
	beq- 7,.L116
.LVL168:
.LBB25:
.LBB22:
	.loc 1 260 0
	lwz 0,3360(31)
	lis 9,__gl_noBeginData@ha
	la 9,__gl_noBeginData@l(9)
	cmpw 7,0,9
	beq- 7,.L127
	li 3,4
	lwz 4,3640(31)
	mtctr 0
	bctrl
.LVL169:
.L129:
	lis 27,__gl_noVertexData@ha
	.loc 1 274 0
	lis 25,__gl_noEdgeFlagData@ha
.LBE22:
.LBE25:
.LBB26:
.LBB15:
	.loc 1 136 0
	li 26,-1
	la 27,__gl_noVertexData@l(27)
.LBE15:
.LBE26:
.LBB27:
.LBB23:
	.loc 1 274 0
	la 25,__gl_noEdgeFlagData@l(25)
.LVL170:
.L128:
	.loc 1 265 0
	lwz 30,8(28)
.LVL171:
	b .L134
.LVL172:
.L149:
	.loc 1 277 0
	lwz 4,3640(31)
	mtctr 0
	lwz 3,12(9)
	bctrl
.L133:
	.loc 1 279 0
	lwz 30,12(30)
.LVL173:
	.loc 1 280 0
	lwz 0,8(28)
	cmpw 7,30,0
	beq- 7,.L148
.LVL174:
.L134:
	.loc 1 267 0
	lbz 0,120(31)
	cmpwi 7,0,0
	beq- 7,.L130
	.loc 1 271 0
	lwz 9,4(30)
	lwz 9,20(9)
	lbz 29,21(9)
	cntlzw 29,29
	srwi 29,29,5
.LVL175:
	.loc 1 272 0
	cmpw 7,29,26
	beq- 7,.L130
.LVL176:
	.loc 1 274 0
	lwz 0,3364(31)
	cmpw 7,0,25
	beq- 7,.L131
	mr 3,29
	lwz 4,3640(31)
	mtctr 0
	mr 26,29
	bctrl
.LVL177:
.L130:
	.loc 1 277 0
	lwz 0,3368(31)
	lwz 9,16(30)
	cmpw 7,0,27
	bne+ 7,.L149
	lwz 0,136(31)
	lwz 3,12(9)
	mtctr 0
	bctrl
	b .L133
.LVL178:
.L131:
	.loc 1 274 0
	lwz 0,132(31)
	mr 3,29
	mr 26,29
	mtctr 0
	bctrl
	b .L130
.LVL179:
.L139:
.LBE23:
.LBE27:
.LBB28:
.LBB16:
	.loc 1 136 0
	mr 25,24
.LVL180:
	b .L120
.LVL181:
.L135:
.LBE16:
.LBE28:
.LBB29:
.LBB24:
	.loc 1 282 0
	lwz 0,140(31)
	mtctr 0
	bctrl
	b .L136
.LVL182:
.L127:
	.loc 1 260 0
	lwz 0,128(31)
	li 3,4
	mtctr 0
	bctrl
	b .L129
.LBE24:
.LBE29:
	.cfi_endproc
.LFE0:
	.size	__gl_renderMesh, .-__gl_renderMesh
	.align 2
	.globl __gl_renderBoundary
	.type	__gl_renderBoundary, @function
__gl_renderBoundary:
.LFB8:
	.loc 1 343 0
	.cfi_startproc
.LVL183:
	mflr 0
	stwu 1,-40(1)
.LCFI16:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 27,20(1)
	.loc 1 347 0
	mr 27,4
	.cfi_offset 27, -20
	.loc 1 343 0
	stw 0,44(1)
	stw 29,28(1)
	.loc 1 347 0
	lwzu 29,64(27)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL184:
	.loc 1 343 0
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
	.loc 1 347 0
	cmpw 7,29,27
	.loc 1 343 0
	stw 25,12(1)
	stw 26,16(1)
	stw 28,24(1)
	stw 31,36(1)
	.loc 1 347 0
	beq- 7,.L150
	.cfi_offset 31, -4
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.loc 1 349 0
	lis 25,__gl_noBeginData@ha
	lis 28,__gl_noVertexData@ha
	.loc 1 355 0
	lis 26,__gl_noEndData@ha
	.loc 1 349 0
	la 25,__gl_noBeginData@l(25)
	la 28,__gl_noVertexData@l(28)
	.loc 1 355 0
	la 26,__gl_noEndData@l(26)
.LVL185:
.L160:
	.loc 1 348 0
	lbz 0,21(29)
	cmpwi 7,0,0
	beq- 7,.L152
	.loc 1 349 0
	lwz 0,3360(30)
	cmpw 7,0,25
	beq- 7,.L153
	.loc 1 349 0 is_stmt 0 discriminator 1
	li 3,2
	lwz 4,3640(30)
	mtctr 0
	bctrl
.L154:
	.loc 1 350 0 is_stmt 1
	lwz 31,8(29)
.LVL186:
	b .L157
.LVL187:
.L164:
	.loc 1 352 0 discriminator 1
	mtctr 0
	lwz 4,3640(30)
	lwz 3,12(9)
	bctrl
	.loc 1 353 0 discriminator 1
	lwz 31,12(31)
.LVL188:
	.loc 1 354 0 discriminator 1
	lwz 0,8(29)
	cmpw 7,0,31
	beq- 7,.L163
.L157:
	.loc 1 352 0
	lwz 0,3368(30)
	lwz 9,16(31)
	cmpw 7,0,28
	bne+ 7,.L164
	.loc 1 352 0 is_stmt 0 discriminator 2
	lwz 0,136(30)
	lwz 3,12(9)
	mtctr 0
	bctrl
	.loc 1 353 0 is_stmt 1 discriminator 2
	lwz 31,12(31)
.LVL189:
	.loc 1 354 0 discriminator 2
	lwz 0,8(29)
	cmpw 7,0,31
	bne+ 7,.L157
.L163:
	.loc 1 355 0
	lwz 0,3372(30)
	cmpw 7,0,26
	beq- 7,.L158
	.loc 1 355 0 is_stmt 0 discriminator 1
	lwz 3,3640(30)
	mtctr 0
	bctrl
.LVL190:
.L152:
	.loc 1 347 0 is_stmt 1
	lwz 29,0(29)
.LVL191:
	cmpw 7,29,27
	bne+ 7,.L160
.L150:
	.loc 1 358 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
.LVL192:
	lwz 28,24(1)
	lwz 29,28(1)
.LVL193:
	lwz 30,32(1)
.LVL194:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI17:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL195:
.L153:
.LCFI18:
	.cfi_restore_state
	.loc 1 349 0 discriminator 2
	lwz 0,128(30)
	li 3,2
	mtctr 0
	bctrl
	b .L154
.LVL196:
.L158:
	.loc 1 355 0 discriminator 2
	lwz 0,140(30)
	mtctr 0
	bctrl
	.loc 1 347 0 discriminator 2
	lwz 29,0(29)
.LVL197:
	cmpw 7,29,27
	bne+ 7,.L160
	b .L150
	.cfi_endproc
.LFE8:
	.size	__gl_renderBoundary, .-__gl_renderBoundary
	.align 2
	.globl __gl_renderCache
	.type	__gl_renderCache, @function
__gl_renderCache:
.LFB10:
	.loc 1 445 0
	.cfi_startproc
.LVL198:
	mflr 0
	stwu 1,-64(1)
.LCFI19:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	mfcr 12
	stw 30,56(1)
	stw 0,68(1)
	.loc 1 454 0
	li 0,1
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_register 70, 12
	.loc 1 445 0
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL199:
	.loc 1 447 0
	lwz 30,152(3)
.LVL200:
	.loc 1 445 0
	stw 27,44(1)
	.loc 1 452 0
	cmpwi 7,30,2
	.loc 1 445 0
	stw 28,48(1)
	stw 29,52(1)
	stw 12,40(1)
	.loc 1 452 0
	ble- 7,.L166
	.cfi_offset 70, -24
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.loc 1 460 0
	lis 9,.LC0@ha
	.loc 1 457 0
	lfd 0,16(3)
	.loc 1 460 0
	lfd 13,.LC0@l(9)
	.loc 1 458 0
	lfd 12,24(3)
	.loc 1 460 0
	fcmpu 7,0,13
	.loc 1 459 0
	lfd 11,32(3)
	.loc 1 457 0
	stfd 0,8(1)
	.loc 1 458 0
	stfd 12,16(1)
	.loc 1 459 0
	stfd 11,24(1)
	.loc 1 460 0
	bne- 7,.L167
	.loc 1 460 0 is_stmt 0 discriminator 1
	fcmpu 7,12,13
	bne- 7,.L167
	fcmpu 7,11,13
	beq- 7,.L203
.LVL201:
.L167:
	.loc 1 464 0 is_stmt 1
	mr 3,31
	addi 4,1,8
	li 5,1
	bl ComputeNormal
.LVL202:
	.loc 1 467 0
	li 0,0
	.loc 1 465 0
	cmpwi 7,3,2
	beq- 7,.L166
	.loc 1 469 0
	cmpwi 4,3,0
	.loc 1 471 0
	li 0,1
	.loc 1 469 0
	beq- 4,.L166
	.loc 1 475 0
	lwz 9,96(31)
	xoris 11,9,0xfffe
	cmpwi 7,11,-30939
	beq 7,.L170
	xoris 11,9,0xfffe
	cmpwi 7,11,-30938
	beq 7,.L166
	xoris 11,9,0xfffe
	cmpwi 7,11,-30940
	beq 7,.L204
.L168:
	.loc 1 489 0
	lwz 0,3360(31)
	lis 9,__gl_noBeginData@ha
	la 9,__gl_noBeginData@l(9)
	cmpw 7,0,9
	lbz 9,121(31)
	beq- 7,.L171
	.loc 1 489 0 is_stmt 0 discriminator 1
	cmpwi 7,9,0
	li 3,2
.LVL203:
	bne- 7,.L172
	lwz 9,152(31)
	cmpwi 7,9,4
	mfcr 3
	rlwinm 3,3,29,1
	neg 3,3
	rlwinm 3,3,0,0,30
	addi 3,3,6
.L172:
	.loc 1 489 0 discriminator 6
	lwz 4,3640(31)
	mtctr 0
	bctrl
.L173:
	.loc 1 493 0 is_stmt 1
	lwz 0,3368(31)
	lis 29,__gl_noVertexData@ha
	la 29,__gl_noVertexData@l(29)
	cmpw 7,0,29
	beq- 7,.L175
	.loc 1 493 0 is_stmt 0 discriminator 1
	lwz 3,184(31)
	mtctr 0
	lwz 4,3640(31)
	bctrl
.L176:
	.loc 1 447 0 is_stmt 1
	addi 28,30,5
	slwi 28,28,5
	add 28,31,28
	.loc 1 494 0
	ble- 4,.L177
	.loc 1 495 0
	addi 30,31,192
.LVL204:
	cmplw 7,28,30
	bgt+ 7,.L199
	b .L178
.L205:
	.loc 1 496 0 discriminator 1
	lwz 4,3640(31)
	mtctr 0
	.loc 1 495 0 discriminator 1
	addi 30,30,32
.LVL205:
	.loc 1 496 0 discriminator 1
	bctrl
.LVL206:
	.loc 1 495 0 discriminator 1
	cmplw 7,28,30
	ble- 7,.L178
.L199:
	.loc 1 496 0
	lwz 0,3368(31)
	lwz 3,24(30)
	cmpw 7,0,29
	bne+ 7,.L205
	.loc 1 496 0 is_stmt 0 discriminator 2
	lwz 0,136(31)
	.loc 1 495 0 is_stmt 1 discriminator 2
	addi 30,30,32
.LVL207:
	.loc 1 496 0 discriminator 2
	mtctr 0
	bctrl
.LVL208:
	.loc 1 495 0 discriminator 2
	cmplw 7,28,30
	bgt+ 7,.L199
.L178:
	.loc 1 503 0
	lwz 0,3372(31)
	lis 9,__gl_noEndData@ha
	la 9,__gl_noEndData@l(9)
	cmpw 7,0,9
	beq- 7,.L185
	.loc 1 503 0 is_stmt 0 discriminator 1
	mtctr 0
	lwz 3,3640(31)
	bctrl
	.loc 1 504 0 is_stmt 1 discriminator 1
	li 0,1
.LVL209:
.L166:
	.loc 1 505 0
	mr 3,0
	lwz 0,68(1)
	lwz 12,40(1)
	mtlr 0
	lwz 27,44(1)
	lwz 28,48(1)
	mtcrf 8,12
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
.LVL210:
	addi 1,1,64
	.cfi_remember_state
.LCFI20:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL211:
.L204:
.LCFI21:
	.cfi_restore_state
	.loc 1 480 0
	bge+ 4,.L168
	b .L166
.L170:
	.loc 1 483 0
	bgt+ 4,.L166
	b .L168
.LVL212:
.L203:
	.loc 1 461 0
	addi 4,1,8
	li 5,0
	bl ComputeNormal
	b .L167
.L177:
	.loc 1 446 0
	addi 27,31,160
	.loc 1 499 0
	addi 30,28,-32
.LVL213:
	cmplw 7,27,30
	blt+ 7,.L200
	b .L178
.L206:
	.loc 1 500 0 discriminator 1
	lwz 4,3640(31)
	mtctr 0
	bctrl
.L183:
	.loc 1 499 0
	addi 30,30,-32
.LVL214:
	cmplw 7,27,30
	bge- 7,.L178
.L200:
	.loc 1 500 0
	lwz 0,3368(31)
	lwz 3,24(30)
	cmpw 7,0,29
	bne+ 7,.L206
	.loc 1 500 0 is_stmt 0 discriminator 2
	lwz 0,136(31)
	mtctr 0
	bctrl
	b .L183
.L185:
	.loc 1 503 0 is_stmt 1 discriminator 2
	lwz 0,140(31)
	mtctr 0
	bctrl
	.loc 1 504 0 discriminator 2
	li 0,1
	b .L166
.LVL215:
.L175:
	.loc 1 493 0 discriminator 2
	lwz 0,136(31)
	lwz 3,184(31)
	mtctr 0
	bctrl
	b .L176
.LVL216:
.L171:
	.loc 1 489 0 discriminator 2
	cmpwi 7,9,0
	lwz 0,128(31)
	li 3,2
.LVL217:
	bne- 7,.L174
	.loc 1 489 0 is_stmt 0 discriminator 1
	lwz 9,152(31)
	cmpwi 7,9,4
	mfcr 3
	rlwinm 3,3,29,1
	neg 3,3
	rlwinm 3,3,0,0,30
	addi 3,3,6
.L174:
	.loc 1 489 0 discriminator 6
	mtctr 0
	bctrl
	b .L173
	.cfi_endproc
.LFE10:
	.size	__gl_renderCache, .-__gl_renderCache
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	__FUNCTION__.8472, @object
	.size	__FUNCTION__.8472, 10
__FUNCTION__.8472:
	.string	"RenderFan"
	.zero	2
	.type	__FUNCTION__.8481, @object
	.size	__FUNCTION__.8481, 12
__FUNCTION__.8481:
	.string	"RenderStrip"
	.type	__FUNCTION__.8451, @object
	.size	__FUNCTION__.8451, 15
__FUNCTION__.8451:
	.string	"RenderTriangle"
	.zero	1
	.type	__FUNCTION__.8401, @object
	.size	__FUNCTION__.8401, 16
__FUNCTION__.8401:
	.string	"__gl_renderMesh"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC1:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/render.c"
	.zero	2
.LC2:
	.string	"size == 0"
	.zero	2
.LC3:
	.string	"size == 1"
	.zero	2
.LC4:
	.string	"f->marked"
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/glu.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/tess.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/mesh.h"
	.file 6 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/machine/setjmp.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/dict.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq-heap.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xebd
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x1
	.4byte	.LASF126
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x2
	.byte	0x93
	.4byte	0x28
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x94
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x9e
	.4byte	0x73
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0xa0
	.4byte	0x85
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.4byte	0x68
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x10f
	.4byte	0xbb
	.uleb128 0x8
	.4byte	.LASF15
	.2byte	0xe40
	.byte	0x4
	.byte	0x42
	.4byte	0x2a6
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x46
	.4byte	0x74c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x48
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x49
	.4byte	0x79f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4c
	.4byte	0x7b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x50
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x51
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x52
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x56
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x57
	.4byte	0x36
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0x5a
	.4byte	0x7b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.string	"pq"
	.byte	0x4
	.byte	0x5b
	.4byte	0x7bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x5c
	.4byte	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x5e
	.4byte	0x7e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x64
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x79
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x65
	.4byte	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0x68
	.4byte	0x7b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x69
	.4byte	0x7f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.byte	0x6a
	.4byte	0x808
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.byte	0x6b
	.4byte	0x810
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0x6c
	.4byte	0x822
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x71
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0x72
	.4byte	0x21
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0x73
	.4byte	0x828
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0x76
	.4byte	0x849
	.byte	0x3
	.byte	0x23
	.uleb128 0xd20
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0x77
	.4byte	0x860
	.byte	0x3
	.byte	0x23
	.uleb128 0xd24
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0x79
	.4byte	0x877
	.byte	0x3
	.byte	0x23
	.uleb128 0xd28
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0x7a
	.4byte	0x808
	.byte	0x3
	.byte	0x23
	.uleb128 0xd2c
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0x7b
	.4byte	0x849
	.byte	0x3
	.byte	0x23
	.uleb128 0xd30
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.byte	0x7c
	.4byte	0x89d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd34
	.uleb128 0xa
	.string	"env"
	.byte	0x4
	.byte	0x80
	.4byte	0x4b5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd38
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.byte	0x82
	.4byte	0x92
	.byte	0x3
	.byte	0x23
	.uleb128 0xe38
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x5
	.byte	0x2f
	.4byte	0x2b1
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x98
	.byte	0x5
	.byte	0xaa
	.4byte	0x2f6
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x5
	.byte	0xab
	.4byte	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x5
	.byte	0xac
	.4byte	0x37a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x5
	.byte	0xad
	.4byte	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x5
	.byte	0xae
	.4byte	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x5
	.byte	0x31
	.4byte	0x301
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x40
	.byte	0x5
	.byte	0x79
	.4byte	0x37a
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x5
	.byte	0x7a
	.4byte	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x5
	.byte	0x7b
	.4byte	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x5
	.byte	0x7c
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x5
	.byte	0x7d
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x5
	.byte	0x80
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"s"
	.byte	0x5
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.string	"t"
	.byte	0x5
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x5
	.byte	0x82
	.4byte	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x5
	.byte	0x32
	.4byte	0x385
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x18
	.byte	0x5
	.byte	0x85
	.4byte	0x3f4
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x5
	.byte	0x86
	.4byte	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x5
	.byte	0x87
	.4byte	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x5
	.byte	0x88
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x5
	.byte	0x89
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x5
	.byte	0x8c
	.4byte	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x5
	.byte	0x8d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x5
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x5
	.byte	0x33
	.4byte	0x3ff
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x20
	.byte	0x5
	.byte	0x91
	.4byte	0x47c
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x5
	.byte	0x92
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"Sym"
	.byte	0x5
	.byte	0x93
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x5
	.byte	0x94
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x5
	.byte	0x95
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"Org"
	.byte	0x5
	.byte	0x96
	.4byte	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x5
	.byte	0x97
	.4byte	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x5
	.byte	0x9a
	.4byte	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x5
	.byte	0x9b
	.4byte	0x21
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x5
	.byte	0x35
	.4byte	0x487
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2f6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3f4
	.uleb128 0xd
	.4byte	0x7a
	.4byte	0x4a9
	.uleb128 0xe
	.4byte	0x28
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x37a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x47c
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x118
	.4byte	0x4c1
	.uleb128 0xd
	.4byte	0x85
	.4byte	0x4d1
	.uleb128 0xe
	.4byte	0x28
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x7
	.byte	0x43
	.4byte	0x92
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x7
	.byte	0x44
	.4byte	0x4e7
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x14
	.byte	0x7
	.byte	0x65
	.4byte	0x51e
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x7
	.byte	0x66
	.4byte	0x51e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x7
	.byte	0x67
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"leq"
	.byte	0x7
	.byte	0x68
	.4byte	0x580
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x7
	.byte	0x45
	.4byte	0x529
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0xc
	.byte	0x7
	.byte	0x5f
	.4byte	0x560
	.uleb128 0xa
	.string	"key"
	.byte	0x7
	.byte	0x60
	.4byte	0x4d1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x7
	.byte	0x61
	.4byte	0x560
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x7
	.byte	0x62
	.4byte	0x560
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x51e
	.uleb128 0xf
	.byte	0x1
	.4byte	0x21
	.4byte	0x580
	.uleb128 0x10
	.4byte	0x92
	.uleb128 0x10
	.4byte	0x4d1
	.uleb128 0x10
	.4byte	0x4d1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x566
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x8
	.byte	0x60
	.4byte	0x92
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x8
	.byte	0x61
	.4byte	0x2f
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x8
	.byte	0x62
	.4byte	0x5a7
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x1c
	.byte	0x8
	.byte	0x67
	.4byte	0x616
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x8
	.byte	0x68
	.4byte	0x668
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x8
	.byte	0x69
	.4byte	0x66e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x8
	.byte	0x6a
	.4byte	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"max"
	.byte	0x8
	.byte	0x6a
	.4byte	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x8
	.byte	0x6b
	.4byte	0x591
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x8
	.byte	0x6c
	.4byte	0x21
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"leq"
	.byte	0x8
	.byte	0x6d
	.4byte	0x689
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x8
	.byte	0x64
	.4byte	0x62d
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x8
	.byte	0x64
	.4byte	0x591
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0x8
	.byte	0x64
	.4byte	0x616
	.uleb128 0x11
	.byte	0x8
	.byte	0x8
	.byte	0x65
	.4byte	0x65d
	.uleb128 0xa
	.string	"key"
	.byte	0x8
	.byte	0x65
	.4byte	0x586
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x8
	.byte	0x65
	.4byte	0x591
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x8
	.byte	0x65
	.4byte	0x638
	.uleb128 0x5
	.byte	0x4
	.4byte	0x62d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x65d
	.uleb128 0xf
	.byte	0x1
	.4byte	0x21
	.4byte	0x689
	.uleb128 0x10
	.4byte	0x586
	.uleb128 0x10
	.4byte	0x586
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x674
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0x9
	.byte	0x64
	.4byte	0x586
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0x9
	.byte	0x65
	.4byte	0x591
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x9
	.byte	0x66
	.4byte	0x6b0
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x1c
	.byte	0x9
	.byte	0x68
	.4byte	0x71f
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x9
	.byte	0x69
	.4byte	0x71f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x9
	.byte	0x6a
	.4byte	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x9
	.byte	0x6b
	.4byte	0x72b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x9
	.byte	0x6c
	.4byte	0x69a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"max"
	.byte	0x9
	.byte	0x6c
	.4byte	0x69a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x9
	.byte	0x6d
	.4byte	0x21
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"leq"
	.byte	0x9
	.byte	0x6e
	.4byte	0x746
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x59c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x68f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x725
	.uleb128 0xf
	.byte	0x1
	.4byte	0x21
	.4byte	0x746
	.uleb128 0x10
	.4byte	0x68f
	.uleb128 0x10
	.4byte	0x68f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x731
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0x4
	.byte	0x4
	.byte	0x36
	.4byte	0x76b
	.uleb128 0x13
	.4byte	.LASF94
	.sleb128 0
	.uleb128 0x13
	.4byte	.LASF95
	.sleb128 1
	.uleb128 0x13
	.4byte	.LASF96
	.sleb128 2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x20
	.byte	0x4
	.byte	0x3d
	.4byte	0x794
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x4
	.byte	0x3e
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x4
	.byte	0x3f
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x4
	.byte	0x40
	.4byte	0x76b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a6
	.uleb128 0x14
	.byte	0x1
	.4byte	0x7b1
	.uleb128 0x10
	.4byte	0x36
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4dc
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6a5
	.uleb128 0x14
	.byte	0x1
	.4byte	0x7de
	.uleb128 0x10
	.4byte	0xa9
	.uleb128 0x10
	.4byte	0x7de
	.uleb128 0x10
	.4byte	0x8c
	.uleb128 0x10
	.4byte	0x7de
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x92
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7c3
	.uleb128 0x14
	.byte	0x1
	.4byte	0x7f6
	.uleb128 0x10
	.4byte	0x41
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7ea
	.uleb128 0x14
	.byte	0x1
	.4byte	0x808
	.uleb128 0x10
	.4byte	0x92
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7fc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x80e
	.uleb128 0x14
	.byte	0x1
	.4byte	0x822
	.uleb128 0x10
	.4byte	0x79f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x816
	.uleb128 0xd
	.4byte	0x794
	.4byte	0x838
	.uleb128 0xe
	.4byte	0x28
	.byte	0x63
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	0x849
	.uleb128 0x10
	.4byte	0x36
	.uleb128 0x10
	.4byte	0x92
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x838
	.uleb128 0x14
	.byte	0x1
	.4byte	0x860
	.uleb128 0x10
	.4byte	0x41
	.uleb128 0x10
	.4byte	0x92
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x84f
	.uleb128 0x14
	.byte	0x1
	.4byte	0x877
	.uleb128 0x10
	.4byte	0x92
	.uleb128 0x10
	.4byte	0x92
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x866
	.uleb128 0x14
	.byte	0x1
	.4byte	0x89d
	.uleb128 0x10
	.4byte	0xa9
	.uleb128 0x10
	.4byte	0x7de
	.uleb128 0x10
	.4byte	0x8c
	.uleb128 0x10
	.4byte	0x7de
	.uleb128 0x10
	.4byte	0x92
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x87d
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0xc
	.byte	0x1
	.byte	0x38
	.4byte	0x8da
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x1
	.byte	0x39
	.4byte	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x1
	.byte	0x3a
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x1
	.byte	0x3b
	.4byte	0x8f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	0x8f0
	.uleb128 0x10
	.4byte	0x8f0
	.uleb128 0x10
	.4byte	0x493
	.uleb128 0x10
	.4byte	0x2f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xaf
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8da
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.byte	0x1
	.4byte	0x93f
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x1
	.byte	0x71
	.4byte	0x8f0
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x1
	.byte	0x71
	.4byte	0x4a9
	.uleb128 0x18
	.string	"e"
	.byte	0x1
	.byte	0x7a
	.4byte	0x493
	.uleb128 0x18
	.string	"max"
	.byte	0x1
	.byte	0x7b
	.4byte	0x8a3
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x1
	.byte	0x7b
	.4byte	0x8a3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.byte	0x1
	.4byte	0x97a
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x1
	.byte	0xf1
	.4byte	0x8f0
	.uleb128 0x1a
	.string	"e"
	.byte	0x1
	.byte	0xf1
	.4byte	0x493
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x1
	.byte	0xf1
	.4byte	0x2f
	.uleb128 0x1b
	.4byte	.LASF106
	.4byte	0x98a
	.byte	0x1
	.4byte	.LASF105
	.byte	0
	.uleb128 0xd
	.4byte	0x94
	.4byte	0x98a
	.uleb128 0xe
	.4byte	0x28
	.byte	0xe
	.byte	0
	.uleb128 0x1c
	.4byte	0x97a
	.uleb128 0x1d
	.4byte	.LASF107
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.4byte	0x8a3
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x9e5
	.uleb128 0x1e
	.4byte	.LASF109
	.byte	0x1
	.byte	0xa1
	.4byte	0x493
	.4byte	.LLST0
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0xa7
	.4byte	0x8a3
	.4byte	.LLST1
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa8
	.4byte	0x4a9
	.4byte	.LLST2
	.uleb128 0x20
	.string	"e"
	.byte	0x1
	.byte	0xa9
	.4byte	0x493
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.4byte	0x8a3
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa77
	.uleb128 0x1e
	.4byte	.LASF109
	.byte	0x1
	.byte	0xbc
	.4byte	0x493
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0xc8
	.4byte	0x8a3
	.4byte	.LLST5
	.uleb128 0x1f
	.4byte	.LASF110
	.byte	0x1
	.byte	0xc9
	.4byte	0x2f
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	.LASF111
	.byte	0x1
	.byte	0xc9
	.4byte	0x2f
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.byte	0xca
	.4byte	0x4a9
	.4byte	.LLST8
	.uleb128 0x20
	.string	"e"
	.byte	0x1
	.byte	0xcb
	.4byte	0x493
	.4byte	.LLST9
	.uleb128 0x1f
	.4byte	.LASF112
	.byte	0x1
	.byte	0xcb
	.4byte	0x493
	.4byte	.LLST10
	.uleb128 0x1f
	.4byte	.LASF50
	.byte	0x1
	.byte	0xcb
	.4byte	0x493
	.4byte	.LLST11
	.byte	0
	.uleb128 0x21
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x16d
	.byte	0x1
	.4byte	0x21
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xb73
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x16d
	.4byte	0x8f0
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x16d
	.4byte	0xa9
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x16d
	.4byte	0x21
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"v0"
	.byte	0x1
	.2byte	0x177
	.4byte	0xb73
	.4byte	.LLST13
	.uleb128 0x25
	.string	"vn"
	.byte	0x1
	.2byte	0x178
	.4byte	0xb73
	.byte	0x1
	.byte	0x5b
	.uleb128 0x24
	.string	"vc"
	.byte	0x1
	.2byte	0x179
	.4byte	0xb73
	.4byte	.LLST14
	.uleb128 0x24
	.string	"dot"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x7a
	.4byte	.LLST15
	.uleb128 0x24
	.string	"xc"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x7a
	.4byte	.LLST16
	.uleb128 0x24
	.string	"yc"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x7a
	.4byte	.LLST17
	.uleb128 0x24
	.string	"zc"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x7a
	.4byte	.LLST18
	.uleb128 0x24
	.string	"xp"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x7a
	.4byte	.LLST19
	.uleb128 0x24
	.string	"yp"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x7a
	.4byte	.LLST20
	.uleb128 0x24
	.string	"zp"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x7a
	.4byte	.LLST21
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x499
	.4byte	.LLST22
	.uleb128 0x26
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x17b
	.4byte	0x21
	.4byte	.LLST23
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x794
	.uleb128 0x27
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x11e
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST24
	.4byte	0xbd1
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x11e
	.4byte	0x8f0
	.4byte	.LLST25
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x493
	.4byte	.LLST26
	.uleb128 0x22
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x11e
	.4byte	0x2f
	.4byte	.LLST27
	.uleb128 0x29
	.4byte	.LASF106
	.4byte	0xbe1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8472
	.byte	0
	.uleb128 0xd
	.4byte	0x94
	.4byte	0xbe1
	.uleb128 0xe
	.4byte	0x28
	.byte	0x9
	.byte	0
	.uleb128 0x1c
	.4byte	0xbd1
	.uleb128 0x27
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x134
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST28
	.4byte	0xc3e
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x134
	.4byte	0x8f0
	.4byte	.LLST29
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.2byte	0x134
	.4byte	0x493
	.4byte	.LLST30
	.uleb128 0x22
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x134
	.4byte	0x2f
	.4byte	.LLST31
	.uleb128 0x29
	.4byte	.LASF106
	.4byte	0xc4e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8481
	.byte	0
	.uleb128 0xd
	.4byte	0x94
	.4byte	0xc4e
	.uleb128 0xe
	.4byte	0x28
	.byte	0xb
	.byte	0
	.uleb128 0x1c
	.4byte	0xc3e
	.uleb128 0x2a
	.4byte	0x93f
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST32
	.4byte	0xcc3
	.uleb128 0x2b
	.4byte	0x94c
	.4byte	.LLST33
	.uleb128 0x2b
	.4byte	0x957
	.4byte	.LLST34
	.uleb128 0x2b
	.4byte	0x960
	.4byte	.LLST35
	.uleb128 0x2c
	.4byte	0x96b
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8451
	.uleb128 0x2d
	.4byte	0x93f
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0xf1
	.uleb128 0x2e
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x2f
	.4byte	0x960
	.uleb128 0x2f
	.4byte	0x957
	.uleb128 0x2f
	.4byte	0x94c
	.uleb128 0x2c
	.4byte	0x96b
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8451
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.byte	0x1
	.4byte	0xd07
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x1
	.byte	0xfb
	.4byte	0x8f0
	.uleb128 0x1a
	.string	"f"
	.byte	0x1
	.byte	0xfb
	.4byte	0x4a9
	.uleb128 0x30
	.string	"e"
	.byte	0x1
	.2byte	0x100
	.4byte	0x493
	.uleb128 0x31
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x101
	.4byte	0x21
	.uleb128 0x31
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x102
	.4byte	0x21
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST36
	.4byte	0xddd
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x55
	.4byte	0x8f0
	.4byte	.LLST37
	.uleb128 0x1e
	.4byte	.LASF18
	.byte	0x1
	.byte	0x55
	.4byte	0x79f
	.4byte	.LLST38
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.byte	0x57
	.4byte	0x4a9
	.4byte	.LLST39
	.uleb128 0x29
	.4byte	.LASF106
	.4byte	0xded
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8401
	.uleb128 0x33
	.4byte	0x8fc
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x66
	.4byte	0xd99
	.uleb128 0x2b
	.4byte	0x909
	.4byte	.LLST40
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x35
	.4byte	0x91f
	.4byte	.LLST41
	.uleb128 0x35
	.4byte	0x928
	.4byte	.LLST42
	.uleb128 0x35
	.4byte	0x933
	.4byte	.LLST43
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0xcc3
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x6b
	.uleb128 0x2b
	.4byte	0xcdb
	.4byte	.LLST44
	.uleb128 0x2b
	.4byte	0xcd0
	.4byte	.LLST45
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0x98
	.uleb128 0x35
	.4byte	0xce4
	.4byte	.LLST46
	.uleb128 0x35
	.4byte	0xcee
	.4byte	.LLST47
	.uleb128 0x35
	.4byte	0xcfa
	.4byte	.LLST48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x94
	.4byte	0xded
	.uleb128 0xe
	.4byte	0x28
	.byte	0xf
	.byte	0
	.uleb128 0x1c
	.4byte	0xddd
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x156
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST49
	.4byte	0xe49
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x156
	.4byte	0x8f0
	.4byte	.LLST50
	.uleb128 0x22
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x156
	.4byte	0x79f
	.4byte	.LLST51
	.uleb128 0x24
	.string	"f"
	.byte	0x1
	.2byte	0x158
	.4byte	0x4a9
	.4byte	.LLST52
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.2byte	0x159
	.4byte	0x493
	.4byte	.LLST53
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1bc
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST54
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x8f0
	.4byte	.LLST55
	.uleb128 0x24
	.string	"v0"
	.byte	0x1
	.2byte	0x1be
	.4byte	0xb73
	.4byte	.LLST56
	.uleb128 0x24
	.string	"vn"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xb73
	.4byte	.LLST57
	.uleb128 0x24
	.string	"vc"
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xb73
	.4byte	.LLST58
	.uleb128 0x39
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x499
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x21
	.4byte	.LLST59
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1e
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xa
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x38
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
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x10
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderFan
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0xf
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderFan
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderFan
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0xf
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderFan
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0xf
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderFan
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0xf
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderFan
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x11
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderFan
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0xf
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderFan
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x10
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderFan
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0xf
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderFan
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x10
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderStrip
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0xf
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderStrip
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0xe
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderStrip
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x3
	.4byte	RenderStrip
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0xf
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderStrip
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0xe
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderStrip
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL45-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x10
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderStrip
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 20
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 20
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 12
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 4
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 12
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 12
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 160
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0x79
	.sleb128 160
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 192
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x4
	.byte	0x79
	.sleb128 192
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x10
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x10
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL90-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL90-1-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL119-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL119-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL104-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL104-1-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL119-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL167-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL182-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 64
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL182-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x10
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderTriangle
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x9
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x69
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0xf
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x69
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	RenderTriangle
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x9
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x8
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x5
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x9
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x8
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x5
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x9
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x8
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x5
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x9
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x8
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x5
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x9
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x8
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x7
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x9
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0xa
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0xc
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-1-.Ltext0
	.2byte	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL139-1-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0xc
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-1-.Ltext0
	.2byte	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL144-1-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0xc
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-1-.Ltext0
	.2byte	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL149-1-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0xc
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-1-.Ltext0
	.2byte	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL154-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0xc
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-1-.Ltext0
	.2byte	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL159-1-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0xc
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x9
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x69
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0xa
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-1-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 124
	.4byte	.LVL169-1-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL181-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL181-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 8
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL182-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL195-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL195-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 64
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL195-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL196-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL211-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 160
	.byte	0x9f
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x4
	.byte	0x8f
	.sleb128 160
	.byte	0x9f
	.4byte	.LVL211-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0x8f
	.sleb128 160
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0xc
	.byte	0x73
	.sleb128 152
	.byte	0x6
	.byte	0x23
	.uleb128 0x5
	.byte	0x35
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x8
	.byte	0x8e
	.sleb128 5
	.byte	0x35
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x8
	.byte	0x8e
	.sleb128 5
	.byte	0x35
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL215-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x8
	.byte	0x8e
	.sleb128 5
	.byte	0x35
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"prev"
.LASF58:
	.string	"pqHandle"
.LASF74:
	.string	"frame"
.LASF43:
	.string	"callEndData"
.LASF126:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/render.c"
.LASF127:
	.string	"TessState"
.LASF123:
	.string	"__gl_renderBoundary"
.LASF61:
	.string	"marked"
.LASF117:
	.string	"RenderFan"
.LASF38:
	.string	"cacheCount"
.LASF24:
	.string	"windingRule"
.LASF14:
	.string	"long long unsigned int"
.LASF42:
	.string	"callVertexData"
.LASF56:
	.string	"data"
.LASF93:
	.string	"order"
.LASF101:
	.string	"tess"
.LASF36:
	.string	"callMesh"
.LASF53:
	.string	"next"
.LASF72:
	.string	"DictList"
.LASF89:
	.string	"PQSortHandle"
.LASF13:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF99:
	.string	"eStart"
.LASF112:
	.string	"eTail"
.LASF77:
	.string	"PQHeapHandle"
.LASF16:
	.string	"state"
.LASF1:
	.string	"long int"
.LASF115:
	.string	"check"
.LASF110:
	.string	"headSize"
.LASF76:
	.string	"PQHeapKey"
.LASF8:
	.string	"GLfloat"
.LASF96:
	.string	"T_IN_CONTOUR"
.LASF37:
	.string	"emptyCache"
.LASF28:
	.string	"callCombine"
.LASF78:
	.string	"PriorityQHeap"
.LASF102:
	.string	"fOrig"
.LASF122:
	.string	"__gl_renderMesh"
.LASF103:
	.string	"newFace"
.LASF83:
	.string	"initialized"
.LASF0:
	.string	"unsigned int"
.LASF49:
	.string	"fHead"
.LASF67:
	.string	"activeRegion"
.LASF124:
	.string	"__gl_renderCache"
.LASF106:
	.string	"__FUNCTION__"
.LASF40:
	.string	"callBeginData"
.LASF30:
	.string	"boundaryOnly"
.LASF27:
	.string	"event"
.LASF81:
	.string	"size"
.LASF7:
	.string	"short unsigned int"
.LASF64:
	.string	"Onext"
.LASF111:
	.string	"tailSize"
.LASF41:
	.string	"callEdgeFlagData"
.LASF90:
	.string	"PriorityQSort"
.LASF44:
	.string	"callErrorData"
.LASF94:
	.string	"T_DORMANT"
.LASF22:
	.string	"tUnit"
.LASF80:
	.string	"handles"
.LASF51:
	.string	"eHeadSym"
.LASF15:
	.string	"GLUtesselator"
.LASF121:
	.string	"edgeState"
.LASF95:
	.string	"T_IN_POLYGON"
.LASF85:
	.string	"PQnode"
.LASF3:
	.string	"GLboolean"
.LASF114:
	.string	"norm"
.LASF55:
	.string	"anEdge"
.LASF120:
	.string	"newState"
.LASF29:
	.string	"flagBoundary"
.LASF18:
	.string	"mesh"
.LASF88:
	.string	"PQSortKey"
.LASF105:
	.string	"RenderTriangle"
.LASF20:
	.string	"normal"
.LASF71:
	.string	"DictListKey"
.LASF45:
	.string	"callCombineData"
.LASF92:
	.string	"keys"
.LASF87:
	.string	"PQhandleElem"
.LASF9:
	.string	"float"
.LASF60:
	.string	"trail"
.LASF109:
	.string	"eOrig"
.LASF4:
	.string	"unsigned char"
.LASF19:
	.string	"callError"
.LASF86:
	.string	"node"
.LASF6:
	.string	"short int"
.LASF66:
	.string	"Lface"
.LASF100:
	.string	"render"
.LASF48:
	.string	"vHead"
.LASF97:
	.string	"CachedVertex"
.LASF50:
	.string	"eHead"
.LASF34:
	.string	"callVertex"
.LASF62:
	.string	"inside"
.LASF73:
	.string	"head"
.LASF46:
	.string	"polygonData"
.LASF119:
	.string	"RenderLonelyTriangles"
.LASF26:
	.string	"dict"
.LASF118:
	.string	"RenderStrip"
.LASF35:
	.string	"callEnd"
.LASF91:
	.string	"heap"
.LASF125:
	.string	"GNU C 4.6.3"
.LASF12:
	.string	"char"
.LASF69:
	.string	"ActiveRegion"
.LASF2:
	.string	"GLenum"
.LASF10:
	.string	"GLdouble"
.LASF68:
	.string	"winding"
.LASF113:
	.string	"ComputeNormal"
.LASF79:
	.string	"nodes"
.LASF82:
	.string	"freeList"
.LASF31:
	.string	"lonelyTriList"
.LASF98:
	.string	"FaceCount"
.LASF21:
	.string	"sUnit"
.LASF52:
	.string	"GLUvertex"
.LASF23:
	.string	"relTolerance"
.LASF57:
	.string	"coords"
.LASF65:
	.string	"Lnext"
.LASF108:
	.string	"MaximumStrip"
.LASF70:
	.string	"jmp_buf"
.LASF32:
	.string	"callBegin"
.LASF104:
	.string	"RenderMaximumFaceGroup"
.LASF47:
	.string	"GLUmesh"
.LASF116:
	.string	"sign"
.LASF84:
	.string	"handle"
.LASF63:
	.string	"GLUhalfEdge"
.LASF17:
	.string	"lastEdge"
.LASF75:
	.string	"DictListNode"
.LASF107:
	.string	"MaximumFan"
.LASF59:
	.string	"GLUface"
.LASF39:
	.string	"cache"
.LASF11:
	.string	"double"
.LASF33:
	.string	"callEdgeFlag"
.LASF25:
	.string	"fatalError"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
