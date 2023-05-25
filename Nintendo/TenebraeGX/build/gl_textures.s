	.file	"gl_textures.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	getCur.constprop.12, @function
getCur.constprop.12:
.LFB137:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_textures.c"
	.loc 1 1418 0
	.cfi_startproc
.LVL0:
	.loc 1 1420 0
	lis 9,cur_tex@ha
	lis 11,glTexEnvs@ha
	lwz 0,cur_tex@l(9)
	la 11,glTexEnvs@l(11)
.LBB57:
.LBB58:
	.loc 1 1405 0
	lis 9,texMan@ha
.LBE58:
.LBE57:
	.loc 1 1420 0
	mulli 0,0,108
	add 11,11,0
	lwz 3,84(11)
.LVL1:
.LBB60:
.LBB59:
	.loc 1 1405 0
	la 11,texMan@l(9)
.LVL2:
	lwz 0,8(11)
	.loc 1 1404 0
	addi 3,3,-1
.LVL3:
	.loc 1 1405 0
	cmplw 7,3,0
	bge- 7,.L2
	.loc 1 1409 0
	lwz 11,4(11)
.LBE59:
.LBE60:
	.loc 1 1420 0
	lbzx 0,11,3
	cmpwi 7,0,0
	beq- 7,.L2
.LVL4:
.LBB61:
.LBB62:
	.loc 1 1421 0
	mulli 3,3,76
.LVL5:
	lwz 0,texMan@l(9)
	add 3,0,3
	blr
.LVL6:
.L2:
.LBE62:
.LBE61:
	.loc 1 1424 0
	lwz 3,texMan@l(9)
.LVL7:
	.loc 1 1425 0
	blr
	.cfi_endproc
.LFE137:
	.size	getCur.constprop.12, .-getCur.constprop.12
	.align 2
	.globl glPixelStorei
	.type	glPixelStorei, @function
glPixelStorei:
.LFB65:
	.loc 1 22 0
	.cfi_startproc
.LVL8:
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 23 0
	lis 9,cur_state@ha
	.loc 1 22 0
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 23 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L32
	.loc 1 25 0
	addi 3,3,-3312
.LVL9:
	cmplwi 7,3,21
	ble- 7,.L33
.LVL10:
.L8:
	.loc 1 104 0
	lis 4,.LC0@ha
.LVL11:
	li 3,1280
	la 4,.LC0@l(4)
	li 5,104
	bl _glSetErrorEx
	.loc 1 105 0
	b .L5
.LVL12:
.L33:
	.loc 1 25 0
	lis 9,.L21@ha
	slwi 3,3,2
.LVL13:
	la 9,.L21@l(9)
	lwzx 0,9,3
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L21:
	.long .L9-.L21
	.long .L10-.L21
	.long .L11-.L21
	.long .L12-.L21
	.long .L13-.L21
	.long .L14-.L21
	.long .L8-.L21
	.long .L8-.L21
	.long .L8-.L21
	.long .L8-.L21
	.long .L8-.L21
	.long .L8-.L21
	.long .L8-.L21
	.long .L8-.L21
	.long .L8-.L21
	.long .L8-.L21
	.long .L15-.L21
	.long .L16-.L21
	.long .L17-.L21
	.long .L18-.L21
	.long .L19-.L21
	.long .L20-.L21
	.section	".text"
.LVL14:
.L32:
	.loc 1 23 0 discriminator 1
	lis 4,.LC0@ha
	li 3,1282
.LVL15:
	la 4,.LC0@l(4)
	li 5,23
	bl _glSetErrorEx
.LVL16:
.L5:
	.loc 1 107 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL17:
.L20:
.LCFI2:
	.cfi_restore_state
	.loc 1 54 0
	cmplwi 7,4,8
	bgt- 7,.L25
	li 0,1
	slw 0,0,4
	andi. 9,0,278
	bne- 0,.L26
.L25:
	.loc 1 61 0
	lis 4,.LC0@ha
.LVL18:
	li 3,1281
	la 4,.LC0@l(4)
	li 5,61
	bl _glSetErrorEx
.L26:
	.loc 1 63 0
	lis 9,pack+16@ha
	stw 31,pack+16@l(9)
	.loc 1 64 0
	b .L5
.L19:
	.loc 1 46 0
	cmpwi 7,4,0
	blt- 7,.L34
	.loc 1 51 0
	lis 9,pack+12@ha
	stw 4,pack+12@l(9)
	.loc 1 52 0
	b .L5
.L18:
	.loc 1 38 0
	cmpwi 7,4,0
	blt- 7,.L35
	.loc 1 43 0
	lis 9,pack+8@ha
	stw 4,pack+8@l(9)
	.loc 1 44 0
	b .L5
.L17:
	.loc 1 30 0
	cmpwi 7,4,0
	blt- 7,.L36
	.loc 1 35 0
	lis 9,pack+4@ha
	stw 4,pack+4@l(9)
	.loc 1 36 0
	b .L5
.L16:
	.loc 1 28 0
	cntlzw 31,4
.LVL19:
	lis 9,pack+1@ha
	srwi 31,31,5
	xori 31,31,1
	stb 31,pack+1@l(9)
	b .L5
.L15:
	.loc 1 27 0
	cntlzw 31,4
	lis 9,pack@ha
	srwi 31,31,5
	xori 31,31,1
	stb 31,pack@l(9)
	b .L5
.L14:
	.loc 1 92 0
	cmplwi 7,4,8
	bgt- 7,.L30
	li 0,1
	slw 0,0,4
	andi. 9,0,278
	bne- 0,.L31
.L30:
	.loc 1 99 0
	lis 4,.LC0@ha
.LVL20:
	li 3,1281
	la 4,.LC0@l(4)
	li 5,99
	bl _glSetErrorEx
.L31:
	.loc 1 101 0
	lis 9,unpack+16@ha
	stw 31,unpack+16@l(9)
	.loc 1 102 0
	b .L5
.L13:
	.loc 1 84 0
	cmpwi 7,4,0
	blt- 7,.L37
	.loc 1 89 0
	lis 9,unpack+12@ha
	stw 4,unpack+12@l(9)
	.loc 1 90 0
	b .L5
.L12:
	.loc 1 76 0
	cmpwi 7,4,0
	blt- 7,.L38
	.loc 1 81 0
	lis 9,unpack+8@ha
	stw 4,unpack+8@l(9)
	.loc 1 82 0
	b .L5
.L11:
	.loc 1 68 0
	cmpwi 7,4,0
	blt- 7,.L39
	.loc 1 73 0
	lis 9,unpack+4@ha
	stw 4,unpack+4@l(9)
	.loc 1 74 0
	b .L5
.L10:
	.loc 1 66 0
	cntlzw 31,4
.LVL21:
	lis 9,unpack+1@ha
	srwi 31,31,5
	xori 31,31,1
	stb 31,unpack+1@l(9)
	b .L5
.L9:
	.loc 1 65 0
	cntlzw 31,4
	lis 9,unpack@ha
	srwi 31,31,5
	xori 31,31,1
	stb 31,unpack@l(9)
	b .L5
.L36:
	.loc 1 32 0
	lis 4,.LC0@ha
.LVL22:
	li 3,1281
	la 4,.LC0@l(4)
	li 5,32
	bl _glSetErrorEx
	.loc 1 33 0
	b .L5
.L35:
	.loc 1 40 0
	lis 4,.LC0@ha
	li 3,1281
	la 4,.LC0@l(4)
	li 5,40
	bl _glSetErrorEx
	.loc 1 41 0
	b .L5
.L34:
	.loc 1 48 0
	lis 4,.LC0@ha
	li 3,1281
	la 4,.LC0@l(4)
	li 5,48
	bl _glSetErrorEx
	.loc 1 49 0
	b .L5
.L39:
	.loc 1 70 0
	lis 4,.LC0@ha
	li 3,1281
	la 4,.LC0@l(4)
	li 5,70
	bl _glSetErrorEx
	.loc 1 71 0
	b .L5
.L38:
	.loc 1 78 0
	lis 4,.LC0@ha
	li 3,1281
	la 4,.LC0@l(4)
	li 5,78
	bl _glSetErrorEx
	.loc 1 79 0
	b .L5
.L37:
	.loc 1 86 0
	lis 4,.LC0@ha
	li 3,1281
	la 4,.LC0@l(4)
	li 5,86
	bl _glSetErrorEx
	.loc 1 87 0
	b .L5
	.cfi_endproc
.LFE65:
	.size	glPixelStorei, .-glPixelStorei
	.align 2
	.globl glPixelStoref
	.type	glPixelStoref, @function
glPixelStoref:
.LFB64:
	.loc 1 17 0
	.cfi_startproc
.LVL23:
	stwu 1,-16(1)
.LCFI3:
	.cfi_def_cfa_offset 16
	.loc 1 18 0
	fctiwz 1,1
.LVL24:
	addi 9,1,8
	stfiwx 1,0,9
	lwz 4,8(1)
	.loc 1 19 0
	addi 1,1,16
.LCFI4:
	.cfi_def_cfa_offset 0
	.loc 1 18 0
	b glPixelStorei
.LVL25:
	.cfi_endproc
.LFE64:
	.size	glPixelStoref, .-glPixelStoref
	.align 2
	.globl _glGetPixelStore
	.type	_glGetPixelStore, @function
_glGetPixelStore:
.LFB66:
	.loc 1 111 0
	.cfi_startproc
.LVL26:
	.loc 1 112 0
	addi 3,3,-3312
.LVL27:
	.loc 1 111 0
	mflr 0
	.loc 1 112 0
	cmplwi 7,3,21
	.loc 1 111 0
	stwu 1,-8(1)
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 112 0
	ble- 7,.L57
	.cfi_offset 65, 4
.LVL28:
.L42:
	.loc 1 127 0
	lis 4,.LC0@ha
.LVL29:
	li 3,1280
	la 4,.LC0@l(4)
	li 5,127
	bl _glSetErrorEx
.L41:
	.loc 1 130 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI6:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL30:
.L57:
.LCFI7:
	.cfi_restore_state
	.loc 1 112 0
	lis 9,.L55@ha
	slwi 3,3,2
.LVL31:
	la 9,.L55@l(9)
	lwzx 0,9,3
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L55:
	.long .L43-.L55
	.long .L44-.L55
	.long .L45-.L55
	.long .L46-.L55
	.long .L47-.L55
	.long .L48-.L55
	.long .L42-.L55
	.long .L42-.L55
	.long .L42-.L55
	.long .L42-.L55
	.long .L42-.L55
	.long .L42-.L55
	.long .L42-.L55
	.long .L42-.L55
	.long .L42-.L55
	.long .L42-.L55
	.long .L49-.L55
	.long .L50-.L55
	.long .L51-.L55
	.long .L52-.L55
	.long .L53-.L55
	.long .L54-.L55
	.section	".text"
.L54:
	.loc 1 119 0
	lis 9,pack+16@ha
	lwz 0,pack+16@l(9)
	stw 0,0(4)
	b .L41
.L43:
	.loc 1 120 0
	lis 9,unpack@ha
	lbz 0,unpack@l(9)
	stw 0,0(4)
	b .L41
.L44:
	.loc 1 121 0
	lis 9,unpack+1@ha
	lbz 0,unpack+1@l(9)
	stw 0,0(4)
	b .L41
.L45:
	.loc 1 122 0
	lis 9,unpack+4@ha
	lwz 0,unpack+4@l(9)
	stw 0,0(4)
	b .L41
.L46:
	.loc 1 123 0
	lis 9,unpack+8@ha
	lwz 0,unpack+8@l(9)
	stw 0,0(4)
	b .L41
.L47:
	.loc 1 124 0
	lis 9,unpack+12@ha
	lwz 0,unpack+12@l(9)
	stw 0,0(4)
	b .L41
.L48:
	.loc 1 125 0
	lis 9,unpack+16@ha
	lwz 0,unpack+16@l(9)
	stw 0,0(4)
	b .L41
.L49:
	.loc 1 114 0
	lis 9,pack@ha
	lbz 0,pack@l(9)
	stw 0,0(4)
	b .L41
.L50:
	.loc 1 115 0
	lis 9,pack+1@ha
	lbz 0,pack+1@l(9)
	stw 0,0(4)
	b .L41
.L51:
	.loc 1 116 0
	lis 9,pack+4@ha
	lwz 0,pack+4@l(9)
	stw 0,0(4)
	b .L41
.L52:
	.loc 1 117 0
	lis 9,pack+8@ha
	lwz 0,pack+8@l(9)
	stw 0,0(4)
	b .L41
.L53:
	.loc 1 118 0
	lis 9,pack+12@ha
	lwz 0,pack+12@l(9)
	stw 0,0(4)
	b .L41
	.cfi_endproc
.LFE66:
	.size	_glGetPixelStore, .-_glGetPixelStore
	.align 2
	.globl GL2GX_Wrap
	.type	GL2GX_Wrap, @function
GL2GX_Wrap:
.LFB67:
	.loc 1 133 0
	.cfi_startproc
.LVL32:
	.loc 1 134 0
	cmpwi 7,3,10497
	.loc 1 133 0
	mflr 0
	stwu 1,-8(1)
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 134 0
	beq- 7,.L61
	.cfi_offset 65, 4
	xoris 0,3,0xffff
	cmpwi 7,0,-32465
	beq 7,.L60
	cmpwi 7,3,10496
	beq- 7,.L60
.LBB65:
.LBB66:
	.loc 1 140 0
	lis 4,.LC0@ha
.LVL33:
	li 3,1280
.LVL34:
	la 4,.LC0@l(4)
	li 5,140
	bl _glSetErrorEx
.LVL35:
.LBE66:
.LBE65:
	.loc 1 143 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL36:
.L60:
.LCFI10:
	.cfi_restore_state
	.loc 1 137 0
	li 0,0
	stb 0,0(4)
	.loc 1 143 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI11:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L61:
.LCFI12:
	.cfi_restore_state
	.loc 1 138 0
	li 0,1
	stb 0,0(4)
	.loc 1 143 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI13:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE67:
	.size	GL2GX_Wrap, .-GL2GX_Wrap
	.align 2
	.globl GL2GX_Filter
	.type	GL2GX_Filter, @function
GL2GX_Filter:
.LFB68:
	.loc 1 146 0
	.cfi_startproc
.LVL37:
	.loc 1 147 0
	cmpwi 7,3,9984
	.loc 1 146 0
	mflr 0
	stwu 1,-8(1)
.LCFI14:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 147 0
	beq- 7,.L68
	.cfi_offset 65, 4
	ble- 7,.L74
	cmpwi 7,3,9986
	beq- 7,.L70
	bge- 7,.L75
	.loc 1 152 0
	li 0,3
	stb 0,0(4)
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI15:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L74:
.LCFI16:
	.cfi_restore_state
	.loc 1 147 0
	cmpwi 7,3,9728
	beq- 7,.L66
	cmpwi 7,3,9729
	beq- 7,.L76
.L65:
.LBB69:
.LBB70:
	.loc 1 156 0
	lis 4,.LC0@ha
.LVL38:
	li 3,1280
.LVL39:
	la 4,.LC0@l(4)
	li 5,156
	bl _glSetErrorEx
.LBE70:
.LBE69:
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI17:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL40:
.L75:
.LCFI18:
	.cfi_restore_state
	.loc 1 147 0
	cmpwi 7,3,9987
	bne+ 7,.L65
	.loc 1 154 0
	li 0,5
	stb 0,0(4)
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI19:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L76:
.LCFI20:
	.cfi_restore_state
	.loc 1 150 0
	li 0,1
	stb 0,0(4)
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI21:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L66:
.LCFI22:
	.cfi_restore_state
	.loc 1 149 0
	li 0,0
	stb 0,0(4)
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI23:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L70:
.LCFI24:
	.cfi_restore_state
	.loc 1 153 0
	li 0,4
	stb 0,0(4)
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI25:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L68:
.LCFI26:
	.cfi_restore_state
	.loc 1 151 0
	li 0,2
	stb 0,0(4)
	.loc 1 159 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI27:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE68:
	.size	GL2GX_Filter, .-GL2GX_Filter
	.align 2
	.globl _glGetSize
	.type	_glGetSize, @function
_glGetSize:
.LFB69:
	.loc 1 197 0
	.cfi_startproc
.LVL41:
	.loc 1 197 0
	cmplwi 7,3,39
	bgt- 7,.L86
	.loc 1 2047 0
	lis 9,.LANCHOR0@ha
	.loc 1 210 0
	cmpwi 7,4,6405
	.loc 1 2047 0
	la 9,.LANCHOR0@l(9)
	lbzux 8,9,3
	lbz 10,40(9)
	extsb 8,8
	lbz 11,80(9)
	lbz 0,160(9)
	extsb 10,10
	lbz 7,120(9)
	extsb 11,11
	extsb 0,0
.LVL42:
	extsb 9,7
.LVL43:
	.loc 1 210 0
	beq- 7,.L82
.L88:
	cmplwi 7,4,6405
	ble- 7,.L87
	cmpwi 7,4,6409
	beq- 7,.L84
	xoris 11,4,0xffff
.LVL44:
	cmpwi 7,11,-32695
	beq 7,.L84
	cmpwi 7,4,6406
	bnelr+ 7
	.loc 1 215 0
	stw 9,0(5)
	blr
.LVL45:
.L86:
	.loc 1 210 0
	cmpwi 7,4,6405
	.loc 1 197 0
	li 0,0
	li 9,0
	li 11,0
	li 10,0
	li 8,0
.LVL46:
	.loc 1 210 0
	bne+ 7,.L88
.LVL47:
.L82:
	.loc 1 214 0
	stw 11,0(5)
	blr
.L87:
	.loc 1 210 0
	cmpwi 7,4,6403
	beq- 7,.L80
	cmpwi 7,4,6404
	bnelr+ 7
	.loc 1 213 0
	stw 10,0(5)
	blr
.LVL48:
.L84:
	.loc 1 217 0
	stw 0,0(5)
	blr
.LVL49:
.L80:
	.loc 1 212 0
	stw 8,0(5)
	blr
	.cfi_endproc
.LFE69:
	.size	_glGetSize, .-_glGetSize
	.align 2
	.globl glGetTexLevelParameteriv
	.type	glGetTexLevelParameteriv, @function
glGetTexLevelParameteriv:
.LFB70:
	.loc 1 225 0
	.cfi_startproc
.LVL50:
	mflr 0
	stwu 1,-16(1)
.LCFI28:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 226 0
	lis 9,cur_state@ha
	.loc 1 225 0
	stw 0,20(1)
	.loc 1 226 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 0,0,1
	bne- 0,.L116
	.loc 1 228 0
	cmpwi 7,6,0
	beq- 7,.L117
	.loc 1 234 0
	addis 9,3,0xffff
	addi 9,9,32669
	cmplwi 7,9,1
	ble- 7,.L93
	.loc 1 234 0 is_stmt 0 discriminator 1
	xoris 9,3,0xffff
	cmpwi 7,9,-32656
	beq 7,.L93
	.loc 1 249 0 is_stmt 1
	xoris 9,5,0xffff
	cmpwi 7,9,-32675
	beq 7,.L105
	cmplwi 7,5,32861
	ble- 7,.L118
	xoris 0,5,0xffff
	cmpwi 7,0,-32672
	beq 7,.L108
	cmplwi 7,5,32864
	li 0,0
	bgt- 7,.L113
	ori 0,0,32862
	cmpw 7,5,0
	beq- 7,.L106
	xoris 0,5,0xffff
	cmpwi 7,0,-32673
	bne 7,.L99
	.loc 1 259 0
	stw 6,12(1)
	bl getCur.constprop.12
.LVL51:
	lbz 3,3(3)
	li 4,6406
.L115:
	.loc 1 266 0
	lwz 0,20(1)
	.loc 1 261 0
	lwz 6,12(1)
	.loc 1 266 0
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI29:
	.cfi_def_cfa_offset 0
	.loc 1 261 0
	mr 5,6
	b _glGetSize
.LVL52:
.L93:
.LCFI30:
	.cfi_restore_state
	.loc 1 236 0
	cmpwi 7,5,4097
	beq- 7,.L97
	xoris 0,5,0xffff
	cmpwi 7,0,-32655
	beq 7,.L110
	cmpwi 7,5,4096
	beq- 7,.L119
	.loc 1 242 0
	li 0,0
	.loc 1 243 0
	lis 4,.LC0@ha
.LVL53:
	.loc 1 242 0
	stw 0,0(6)
	.loc 1 243 0
	li 3,1281
.LVL54:
	la 4,.LC0@l(4)
	li 5,243
.LVL55:
	bl _glSetErrorEx
.LVL56:
	.loc 1 244 0
	b .L89
.LVL57:
.L116:
	.loc 1 226 0 discriminator 1
	lis 4,.LC0@ha
.LVL58:
	li 3,1282
.LVL59:
	la 4,.LC0@l(4)
	li 5,226
.LVL60:
	bl _glSetErrorEx
.LVL61:
.L89:
	.loc 1 266 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI31:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL62:
.L118:
.LCFI32:
	.cfi_restore_state
	.loc 1 249 0
	cmpwi 7,5,4099
	beq- 7,.L102
	cmplwi 7,5,4099
	bgt- 7,.L112
	cmpwi 7,5,4096
	beq- 7,.L100
	cmpwi 7,5,4097
	bne+ 7,.L99
	.loc 1 252 0
	stw 6,12(1)
	bl getCur.constprop.12
.LVL63:
	lwz 0,24(3)
	lwz 6,12(1)
.LVL64:
	stw 0,0(6)
	b .L89
.LVL65:
.L113:
	.loc 1 249 0
	ori 0,0,32865
	cmpw 7,5,0
	beq- 7,.L109
	xoris 0,5,0xffff
	cmpwi 7,0,-32655
	bne 7,.L99
.L110:
	.loc 1 253 0
	li 0,1
	stw 0,0(6)
	.loc 1 266 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI33:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L97:
.LCFI34:
	.cfi_restore_state
	.loc 1 239 0
	stw 4,8(1)
	stw 6,12(1)
	bl getCur.constprop.12
.LVL66:
	lwz 0,24(3)
	lwz 4,8(1)
.LVL67:
	lwz 6,12(1)
.LVL68:
	sraw 4,0,4
.LVL69:
	stw 4,0(6)
	b .L89
.LVL70:
.L119:
	.loc 1 238 0
	stw 4,8(1)
	stw 6,12(1)
	bl getCur.constprop.12
.LVL71:
	lwz 0,20(3)
	lwz 4,8(1)
.LVL72:
	lwz 6,12(1)
.LVL73:
	sraw 4,0,4
.LVL74:
	stw 4,0(6)
	b .L89
.LVL75:
.L112:
	.loc 1 249 0
	cmpwi 7,5,4101
	beq- 7,.L103
	xoris 0,5,0xffff
	cmpwi 7,0,-32676
	beq 7,.L120
.L99:
	.loc 1 263 0
	lis 4,.LC0@ha
.LVL76:
	li 3,1281
.LVL77:
	la 4,.LC0@l(4)
	li 5,263
.LVL78:
	bl _glSetErrorEx
.LVL79:
	.loc 1 264 0
	b .L89
.LVL80:
.L109:
	.loc 1 261 0
	stw 6,12(1)
	bl getCur.constprop.12
.LVL81:
	li 4,0
	lbz 3,3(3)
	ori 4,4,32841
	b .L115
.LVL82:
.L103:
	.loc 1 255 0
	stw 0,0(6)
	b .L89
.L106:
	.loc 1 258 0
	stw 6,12(1)
	bl getCur.constprop.12
.LVL83:
	lbz 3,3(3)
	li 4,6405
	b .L115
.LVL84:
.L100:
	.loc 1 251 0
	stw 6,12(1)
	bl getCur.constprop.12
.LVL85:
	lwz 0,20(3)
	lwz 6,12(1)
.LVL86:
	stw 0,0(6)
	b .L89
.LVL87:
.L117:
	.loc 1 230 0
	lis 4,.LC0@ha
.LVL88:
	li 3,1281
.LVL89:
	la 4,.LC0@l(4)
	li 5,230
.LVL90:
	bl _glSetErrorEx
.LVL91:
	.loc 1 231 0
	b .L89
.LVL92:
.L102:
	.loc 1 254 0
	stw 6,12(1)
	bl getCur.constprop.12
.LVL93:
	lwz 0,68(3)
	lwz 6,12(1)
.LVL94:
	stw 0,0(6)
	b .L89
.LVL95:
.L105:
	.loc 1 257 0
	stw 6,12(1)
	bl getCur.constprop.12
.LVL96:
	lbz 3,3(3)
	li 4,6404
	b .L115
.LVL97:
.L108:
	.loc 1 260 0
	stw 6,12(1)
	bl getCur.constprop.12
.LVL98:
	lbz 3,3(3)
	li 4,6409
	b .L115
.LVL99:
.L120:
	.loc 1 256 0
	stw 6,12(1)
	bl getCur.constprop.12
.LVL100:
	lbz 3,3(3)
	li 4,6403
	b .L115
	.cfi_endproc
.LFE70:
	.size	glGetTexLevelParameteriv, .-glGetTexLevelParameteriv
	.align 2
	.globl GX_SetTevCIn
	.type	GX_SetTevCIn, @function
GX_SetTevCIn:
.LFB71:
	.loc 1 269 0
	.cfi_startproc
.LVL101:
	.loc 1 272 0
	cmpwi 7,3,5890
	.loc 1 270 0
	li 0,15
	stb 0,0(5)
	.loc 1 272 0
	beq- 7,.L135
	.loc 1 276 0
	addis 9,3,0xffff
	addi 0,9,31552
	cmplwi 6,0,7
	bgt- 6,.L124
	.loc 1 278 0
	addi 3,3,64
.LVL102:
	stb 3,0(6)
.LVL103:
.L126:
	.loc 1 290 0
	cmpwi 7,4,768
	beq- 7,.L129
	cmpwi 7,4,770
	bnelr+ 7
	.loc 1 293 0
	li 0,9
	stb 0,0(5)
	blr
.LVL104:
.L124:
	.loc 1 287 0
	li 0,0
	ori 0,0,34167
	cmpw 6,3,0
	.loc 1 284 0
	li 0,-1
	stb 0,0(6)
	.loc 1 287 0
	beq- 6,.L127
	xoris 0,3,0xffff
	cmpwi 6,0,-31368
	beq 6,.L128
	bnelr+ 7
	b .L126
.L128:
	.loc 1 304 0
	cmpwi 7,4,768
	beq- 7,.L133
	cmpwi 7,4,770
	bnelr+ 7
	.loc 1 307 0
	stb 8,0(5)
	blr
.L135:
	.loc 1 274 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	stb 0,0(6)
	b .L126
.L127:
	.loc 1 297 0
	cmpwi 7,4,768
	beq- 7,.L131
	cmpwi 7,4,770
	bnelr+ 7
	.loc 1 300 0
	li 0,5
	stb 0,0(5)
	blr
.LVL105:
.L129:
	.loc 1 292 0
	li 0,8
	stb 0,0(5)
	blr
.LVL106:
.L131:
	.loc 1 299 0
	li 0,10
	stb 0,0(5)
	blr
.L133:
	.loc 1 306 0
	stb 7,0(5)
	blr
	.cfi_endproc
.LFE71:
	.size	GX_SetTevCIn, .-GX_SetTevCIn
	.align 2
	.globl GX_SetTevAIn
	.type	GX_SetTevAIn, @function
GX_SetTevAIn:
.LFB72:
	.loc 1 314 0
	.cfi_startproc
.LVL107:
	.loc 1 317 0
	cmpwi 7,3,5890
	.loc 1 315 0
	li 0,7
	stb 0,0(5)
	.loc 1 317 0
	beq- 7,.L144
	.loc 1 321 0
	addis 9,3,0xffff
	addi 0,9,31552
	cmplwi 6,0,7
	bgt- 6,.L139
	.loc 1 323 0
	addi 3,3,64
.LVL108:
	stb 3,0(6)
.LVL109:
.L141:
	.loc 1 334 0
	li 0,4
	stb 0,0(5)
	blr
.LVL110:
.L139:
	.loc 1 332 0
	li 0,0
	ori 0,0,34167
	cmpw 6,3,0
	.loc 1 329 0
	li 0,-1
	stb 0,0(6)
	.loc 1 332 0
	beq- 6,.L142
	xoris 0,3,0xffff
	cmpwi 6,0,-31368
	beq 6,.L143
	bnelr+ 7
	b .L141
.L143:
	.loc 1 336 0
	stb 7,0(5)
	blr
.LVL111:
.L144:
	.loc 1 319 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	stb 0,0(6)
	.loc 1 334 0
	li 0,4
	stb 0,0(5)
	blr
.L142:
	.loc 1 335 0
	li 0,5
	stb 0,0(5)
	blr
	.cfi_endproc
.LFE72:
	.size	GX_SetTevAIn, .-GX_SetTevAIn
	.align 2
	.globl GX_IncReg
	.type	GX_IncReg, @function
GX_IncReg:
.LFB73:
	.loc 1 341 0
	.cfi_startproc
.LVL112:
	.loc 1 341 0
	addi 0,3,-1
	li 3,1
.LVL113:
	rlwinm 0,0,0,0xff
	cmplwi 7,0,1
	bgtlr+ 7
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	add 9,9,0
	lbz 3,200(9)
	.loc 1 349 0
	blr
	.cfi_endproc
.LFE73:
	.size	GX_IncReg, .-GX_IncReg
	.align 2
	.globl GX_IncCCReg
	.type	GX_IncCCReg, @function
GX_IncCCReg:
.LFB74:
	.loc 1 352 0
	.cfi_startproc
.LVL114:
	.loc 1 352 0
	addi 0,3,-1
	li 3,2
.LVL115:
	rlwinm 0,0,0,0xff
	cmplwi 7,0,1
	bgtlr+ 7
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	add 9,9,0
	lbz 3,204(9)
	.loc 1 360 0
	blr
	.cfi_endproc
.LFE74:
	.size	GX_IncCCReg, .-GX_IncCCReg
	.align 2
	.globl GX_IncCAReg
	.type	GX_IncCAReg, @function
GX_IncCAReg:
.LFB75:
	.loc 1 363 0
	.cfi_startproc
.LVL116:
	.loc 1 363 0
	addi 0,3,-1
	li 3,3
.LVL117:
	rlwinm 0,0,0,0xff
	cmplwi 7,0,1
	bgtlr+ 7
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	add 9,9,0
	lbz 3,208(9)
	.loc 1 371 0
	blr
	.cfi_endproc
.LFE75:
	.size	GX_IncCAReg, .-GX_IncCAReg
	.align 2
	.globl GX_IncAAReg
	.type	GX_IncAAReg, @function
GX_IncAAReg:
.LFB76:
	.loc 1 374 0
	.cfi_startproc
.LVL118:
	.loc 1 374 0
	addi 0,3,-1
	li 3,1
.LVL119:
	rlwinm 0,0,0,0xff
	cmplwi 7,0,1
	bgtlr+ 7
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	add 9,9,0
	lbz 3,212(9)
	.loc 1 382 0
	blr
	.cfi_endproc
.LFE76:
	.size	GX_IncAAReg, .-GX_IncAAReg
	.align 2
	.globl GX_IncTexMap
	.type	GX_IncTexMap, @function
GX_IncTexMap:
.LFB77:
	.loc 1 385 0
	.cfi_startproc
.LVL120:
	.loc 1 385 0
	addi 0,3,-1
	li 3,0
.LVL121:
	rlwinm 0,0,0,0xff
	cmplwi 7,0,6
	bgtlr- 7
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	add 9,9,0
	lbz 3,216(9)
	.loc 1 398 0
	blr
	.cfi_endproc
.LFE77:
	.size	GX_IncTexMap, .-GX_IncTexMap
	.align 2
	.globl GX_IncTexCoord
	.type	GX_IncTexCoord, @function
GX_IncTexCoord:
.LFB78:
	.loc 1 401 0
	.cfi_startproc
.LVL122:
	.loc 1 401 0
	addi 0,3,-1
	li 3,0
.LVL123:
	rlwinm 0,0,0,0xff
	cmplwi 7,0,6
	bgtlr- 7
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	add 9,9,0
	lbz 3,224(9)
	.loc 1 414 0
	blr
	.cfi_endproc
.LFE78:
	.size	GX_IncTexCoord, .-GX_IncTexCoord
	.align 2
	.globl GX_SetTevCombineStage
	.type	GX_SetTevCombineStage, @function
GX_SetTevCombineStage:
.LFB79:
	.loc 1 418 0
	.cfi_startproc
.LVL124:
	stwu 1,-64(1)
.LCFI35:
	.cfi_def_cfa_offset 64
	mflr 0
	stw 23,28(1)
	.loc 1 424 0
	mr. 23,3
	.cfi_offset 23, -36
	.cfi_register 65, 0
	.loc 1 418 0
	stw 0,68(1)
	.loc 1 419 0
	li 0,0
	.cfi_offset 65, 4
	.loc 1 418 0
	stw 24,32(1)
	mr 24,4
	.cfi_offset 24, -32
	stw 25,36(1)
	.loc 1 425 0
	li 25,0
	.cfi_offset 25, -28
	.loc 1 418 0
	stw 30,56(1)
	.loc 1 426 0
	li 30,0
	.cfi_offset 30, -8
	.loc 1 418 0
	stw 22,24(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 31,60(1)
	.loc 1 419 0
	stw 0,0(4)
.LVL125:
	.loc 1 424 0
	bne- 0,.L164
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 22, -40
	.loc 1 422 0
	li 30,5
	.loc 1 421 0
	li 25,10
.L164:
.LVL126:
	.loc 1 454 0
	lis 27,cur_tex@ha
	lis 28,glTexEnvs@ha
	lwz 9,cur_tex@l(27)
	la 28,glTexEnvs@l(28)
	.loc 1 444 0
	li 0,-1
	.loc 1 446 0
	li 8,15
	.loc 1 454 0
	mulli 11,9,108
	.loc 1 447 0
	li 10,7
	.loc 1 444 0
	stb 0,12(1)
	.loc 1 454 0
	add 11,28,11
	.loc 1 445 0
	stb 0,8(1)
	.loc 1 454 0
	lwz 11,28(11)
	.loc 1 446 0
	stb 8,20(1)
	.loc 1 454 0
	cmpwi 7,11,8448
	.loc 1 447 0
	stb 10,16(1)
.LVL127:
	.loc 1 444 0
	stb 0,13(1)
	.loc 1 445 0
	stb 0,9(1)
	.loc 1 446 0
	stb 8,21(1)
	.loc 1 447 0
	stb 10,17(1)
.LVL128:
	.loc 1 444 0
	stb 0,14(1)
	.loc 1 445 0
	stb 0,10(1)
	.loc 1 446 0
	stb 8,22(1)
	.loc 1 447 0
	stb 10,18(1)
.LVL129:
	.loc 1 454 0
	beq- 7,.L201
	cmplwi 7,11,8448
	ble- 7,.L210
	xoris 0,11,0xffff
	cmpwi 7,0,-31372
	beq 7,.L201
	xoris 0,11,0xffff
	cmpwi 7,0,-31371
	beq 7,.L168
	xoris 0,11,0xffff
	cmpwi 7,0,-31513
	beq 7,.L201
.LVL130:
.L163:
	.loc 1 645 0
	lwz 0,68(1)
	lwz 22,24(1)
	mtlr 0
	lwz 23,28(1)
	lwz 24,32(1)
.LVL131:
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI36:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	blr
.LVL132:
.L210:
.LCFI37:
	.cfi_restore_state
	.loc 1 454 0
	cmpwi 7,11,260
	beq- 7,.L201
	cmpwi 7,11,7681
	bne+ 7,.L163
	.loc 1 456 0
	li 26,1
.LVL133:
.L166:
	.loc 1 468 0
	li 31,0
	addi 29,1,12
.LVL134:
.L171:
	.loc 1 470 0 discriminator 2
	mulli 9,9,27
	addi 0,1,20
	add 5,0,31
	add 6,29,31
	add 9,9,31
	mr 7,25
	addi 11,9,8
	addi 0,9,12
	slwi 11,11,2
	slwi 0,0,2
	add 11,28,11
	lwzx 4,28,0
	lwz 3,4(11)
	mr 8,30
	.loc 1 468 0 discriminator 2
	addi 31,31,1
	.loc 1 470 0 discriminator 2
	bl GX_SetTevCIn
.LVL135:
	.loc 1 468 0 discriminator 2
	cmpw 7,26,31
	lwz 9,cur_tex@l(27)
	bgt+ 7,.L171
	.loc 1 474 0
	mulli 11,9,108
	add 11,28,11
	lwz 0,32(11)
	cmpwi 7,0,8448
	beq- 7,.L202
	cmplwi 7,0,8448
	bgt- 7,.L175
	cmpwi 7,0,260
	beq- 7,.L202
	cmpwi 7,0,7681
	bne+ 7,.L163
	.loc 1 476 0
	li 22,1
.LVL136:
.L172:
	.loc 1 486 0
	li 31,0
	addi 25,1,8
.LVL137:
.L177:
	.loc 1 488 0 discriminator 2
	mulli 9,9,27
	addi 0,1,16
	add 5,0,31
	add 6,25,31
	add 9,9,31
	mr 7,30
	addi 11,9,12
	addi 9,9,16
	slwi 11,11,2
	slwi 9,9,2
	add 11,28,11
	add 9,28,9
	lwz 3,12(11)
	.loc 1 486 0 discriminator 2
	addi 31,31,1
	.loc 1 488 0 discriminator 2
	lwz 4,8(9)
	bl GX_SetTevAIn
.LVL138:
	.loc 1 486 0 discriminator 2
	cmpw 7,22,31
	ble- 7,.L176
	.loc 1 486 0 is_stmt 0
	lwz 9,cur_tex@l(27)
	b .L177
.LVL139:
.L168:
	.loc 1 461 0 is_stmt 1
	li 26,3
	b .L166
.LVL140:
.L175:
	.loc 1 474 0
	xoris 11,0,0xffff
	cmpwi 7,11,-31372
	beq 7,.L202
	xoris 11,0,0xffff
	cmpwi 7,11,-31371
	beq 7,.L174
	xoris 11,0,0xffff
	cmpwi 7,11,-31513
	bne 7,.L163
.L202:
	.loc 1 480 0
	li 22,2
	b .L172
.LVL141:
.L201:
	.loc 1 460 0
	li 26,2
	b .L166
.LVL142:
.L176:
	.loc 1 486 0
	cmpw 7,22,26
	bge- 7,.L178
	mr 22,26
.LVL143:
.L178:
	cmpwi 7,22,0
	mtctr 22
	.loc 1 503 0
	li 30,0
.LVL144:
	.loc 1 502 0
	li 31,-1
	ble- 7,.L211
.LVL145:
.L181:
	.loc 1 505 0
	lbzx 0,29,30
	.loc 1 507 0
	cmpwi 6,31,-1
	.loc 1 505 0
	extsb 0,0
	cmpwi 7,0,-1
	.loc 1 513 0
	cmpw 1,31,0
	.loc 1 505 0
	beq- 7,.L179
	.loc 1 507 0
	beq- 6,.L203
	.loc 1 513 0
	bne- 1,.L212
.L179:
.LVL146:
	.loc 1 520 0
	lbzx 0,25,30
	.loc 1 522 0
	cmpwi 6,31,-1
	.loc 1 503 0
	addi 30,30,1
	.loc 1 520 0
	extsb 0,0
	cmpwi 7,0,-1
	.loc 1 528 0
	cmpw 1,31,0
	.loc 1 520 0
	beq- 7,.L180
	.loc 1 522 0
	beq- 6,.L204
	.loc 1 528 0
	bne- 1,.L213
.L180:
.LVL147:
	.loc 1 503 0
	bdnz .L181
.LVL148:
.L215:
	.loc 1 545 0
	lwz 9,cur_tex@l(27)
	mulli 9,9,108
	add 9,28,9
	lwz 0,28(9)
	cmpwi 7,0,8448
	beq- 7,.L184
	cmplwi 7,0,8448
	bgt- 7,.L188
	cmpwi 7,0,260
	beq- 7,.L182
	cmpwi 7,0,7681
	bne+ 7,.L163
	.loc 1 548 0
	lbz 7,20(1)
	mr 3,23
	li 4,15
.L208:
	.loc 1 558 0
	li 5,15
	li 6,15
	bl GX_SetTevColorIn
	.loc 1 560 0
	li 5,0
	.loc 1 559 0
	li 4,0
.LVL149:
.L189:
	.loc 1 583 0
	lwz 9,cur_tex@l(27)
	mr 3,23
	li 7,1
	li 8,0
	mulli 9,9,108
	add 9,28,9
	lbz 6,104(9)
	bl GX_SetTevColorOp
.LVL150:
	.loc 1 593 0
	lwz 9,cur_tex@l(27)
	mulli 9,9,108
	add 9,28,9
	lwz 0,32(9)
	cmpwi 7,0,8448
	beq- 7,.L192
	cmplwi 7,0,8448
	bgt- 7,.L196
	cmpwi 7,0,260
	beq- 7,.L190
	cmpwi 7,0,7681
	bne+ 7,.L163
	.loc 1 596 0
	lbz 7,16(1)
	mr 3,23
	li 4,7
.L209:
	.loc 1 606 0
	li 5,7
	li 6,7
	bl GX_SetTevAlphaIn
	.loc 1 608 0
	li 5,0
	.loc 1 607 0
	li 4,0
.LVL151:
.L197:
	.loc 1 629 0
	lwz 0,cur_tex@l(27)
	mr 3,23
	li 7,1
	li 8,0
	mulli 0,0,108
	add 28,28,0
	lbz 6,105(28)
	bl GX_SetTevAlphaOp
.LVL152:
	.loc 1 637 0
	cmpwi 7,31,-1
	.loc 1 635 0
	li 0,1
	stw 0,0(24)
	.loc 1 637 0
	beq- 7,.L214
.LVL153:
	.loc 1 639 0
	addi 30,30,-1
.LVL154:
.LBB71:
	li 5,0
.LBE71:
	rlwinm 30,30,0,0xff
.LVL155:
.LBB72:
	li 4,0
.LBE72:
	cmplwi 7,30,6
	bgt- 7,.L199
	lis 9,.LANCHOR0@ha
	la 0,.LANCHOR0@l(9)
	add 30,0,30
	lbz 4,224(30)
	lbz 5,216(30)
.LVL156:
.L199:
	.loc 1 643 0
	mr 3,23
	li 6,4
	bl GX_SetTevOrder
	.loc 1 645 0
	lwz 0,68(1)
	lwz 22,24(1)
.LVL157:
	mtlr 0
	lwz 23,28(1)
	lwz 24,32(1)
.LVL158:
	lwz 25,36(1)
	lwz 26,40(1)
.LVL159:
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI38:
	.cfi_def_cfa_offset 0
	blr
.LVL160:
.L213:
.LCFI39:
	.cfi_restore_state
	.loc 1 530 0
	lis 4,.LC0@ha
	li 3,1280
	la 4,.LC0@l(4)
	li 5,530
	bl _glSetErrorEx
	.loc 1 645 0
	lwz 0,68(1)
	lwz 22,24(1)
.LVL161:
	mtlr 0
	lwz 23,28(1)
	lwz 24,32(1)
.LVL162:
	lwz 25,36(1)
	lwz 26,40(1)
.LVL163:
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
.LVL164:
	addi 1,1,64
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI40:
	.cfi_def_cfa_offset 0
	blr
.LVL165:
.L203:
.LCFI41:
	.cfi_restore_state
	.loc 1 507 0
	mr 31,0
	b .L179
.LVL166:
.L204:
	.loc 1 522 0
	mr 31,0
.LVL167:
	.loc 1 503 0
	bdnz .L181
	b .L215
.LVL168:
.L174:
	.loc 1 481 0
	li 22,3
	b .L172
.LVL169:
.L212:
	.loc 1 515 0
	lis 4,.LC0@ha
	li 3,1280
	la 4,.LC0@l(4)
	li 5,515
	bl _glSetErrorEx
	.loc 1 645 0
	lwz 0,68(1)
	lwz 22,24(1)
.LVL170:
	mtlr 0
	lwz 23,28(1)
	lwz 24,32(1)
.LVL171:
	lwz 25,36(1)
	lwz 26,40(1)
.LVL172:
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI42:
	.cfi_def_cfa_offset 0
	blr
.LVL173:
.L188:
.LCFI43:
	.cfi_restore_state
	.loc 1 545 0
	xoris 9,0,0xffff
	cmpwi 7,9,-31372
	beq 7,.L186
	xoris 9,0,0xffff
	cmpwi 7,9,-31371
	beq 7,.L187
	xoris 9,0,0xffff
	cmpwi 7,9,-31513
	bne 7,.L163
	.loc 1 568 0
	lbz 4,21(1)
	li 5,15
	lbz 7,20(1)
	mr 3,23
	li 6,15
	bl GX_SetTevColorIn
.LVL174:
	.loc 1 570 0
	li 5,0
	.loc 1 569 0
	li 4,1
	.loc 1 571 0
	b .L189
.LVL175:
.L196:
	.loc 1 593 0
	xoris 9,0,0xffff
	cmpwi 7,9,-31372
	beq 7,.L194
	xoris 9,0,0xffff
	cmpwi 7,9,-31371
	beq 7,.L195
	xoris 9,0,0xffff
	cmpwi 7,9,-31513
	bne 7,.L163
	.loc 1 616 0
	lbz 4,17(1)
	li 5,7
	lbz 7,16(1)
	mr 3,23
	li 6,7
	bl GX_SetTevAlphaIn
.LVL176:
	.loc 1 618 0
	li 5,0
	.loc 1 617 0
	li 4,1
	.loc 1 619 0
	b .L197
.LVL177:
.L184:
	.loc 1 553 0
	lbz 5,20(1)
	li 4,15
	lbz 6,21(1)
	mr 3,23
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 555 0
	li 5,0
	.loc 1 554 0
	li 4,0
	.loc 1 556 0
	b .L189
.L187:
	.loc 1 573 0
	lbz 4,21(1)
	mr 3,23
	lbz 5,20(1)
	li 7,15
	lbz 6,22(1)
	bl GX_SetTevColorIn
	.loc 1 575 0
	li 5,0
	.loc 1 574 0
	li 4,0
	.loc 1 576 0
	b .L189
.L186:
	.loc 1 563 0
	lbz 4,21(1)
	li 5,15
	lbz 7,20(1)
	mr 3,23
	li 6,15
	bl GX_SetTevColorIn
.LVL178:
	.loc 1 565 0
	li 5,2
	.loc 1 564 0
	li 4,0
	.loc 1 566 0
	b .L189
.LVL179:
.L182:
	.loc 1 558 0
	lbz 4,21(1)
	mr 3,23
	lbz 7,20(1)
	b .L208
.LVL180:
.L190:
	.loc 1 606 0
	lbz 4,17(1)
	mr 3,23
	lbz 7,16(1)
	b .L209
.L192:
	.loc 1 601 0
	lbz 5,16(1)
	li 4,7
	lbz 6,17(1)
	mr 3,23
	li 7,7
	bl GX_SetTevAlphaIn
	.loc 1 603 0
	li 5,0
	.loc 1 602 0
	li 4,0
	.loc 1 604 0
	b .L197
.L195:
	.loc 1 621 0
	lbz 4,17(1)
	mr 3,23
	lbz 5,16(1)
	li 7,7
	lbz 6,18(1)
	bl GX_SetTevAlphaIn
	.loc 1 623 0
	li 5,0
	.loc 1 622 0
	li 4,0
	.loc 1 624 0
	b .L197
.L194:
	.loc 1 611 0
	lbz 4,17(1)
	li 5,7
	lbz 7,16(1)
	mr 3,23
	li 6,7
	bl GX_SetTevAlphaIn
.LVL181:
	.loc 1 613 0
	li 5,2
	.loc 1 612 0
	li 4,0
	.loc 1 614 0
	b .L197
.LVL182:
.L214:
	.loc 1 639 0
	mr 3,23
	li 4,255
	li 5,255
	li 6,4
	bl GX_SetTevOrder
	b .L163
.LVL183:
.L211:
	li 0,1
	mtctr 0
	b .L181
	.cfi_endproc
.LFE79:
	.size	GX_SetTevCombineStage, .-GX_SetTevCombineStage
	.align 2
	.globl GX_SetTevStage
	.type	GX_SetTevStage, @function
GX_SetTevStage:
.LFB80:
	.loc 1 648 0
	.cfi_startproc
.LVL184:
	stwu 1,-32(1)
.LCFI44:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 31,28(1)
	.loc 1 649 0
	lis 31,cur_tex@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	lwz 9,cur_tex@l(31)
	.loc 1 648 0
	stw 29,20(1)
	.loc 1 649 0
	lis 29,glTexEnvs@ha
	.cfi_offset 29, -12
	mulli 9,9,108
	.loc 1 648 0
	stw 0,36(1)
	.loc 1 649 0
	la 29,glTexEnvs@l(29)
	li 0,0
	.cfi_offset 65, 4
	add 9,29,9
	ori 0,0,34160
	lwz 9,24(9)
	.loc 1 648 0
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	.loc 1 649 0
	cmpw 7,9,0
	.loc 1 648 0
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	.loc 1 649 0
	beq- 7,.L251
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.loc 1 661 0
	cmpwi 7,3,0
	.loc 1 656 0
	li 0,1
	stw 0,0(4)
.LVL185:
	.loc 1 663 0
	li 26,0
	.loc 1 662 0
	li 27,0
	.loc 1 661 0
	beq- 7,.L252
.LVL186:
	.loc 1 666 0
	bl getCur.constprop.12
.LVL187:
	.loc 1 667 0
	lwz 9,cur_tex@l(31)
	.loc 1 666 0
	mr 28,3
.LVL188:
.LBB73:
	li 5,0
.LBE73:
	addi 0,9,-1
.LBB74:
	li 4,0
.LBE74:
	rlwinm 0,0,0,0xff
	cmplwi 7,0,6
	ble- 7,.L253
.LVL189:
.L219:
	.loc 1 667 0
	mr 3,30
.LVL190:
	li 6,4
	bl GX_SetTevOrder
	.loc 1 669 0
	lwz 9,cur_tex@l(31)
	mr 3,30
	li 4,0
	mulli 9,9,108
	li 5,0
	li 7,1
	li 8,0
	add 9,29,9
	lbz 6,104(9)
	bl GX_SetTevColorOp
	.loc 1 670 0
	lwz 9,cur_tex@l(31)
	mr 3,30
	li 4,0
	mulli 9,9,108
	li 5,0
	li 7,1
	li 8,0
	add 9,29,9
	lbz 6,105(9)
	bl GX_SetTevAlphaOp
	.loc 1 680 0
	lwz 9,cur_tex@l(31)
	mulli 9,9,108
	add 9,29,9
	lwz 0,24(9)
	cmpwi 7,0,7681
	beq- 7,.L222
	cmplwi 7,0,7681
	ble- 7,.L254
	cmpwi 7,0,8448
	beq- 7,.L223
	cmpwi 7,0,8449
	bne+ 7,.L216
	.loc 1 712 0
	lwz 0,68(28)
	.loc 1 715 0
	mr 3,30
	.loc 1 712 0
	cmpwi 7,0,6408
	beq- 7,.L255
	.loc 1 718 0
	li 4,15
	li 5,15
	li 6,15
	li 7,8
	bl GX_SetTevColorIn
.L228:
	.loc 1 744 0
	lwz 0,cur_tex@l(31)
	mulli 0,0,108
	add 29,29,0
	lwz 0,24(29)
	cmpwi 7,0,7681
	beq- 7,.L236
	cmplwi 7,0,7681
	bgt- 7,.L238
	cmpwi 7,0,260
	beq- 7,.L235
	cmpwi 7,0,3042
	bne+ 7,.L216
.L235:
	.loc 1 750 0
	lwz 0,68(28)
	.loc 1 755 0
	mr 3,30
	li 4,7
	.loc 1 750 0
	cmpwi 7,0,6407
	beq- 7,.L250
	cmpwi 7,0,6409
	beq- 7,.L250
	.loc 1 758 0
	li 5,4
	mr 6,26
	li 7,7
	bl GX_SetTevAlphaIn
	.loc 1 759 0
	b .L216
.LVL191:
.L253:
	.loc 1 666 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	add 9,9,0
	lbz 4,224(9)
.LVL192:
	lbz 5,216(9)
	b .L219
.LVL193:
.L252:
	bl getCur.constprop.12
.LVL194:
	.loc 1 667 0
	lwz 9,cur_tex@l(31)
	.loc 1 659 0
	li 26,5
	.loc 1 658 0
	li 27,10
.LVL195:
	.loc 1 666 0
	addi 0,9,-1
	mr 28,3
.LVL196:
	rlwinm 0,0,0,0xff
.LBB75:
	li 5,0
.LBE75:
	cmplwi 7,0,6
.LBB76:
	li 4,0
.LBE76:
	bgt- 7,.L219
	b .L253
.LVL197:
.L254:
	.loc 1 680 0
	cmpwi 7,0,260
	beq- 7,.L256
.L216:
	.loc 1 782 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
.LVL198:
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI45:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL199:
.L238:
.LCFI46:
	.cfi_restore_state
	.loc 1 744 0
	cmpwi 7,0,8448
	beq- 7,.L235
	cmpwi 7,0,8449
	bne+ 7,.L216
	.loc 1 765 0
	mr 3,30
	li 4,7
.L250:
	mr 7,26
	li 5,7
	li 6,7
	bl GX_SetTevAlphaIn
	.loc 1 782 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
.LVL200:
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI47:
	.cfi_def_cfa_offset 0
	blr
.LVL201:
.L236:
.LCFI48:
	.cfi_restore_state
	.loc 1 770 0
	lwz 0,68(28)
	cmpwi 7,0,6407
	beq- 7,.L242
	cmpwi 7,0,6409
	beq- 7,.L242
.L241:
	.loc 1 777 0
	mr 3,30
	li 4,7
	li 5,7
	li 6,7
	li 7,4
	bl GX_SetTevAlphaIn
	.loc 1 782 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
.LVL202:
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI49:
	.cfi_def_cfa_offset 0
	blr
.LVL203:
.L223:
.LCFI50:
	.cfi_restore_state
	.loc 1 698 0
	lwz 0,68(28)
	.loc 1 702 0
	mr 3,30
	li 4,15
	.loc 1 698 0
	cmpwi 7,0,6406
	beq- 7,.L257
	.loc 1 705 0
	mr 5,27
	li 6,8
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 706 0
	b .L228
.L222:
	.loc 1 725 0
	lwz 0,68(28)
	.loc 1 729 0
	mr 3,30
	li 4,15
	li 5,15
	.loc 1 725 0
	cmpwi 7,0,6406
	.loc 1 729 0
	li 6,15
	.loc 1 725 0
	beq- 7,.L258
	.loc 1 732 0
	li 7,8
	bl GX_SetTevColorIn
	.loc 1 733 0
	b .L228
.L256:
	.loc 1 684 0
	lwz 0,68(28)
	.loc 1 688 0
	mr 3,30
	.loc 1 684 0
	cmpwi 7,0,6406
	beq- 7,.L259
	.loc 1 691 0
	li 4,8
	li 5,15
	li 6,15
	mr 7,27
	bl GX_SetTevColorIn
	.loc 1 692 0
	b .L228
.LVL204:
.L251:
	.loc 1 782 0
	lwz 0,36(1)
	lwz 26,8(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI51:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.loc 1 652 0
	b GX_SetTevCombineStage
.LVL205:
.L255:
.LCFI52:
	.cfi_restore_state
	.loc 1 715 0
	mr 4,27
	li 5,8
	li 6,9
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 716 0
	b .L228
.L258:
	.loc 1 729 0
	mr 7,27
	bl GX_SetTevColorIn
	.loc 1 730 0
	b .L228
.L257:
	.loc 1 702 0
	li 5,15
	li 6,15
	mr 7,27
	bl GX_SetTevColorIn
	.loc 1 703 0
	b .L228
.L259:
	.loc 1 688 0
	li 4,15
	li 5,15
	li 6,15
	mr 7,27
	bl GX_SetTevColorIn
	.loc 1 689 0
	b .L228
.L242:
	.loc 1 775 0
	mr 3,30
	li 4,7
	li 5,7
	li 6,7
	mr 7,26
	bl GX_SetTevAlphaIn
	b .L241
	.cfi_endproc
.LFE80:
	.size	GX_SetTevStage, .-GX_SetTevStage
	.align 2
	.globl setAniso
	.type	setAniso, @function
setAniso:
.LFB81:
	.loc 1 785 0
	.cfi_startproc
.LVL206:
	.loc 1 786 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,1,0
	blt- 7,.L270
.LVL207:
.LBB79:
.LBB80:
	.loc 1 790 0
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	.loc 1 792 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	.loc 1 790 0
	fcmpu 7,1,0
	.loc 1 792 0
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	.loc 1 790 0
	blt- 7,.L271
	.loc 1 796 0
	li 0,2
	stb 0,22(9)
	blr
.L271:
	.loc 1 792 0
	li 0,1
	stb 0,22(9)
	blr
.LVL208:
.L270:
.LBE80:
.LBE79:
	.loc 1 788 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	li 0,0
	stb 0,22(9)
	blr
	.cfi_endproc
.LFE81:
	.size	setAniso, .-setAniso
	.align 2
	.globl setMaxLod
	.type	setMaxLod, @function
setMaxLod:
.LFB82:
	.loc 1 801 0
	.cfi_startproc
.LVL209:
	.loc 1 802 0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	fcmpu 7,1,0
	bgt- 7,.L282
.LVL210:
.LBB83:
.LBB84:
	.loc 1 806 0
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	.loc 1 808 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	.loc 1 806 0
	fcmpu 7,1,0
	.loc 1 808 0
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	.loc 1 806 0
	blt- 7,.L283
	.loc 1 812 0
	stfs 1,12(9)
	blr
.L283:
	.loc 1 808 0
	stfs 0,12(9)
	blr
.LVL211:
.L282:
.LBE84:
.LBE83:
	.loc 1 804 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	stfs 0,12(9)
	blr
	.cfi_endproc
.LFE82:
	.size	setMaxLod, .-setMaxLod
	.align 2
	.globl glTexParameteri
	.type	glTexParameteri, @function
glTexParameteri:
.LFB83:
	.loc 1 817 0
	.cfi_startproc
.LVL212:
	mflr 0
	stwu 1,-40(1)
.LCFI53:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 818 0
	lis 9,cur_state@ha
	.loc 1 817 0
	stw 0,44(1)
	.loc 1 818 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L301
	.loc 1 820 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32454
	beq 7,.L292
	cmplwi 7,4,33082
	ble- 7,.L302
	xoris 0,4,0xffff
	cmpwi 7,0,-32452
	beq 7,.L294
	cmplwi 7,4,33084
	bge- 7,.L303
	.loc 1 827 0
	lis 0,0x4330
	xoris 5,5,0x8000
.LVL213:
	stw 0,16(1)
	lis 9,.LC6@ha
	stw 5,20(1)
	lfs 0,.LC6@l(9)
	lfd 1,16(1)
	.loc 1 841 0
	lwz 0,44(1)
	.loc 1 827 0
	fsub 1,1,0
	.loc 1 841 0
	addi 1,1,40
	.cfi_remember_state
.LCFI54:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 827 0
	frsp 1,1
	b setMaxLod
.LVL214:
.L302:
.LCFI55:
	.cfi_restore_state
	.loc 1 820 0
	cmpwi 7,4,10241
	beq- 7,.L289
	cmplwi 7,4,10241
	bgt- 7,.L298
	cmpwi 7,4,10240
	beq- 7,.L304
.L287:
	.loc 1 837 0
	lis 3,.LC7@ha
.LVL215:
	la 3,.LC7@l(3)
	crxor 6,6,6
	bl printf
.LVL216:
	.loc 1 838 0
	lis 4,.LC0@ha
	li 3,1280
	la 4,.LC0@l(4)
	li 5,838
	bl _glSetErrorEx
	.loc 1 839 0
	b .L284
.LVL217:
.L301:
	.loc 1 818 0 discriminator 1
	lis 4,.LC0@ha
.LVL218:
	li 3,1282
.LVL219:
	la 4,.LC0@l(4)
	li 5,818
.LVL220:
	bl _glSetErrorEx
.L284:
	.loc 1 841 0
	lwz 0,44(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI56:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL221:
.L289:
.LCFI57:
	.cfi_restore_state
	.loc 1 822 0
	lis 9,cur_tex@ha
	mr 3,5
.LVL222:
	lwz 4,cur_tex@l(9)
.LVL223:
	lis 9,glTexEnvs@ha
	la 0,glTexEnvs@l(9)
.LVL224:
	mulli 4,4,108
	add 4,4,0
	addi 4,4,1
.L299:
	.loc 1 841 0
	lwz 0,44(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI58:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 823 0
	b GL2GX_Filter
.LVL225:
.L294:
.LCFI59:
	.cfi_restore_state
	.loc 1 830 0
	stw 5,32(1)
	bl getCur.constprop.12
.LVL226:
	lwz 5,32(1)
.LVL227:
	stb 5,73(3)
	.loc 1 831 0
	b .L284
.LVL228:
.L303:
	.loc 1 820 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32451
	beq 7,.L295
	xoris 0,4,0xffff
	cmpwi 7,0,-31490
	bne 7,.L287
	.loc 1 828 0
	lis 0,0x4330
	xoris 5,5,0x8000
.LVL229:
	stw 0,24(1)
	lis 9,.LC6@ha
	stw 5,28(1)
	lfs 0,.LC6@l(9)
	lfd 1,24(1)
	.loc 1 841 0
	lwz 0,44(1)
	.loc 1 828 0
	fsub 1,1,0
	.loc 1 841 0
	addi 1,1,40
	.cfi_remember_state
.LCFI60:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 828 0
	frsp 1,1
	b setAniso
.LVL230:
.L298:
.LCFI61:
	.cfi_restore_state
	.loc 1 820 0
	cmpwi 7,4,10242
	beq- 7,.L290
	cmpwi 7,4,10243
	bne+ 7,.L287
	.loc 1 825 0
	lis 9,cur_tex@ha
	mr 3,5
.LVL231:
	lwz 4,cur_tex@l(9)
.LVL232:
	lis 9,glTexEnvs@ha
	la 0,glTexEnvs@l(9)
.LVL233:
	mulli 4,4,108
	add 4,4,0
	addi 4,4,4
.L300:
	.loc 1 841 0
	lwz 0,44(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI62:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 825 0
	b GL2GX_Wrap
.LVL234:
.L290:
.LCFI63:
	.cfi_restore_state
	.loc 1 824 0
	lis 9,cur_tex@ha
	mr 3,5
.LVL235:
	lwz 4,cur_tex@l(9)
.LVL236:
	lis 9,glTexEnvs@ha
	la 0,glTexEnvs@l(9)
.LVL237:
	mulli 4,4,108
	add 4,4,0
	addi 4,4,3
	b .L300
.LVL238:
.L304:
	.loc 1 823 0
	lis 9,cur_tex@ha
	mr 3,5
.LVL239:
	lwz 4,cur_tex@l(9)
.LVL240:
	lis 9,glTexEnvs@ha
	la 0,glTexEnvs@l(9)
.LVL241:
	mulli 4,4,108
	add 4,4,0
	addi 4,4,2
	b .L299
.LVL242:
.L295:
	.loc 1 833 0
	stw 5,32(1)
	bl getCur.constprop.12
.LVL243:
	lwz 5,32(1)
.LVL244:
	stb 5,74(3)
	.loc 1 834 0
	b .L284
.LVL245:
.L292:
	.loc 1 826 0
	lis 0,0x4330
	xoris 5,5,0x8000
.LVL246:
	stw 0,8(1)
	lis 9,.LC6@ha
	stw 5,12(1)
	lfs 0,.LC6@l(9)
	lis 9,cur_tex@ha
	lfd 13,8(1)
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	fsub 0,13,0
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	frsp 0,0
	add 9,9,0
	stfs 0,8(9)
	b .L284
	.cfi_endproc
.LFE83:
	.size	glTexParameteri, .-glTexParameteri
	.align 2
	.globl glTexParameterf
	.type	glTexParameterf, @function
glTexParameterf:
.LFB84:
	.loc 1 847 0
	.cfi_startproc
.LVL247:
	.loc 1 848 0
	lis 9,cur_state@ha
	.loc 1 847 0
	mflr 0
	.loc 1 848 0
	lwz 9,cur_state@l(9)
	.loc 1 847 0
	stwu 1,-32(1)
.LCFI64:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 848 0
	andi. 11,9,1
	.loc 1 847 0
	stfd 31,24(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 0,36(1)
	.loc 1 848 0
	bne- 0,.L316
	.cfi_offset 65, 4
	.loc 1 849 0
	xoris 9,4,0xffff
	cmpwi 7,9,-32453
	beq 7,.L311
	cmplwi 7,4,33083
	ble- 7,.L317
	xoris 9,4,0xffff
	cmpwi 7,9,-32451
	beq 7,.L313
	cmplwi 7,4,33085
	blt- 7,.L312
	xoris 9,4,0xffff
	cmpwi 7,9,-31490
	beq 7,.L318
.L308:
	.loc 1 866 0
	lis 4,.LC0@ha
.LVL248:
	li 3,1280
.LVL249:
	la 4,.LC0@l(4)
	li 5,866
	bl _glSetErrorEx
.LVL250:
	.loc 1 869 0
	lwz 0,36(1)
	lfd 31,24(1)
.LVL251:
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 63
.LCFI65:
	.cfi_def_cfa_offset 0
	blr
.LVL252:
.L317:
.LCFI66:
	.cfi_restore_state
	.loc 1 849 0
	cmplwi 7,4,10240
	blt- 7,.L308
	cmplwi 7,4,10243
	ble- 7,.L309
	xoris 9,4,0xffff
	cmpwi 7,9,-32454
	bne 7,.L308
	.loc 1 855 0
	lis 9,cur_tex@ha
	.loc 1 869 0
	lfd 31,24(1)
	.loc 1 855 0
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	.loc 1 869 0
	lwz 0,36(1)
	.loc 1 855 0
	stfs 1,8(9)
	.loc 1 869 0
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 63
.LCFI67:
	.cfi_def_cfa_offset 0
	blr
.L316:
.LCFI68:
	.cfi_restore_state
	.loc 1 848 0 discriminator 1
	lis 4,.LC0@ha
.LVL253:
	li 3,1282
.LVL254:
	la 4,.LC0@l(4)
	li 5,848
	bl _glSetErrorEx
.LVL255:
	.loc 1 869 0 discriminator 1
	lwz 0,36(1)
	lfd 31,24(1)
.LVL256:
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
.LCFI69:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	blr
.LVL257:
.L313:
.LCFI70:
	.cfi_restore_state
	.loc 1 862 0
	fctiwz 31,31
	bl getCur.constprop.12
.LVL258:
	addi 9,1,8
	stfiwx 31,0,9
	lwz 0,8(1)
	stb 0,74(3)
	.loc 1 869 0
	lwz 0,36(1)
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 63
.LCFI71:
	.cfi_def_cfa_offset 0
	blr
.LVL259:
.L318:
.LCFI72:
	.cfi_restore_state
	lwz 0,36(1)
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
.LCFI73:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.loc 1 857 0
	b setAniso
.LVL260:
.L309:
.LCFI74:
	.cfi_restore_state
	.loc 1 854 0
	fctiwz 31,1
	addi 9,1,16
	stfiwx 31,0,9
	.loc 1 869 0
	lwz 0,36(1)
	.loc 1 854 0
	lwz 5,16(1)
	.loc 1 869 0
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
.LCFI75:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.loc 1 854 0
	b glTexParameteri
.LVL261:
.L312:
.LCFI76:
	.cfi_restore_state
	.loc 1 859 0
	fctiwz 31,31
	bl getCur.constprop.12
.LVL262:
	addi 11,1,12
	stfiwx 31,0,11
	lwz 0,12(1)
	stb 0,73(3)
	.loc 1 869 0
	lwz 0,36(1)
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 63
.LCFI77:
	.cfi_def_cfa_offset 0
	blr
.LVL263:
.L311:
.LCFI78:
	.cfi_restore_state
	lwz 0,36(1)
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
.LCFI79:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.loc 1 856 0
	b setMaxLod
.LVL264:
.LVL265:
.LVL266:
	.cfi_endproc
.LFE84:
	.size	glTexParameterf, .-glTexParameterf
	.align 2
	.globl glTexParameterfv
	.type	glTexParameterfv, @function
glTexParameterfv:
.LFB85:
	.loc 1 874 0
	.cfi_startproc
.LVL267:
	mflr 0
	stwu 1,-8(1)
.LCFI80:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 875 0
	lis 9,cur_state@ha
	.loc 1 874 0
	stw 0,12(1)
	.loc 1 875 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L326
	.loc 1 876 0
	xoris 0,4,0xffff
	cmpwi 7,0,-32666
	beq 7,.L324
	cmplwi 7,4,32870
	ble- 7,.L327
	xoris 0,4,0xffff
	cmpwi 7,0,-32654
	beq 7,.L324
	cmplwi 7,4,32882
	blt- 7,.L322
	addis 9,4,0xffff
	addi 0,9,32454
	cmplwi 7,0,3
	ble- 7,.L324
.L322:
	.loc 1 895 0
	lis 4,.LC0@ha
.LVL268:
	li 3,1280
.LVL269:
	la 4,.LC0@l(4)
	li 5,895
.LVL270:
	bl _glSetErrorEx
	.loc 1 898 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI81:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL271:
.L327:
.LCFI82:
	.cfi_restore_state
	.loc 1 876 0
	cmpwi 7,4,4100
	beq- 7,.L323
	cmplwi 7,4,4100
	blt- 7,.L322
	addi 0,4,-10240
	cmplwi 7,0,3
	bgt- 7,.L322
.L324:
	.loc 1 898 0
	lwz 0,12(1)
	.loc 1 888 0
	lfs 1,0(5)
	.loc 1 898 0
	mtlr 0
	addi 1,1,8
	.cfi_remember_state
.LCFI83:
	.cfi_def_cfa_offset 0
	.loc 1 888 0
	b glTexParameterf
.LVL272:
.L323:
.LCFI84:
	.cfi_restore_state
	.loc 1 891 0
	lwz 0,12(5)
	lis 11,.LANCHOR1@ha
	la 9,.LANCHOR1@l(11)
	lwz 7,0(5)
	lwz 8,4(5)
	lwz 10,8(5)
	stw 0,12(9)
	.loc 1 898 0
	lwz 0,12(1)
	.loc 1 891 0
	stw 8,4(9)
	.loc 1 898 0
	mtlr 0
	.loc 1 891 0
	stw 10,8(9)
	stw 7,.LANCHOR1@l(11)
	.loc 1 898 0
	addi 1,1,8
	.cfi_remember_state
.LCFI85:
	.cfi_def_cfa_offset 0
	blr
.L326:
.LCFI86:
	.cfi_restore_state
	.loc 1 875 0 discriminator 1
	lis 4,.LC0@ha
.LVL273:
	li 3,1282
.LVL274:
	la 4,.LC0@l(4)
	li 5,875
.LVL275:
	bl _glSetErrorEx
	.loc 1 898 0 discriminator 1
	lwz 0,12(1)
	addi 1,1,8
.LCFI87:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE85:
	.size	glTexParameterfv, .-glTexParameterfv
	.align 2
	.globl glSetTexEnvMode
	.type	glSetTexEnvMode, @function
glSetTexEnvMode:
.LFB86:
	.loc 1 901 0
	.cfi_startproc
.LVL276:
	.loc 1 902 0
	cmplwi 7,3,8449
	.loc 1 901 0
	mflr 0
	stwu 1,-8(1)
.LCFI88:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 902 0
	bgt- 7,.L331
	.cfi_offset 65, 4
	cmplwi 7,3,8448
	blt- 7,.L334
.L330:
	.loc 1 914 0
	lwz 0,12(1)
	.loc 1 909 0
	stw 3,0(4)
	.loc 1 914 0
	mtlr 0
	addi 1,1,8
	.cfi_remember_state
.LCFI89:
	.cfi_def_cfa_offset 0
	blr
.L331:
.LCFI90:
	.cfi_restore_state
	.loc 1 902 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31376
	beq 7,.L330
.LBB87:
.LBB88:
	.loc 1 912 0
	lis 4,.LC0@ha
.LVL277:
	li 3,1280
.LVL278:
	la 4,.LC0@l(4)
	li 5,912
	bl _glSetErrorEx
.LVL279:
.L335:
.LBE88:
.LBE87:
	.loc 1 914 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI91:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL280:
.L334:
.LCFI92:
	.cfi_restore_state
	.loc 1 902 0
	cmpwi 7,3,260
	beq- 7,.L330
	cmpwi 7,3,7681
	beq- 7,.L330
.LBB90:
.LBB89:
	.loc 1 912 0
	lis 4,.LC0@ha
.LVL281:
	li 3,1280
.LVL282:
	la 4,.LC0@l(4)
	li 5,912
	bl _glSetErrorEx
	b .L335
.LBE89:
.LBE90:
	.cfi_endproc
.LFE86:
	.size	glSetTexEnvMode, .-glSetTexEnvMode
	.align 2
	.globl glSetSrc
	.type	glSetSrc, @function
glSetSrc:
.LFB87:
	.loc 1 917 0
	.cfi_startproc
.LVL283:
	mflr 0
	stwu 1,-8(1)
.LCFI93:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 918 0
	addis 9,3,0xffff
	.loc 1 917 0
	stw 0,12(1)
	.loc 1 918 0
	addi 0,9,31552
	.cfi_offset 65, 4
	cmplwi 7,0,7
	ble- 7,.L341
.LVL284:
.LBB93:
.LBB94:
	.loc 1 923 0
	cmpwi 7,3,5890
	beq- 7,.L340
	cmplwi 7,3,5890
	blt- 7,.L339
	addi 9,9,31370
	cmplwi 7,9,2
	bgt- 7,.L339
.L340:
	.loc 1 929 0
	stw 3,0(4)
.L339:
	.loc 1 931 0
	lis 4,.LC0@ha
.LVL285:
	li 3,1280
.LVL286:
	la 4,.LC0@l(4)
	li 5,931
	bl _glSetErrorEx
.LVL287:
.LBE94:
.LBE93:
	.loc 1 933 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI94:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL288:
.L341:
.LCFI95:
	.cfi_restore_state
	lwz 0,12(1)
	.loc 1 920 0
	stw 3,0(4)
	.loc 1 933 0
	mtlr 0
	addi 1,1,8
.LCFI96:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE87:
	.size	glSetSrc, .-glSetSrc
	.align 2
	.globl glSetRGBOp
	.type	glSetRGBOp, @function
glSetRGBOp:
.LFB88:
	.loc 1 936 0
	.cfi_startproc
.LVL289:
	.loc 1 937 0
	cmpwi 7,3,768
	.loc 1 936 0
	mflr 0
	stwu 1,-8(1)
.LCFI97:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 937 0
	beq- 7,.L344
	.cfi_offset 65, 4
	cmpwi 7,3,770
	beq- 7,.L344
	.loc 1 945 0
	lis 4,.LC0@ha
.LVL290:
	li 3,1280
.LVL291:
	la 4,.LC0@l(4)
	li 5,945
	bl _glSetErrorEx
	.loc 1 947 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI98:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL292:
.L344:
.LCFI99:
	.cfi_restore_state
	.loc 1 941 0
	stw 3,0(4)
	.loc 1 945 0
	lis 4,.LC0@ha
.LVL293:
	li 3,1280
.LVL294:
	la 4,.LC0@l(4)
	li 5,945
	bl _glSetErrorEx
	.loc 1 947 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI100:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE88:
	.size	glSetRGBOp, .-glSetRGBOp
	.align 2
	.globl glSetAlphaOp
	.type	glSetAlphaOp, @function
glSetAlphaOp:
.LFB89:
	.loc 1 950 0
	.cfi_startproc
.LVL295:
	.loc 1 951 0
	cmpwi 7,3,770
	.loc 1 950 0
	mflr 0
	stwu 1,-8(1)
.LCFI101:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 951 0
	bne+ 7,.L346
	.cfi_offset 65, 4
	.loc 1 954 0
	stw 3,0(4)
.L346:
	.loc 1 957 0
	lis 4,.LC0@ha
.LVL296:
	li 3,1280
.LVL297:
	la 4,.LC0@l(4)
	li 5,957
	bl _glSetErrorEx
	.loc 1 959 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI102:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE89:
	.size	glSetAlphaOp, .-glSetAlphaOp
	.align 2
	.globl glSetComRGB
	.type	glSetComRGB, @function
glSetComRGB:
.LFB90:
	.loc 1 962 0
	.cfi_startproc
.LVL298:
	.loc 1 963 0
	cmpwi 7,3,8448
	.loc 1 962 0
	mflr 0
	stwu 1,-8(1)
.LCFI103:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 963 0
	beq- 7,.L350
	.cfi_offset 65, 4
	cmplwi 7,3,8448
	ble- 7,.L353
	xoris 0,3,0xffff
	cmpwi 7,0,-31513
	beq 7,.L350
	cmplwi 7,3,34023
	blt- 7,.L349
	addis 9,3,0xffff
	addi 0,9,31372
	cmplwi 7,0,1
	bgt- 7,.L349
.L350:
	.loc 1 971 0
	stw 3,0(4)
.L349:
	.loc 1 975 0
	lis 4,.LC0@ha
.LVL299:
	li 3,1280
.LVL300:
	la 4,.LC0@l(4)
	li 5,975
	bl _glSetErrorEx
	.loc 1 977 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI104:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL301:
.L353:
.LCFI105:
	.cfi_restore_state
	.loc 1 963 0
	cmpwi 7,3,260
	beq- 7,.L350
	cmpwi 7,3,7681
	beq- 7,.L350
	.loc 1 975 0
	lis 4,.LC0@ha
.LVL302:
	li 3,1280
.LVL303:
	la 4,.LC0@l(4)
	li 5,975
	bl _glSetErrorEx
	.loc 1 977 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI106:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE90:
	.size	glSetComRGB, .-glSetComRGB
	.align 2
	.globl glSetComAlpha
	.type	glSetComAlpha, @function
glSetComAlpha:
.LFB91:
	.loc 1 980 0
	.cfi_startproc
.LVL304:
	.loc 1 981 0
	cmpwi 7,3,8448
	.loc 1 980 0
	mflr 0
	stwu 1,-8(1)
.LCFI107:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 981 0
	beq- 7,.L356
	.cfi_offset 65, 4
	cmplwi 7,3,8448
	ble- 7,.L359
	xoris 0,3,0xffff
	cmpwi 7,0,-31513
	beq 7,.L356
	cmplwi 7,3,34023
	blt- 7,.L355
	addis 9,3,0xffff
	addi 0,9,31372
	cmplwi 7,0,1
	bgt- 7,.L355
.L356:
	.loc 1 989 0
	stw 3,0(4)
.L355:
	.loc 1 991 0
	lis 4,.LC0@ha
.LVL305:
	li 3,1280
.LVL306:
	la 4,.LC0@l(4)
	li 5,991
	bl _glSetErrorEx
	.loc 1 994 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI108:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL307:
.L359:
.LCFI109:
	.cfi_restore_state
	.loc 1 981 0
	cmpwi 7,3,260
	beq- 7,.L356
	cmpwi 7,3,7681
	beq- 7,.L356
	.loc 1 991 0
	lis 4,.LC0@ha
.LVL308:
	li 3,1280
.LVL309:
	la 4,.LC0@l(4)
	li 5,991
	bl _glSetErrorEx
	.loc 1 994 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI110:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE91:
	.size	glSetComAlpha, .-glSetComAlpha
	.align 2
	.globl glSetScale
	.type	glSetScale, @function
glSetScale:
.LFB92:
	.loc 1 997 0
	.cfi_startproc
.LVL310:
	stwu 1,-40(1)
.LCFI111:
	.cfi_def_cfa_offset 40
	mflr 0
	stfd 31,32(1)
	fmr 31,1
	.cfi_offset 63, -8
	.cfi_register 65, 0
	stfd 30,24(1)
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -20
	.cfi_offset 62, -16
	.loc 1 998 0
	fmr 30,31
	.loc 1 997 0
	stw 0,44(1)
	.loc 1 998 0
	.cfi_offset 65, 4
	bl floor
.LVL311:
	fcmpu 7,30,1
	bne- 7,.L368
	.loc 1 1003 0
	fctiwz 31,31
.LVL312:
	addi 9,1,8
	stfiwx 31,0,9
	lwz 0,8(1)
	cmpwi 7,0,2
	beq- 7,.L365
	cmpwi 7,0,4
	beq- 7,.L366
	cmpwi 7,0,1
	beq- 7,.L369
.LBB97:
.LBB98:
	.loc 1 1009 0
	lis 4,.LC0@ha
	li 3,1281
	la 4,.LC0@l(4)
	li 5,1009
	bl _glSetErrorEx
.LBE98:
.LBE97:
	.loc 1 1011 0
	lwz 0,44(1)
	lwz 31,20(1)
.LVL313:
	mtlr 0
	lfd 30,24(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI112:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	blr
.LVL314:
.L368:
.LCFI113:
	.cfi_restore_state
	.loc 1 1000 0
	lis 4,.LC0@ha
	li 3,1281
	la 4,.LC0@l(4)
	li 5,1000
	bl _glSetErrorEx
	.loc 1 1011 0
	lwz 0,44(1)
	lwz 31,20(1)
.LVL315:
	mtlr 0
	lfd 30,24(1)
	lfd 31,32(1)
.LVL316:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI114:
	.cfi_def_cfa_offset 0
	blr
.LVL317:
.L366:
.LCFI115:
	.cfi_restore_state
	.loc 1 1007 0
	li 0,2
	stb 0,0(31)
	.loc 1 1011 0
	lwz 0,44(1)
	lwz 31,20(1)
.LVL318:
	mtlr 0
	lfd 30,24(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI116:
	.cfi_def_cfa_offset 0
	blr
.LVL319:
.L369:
.LCFI117:
	.cfi_restore_state
	.loc 1 1005 0
	li 0,0
	stb 0,0(31)
	.loc 1 1011 0
	lwz 0,44(1)
	lwz 31,20(1)
.LVL320:
	mtlr 0
	lfd 30,24(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI118:
	.cfi_def_cfa_offset 0
	blr
.LVL321:
.L365:
.LCFI119:
	.cfi_restore_state
	.loc 1 1006 0
	li 0,1
	stb 0,0(31)
	.loc 1 1011 0
	lwz 0,44(1)
	lwz 31,20(1)
.LVL322:
	mtlr 0
	lfd 30,24(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI120:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE92:
	.size	glSetScale, .-glSetScale
	.align 2
	.globl _glTexEnvf
	.type	_glTexEnvf, @function
_glTexEnvf:
.LFB93:
	.loc 1 1014 0
	.cfi_startproc
.LVL323:
	mflr 0
	stwu 1,-128(1)
.LCFI121:
	.cfi_def_cfa_offset 128
	.cfi_register 65, 0
	stw 0,132(1)
	.loc 1 1015 0
	li 0,0
	.cfi_offset 65, 4
	ori 0,0,34184
	cmpw 7,3,0
	beq- 7,.L380
	cmplwi 7,3,34184
	li 0,0
	ble- 7,.L428
	ori 0,0,34193
	cmpw 7,3,0
	beq- 7,.L384
	cmplwi 7,3,34193
	li 0,0
	ble- 7,.L429
	ori 0,0,34200
	cmpw 7,3,0
	beq- 7,.L386
	cmplwi 7,3,34200
	li 0,0
	ble- 7,.L430
	ori 0,0,34201
	cmpw 7,3,0
	beq- 7,.L387
	xoris 0,3,0xffff
	cmpwi 7,0,-31334
	bne 7,.L371
	.loc 1 1031 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L422
	fctiwz 0,1
	addi 9,1,12
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL324:
.L423:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 0,9,56
.LVL325:
.L426:
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	add 4,4,0
	.loc 1 1038 0
	lwz 0,132(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI122:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 1031 0
	b glSetAlphaOp
.LVL326:
.L428:
.LCFI123:
	.cfi_restore_state
	.loc 1 1015 0
	ori 0,0,34162
	cmpw 7,3,0
	beq- 7,.L375
	cmplwi 7,3,34162
	bgt- 7,.L390
	cmpwi 7,3,8704
	beq- 7,.L373
	xoris 0,3,0xffff
	cmpwi 7,0,-31375
	beq 7,.L374
	cmpwi 7,3,3356
	beq- 7,.L431
.L371:
	.loc 1 1035 0
	lis 4,.LC0@ha
	li 3,1280
.LVL327:
	la 4,.LC0@l(4)
	li 5,1035
	bl _glSetErrorEx
.LVL328:
	.loc 1 1038 0
	lwz 0,132(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI124:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL329:
.L429:
.LCFI125:
	.cfi_restore_state
	.loc 1 1015 0
	ori 0,0,34186
	cmpw 7,3,0
	beq- 7,.L382
	cmplwi 7,3,34186
	blt- 7,.L381
	xoris 0,3,0xffff
	cmpwi 7,0,-31344
	bne 7,.L371
	.loc 1 1026 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L412
	fctiwz 0,1
	addi 9,1,52
	stfiwx 0,0,9
	lwz 3,52(1)
.LVL330:
.L413:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 0,9,48
.LVL331:
	b .L427
.LVL332:
.L390:
	.loc 1 1015 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31360
	beq 7,.L377
	cmplwi 7,3,34176
	li 0,0
	ble- 7,.L432
	ori 0,0,34177
	cmpw 7,3,0
	beq- 7,.L378
	xoris 0,3,0xffff
	cmpwi 7,0,-31358
	bne 7,.L371
	.loc 1 1022 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L404
	fctiwz 0,1
	addi 9,1,84
	stfiwx 0,0,9
	lwz 3,84(1)
.LVL333:
.L405:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 0,cur_tex@l(9)
.LVL334:
	la 4,glTexEnvs@l(4)
	mulli 0,0,108
	add 4,4,0
	addi 4,4,44
.L424:
	.loc 1 1038 0
	lwz 0,132(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI126:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 1021 0
	b glSetSrc
.LVL335:
.L381:
.LCFI127:
	.cfi_restore_state
	.loc 1 1024 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L408
	fctiwz 0,1
	addi 9,1,68
	stfiwx 0,0,9
	lwz 3,68(1)
.LVL336:
.L409:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 0,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 0,0,108
	add 4,4,0
	addi 4,4,64
	b .L424
.LVL337:
.L431:
	.loc 1 1033 0
	lis 9,cur_tex@ha
	lis 3,glTexEnvs@ha
.LVL338:
	lwz 0,cur_tex@l(9)
.LVL339:
	la 3,glTexEnvs@l(3)
	mulli 0,0,108
	add 3,3,0
	addi 3,3,105
.L425:
	.loc 1 1038 0
	lwz 0,132(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI128:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 1033 0
	b glSetScale
.LVL340:
.L382:
.LCFI129:
	.cfi_restore_state
	.loc 1 1025 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L410
	fctiwz 0,1
	addi 9,1,60
	stfiwx 0,0,9
	lwz 3,60(1)
.LVL341:
.L411:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 0,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 0,0,108
	add 4,4,0
	addi 4,4,68
	b .L424
.LVL342:
.L377:
	.loc 1 1020 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L400
	fctiwz 0,1
	addi 9,1,100
	stfiwx 0,0,9
	lwz 3,100(1)
.LVL343:
.L401:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 0,cur_tex@l(9)
.LVL344:
	la 4,glTexEnvs@l(4)
	mulli 0,0,108
	add 4,4,0
	addi 4,4,36
	b .L424
.LVL345:
.L374:
	.loc 1 1018 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L396
	fctiwz 0,1
	addi 9,1,116
	stfiwx 0,0,9
	lwz 3,116(1)
.LVL346:
.L397:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 0,cur_tex@l(9)
.LVL347:
	la 4,glTexEnvs@l(4)
	mulli 0,0,108
	add 4,4,0
	.loc 1 1038 0
	lwz 0,132(1)
	.loc 1 1018 0
	addi 4,4,28
	.loc 1 1038 0
	mtlr 0
	addi 1,1,128
	.cfi_remember_state
.LCFI130:
	.cfi_def_cfa_offset 0
	.loc 1 1018 0
	b glSetComRGB
.LVL348:
.L373:
.LCFI131:
	.cfi_restore_state
	.loc 1 1017 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L394
	fctiwz 0,1
	addi 9,1,124
	stfiwx 0,0,9
	lwz 3,124(1)
.LVL349:
.L395:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 0,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 0,0,108
	add 4,4,0
	.loc 1 1038 0
	lwz 0,132(1)
	.loc 1 1017 0
	addi 4,4,24
	.loc 1 1038 0
	mtlr 0
	addi 1,1,128
	.cfi_remember_state
.LCFI132:
	.cfi_def_cfa_offset 0
	.loc 1 1017 0
	b glSetTexEnvMode
.LVL350:
.L384:
.LCFI133:
	.cfi_restore_state
	.loc 1 1027 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L414
	fctiwz 0,1
	addi 9,1,44
	stfiwx 0,0,9
	lwz 3,44(1)
.LVL351:
.L415:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 0,9,52
	b .L427
.LVL352:
.L386:
	.loc 1 1029 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L418
	fctiwz 0,1
	addi 9,1,28
	stfiwx 0,0,9
	lwz 3,28(1)
.LVL353:
.L419:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 0,9,48
	b .L426
.LVL354:
.L375:
	.loc 1 1019 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L398
	fctiwz 0,1
	addi 9,1,108
	stfiwx 0,0,9
	lwz 3,108(1)
.LVL355:
.L399:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	addi 0,9,32
	add 4,4,0
	.loc 1 1038 0
	lwz 0,132(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI134:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 1019 0
	b glSetComAlpha
.LVL356:
.L380:
.LCFI135:
	.cfi_restore_state
	.loc 1 1023 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L406
	fctiwz 0,1
	addi 9,1,76
	stfiwx 0,0,9
	lwz 3,76(1)
.LVL357:
.L407:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 0,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 0,0,108
	add 4,4,0
	addi 4,4,60
	b .L424
.LVL358:
.L432:
	.loc 1 1015 0
	ori 0,0,34163
	cmpw 7,3,0
	bne+ 7,.L371
	.loc 1 1032 0
	lis 9,cur_tex@ha
	lis 3,glTexEnvs@ha
.LVL359:
	lwz 0,cur_tex@l(9)
	la 3,glTexEnvs@l(3)
	mulli 0,0,108
	add 3,3,0
	addi 3,3,104
	b .L425
.LVL360:
.L430:
	.loc 1 1015 0
	ori 0,0,34194
	cmpw 7,3,0
	bne+ 7,.L371
	.loc 1 1028 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L416
	fctiwz 0,1
	addi 9,1,36
	stfiwx 0,0,9
	lwz 3,36(1)
.LVL361:
.L417:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 0,9,56
.L427:
	lis 4,glTexEnvs@ha
	la 4,glTexEnvs@l(4)
	add 4,4,0
	.loc 1 1038 0
	lwz 0,132(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI136:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 1028 0
	b glSetRGBOp
.LVL362:
.L408:
.LCFI137:
	.cfi_restore_state
	.loc 1 1024 0
	fsubs 0,1,13
	addi 9,1,64
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,64(1)
.LVL363:
	addis 3,3,0x8000
	b .L409
.LVL364:
.L400:
	.loc 1 1020 0
	fsubs 0,1,13
	addi 9,1,96
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,96(1)
.LVL365:
	addis 3,3,0x8000
	b .L401
.LVL366:
.L410:
	.loc 1 1025 0
	fsubs 0,1,13
	addi 9,1,56
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,56(1)
.LVL367:
	addis 3,3,0x8000
	b .L411
.LVL368:
.L418:
	.loc 1 1029 0
	fsubs 0,1,13
	addi 9,1,24
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,24(1)
.LVL369:
	addis 3,3,0x8000
	b .L419
.LVL370:
.L414:
	.loc 1 1027 0
	fsubs 0,1,13
	addi 9,1,40
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,40(1)
.LVL371:
	addis 3,3,0x8000
	b .L415
.LVL372:
.L394:
	.loc 1 1017 0
	fsubs 0,1,13
	addi 9,1,120
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,120(1)
.LVL373:
	addis 3,3,0x8000
	b .L395
.LVL374:
.L396:
	.loc 1 1018 0
	fsubs 0,1,13
	addi 9,1,112
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,112(1)
.LVL375:
	addis 3,3,0x8000
	b .L397
.LVL376:
.L406:
	.loc 1 1023 0
	fsubs 0,1,13
	addi 9,1,72
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,72(1)
.LVL377:
	addis 3,3,0x8000
	b .L407
.LVL378:
.L398:
	.loc 1 1019 0
	fsubs 0,1,13
	addi 9,1,104
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,104(1)
.LVL379:
	addis 3,3,0x8000
	b .L399
.LVL380:
.L387:
	.loc 1 1030 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L420
	fctiwz 0,1
	addi 9,1,20
	stfiwx 0,0,9
	lwz 3,20(1)
.LVL381:
.L421:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 0,9,52
	b .L426
.LVL382:
.L378:
	.loc 1 1021 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L402
	fctiwz 0,1
	addi 9,1,92
	stfiwx 0,0,9
	lwz 3,92(1)
.LVL383:
.L403:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 0,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 0,0,108
	add 4,4,0
	addi 4,4,40
	b .L424
.LVL384:
.L422:
	.loc 1 1031 0
	fsubs 0,1,13
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL385:
	addis 3,3,0x8000
	b .L423
.LVL386:
.L402:
	.loc 1 1021 0
	fsubs 0,1,13
	addi 9,1,88
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,88(1)
.LVL387:
	addis 3,3,0x8000
	b .L403
.LVL388:
.L412:
	.loc 1 1026 0
	fsubs 0,1,13
	addi 9,1,48
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,48(1)
.LVL389:
	addis 3,3,0x8000
	b .L413
.LVL390:
.L416:
	.loc 1 1028 0
	fsubs 0,1,13
	addi 9,1,32
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,32(1)
.LVL391:
	addis 3,3,0x8000
	b .L417
.LVL392:
.L404:
	.loc 1 1022 0
	fsubs 0,1,13
	addi 9,1,80
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,80(1)
.LVL393:
	addis 3,3,0x8000
	b .L405
.LVL394:
.L420:
	.loc 1 1030 0
	fsubs 0,1,13
	addi 9,1,16
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,16(1)
.LVL395:
	addis 3,3,0x8000
	b .L421
	.cfi_endproc
.LFE93:
	.size	_glTexEnvf, .-_glTexEnvf
	.align 2
	.globl _glTexEnvi
	.type	_glTexEnvi, @function
_glTexEnvi:
.LFB94:
	.loc 1 1041 0
	.cfi_startproc
.LVL396:
	mflr 0
	stwu 1,-24(1)
.LCFI138:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 0,28(1)
	.loc 1 1042 0
	xoris 0,3,0xffff
	.cfi_offset 65, 4
	cmpwi 7,0,-31352
	beq 7,.L443
	cmplwi 7,3,34184
	li 0,0
	ble- 7,.L461
	ori 0,0,34193
	cmpw 7,3,0
	beq- 7,.L447
	cmplwi 7,3,34193
	li 0,0
	ble- 7,.L462
	ori 0,0,34200
	cmpw 7,3,0
	beq- 7,.L449
	cmplwi 7,3,34200
	li 0,0
	ble- 7,.L463
	ori 0,0,34201
	cmpw 7,3,0
	beq- 7,.L450
	xoris 0,3,0xffff
	cmpwi 7,0,-31334
	bne 7,.L434
	.loc 1 1058 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 0,9,56
	b .L459
.L461:
	.loc 1 1042 0
	ori 0,0,34162
	cmpw 7,3,0
	beq- 7,.L438
	cmplwi 7,3,34162
	bgt- 7,.L453
	cmpwi 7,3,8704
	beq- 7,.L436
	xoris 0,3,0xffff
	cmpwi 7,0,-31375
	beq 7,.L437
	cmpwi 7,3,3356
	beq- 7,.L464
.L434:
	.loc 1 1062 0
	lis 4,.LC0@ha
.LVL397:
	li 3,1280
.LVL398:
	la 4,.LC0@l(4)
	li 5,1062
	bl _glSetErrorEx
	.loc 1 1065 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI139:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL399:
.L462:
.LCFI140:
	.cfi_restore_state
	.loc 1 1042 0
	ori 0,0,34186
	cmpw 7,3,0
	beq- 7,.L445
	cmplwi 7,3,34186
	bge- 7,.L465
	.loc 1 1051 0
	lis 9,cur_tex@ha
	mr 3,4
.LVL400:
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	addi 4,9,64
.LVL401:
.L457:
	.loc 1 1065 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI141:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 1048 0
	b glSetSrc
.LVL402:
.L453:
.LCFI142:
	.cfi_restore_state
	.loc 1 1042 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31360
	beq 7,.L440
	cmplwi 7,3,34176
	li 0,0
	ble- 7,.L466
	ori 0,0,34177
	cmpw 7,3,0
	beq- 7,.L441
	xoris 0,3,0xffff
	cmpwi 7,0,-31358
	bne 7,.L434
	.loc 1 1049 0
	lis 9,cur_tex@ha
	mr 3,4
.LVL403:
	lwz 0,cur_tex@l(9)
.LVL404:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	addi 4,9,44
.LVL405:
	b .L457
.LVL406:
.L464:
	.loc 1 1060 0
	lis 0,0x4330
	xoris 4,4,0x8000
.LVL407:
	stw 0,16(1)
	lis 9,.LC6@ha
	stw 4,20(1)
	lis 3,glTexEnvs@ha
.LVL408:
	lfs 0,.LC6@l(9)
	lis 9,cur_tex@ha
	lfd 1,16(1)
	la 3,glTexEnvs@l(3)
	lwz 0,cur_tex@l(9)
	fsub 1,1,0
	mulli 0,0,108
	frsp 1,1
	add 3,3,0
	addi 3,3,105
.LVL409:
.L458:
	.loc 1 1065 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI143:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 1060 0
	b glSetScale
.LVL410:
.L445:
.LCFI144:
	.cfi_restore_state
	.loc 1 1052 0
	lis 9,cur_tex@ha
	mr 3,4
.LVL411:
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	addi 4,9,68
.LVL412:
	b .L457
.LVL413:
.L440:
	.loc 1 1047 0
	lis 9,cur_tex@ha
	mr 3,4
.LVL414:
	lwz 0,cur_tex@l(9)
.LVL415:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	addi 4,9,36
.LVL416:
	b .L457
.LVL417:
.L437:
	.loc 1 1045 0
	lis 9,cur_tex@ha
	mr 3,4
.LVL418:
	lwz 0,cur_tex@l(9)
.LVL419:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	.loc 1 1065 0
	lwz 0,28(1)
	.loc 1 1045 0
	addi 4,9,28
.LVL420:
	.loc 1 1065 0
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI145:
	.cfi_def_cfa_offset 0
	.loc 1 1045 0
	b glSetComRGB
.LVL421:
.L436:
.LCFI146:
	.cfi_restore_state
	.loc 1 1044 0
	lis 9,cur_tex@ha
	mr 3,4
.LVL422:
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	.loc 1 1065 0
	lwz 0,28(1)
	.loc 1 1044 0
	addi 4,9,24
.LVL423:
	.loc 1 1065 0
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI147:
	.cfi_def_cfa_offset 0
	.loc 1 1044 0
	b glSetTexEnvMode
.LVL424:
.L447:
.LCFI148:
	.cfi_restore_state
	.loc 1 1054 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 0,9,52
.L460:
	.loc 1 1055 0
	mr 3,4
.LVL425:
	lis 4,glTexEnvs@ha
.LVL426:
	la 4,glTexEnvs@l(4)
	add 4,4,0
	.loc 1 1065 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI149:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 1055 0
	b glSetRGBOp
.LVL427:
.L449:
.LCFI150:
	.cfi_restore_state
	.loc 1 1056 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 0,9,48
.L459:
	.loc 1 1058 0
	mr 3,4
.LVL428:
	lis 4,glTexEnvs@ha
.LVL429:
	la 4,glTexEnvs@l(4)
	add 4,4,0
	.loc 1 1065 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI151:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 1058 0
	b glSetAlphaOp
.LVL430:
.L438:
.LCFI152:
	.cfi_restore_state
	.loc 1 1046 0
	lis 9,cur_tex@ha
	mr 3,4
.LVL431:
	lwz 9,cur_tex@l(9)
	lis 4,glTexEnvs@ha
.LVL432:
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	addi 0,9,32
	add 4,4,0
	.loc 1 1065 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI153:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 1046 0
	b glSetComAlpha
.LVL433:
.L443:
.LCFI154:
	.cfi_restore_state
	.loc 1 1050 0
	lis 9,cur_tex@ha
	mr 3,4
.LVL434:
	lwz 0,cur_tex@l(9)
.LVL435:
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	addi 4,9,60
.LVL436:
	b .L457
.LVL437:
.L466:
	.loc 1 1042 0
	ori 0,0,34163
	cmpw 7,3,0
	bne+ 7,.L434
	.loc 1 1059 0
	lis 0,0x4330
	xoris 4,4,0x8000
.LVL438:
	stw 0,8(1)
	lis 9,.LC6@ha
	stw 4,12(1)
	lis 3,glTexEnvs@ha
.LVL439:
	lfs 0,.LC6@l(9)
	lis 9,cur_tex@ha
	lfd 1,8(1)
	la 3,glTexEnvs@l(3)
	lwz 0,cur_tex@l(9)
	fsub 1,1,0
	mulli 0,0,108
	add 3,3,0
	frsp 1,1
	addi 3,3,104
	b .L458
.LVL440:
.L463:
	.loc 1 1042 0
	ori 0,0,34194
	cmpw 7,3,0
	bne+ 7,.L434
	.loc 1 1055 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 0,9,56
	b .L460
.L465:
	.loc 1 1042 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31344
	bne 7,.L434
	.loc 1 1053 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 0,9,48
	b .L460
.L441:
	.loc 1 1048 0
	lis 9,cur_tex@ha
	mr 3,4
.LVL441:
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	addi 4,9,40
.LVL442:
	b .L457
.LVL443:
.L450:
	.loc 1 1057 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 0,9,52
	b .L459
	.cfi_endproc
.LFE94:
	.size	_glTexEnvi, .-_glTexEnvi
	.align 2
	.globl glTexEnvf
	.type	glTexEnvf, @function
glTexEnvf:
.LFB98:
	.loc 1 1168 0
	.cfi_startproc
.LVL444:
	mflr 0
	stwu 1,-16(1)
.LCFI155:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 1169 0
	lis 9,cur_state@ha
	.loc 1 1168 0
	stw 0,20(1)
	.loc 1 1169 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L475
	.loc 1 1171 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31488
	beq 7,.L476
	.loc 1 1183 0
	cmpwi 7,3,8960
	beq- 7,.L477
	.loc 1 1187 0
	lis 4,.LC0@ha
.LVL445:
	li 3,1280
.LVL446:
	la 4,.LC0@l(4)
	li 5,1187
	bl _glSetErrorEx
.LVL447:
	.loc 1 1190 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI156:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL448:
.L477:
.LCFI157:
	.cfi_restore_state
	.loc 1 1185 0
	fctiwz 1,1
.LVL449:
	addi 9,1,8
	mr 3,4
.LVL450:
	stfiwx 1,0,9
	.loc 1 1190 0
	lwz 0,20(1)
.LVL451:
	.loc 1 1185 0
	lwz 4,8(1)
.LVL452:
	.loc 1 1190 0
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI158:
	.cfi_def_cfa_offset 0
	.loc 1 1185 0
	b _glTexEnvi
.LVL453:
.L476:
.LCFI159:
	.cfi_restore_state
	.loc 1 1172 0
	xoris 0,4,0xffff
	cmpwi 7,0,-31487
	beq 7,.L478
.LBB101:
.LBB102:
	.loc 1 1179 0
	lis 4,.LC0@ha
.LVL454:
	li 3,1280
.LVL455:
	la 4,.LC0@l(4)
	li 5,1179
	bl _glSetErrorEx
.LVL456:
.LBE102:
.LBE101:
	.loc 1 1190 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI160:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL457:
.L475:
.LCFI161:
	.cfi_restore_state
	.loc 1 1169 0 discriminator 1
	lis 4,.LC0@ha
.LVL458:
	li 3,1282
.LVL459:
	la 4,.LC0@l(4)
	li 5,1169
	bl _glSetErrorEx
.LVL460:
	.loc 1 1190 0 discriminator 1
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI162:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL461:
.L478:
.LCFI163:
	.cfi_restore_state
	.loc 1 1174 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	.loc 1 1190 0
	lwz 0,20(1)
	.loc 1 1174 0
	stfs 1,16(9)
	.loc 1 1190 0
	mtlr 0
	addi 1,1,16
.LCFI164:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE98:
	.size	glTexEnvf, .-glTexEnvf
	.align 2
	.globl glTexEnviv
	.type	glTexEnviv, @function
glTexEnviv:
.LFB97:
	.loc 1 1124 0
	.cfi_startproc
.LVL462:
	.loc 1 1125 0
	lis 9,cur_state@ha
	.loc 1 1124 0
	mflr 0
	.loc 1 1125 0
	lwz 9,cur_state@l(9)
	.loc 1 1124 0
	stwu 1,-88(1)
.LCFI165:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	.loc 1 1125 0
	andi. 11,9,1
	.loc 1 1124 0
	stw 0,92(1)
	.loc 1 1125 0
	bne- 0,.L495
	.cfi_offset 65, 4
	.loc 1 1127 0
	cmpwi 7,5,0
	beq- 7,.L496
	.loc 1 1133 0
	cmpwi 7,3,8960
	beq- 7,.L497
	.loc 1 1147 0
	xoris 11,3,0xffff
	cmpwi 7,11,-31488
	beq 7,.L498
	.loc 1 1162 0
	lis 4,.LC0@ha
.LVL463:
	li 3,1280
.LVL464:
	la 4,.LC0@l(4)
	li 5,1162
.LVL465:
	bl _glSetErrorEx
.LVL466:
.L479:
	.loc 1 1165 0
	lwz 0,92(1)
	addi 1,1,88
	.cfi_remember_state
.LCFI166:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL467:
.L498:
.LCFI167:
	.cfi_restore_state
	.loc 1 1149 0
	xoris 0,4,0xffff
	cmpwi 7,0,-31487
	beq 7,.L499
	.loc 1 1156 0
	lis 4,.LC0@ha
.LVL468:
	li 3,1280
.LVL469:
	la 4,.LC0@l(4)
	li 5,1156
.LVL470:
	bl _glSetErrorEx
.LVL471:
	.loc 1 1165 0
	lwz 0,92(1)
	addi 1,1,88
	.cfi_remember_state
.LCFI168:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL472:
.L497:
.LCFI169:
	.cfi_restore_state
	.loc 1 1135 0
	cmpwi 7,4,8705
	bne- 7,.L484
	.loc 1 1137 0
	lwz 9,0(5)
.LVL473:
	lis 11,cur_tex@ha
	lwz 0,cur_tex@l(11)
.LBB103:
.LBB104:
	.loc 1 1113 0
	cmpwi 7,9,0
	.loc 1 1115 0
	xoris 9,9,0x8000
	.loc 1 1113 0
	blt- 7,.L485
	.loc 1 1115 0
	stw 9,12(1)
	lis 9,0x4330
	stw 9,8(1)
	lis 10,.LC6@ha
	lfs 0,.LC6@l(10)
	lis 11,.LC9@ha
	lfd 13,8(1)
	fsub 0,13,0
	lfs 13,.LC9@l(11)
	frsp 0,0
	fmuls 0,0,13
.L486:
.LBE104:
.LBE103:
	.loc 1 1138 0
	lwz 8,4(5)
.LVL474:
	.loc 1 1137 0
	mulli 0,0,108
	lis 9,glTexEnvs@ha
.LBB106:
.LBB107:
	.loc 1 1113 0
	cmpwi 7,8,0
.LBE107:
.LBE106:
	.loc 1 1137 0
	la 9,glTexEnvs@l(9)
	add 7,9,0
.LBB111:
.LBB108:
	.loc 1 1115 0
	xoris 8,8,0x8000
.LBE108:
.LBE111:
	.loc 1 1137 0
	stfs 0,88(7)
.LBB112:
.LBB109:
	.loc 1 1113 0
	blt- 7,.L487
	.loc 1 1115 0
	stw 8,28(1)
	lis 8,0x4330
	stw 8,24(1)
	lfs 0,.LC6@l(10)
	lfd 12,24(1)
	lfs 13,.LC9@l(11)
	fsub 0,12,0
	frsp 0,0
	fmuls 0,0,13
.L488:
.LBE109:
.LBE112:
	.loc 1 1139 0
	lwz 8,8(5)
.LVL475:
	.loc 1 1138 0
	add 7,9,0
	stfs 0,92(7)
.LBB113:
.LBB114:
	.loc 1 1113 0
	cmpwi 7,8,0
	.loc 1 1115 0
	xoris 8,8,0x8000
	.loc 1 1113 0
	blt- 7,.L489
	.loc 1 1115 0
	stw 8,44(1)
	lis 8,0x4330
	stw 8,40(1)
	lfs 0,.LC6@l(10)
	lfd 12,40(1)
	lfs 13,.LC9@l(11)
	fsub 0,12,0
	frsp 0,0
	fmuls 0,0,13
.L490:
.LBE114:
.LBE113:
	.loc 1 1140 0
	lwz 8,12(5)
.LVL476:
	.loc 1 1139 0
	add 7,9,0
	stfs 0,96(7)
.LBB116:
.LBB117:
	.loc 1 1113 0
	cmpwi 7,8,0
	.loc 1 1115 0
	xoris 8,8,0x8000
	.loc 1 1113 0
	blt- 7,.L491
	.loc 1 1115 0
	stw 8,60(1)
	lis 8,0x4330
	stw 8,56(1)
	lfs 0,.LC6@l(10)
	lfd 12,56(1)
	lfs 13,.LC9@l(11)
	fsub 0,12,0
	frsp 0,0
	fmuls 0,0,13
.L492:
.LBE117:
.LBE116:
	.loc 1 1140 0
	add 9,9,0
	.loc 1 1165 0
	lwz 0,92(1)
	.loc 1 1140 0
	stfs 0,100(9)
	.loc 1 1165 0
	mtlr 0
	addi 1,1,88
	.cfi_remember_state
.LCFI170:
	.cfi_def_cfa_offset 0
	blr
.LVL477:
.L495:
.LCFI171:
	.cfi_restore_state
	.loc 1 1125 0 discriminator 1
	lis 4,.LC0@ha
.LVL478:
	li 3,1282
.LVL479:
	la 4,.LC0@l(4)
	li 5,1125
.LVL480:
	bl _glSetErrorEx
	.loc 1 1165 0 discriminator 1
	lwz 0,92(1)
	addi 1,1,88
	.cfi_remember_state
.LCFI172:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL481:
.L499:
.LCFI173:
	.cfi_restore_state
	.loc 1 1151 0
	lwz 0,0(5)
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	lis 9,cur_tex@ha
	xoris 0,0,0x8000
	stw 0,84(1)
	lis 0,0x4330
	stw 0,80(1)
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	lfd 13,80(1)
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	fsub 0,13,0
	add 9,9,0
	.loc 1 1165 0
	lwz 0,92(1)
	mtlr 0
	.loc 1 1151 0
	frsp 0,0
	stfs 0,16(9)
	.loc 1 1165 0
	addi 1,1,88
	.cfi_remember_state
.LCFI174:
	.cfi_def_cfa_offset 0
	blr
.L484:
.LCFI175:
	.cfi_restore_state
	.loc 1 1144 0
	lwz 0,0(5)
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	xoris 0,0,0x8000
	stw 0,76(1)
	lis 0,0x4330
	stw 0,72(1)
	.loc 1 1165 0
	lwz 0,92(1)
	.loc 1 1144 0
	lfd 1,72(1)
	.loc 1 1165 0
	mtlr 0
	addi 1,1,88
	.cfi_remember_state
.LCFI176:
	.cfi_def_cfa_offset 0
	.loc 1 1144 0
	fsub 1,1,0
	frsp 1,1
	b glTexEnvf
.LVL482:
.L496:
.LCFI177:
	.cfi_restore_state
	.loc 1 1129 0
	lis 4,.LC0@ha
.LVL483:
	li 3,1281
.LVL484:
	la 4,.LC0@l(4)
	li 5,1129
.LVL485:
	bl _glSetErrorEx
	.loc 1 1130 0
	b .L479
.LVL486:
.L491:
.LBB119:
.LBB118:
	.loc 1 1119 0
	stw 8,68(1)
	lis 8,0x4330
	stw 8,64(1)
	lfs 0,.LC6@l(10)
	lfd 12,64(1)
	lfs 13,.LC9@l(11)
	fsub 0,12,0
	frsp 0,0
	fmuls 0,0,13
	b .L492
.LVL487:
.L489:
.LBE118:
.LBE119:
.LBB120:
.LBB115:
	stw 8,52(1)
	lis 8,0x4330
	stw 8,48(1)
	lfs 0,.LC6@l(10)
	lfd 12,48(1)
	lfs 13,.LC9@l(11)
	fsub 0,12,0
	frsp 0,0
	fmuls 0,0,13
	b .L490
.LVL488:
.L487:
.LBE115:
.LBE120:
.LBB121:
.LBB110:
	stw 8,36(1)
	lis 8,0x4330
	stw 8,32(1)
	lfs 0,.LC6@l(10)
	lfd 12,32(1)
	lfs 13,.LC9@l(11)
	fsub 0,12,0
	frsp 0,0
	fmuls 0,0,13
	b .L488
.LVL489:
.L485:
.LBE110:
.LBE121:
.LBB122:
.LBB105:
	stw 9,20(1)
	lis 9,0x4330
	stw 9,16(1)
	lis 10,.LC6@ha
	lfs 0,.LC6@l(10)
	lis 11,.LC9@ha
	lfd 13,16(1)
	fsub 0,13,0
	lfs 13,.LC9@l(11)
	frsp 0,0
	fmuls 0,0,13
	b .L486
.LBE105:
.LBE122:
	.cfi_endproc
.LFE97:
	.size	glTexEnviv, .-glTexEnviv
	.align 2
	.globl glTexEnvfv
	.type	glTexEnvfv, @function
glTexEnvfv:
.LFB95:
	.loc 1 1068 0
	.cfi_startproc
.LVL490:
	.loc 1 1069 0
	lis 9,cur_state@ha
	.loc 1 1068 0
	mflr 0
	.loc 1 1069 0
	lwz 9,cur_state@l(9)
	.loc 1 1068 0
	stwu 1,-8(1)
.LCFI178:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1069 0
	andi. 11,9,1
	.loc 1 1068 0
	stw 0,12(1)
	.loc 1 1069 0
	bne- 0,.L508
	.cfi_offset 65, 4
	.loc 1 1071 0
	cmpwi 7,5,0
	beq- 7,.L509
	.loc 1 1077 0
	cmpwi 7,3,8960
	beq- 7,.L510
	.loc 1 1091 0
	xoris 11,3,0xffff
	cmpwi 7,11,-31488
	beq 7,.L511
	.loc 1 1106 0
	lis 4,.LC0@ha
.LVL491:
	li 3,1280
.LVL492:
	la 4,.LC0@l(4)
	li 5,1106
.LVL493:
	bl _glSetErrorEx
.LVL494:
.L500:
	.loc 1 1109 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI179:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL495:
.L511:
.LCFI180:
	.cfi_restore_state
	.loc 1 1093 0
	xoris 0,4,0xffff
	cmpwi 7,0,-31487
	beq 7,.L512
	.loc 1 1100 0
	lis 4,.LC0@ha
.LVL496:
	li 3,1280
.LVL497:
	la 4,.LC0@l(4)
	li 5,1100
.LVL498:
	bl _glSetErrorEx
.LVL499:
	.loc 1 1109 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI181:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL500:
.L510:
.LCFI182:
	.cfi_restore_state
	.loc 1 1079 0
	cmpwi 7,4,8705
	beq- 7,.L513
	.loc 1 1109 0
	lwz 0,12(1)
	.loc 1 1088 0
	lfs 1,0(5)
	.loc 1 1109 0
	mtlr 0
	addi 1,1,8
	.cfi_remember_state
.LCFI183:
	.cfi_def_cfa_offset 0
	.loc 1 1088 0
	b glTexEnvf
.LVL501:
.L508:
.LCFI184:
	.cfi_restore_state
	.loc 1 1069 0 discriminator 1
	lis 4,.LC0@ha
.LVL502:
	li 3,1282
.LVL503:
	la 4,.LC0@l(4)
	li 5,1069
.LVL504:
	bl _glSetErrorEx
	.loc 1 1109 0 discriminator 1
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI185:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL505:
.L512:
.LCFI186:
	.cfi_restore_state
	.loc 1 1095 0
	lis 9,cur_tex@ha
	lwz 0,0(5)
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 9,9,11
	stw 0,16(9)
	.loc 1 1109 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI187:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L513:
.LCFI188:
	.cfi_restore_state
	.loc 1 1081 0
	lis 9,cur_tex@ha
	lwz 0,0(5)
	lwz 11,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 11,11,108
	add 9,9,11
	stw 0,88(9)
	.loc 1 1082 0
	lwz 0,4(5)
	stw 0,92(9)
	.loc 1 1083 0
	lwz 0,8(5)
	stw 0,96(9)
	.loc 1 1084 0
	lwz 0,12(5)
	stw 0,100(9)
	.loc 1 1109 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI189:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L509:
.LCFI190:
	.cfi_restore_state
	.loc 1 1073 0
	lis 4,.LC0@ha
.LVL506:
	li 3,1281
.LVL507:
	la 4,.LC0@l(4)
	li 5,1073
.LVL508:
	bl _glSetErrorEx
	.loc 1 1074 0
	b .L500
	.cfi_endproc
.LFE95:
	.size	glTexEnvfv, .-glTexEnvfv
	.align 2
	.globl glTexEnvi
	.type	glTexEnvi, @function
glTexEnvi:
.LFB99:
	.loc 1 1193 0
	.cfi_startproc
.LVL509:
	mflr 0
	stwu 1,-16(1)
.LCFI191:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 1194 0
	lis 9,cur_state@ha
	.loc 1 1193 0
	stw 0,20(1)
	.loc 1 1194 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L522
	.loc 1 1196 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31488
	beq 7,.L523
	.loc 1 1208 0
	cmpwi 7,3,8960
	beq- 7,.L524
	.loc 1 1212 0
	mr 4,3
.LVL510:
	lis 3,.LC10@ha
.LVL511:
	la 3,.LC10@l(3)
	crxor 6,6,6
	bl printf
.LVL512:
	.loc 1 1213 0
	lis 4,.LC0@ha
	li 3,1280
	la 4,.LC0@l(4)
	li 5,1213
	bl _glSetErrorEx
	.loc 1 1216 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI192:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL513:
.L524:
.LCFI193:
	.cfi_restore_state
	lwz 0,20(1)
	.loc 1 1210 0
	mr 3,4
.LVL514:
	.loc 1 1216 0
	.loc 1 1210 0
	mr 4,5
.LVL515:
	.loc 1 1216 0
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI194:
	.cfi_def_cfa_offset 0
	.loc 1 1210 0
	b _glTexEnvi
.LVL516:
.L523:
.LCFI195:
	.cfi_restore_state
	.loc 1 1197 0
	xoris 0,4,0xffff
	cmpwi 7,0,-31487
	beq 7,.L525
	.loc 1 1204 0
	lis 4,.LC0@ha
.LVL517:
	li 3,1280
.LVL518:
	la 4,.LC0@l(4)
	li 5,1204
.LVL519:
	bl _glSetErrorEx
.LVL520:
	.loc 1 1216 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI196:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL521:
.L522:
.LCFI197:
	.cfi_restore_state
	.loc 1 1194 0 discriminator 1
	lis 4,.LC0@ha
.LVL522:
	li 3,1282
.LVL523:
	la 4,.LC0@l(4)
	li 5,1194
.LVL524:
	bl _glSetErrorEx
	.loc 1 1216 0 discriminator 1
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI198:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL525:
.L525:
.LCFI199:
	.cfi_restore_state
	.loc 1 1199 0
	lis 9,.LC6@ha
	lis 0,0x4330
	lfs 0,.LC6@l(9)
	xoris 5,5,0x8000
.LVL526:
	lis 9,cur_tex@ha
	stw 0,8(1)
	stw 5,12(1)
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	lfd 13,8(1)
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	fsub 0,13,0
	add 9,9,0
	.loc 1 1216 0
	lwz 0,20(1)
	mtlr 0
	.loc 1 1199 0
	frsp 0,0
	stfs 0,16(9)
	.loc 1 1216 0
	addi 1,1,16
.LCFI200:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE99:
	.size	glTexEnvi, .-glTexEnvi
	.align 2
	.globl resizeMan
	.type	resizeMan, @function
resizeMan:
.LFB101:
	.loc 1 1280 0
	.cfi_startproc
.LVL527:
	mflr 0
	stwu 1,-24(1)
.LCFI201:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 0,28(1)
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 1293 0
	lwz 0,8(3)
	lwz 9,12(3)
	.loc 1 1280 0
	stw 29,12(1)
	.loc 1 1293 0
	cmplw 7,9,0
	ble- 7,.L527
	.cfi_offset 29, -12
	.loc 1 1296 0
	cmpwi 7,0,0
	.loc 1 1295 0
	li 9,0
	stw 9,12(3)
.LVL528:
	.loc 1 1296 0
	beq- 7,.L527
	lwz 10,4(3)
	mtctr 0
.LVL529:
.L529:
	.loc 1 1298 0
	lbzx 11,10,9
	.loc 1 1296 0
	addi 9,9,1
	.loc 1 1298 0
	cmpwi 7,11,0
	beq- 7,.L528
	.loc 1 1299 0
	lwz 11,12(31)
	addi 11,11,1
	stw 11,12(31)
.L528:
.LVL530:
	.loc 1 1296 0
	bdnz .L529
.LVL531:
.L527:
	.loc 1 1304 0
	lwz 9,0(31)
	cmpwi 7,9,0
	beq- 7,.L530
	.loc 1 1304 0 is_stmt 0 discriminator 1
	lwz 11,4(31)
	cmpwi 7,11,0
	beq- 7,.L530
	.loc 1 1311 0 is_stmt 1
	cmplw 7,30,0
	.loc 1 1313 0
	li 3,1
.LVL532:
	.loc 1 1311 0
	bge- 7,.L532
.LVL533:
.L531:
	.loc 1 1344 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL534:
	lwz 31,20(1)
.LVL535:
	addi 1,1,24
	.cfi_remember_state
.LCFI202:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL536:
.L530:
.LCFI203:
	.cfi_restore_state
	.loc 1 1306 0
	li 0,0
	stw 0,8(31)
	.loc 1 1307 0
	stw 0,12(31)
.LVL537:
.L532:
.LBB125:
.LBB126:
	.loc 1 1316 0
	mulli 4,30,76
.LVL538:
	mr 3,9
	bl realloc
.LVL539:
	.loc 1 1317 0
	mr. 29,3
	beq- 0,.L543
	.loc 1 1323 0
	lwz 3,4(31)
.LVL540:
	mr 4,30
	bl realloc
.LVL541:
	.loc 1 1325 0
	cmpwi 0,3,0
	beq- 0,.L544
	.loc 1 1334 0
	lwz 9,8(31)
.LVL542:
	cmplw 7,30,9
	ble- 7,.L536
	addi 0,9,1
	.loc 1 1336 0
	subf 11,9,30
	cmplw 7,0,30
	mtctr 11
	li 0,0
	bgt- 7,.L545
.LVL543:
.L539:
	stbx 0,3,9
	.loc 1 1334 0
	addi 9,9,1
.LVL544:
	bdnz .L539
.L536:
.LBE126:
.LBE125:
	.loc 1 1344 0
	lwz 0,28(1)
.LBB130:
.LBB127:
	.loc 1 1339 0
	stw 30,8(31)
.LBE127:
.LBE130:
	.loc 1 1344 0
	mtlr 0
.LBB131:
.LBB128:
	.loc 1 1340 0
	stw 29,0(31)
	.loc 1 1341 0
	stw 3,4(31)
	.loc 1 1343 0
	li 3,1
.LVL545:
.LBE128:
.LBE131:
	.loc 1 1344 0
	lwz 29,12(1)
.LVL546:
	lwz 30,16(1)
.LVL547:
	lwz 31,20(1)
.LVL548:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI204:
	.cfi_def_cfa_offset 0
	blr
.LVL549:
.L543:
.LCFI205:
	.cfi_restore_state
.LBB132:
.LBB129:
	.loc 1 1319 0
	lis 4,.LC0@ha
	li 3,1285
.LVL550:
	la 4,.LC0@l(4)
	li 5,1319
	bl _glSetErrorEx
	.loc 1 1320 0
	li 3,0
	b .L531
.LVL551:
.L544:
	.loc 1 1327 0
	stw 29,0(31)
	.loc 1 1329 0
	lis 4,.LC0@ha
	li 3,1285
.LVL552:
	la 4,.LC0@l(4)
	li 5,1329
	bl _glSetErrorEx
	.loc 1 1330 0
	li 3,0
	b .L531
.LVL553:
.L545:
	li 11,1
	mtctr 11
	b .L539
.LBE129:
.LBE132:
	.cfi_endproc
.LFE101:
	.size	resizeMan, .-resizeMan
	.align 2
	.globl initTextures
	.type	initTextures, @function
initTextures:
.LFB100:
	.loc 1 1222 0
	.cfi_startproc
	stwu 1,-32(1)
.LCFI206:
	.cfi_def_cfa_offset 32
	mflr 0
	.loc 1 1225 0
	lis 11,texMan@ha
	.loc 1 1223 0
	lis 10,cur_tex@ha
	.loc 1 1225 0
	la 9,texMan@l(11)
	.loc 1 1222 0
	stw 31,28(1)
	.loc 1 1223 0
	li 31,0
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 1222 0
	stw 0,36(1)
	stw 26,8(1)
	.loc 1 1226 0
	mr 3,9
	.loc 1 1222 0
	stw 27,12(1)
	.loc 1 1226 0
	li 4,4000
	.loc 1 1222 0
	stw 28,16(1)
	.loc 1 1238 0
	li 27,4
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	.loc 1 1222 0
	stw 29,20(1)
	.loc 1 1272 0
	li 28,-1
	.loc 1 1222 0
	stw 30,24(1)
	.loc 1 1232 0
	lis 30,glTexEnvs@ha
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.loc 1 1225 0
	stw 31,4(9)
	.loc 1 1232 0
	la 30,glTexEnvs@l(30)
	.loc 1 1225 0
	stw 31,8(9)
	.loc 1 1242 0
	li 29,0
	.loc 1 1225 0
	stw 31,12(9)
	.loc 1 1223 0
	stw 31,cur_tex@l(10)
	.loc 1 1225 0
	stw 31,texMan@l(11)
	.loc 1 1226 0
	bl resizeMan
	.loc 1 1232 0
	lis 10,unpack@ha
	.loc 1 1231 0
	lis 8,pack@ha
	.loc 1 1232 0
	la 9,unpack@l(10)
	.loc 1 1231 0
	li 0,4
	la 11,pack@l(8)
	.loc 1 1232 0
	stb 31,1(9)
	stw 31,4(9)
	.loc 1 1265 0
	li 3,0
	.loc 1 1232 0
	stw 31,8(9)
	.loc 1 1234 0
	li 7,0
	.loc 1 1232 0
	stw 31,12(9)
	.loc 1 1239 0
	li 12,1
	.loc 1 1232 0
	stw 0,16(9)
.LVL554:
	.loc 1 1243 0
	lis 9,.LC3@ha
	.loc 1 1231 0
	stb 31,pack@l(8)
	.loc 1 1265 0
	ori 3,3,34168
	.loc 1 1231 0
	stb 31,1(11)
	.loc 1 1250 0
	li 8,0
	.loc 1 1231 0
	stw 31,4(11)
	.loc 1 1268 0
	li 4,768
	.loc 1 1231 0
	stw 31,8(11)
	.loc 1 1269 0
	li 5,770
	.loc 1 1231 0
	stw 31,12(11)
	.loc 1 1260 0
	li 6,5890
	.loc 1 1231 0
	stw 0,16(11)
	.loc 1 1236 0
	li 0,0
	.loc 1 1232 0
	stb 31,unpack@l(10)
	.loc 1 1249 0
	li 31,8448
	.loc 1 1243 0
	lwz 26,.LC3@l(9)
	.loc 1 1232 0
	mr 9,30
.LVL555:
.L550:
	.loc 1 1250 0
	mulli 11,7,108
	.loc 1 1236 0
	stb 0,0(9)
	.loc 1 1238 0
	stb 27,1(9)
	.loc 1 1250 0
	add 10,30,11
	.loc 1 1239 0
	stb 12,2(9)
	.loc 1 1240 0
	stb 12,3(9)
	.loc 1 1221 0
	addi 11,11,48
	.loc 1 1241 0
	stb 12,4(9)
	.loc 1 1221 0
	add 11,30,11
	.loc 1 1242 0
	stw 29,8(9)
	.loc 1 1243 0
	stw 26,12(9)
	.loc 1 1244 0
	stw 29,16(9)
	.loc 1 1245 0
	stb 0,20(9)
	.loc 1 1246 0
	stb 0,21(9)
	.loc 1 1247 0
	stb 0,22(9)
	.loc 1 1249 0
	stw 31,24(9)
	.loc 1 1250 0
	stw 8,88(10)
	stw 8,92(10)
	stw 8,96(10)
	stw 8,100(10)
	.loc 1 1221 0
	li 10,1
	.loc 1 1258 0
	cmpwi 7,10,1
	.loc 1 1253 0
	stw 31,28(9)
	.loc 1 1254 0
	stw 31,32(9)
.LVL556:
	.loc 1 1256 0
	cmpwi 6,10,3
	.loc 1 1258 0
	bne- 7,.L548
.LVL557:
.L552:
	.loc 1 1260 0
	stw 6,36(9)
	.loc 1 1261 0
	stw 6,60(9)
	.loc 1 1268 0
	stw 4,0(11)
	.loc 1 1269 0
	stw 5,24(11)
.LVL558:
.L549:
	.loc 1 1254 0
	addi 10,10,1
.LVL559:
	addi 11,11,4
	.loc 1 1258 0
	cmpwi 7,10,1
	.loc 1 1256 0
	cmpwi 6,10,3
	.loc 1 1258 0
	beq- 7,.L552
.LVL560:
.L548:
	.loc 1 1265 0
	stw 3,-12(11)
	.loc 1 1266 0
	stw 3,12(11)
	.loc 1 1268 0
	stw 4,0(11)
	.loc 1 1269 0
	stw 5,24(11)
.LVL561:
	.loc 1 1256 0
	bne- 6,.L549
.LVL562:
	.loc 1 1234 0
	cmpwi 7,7,7
	.loc 1 1272 0
	stw 28,84(9)
	.loc 1 1274 0
	stb 0,104(9)
	.loc 1 1234 0
	addi 7,7,1
.LVL563:
	.loc 1 1275 0
	stb 0,105(9)
	.loc 1 1234 0
	addi 9,9,108
	bne+ 7,.L550
	.loc 1 1277 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI207:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE100:
	.size	initTextures, .-initTextures
	.align 2
	.globl activateTex
	.type	activateTex, @function
activateTex:
.LFB102:
	.loc 1 1347 0
	.cfi_startproc
.LVL564:
	mflr 0
	stwu 1,-24(1)
.LCFI208:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 1348 0
	addi 4,4,-1
.LVL565:
	.loc 1 1347 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
	.loc 1 1350 0
	lwz 9,4(3)
	lbzx 30,9,4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	cmpwi 7,30,0
	beq- 7,.L557
	.loc 1 1369 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI209:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.L557:
.LCFI210:
	.cfi_restore_state
	.loc 1 1353 0
	li 0,1
	.loc 1 1355 0
	mulli 29,4,76
	.loc 1 1353 0
	stbx 0,9,4
	.loc 1 1355 0
	li 5,76
	li 4,0
.LVL566:
	lwz 3,0(3)
.LVL567:
	add 3,3,29
	bl memset
	.loc 1 1356 0
	lwz 11,0(31)
	.loc 1 1363 0
	li 9,0
	.loc 1 1356 0
	add 11,11,29
	.loc 1 1360 0
	stb 30,74(11)
.LVL568:
	.loc 1 1356 0
	stw 30,4(11)
	.loc 1 1360 0
	lwz 0,0(31)
	.loc 1 1357 0
	stw 30,20(11)
	.loc 1 1358 0
	stw 30,24(11)
	.loc 1 1360 0
	add 29,0,29
	.loc 1 1359 0
	stw 30,32(11)
	.loc 1 1365 0
	li 11,10
	mtctr 11
	li 0,0
.LVL569:
.L555:
	.loc 1 1346 0 discriminator 2
	add 11,29,9
	.loc 1 1363 0 discriminator 2
	addi 9,9,1
.LVL570:
	.loc 1 1365 0 discriminator 2
	stb 0,8(11)
	.loc 1 1363 0 discriminator 2
	bdnz .L555
	.loc 1 1368 0
	lwz 9,12(31)
.LVL571:
	.loc 1 1369 0
	lwz 29,12(1)
	.loc 1 1368 0
	addi 0,9,1
	.loc 1 1369 0
	lwz 30,16(1)
	.loc 1 1368 0
	stw 0,12(31)
	.loc 1 1369 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL572:
	mtlr 0
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI211:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE102:
	.size	activateTex, .-activateTex
	.align 2
	.globl deleteTex
	.type	deleteTex, @function
deleteTex:
.LFB103:
	.loc 1 1372 0
	.cfi_startproc
.LVL573:
	mflr 0
	stwu 1,-24(1)
.LCFI212:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	.loc 1 1373 0
	addi 29,4,-1
	.cfi_offset 29, -12
.LVL574:
	.loc 1 1372 0
	stw 0,28(1)
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 31,20(1)
	.loc 1 1375 0
	lwz 9,4(3)
	lbzx 0,9,29
	cmpwi 7,0,0
	beq- 7,.L558
	.cfi_offset 31, -4
	.loc 1 1378 0
	lwz 31,0(3)
	mulli 0,29,76
	add 31,31,0
.LVL575:
	.loc 1 1380 0
	lwz 3,4(31)
.LVL576:
	cmpwi 7,3,0
	beq- 7,.L560
	.loc 1 1382 0
	lwz 4,28(31)
.LVL577:
	bl releaseTextureSlot
.L560:
	.loc 1 1385 0
	li 0,0
	.loc 1 1393 0
	li 11,10
	.loc 1 1385 0
	stw 0,4(31)
	.loc 1 1393 0
	mtctr 11
	.loc 1 1386 0
	stw 0,20(31)
	.loc 1 1391 0
	li 9,0
	.loc 1 1387 0
	stw 0,24(31)
	.loc 1 1388 0
	stw 0,32(31)
.LVL578:
.L561:
	.loc 1 1371 0 discriminator 2
	add 11,31,9
	.loc 1 1391 0 discriminator 2
	addi 9,9,1
.LVL579:
	.loc 1 1393 0 discriminator 2
	stb 0,8(11)
	.loc 1 1391 0 discriminator 2
	bdnz .L561
	.loc 1 1396 0
	lwz 9,4(30)
.LVL580:
	li 0,0
	stbx 0,9,29
	.loc 1 1397 0
	lwz 9,12(30)
	addi 0,9,-1
	stw 0,12(30)
.LVL581:
.L558:
	.loc 1 1399 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL582:
	mtlr 0
	lwz 30,16(1)
.LVL583:
	lwz 31,20(1)
	addi 1,1,24
.LCFI213:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE103:
	.size	deleteTex, .-deleteTex
	.align 2
	.globl isUsed
	.type	isUsed, @function
isUsed:
.LFB104:
	.loc 1 1403 0
	.cfi_startproc
.LVL584:
	.loc 1 1405 0
	lwz 0,8(3)
	.loc 1 1404 0
	addi 4,4,-1
.LVL585:
	.loc 1 1403 0
	mr 9,3
	.loc 1 1406 0
	li 3,0
.LVL586:
	.loc 1 1405 0
	cmplw 7,4,0
	bgelr- 7
	.loc 1 1409 0
	lwz 9,4(9)
.LVL587:
	lbzx 3,9,4
	.loc 1 1410 0
	blr
	.cfi_endproc
.LFE104:
	.size	isUsed, .-isUsed
	.align 2
	.globl getTex
	.type	getTex, @function
getTex:
.LFB105:
	.loc 1 1414 0
	.cfi_startproc
.LVL588:
	.loc 1 1415 0
	addi 4,4,-1
.LVL589:
	lwz 3,0(3)
.LVL590:
	mulli 4,4,76
.LVL591:
	.loc 1 1416 0
	add 3,3,4
	blr
	.cfi_endproc
.LFE105:
	.size	getTex, .-getTex
	.align 2
	.globl getCur
	.type	getCur, @function
getCur:
.LFB106:
	.loc 1 1419 0
	.cfi_startproc
.LVL592:
	.loc 1 1420 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	add 9,9,0
	lwz 11,84(9)
.LVL593:
.LBB139:
.LBB140:
	.loc 1 1405 0
	lwz 9,8(3)
.LVL594:
	.loc 1 1404 0
	addi 0,11,-1
.LVL595:
	.loc 1 1405 0
	cmplw 7,0,9
	bge- 7,.L568
.LVL596:
	.loc 1 1409 0
	lwz 9,4(3)
.LBE140:
.LBE139:
	.loc 1 1420 0
	lbzx 9,9,0
	cmpwi 7,9,0
	beq- 7,.L568
.LVL597:
.LBB141:
.LBB142:
	.loc 1 1421 0
	mulli 0,0,76
.LVL598:
	lwz 3,0(3)
.LVL599:
	add 3,3,0
	blr
.LVL600:
.L568:
.LBE142:
.LBE141:
	.loc 1 1424 0
	lwz 3,0(3)
.LVL601:
	.loc 1 1425 0
	blr
	.cfi_endproc
.LFE106:
	.size	getCur, .-getCur
	.align 2
	.globl getNextTexID
	.type	getNextTexID, @function
getNextTexID:
.LFB107:
	.loc 1 1428 0
	.cfi_startproc
.LVL602:
	mflr 0
	stwu 1,-16(1)
.LCFI214:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	stw 0,20(1)
	stw 30,8(1)
	.loc 1 1430 0
	lwz 31,8(3)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	cmpwi 7,31,0
	beq- 7,.L571
	.loc 1 1432 0
	lwz 9,4(3)
	li 30,0
	mtctr 31
	lbz 0,0(9)
	cmpwi 7,0,0
	bne+ 7,.L573
	b .L581
.LVL603:
.L575:
	lbzx 0,9,30
	cmpwi 7,0,0
	beq- 7,.L580
.LVL604:
.L573:
	.loc 1 1430 0
	addi 30,30,1
.LVL605:
	bdnz .L575
.LVL606:
.L571:
	.loc 1 1441 0
	slwi 4,31,1
	.loc 1 1447 0
	li 30,0
	.loc 1 1441 0
	bl resizeMan
.LVL607:
	cmpwi 7,3,0
	beq- 7,.L574
	.loc 1 1443 0
	addi 30,31,1
.L574:
	.loc 1 1449 0
	lwz 0,20(1)
	mr 3,30
	lwz 31,12(1)
.LVL608:
	mtlr 0
	lwz 30,8(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI215:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL609:
.L580:
.LCFI216:
	.cfi_restore_state
	.loc 1 1432 0
	addi 30,30,1
.LVL610:
.L572:
	.loc 1 1434 0
	mr 4,30
	bl activateTex
.LVL611:
	.loc 1 1449 0
	lwz 0,20(1)
	mr 3,30
	lwz 31,12(1)
	mtlr 0
	lwz 30,8(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI217:
	.cfi_def_cfa_offset 0
	blr
.LVL612:
.L581:
.LCFI218:
	.cfi_restore_state
	.loc 1 1432 0
	li 30,1
	b .L572
	.cfi_endproc
.LFE107:
	.size	getNextTexID, .-getNextTexID
	.align 2
	.globl glGenTextures
	.type	glGenTextures, @function
glGenTextures:
.LFB108:
	.loc 1 1452 0
	.cfi_startproc
.LVL613:
	mflr 0
	stwu 1,-32(1)
.LCFI219:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 1453 0
	lis 9,cur_state@ha
	.loc 1 1452 0
	mfcr 12
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -12
	.cfi_register 70, 12
	stw 0,36(1)
	.loc 1 1453 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 1452 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 1453 0
	andi. 9,0,1
	.loc 1 1452 0
	stw 28,16(1)
	stw 30,24(1)
	stw 12,12(1)
	.loc 1 1453 0
	bne- 0,.L588
	.cfi_offset 70, -20
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.loc 1 1455 0
	cmpwi 4,3,0
	blt- 4,.L589
	.loc 1 1462 0
	lis 30,texMan@ha
	la 30,texMan@l(30)
	lwz 4,12(30)
.LVL614:
	mr 3,30
.LVL615:
	add 4,31,4
	bl resizeMan
.LVL616:
	.loc 1 1464 0
	beq- 4,.L582
	.loc 1 1451 0
	addi 29,29,-4
.LVL617:
	.loc 1 1464 0
	li 28,0
.LVL618:
.L586:
.LBB143:
	.loc 1 1466 0 discriminator 2
	mr 3,30
.LBE143:
	.loc 1 1464 0 discriminator 2
	addi 28,28,1
.LBB144:
	.loc 1 1466 0 discriminator 2
	bl getNextTexID
.LVL619:
.LBE144:
	.loc 1 1464 0 discriminator 2
	cmpw 7,31,28
.LBB145:
	.loc 1 1467 0 discriminator 2
	stwu 3,4(29)
.LVL620:
.LBE145:
	.loc 1 1464 0 discriminator 2
	bne+ 7,.L586
.LVL621:
.L582:
	.loc 1 1470 0
	lwz 0,36(1)
	lwz 12,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	mtcrf 8,12
	lwz 30,24(1)
	lwz 31,28(1)
.LVL622:
	addi 1,1,32
	.cfi_remember_state
.LCFI220:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL623:
.L588:
.LCFI221:
	.cfi_restore_state
	.loc 1 1453 0 discriminator 1
	lis 4,.LC0@ha
.LVL624:
	li 3,1282
.LVL625:
	la 4,.LC0@l(4)
	li 5,1453
	bl _glSetErrorEx
	.loc 1 1470 0 discriminator 1
	lwz 0,36(1)
	lwz 12,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL626:
	mtcrf 8,12
	lwz 30,24(1)
	lwz 31,28(1)
.LVL627:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 70
.LCFI222:
	.cfi_def_cfa_offset 0
	blr
.LVL628:
.L589:
.LCFI223:
	.cfi_restore_state
	.loc 1 1457 0
	lis 4,.LC0@ha
.LVL629:
	li 3,1281
.LVL630:
	la 4,.LC0@l(4)
	li 5,1457
	bl _glSetErrorEx
	.loc 1 1470 0
	lwz 0,36(1)
	lwz 12,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL631:
	mtcrf 8,12
	lwz 30,24(1)
	lwz 31,28(1)
.LVL632:
	addi 1,1,32
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 70
.LCFI224:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE108:
	.size	glGenTextures, .-glGenTextures
	.align 2
	.globl glBindTexture
	.type	glBindTexture, @function
glBindTexture:
.LFB109:
	.loc 1 1473 0
	.cfi_startproc
.LVL633:
	mflr 0
	stwu 1,-24(1)
.LCFI225:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 1474 0
	lis 9,cur_state@ha
	.loc 1 1473 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	.loc 1 1474 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 1473 0
	stw 31,20(1)
	mr 31,4
	.cfi_offset 31, -4
	.loc 1 1474 0
	andi. 9,0,1
	.loc 1 1473 0
	stw 30,16(1)
	.loc 1 1474 0
	bne- 0,.L593
	.cfi_offset 30, -8
	.loc 1 1476 0
	lis 30,texMan@ha
	la 3,texMan@l(30)
.LVL634:
	bl activateTex
.LVL635:
	.loc 1 1480 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
.LBB146:
.LBB147:
	.loc 1 1415 0
	addi 11,31,-1
.LBE147:
.LBE146:
	.loc 1 1480 0
	mulli 0,0,108
	.loc 1 1478 0
	lwz 10,texMan@l(30)
	mulli 11,11,76
	.loc 1 1481 0
	lwz 30,16(1)
	.loc 1 1480 0
	add 9,9,0
	.loc 1 1481 0
	lwz 0,28(1)
	.loc 1 1478 0
	add 11,10,11
	.loc 1 1481 0
	mtlr 0
	.loc 1 1478 0
	stw 29,32(11)
	.loc 1 1480 0
	stw 31,84(9)
	.loc 1 1481 0
	lwz 29,12(1)
.LVL636:
	lwz 31,20(1)
.LVL637:
	addi 1,1,24
	.cfi_remember_state
.LCFI226:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL638:
.L593:
.LCFI227:
	.cfi_restore_state
	.loc 1 1474 0 discriminator 1
	lis 4,.LC0@ha
.LVL639:
	li 3,1282
.LVL640:
	la 4,.LC0@l(4)
	li 5,1474
	bl _glSetErrorEx
	.loc 1 1481 0 discriminator 1
	lwz 0,28(1)
	lwz 29,12(1)
.LVL641:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL642:
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI228:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE109:
	.size	glBindTexture, .-glBindTexture
	.align 2
	.globl _glSetEnableTex
	.type	_glSetEnableTex, @function
_glSetEnableTex:
.LFB110:
	.loc 1 1484 0
	.cfi_startproc
.LVL643:
	.loc 1 1485 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	stbx 3,9,0
	.loc 1 1486 0
	blr
	.cfi_endproc
.LFE110:
	.size	_glSetEnableTex, .-_glSetEnableTex
	.align 2
	.globl _glGetEnableTex
	.type	_glGetEnableTex, @function
_glGetEnableTex:
.LFB111:
	.loc 1 1488 0
	.cfi_startproc
.LVL644:
	.loc 1 1489 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 0,0,108
	.loc 1 1490 0
	lbzx 3,9,0
.LVL645:
	blr
	.cfi_endproc
.LFE111:
	.size	_glGetEnableTex, .-_glGetEnableTex
	.align 2
	.globl GX_getTexObj
	.type	GX_getTexObj, @function
GX_getTexObj:
.LFB112:
	.loc 1 1493 0
	.cfi_startproc
.LVL646:
.LBB148:
.LBB149:
	.loc 1 1415 0
	addi 0,3,-1
	lis 9,texMan@ha
	mulli 0,0,76
	lwz 9,texMan@l(9)
.LBE149:
.LBE148:
	.loc 1 1497 0
	li 3,0
.LVL647:
	.loc 1 1496 0
	add. 9,9,0
	beqlr- 0
	.loc 1 1496 0 is_stmt 0 discriminator 1
	lwz 0,4(9)
	cmpwi 7,0,0
	beqlr- 7
	.loc 1 1500 0 is_stmt 1
	addi 3,9,36
	.loc 1 1501 0
	blr
	.cfi_endproc
.LFE112:
	.size	GX_getTexObj, .-GX_getTexObj
	.align 2
	.globl GX_SetTextures
	.type	GX_SetTextures, @function
GX_SetTextures:
.LFB113:
	.loc 1 1504 0
	.cfi_startproc
.LVL648:
	mflr 0
	stwu 1,-48(1)
.LCFI229:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 26,24(1)
.LBB150:
	.loc 1 1554 0
	lis 26,.LANCHOR0@ha
	.cfi_offset 26, -24
.LBE150:
	.loc 1 1504 0
	stw 31,44(1)
.LBB159:
.LBB151:
	lis 31,glTexEnvs+84@ha
	.cfi_offset 31, -4
.LBE151:
.LBE159:
	stw 0,52(1)
.LBB160:
.LBB152:
	la 31,glTexEnvs+84@l(31)
.LBE152:
.LBE160:
	stw 27,28(1)
.LBB161:
	.loc 1 1554 0
	la 26,.LANCHOR0@l(26)
.LBE161:
	.loc 1 1504 0
	stw 28,32(1)
.LBB162:
.LBB153:
.LBB154:
	.loc 1 1415 0
	lis 27,texMan@ha
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
.LBE154:
.LBE153:
.LBE162:
	.loc 1 1504 0
	stw 29,36(1)
	.loc 1 1507 0
	li 28,0
	.loc 1 1504 0
	stw 30,40(1)
	.loc 1 1504 0
	mr 29,3
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	li 30,255
.LVL649:
.L609:
.LBB163:
	.loc 1 1510 0
	lwz 3,0(31)
	cmpwi 7,3,-1
	beq- 7,.L601
	.loc 1 1515 0
	lbz 0,-84(31)
	cmpwi 7,0,0
	beq- 7,.L601
.LVL650:
.LBB156:
.LBB155:
	.loc 1 1415 0
	addi 3,3,-1
	lwz 0,texMan@l(27)
	mulli 3,3,76
.LBE155:
.LBE156:
	.loc 1 1522 0
	add. 3,0,3
	beq- 0,.L613
	.loc 1 1524 0
	lwz 0,4(3)
	cmpwi 7,0,0
	beq- 7,.L601
	.loc 1 1529 0
	lbz 9,72(3)
	addi 0,9,-2
	cmplwi 7,0,3
	bgt- 7,.L603
.LVL651:
.LBB157:
	.loc 1 1539 0 discriminator 1
	lbz 10,74(3)
	cmpwi 7,10,0
	beq- 7,.L603
	.loc 1 1541 0
	lbz 0,9(3)
	li 9,1
	cmpwi 7,0,0
	bne+ 7,.L605
	b .L601
.LVL652:
.L607:
	.loc 1 1503 0
	add 11,3,0
	.loc 1 1541 0
	lbz 11,8(11)
	cmpwi 7,11,0
	beq- 7,.L606
	mr 9,0
.LVL653:
.L605:
	.loc 1 1539 0
	addi 0,9,1
.LVL654:
	cmpw 7,0,10
	ble+ 7,.L607
.L606:
	.loc 1 1547 0
	cmpw 7,9,10
	blt- 7,.L601
.LVL655:
.L603:
.LBE157:
	.loc 1 1554 0
	cmplwi 7,30,6
	addi 3,3,36
.LBB158:
	li 4,0
.LBE158:
	bgt- 7,.L608
	add 9,26,30
	lbz 4,216(9)
.L608:
	bl GX_LoadTexObj
.LVL656:
	.loc 1 1556 0
	mr 3,29
	addi 4,1,8
	.loc 1 1558 0
	addi 28,28,1
	.loc 1 1556 0
	bl GX_SetTevStage
.LVL657:
	.loc 1 1560 0
	lwz 0,8(1)
	add 29,29,0
	rlwinm 29,29,0,0xff
.LVL658:
.L601:
	addi 30,30,1
	addi 31,31,108
	rlwinm 30,30,0,0xff
.LBE163:
	.loc 1 1508 0
	cmpwi 7,30,7
	bne+ 7,.L609
	.loc 1 1563 0
	mr 3,28
	bl GX_SetNumTexGens
	.loc 1 1566 0
	lwz 0,52(1)
	mr 3,29
	lwz 26,24(1)
	mtlr 0
	lwz 27,28(1)
	lwz 28,32(1)
.LVL659:
	lwz 29,36(1)
.LVL660:
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI230:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL661:
.L613:
.LCFI231:
	.cfi_restore_state
.LBB164:
	.loc 1 1522 0 discriminator 1
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
	la 5,.LANCHOR0@l(5)
	lis 6,.LC11@ha
	la 3,.LC0@l(3)
	li 4,1522
	addi 5,5,232
	la 6,.LC11@l(6)
	bl __assert_func
.LVL662:
.LBE164:
	.cfi_endproc
.LFE113:
	.size	GX_SetTextures, .-GX_SetTextures
	.align 2
	.globl convertInternalFormat
	.type	convertInternalFormat, @function
convertInternalFormat:
.LFB114:
	.loc 1 1569 0
	.cfi_startproc
.LVL663:
	.loc 1 1571 0
	li 9,0
	.loc 1 1569 0
	mr 0,3
	.loc 1 1571 0
	ori 9,9,32834
	cmpw 7,3,9
	.loc 1 1570 0
	li 9,1
	stw 9,0(4)
	.loc 1 1571 0
	li 9,0
	bgt- 7,.L623
.LVL664:
	ori 9,9,32832
	cmpw 7,3,9
	blt- 7,.L630
.L621:
	.loc 1 1588 0
	li 3,1
	blr
.L623:
	.loc 1 1571 0
	ori 9,9,32845
	cmpw 7,3,9
	li 9,0
	ble- 7,.L631
	ori 9,9,32854
	cmpw 7,3,9
	li 9,0
	ble- 7,.L632
	ori 9,9,32855
	cmpw 7,3,9
	.loc 1 1606 0
	li 3,5
	.loc 1 1571 0
	beqlr- 7
	li 9,0
	ori 9,9,32859
	cmpw 7,0,9
	ble- 7,.L619
.L615:
	.loc 1 1617 0
	li 0,0
.LVL665:
	.loc 1 1618 0
	li 3,5
	.loc 1 1617 0
	stw 0,0(4)
	.loc 1 1618 0
	blr
.LVL666:
.L631:
	.loc 1 1571 0
	ori 9,9,32843
	cmpw 7,3,9
	bge- 7,.L621
	li 9,0
	ori 9,9,32840
	cmpw 7,3,9
	bgt- 7,.L629
	li 9,0
	ori 9,9,32836
	cmpw 7,3,9
	blt- 7,.L617
.L620:
	.loc 1 1577 0
	li 3,3
	blr
.L630:
	.loc 1 1571 0
	cmpwi 7,3,6408
	beq- 7,.L619
	bgt- 7,.L624
	cmpwi 7,3,3
	beq- 7,.L618
	ble- 7,.L633
	cmpwi 7,3,6406
	beq- 7,.L620
	bgt- 7,.L618
	cmpwi 7,3,4
	bne+ 7,.L615
.L619:
	.loc 1 1614 0
	li 3,6
	blr
.L632:
	.loc 1 1571 0
	ori 9,9,32853
	cmpw 7,3,9
	bge- 7,.L619
	li 9,0
	ori 9,9,32847
	cmpw 7,3,9
	blt- 7,.L615
.L618:
	.loc 1 1605 0
	li 3,4
	blr
.L624:
	.loc 1 1571 0
	cmpwi 7,3,10768
	beq- 7,.L618
	bgt- 7,.L626
	cmpwi 7,3,6409
	beq- 7,.L629
	cmpwi 7,3,6410
	bne+ 7,.L615
.L617:
	.loc 1 1591 0
	li 3,2
	blr
.L626:
	.loc 1 1571 0
	li 9,0
	ori 9,9,32827
	cmpw 7,3,9
	blt- 7,.L615
	li 9,0
	ori 9,9,32830
	cmpw 7,3,9
	ble- 7,.L620
.L629:
	.loc 1 1582 0
	li 3,0
	.loc 1 1619 0
	blr
.L633:
	.loc 1 1571 0
	cmpwi 7,3,1
	beq- 7,.L629
	cmpwi 7,3,2
	bne+ 7,.L615
	b .L617
	.cfi_endproc
.LFE114:
	.size	convertInternalFormat, .-convertInternalFormat
	.align 2
	.globl GenArray
	.type	GenArray, @function
GenArray:
.LFB115:
	.loc 1 1623 0
	.cfi_startproc
.LVL667:
	mflr 0
	stwu 1,-16(1)
.LCFI232:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,6
	.cfi_offset 31, -4
	stw 0,20(1)
	mr 0,3
	.cfi_offset 65, 4
	.loc 1 1624 0
	li 6,1
.LVL668:
	rlwinm 3,4,0,0xffff
.LVL669:
	rlwinm 4,5,0,0xffff
.LVL670:
	mr 5,0
.LVL671:
	.loc 1 1623 0
	stw 30,8(1)
	.loc 1 1624 0
	.cfi_offset 30, -8
	bl GX_GetTexBufferSize
.LVL672:
	stw 3,0(31)
	.loc 1 1626 0
	bl getTextureSlot
.LVL673:
	.loc 1 1628 0
	mr. 30,3
	beq- 0,.L635
	.loc 1 1633 0
	lwz 5,0(31)
	li 4,127
	bl memset
.LVL674:
.L635:
	.loc 1 1636 0
	lwz 0,20(1)
	mr 3,30
	lwz 31,12(1)
.LVL675:
	mtlr 0
	lwz 30,8(1)
.LVL676:
	addi 1,1,16
.LCFI233:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE115:
	.size	GenArray, .-GenArray
	.align 2
	.globl IsPowerOfTwo
	.type	IsPowerOfTwo, @function
IsPowerOfTwo:
.LFB116:
	.loc 1 1638 0
	.cfi_startproc
.LVL677:
	.loc 1 1639 0
	neg 0,3
	.loc 1 1640 0
	.loc 1 1639 0
	and 0,0,3
	.loc 1 1640 0
	xor 3,0,3
.LVL678:
	cntlzw 3,3
	srwi 3,3,5
	blr
	.cfi_endproc
.LFE116:
	.size	IsPowerOfTwo, .-IsPowerOfTwo
	.align 2
	.globl computeStart
	.type	computeStart, @function
computeStart:
.LFB117:
	.loc 1 1643 0
	.cfi_startproc
.LVL679:
	.loc 1 1644 0
	mr. 7,4
	.loc 1 1643 0
	mflr 0
	stwu 1,-16(1)
.LCFI234:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 1644 0
	beq- 0,.L642
	.cfi_offset 65, 4
.LVL680:
.LBB169:
.LBB170:
	.loc 1 1651 0
	cmpwi 7,7,1
	.loc 1 1653 0
	lhz 3,22(3)
.LVL681:
	lhz 4,26(31)
.LVL682:
	lwz 5,0(31)
	.loc 1 1651 0
	beq- 7,.L643
	.loc 1 1657 0
	li 6,1
	rlwinm 7,7,0,0xff
.LVL683:
	bl GX_GetTexBufferSize
.LVL684:
.L641:
.LBB171:
.LBB172:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/glint.h"
	.loc 2 350 0
	lwz 0,4(31)
.LBE172:
.LBE171:
.LBE170:
.LBE169:
	.loc 1 1664 0
	lwz 31,12(1)
.LVL685:
.LBB177:
.LBB175:
.LBB174:
.LBB173:
	.loc 2 350 0
	add 3,0,3
.LVL686:
.LBE173:
.LBE174:
.LBE175:
.LBE177:
	.loc 1 1664 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI235:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	mtlr 0
	blr
.LVL687:
.L642:
.LCFI236:
	.cfi_restore_state
	lwz 0,20(1)
	.loc 1 1646 0
	lwz 3,4(3)
.LVL688:
	.loc 1 1664 0
	mtlr 0
	lwz 31,12(1)
.LVL689:
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI237:
	.cfi_def_cfa_offset 0
	blr
.LVL690:
.L643:
.LCFI238:
	.cfi_restore_state
.LBB178:
.LBB176:
	.loc 1 1653 0
	li 6,0
	bl GX_GetTexBufferSize
.LVL691:
	b .L641
.LBE176:
.LBE178:
	.cfi_endproc
.LFE117:
	.size	computeStart, .-computeStart
	.align 2
	.globl CorrectGLtype
	.type	CorrectGLtype, @function
CorrectGLtype:
.LFB118:
	.loc 1 1667 0
	.cfi_startproc
.LVL692:
	.loc 1 1668 0
	cmplwi 7,4,6410
	.loc 1 1667 0
	mflr 0
	stwu 1,-8(1)
.LCFI239:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 1667 0
	mr 0,3
	.cfi_offset 65, 4
	.loc 1 1668 0
	bgt- 7,.L647
.LVL693:
	cmplwi 7,4,6403
	blt- 7,.L658
.L646:
	.loc 1 1687 0
	cmplwi 7,0,32822
	ble- 7,.L659
	cmplwi 7,0,33634
	blt- 7,.L649
	cmplwi 7,0,33636
	ble- 7,.L650
	cmplwi 7,0,33640
	bgt- 7,.L649
.L651:
.LVL694:
.LBB181:
.LBB182:
	.loc 1 1711 0
	cmpwi 7,4,6408
	.loc 1 1713 0
	li 3,1
	.loc 1 1711 0
	beq- 7,.L648
	xoris 0,4,0xffff
.LVL695:
	cmpwi 7,0,-32543
	beq 7,.L648
	.loc 1 1717 0
	lis 4,.LC0@ha
.LVL696:
	li 3,1280
	la 4,.LC0@l(4)
	li 5,1717
	bl _glSetErrorEx
.LVL697:
	.loc 1 1718 0
	li 3,0
	b .L648
.LVL698:
.L647:
.LBE182:
.LBE181:
	.loc 1 1668 0
	addis 9,4,0xffff
	addi 9,9,32544
	cmplwi 7,9,1
	ble- 7,.L646
.L645:
	.loc 1 1683 0
	lis 4,.LC0@ha
.LVL699:
	li 3,1280
	la 4,.LC0@l(4)
	li 5,1683
	bl _glSetErrorEx
.LVL700:
	.loc 1 1684 0
	li 3,0
.L648:
	.loc 1 1737 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI240:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL701:
.L659:
.LCFI241:
	.cfi_restore_state
	.loc 1 1687 0
	cmplwi 7,0,32819
	bge- 7,.L651
	cmplwi 7,0,5120
	blt- 7,.L649
	cmplwi 7,0,5126
	.loc 1 1728 0
	li 3,1
	.loc 1 1687 0
	ble- 7,.L648
	xoris 9,0,0xffff
	cmpwi 7,9,-32718
	beq 7,.L650
.L649:
	.loc 1 1732 0
	lis 4,.LC0@ha
.LVL702:
	li 3,1280
	la 4,.LC0@l(4)
	li 5,1732
	bl _glSetErrorEx
.LVL703:
	.loc 1 1737 0
	lwz 0,12(1)
	.loc 1 1733 0
	li 3,0
	.loc 1 1737 0
	mtlr 0
	addi 1,1,8
	.cfi_remember_state
.LCFI242:
	.cfi_def_cfa_offset 0
	blr
.LVL704:
.L658:
.LCFI243:
	.cfi_restore_state
	.loc 1 1668 0
	cmpwi 7,4,6400
	bne+ 7,.L645
	b .L646
.L650:
	.loc 1 1693 0
	cmpwi 7,4,6407
	.loc 1 1695 0
	li 3,1
	.loc 1 1693 0
	beq- 7,.L648
	.loc 1 1699 0
	lis 4,.LC0@ha
.LVL705:
	li 3,1280
	la 4,.LC0@l(4)
	li 5,1699
	bl _glSetErrorEx
.LVL706:
	.loc 1 1737 0
	lwz 0,12(1)
	.loc 1 1700 0
	li 3,0
	.loc 1 1737 0
	mtlr 0
	addi 1,1,8
.LCFI244:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE118:
	.size	CorrectGLtype, .-CorrectGLtype
	.align 2
	.globl glTexSubImage2D
	.type	glTexSubImage2D, @function
glTexSubImage2D:
.LFB119:
	.loc 1 1745 0
	.cfi_startproc
.LVL707:
	mflr 0
	stwu 1,-112(1)
.LCFI245:
	.cfi_def_cfa_offset 112
	.cfi_register 65, 0
	.loc 1 1746 0
	lis 11,cur_state@ha
	.loc 1 1745 0
	stw 27,92(1)
	mr 27,8
	.cfi_offset 27, -20
	stw 0,116(1)
	.loc 1 1746 0
	lwz 0,cur_state@l(11)
	.cfi_offset 65, 4
	.loc 1 1745 0
	stw 28,96(1)
	mr 28,6
	.cfi_offset 28, -16
	.loc 1 1746 0
	andi. 11,0,1
	.loc 1 1745 0
	stw 29,100(1)
	stw 30,104(1)
	mr 29,7
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	stw 31,108(1)
	mr 30,5
	stw 25,84(1)
	mr 31,4
	.cfi_offset 25, -28
	.cfi_offset 31, -4
	stw 26,88(1)
	.loc 1 1746 0
	bne- 0,.L675
	.cfi_offset 26, -24
	.loc 1 1750 0
	cmpwi 7,3,3553
	bne- 7,.L676
	.loc 1 1757 0
	cmpwi 7,10,6656
	beq- 7,.L664
	.loc 1 1757 0 is_stmt 0 discriminator 1
	cmpwi 7,9,6400
	beq- 7,.L664
	.loc 1 1763 0 is_stmt 1
	cmplwi 7,4,10
	bgt- 7,.L677
	.loc 1 1769 0
	mr 3,10
.LVL708:
	mr 4,9
.LVL709:
	stw 9,72(1)
	stw 10,76(1)
	bl CorrectGLtype
.LVL710:
	.loc 1 1771 0
	cmpwi 7,3,0
	beq- 7,.L660
	.loc 1 1776 0
	bl getCur.constprop.12
.LVL711:
	.loc 1 1778 0
	lwz 9,72(1)
	lwz 0,4(3)
	.loc 1 1776 0
	mr 26,3
.LVL712:
	.loc 1 1778 0
	lwz 10,76(1)
	cmpwi 7,0,0
	beq- 7,.L678
.LVL713:
	.loc 1 1788 0
	xoris 11,30,0x8000
	lis 0,0x4330
	.loc 1 1785 0
	lwz 8,20(3)
.LVL714:
	.loc 1 1788 0
	lis 7,.LC4@ha
	.loc 1 1786 0
	lwz 6,24(3)
.LVL715:
	.loc 1 1788 0
	stw 11,28(1)
	lis 11,.LC6@ha
	stw 0,24(1)
	lfs 0,.LC6@l(11)
	lfd 12,24(1)
	lfs 13,.LC4@l(7)
	fsub 12,12,0
	frsp 12,12
	fcmpu 7,12,13
	blt- 7,.L668
	.loc 1 1785 0 discriminator 1
	sraw 8,8,31
	.loc 1 1789 0 discriminator 1
	add 7,30,29
	.loc 1 1785 0 discriminator 1
	xoris 8,8,0x8000
	.loc 1 1789 0 discriminator 1
	xoris 7,7,0x8000
	.loc 1 1785 0 discriminator 1
	stw 8,36(1)
	stw 0,32(1)
	.loc 1 1789 0 discriminator 1
	stw 7,44(1)
	stw 0,40(1)
	.loc 1 1785 0 discriminator 1
	lfd 11,32(1)
	.loc 1 1789 0 discriminator 1
	lfd 12,40(1)
	.loc 1 1785 0 discriminator 1
	fsub 11,11,0
	.loc 1 1789 0 discriminator 1
	fsub 12,12,0
	.loc 1 1785 0 discriminator 1
	frsp 11,11
	.loc 1 1789 0 discriminator 1
	frsp 12,12
	.loc 1 1788 0 discriminator 1
	fcmpu 7,11,12
	blt- 7,.L668
	.loc 1 1790 0
	xoris 8,28,0x8000
	stw 0,48(1)
	stw 8,52(1)
	lfd 12,48(1)
	fsub 0,12,0
	frsp 0,0
	.loc 1 1789 0
	fcmpu 7,0,13
	blt- 7,.L668
	.loc 1 1786 0
	sraw 6,6,31
	.loc 1 1791 0
	add 8,28,27
	.loc 1 1786 0
	xoris 6,6,0x8000
	.loc 1 1791 0
	xoris 8,8,0x8000
	.loc 1 1786 0
	stw 6,60(1)
	stw 0,56(1)
	.loc 1 1791 0
	stw 8,68(1)
	stw 0,64(1)
	.loc 1 1786 0
	lfs 0,.LC6@l(11)
	lfd 13,56(1)
	.loc 1 1791 0
	lfd 12,64(1)
	.loc 1 1786 0
	fsub 13,13,0
	.loc 1 1791 0
	fsub 0,12,0
	.loc 1 1786 0
	frsp 13,13
	.loc 1 1791 0
	frsp 0,0
	.loc 1 1790 0
	fcmpu 7,13,0
	blt- 7,.L668
	.loc 1 1797 0
	cmpwi 7,27,0
	blt- 7,.L671
	.loc 1 1797 0 is_stmt 0 discriminator 1
	cmpwi 7,29,0
	blt- 7,.L671
	.loc 1 1803 0 is_stmt 1
	lwz 0,68(3)
	cmpw 7,0,9
	beq- 7,.L679
	.loc 1 1809 0
	mr 4,31
	stw 9,72(1)
	stw 10,76(1)
	bl computeStart
.LVL716:
	.loc 1 1810 0
	lwz 0,24(26)
	.loc 1 1813 0
	lis 25,cur_tex@ha
	.loc 1 1810 0
	lwz 9,72(1)
	.loc 1 1809 0
	mr 4,3
.LVL717:
	.loc 1 1810 0
	lwz 10,76(1)
	.loc 1 1811 0
	add 31,26,31
.LVL718:
	.loc 1 1810 0
	lwz 5,0(26)
	mr 3,9
.LVL719:
	lwz 8,20(26)
	mr 7,10
	lwz 6,120(1)
	mr 9,0
	mr 10,30
	stw 28,8(1)
	stw 29,12(1)
	.loc 1 1813 0
	lis 30,glTexEnvs@ha
.LVL720:
	.loc 1 1810 0
	stw 27,16(1)
	bl TransferPixels
.LVL721:
	.loc 1 1813 0
	lwz 9,cur_tex@l(25)
	.loc 1 1811 0
	li 0,1
	stb 0,8(31)
	.loc 1 1813 0
	la 30,glTexEnvs@l(30)
	mulli 9,9,108
	addi 31,26,36
	lwz 4,4(26)
	mr 3,31
	add 9,30,9
	lhz 5,22(26)
	lhz 6,26(26)
	li 10,1
	lbz 7,3(26)
	lbz 8,3(9)
	lbz 9,4(9)
	bl GX_InitTexObj
	.loc 1 1815 0
	lwz 11,cur_tex@l(25)
	mr 3,31
	mulli 11,11,108
	add 11,30,11
	lbz 4,1(11)
	lbz 5,2(11)
	lfs 1,8(11)
	lfs 2,12(11)
	lfs 3,16(11)
	lbz 6,20(11)
	lbz 7,21(11)
	lbz 8,22(11)
	bl GX_InitTexObjLOD
	.loc 1 1819 0
	lwz 0,cur_tex@l(25)
	.loc 1 1821 0
	lwz 3,4(26)
	.loc 1 1819 0
	mulli 0,0,108
	.loc 1 1821 0
	lwz 4,28(26)
	.loc 1 1819 0
	add 30,30,0
	lbz 0,1(30)
	stb 0,72(26)
	.loc 1 1821 0
	bl DCFlushRange
	b .L660
.LVL722:
.L676:
	.loc 1 1752 0
	lis 4,.LC0@ha
.LVL723:
	li 3,1280
.LVL724:
	la 4,.LC0@l(4)
	li 5,1752
.LVL725:
	bl _glSetErrorEx
.LVL726:
.L660:
	.loc 1 1822 0
	lwz 0,116(1)
	lwz 25,84(1)
	mtlr 0
	lwz 26,88(1)
	lwz 27,92(1)
.LVL727:
	lwz 28,96(1)
.LVL728:
	lwz 29,100(1)
.LVL729:
	lwz 30,104(1)
	lwz 31,108(1)
	addi 1,1,112
	.cfi_remember_state
.LCFI246:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL730:
.L675:
.LCFI247:
	.cfi_restore_state
	.loc 1 1746 0 discriminator 1
	lis 4,.LC0@ha
.LVL731:
	li 3,1282
.LVL732:
	la 4,.LC0@l(4)
	li 5,1746
.LVL733:
	bl _glSetErrorEx
.LVL734:
	.loc 1 1822 0 discriminator 1
	lwz 0,116(1)
	lwz 25,84(1)
	mtlr 0
	lwz 26,88(1)
	lwz 27,92(1)
.LVL735:
	lwz 28,96(1)
.LVL736:
	lwz 29,100(1)
.LVL737:
	lwz 30,104(1)
.LVL738:
	lwz 31,108(1)
.LVL739:
	addi 1,1,112
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI248:
	.cfi_def_cfa_offset 0
	blr
.LVL740:
.L668:
.LCFI249:
	.cfi_restore_state
	.loc 1 1793 0
	lis 4,.LC0@ha
	li 3,1281
.LVL741:
	la 4,.LC0@l(4)
	li 5,1793
	bl _glSetErrorEx
.LVL742:
	.loc 1 1822 0
	lwz 0,116(1)
	lwz 25,84(1)
	mtlr 0
	lwz 26,88(1)
.LVL743:
	lwz 27,92(1)
.LVL744:
	lwz 28,96(1)
.LVL745:
	lwz 29,100(1)
.LVL746:
	lwz 30,104(1)
.LVL747:
	lwz 31,108(1)
.LVL748:
	addi 1,1,112
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI250:
	.cfi_def_cfa_offset 0
	blr
.LVL749:
.L677:
.LCFI251:
	.cfi_restore_state
	.loc 1 1765 0
	lis 4,.LC0@ha
.LVL750:
	li 3,1281
.LVL751:
	la 4,.LC0@l(4)
	li 5,1765
.LVL752:
	bl _glSetErrorEx
.LVL753:
	.loc 1 1822 0
	lwz 0,116(1)
	lwz 25,84(1)
	mtlr 0
	lwz 26,88(1)
	lwz 27,92(1)
.LVL754:
	lwz 28,96(1)
.LVL755:
	lwz 29,100(1)
.LVL756:
	lwz 30,104(1)
.LVL757:
	lwz 31,108(1)
.LVL758:
	addi 1,1,112
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI252:
	.cfi_def_cfa_offset 0
	blr
.LVL759:
.L664:
.LCFI253:
	.cfi_restore_state
	.loc 1 1759 0
	lis 4,.LC0@ha
.LVL760:
	li 3,1280
.LVL761:
	la 4,.LC0@l(4)
	li 5,1759
.LVL762:
	bl _glSetErrorEx
.LVL763:
	.loc 1 1822 0
	lwz 0,116(1)
	lwz 25,84(1)
	mtlr 0
	lwz 26,88(1)
	lwz 27,92(1)
.LVL764:
	lwz 28,96(1)
.LVL765:
	lwz 29,100(1)
.LVL766:
	lwz 30,104(1)
.LVL767:
	lwz 31,108(1)
.LVL768:
	addi 1,1,112
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI254:
	.cfi_def_cfa_offset 0
	blr
.LVL769:
.L671:
.LCFI255:
	.cfi_restore_state
	.loc 1 1799 0
	lis 4,.LC0@ha
	li 3,1281
.LVL770:
	la 4,.LC0@l(4)
	li 5,1799
	bl _glSetErrorEx
.LVL771:
	.loc 1 1800 0
	b .L660
.LVL772:
.L678:
	.loc 1 1780 0
	lis 4,.LC0@ha
	li 3,1282
	la 4,.LC0@l(4)
	li 5,1780
	bl _glSetErrorEx
	.loc 1 1781 0
	b .L660
.LVL773:
.L679:
	.loc 1 1805 0
	lis 4,.LC0@ha
	li 3,1280
	la 4,.LC0@l(4)
	li 5,1805
	bl _glSetErrorEx
.LVL774:
	.loc 1 1806 0
	b .L660
	.cfi_endproc
.LFE119:
	.size	glTexSubImage2D, .-glTexSubImage2D
	.align 2
	.globl glTexImage2D
	.type	glTexImage2D, @function
glTexImage2D:
.LFB121:
	.loc 1 1853 0
	.cfi_startproc
.LVL775:
	mflr 0
	stwu 1,-96(1)
.LCFI256:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
	.loc 1 1854 0
	lis 11,cur_state@ha
	.loc 1 1853 0
	stw 26,72(1)
	stw 0,100(1)
	.loc 1 1854 0
	lwz 0,cur_state@l(11)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	.loc 1 1853 0
	stw 29,84(1)
	mr 29,4
	.cfi_offset 29, -12
	.loc 1 1854 0
	andi. 8,0,1
.LVL776:
	.loc 1 1853 0
	stw 30,88(1)
	stw 31,92(1)
	mr 30,7
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	stw 23,60(1)
	mr 31,6
	stw 24,64(1)
	stw 25,68(1)
	stw 27,76(1)
	stw 28,80(1)
	.loc 1 1853 0
	lwz 26,104(1)
	.loc 1 1854 0
	bne- 0,.L714
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
.LVL777:
.LBB183:
.LBB184:
	.loc 1 1639 0
	neg 0,6
.LBE184:
.LBE183:
	.loc 1 1858 0
	li 23,0
.LBB186:
.LBB185:
	.loc 1 1639 0
	and 0,0,6
.LBE185:
.LBE186:
	.loc 1 1858 0
	cmpw 7,6,0
	beq- 7,.L715
.L683:
.LVL778:
	.loc 1 1860 0 discriminator 4
	xoris 0,3,0xffff
	cmpwi 7,0,-32668
	beq 7,.L716
	.loc 1 1877 0
	cmpwi 7,3,3553
	bne- 7,.L717
	.loc 1 1883 0
	cmpwi 7,23,0
	beq- 7,.L688
	.loc 1 1883 0 is_stmt 0 discriminator 1
	cmpwi 7,31,0
	blt- 7,.L688
	cmpwi 7,30,0
	blt- 7,.L688
	.loc 1 1890 0 is_stmt 1
	cmpwi 7,10,6656
	beq- 7,.L690
	.loc 1 1890 0 is_stmt 0 discriminator 1
	cmpwi 7,9,6400
	beq- 7,.L690
	.loc 1 1897 0 is_stmt 1
	cmplwi 7,29,10
	bgt- 7,.L718
	.loc 1 1903 0
	mr 3,10
.LVL779:
	mr 4,9
.LVL780:
	stw 5,40(1)
	stw 9,44(1)
	stw 10,48(1)
	bl CorrectGLtype
.LVL781:
	.loc 1 1905 0
	cmpwi 7,3,0
	.loc 1 1903 0
	stw 3,28(1)
	.loc 1 1905 0
	lwz 5,40(1)
	beq+ 7,.L680
	.loc 1 1910 0
	mr 3,5
.LVL782:
	addi 4,1,28
	bl convertInternalFormat
	.loc 1 1914 0
	lwz 0,28(1)
	.loc 1 1910 0
	mr 25,3
.LVL783:
	.loc 1 1914 0
	lwz 9,44(1)
	cmpwi 7,0,0
	lwz 10,48(1)
	beq- 7,.L719
	.loc 1 1922 0
	stw 9,44(1)
	.loc 1 1924 0
	slw 27,30,29
	.loc 1 1922 0
	stw 10,48(1)
	bl getCur.constprop.12
.LVL784:
	.loc 1 1930 0
	cmpwi 7,30,1
	.loc 1 1922 0
	mr 28,3
.LVL785:
	.loc 1 1930 0
	lwz 0,24(3)
	.loc 1 1925 0
	slw 24,31,29
.LVL786:
	.loc 1 1930 0
	lwz 9,44(1)
	lwz 10,48(1)
	beq- 7,.L720
.L694:
.LVL787:
	.loc 1 1933 0 discriminator 4
	cmpw 6,0,27
	beq- 6,.L708
	.loc 1 1933 0 is_stmt 0 discriminator 2
	li 0,0
	beq- 7,.L713
.LVL788:
.L696:
	.loc 1 1935 0 is_stmt 1 discriminator 1
	cmpwi 7,29,0
	li 23,0
	bne- 7,.L721
.L698:
	.loc 1 1941 0
	lwz 3,4(28)
.LVL789:
	cmpwi 7,3,0
	beq- 7,.L699
	.loc 1 1941 0 is_stmt 0 discriminator 1
	cmpwi 7,0,0
	bne- 7,.L700
	cmpwi 7,23,0
	bne- 7,.L700
	cmpwi 7,29,0
	bne- 7,.L700
.LBB187:
	.loc 1 1945 0 is_stmt 1
	lwz 4,28(28)
	stw 9,44(1)
	stw 10,48(1)
	bl releaseTextureSlot
	.loc 1 1946 0
	stw 29,4(28)
	lwz 10,48(1)
	lwz 9,44(1)
.L699:
.LVL790:
	.loc 1 1952 0 discriminator 1
	li 8,10
.LBE187:
	.loc 1 1935 0 discriminator 1
	li 11,0
.LBB189:
	.loc 1 1952 0 discriminator 1
	mtctr 8
	li 0,0
.LVL791:
.L701:
	.loc 1 1848 0 discriminator 2
	add 8,28,11
	.loc 1 1950 0 discriminator 2
	addi 11,11,1
.LVL792:
	.loc 1 1952 0 discriminator 2
	stb 0,8(8)
	.loc 1 1950 0 discriminator 2
	bdnz .L701
	.loc 1 1955 0
	mr 3,25
	mr 4,31
	mr 5,30
	addi 6,1,24
	li 7,10
	stw 9,44(1)
	stw 10,48(1)
	bl GenArray
.LVL793:
	.loc 1 1957 0
	cmpwi 7,3,0
	.loc 1 1955 0
	stw 3,4(28)
	.loc 1 1957 0
	lwz 9,44(1)
	lwz 10,48(1)
	beq- 7,.L722
	.loc 1 1973 0
	lbz 0,74(28)
	.loc 1 1964 0
	stw 9,68(28)
	.loc 1 1973 0
	cmpwi 7,0,0
.LVL794:
	.loc 1 1966 0
	lwz 0,24(1)
	.loc 1 1965 0
	stw 25,0(28)
	.loc 1 1966 0
	stw 0,28(28)
	.loc 1 1971 0
	li 0,3553
	.loc 1 1968 0
	stw 27,24(28)
	.loc 1 1969 0
	stw 24,20(28)
	.loc 1 1971 0
	stw 0,32(28)
	.loc 1 1973 0
	bne- 7,.L703
.LBB188:
	.loc 1 1975 0
	cmpw 7,27,24
	bge- 7,.L704
	mr 27,24
.LVL795:
.L704:
	.loc 1 1979 0
	cmpwi 7,27,1
	.loc 1 1977 0
	li 0,0
	.loc 1 1979 0
	li 11,1
	.loc 1 1977 0
	stb 0,74(28)
	.loc 1 1979 0
	bgt+ 7,.L705
	b .L703
.L711:
	mr 11,0
.L705:
	.loc 1 1981 0
	srawi 27,27,1
.LVL796:
	addi 0,11,1
	.loc 1 1979 0
	cmpwi 7,27,1
	.loc 1 1981 0
	rlwinm 0,0,0,0xff
	.loc 1 1979 0
	bgt+ 7,.L711
	stb 11,74(28)
.LVL797:
.L703:
.LBE188:
.LBE189:
	.loc 1 1995 0
	cmpwi 7,26,0
	beq- 7,.L680
.LBB190:
	.loc 1 1997 0
	mr 4,29
	mr 3,28
	stw 9,44(1)
	.loc 1 2002 0
	lis 27,cur_tex@ha
	.loc 1 1997 0
	stw 10,48(1)
	bl computeStart
	.loc 1 1998 0
	lwz 9,44(1)
	.loc 1 1997 0
	mr 4,3
.LVL798:
	.loc 1 1998 0
	lwz 10,48(1)
	mr 5,25
	mr 3,9
.LVL799:
	mr 6,26
	mr 7,10
	mr 8,31
	mr 9,30
	li 0,0
	li 10,0
	stw 0,8(1)
	stw 31,12(1)
	.loc 1 2000 0
	add 29,28,29
.LVL800:
	.loc 1 1998 0
	stw 30,16(1)
	bl TransferPixels
.LVL801:
	.loc 1 2002 0
	lwz 9,cur_tex@l(27)
	.loc 1 2000 0
	li 0,1
	.loc 1 2002 0
	lis 31,glTexEnvs@ha
.LVL802:
	.loc 1 2000 0
	stb 0,8(29)
	.loc 1 2002 0
	mulli 9,9,108
	la 31,glTexEnvs@l(31)
	addi 30,28,36
.LVL803:
	lwz 4,4(28)
	add 9,31,9
	lhz 5,22(28)
	lhz 6,26(28)
	mr 3,30
	lbz 7,3(28)
	li 10,1
	lbz 8,3(9)
	lbz 9,4(9)
	bl GX_InitTexObj
	.loc 1 2004 0
	lwz 11,cur_tex@l(27)
	mr 3,30
	mulli 11,11,108
	add 11,31,11
	lbz 4,1(11)
	lbz 5,2(11)
	lfs 1,8(11)
	lfs 2,12(11)
	lfs 3,16(11)
	lbz 6,20(11)
	lbz 7,21(11)
	lbz 8,22(11)
	bl GX_InitTexObjLOD
	.loc 1 2008 0
	lwz 0,cur_tex@l(27)
	.loc 1 2010 0
	lwz 3,4(28)
	.loc 1 2008 0
	mulli 0,0,108
	.loc 1 2010 0
	lwz 4,24(1)
	.loc 1 2008 0
	add 31,31,0
	lbz 0,1(31)
	stb 0,72(28)
	.loc 1 2010 0
	bl DCFlushRange
	b .L680
.LVL804:
.L717:
.LBE190:
	.loc 1 1879 0
	lis 4,.LC0@ha
.LVL805:
	li 3,1280
.LVL806:
	la 4,.LC0@l(4)
	li 5,1879
.LVL807:
	bl _glSetErrorEx
.LVL808:
.L680:
	.loc 1 2016 0
	lwz 0,100(1)
	lwz 23,60(1)
	mtlr 0
	lwz 24,64(1)
	lwz 25,68(1)
	lwz 26,72(1)
	lwz 27,76(1)
	lwz 28,80(1)
	lwz 29,84(1)
	lwz 30,88(1)
	lwz 31,92(1)
	addi 1,1,96
	.cfi_remember_state
.LCFI257:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
.LVL809:
.L716:
.LCFI258:
	.cfi_restore_state
	.loc 1 1862 0
	cmpwi 7,23,0
	beq- 7,.L685
	.loc 1 1862 0 is_stmt 0 discriminator 1
	li 0,1024
	sraw 0,0,29
	cmpw 7,31,0
	bgt- 7,.L685
	cmpw 7,30,0
	bgt- 7,.L685
	cmpwi 7,29,10
	ble- 7,.L686
.L685:
.LBB191:
	.loc 1 1864 0 is_stmt 1
	bl getCur.constprop.12
.LVL810:
	.loc 1 1865 0
	li 0,0
	stw 0,20(3)
	.loc 1 1866 0
	stw 0,24(3)
.LBE191:
	.loc 1 2016 0
	lwz 0,100(1)
	lwz 23,60(1)
.LVL811:
	mtlr 0
	lwz 24,64(1)
	lwz 25,68(1)
	lwz 26,72(1)
	lwz 27,76(1)
	lwz 28,80(1)
	lwz 29,84(1)
.LVL812:
	lwz 30,88(1)
.LVL813:
	lwz 31,92(1)
.LVL814:
	addi 1,1,96
	.cfi_remember_state
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI259:
	.cfi_def_cfa_offset 0
	blr
.LVL815:
.L715:
.LCFI260:
	.cfi_restore_state
.LBB192:
.LBB193:
	.loc 1 1639 0
	neg 23,7
	and 23,23,7
.LBE193:
.LBE192:
	.loc 1 1858 0
	xor 23,7,23
	cntlzw 23,23
	srwi 23,23,5
	b .L683
.LVL816:
.L714:
	.loc 1 1854 0 discriminator 1
	lis 4,.LC0@ha
.LVL817:
	li 3,1282
.LVL818:
	la 4,.LC0@l(4)
	li 5,1854
.LVL819:
	bl _glSetErrorEx
.LVL820:
	.loc 1 2016 0 discriminator 1
	lwz 0,100(1)
	lwz 23,60(1)
	mtlr 0
	lwz 24,64(1)
	lwz 25,68(1)
	lwz 26,72(1)
	lwz 27,76(1)
	lwz 28,80(1)
	lwz 29,84(1)
.LVL821:
	lwz 30,88(1)
.LVL822:
	lwz 31,92(1)
.LVL823:
	addi 1,1,96
	.cfi_remember_state
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI261:
	.cfi_def_cfa_offset 0
	blr
.LVL824:
.L688:
.LCFI262:
	.cfi_restore_state
	.loc 1 1885 0
	lis 4,.LC0@ha
.LVL825:
	li 3,1281
.LVL826:
	la 4,.LC0@l(4)
	li 5,1885
.LVL827:
	bl _glSetErrorEx
.LVL828:
	.loc 1 2016 0
	lwz 0,100(1)
	lwz 23,60(1)
.LVL829:
	mtlr 0
	lwz 24,64(1)
	lwz 25,68(1)
	lwz 26,72(1)
	lwz 27,76(1)
	lwz 28,80(1)
	lwz 29,84(1)
.LVL830:
	lwz 30,88(1)
.LVL831:
	lwz 31,92(1)
.LVL832:
	addi 1,1,96
	.cfi_remember_state
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI263:
	.cfi_def_cfa_offset 0
	blr
.LVL833:
.L718:
.LCFI264:
	.cfi_restore_state
	.loc 1 1899 0
	lis 4,.LC0@ha
.LVL834:
	li 3,1281
.LVL835:
	la 4,.LC0@l(4)
	li 5,1899
.LVL836:
	bl _glSetErrorEx
.LVL837:
	.loc 1 1900 0
	b .L680
.LVL838:
.L686:
.LBB194:
	.loc 1 1870 0
	bl getCur.constprop.12
.LVL839:
	.loc 1 1871 0
	slw 31,31,29
.LVL840:
	.loc 1 1872 0
	slw 30,30,29
.LVL841:
	.loc 1 1871 0
	stw 31,20(3)
	.loc 1 1872 0
	stw 30,24(3)
	b .L680
.LVL842:
.L690:
.LBE194:
	.loc 1 1892 0
	lis 4,.LC0@ha
	li 3,1280
.LVL843:
	la 4,.LC0@l(4)
	li 5,1892
.LVL844:
	bl _glSetErrorEx
.LVL845:
	.loc 1 1893 0
	b .L680
.LVL846:
.L700:
	.loc 1 1988 0
	lwz 0,0(28)
	cmpw 7,0,25
	beq+ 7,.L703
	.loc 1 1990 0
	lis 4,.LC0@ha
	li 3,1281
	la 4,.LC0@l(4)
	li 5,1990
	bl _glSetErrorEx
	.loc 1 1991 0
	b .L680
.LVL847:
.L720:
	.loc 1 1930 0 discriminator 1
	cmpwi 6,31,1
	bne+ 6,.L694
	cmpw 7,0,27
	beq- 7,.L723
	.loc 1 1930 0 is_stmt 0
	li 0,0
.L713:
	lwz 11,20(28)
.L695:
	.loc 1 1933 0 is_stmt 1 discriminator 1
	cmpw 7,11,24
	beq- 7,.L697
	.loc 1 1933 0 is_stmt 0 discriminator 4
	xori 23,31,1
.LVL848:
	cntlzw 23,23
	srwi 23,23,5
.L697:
.LVL849:
	.loc 1 1935 0 is_stmt 1 discriminator 5
	cmpwi 7,0,0
	bne+ 7,.L698
	.loc 1 1935 0 is_stmt 0 discriminator 1
	cmpwi 7,23,0
	bne+ 7,.L698
	b .L696
.LVL850:
.L719:
	.loc 1 1916 0 is_stmt 1
	lis 4,.LC0@ha
	li 3,1280
	la 4,.LC0@l(4)
	li 5,1916
	bl _glSetErrorEx
	.loc 1 1917 0
	b .L680
.LVL851:
.L708:
	lwz 11,20(28)
	.loc 1 1930 0
	li 0,0
	b .L695
.LVL852:
.L721:
	.loc 1 1937 0
	lis 4,.LC0@ha
	li 3,1281
.LVL853:
	la 4,.LC0@l(4)
	li 5,1937
	bl _glSetErrorEx
	.loc 1 1938 0
	b .L680
.LVL854:
.L723:
	.loc 1 1930 0 discriminator 1
	lwz 11,20(3)
	xor 0,24,11
	cntlzw 0,0
	srwi 0,0,5
.LVL855:
	b .L695
.LVL856:
.L722:
.LBB195:
	.loc 1 1959 0
	lis 4,.LC0@ha
	li 3,1285
	la 4,.LC0@l(4)
	li 5,1959
	bl _glSetErrorEx
	.loc 1 1960 0
	b .L680
.LBE195:
	.cfi_endproc
.LFE121:
	.size	glTexImage2D, .-glTexImage2D
	.align 2
	.globl glTexImage1D
	.type	glTexImage1D, @function
glTexImage1D:
.LFB120:
	.loc 1 1832 0
	.cfi_startproc
.LVL857:
	mflr 0
	stwu 1,-24(1)
.LCFI265:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 1833 0
	lis 11,cur_state@ha
	.loc 1 1832 0
	mr 12,8
	stw 31,20(1)
	mr 31,7
	.cfi_offset 31, -4
	stw 0,28(1)
	.loc 1 1833 0
	lwz 0,cur_state@l(11)
	.cfi_offset 65, 4
	andi. 11,0,1
	.loc 1 1832 0
	mr 11,9
	mr 0,10
	.loc 1 1833 0
	bne- 0,.L729
.LVL858:
	.loc 1 1835 0
	xoris 9,3,0xffff
.LVL859:
	.loc 1 1837 0
	li 3,0
.LVL860:
	.loc 1 1835 0
	cmpwi 7,9,-32669
	.loc 1 1837 0
	ori 3,3,32868
	.loc 1 1835 0
	beq 7,.L728
	.loc 1 1841 0
	li 3,3553
.L728:
	mr 8,31
.LVL861:
	li 7,1
.LVL862:
	mr 9,12
.LVL863:
	mr 10,11
	stw 0,8(1)
	bl glTexImage2D
.LVL864:
	.loc 1 1844 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL865:
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI266:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL866:
.L729:
.LCFI267:
	.cfi_restore_state
	.loc 1 1833 0 discriminator 1
	lis 4,.LC0@ha
.LVL867:
	li 3,1282
.LVL868:
	la 4,.LC0@l(4)
	li 5,1833
.LVL869:
	bl _glSetErrorEx
.LVL870:
	.loc 1 1844 0 discriminator 1
	lwz 0,28(1)
	lwz 31,20(1)
.LVL871:
	mtlr 0
	addi 1,1,24
	.cfi_restore 31
.LCFI268:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE120:
	.size	glTexImage1D, .-glTexImage1D
	.align 2
	.globl glDeleteTextures
	.type	glDeleteTextures, @function
glDeleteTextures:
.LFB122:
	.loc 1 2020 0
	.cfi_startproc
.LVL872:
	mflr 0
	stwu 1,-24(1)
.LCFI269:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 2021 0
	lis 9,cur_state@ha
	.loc 1 2020 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	.loc 1 2021 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 2020 0
	stw 28,8(1)
	.loc 1 2021 0
	andi. 9,0,1
	.loc 1 2020 0
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 2021 0
	bne- 0,.L738
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.loc 1 2025 0
	cmpwi 7,3,0
	blt- 7,.L739
	.loc 1 2031 0
	cmpwi 6,4,0
	beq- 6,.L734
.LVL873:
	.loc 1 2037 0 discriminator 1
	beq- 7,.L730
	lis 28,texMan@ha
	.loc 1 2019 0
	addi 30,4,-4
	li 31,0
	la 28,texMan@l(28)
.LVL874:
.L736:
	.loc 1 2039 0 discriminator 2
	lwzu 4,4(30)
	mr 3,28
	.loc 1 2037 0 discriminator 2
	addi 31,31,1
	.loc 1 2039 0 discriminator 2
	bl deleteTex
.LVL875:
	.loc 1 2037 0 discriminator 2
	cmpw 7,31,29
	bne+ 7,.L736
.LVL876:
.L730:
	.loc 1 2041 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL877:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI270:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL878:
.L738:
.LCFI271:
	.cfi_restore_state
	.loc 1 2021 0 discriminator 1
	lis 4,.LC0@ha
.LVL879:
	li 3,1282
.LVL880:
	la 4,.LC0@l(4)
	li 5,2021
	bl _glSetErrorEx
	.loc 1 2041 0 discriminator 1
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL881:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI272:
	.cfi_def_cfa_offset 0
	blr
.LVL882:
.L739:
.LCFI273:
	.cfi_restore_state
	.loc 1 2027 0
	lis 4,.LC0@ha
.LVL883:
	li 3,1281
.LVL884:
	la 4,.LC0@l(4)
	li 5,2027
	bl _glSetErrorEx
	.loc 1 2028 0
	b .L730
.LVL885:
.L734:
	.loc 1 2033 0
	lis 4,.LC0@ha
.LVL886:
	li 3,1281
	la 4,.LC0@l(4)
	li 5,2033
	bl _glSetErrorEx
	.loc 1 2034 0
	b .L730
	.cfi_endproc
.LFE122:
	.size	glDeleteTextures, .-glDeleteTextures
	.align 2
	.globl glIsTexture
	.type	glIsTexture, @function
glIsTexture:
.LFB123:
	.loc 1 2043 0
	.cfi_startproc
.LVL887:
	mflr 0
	stwu 1,-8(1)
.LCFI274:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 2044 0
	lis 9,cur_state@ha
	.loc 1 2043 0
	stw 0,12(1)
	.loc 1 2044 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L744
.LVL888:
.LBB196:
.LBB197:
	.loc 1 1405 0
	lis 9,texMan@ha
	.loc 1 1404 0
	addi 0,3,-1
.LVL889:
	.loc 1 1405 0
	la 9,texMan@l(9)
	.loc 1 1406 0
	li 3,0
.LVL890:
	.loc 1 1405 0
	lwz 11,8(9)
	cmplw 7,0,11
	blt- 7,.L745
.LBE197:
.LBE196:
	.loc 1 2047 0
	lwz 0,12(1)
.LVL891:
	addi 1,1,8
	.cfi_remember_state
.LCFI275:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL892:
.L745:
.LCFI276:
	.cfi_restore_state
.LBB199:
.LBB198:
	.loc 1 1409 0
	lwz 9,4(9)
	lbzx 3,9,0
.LBE198:
.LBE199:
	.loc 1 2047 0
	lwz 0,12(1)
.LVL893:
	addi 1,1,8
	.cfi_remember_state
.LCFI277:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL894:
.L744:
.LCFI278:
	.cfi_restore_state
	.loc 1 2044 0 discriminator 1
	lis 4,.LC0@ha
	li 3,1282
.LVL895:
	la 4,.LC0@l(4)
	li 5,2044
	bl _glSetErrorEx
	.loc 1 2047 0 discriminator 1
	lwz 0,12(1)
	.loc 1 2044 0 discriminator 1
	li 3,0
	.loc 1 2047 0 discriminator 1
	mtlr 0
	addi 1,1,8
.LCFI279:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE123:
	.size	glIsTexture, .-glIsTexture
	.globl border_color
	.comm	texMan,16,4
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
	.type	CSWTCH.75, @object
	.size	CSWTCH.75, 40
CSWTCH.75:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	CSWTCH.76, @object
	.size	CSWTCH.76, 40
CSWTCH.76:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	CSWTCH.77, @object
	.size	CSWTCH.77, 40
CSWTCH.77:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	CSWTCH.78, @object
	.size	CSWTCH.78, 40
CSWTCH.78:
	.byte	0
	.byte	0
	.byte	4
	.byte	8
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.type	CSWTCH.79, @object
	.size	CSWTCH.79, 40
CSWTCH.79:
	.byte	4
	.byte	8
	.byte	4
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	CSWTCH.81, @object
	.size	CSWTCH.81, 2
CSWTCH.81:
	.byte	2
	.byte	3
	.zero	2
	.type	CSWTCH.83, @object
	.size	CSWTCH.83, 2
CSWTCH.83:
	.byte	4
	.byte	6
	.zero	2
	.type	CSWTCH.85, @object
	.size	CSWTCH.85, 2
CSWTCH.85:
	.byte	5
	.byte	7
	.zero	2
	.type	CSWTCH.87, @object
	.size	CSWTCH.87, 2
CSWTCH.87:
	.byte	2
	.byte	3
	.zero	2
	.type	CSWTCH.89, @object
	.size	CSWTCH.89, 7
CSWTCH.89:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.zero	1
	.type	CSWTCH.91, @object
	.size	CSWTCH.91, 7
CSWTCH.91:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.zero	1
	.type	__FUNCTION__.14725, @object
	.size	__FUNCTION__.14725, 15
__FUNCTION__.14725:
	.string	"GX_SetTextures"
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1073741824
.LC2:
	.4byte	1082130432
.LC3:
	.4byte	1092616192
.LC4:
	.4byte	0
.LC6:
	.4byte	1501560836
.LC8:
	.4byte	1325400064
.LC9:
	.4byte	805306368
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_textures.c"
	.zero	1
.LC7:
	.string	"glTexParameteri invalind enum, 0x%X\n"
	.zero	3
.LC10:
	.string	"glTexEnvi invalind enum, 0x%X\n"
	.zero	1
.LC11:
	.string	"p"
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	border_color, @object
	.size	border_color, 16
border_color:
	.zero	16
	.section	".text"
.Letext0:
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 5 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 7 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x27de
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF283
	.byte	0x1
	.4byte	.LASF284
	.4byte	.LASF285
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
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
	.byte	0x4
	.byte	0x29
	.4byte	0x47
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2a
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4f
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x50
	.4byte	0x30
	.uleb128 0x6
	.string	"u8"
	.byte	0x5
	.byte	0x11
	.4byte	0x9f
	.uleb128 0x6
	.string	"u32"
	.byte	0x5
	.byte	0x13
	.4byte	0xb5
	.uleb128 0x6
	.string	"s8"
	.byte	0x5
	.byte	0x16
	.4byte	0x94
	.uleb128 0x6
	.string	"s32"
	.byte	0x5
	.byte	0x18
	.4byte	0xaa
	.uleb128 0x6
	.string	"f32"
	.byte	0x5
	.byte	0x2b
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x8
	.4byte	0xca
	.4byte	0x116
	.uleb128 0x9
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x11c
	.uleb128 0xb
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0xc
	.byte	0x6
	.byte	0x5e
	.4byte	0x14e
	.uleb128 0xd
	.string	"x"
	.byte	0x6
	.byte	0x5f
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"y"
	.byte	0x6
	.byte	0x5f
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"z"
	.byte	0x6
	.byte	0x5f
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0x60
	.4byte	0x11d
	.uleb128 0xe
	.4byte	.LASF286
	.byte	0x4
	.byte	0x7
	.2byte	0x490
	.4byte	0x1b9
	.uleb128 0xf
	.string	"U8"
	.byte	0x7
	.2byte	0x492
	.4byte	0x1b9
	.uleb128 0xf
	.string	"S8"
	.byte	0x7
	.2byte	0x493
	.4byte	0x1be
	.uleb128 0xf
	.string	"U16"
	.byte	0x7
	.2byte	0x494
	.4byte	0x1c3
	.uleb128 0xf
	.string	"S16"
	.byte	0x7
	.2byte	0x495
	.4byte	0x1c8
	.uleb128 0xf
	.string	"U32"
	.byte	0x7
	.2byte	0x496
	.4byte	0xfa
	.uleb128 0xf
	.string	"S32"
	.byte	0x7
	.2byte	0x497
	.4byte	0x1cd
	.uleb128 0xf
	.string	"F32"
	.byte	0x7
	.2byte	0x498
	.4byte	0xf5
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
	.4byte	.LASF20
	.byte	0x7
	.2byte	0x499
	.4byte	0x159
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x4
	.byte	0x7
	.2byte	0x49e
	.4byte	0x220
	.uleb128 0x12
	.string	"r"
	.byte	0x7
	.2byte	0x49f
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"g"
	.byte	0x7
	.2byte	0x4a0
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"b"
	.byte	0x7
	.2byte	0x4a1
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"a"
	.byte	0x7
	.2byte	0x4a2
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x7
	.2byte	0x4a3
	.4byte	0x1de
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x20
	.byte	0x7
	.2byte	0x4b9
	.4byte	0x249
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.2byte	0x4ba
	.4byte	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x7
	.2byte	0x4bb
	.4byte	0x22c
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x40
	.byte	0x7
	.2byte	0x4f1
	.4byte	0x272
	.uleb128 0x12
	.string	"val"
	.byte	0x7
	.2byte	0x4f2
	.4byte	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	0xca
	.4byte	0x282
	.uleb128 0x9
	.4byte	0x30
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x4f3
	.4byte	0x255
	.uleb128 0xa
	.byte	0x4
	.4byte	0x249
	.uleb128 0x8
	.4byte	0xc0
	.4byte	0x2a4
	.uleb128 0x9
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xc0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xca
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x8
	.byte	0x93
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x8
	.byte	0x94
	.4byte	0x37
	.uleb128 0x13
	.4byte	.LASF287
	.byte	0x8
	.byte	0x96
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x8
	.byte	0x99
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x8
	.byte	0x9d
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x8
	.byte	0x9e
	.4byte	0x86
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2ff
	.uleb128 0x14
	.4byte	0x2c6
	.uleb128 0xa
	.byte	0x4
	.4byte	0x30a
	.uleb128 0x14
	.4byte	0x2ee
	.uleb128 0xa
	.byte	0x4
	.4byte	0x315
	.uleb128 0x14
	.4byte	0x2cd
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2cd
	.uleb128 0xa
	.byte	0x4
	.4byte	0x326
	.uleb128 0x14
	.4byte	0x2d8
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2d8
	.uleb128 0x14
	.4byte	0x2b0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2b0
	.uleb128 0x15
	.byte	0x10
	.byte	0x2
	.byte	0x15
	.4byte	0x35d
	.uleb128 0xd
	.string	"v"
	.byte	0x2
	.byte	0x17
	.4byte	0x14e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"w"
	.byte	0x2
	.byte	0x18
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x2
	.byte	0x19
	.4byte	0x33c
	.uleb128 0x15
	.byte	0x8
	.byte	0x2
	.byte	0x1b
	.4byte	0x389
	.uleb128 0xd
	.string	"s"
	.byte	0x2
	.byte	0x1d
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"t"
	.byte	0x2
	.byte	0x1e
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x2
	.byte	0x1f
	.4byte	0x368
	.uleb128 0x15
	.byte	0x10
	.byte	0x2
	.byte	0x21
	.4byte	0x3cd
	.uleb128 0xd
	.string	"r"
	.byte	0x2
	.byte	0x23
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"g"
	.byte	0x2
	.byte	0x24
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"b"
	.byte	0x2
	.byte	0x25
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"a"
	.byte	0x2
	.byte	0x26
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x2
	.byte	0x27
	.4byte	0x394
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x14
	.byte	0x2
	.byte	0x42
	.4byte	0x429
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x2
	.byte	0x44
	.4byte	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"p"
	.byte	0x2
	.byte	0x45
	.4byte	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x2
	.byte	0x46
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x2
	.byte	0x47
	.4byte	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x2
	.byte	0x48
	.4byte	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x2
	.byte	0x49
	.4byte	0x3d8
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x479
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x9
	.byte	0xe
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x9
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x9
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x9
	.byte	0x12
	.4byte	0x434
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0xa4
	.byte	0x2
	.byte	0x83
	.4byte	0x53f
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x2
	.byte	0x85
	.4byte	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"obj"
	.byte	0x2
	.byte	0x87
	.4byte	0x282
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"pos"
	.byte	0x2
	.byte	0x89
	.4byte	0x35d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x2
	.byte	0x8b
	.4byte	0x14e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x2
	.byte	0x8d
	.4byte	0x3cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x2
	.byte	0x8e
	.4byte	0x3cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x2
	.byte	0x8f
	.4byte	0x3cd
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x2
	.byte	0x91
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x2
	.byte	0x92
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x2
	.byte	0x93
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x16
	.4byte	.LASF56
	.byte	0x2
	.byte	0x94
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x2
	.byte	0x95
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x2
	.byte	0x96
	.4byte	0x484
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x44
	.byte	0x2
	.byte	0xa0
	.4byte	0x59d
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x2
	.byte	0xa2
	.4byte	0x3cd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x2
	.byte	0xa3
	.4byte	0x3cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x2
	.byte	0xa4
	.4byte	0x3cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x2
	.byte	0xa5
	.4byte	0x3cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x2
	.byte	0xa6
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x2
	.byte	0xa7
	.4byte	0x54a
	.uleb128 0x17
	.4byte	.LASF288
	.byte	0x4
	.byte	0x2
	.byte	0xbf
	.4byte	0x5c7
	.uleb128 0x18
	.4byte	.LASF63
	.sleb128 0
	.uleb128 0x18
	.4byte	.LASF64
	.sleb128 1
	.uleb128 0x18
	.4byte	.LASF65
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x2
	.byte	0xc4
	.4byte	0x5a8
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x10
	.byte	0x2
	.byte	0xe8
	.4byte	0x613
	.uleb128 0xd
	.string	"x"
	.byte	0x2
	.byte	0xea
	.4byte	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"y"
	.byte	0x2
	.byte	0xeb
	.4byte	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x2
	.byte	0xec
	.4byte	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x2
	.byte	0xed
	.4byte	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x2
	.byte	0xee
	.4byte	0x5d2
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x14
	.byte	0x2
	.byte	0xfb
	.4byte	0x682
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x2
	.byte	0xfd
	.4byte	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x2
	.byte	0xfe
	.4byte	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x2
	.byte	0xff
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x100
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x101
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x102
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x103
	.4byte	0x61e
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x8
	.byte	0x2
	.2byte	0x117
	.4byte	0x6ba
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x119
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x11a
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x11b
	.4byte	0x68e
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x6c
	.byte	0x2
	.2byte	0x127
	.4byte	0x81e
	.uleb128 0x19
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x129
	.4byte	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x12b
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x12c
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x12d
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x12e
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x12f
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x130
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x131
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x132
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x133
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x134
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x136
	.4byte	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x138
	.4byte	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x139
	.4byte	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x13b
	.4byte	0x81e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x13c
	.4byte	0x81e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x13d
	.4byte	0x81e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x13e
	.4byte	0x81e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"tex"
	.byte	0x2
	.2byte	0x140
	.4byte	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x142
	.4byte	0x3cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x144
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x145
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0
	.uleb128 0x8
	.4byte	0x2b0
	.4byte	0x82e
	.uleb128 0x9
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x2
	.2byte	0x146
	.4byte	0x6c6
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x4c
	.byte	0x1
	.byte	0xa3
	.4byte	0x8ef
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x1
	.byte	0xa5
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x1
	.byte	0xa6
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x1
	.byte	0xa8
	.4byte	0x8ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.byte	0xaa
	.4byte	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x1
	.byte	0xab
	.4byte	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0xac
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x1
	.byte	0xae
	.4byte	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x1
	.byte	0xaf
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x1
	.byte	0xb0
	.4byte	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x1
	.byte	0xb2
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x1
	.byte	0xb3
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x1
	.byte	0xb4
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.byte	0
	.uleb128 0x8
	.4byte	0xff
	.4byte	0x8ff
	.uleb128 0x9
	.4byte	0x30
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x1
	.byte	0xb5
	.4byte	0x83a
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x10
	.byte	0x1
	.byte	0xb8
	.4byte	0x94f
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x1
	.byte	0xba
	.4byte	0x94f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x1
	.byte	0xbb
	.4byte	0x2a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x1
	.byte	0xbc
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x1
	.byte	0xbd
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8ff
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x1
	.byte	0xbe
	.4byte	0x90a
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF120
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.byte	0x1
	.4byte	0x982
	.uleb128 0x1b
	.string	"p1"
	.byte	0x1
	.byte	0x84
	.4byte	0x2cd
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0x84
	.4byte	0x2a4
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF121
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.byte	0x1
	.4byte	0x9a4
	.uleb128 0x1b
	.string	"p1"
	.byte	0x1
	.byte	0x91
	.4byte	0x2cd
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0x91
	.4byte	0x2a4
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x190
	.byte	0x1
	.4byte	0xc0
	.byte	0x1
	.4byte	0x9c2
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x190
	.4byte	0xc0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x180
	.byte	0x1
	.4byte	0xc0
	.byte	0x1
	.4byte	0x9e0
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x180
	.4byte	0xc0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x310
	.byte	0x1
	.byte	0x1
	.4byte	0x9fc
	.uleb128 0x1d
	.string	"val"
	.byte	0x1
	.2byte	0x310
	.4byte	0x2ee
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x320
	.byte	0x1
	.byte	0x1
	.4byte	0xa18
	.uleb128 0x1d
	.string	"val"
	.byte	0x1
	.2byte	0x320
	.4byte	0x2ee
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x384
	.byte	0x1
	.byte	0x1
	.4byte	0xa3e
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x384
	.4byte	0x331
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.2byte	0x384
	.4byte	0x336
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x394
	.byte	0x1
	.byte	0x1
	.4byte	0xa64
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x394
	.4byte	0x331
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.2byte	0x394
	.4byte	0x336
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x3e4
	.byte	0x1
	.byte	0x1
	.4byte	0xa8a
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x30a
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x2a4
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x48f
	.byte	0x1
	.byte	0x1
	.4byte	0xabe
	.uleb128 0x1f
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x48f
	.4byte	0x2b0
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x48f
	.4byte	0x2b0
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x48f
	.4byte	0x2ee
	.byte	0
	.uleb128 0x20
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x457
	.byte	0x1
	.4byte	0x2ee
	.byte	0x1
	.4byte	0xadb
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.2byte	0x457
	.4byte	0xdf
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x4ff
	.byte	0x1
	.4byte	0xff
	.byte	0x1
	.4byte	0xb27
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x4ff
	.4byte	0xb27
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.2byte	0x4ff
	.4byte	0x25
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.2byte	0x501
	.4byte	0x25
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x524
	.4byte	0x94f
	.uleb128 0x22
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x52b
	.4byte	0x2a4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x955
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x57a
	.byte	0x1
	.4byte	0xc0
	.byte	0x1
	.4byte	0xb59
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x57a
	.4byte	0xb27
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x57a
	.4byte	0x2d8
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x58a
	.byte	0x1
	.4byte	0x94f
	.byte	0x1
	.4byte	0xb79
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x58a
	.4byte	0xb27
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x585
	.byte	0x1
	.4byte	0x94f
	.byte	0x1
	.4byte	0xba5
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x585
	.4byte	0xb27
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x585
	.4byte	0x2d8
	.byte	0
	.uleb128 0x23
	.4byte	.LASF290
	.byte	0x2
	.2byte	0x15b
	.byte	0x1
	.byte	0x3
	.4byte	0xbd4
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x2
	.2byte	0x15b
	.4byte	0xbd4
	.uleb128 0x1d
	.string	"n"
	.byte	0x2
	.2byte	0x15b
	.4byte	0x25
	.uleb128 0x21
	.string	"p"
	.byte	0x2
	.2byte	0x15d
	.4byte	0xbda
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x45
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2a4
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x66a
	.byte	0x1
	.4byte	0x45
	.byte	0x1
	.4byte	0xc22
	.uleb128 0x1d
	.string	"tex"
	.byte	0x1
	.2byte	0x66a
	.4byte	0x94f
	.uleb128 0x1f
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x66a
	.4byte	0x2cd
	.uleb128 0x22
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x671
	.4byte	0xca
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.2byte	0x67c
	.4byte	0x45
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x682
	.byte	0x1
	.4byte	0x55
	.byte	0x1
	.4byte	0xc4e
	.uleb128 0x1f
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x682
	.4byte	0x2b0
	.uleb128 0x1f
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x682
	.4byte	0x2b0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x666
	.byte	0x1
	.4byte	0x55
	.byte	0x1
	.4byte	0xc6e
	.uleb128 0x1f
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x666
	.4byte	0x55
	.byte	0
	.uleb128 0x24
	.4byte	0xb59
	.4byte	.LFB137
	.4byte	.LFE137
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xcdd
	.uleb128 0x25
	.4byte	0xb6c
	.byte	0x6
	.byte	0x3
	.4byte	texMan
	.byte	0x9f
	.uleb128 0x26
	.4byte	0xb2d
	.4byte	.LBB57
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x58c
	.4byte	0xcb8
	.uleb128 0x27
	.4byte	0xb4c
	.4byte	.LLST0
	.uleb128 0x25
	.4byte	0xb40
	.byte	0x6
	.byte	0x3
	.4byte	texMan
	.byte	0x9f
	.byte	0
	.uleb128 0x28
	.4byte	0xb59
	.4byte	.LBB61
	.4byte	.LBE61
	.byte	0x1
	.2byte	0x58a
	.uleb128 0x29
	.4byte	.LBB62
	.4byte	.LBE62
	.uleb128 0x27
	.4byte	0xb6c
	.4byte	.LLST1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF146
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST2
	.4byte	0xd15
	.uleb128 0x2b
	.4byte	.LASF131
	.byte	0x1
	.byte	0x15
	.4byte	0x2b0
	.4byte	.LLST3
	.uleb128 0x2b
	.4byte	.LASF127
	.byte	0x1
	.byte	0x15
	.4byte	0x2cd
	.4byte	.LLST4
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF147
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST5
	.4byte	0xd4d
	.uleb128 0x2b
	.4byte	.LASF131
	.byte	0x1
	.byte	0x10
	.4byte	0x2b0
	.4byte	.LLST6
	.uleb128 0x2b
	.4byte	.LASF127
	.byte	0x1
	.byte	0x10
	.4byte	0x2ee
	.4byte	.LLST7
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF148
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST8
	.4byte	0xd85
	.uleb128 0x2b
	.4byte	.LASF131
	.byte	0x1
	.byte	0x6e
	.4byte	0x2b0
	.4byte	.LLST9
	.uleb128 0x2b
	.4byte	.LASF149
	.byte	0x1
	.byte	0x6e
	.4byte	0x31a
	.4byte	.LLST10
	.byte	0
	.uleb128 0x2c
	.4byte	0x960
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST11
	.4byte	0xdd1
	.uleb128 0x27
	.4byte	0x96e
	.4byte	.LLST12
	.uleb128 0x27
	.4byte	0x978
	.4byte	.LLST13
	.uleb128 0x2d
	.4byte	0x960
	.4byte	.LBB65
	.4byte	.LBE65
	.byte	0x1
	.byte	0x84
	.uleb128 0x29
	.4byte	.LBB66
	.4byte	.LBE66
	.uleb128 0x2e
	.4byte	0x978
	.uleb128 0x2e
	.4byte	0x96e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0x982
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST14
	.4byte	0xe1d
	.uleb128 0x27
	.4byte	0x990
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	0x99a
	.4byte	.LLST16
	.uleb128 0x2d
	.4byte	0x982
	.4byte	.LBB69
	.4byte	.LBE69
	.byte	0x1
	.byte	0x91
	.uleb128 0x29
	.4byte	.LBB70
	.4byte	.LBE70
	.uleb128 0x2e
	.4byte	0x99a
	.uleb128 0x2e
	.4byte	0x990
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xe9e
	.uleb128 0x30
	.4byte	.LASF105
	.byte	0x1
	.byte	0xc4
	.4byte	0xc0
	.byte	0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	.LASF41
	.byte	0x1
	.byte	0xc4
	.4byte	0x2b0
	.byte	0x1
	.byte	0x54
	.uleb128 0x30
	.4byte	.LASF127
	.byte	0x1
	.byte	0xc4
	.4byte	0x31a
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.byte	0xc6
	.4byte	0x2cd
	.4byte	.LLST17
	.uleb128 0x31
	.string	"g"
	.byte	0x1
	.byte	0xc6
	.4byte	0x2cd
	.4byte	.LLST18
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.byte	0xc6
	.4byte	0x2cd
	.4byte	.LLST19
	.uleb128 0x31
	.string	"a"
	.byte	0x1
	.byte	0xc6
	.4byte	0x2cd
	.4byte	.LLST20
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.byte	0xc6
	.4byte	0x2cd
	.4byte	.LLST21
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST22
	.4byte	0xef4
	.uleb128 0x2b
	.4byte	.LASF108
	.byte	0x1
	.byte	0xdf
	.4byte	0x2b0
	.4byte	.LLST23
	.uleb128 0x2b
	.4byte	.LASF107
	.byte	0x1
	.byte	0xdf
	.4byte	0x2cd
	.4byte	.LLST24
	.uleb128 0x2b
	.4byte	.LASF131
	.byte	0x1
	.byte	0xe0
	.4byte	0x2b0
	.4byte	.LLST25
	.uleb128 0x2b
	.4byte	.LASF149
	.byte	0x1
	.byte	0xe0
	.4byte	0x31a
	.4byte	.LLST26
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x10c
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xf61
	.uleb128 0x33
	.string	"src"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x2b0
	.4byte	.LLST27
	.uleb128 0x34
	.string	"op"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x2b0
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.string	"C"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x2a4
	.byte	0x1
	.byte	0x55
	.uleb128 0x35
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x10c
	.4byte	0xf61
	.byte	0x1
	.byte	0x56
	.uleb128 0x35
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x10c
	.4byte	0xc0
	.byte	0x1
	.byte	0x57
	.uleb128 0x35
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x10c
	.4byte	0xc0
	.byte	0x1
	.byte	0x58
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xd5
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x139
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xfc6
	.uleb128 0x33
	.string	"src"
	.byte	0x1
	.2byte	0x139
	.4byte	0x2b0
	.4byte	.LLST28
	.uleb128 0x34
	.string	"op"
	.byte	0x1
	.2byte	0x139
	.4byte	0x2b0
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.string	"C"
	.byte	0x1
	.2byte	0x139
	.4byte	0x2a4
	.byte	0x1
	.byte	0x55
	.uleb128 0x35
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x139
	.4byte	0xf61
	.byte	0x1
	.byte	0x56
	.uleb128 0x35
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x139
	.4byte	0xc0
	.byte	0x1
	.byte	0x57
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x154
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB73
	.4byte	.LFE73
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xff2
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x154
	.4byte	0xc0
	.4byte	.LLST29
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x15f
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB74
	.4byte	.LFE74
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x101e
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x15f
	.4byte	0xc0
	.4byte	.LLST30
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x16a
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB75
	.4byte	.LFE75
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x104a
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x16a
	.4byte	0xc0
	.4byte	.LLST31
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x175
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB76
	.4byte	.LFE76
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1076
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.2byte	0x175
	.4byte	0xc0
	.4byte	.LLST32
	.byte	0
	.uleb128 0x24
	.4byte	0x9c2
	.4byte	.LFB77
	.4byte	.LFE77
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1094
	.uleb128 0x27
	.4byte	0x9d5
	.4byte	.LLST33
	.byte	0
	.uleb128 0x24
	.4byte	0x9a4
	.4byte	.LFB78
	.4byte	.LFE78
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x10b2
	.uleb128 0x27
	.4byte	0x9b7
	.4byte	.LLST34
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x1a1
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST35
	.4byte	0x11ed
	.uleb128 0x38
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x1a1
	.4byte	0xc0
	.4byte	.LLST36
	.uleb128 0x38
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x2aa
	.4byte	.LLST37
	.uleb128 0x39
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xc0
	.4byte	.LLST38
	.uleb128 0x39
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x1a6
	.4byte	0xc0
	.4byte	.LLST39
	.uleb128 0x39
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xc0
	.4byte	.LLST40
	.uleb128 0x3a
	.string	"Aop"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xc0
	.4byte	.LLST41
	.uleb128 0x39
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x1af
	.4byte	0xc0
	.4byte	.LLST42
	.uleb128 0x39
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xc0
	.4byte	.LLST43
	.uleb128 0x3b
	.string	"C"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x294
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.string	"A"
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x294
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x11ed
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3c
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x11ed
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3a
	.string	"Tex"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xd5
	.4byte	.LLST44
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x55
	.4byte	.LLST45
	.uleb128 0x39
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x55
	.4byte	.LLST46
	.uleb128 0x39
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x55
	.4byte	.LLST47
	.uleb128 0x39
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x55
	.4byte	.LLST48
	.uleb128 0x3d
	.4byte	0x9a4
	.4byte	.LBB71
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x283
	.uleb128 0x27
	.4byte	0x9b7
	.4byte	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x11fd
	.uleb128 0x9
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x287
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST50
	.4byte	0x1282
	.uleb128 0x38
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x287
	.4byte	0xc0
	.4byte	.LLST51
	.uleb128 0x38
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x287
	.4byte	0x2aa
	.4byte	.LLST52
	.uleb128 0x39
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x292
	.4byte	0xc0
	.4byte	.LLST53
	.uleb128 0x39
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x293
	.4byte	0xc0
	.4byte	.LLST54
	.uleb128 0x3a
	.string	"tex"
	.byte	0x1
	.2byte	0x29a
	.4byte	0x94f
	.4byte	.LLST55
	.uleb128 0x3d
	.4byte	0x9a4
	.4byte	.LBB73
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x29b
	.uleb128 0x27
	.4byte	0x9b7
	.4byte	.LLST56
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x9e0
	.4byte	.LFB81
	.4byte	.LFE81
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x12b9
	.uleb128 0x25
	.4byte	0x9ef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x28
	.4byte	0x9e0
	.4byte	.LBB79
	.4byte	.LBE79
	.byte	0x1
	.2byte	0x310
	.uleb128 0x27
	.4byte	0x9ef
	.4byte	.LLST57
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x9fc
	.4byte	.LFB82
	.4byte	.LFE82
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x12f0
	.uleb128 0x25
	.4byte	0xa0b
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x28
	.4byte	0x9fc
	.4byte	.LBB83
	.4byte	.LBE83
	.byte	0x1
	.2byte	0x320
	.uleb128 0x27
	.4byte	0xa0b
	.4byte	.LLST58
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x330
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LLST59
	.4byte	0x133b
	.uleb128 0x38
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x330
	.4byte	0x2b0
	.4byte	.LLST60
	.uleb128 0x38
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x330
	.4byte	0x2b0
	.4byte	.LLST61
	.uleb128 0x38
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x330
	.4byte	0x2cd
	.4byte	.LLST62
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x34e
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LLST63
	.4byte	0x1386
	.uleb128 0x38
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x34e
	.4byte	0x2b0
	.4byte	.LLST64
	.uleb128 0x38
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x34e
	.4byte	0x2b0
	.4byte	.LLST65
	.uleb128 0x38
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x34e
	.4byte	0x2ee
	.4byte	.LLST66
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x369
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LLST67
	.4byte	0x13d1
	.uleb128 0x38
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x369
	.4byte	0x2b0
	.4byte	.LLST68
	.uleb128 0x38
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x369
	.4byte	0x2b0
	.4byte	.LLST69
	.uleb128 0x38
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x369
	.4byte	0x304
	.4byte	.LLST70
	.byte	0
	.uleb128 0x2c
	.4byte	0xa18
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LLST71
	.4byte	0x141a
	.uleb128 0x27
	.4byte	0xa27
	.4byte	.LLST72
	.uleb128 0x27
	.4byte	0xa33
	.4byte	.LLST73
	.uleb128 0x3d
	.4byte	0xa18
	.4byte	.LBB87
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x384
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0x2e
	.4byte	0xa33
	.uleb128 0x2e
	.4byte	0xa27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0xa3e
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LLST74
	.4byte	0x1465
	.uleb128 0x27
	.4byte	0xa4d
	.4byte	.LLST75
	.uleb128 0x27
	.4byte	0xa59
	.4byte	.LLST76
	.uleb128 0x28
	.4byte	0xa3e
	.4byte	.LBB93
	.4byte	.LBE93
	.byte	0x1
	.2byte	0x394
	.uleb128 0x27
	.4byte	0xa59
	.4byte	.LLST77
	.uleb128 0x27
	.4byte	0xa4d
	.4byte	.LLST78
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x3a7
	.byte	0x1
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LLST79
	.4byte	0x149e
	.uleb128 0x38
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x331
	.4byte	.LLST80
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x336
	.4byte	.LLST81
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x3b5
	.byte	0x1
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LLST82
	.4byte	0x14d7
	.uleb128 0x38
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x331
	.4byte	.LLST83
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x336
	.4byte	.LLST84
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x3c1
	.byte	0x1
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LLST85
	.4byte	0x1510
	.uleb128 0x38
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x3c1
	.4byte	0x331
	.4byte	.LLST86
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.2byte	0x3c1
	.4byte	0x336
	.4byte	.LLST87
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x3d3
	.byte	0x1
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	.LLST88
	.4byte	0x1549
	.uleb128 0x38
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x3d3
	.4byte	0x331
	.4byte	.LLST89
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.2byte	0x3d3
	.4byte	0x336
	.4byte	.LLST90
	.byte	0
	.uleb128 0x2c
	.4byte	0xa64
	.4byte	.LFB92
	.4byte	.LFE92
	.4byte	.LLST91
	.4byte	0x1596
	.uleb128 0x27
	.4byte	0xa73
	.4byte	.LLST92
	.uleb128 0x27
	.4byte	0xa7f
	.4byte	.LLST93
	.uleb128 0x28
	.4byte	0xa64
	.4byte	.LBB97
	.4byte	.LBE97
	.byte	0x1
	.2byte	0x3e4
	.uleb128 0x29
	.4byte	.LBB98
	.4byte	.LBE98
	.uleb128 0x2e
	.4byte	0xa7f
	.uleb128 0x2e
	.4byte	0xa73
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x3f5
	.byte	0x1
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LLST94
	.4byte	0x15d1
	.uleb128 0x38
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x3f5
	.4byte	0x2b0
	.4byte	.LLST95
	.uleb128 0x38
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x3f5
	.4byte	0x2ee
	.4byte	.LLST96
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x410
	.byte	0x1
	.4byte	.LFB94
	.4byte	.LFE94
	.4byte	.LLST97
	.4byte	0x160c
	.uleb128 0x38
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x410
	.4byte	0x2b0
	.4byte	.LLST98
	.uleb128 0x38
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x410
	.4byte	0x2cd
	.4byte	.LLST99
	.byte	0
	.uleb128 0x2c
	.4byte	0xa8a
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LLST100
	.4byte	0x1667
	.uleb128 0x27
	.4byte	0xa99
	.4byte	.LLST101
	.uleb128 0x27
	.4byte	0xaa5
	.4byte	.LLST102
	.uleb128 0x27
	.4byte	0xab1
	.4byte	.LLST103
	.uleb128 0x28
	.4byte	0xa8a
	.4byte	.LBB101
	.4byte	.LBE101
	.byte	0x1
	.2byte	0x48f
	.uleb128 0x29
	.4byte	.LBB102
	.4byte	.LBE102
	.uleb128 0x2e
	.4byte	0xab1
	.uleb128 0x2e
	.4byte	0xaa5
	.uleb128 0x2e
	.4byte	0xa99
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x463
	.byte	0x1
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	.LLST104
	.4byte	0x1726
	.uleb128 0x38
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x463
	.4byte	0x2b0
	.4byte	.LLST105
	.uleb128 0x38
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x463
	.4byte	0x2b0
	.4byte	.LLST106
	.uleb128 0x38
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x463
	.4byte	0x30f
	.4byte	.LLST107
	.uleb128 0x26
	.4byte	0xabe
	.4byte	.LBB103
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.2byte	0x471
	.4byte	0x16cf
	.uleb128 0x27
	.4byte	0xad0
	.4byte	.LLST108
	.byte	0
	.uleb128 0x26
	.4byte	0xabe
	.4byte	.LBB106
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x472
	.4byte	0x16ed
	.uleb128 0x27
	.4byte	0xad0
	.4byte	.LLST109
	.byte	0
	.uleb128 0x26
	.4byte	0xabe
	.4byte	.LBB113
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.2byte	0x473
	.4byte	0x170b
	.uleb128 0x27
	.4byte	0xad0
	.4byte	.LLST110
	.byte	0
	.uleb128 0x3d
	.4byte	0xabe
	.4byte	.LBB116
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.2byte	0x474
	.uleb128 0x27
	.4byte	0xad0
	.4byte	.LLST111
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x42b
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.4byte	.LLST112
	.4byte	0x1771
	.uleb128 0x38
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x42b
	.4byte	0x2b0
	.4byte	.LLST113
	.uleb128 0x38
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x42b
	.4byte	0x2b0
	.4byte	.LLST114
	.uleb128 0x38
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x42b
	.4byte	0x304
	.4byte	.LLST115
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x4a8
	.byte	0x1
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LLST116
	.4byte	0x17bc
	.uleb128 0x38
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x2b0
	.4byte	.LLST117
	.uleb128 0x38
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x2b0
	.4byte	.LLST118
	.uleb128 0x38
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x2cd
	.4byte	.LLST119
	.byte	0
	.uleb128 0x2c
	.4byte	0xadb
	.4byte	.LFB101
	.4byte	.LFE101
	.4byte	.LLST120
	.4byte	0x183b
	.uleb128 0x27
	.4byte	0xaee
	.4byte	.LLST121
	.uleb128 0x27
	.4byte	0xafa
	.4byte	.LLST122
	.uleb128 0x3f
	.4byte	0xb04
	.4byte	.LLST123
	.uleb128 0x40
	.4byte	0xb0e
	.uleb128 0x40
	.4byte	0xb1a
	.uleb128 0x3d
	.4byte	0xadb
	.4byte	.LBB125
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x1
	.2byte	0x4ff
	.uleb128 0x27
	.4byte	0xafa
	.4byte	.LLST124
	.uleb128 0x27
	.4byte	0xaee
	.4byte	.LLST125
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x120
	.uleb128 0x3f
	.4byte	0xb04
	.4byte	.LLST126
	.uleb128 0x3f
	.4byte	0xb0e
	.4byte	.LLST127
	.uleb128 0x3f
	.4byte	0xb1a
	.4byte	.LLST128
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x4c5
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	.LLST129
	.4byte	0x1871
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x4cc
	.4byte	0x25
	.4byte	.LLST130
	.uleb128 0x3a
	.string	"j"
	.byte	0x1
	.2byte	0x4cd
	.4byte	0x25
	.4byte	.LLST131
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x542
	.byte	0x1
	.4byte	.LFB102
	.4byte	.LFE102
	.4byte	.LLST132
	.4byte	0x18c8
	.uleb128 0x38
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x542
	.4byte	0xb27
	.4byte	.LLST133
	.uleb128 0x38
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x542
	.4byte	0x2d8
	.4byte	.LLST134
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x544
	.4byte	0x25
	.4byte	.LLST135
	.uleb128 0x3a
	.string	"j"
	.byte	0x1
	.2byte	0x552
	.4byte	0x55
	.4byte	.LLST136
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x55b
	.byte	0x1
	.4byte	.LFB103
	.4byte	.LFE103
	.4byte	.LLST137
	.4byte	0x192f
	.uleb128 0x38
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x55b
	.4byte	0xb27
	.4byte	.LLST138
	.uleb128 0x38
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x55b
	.4byte	0x2d8
	.4byte	.LLST139
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x55d
	.4byte	0x25
	.4byte	.LLST140
	.uleb128 0x3a
	.string	"tex"
	.byte	0x1
	.2byte	0x562
	.4byte	0x94f
	.4byte	.LLST141
	.uleb128 0x3a
	.string	"j"
	.byte	0x1
	.2byte	0x56e
	.4byte	0x55
	.4byte	.LLST142
	.byte	0
	.uleb128 0x24
	.4byte	0xb2d
	.4byte	.LFB104
	.4byte	.LFE104
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1954
	.uleb128 0x27
	.4byte	0xb40
	.4byte	.LLST143
	.uleb128 0x25
	.4byte	0xb4c
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x24
	.4byte	0xb79
	.4byte	.LFB105
	.4byte	.LFE105
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x197b
	.uleb128 0x27
	.4byte	0xb8c
	.4byte	.LLST144
	.uleb128 0x27
	.4byte	0xb98
	.4byte	.LLST145
	.byte	0
	.uleb128 0x24
	.4byte	0xb59
	.4byte	.LFB106
	.4byte	.LFE106
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x19da
	.uleb128 0x27
	.4byte	0xb6c
	.4byte	.LLST146
	.uleb128 0x42
	.4byte	0xb2d
	.4byte	.LBB139
	.4byte	.LBE139
	.byte	0x1
	.2byte	0x58c
	.4byte	0x19bf
	.uleb128 0x27
	.4byte	0xb4c
	.4byte	.LLST147
	.uleb128 0x27
	.4byte	0xb40
	.4byte	.LLST148
	.byte	0
	.uleb128 0x28
	.4byte	0xb59
	.4byte	.LBB141
	.4byte	.LBE141
	.byte	0x1
	.2byte	0x58a
	.uleb128 0x27
	.4byte	0xb6c
	.4byte	.LLST149
	.byte	0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x593
	.byte	0x1
	.4byte	0x2d8
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST150
	.4byte	0x1a17
	.uleb128 0x38
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x593
	.4byte	0xb27
	.4byte	.LLST151
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x595
	.4byte	0x25
	.4byte	.LLST152
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x5ab
	.byte	0x1
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST153
	.4byte	0x1a73
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.2byte	0x5ab
	.4byte	0x2e3
	.4byte	.LLST154
	.uleb128 0x33
	.string	"tex"
	.byte	0x1
	.2byte	0x5ab
	.4byte	0x32b
	.4byte	.LLST155
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x5b5
	.4byte	0x25
	.4byte	.LLST156
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x148
	.uleb128 0x3a
	.string	"nt"
	.byte	0x1
	.2byte	0x5ba
	.4byte	0x2d8
	.4byte	.LLST157
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x5c0
	.byte	0x1
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST158
	.4byte	0x1ad1
	.uleb128 0x38
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x5c0
	.4byte	0x2b0
	.4byte	.LLST159
	.uleb128 0x38
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x5c0
	.4byte	0x2d8
	.4byte	.LLST160
	.uleb128 0x28
	.4byte	0xb79
	.4byte	.LBB146
	.4byte	.LBE146
	.byte	0x1
	.2byte	0x5c6
	.uleb128 0x27
	.4byte	0xb98
	.4byte	.LLST161
	.uleb128 0x27
	.4byte	0xb8c
	.4byte	.LLST162
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x5cb
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1af9
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.2byte	0x5cb
	.4byte	0xff
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x5cf
	.byte	0x1
	.4byte	0xff
	.4byte	.LFB111
	.4byte	.LFE111
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1b27
	.uleb128 0x33
	.string	"tex"
	.byte	0x1
	.2byte	0x5cf
	.4byte	0x55
	.4byte	.LLST163
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x5d5
	.byte	0x1
	.4byte	0x28e
	.4byte	.LFB112
	.4byte	.LFE112
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1b87
	.uleb128 0x38
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x5d5
	.4byte	0x2d8
	.4byte	.LLST164
	.uleb128 0x3b
	.string	"p"
	.byte	0x1
	.2byte	0x5d6
	.4byte	0x94f
	.byte	0x1
	.byte	0x59
	.uleb128 0x28
	.4byte	0xb79
	.4byte	.LBB148
	.4byte	.LBE148
	.byte	0x1
	.2byte	0x5d6
	.uleb128 0x27
	.4byte	0xb98
	.4byte	.LLST164
	.uleb128 0x25
	.4byte	0xb8c
	.byte	0x6
	.byte	0x3
	.4byte	texMan
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x5df
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST166
	.4byte	0x1c6e
	.uleb128 0x38
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x5df
	.4byte	0xc0
	.4byte	.LLST167
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x5e1
	.4byte	0x55
	.4byte	.LLST168
	.uleb128 0x3b
	.string	"inc"
	.byte	0x1
	.2byte	0x5e2
	.4byte	0xca
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x39
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x5e3
	.4byte	0x55
	.4byte	.LLST169
	.uleb128 0x44
	.4byte	.LASF196
	.4byte	0x1c7e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.14725
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x168
	.uleb128 0x3b
	.string	"p"
	.byte	0x1
	.2byte	0x5f0
	.4byte	0x94f
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	0x9c2
	.4byte	.LBB151
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.2byte	0x612
	.4byte	0x1c1d
	.uleb128 0x2e
	.4byte	0x9d5
	.byte	0
	.uleb128 0x26
	.4byte	0xb79
	.4byte	.LBB153
	.4byte	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.2byte	0x5f0
	.4byte	0x1c44
	.uleb128 0x27
	.4byte	0xb98
	.4byte	.LLST170
	.uleb128 0x27
	.4byte	0xb8c
	.4byte	.LLST171
	.byte	0
	.uleb128 0x29
	.4byte	.LBB157
	.4byte	.LBE157
	.uleb128 0x3a
	.string	"j"
	.byte	0x1
	.2byte	0x601
	.4byte	0x55
	.4byte	.LLST172
	.uleb128 0x39
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x602
	.4byte	0x55
	.4byte	.LLST173
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x71
	.4byte	0x1c7e
	.uleb128 0x9
	.4byte	0x30
	.byte	0xe
	.byte	0
	.uleb128 0x14
	.4byte	0x1c6e
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x620
	.byte	0x1
	.4byte	0xca
	.4byte	.LFB114
	.4byte	.LFE114
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1cbf
	.uleb128 0x38
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x620
	.4byte	0x2cd
	.4byte	.LLST174
	.uleb128 0x35
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x620
	.4byte	0x1cbf
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x55
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x656
	.byte	0x1
	.4byte	0x45
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST175
	.4byte	0x1d44
	.uleb128 0x38
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x656
	.4byte	0xca
	.4byte	.LLST176
	.uleb128 0x38
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x656
	.4byte	0x2e3
	.4byte	.LLST177
	.uleb128 0x38
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x656
	.4byte	0x2e3
	.4byte	.LLST178
	.uleb128 0x38
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x656
	.4byte	0x1d44
	.4byte	.LLST179
	.uleb128 0x38
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x656
	.4byte	0xc0
	.4byte	.LLST180
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x65a
	.4byte	0x45
	.4byte	.LLST181
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x25
	.uleb128 0x24
	.4byte	0xc4e
	.4byte	.LFB116
	.4byte	.LFE116
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1d68
	.uleb128 0x27
	.4byte	0xc61
	.4byte	.LLST182
	.byte	0
	.uleb128 0x2c
	.4byte	0xbe0
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST183
	.4byte	0x1e09
	.uleb128 0x27
	.4byte	0xbf3
	.4byte	.LLST184
	.uleb128 0x27
	.4byte	0xbff
	.4byte	.LLST185
	.uleb128 0x40
	.4byte	0xc0b
	.uleb128 0x45
	.4byte	0xc17
	.byte	0x1
	.byte	0x53
	.uleb128 0x3d
	.4byte	0xbe0
	.4byte	.LBB169
	.4byte	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.2byte	0x66a
	.uleb128 0x27
	.4byte	0xbff
	.4byte	.LLST186
	.uleb128 0x27
	.4byte	0xbf3
	.4byte	.LLST187
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x200
	.uleb128 0x3f
	.4byte	0xc0b
	.4byte	.LLST188
	.uleb128 0x3f
	.4byte	0xc17
	.4byte	.LLST189
	.uleb128 0x3d
	.4byte	0xba5
	.4byte	.LBB171
	.4byte	.Ldebug_ranges0+0x220
	.byte	0x1
	.2byte	0x67d
	.uleb128 0x27
	.4byte	0xbbf
	.4byte	.LLST190
	.uleb128 0x27
	.4byte	0xbb3
	.4byte	.LLST191
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x238
	.uleb128 0x3f
	.4byte	0xbc9
	.4byte	.LLST191
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0xc22
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST193
	.4byte	0x1e5a
	.uleb128 0x27
	.4byte	0xc35
	.4byte	.LLST194
	.uleb128 0x27
	.4byte	0xc41
	.4byte	.LLST195
	.uleb128 0x28
	.4byte	0xc22
	.4byte	.LBB181
	.4byte	.LBE181
	.byte	0x1
	.2byte	0x682
	.uleb128 0x27
	.4byte	0xc41
	.4byte	.LLST196
	.uleb128 0x29
	.4byte	.LBB182
	.4byte	.LBE182
	.uleb128 0x2e
	.4byte	0xc35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x6cc
	.byte	0x1
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST197
	.4byte	0x1f56
	.uleb128 0x38
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x6cc
	.4byte	0x2b0
	.4byte	.LLST198
	.uleb128 0x38
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x6cc
	.4byte	0x2cd
	.4byte	.LLST199
	.uleb128 0x38
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x6cd
	.4byte	0x2cd
	.4byte	.LLST200
	.uleb128 0x38
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x6cd
	.4byte	0x2cd
	.4byte	.LLST201
	.uleb128 0x38
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x6ce
	.4byte	0x2e3
	.4byte	.LLST202
	.uleb128 0x38
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x6ce
	.4byte	0x2e3
	.4byte	.LLST203
	.uleb128 0x38
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x6cf
	.4byte	0x2b0
	.4byte	.LLST204
	.uleb128 0x38
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x6cf
	.4byte	0x2b0
	.4byte	.LLST205
	.uleb128 0x35
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x6d0
	.4byte	0x2f9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x6e9
	.4byte	0x55
	.4byte	.LLST206
	.uleb128 0x3a
	.string	"tex"
	.byte	0x1
	.2byte	0x6f0
	.4byte	0x94f
	.4byte	.LLST207
	.uleb128 0x3a
	.string	"b"
	.byte	0x1
	.2byte	0x6f8
	.4byte	0x2ee
	.4byte	.LLST208
	.uleb128 0x21
	.string	"w"
	.byte	0x1
	.2byte	0x6f9
	.4byte	0x2ee
	.uleb128 0x21
	.string	"h"
	.byte	0x1
	.2byte	0x6fa
	.4byte	0x2ee
	.uleb128 0x39
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x711
	.4byte	0x45
	.4byte	.LLST209
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x738
	.byte	0x1
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST210
	.4byte	0x2154
	.uleb128 0x38
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x738
	.4byte	0x2b0
	.4byte	.LLST211
	.uleb128 0x38
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x738
	.4byte	0x2cd
	.4byte	.LLST212
	.uleb128 0x38
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x739
	.4byte	0x2cd
	.4byte	.LLST213
	.uleb128 0x38
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x73a
	.4byte	0x2e3
	.4byte	.LLST214
	.uleb128 0x38
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x73a
	.4byte	0x2e3
	.4byte	.LLST215
	.uleb128 0x38
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x73b
	.4byte	0x2cd
	.4byte	.LLST216
	.uleb128 0x38
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x73b
	.4byte	0x2b0
	.4byte	.LLST217
	.uleb128 0x38
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x73b
	.4byte	0x2b0
	.4byte	.LLST218
	.uleb128 0x35
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x73c
	.4byte	0x2f9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x742
	.4byte	0xff
	.4byte	.LLST219
	.uleb128 0x39
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x76f
	.4byte	0x55
	.4byte	.LLST220
	.uleb128 0x39
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x776
	.4byte	0xca
	.4byte	.LLST221
	.uleb128 0x39
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x780
	.4byte	0x25
	.4byte	.LLST222
	.uleb128 0x3a
	.string	"tex"
	.byte	0x1
	.2byte	0x782
	.4byte	0x94f
	.4byte	.LLST223
	.uleb128 0x39
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x784
	.4byte	0x2e3
	.4byte	.LLST224
	.uleb128 0x39
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x785
	.4byte	0x2e3
	.4byte	.LLST225
	.uleb128 0x39
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x78a
	.4byte	0xff
	.4byte	.LLST226
	.uleb128 0x39
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x78d
	.4byte	0xff
	.4byte	.LLST227
	.uleb128 0x26
	.4byte	0xc4e
	.4byte	.LBB183
	.4byte	.Ldebug_ranges0+0x250
	.byte	0x1
	.2byte	0x742
	.4byte	0x20ad
	.uleb128 0x27
	.4byte	0xc61
	.4byte	.LLST228
	.byte	0
	.uleb128 0x46
	.4byte	.Ldebug_ranges0+0x268
	.4byte	0x20df
	.uleb128 0x3a
	.string	"j"
	.byte	0x1
	.2byte	0x79d
	.4byte	0x55
	.4byte	.LLST229
	.uleb128 0x29
	.4byte	.LBB188
	.4byte	.LBE188
	.uleb128 0x39
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x7b7
	.4byte	0x55
	.4byte	.LLST230
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LBB190
	.4byte	.LBE190
	.4byte	0x20fd
	.uleb128 0x39
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x7cd
	.4byte	0x45
	.4byte	.LLST231
	.byte	0
	.uleb128 0x47
	.4byte	.LBB191
	.4byte	.LBE191
	.4byte	0x211b
	.uleb128 0x3a
	.string	"tex"
	.byte	0x1
	.2byte	0x748
	.4byte	0x94f
	.4byte	.LLST232
	.byte	0
	.uleb128 0x42
	.4byte	0xc4e
	.4byte	.LBB192
	.4byte	.LBE192
	.byte	0x1
	.2byte	0x742
	.4byte	0x2139
	.uleb128 0x27
	.4byte	0xc61
	.4byte	.LLST233
	.byte	0
	.uleb128 0x29
	.4byte	.LBB194
	.4byte	.LBE194
	.uleb128 0x3a
	.string	"tex"
	.byte	0x1
	.2byte	0x74e
	.4byte	0x94f
	.4byte	.LLST234
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x720
	.byte	0x1
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST235
	.4byte	0x21ef
	.uleb128 0x38
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x720
	.4byte	0x2b0
	.4byte	.LLST236
	.uleb128 0x38
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x721
	.4byte	0x2cd
	.4byte	.LLST237
	.uleb128 0x38
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x722
	.4byte	0x2cd
	.4byte	.LLST238
	.uleb128 0x38
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x723
	.4byte	0x2e3
	.4byte	.LLST239
	.uleb128 0x38
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x724
	.4byte	0x2cd
	.4byte	.LLST240
	.uleb128 0x38
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x725
	.4byte	0x2b0
	.4byte	.LLST241
	.uleb128 0x38
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x726
	.4byte	0x2b0
	.4byte	.LLST242
	.uleb128 0x38
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x727
	.4byte	0x2f9
	.4byte	.LLST243
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x7e3
	.byte	0x1
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST244
	.4byte	0x2236
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.2byte	0x7e3
	.4byte	0x2e3
	.4byte	.LLST245
	.uleb128 0x38
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x7e3
	.4byte	0x320
	.4byte	.LLST246
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x7e7
	.4byte	0x25
	.4byte	.LLST247
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x7fb
	.byte	0x1
	.4byte	0x2bb
	.4byte	.LFB123
	.4byte	.LFE123
	.4byte	.LLST248
	.4byte	0x2288
	.uleb128 0x38
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x7fb
	.4byte	0x2d8
	.4byte	.LLST249
	.uleb128 0x3d
	.4byte	0xb2d
	.4byte	.LBB196
	.4byte	.Ldebug_ranges0+0x288
	.byte	0x1
	.2byte	0x7fe
	.uleb128 0x27
	.4byte	0xb4c
	.4byte	.LLST250
	.uleb128 0x27
	.4byte	0xb40
	.4byte	.LLST251
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	.LASF221
	.byte	0x7
	.2byte	0x548
	.4byte	0x2296
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0x229b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1d2
	.uleb128 0x49
	.4byte	.LASF222
	.byte	0x2
	.byte	0x3d
	.4byte	0x3cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x49
	.4byte	.LASF223
	.byte	0x2
	.byte	0x3e
	.4byte	0x14e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0x8
	.4byte	0x389
	.4byte	0x22d5
	.uleb128 0x9
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x49
	.4byte	.LASF224
	.byte	0x2
	.byte	0x3f
	.4byte	0x22c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x49
	.4byte	.LASF225
	.byte	0x2
	.byte	0x4b
	.4byte	0x429
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x49
	.4byte	.LASF226
	.byte	0x2
	.byte	0x4c
	.4byte	0x429
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0x8
	.4byte	0x429
	.4byte	0x231b
	.uleb128 0x9
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x4a
	.string	"tex"
	.byte	0x2
	.byte	0x4d
	.4byte	0x230b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x49
	.4byte	.LASF100
	.byte	0x2
	.byte	0x4e
	.4byte	0x429
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0x8
	.4byte	0x14e
	.4byte	0x2350
	.uleb128 0x4b
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x49
	.4byte	.LASF227
	.byte	0x2
	.byte	0x50
	.4byte	0x233f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x49
	.4byte	.LASF228
	.byte	0x2
	.byte	0x51
	.4byte	0x233f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0x8
	.4byte	0x389
	.4byte	0x238b
	.uleb128 0x9
	.4byte	0x30
	.byte	0x7
	.uleb128 0x4b
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x49
	.4byte	.LASF229
	.byte	0x2
	.byte	0x52
	.4byte	0x2374
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0x8
	.4byte	0x3cd
	.4byte	0x23ae
	.uleb128 0x4b
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x49
	.4byte	.LASF230
	.byte	0x2
	.byte	0x53
	.4byte	0x239d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x49
	.4byte	.LASF231
	.byte	0x2
	.byte	0x5d
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x49
	.4byte	.LASF232
	.byte	0x2
	.byte	0x5e
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x49
	.4byte	.LASF233
	.byte	0x2
	.byte	0x5f
	.4byte	0x2b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x49
	.4byte	.LASF234
	.byte	0x2
	.byte	0x61
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x49
	.4byte	.LASF235
	.byte	0x2
	.byte	0x62
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x49
	.4byte	.LASF236
	.byte	0x2
	.byte	0x6b
	.4byte	0xc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x49
	.4byte	.LASF237
	.byte	0x2
	.byte	0x6c
	.4byte	0xc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x49
	.4byte	.LASF238
	.byte	0x2
	.byte	0x6d
	.4byte	0x2b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x49
	.4byte	.LASF239
	.byte	0x2
	.byte	0x6e
	.4byte	0x86
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x49
	.4byte	.LASF240
	.byte	0x2
	.byte	0x7a
	.4byte	0x479
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x49
	.4byte	.LASF241
	.byte	0x2
	.byte	0x7b
	.4byte	0x479
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0x8
	.4byte	0x479
	.4byte	0x2496
	.uleb128 0x9
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x49
	.4byte	.LASF242
	.byte	0x2
	.byte	0x7c
	.4byte	0x2486
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x49
	.4byte	.LASF243
	.byte	0x2
	.byte	0x7d
	.4byte	0x24ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0xa
	.byte	0x4
	.4byte	0x479
	.uleb128 0x49
	.4byte	.LASF244
	.byte	0x2
	.byte	0x7e
	.4byte	0x2b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0x8
	.4byte	0x53f
	.4byte	0x24e2
	.uleb128 0x9
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x49
	.4byte	.LASF245
	.byte	0x2
	.byte	0x99
	.4byte	0x24d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x49
	.4byte	.LASF246
	.byte	0x2
	.byte	0x9c
	.4byte	0x3cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x49
	.4byte	.LASF247
	.byte	0x2
	.byte	0xa9
	.4byte	0x59d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x49
	.4byte	.LASF248
	.byte	0x2
	.byte	0xac
	.4byte	0xff
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x49
	.4byte	.LASF249
	.byte	0x2
	.byte	0xad
	.4byte	0x2b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x49
	.4byte	.LASF250
	.byte	0x2
	.byte	0xb1
	.4byte	0xff
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x49
	.4byte	.LASF251
	.byte	0x2
	.byte	0xb8
	.4byte	0xc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x49
	.4byte	.LASF252
	.byte	0x2
	.byte	0xb9
	.4byte	0xc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x49
	.4byte	.LASF253
	.byte	0x2
	.byte	0xba
	.4byte	0xc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x49
	.4byte	.LASF254
	.byte	0x2
	.byte	0xbb
	.4byte	0xc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x49
	.4byte	.LASF255
	.byte	0x2
	.byte	0xbd
	.4byte	0xc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x49
	.4byte	.LASF256
	.byte	0x2
	.byte	0xc6
	.4byte	0x5c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x49
	.4byte	.LASF257
	.byte	0x2
	.byte	0xf0
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x49
	.4byte	.LASF258
	.byte	0x2
	.byte	0xf1
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x49
	.4byte	.LASF259
	.byte	0x2
	.byte	0xf2
	.4byte	0x2bb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x49
	.4byte	.LASF260
	.byte	0x2
	.byte	0xf3
	.4byte	0x613
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x49
	.4byte	.LASF261
	.byte	0x2
	.byte	0xf4
	.4byte	0x613
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x49
	.4byte	.LASF262
	.byte	0x2
	.byte	0xf5
	.4byte	0xea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x49
	.4byte	.LASF263
	.byte	0x2
	.byte	0xf6
	.4byte	0xea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x49
	.4byte	.LASF264
	.byte	0x2
	.byte	0xf8
	.4byte	0xea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x49
	.4byte	.LASF265
	.byte	0x2
	.byte	0xf9
	.4byte	0xea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x4c
	.4byte	.LASF266
	.byte	0x2
	.2byte	0x105
	.4byte	0x682
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x4c
	.4byte	.LASF267
	.byte	0x2
	.2byte	0x106
	.4byte	0x682
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0x8
	.4byte	0xff
	.4byte	0x2692
	.uleb128 0x9
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF268
	.byte	0x2
	.2byte	0x107
	.4byte	0x2682
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x4c
	.4byte	.LASF269
	.byte	0x2
	.2byte	0x10d
	.4byte	0xff
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x4c
	.4byte	.LASF270
	.byte	0x2
	.2byte	0x10e
	.4byte	0x2b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x4c
	.4byte	.LASF271
	.byte	0x2
	.2byte	0x111
	.4byte	0x220
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0x8
	.4byte	0x6ba
	.4byte	0x26ee
	.uleb128 0x9
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF272
	.byte	0x2
	.2byte	0x125
	.4byte	0x26de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x4c
	.4byte	.LASF273
	.byte	0x2
	.2byte	0x14a
	.4byte	0xff
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x4c
	.4byte	.LASF274
	.byte	0x2
	.2byte	0x14b
	.4byte	0xc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x4c
	.4byte	.LASF275
	.byte	0x2
	.2byte	0x14c
	.4byte	0xea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x4c
	.4byte	.LASF276
	.byte	0x2
	.2byte	0x14d
	.4byte	0xea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x4c
	.4byte	.LASF277
	.byte	0x2
	.2byte	0x14e
	.4byte	0xea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x4c
	.4byte	.LASF278
	.byte	0x2
	.2byte	0x14f
	.4byte	0x220
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0x8
	.4byte	0x82e
	.4byte	0x2783
	.uleb128 0x9
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF279
	.byte	0x2
	.2byte	0x151
	.4byte	0x2773
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x4c
	.4byte	.LASF280
	.byte	0x2
	.2byte	0x156
	.4byte	0x2b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x4c
	.4byte	.LASF281
	.byte	0x2
	.2byte	0x159
	.4byte	0x2d8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x49
	.4byte	.LASF133
	.byte	0x1
	.byte	0xc2
	.4byte	0x955
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texMan
	.uleb128 0x4c
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x367
	.4byte	0x3cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	border_color
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 84
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	texMan
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB65-.Ltext0
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
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 3312
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 3312
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 3312
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 3312
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB67-.Ltext0
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
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI17-.Ltext0
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
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-1-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL61-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL71-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL79-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL91-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 65536
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 65536
	.byte	0x9f
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 65536
	.byte	0x9f
	.4byte	.LVL111-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LFB79-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI43-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL173-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL183-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL173-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL173-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LFB80-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI49-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI50-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI52-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL187-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL187-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL205-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cur_tex+3
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cur_tex+3
	.4byte	.LVL205-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	cur_tex+3
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LFB83-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI53-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI54-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI56-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI57-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI59-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI60-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI61-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI62-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI63-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL214-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL230-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL245-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL214-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL216-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL230-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL245-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-1-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL216-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL225-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-1-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL234-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL243-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL246-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LFB84-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI65-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI66-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI67-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI68-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI69-.Ltext0
	.4byte	.LCFI70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI70-.Ltext0
	.4byte	.LCFI71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI71-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI72-.Ltext0
	.4byte	.LCFI73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI73-.Ltext0
	.4byte	.LCFI74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI74-.Ltext0
	.4byte	.LCFI75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI75-.Ltext0
	.4byte	.LCFI76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI76-.Ltext0
	.4byte	.LCFI77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI77-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI78-.Ltext0
	.4byte	.LCFI79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI79-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL261-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL265-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL261-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL264-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL250-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL250-1-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL255-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL255-1-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL261-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL266-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LFB85-.Ltext0
	.4byte	.LCFI80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI80-.Ltext0
	.4byte	.LCFI81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI81-.Ltext0
	.4byte	.LCFI82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI82-.Ltext0
	.4byte	.LCFI83-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI83-.Ltext0
	.4byte	.LCFI84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI84-.Ltext0
	.4byte	.LCFI85-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI85-.Ltext0
	.4byte	.LCFI86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI86-.Ltext0
	.4byte	.LCFI87-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI87-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LFB86-.Ltext0
	.4byte	.LCFI88-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI88-.Ltext0
	.4byte	.LCFI89-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI89-.Ltext0
	.4byte	.LCFI90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI90-.Ltext0
	.4byte	.LCFI91-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI91-.Ltext0
	.4byte	.LCFI92-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI92-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LFB87-.Ltext0
	.4byte	.LCFI93-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI93-.Ltext0
	.4byte	.LCFI94-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI94-.Ltext0
	.4byte	.LCFI95-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI95-.Ltext0
	.4byte	.LCFI96-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI96-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL287-1-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 33984
	.byte	0x9f
	.4byte	.LVL288-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL288-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL287-1-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 33984
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LFB88-.Ltext0
	.4byte	.LCFI97-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI97-.Ltext0
	.4byte	.LCFI98-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI98-.Ltext0
	.4byte	.LCFI99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI99-.Ltext0
	.4byte	.LCFI100-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI100-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LFB89-.Ltext0
	.4byte	.LCFI101-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI101-.Ltext0
	.4byte	.LCFI102-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI102-.Ltext0
	.4byte	.LFE89-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LFB90-.Ltext0
	.4byte	.LCFI103-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI103-.Ltext0
	.4byte	.LCFI104-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI104-.Ltext0
	.4byte	.LCFI105-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI105-.Ltext0
	.4byte	.LCFI106-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI106-.Ltext0
	.4byte	.LFE90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LFB91-.Ltext0
	.4byte	.LCFI107-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI107-.Ltext0
	.4byte	.LCFI108-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI108-.Ltext0
	.4byte	.LCFI109-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI109-.Ltext0
	.4byte	.LCFI110-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI110-.Ltext0
	.4byte	.LFE91-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LFB92-.Ltext0
	.4byte	.LCFI111-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI111-.Ltext0
	.4byte	.LCFI112-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI112-.Ltext0
	.4byte	.LCFI113-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI113-.Ltext0
	.4byte	.LCFI114-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI114-.Ltext0
	.4byte	.LCFI115-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI115-.Ltext0
	.4byte	.LCFI116-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI116-.Ltext0
	.4byte	.LCFI117-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI117-.Ltext0
	.4byte	.LCFI118-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI118-.Ltext0
	.4byte	.LCFI119-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI119-.Ltext0
	.4byte	.LCFI120-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI120-.Ltext0
	.4byte	.LFE92-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL311-1-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL311-1-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL315-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LFB93-.Ltext0
	.4byte	.LCFI121-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI121-.Ltext0
	.4byte	.LCFI122-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI122-.Ltext0
	.4byte	.LCFI123-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI123-.Ltext0
	.4byte	.LCFI124-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI124-.Ltext0
	.4byte	.LCFI125-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI125-.Ltext0
	.4byte	.LCFI126-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI126-.Ltext0
	.4byte	.LCFI127-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI127-.Ltext0
	.4byte	.LCFI128-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI128-.Ltext0
	.4byte	.LCFI129-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI129-.Ltext0
	.4byte	.LCFI130-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI130-.Ltext0
	.4byte	.LCFI131-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI131-.Ltext0
	.4byte	.LCFI132-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI132-.Ltext0
	.4byte	.LCFI133-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI133-.Ltext0
	.4byte	.LCFI134-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI134-.Ltext0
	.4byte	.LCFI135-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI135-.Ltext0
	.4byte	.LCFI136-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI136-.Ltext0
	.4byte	.LCFI137-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI137-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL331-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL368-.Ltext0
	.4byte	.LVL369-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL371-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL374-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL375-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL378-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL380-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL389-.Ltext0
	.4byte	.LVL390-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL393-.Ltext0
	.4byte	.LVL394-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL394-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL326-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL328-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL335-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL340-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL348-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL350-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL356-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL362-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL362-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LFB94-.Ltext0
	.4byte	.LCFI138-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI138-.Ltext0
	.4byte	.LCFI139-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI139-.Ltext0
	.4byte	.LCFI140-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI140-.Ltext0
	.4byte	.LCFI141-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI141-.Ltext0
	.4byte	.LCFI142-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI142-.Ltext0
	.4byte	.LCFI143-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI143-.Ltext0
	.4byte	.LCFI144-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI144-.Ltext0
	.4byte	.LCFI145-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI145-.Ltext0
	.4byte	.LCFI146-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI146-.Ltext0
	.4byte	.LCFI147-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI147-.Ltext0
	.4byte	.LCFI148-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI148-.Ltext0
	.4byte	.LCFI149-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI149-.Ltext0
	.4byte	.LCFI150-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI150-.Ltext0
	.4byte	.LCFI151-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI151-.Ltext0
	.4byte	.LCFI152-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI152-.Ltext0
	.4byte	.LCFI153-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI153-.Ltext0
	.4byte	.LCFI154-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI154-.Ltext0
	.4byte	.LFE94-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL396-.Ltext0
	.4byte	.LVL398-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL399-.Ltext0
	.4byte	.LVL400-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL402-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL406-.Ltext0
	.4byte	.LVL408-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL411-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL414-.Ltext0
	.4byte	.LVL415-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL418-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL418-.Ltext0
	.4byte	.LVL419-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL424-.Ltext0
	.4byte	.LVL425-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL427-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL431-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL434-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL434-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL437-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL440-.Ltext0
	.4byte	.LVL441-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL443-.Ltext0
	.4byte	.LFE94-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL396-.Ltext0
	.4byte	.LVL397-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL399-.Ltext0
	.4byte	.LVL401-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL401-.Ltext0
	.4byte	.LVL402-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL402-.Ltext0
	.4byte	.LVL405-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL406-.Ltext0
	.4byte	.LVL407-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL407-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL412-.Ltext0
	.4byte	.LVL413-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL420-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL421-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL423-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL423-.Ltext0
	.4byte	.LVL424-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL424-.Ltext0
	.4byte	.LVL426-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL427-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL427-.Ltext0
	.4byte	.LVL429-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL430-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL433-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL436-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL436-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL437-.Ltext0
	.4byte	.LVL438-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL440-.Ltext0
	.4byte	.LVL442-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL442-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL443-.Ltext0
	.4byte	.LFE94-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LFB98-.Ltext0
	.4byte	.LCFI155-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI155-.Ltext0
	.4byte	.LCFI156-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI156-.Ltext0
	.4byte	.LCFI157-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI157-.Ltext0
	.4byte	.LCFI158-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI158-.Ltext0
	.4byte	.LCFI159-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI159-.Ltext0
	.4byte	.LCFI160-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI160-.Ltext0
	.4byte	.LCFI161-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI161-.Ltext0
	.4byte	.LCFI162-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI162-.Ltext0
	.4byte	.LCFI163-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI163-.Ltext0
	.4byte	.LCFI164-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI164-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL446-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL447-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL453-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL459-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL461-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL445-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL453-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL453-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL456-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL461-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL447-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL453-.Ltext0
	.4byte	.LVL456-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL460-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL461-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LFB97-.Ltext0
	.4byte	.LCFI165-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI165-.Ltext0
	.4byte	.LCFI166-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI166-.Ltext0
	.4byte	.LCFI167-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI167-.Ltext0
	.4byte	.LCFI168-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI168-.Ltext0
	.4byte	.LCFI169-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI169-.Ltext0
	.4byte	.LCFI170-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI170-.Ltext0
	.4byte	.LCFI171-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI171-.Ltext0
	.4byte	.LCFI172-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI172-.Ltext0
	.4byte	.LCFI173-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI173-.Ltext0
	.4byte	.LCFI174-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI174-.Ltext0
	.4byte	.LCFI175-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI175-.Ltext0
	.4byte	.LCFI176-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI176-.Ltext0
	.4byte	.LCFI177-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI177-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL462-.Ltext0
	.4byte	.LVL464-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL464-.Ltext0
	.4byte	.LVL466-1-.Ltext0
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL467-.Ltext0
	.4byte	.LVL469-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL469-.Ltext0
	.4byte	.LVL471-1-.Ltext0
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL472-.Ltext0
	.4byte	.LVL479-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL482-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL482-.Ltext0
	.4byte	.LVL484-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL486-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL462-.Ltext0
	.4byte	.LVL463-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL467-.Ltext0
	.4byte	.LVL468-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL468-.Ltext0
	.4byte	.LVL471-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL472-.Ltext0
	.4byte	.LVL478-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL482-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL482-.Ltext0
	.4byte	.LVL483-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL486-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL462-.Ltext0
	.4byte	.LVL465-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL467-.Ltext0
	.4byte	.LVL470-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL472-.Ltext0
	.4byte	.LVL480-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL482-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL482-.Ltext0
	.4byte	.LVL485-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL486-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL473-.Ltext0
	.4byte	.LVL477-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL486-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL474-.Ltext0
	.4byte	.LVL477-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL489-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL475-.Ltext0
	.4byte	.LVL477-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 8
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL488-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL476-.Ltext0
	.4byte	.LVL477-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 12
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL487-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LFB95-.Ltext0
	.4byte	.LCFI178-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI178-.Ltext0
	.4byte	.LCFI179-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI179-.Ltext0
	.4byte	.LCFI180-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI180-.Ltext0
	.4byte	.LCFI181-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI181-.Ltext0
	.4byte	.LCFI182-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI182-.Ltext0
	.4byte	.LCFI183-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI183-.Ltext0
	.4byte	.LCFI184-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI184-.Ltext0
	.4byte	.LCFI185-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI185-.Ltext0
	.4byte	.LCFI186-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI186-.Ltext0
	.4byte	.LCFI187-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI187-.Ltext0
	.4byte	.LCFI188-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI188-.Ltext0
	.4byte	.LCFI189-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI189-.Ltext0
	.4byte	.LCFI190-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI190-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL490-.Ltext0
	.4byte	.LVL492-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL492-.Ltext0
	.4byte	.LVL494-1-.Ltext0
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL495-.Ltext0
	.4byte	.LVL497-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL499-1-.Ltext0
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL500-.Ltext0
	.4byte	.LVL501-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL501-.Ltext0
	.4byte	.LVL503-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL505-.Ltext0
	.4byte	.LVL507-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL490-.Ltext0
	.4byte	.LVL491-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL495-.Ltext0
	.4byte	.LVL496-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL496-.Ltext0
	.4byte	.LVL499-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL500-.Ltext0
	.4byte	.LVL501-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL501-.Ltext0
	.4byte	.LVL502-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL505-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL490-.Ltext0
	.4byte	.LVL493-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL495-.Ltext0
	.4byte	.LVL498-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL500-.Ltext0
	.4byte	.LVL501-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL501-.Ltext0
	.4byte	.LVL504-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL505-.Ltext0
	.4byte	.LVL508-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LFB99-.Ltext0
	.4byte	.LCFI191-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI191-.Ltext0
	.4byte	.LCFI192-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI192-.Ltext0
	.4byte	.LCFI193-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI193-.Ltext0
	.4byte	.LCFI194-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI194-.Ltext0
	.4byte	.LCFI195-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI195-.Ltext0
	.4byte	.LCFI196-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI196-.Ltext0
	.4byte	.LCFI197-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI197-.Ltext0
	.4byte	.LCFI198-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI198-.Ltext0
	.4byte	.LCFI199-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI199-.Ltext0
	.4byte	.LCFI200-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI200-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL509-.Ltext0
	.4byte	.LVL511-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL511-.Ltext0
	.4byte	.LVL512-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL513-.Ltext0
	.4byte	.LVL514-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL516-.Ltext0
	.4byte	.LVL518-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL521-.Ltext0
	.4byte	.LVL523-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL525-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL509-.Ltext0
	.4byte	.LVL510-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL513-.Ltext0
	.4byte	.LVL515-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL516-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL516-.Ltext0
	.4byte	.LVL517-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL517-.Ltext0
	.4byte	.LVL520-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL521-.Ltext0
	.4byte	.LVL522-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL525-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL509-.Ltext0
	.4byte	.LVL512-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL513-.Ltext0
	.4byte	.LVL516-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL516-.Ltext0
	.4byte	.LVL519-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL521-.Ltext0
	.4byte	.LVL524-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL525-.Ltext0
	.4byte	.LVL526-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL526-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LFB101-.Ltext0
	.4byte	.LCFI201-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI201-.Ltext0
	.4byte	.LCFI202-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI202-.Ltext0
	.4byte	.LCFI203-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI203-.Ltext0
	.4byte	.LCFI204-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI204-.Ltext0
	.4byte	.LCFI205-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI205-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL527-.Ltext0
	.4byte	.LVL532-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL535-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL536-.Ltext0
	.4byte	.LVL537-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL537-.Ltext0
	.4byte	.LVL548-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL549-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL527-.Ltext0
	.4byte	.LVL533-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL533-.Ltext0
	.4byte	.LVL534-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL536-.Ltext0
	.4byte	.LVL538-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL538-.Ltext0
	.4byte	.LVL547-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL547-.Ltext0
	.4byte	.LVL548-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 8
	.4byte	.LVL549-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL528-.Ltext0
	.4byte	.LVL529-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL530-.Ltext0
	.4byte	.LVL531-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL537-.Ltext0
	.4byte	.LVL538-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL538-.Ltext0
	.4byte	.LVL547-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL547-.Ltext0
	.4byte	.LVL548-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 8
	.4byte	.LVL549-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL537-.Ltext0
	.4byte	.LVL548-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL549-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL542-.Ltext0
	.4byte	.LVL543-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 8
	.4byte	.LVL543-.Ltext0
	.4byte	.LVL549-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL553-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL539-.Ltext0
	.4byte	.LVL540-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL540-.Ltext0
	.4byte	.LVL546-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL546-.Ltext0
	.4byte	.LVL548-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL549-.Ltext0
	.4byte	.LVL550-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL550-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL541-.Ltext0
	.4byte	.LVL545-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL545-.Ltext0
	.4byte	.LVL548-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 4
	.4byte	.LVL551-.Ltext0
	.4byte	.LVL552-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL553-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LFB100-.Ltext0
	.4byte	.LCFI206-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI206-.Ltext0
	.4byte	.LCFI207-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI207-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL554-.Ltext0
	.4byte	.LVL555-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL562-.Ltext0
	.4byte	.LVL563-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL563-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL556-.Ltext0
	.4byte	.LVL557-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL558-.Ltext0
	.4byte	.LVL559-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL559-.Ltext0
	.4byte	.LVL560-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL561-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LFB102-.Ltext0
	.4byte	.LCFI208-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI208-.Ltext0
	.4byte	.LCFI209-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI209-.Ltext0
	.4byte	.LCFI210-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI210-.Ltext0
	.4byte	.LCFI211-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI211-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL564-.Ltext0
	.4byte	.LVL567-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL567-.Ltext0
	.4byte	.LVL572-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL564-.Ltext0
	.4byte	.LVL565-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL565-.Ltext0
	.4byte	.LVL566-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL565-.Ltext0
	.4byte	.LVL566-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL568-.Ltext0
	.4byte	.LVL569-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL570-.Ltext0
	.4byte	.LVL571-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LFB103-.Ltext0
	.4byte	.LCFI212-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI212-.Ltext0
	.4byte	.LCFI213-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI213-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL573-.Ltext0
	.4byte	.LVL576-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL576-.Ltext0
	.4byte	.LVL583-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL573-.Ltext0
	.4byte	.LVL577-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL577-.Ltext0
	.4byte	.LVL582-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL574-.Ltext0
	.4byte	.LVL582-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL575-.Ltext0
	.4byte	.LVL581-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL579-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL584-.Ltext0
	.4byte	.LVL586-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL586-.Ltext0
	.4byte	.LVL587-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL588-.Ltext0
	.4byte	.LVL590-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL588-.Ltext0
	.4byte	.LVL589-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL589-.Ltext0
	.4byte	.LVL591-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL592-.Ltext0
	.4byte	.LVL596-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL600-.Ltext0
	.4byte	.LVL601-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL593-.Ltext0
	.4byte	.LVL594-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 84
	.4byte	.LVL594-.Ltext0
	.4byte	.LVL595-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL595-.Ltext0
	.4byte	.LVL598-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL600-.Ltext0
	.4byte	.LFE106-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL593-.Ltext0
	.4byte	.LVL599-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL600-.Ltext0
	.4byte	.LVL601-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL597-.Ltext0
	.4byte	.LVL599-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LFB107-.Ltext0
	.4byte	.LCFI214-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI214-.Ltext0
	.4byte	.LCFI215-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI215-.Ltext0
	.4byte	.LCFI216-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI216-.Ltext0
	.4byte	.LCFI217-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI217-.Ltext0
	.4byte	.LCFI218-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI218-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL602-.Ltext0
	.4byte	.LVL607-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL609-.Ltext0
	.4byte	.LVL611-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL612-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL602-.Ltext0
	.4byte	.LVL603-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL603-.Ltext0
	.4byte	.LVL604-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL605-.Ltext0
	.4byte	.LVL606-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL606-.Ltext0
	.4byte	.LVL607-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	.LVL607-1-.Ltext0
	.4byte	.LVL608-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL609-.Ltext0
	.4byte	.LVL610-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL612-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LFB108-.Ltext0
	.4byte	.LCFI219-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI219-.Ltext0
	.4byte	.LCFI220-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI220-.Ltext0
	.4byte	.LCFI221-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI221-.Ltext0
	.4byte	.LCFI222-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI222-.Ltext0
	.4byte	.LCFI223-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI223-.Ltext0
	.4byte	.LCFI224-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI224-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL613-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL615-.Ltext0
	.4byte	.LVL622-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL623-.Ltext0
	.4byte	.LVL625-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL625-.Ltext0
	.4byte	.LVL627-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL628-.Ltext0
	.4byte	.LVL630-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL630-.Ltext0
	.4byte	.LVL632-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL613-.Ltext0
	.4byte	.LVL614-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL614-.Ltext0
	.4byte	.LVL617-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL617-.Ltext0
	.4byte	.LVL618-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL623-.Ltext0
	.4byte	.LVL624-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL624-.Ltext0
	.4byte	.LVL626-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL628-.Ltext0
	.4byte	.LVL629-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL629-.Ltext0
	.4byte	.LVL631-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL616-.Ltext0
	.4byte	.LVL618-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL620-.Ltext0
	.4byte	.LVL621-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL619-.Ltext0
	.4byte	.LVL621-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI225-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI225-.Ltext0
	.4byte	.LCFI226-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI226-.Ltext0
	.4byte	.LCFI227-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI227-.Ltext0
	.4byte	.LCFI228-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI228-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL633-.Ltext0
	.4byte	.LVL634-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL634-.Ltext0
	.4byte	.LVL636-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL636-.Ltext0
	.4byte	.LVL638-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 32
	.4byte	.LVL638-.Ltext0
	.4byte	.LVL640-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL640-.Ltext0
	.4byte	.LVL641-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL633-.Ltext0
	.4byte	.LVL635-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL635-1-.Ltext0
	.4byte	.LVL637-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL637-.Ltext0
	.4byte	.LVL638-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 84
	.4byte	.LVL638-.Ltext0
	.4byte	.LVL639-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL639-.Ltext0
	.4byte	.LVL642-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL635-.Ltext0
	.4byte	.LVL637-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL637-.Ltext0
	.4byte	.LVL638-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 84
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL635-.Ltext0
	.4byte	.LVL638-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	texMan
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL644-.Ltext0
	.4byte	.LVL645-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL646-.Ltext0
	.4byte	.LVL647-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI229-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI229-.Ltext0
	.4byte	.LCFI230-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI230-.Ltext0
	.4byte	.LCFI231-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI231-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL648-.Ltext0
	.4byte	.LVL649-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL658-.Ltext0
	.4byte	.LVL660-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL660-.Ltext0
	.4byte	.LVL661-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL648-.Ltext0
	.4byte	.LVL649-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL648-.Ltext0
	.4byte	.LVL649-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL657-.Ltext0
	.4byte	.LVL659-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL650-.Ltext0
	.4byte	.LVL656-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL661-.Ltext0
	.4byte	.LVL662-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL650-.Ltext0
	.4byte	.LVL658-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	texMan
	.byte	0x9f
	.4byte	.LVL661-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	texMan
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL651-.Ltext0
	.4byte	.LVL652-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL652-.Ltext0
	.4byte	.LVL653-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL654-.Ltext0
	.4byte	.LVL655-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL651-.Ltext0
	.4byte	.LVL652-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL652-.Ltext0
	.4byte	.LVL655-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL663-.Ltext0
	.4byte	.LVL664-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL664-.Ltext0
	.4byte	.LVL665-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL666-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI232-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI232-.Ltext0
	.4byte	.LCFI233-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI233-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL667-.Ltext0
	.4byte	.LVL669-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL669-.Ltext0
	.4byte	.LVL672-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LVL667-.Ltext0
	.4byte	.LVL670-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST178:
	.4byte	.LVL667-.Ltext0
	.4byte	.LVL671-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL667-.Ltext0
	.4byte	.LVL668-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL668-.Ltext0
	.4byte	.LVL675-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LVL667-.Ltext0
	.4byte	.LVL672-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST181:
	.4byte	.LVL673-.Ltext0
	.4byte	.LVL674-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL674-1-.Ltext0
	.4byte	.LVL676-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL676-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LVL677-.Ltext0
	.4byte	.LVL678-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI234-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI234-.Ltext0
	.4byte	.LCFI235-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI235-.Ltext0
	.4byte	.LCFI236-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI236-.Ltext0
	.4byte	.LCFI237-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI237-.Ltext0
	.4byte	.LCFI238-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI238-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LVL679-.Ltext0
	.4byte	.LVL681-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL681-.Ltext0
	.4byte	.LVL685-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL687-.Ltext0
	.4byte	.LVL688-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL688-.Ltext0
	.4byte	.LVL689-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL690-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL679-.Ltext0
	.4byte	.LVL682-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL682-.Ltext0
	.4byte	.LVL683-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL687-.Ltext0
	.4byte	.LVL690-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL690-.Ltext0
	.4byte	.LVL691-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL680-.Ltext0
	.4byte	.LVL682-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL682-.Ltext0
	.4byte	.LVL683-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL690-.Ltext0
	.4byte	.LVL691-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL680-.Ltext0
	.4byte	.LVL681-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL681-.Ltext0
	.4byte	.LVL685-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL690-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL684-.Ltext0
	.4byte	.LVL686-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL691-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LVL684-.Ltext0
	.4byte	.LVL685-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 4
	.4byte	.LVL685-.Ltext0
	.4byte	.LVL686-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL686-.Ltext0
	.4byte	.LVL687-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LVL684-.Ltext0
	.4byte	.LVL686-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL684-.Ltext0
	.4byte	.LVL687-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7627
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI239-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI239-.Ltext0
	.4byte	.LCFI240-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI240-.Ltext0
	.4byte	.LCFI241-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI241-.Ltext0
	.4byte	.LCFI242-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI242-.Ltext0
	.4byte	.LCFI243-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI243-.Ltext0
	.4byte	.LCFI244-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI244-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LVL692-.Ltext0
	.4byte	.LVL693-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL693-.Ltext0
	.4byte	.LVL695-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL698-.Ltext0
	.4byte	.LVL700-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL701-.Ltext0
	.4byte	.LVL703-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL704-.Ltext0
	.4byte	.LVL706-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL692-.Ltext0
	.4byte	.LVL696-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL696-.Ltext0
	.4byte	.LVL697-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL698-.Ltext0
	.4byte	.LVL699-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL701-.Ltext0
	.4byte	.LVL702-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL704-.Ltext0
	.4byte	.LVL705-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL694-.Ltext0
	.4byte	.LVL696-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LFB119-.Ltext0
	.4byte	.LCFI245-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI245-.Ltext0
	.4byte	.LCFI246-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI246-.Ltext0
	.4byte	.LCFI247-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI247-.Ltext0
	.4byte	.LCFI248-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI248-.Ltext0
	.4byte	.LCFI249-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI249-.Ltext0
	.4byte	.LCFI250-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI250-.Ltext0
	.4byte	.LCFI251-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI251-.Ltext0
	.4byte	.LCFI252-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI252-.Ltext0
	.4byte	.LCFI253-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI253-.Ltext0
	.4byte	.LCFI254-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI254-.Ltext0
	.4byte	.LCFI255-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI255-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LVL707-.Ltext0
	.4byte	.LVL708-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL722-.Ltext0
	.4byte	.LVL724-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL730-.Ltext0
	.4byte	.LVL732-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL749-.Ltext0
	.4byte	.LVL751-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL759-.Ltext0
	.4byte	.LVL761-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL707-.Ltext0
	.4byte	.LVL709-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL709-.Ltext0
	.4byte	.LVL718-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL722-.Ltext0
	.4byte	.LVL723-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL723-.Ltext0
	.4byte	.LVL726-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL730-.Ltext0
	.4byte	.LVL731-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL731-.Ltext0
	.4byte	.LVL739-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL740-.Ltext0
	.4byte	.LVL748-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL749-.Ltext0
	.4byte	.LVL750-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL750-.Ltext0
	.4byte	.LVL758-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL759-.Ltext0
	.4byte	.LVL760-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL760-.Ltext0
	.4byte	.LVL768-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL769-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL707-.Ltext0
	.4byte	.LVL710-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL710-1-.Ltext0
	.4byte	.LVL720-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL720-.Ltext0
	.4byte	.LVL721-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL722-.Ltext0
	.4byte	.LVL725-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL725-.Ltext0
	.4byte	.LVL726-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL730-.Ltext0
	.4byte	.LVL733-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL733-.Ltext0
	.4byte	.LVL738-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL740-.Ltext0
	.4byte	.LVL747-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL749-.Ltext0
	.4byte	.LVL752-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL752-.Ltext0
	.4byte	.LVL757-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL759-.Ltext0
	.4byte	.LVL762-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL762-.Ltext0
	.4byte	.LVL767-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL769-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL707-.Ltext0
	.4byte	.LVL710-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL710-1-.Ltext0
	.4byte	.LVL728-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL730-.Ltext0
	.4byte	.LVL734-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL734-1-.Ltext0
	.4byte	.LVL736-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL740-.Ltext0
	.4byte	.LVL745-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL749-.Ltext0
	.4byte	.LVL753-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL753-1-.Ltext0
	.4byte	.LVL755-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL759-.Ltext0
	.4byte	.LVL763-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL763-1-.Ltext0
	.4byte	.LVL765-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL769-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST202:
	.4byte	.LVL707-.Ltext0
	.4byte	.LVL710-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL710-1-.Ltext0
	.4byte	.LVL729-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL730-.Ltext0
	.4byte	.LVL734-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL734-1-.Ltext0
	.4byte	.LVL737-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL740-.Ltext0
	.4byte	.LVL746-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL749-.Ltext0
	.4byte	.LVL753-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL753-1-.Ltext0
	.4byte	.LVL756-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL759-.Ltext0
	.4byte	.LVL763-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL763-1-.Ltext0
	.4byte	.LVL766-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL769-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST203:
	.4byte	.LVL707-.Ltext0
	.4byte	.LVL710-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL710-1-.Ltext0
	.4byte	.LVL727-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL730-.Ltext0
	.4byte	.LVL734-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL734-1-.Ltext0
	.4byte	.LVL735-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL740-.Ltext0
	.4byte	.LVL744-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL749-.Ltext0
	.4byte	.LVL753-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL753-1-.Ltext0
	.4byte	.LVL754-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL759-.Ltext0
	.4byte	.LVL763-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL763-1-.Ltext0
	.4byte	.LVL764-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL769-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST204:
	.4byte	.LVL707-.Ltext0
	.4byte	.LVL710-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL722-.Ltext0
	.4byte	.LVL726-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL730-.Ltext0
	.4byte	.LVL734-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL749-.Ltext0
	.4byte	.LVL753-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL759-.Ltext0
	.4byte	.LVL763-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST205:
	.4byte	.LVL707-.Ltext0
	.4byte	.LVL710-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL722-.Ltext0
	.4byte	.LVL726-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL730-.Ltext0
	.4byte	.LVL734-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL749-.Ltext0
	.4byte	.LVL753-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL759-.Ltext0
	.4byte	.LVL763-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST206:
	.4byte	.LVL710-.Ltext0
	.4byte	.LVL711-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST207:
	.4byte	.LVL712-.Ltext0
	.4byte	.LVL716-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL716-1-.Ltext0
	.4byte	.LVL722-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL740-.Ltext0
	.4byte	.LVL741-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL741-.Ltext0
	.4byte	.LVL743-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL769-.Ltext0
	.4byte	.LVL770-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL770-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST208:
	.4byte	.LVL713-.Ltext0
	.4byte	.LVL722-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL740-.Ltext0
	.4byte	.LVL749-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL769-.Ltext0
	.4byte	.LVL772-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL773-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST209:
	.4byte	.LVL717-.Ltext0
	.4byte	.LVL719-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL719-.Ltext0
	.4byte	.LVL721-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST210:
	.4byte	.LFB121-.Ltext0
	.4byte	.LCFI256-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI256-.Ltext0
	.4byte	.LCFI257-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI257-.Ltext0
	.4byte	.LCFI258-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI258-.Ltext0
	.4byte	.LCFI259-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI259-.Ltext0
	.4byte	.LCFI260-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI260-.Ltext0
	.4byte	.LCFI261-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI261-.Ltext0
	.4byte	.LCFI262-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI262-.Ltext0
	.4byte	.LCFI263-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI263-.Ltext0
	.4byte	.LCFI264-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI264-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	0
	.4byte	0
.LLST211:
	.4byte	.LVL775-.Ltext0
	.4byte	.LVL779-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL779-.Ltext0
	.4byte	.LVL781-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL806-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL806-.Ltext0
	.4byte	.LVL808-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL810-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL815-.Ltext0
	.4byte	.LVL818-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL824-.Ltext0
	.4byte	.LVL826-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL826-.Ltext0
	.4byte	.LVL828-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL833-.Ltext0
	.4byte	.LVL835-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL835-.Ltext0
	.4byte	.LVL837-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL838-.Ltext0
	.4byte	.LVL839-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL842-.Ltext0
	.4byte	.LVL843-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL843-.Ltext0
	.4byte	.LVL845-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST212:
	.4byte	.LVL775-.Ltext0
	.4byte	.LVL780-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL780-.Ltext0
	.4byte	.LVL800-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL805-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL805-.Ltext0
	.4byte	.LVL808-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL810-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL810-1-.Ltext0
	.4byte	.LVL812-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL815-.Ltext0
	.4byte	.LVL817-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL817-.Ltext0
	.4byte	.LVL821-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL824-.Ltext0
	.4byte	.LVL825-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL825-.Ltext0
	.4byte	.LVL830-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL833-.Ltext0
	.4byte	.LVL834-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL834-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST213:
	.4byte	.LVL775-.Ltext0
	.4byte	.LVL781-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL807-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL810-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL815-.Ltext0
	.4byte	.LVL819-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL824-.Ltext0
	.4byte	.LVL827-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL833-.Ltext0
	.4byte	.LVL836-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL838-.Ltext0
	.4byte	.LVL839-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL842-.Ltext0
	.4byte	.LVL844-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST214:
	.4byte	.LVL775-.Ltext0
	.4byte	.LVL781-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL781-1-.Ltext0
	.4byte	.LVL802-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL808-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL808-1-.Ltext0
	.4byte	.LVL808-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL810-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL810-1-.Ltext0
	.4byte	.LVL814-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL815-.Ltext0
	.4byte	.LVL820-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL820-1-.Ltext0
	.4byte	.LVL823-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL824-.Ltext0
	.4byte	.LVL828-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL828-1-.Ltext0
	.4byte	.LVL832-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL833-.Ltext0
	.4byte	.LVL837-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL837-1-.Ltext0
	.4byte	.LVL840-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL842-.Ltext0
	.4byte	.LVL845-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL845-1-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST215:
	.4byte	.LVL775-.Ltext0
	.4byte	.LVL781-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL781-1-.Ltext0
	.4byte	.LVL803-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL808-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL808-1-.Ltext0
	.4byte	.LVL808-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL810-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL810-1-.Ltext0
	.4byte	.LVL813-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL815-.Ltext0
	.4byte	.LVL820-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL820-1-.Ltext0
	.4byte	.LVL822-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL824-.Ltext0
	.4byte	.LVL828-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL828-1-.Ltext0
	.4byte	.LVL831-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL833-.Ltext0
	.4byte	.LVL837-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL837-1-.Ltext0
	.4byte	.LVL841-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL842-.Ltext0
	.4byte	.LVL845-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL845-1-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST216:
	.4byte	.LVL775-.Ltext0
	.4byte	.LVL776-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST217:
	.4byte	.LVL775-.Ltext0
	.4byte	.LVL781-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL808-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL810-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL815-.Ltext0
	.4byte	.LVL820-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL824-.Ltext0
	.4byte	.LVL828-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL833-.Ltext0
	.4byte	.LVL837-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL838-.Ltext0
	.4byte	.LVL839-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL842-.Ltext0
	.4byte	.LVL845-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST218:
	.4byte	.LVL775-.Ltext0
	.4byte	.LVL781-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL808-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL810-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL815-.Ltext0
	.4byte	.LVL820-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL824-.Ltext0
	.4byte	.LVL828-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL833-.Ltext0
	.4byte	.LVL837-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL838-.Ltext0
	.4byte	.LVL839-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL842-.Ltext0
	.4byte	.LVL845-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST219:
	.4byte	.LVL778-.Ltext0
	.4byte	.LVL788-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL808-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL811-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL824-.Ltext0
	.4byte	.LVL829-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL833-.Ltext0
	.4byte	.LVL846-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL847-.Ltext0
	.4byte	.LVL848-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL850-.Ltext0
	.4byte	.LVL852-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL854-.Ltext0
	.4byte	.LVL856-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST220:
	.4byte	.LVL781-.Ltext0
	.4byte	.LVL782-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL782-.Ltext0
	.4byte	.LVL804-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL808-.Ltext0
	.4byte	.LVL809-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL846-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST221:
	.4byte	.LVL783-.Ltext0
	.4byte	.LVL784-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL784-1-.Ltext0
	.4byte	.LVL804-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL846-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST222:
	.4byte	.LVL794-.Ltext0
	.4byte	.LVL804-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL808-.Ltext0
	.4byte	.LVL809-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST223:
	.4byte	.LVL785-.Ltext0
	.4byte	.LVL789-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL789-.Ltext0
	.4byte	.LVL804-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL846-.Ltext0
	.4byte	.LVL850-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL851-.Ltext0
	.4byte	.LVL853-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL853-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST224:
	.4byte	.LVL785-.Ltext0
	.4byte	.LVL795-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL795-.Ltext0
	.4byte	.LVL797-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 24
	.4byte	.LVL846-.Ltext0
	.4byte	.LVL850-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL851-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST225:
	.4byte	.LVL786-.Ltext0
	.4byte	.LVL804-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL846-.Ltext0
	.4byte	.LVL850-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL851-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST226:
	.4byte	.LVL787-.Ltext0
	.4byte	.LVL788-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL851-.Ltext0
	.4byte	.LVL852-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL855-.Ltext0
	.4byte	.LVL856-.Ltext0
	.2byte	0x7
	.byte	0x88
	.sleb128 0
	.byte	0x8c
	.sleb128 20
	.byte	0x6
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST227:
	.4byte	.LVL849-.Ltext0
	.4byte	.LVL850-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST228:
	.4byte	.LVL777-.Ltext0
	.4byte	.LVL781-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL781-1-.Ltext0
	.4byte	.LVL802-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL804-.Ltext0
	.4byte	.LVL808-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL808-1-.Ltext0
	.4byte	.LVL808-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL809-.Ltext0
	.4byte	.LVL810-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL810-1-.Ltext0
	.4byte	.LVL814-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL815-.Ltext0
	.4byte	.LVL816-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL824-.Ltext0
	.4byte	.LVL828-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL828-1-.Ltext0
	.4byte	.LVL832-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL833-.Ltext0
	.4byte	.LVL837-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL837-1-.Ltext0
	.4byte	.LVL840-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL842-.Ltext0
	.4byte	.LVL845-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL845-1-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST229:
	.4byte	.LVL790-.Ltext0
	.4byte	.LVL791-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL792-.Ltext0
	.4byte	.LVL793-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST230:
	.4byte	.LVL795-.Ltext0
	.4byte	.LVL797-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST231:
	.4byte	.LVL798-.Ltext0
	.4byte	.LVL799-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL799-.Ltext0
	.4byte	.LVL801-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST232:
	.4byte	.LVL810-.Ltext0
	.4byte	.LVL815-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST233:
	.4byte	.LVL815-.Ltext0
	.4byte	.LVL816-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST234:
	.4byte	.LVL839-.Ltext0
	.4byte	.LVL842-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST235:
	.4byte	.LFB120-.Ltext0
	.4byte	.LCFI265-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI265-.Ltext0
	.4byte	.LCFI266-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI266-.Ltext0
	.4byte	.LCFI267-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI267-.Ltext0
	.4byte	.LCFI268-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI268-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST236:
	.4byte	.LVL857-.Ltext0
	.4byte	.LVL860-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL860-.Ltext0
	.4byte	.LVL863-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL866-.Ltext0
	.4byte	.LVL868-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST237:
	.4byte	.LVL857-.Ltext0
	.4byte	.LVL864-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL866-.Ltext0
	.4byte	.LVL867-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST238:
	.4byte	.LVL857-.Ltext0
	.4byte	.LVL864-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL866-.Ltext0
	.4byte	.LVL869-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST239:
	.4byte	.LVL857-.Ltext0
	.4byte	.LVL864-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL866-.Ltext0
	.4byte	.LVL870-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST240:
	.4byte	.LVL857-.Ltext0
	.4byte	.LVL862-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL862-.Ltext0
	.4byte	.LVL865-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL866-.Ltext0
	.4byte	.LVL870-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL870-1-.Ltext0
	.4byte	.LVL871-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST241:
	.4byte	.LVL857-.Ltext0
	.4byte	.LVL861-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL861-.Ltext0
	.4byte	.LVL864-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL866-.Ltext0
	.4byte	.LVL870-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST242:
	.4byte	.LVL857-.Ltext0
	.4byte	.LVL859-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL859-.Ltext0
	.4byte	.LVL864-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL866-.Ltext0
	.4byte	.LVL870-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST243:
	.4byte	.LVL857-.Ltext0
	.4byte	.LVL858-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL858-.Ltext0
	.4byte	.LVL864-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL866-.Ltext0
	.4byte	.LVL870-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST244:
	.4byte	.LFB122-.Ltext0
	.4byte	.LCFI269-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI269-.Ltext0
	.4byte	.LCFI270-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI270-.Ltext0
	.4byte	.LCFI271-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI271-.Ltext0
	.4byte	.LCFI272-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI272-.Ltext0
	.4byte	.LCFI273-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI273-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST245:
	.4byte	.LVL872-.Ltext0
	.4byte	.LVL874-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL874-.Ltext0
	.4byte	.LVL877-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL878-.Ltext0
	.4byte	.LVL880-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL880-.Ltext0
	.4byte	.LVL881-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL882-.Ltext0
	.4byte	.LVL884-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL884-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST246:
	.4byte	.LVL872-.Ltext0
	.4byte	.LVL874-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL878-.Ltext0
	.4byte	.LVL879-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL882-.Ltext0
	.4byte	.LVL883-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL885-.Ltext0
	.4byte	.LVL886-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST247:
	.4byte	.LVL873-.Ltext0
	.4byte	.LVL874-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL875-.Ltext0
	.4byte	.LVL876-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST248:
	.4byte	.LFB123-.Ltext0
	.4byte	.LCFI274-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI274-.Ltext0
	.4byte	.LCFI275-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI275-.Ltext0
	.4byte	.LCFI276-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI276-.Ltext0
	.4byte	.LCFI277-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI277-.Ltext0
	.4byte	.LCFI278-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI278-.Ltext0
	.4byte	.LCFI279-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI279-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST249:
	.4byte	.LVL887-.Ltext0
	.4byte	.LVL890-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL890-.Ltext0
	.4byte	.LVL891-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL892-.Ltext0
	.4byte	.LVL893-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL894-.Ltext0
	.4byte	.LVL895-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST250:
	.4byte	.LVL888-.Ltext0
	.4byte	.LVL889-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL889-.Ltext0
	.4byte	.LVL891-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL892-.Ltext0
	.4byte	.LVL893-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST251:
	.4byte	.LVL888-.Ltext0
	.4byte	.LVL894-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	texMan
	.byte	0x9f
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
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	.LBB122-.Ltext0
	.4byte	.LBE122-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	.LBB112-.Ltext0
	.4byte	.LBE112-.Ltext0
	.4byte	.LBB121-.Ltext0
	.4byte	.LBE121-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB125-.Ltext0
	.4byte	.LBE125-.Ltext0
	.4byte	.LBB130-.Ltext0
	.4byte	.LBE130-.Ltext0
	.4byte	.LBB131-.Ltext0
	.4byte	.LBE131-.Ltext0
	.4byte	.LBB132-.Ltext0
	.4byte	.LBE132-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	.LBB127-.Ltext0
	.4byte	.LBE127-.Ltext0
	.4byte	.LBB128-.Ltext0
	.4byte	.LBE128-.Ltext0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB143-.Ltext0
	.4byte	.LBE143-.Ltext0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	.LBB145-.Ltext0
	.4byte	.LBE145-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB150-.Ltext0
	.4byte	.LBE150-.Ltext0
	.4byte	.LBB159-.Ltext0
	.4byte	.LBE159-.Ltext0
	.4byte	.LBB160-.Ltext0
	.4byte	.LBE160-.Ltext0
	.4byte	.LBB161-.Ltext0
	.4byte	.LBE161-.Ltext0
	.4byte	.LBB162-.Ltext0
	.4byte	.LBE162-.Ltext0
	.4byte	.LBB163-.Ltext0
	.4byte	.LBE163-.Ltext0
	.4byte	.LBB164-.Ltext0
	.4byte	.LBE164-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB151-.Ltext0
	.4byte	.LBE151-.Ltext0
	.4byte	.LBB152-.Ltext0
	.4byte	.LBE152-.Ltext0
	.4byte	.LBB158-.Ltext0
	.4byte	.LBE158-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB153-.Ltext0
	.4byte	.LBE153-.Ltext0
	.4byte	.LBB156-.Ltext0
	.4byte	.LBE156-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB169-.Ltext0
	.4byte	.LBE169-.Ltext0
	.4byte	.LBB177-.Ltext0
	.4byte	.LBE177-.Ltext0
	.4byte	.LBB178-.Ltext0
	.4byte	.LBE178-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB170-.Ltext0
	.4byte	.LBE170-.Ltext0
	.4byte	.LBB175-.Ltext0
	.4byte	.LBE175-.Ltext0
	.4byte	.LBB176-.Ltext0
	.4byte	.LBE176-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB171-.Ltext0
	.4byte	.LBE171-.Ltext0
	.4byte	.LBB174-.Ltext0
	.4byte	.LBE174-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB172-.Ltext0
	.4byte	.LBE172-.Ltext0
	.4byte	.LBB173-.Ltext0
	.4byte	.LBE173-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB183-.Ltext0
	.4byte	.LBE183-.Ltext0
	.4byte	.LBB186-.Ltext0
	.4byte	.LBE186-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB187-.Ltext0
	.4byte	.LBE187-.Ltext0
	.4byte	.LBB189-.Ltext0
	.4byte	.LBE189-.Ltext0
	.4byte	.LBB195-.Ltext0
	.4byte	.LBE195-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB196-.Ltext0
	.4byte	.LBE196-.Ltext0
	.4byte	.LBB199-.Ltext0
	.4byte	.LBE199-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF149:
	.string	"params"
.LASF188:
	.string	"getNextTexID"
.LASF162:
	.string	"stage"
.LASF46:
	.string	"Stack"
.LASF111:
	.string	"base_level"
.LASF141:
	.string	"computeStart"
.LASF156:
	.string	"GX_SetTevAIn"
.LASF132:
	.string	"resizeMan"
.LASF8:
	.string	"char"
.LASF121:
	.string	"GL2GX_Filter"
.LASF30:
	.string	"GLint"
.LASF105:
	.string	"format"
.LASF57:
	.string	"quad_t"
.LASF67:
	.string	"boxInfo"
.LASF196:
	.string	"__FUNCTION__"
.LASF246:
	.string	"globAmbient"
.LASF242:
	.string	"texture_stack"
.LASF25:
	.string	"GXTexObj"
.LASF96:
	.string	"Carg"
.LASF257:
	.string	"fb_max_height"
.LASF118:
	.string	"usedTexs"
.LASF227:
	.string	"_normalelements"
.LASF218:
	.string	"internalformat"
.LASF142:
	.string	"byteOffset"
.LASF59:
	.string	"_mat"
.LASF289:
	.string	"scale_s32"
.LASF203:
	.string	"xoffset"
.LASF148:
	.string	"_glGetPixelStore"
.LASF52:
	.string	"specular"
.LASF43:
	.string	"_stack"
.LASF193:
	.string	"GX_getTexObj"
.LASF287:
	.string	"GLvoid"
.LASF107:
	.string	"level"
.LASF117:
	.string	"nTexs"
.LASF229:
	.string	"_texcoordelements"
.LASF78:
	.string	"_trans"
.LASF54:
	.string	"spotCutoff"
.LASF82:
	.string	"_tex_env"
.LASF247:
	.string	"curmat"
.LASF44:
	.string	"begin"
.LASF93:
	.string	"mode"
.LASF271:
	.string	"_clearcolor"
.LASF154:
	.string	"defcolor"
.LASF88:
	.string	"maxlod"
.LASF63:
	.string	"GL_STATE_NONE"
.LASF109:
	.string	"gxObj"
.LASF26:
	.string	"_gx_litobj"
.LASF61:
	.string	"shininess"
.LASF112:
	.string	"max_level"
.LASF166:
	.string	"Alphabias"
.LASF228:
	.string	"_vertexelements"
.LASF36:
	.string	"GXColorf"
.LASF97:
	.string	"CargOp"
.LASF239:
	.string	"_cleardepth"
.LASF51:
	.string	"diffuse"
.LASF256:
	.string	"cur_state"
.LASF171:
	.string	"max_src"
.LASF223:
	.string	"_tempnormalelement"
.LASF3:
	.string	"signed char"
.LASF219:
	.string	"glDeleteTextures"
.LASF235:
	.string	"cur_tex_client"
.LASF226:
	.string	"vert"
.LASF17:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF274:
	.string	"fog_mode"
.LASF129:
	.string	"glSetScale"
.LASF183:
	.string	"glTexEnvfv"
.LASF94:
	.string	"comRGB"
.LASF276:
	.string	"fog_endz"
.LASF232:
	.string	"_type"
.LASF11:
	.string	"float"
.LASF37:
	.string	"_array"
.LASF207:
	.string	"internalFormat"
.LASF80:
	.string	"bias"
.LASF23:
	.string	"GXColor"
.LASF143:
	.string	"CorrectGLtype"
.LASF42:
	.string	"VertexArray"
.LASF264:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF272:
	.string	"Trans"
.LASF266:
	.string	"pack"
.LASF60:
	.string	"emissive"
.LASF213:
	.string	"base_width"
.LASF125:
	.string	"setMaxLod"
.LASF261:
	.string	"viewPort"
.LASF83:
	.string	"min_filter"
.LASF130:
	.string	"glTexEnvf"
.LASF240:
	.string	"model_stack"
.LASF268:
	.string	"color_write_mask"
.LASF184:
	.string	"glTexEnvi"
.LASF208:
	.string	"border"
.LASF38:
	.string	"enable"
.LASF279:
	.string	"glTexEnvs"
.LASF251:
	.string	"blend_type"
.LASF145:
	.string	"value"
.LASF220:
	.string	"glIsTexture"
.LASF116:
	.string	"used"
.LASF110:
	.string	"glFormat"
.LASF210:
	.string	"iFor"
.LASF278:
	.string	"fog_color"
.LASF108:
	.string	"target"
.LASF68:
	.string	"width"
.LASF172:
	.string	"GX_SetTevStage"
.LASF269:
	.string	"copy_mat_enabled"
.LASF234:
	.string	"cur_tex"
.LASF286:
	.string	"_wgpipe"
.LASF95:
	.string	"comAlpha"
.LASF18:
	.string	"_Bool"
.LASF186:
	.string	"activateTex"
.LASF259:
	.string	"scissor_test"
.LASF136:
	.string	"isUsed"
.LASF211:
	.string	"bytes"
.LASF147:
	.string	"glPixelStoref"
.LASF146:
	.string	"glPixelStorei"
.LASF265:
	.string	"point_size"
.LASF134:
	.string	"new_arr"
.LASF170:
	.string	"max_Asrc"
.LASF33:
	.string	"GLfloat"
.LASF270:
	.string	"copy_material"
.LASF179:
	.string	"glSetComAlpha"
.LASF137:
	.string	"texture"
.LASF65:
	.string	"GL_STATE_NEWLIST"
.LASF248:
	.string	"gxcullfaceanabled"
.LASF243:
	.string	"curmtx"
.LASF197:
	.string	"maxlod_in_tex"
.LASF153:
	.string	"texN"
.LASF50:
	.string	"ambient"
.LASF260:
	.string	"scissorInfo"
.LASF182:
	.string	"glTexEnviv"
.LASF249:
	.string	"gxwinding"
.LASF27:
	.string	"GXLightObj"
.LASF113:
	.string	"glTex"
.LASF195:
	.string	"texs"
.LASF123:
	.string	"GX_IncTexMap"
.LASF81:
	.string	"ColorTrans"
.LASF252:
	.string	"blend_src"
.LASF62:
	.string	"Material"
.LASF106:
	.string	"pixels"
.LASF238:
	.string	"depthfunction"
.LASF103:
	.string	"glTexEnvSet"
.LASF15:
	.string	"uint8_t"
.LASF104:
	.string	"_glTex"
.LASF241:
	.string	"projection_stack"
.LASF230:
	.string	"_colorelements"
.LASF71:
	.string	"swap"
.LASF19:
	.string	"guVector"
.LASF5:
	.string	"long long int"
.LASF150:
	.string	"_glGetSize"
.LASF198:
	.string	"convertInternalFormat"
.LASF263:
	.string	"normFar"
.LASF128:
	.string	"glSetSrc"
.LASF31:
	.string	"GLuint"
.LASF199:
	.string	"valid"
.LASF64:
	.string	"GL_STATE_BEGIN"
.LASF280:
	.string	"read_mode"
.LASF45:
	.string	"elem_size"
.LASF66:
	.string	"glState"
.LASF135:
	.string	"new_used"
.LASF55:
	.string	"constant"
.LASF273:
	.string	"fog_enable"
.LASF139:
	.string	"getTex"
.LASF169:
	.string	"max_Csrc"
.LASF21:
	.string	"_vecf"
.LASF34:
	.string	"VertexElement"
.LASF79:
	.string	"scale"
.LASF90:
	.string	"biasclamp"
.LASF157:
	.string	"GX_IncReg"
.LASF73:
	.string	"row_length"
.LASF237:
	.string	"depthupdate"
.LASF282:
	.string	"border_color"
.LASF163:
	.string	"nstages"
.LASF40:
	.string	"size"
.LASF58:
	.string	"LightObj"
.LASF127:
	.string	"param"
.LASF122:
	.string	"GX_IncTexCoord"
.LASF86:
	.string	"wrap_t"
.LASF190:
	.string	"glBindTexture"
.LASF253:
	.string	"blend_dst"
.LASF69:
	.string	"height"
.LASF224:
	.string	"_temptexcoordelement"
.LASF115:
	.string	"textures"
.LASF187:
	.string	"deleteTex"
.LASF175:
	.string	"glTexParameterfv"
.LASF244:
	.string	"cur_mode"
.LASF160:
	.string	"GX_IncAAReg"
.LASF194:
	.string	"GX_SetTextures"
.LASF212:
	.string	"base_height"
.LASF70:
	.string	"_pixelStore"
.LASF119:
	.string	"TextManager"
.LASF12:
	.string	"long double"
.LASF85:
	.string	"wrap_s"
.LASF185:
	.string	"initTextures"
.LASF192:
	.string	"_glGetEnableTex"
.LASF13:
	.string	"size_t"
.LASF225:
	.string	"norm"
.LASF267:
	.string	"unpack"
.LASF49:
	.string	"spotDir"
.LASF216:
	.string	"max_dim"
.LASF24:
	.string	"_gx_texobj"
.LASF155:
	.string	"defalpha"
.LASF53:
	.string	"spotExponent"
.LASF89:
	.string	"lodbias"
.LASF245:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF87:
	.string	"minlod"
.LASF84:
	.string	"max_filter"
.LASF9:
	.string	"long int"
.LASF217:
	.string	"glTexImage1D"
.LASF214:
	.string	"case1"
.LASF215:
	.string	"case2"
.LASF20:
	.string	"WGPipe"
.LASF28:
	.string	"GLenum"
.LASF209:
	.string	"powerOf2"
.LASF47:
	.string	"_light"
.LASF100:
	.string	"color"
.LASF32:
	.string	"GLsizei"
.LASF281:
	.string	"call_offset"
.LASF222:
	.string	"_tempcolorelement"
.LASF202:
	.string	"glTexSubImage2D"
.LASF75:
	.string	"skip_pixels"
.LASF98:
	.string	"Aarg"
.LASF92:
	.string	"maxaniso"
.LASF120:
	.string	"GL2GX_Wrap"
.LASF206:
	.string	"glTexImage2D"
.LASF0:
	.string	"unsigned int"
.LASF277:
	.string	"fog_density"
.LASF39:
	.string	"stride"
.LASF250:
	.string	"lighting"
.LASF161:
	.string	"GX_SetTevCombineStage"
.LASF178:
	.string	"glSetComRGB"
.LASF7:
	.string	"long unsigned int"
.LASF284:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_textures.c"
.LASF177:
	.string	"glSetAlphaOp"
.LASF254:
	.string	"blend_op"
.LASF151:
	.string	"glGetTexLevelParameteriv"
.LASF275:
	.string	"fog_startz"
.LASF16:
	.string	"int32_t"
.LASF77:
	.string	"pixelStore"
.LASF285:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF133:
	.string	"texMan"
.LASF205:
	.string	"correct_type"
.LASF158:
	.string	"GX_IncCCReg"
.LASF283:
	.string	"GNU C 4.6.3"
.LASF290:
	.string	"OffsetN"
.LASF152:
	.string	"GX_SetTevCIn"
.LASF168:
	.string	"Atex"
.LASF41:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF176:
	.string	"glSetRGBOp"
.LASF48:
	.string	"enabled"
.LASF144:
	.string	"IsPowerOfTwo"
.LASF74:
	.string	"skip_rows"
.LASF204:
	.string	"yoffset"
.LASF231:
	.string	"vert_i"
.LASF72:
	.string	"lsb_first"
.LASF102:
	.string	"alpha_scale"
.LASF124:
	.string	"setAniso"
.LASF114:
	.string	"_textMan"
.LASF174:
	.string	"glTexParameterf"
.LASF201:
	.string	"byte_size"
.LASF173:
	.string	"glTexParameteri"
.LASF258:
	.string	"fb_max_width"
.LASF56:
	.string	"linear"
.LASF189:
	.string	"glGenTextures"
.LASF262:
	.string	"normNear"
.LASF233:
	.string	"_GLtype"
.LASF236:
	.string	"depthtestenabled"
.LASF22:
	.string	"_gx_color"
.LASF126:
	.string	"glSetTexEnvMode"
.LASF91:
	.string	"edgelod"
.LASF165:
	.string	"RGBbias"
.LASF191:
	.string	"_glSetEnableTex"
.LASF164:
	.string	"RGBop"
.LASF159:
	.string	"GX_IncCAReg"
.LASF2:
	.string	"short unsigned int"
.LASF221:
	.string	"wgPipe"
.LASF10:
	.string	"double"
.LASF76:
	.string	"alignment"
.LASF35:
	.string	"TexCoordElement"
.LASF29:
	.string	"GLboolean"
.LASF101:
	.string	"rgb_scale"
.LASF200:
	.string	"GenArray"
.LASF138:
	.string	"getCur"
.LASF288:
	.string	"_glState"
.LASF180:
	.string	"_glTexEnvf"
.LASF181:
	.string	"_glTexEnvi"
.LASF167:
	.string	"Ctex"
.LASF131:
	.string	"pname"
.LASF140:
	.string	"dest"
.LASF255:
	.string	"cull_mode"
.LASF99:
	.string	"AargOp"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
