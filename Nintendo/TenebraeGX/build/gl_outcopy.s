	.file	"gl_outcopy.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	put_UBYTE, @function
put_UBYTE:
.LFB77:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_outcopy.c"
	.loc 1 145 0
	.cfi_startproc
.LVL0:
	.loc 1 147 0
	lis 9,.LC1@ha
	.loc 1 145 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.loc 1 147 0
	lfs 0,.LC1@l(9)
	addi 11,1,8
	lwz 9,0(3)
	fmul 0,1,0
.LVL1:
	addi 0,9,1
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 11,8(1)
	stb 11,0(9)
	stw 0,0(3)
	.loc 1 148 0
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE77:
	.size	put_UBYTE, .-put_UBYTE
	.align 2
	.type	put_BYTE, @function
put_BYTE:
.LFB78:
	.loc 1 150 0
	.cfi_startproc
.LVL2:
	.loc 1 152 0
	lis 9,.LC3@ha
	.loc 1 150 0
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	.loc 1 152 0
	lfs 0,.LC3@l(9)
	addi 11,1,8
	lwz 9,0(3)
	fmul 0,1,0
.LVL3:
	addi 0,9,1
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 11,8(1)
	stb 11,0(9)
	stw 0,0(3)
	.loc 1 153 0
	addi 1,1,16
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE78:
	.size	put_BYTE, .-put_BYTE
	.align 2
	.type	put_USHORT, @function
put_USHORT:
.LFB79:
	.loc 1 155 0
	.cfi_startproc
.LVL4:
	.loc 1 157 0
	lis 9,.LC4@ha
	.loc 1 155 0
	stwu 1,-16(1)
.LCFI4:
	.cfi_def_cfa_offset 16
	.loc 1 157 0
	lfs 0,.LC4@l(9)
	addi 11,1,8
	lwz 9,0(3)
	fmuls 0,1,0
.LVL5:
	addi 0,9,2
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 11,8(1)
	sth 11,0(9)
	.loc 1 158 0
	.loc 1 157 0
	stw 0,0(3)
	.loc 1 158 0
	addi 1,1,16
.LCFI5:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE79:
	.size	put_USHORT, .-put_USHORT
	.align 2
	.type	put_SHORT, @function
put_SHORT:
.LFB80:
	.loc 1 160 0
	.cfi_startproc
.LVL6:
	.loc 1 162 0
	lis 9,.LC5@ha
	.loc 1 160 0
	stwu 1,-16(1)
.LCFI6:
	.cfi_def_cfa_offset 16
	.loc 1 162 0
	lfs 0,.LC5@l(9)
	addi 11,1,8
	lwz 9,0(3)
	fmuls 0,1,0
.LVL7:
	addi 0,9,2
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 11,8(1)
	sth 11,0(9)
	.loc 1 163 0
	.loc 1 162 0
	stw 0,0(3)
	.loc 1 163 0
	addi 1,1,16
.LCFI7:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE80:
	.size	put_SHORT, .-put_SHORT
	.align 2
	.type	put_UINT, @function
put_UINT:
.LFB81:
	.loc 1 165 0
	.cfi_startproc
.LVL8:
	.loc 1 167 0
	lis 9,.LC6@ha
	.loc 1 165 0
	stwu 1,-16(1)
.LCFI8:
	.cfi_def_cfa_offset 16
	.loc 1 167 0
	lfs 0,.LC6@l(9)
	lis 9,.LC7@ha
	lfs 13,.LC7@l(9)
.LVL9:
	fmuls 0,1,0
	lwz 9,0(3)
	fcmpu 7,0,13
	cror 30,29,30
	beq- 7,.L6
	fctiwz 0,0
	stfiwx 0,0,9
	addi 9,9,4
	.loc 1 168 0
	.loc 1 167 0
	stw 9,0(3)
	.loc 1 168 0
	addi 1,1,16
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	blr
.L6:
.LCFI10:
	.cfi_restore_state
	.loc 1 167 0
	fsubs 0,0,13
	addi 11,1,8
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 11,8(1)
	addis 0,11,0x8000
	stw 0,0(9)
	addi 9,9,4
	.loc 1 168 0
	.loc 1 167 0
	stw 9,0(3)
	.loc 1 168 0
	addi 1,1,16
.LCFI11:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE81:
	.size	put_UINT, .-put_UINT
	.align 2
	.type	put_INT, @function
put_INT:
.LFB82:
	.loc 1 170 0
	.cfi_startproc
.LVL10:
	.loc 1 172 0
	lis 9,.LC7@ha
	lfs 0,.LC7@l(9)
	lwz 9,0(3)
	fmuls 0,1,0
	addi 0,9,4
	fctiwz 0,0
	stfiwx 0,0,9
	.loc 1 173 0
	.loc 1 172 0
	stw 0,0(3)
	.loc 1 173 0
	blr
	.cfi_endproc
.LFE82:
	.size	put_INT, .-put_INT
	.align 2
	.type	put_FLOAT, @function
put_FLOAT:
.LFB83:
	.loc 1 175 0
	.cfi_startproc
.LVL11:
	.loc 1 177 0
	lwz 9,0(3)
	addi 0,9,4
	stfs 1,0(9)
	stw 0,0(3)
	.loc 1 178 0
	blr
	.cfi_endproc
.LFE83:
	.size	put_FLOAT, .-put_FLOAT
	.align 2
	.type	write_rgb, @function
write_rgb:
.LFB93:
	.loc 1 224 0
	.cfi_startproc
.LVL12:
	mflr 0
	stwu 1,-192(1)
.LCFI12:
	.cfi_def_cfa_offset 192
	.cfi_register 65, 0
	.loc 1 225 0
	addis 9,4,0xffff
	.loc 1 224 0
	stfd 29,168(1)
	stw 0,196(1)
	.loc 1 225 0
	addi 0,9,32544
	.cfi_offset 65, 4
	.cfi_offset 61, -24
	cmplwi 7,0,1
	.loc 1 224 0
	stfd 30,176(1)
	stfd 31,184(1)
	stw 31,164(1)
	.loc 1 225 0
	bgt- 7,.L12
	.cfi_offset 31, -28
	.cfi_offset 63, -8
	.cfi_offset 62, -16
.LBB87:
	.loc 1 230 0
	lbz 9,0(6)
.LVL13:
	.loc 1 231 0
	lbz 0,2(6)
	.loc 1 232 0
	stb 9,2(6)
	.loc 1 231 0
	stb 0,0(6)
.LVL14:
.L12:
.LBE87:
	.loc 1 237 0
	xoris 0,5,0xffff
	cmpwi 7,0,-32716
	beq 7,.L24
	cmplwi 7,5,32820
	ble- 7,.L74
	xoris 0,5,0xffff
	cmpwi 7,0,-31900
	beq 7,.L29
	cmplwi 7,5,33636
	li 0,0
	ble- 7,.L75
	ori 0,0,33638
	cmpw 7,5,0
	beq- 7,.L31
	cmplwi 7,5,33638
	blt- 7,.L30
	xoris 0,5,0xffff
	cmpwi 7,0,-31897
	beq 7,.L32
	xoris 0,5,0xffff
	cmpwi 7,0,-31896
	bne 7,.L14
.LVL15:
.LBB88:
.LBB89:
	.loc 1 133 0
	lbz 9,2(6)
	.loc 1 123 0
	lis 0,0x4330
	.loc 1 133 0
	stw 0,64(1)
	.loc 1 123 0
	lis 10,.LC11@ha
	.loc 1 133 0
	xoris 9,9,0x8000
	.loc 1 123 0
	lfd 0,.LC11@l(10)
	.loc 1 133 0
	stw 9,68(1)
	.loc 1 123 0
	lis 9,.LC10@ha
	lfs 13,.LC10@l(9)
	.loc 1 139 0
	addi 10,1,136
	.loc 1 133 0
	lfd 11,64(1)
	.loc 1 123 0
	lbz 11,0(6)
	.loc 1 128 0
	lbz 9,1(6)
	.loc 1 133 0
	fsub 11,11,13
	.loc 1 123 0
	xoris 11,11,0x8000
	stw 0,48(1)
	.loc 1 128 0
	xoris 9,9,0x8000
	.loc 1 123 0
	stw 11,52(1)
	.loc 1 128 0
	stw 9,60(1)
	.loc 1 133 0
	fmul 11,11,0
	.loc 1 128 0
	stw 0,56(1)
	.loc 1 123 0
	addi 9,1,128
	lfd 12,48(1)
	.loc 1 128 0
	lfd 10,56(1)
	.loc 1 123 0
	fsub 12,12,13
	.loc 1 139 0
	fctiwz 11,11
	.loc 1 128 0
	fsub 13,10,13
	.loc 1 123 0
	fmul 12,12,0
	.loc 1 139 0
	stfiwx 11,0,10
	.loc 1 128 0
	addi 10,1,132
	fmul 0,13,0
	.loc 1 139 0
	lwz 11,136(1)
	.loc 1 123 0
	fctiwz 12,12
	.loc 1 139 0
	rlwinm 0,11,0,0xffff
	.loc 1 128 0
	fctiwz 0,0
	.loc 1 139 0
	cmplwi 7,0,1023
	.loc 1 123 0
	stfiwx 12,0,9
	.loc 1 128 0
	stfiwx 0,0,10
	.loc 1 123 0
	lwz 0,128(1)
.LVL16:
	.loc 1 128 0
	lwz 9,132(1)
.LVL17:
	.loc 1 139 0
	ble- 7,.L42
.LVL18:
	li 11,1023
.LVL19:
.L42:
	rlwinm 10,9,0,0xffff
	slwi 11,11,20
	cmplwi 7,10,1023
	ble- 7,.L43
	li 9,1023
.LVL20:
.L43:
	rlwinm 10,0,0,0xffff
.LVL21:
	rlwinm 9,9,10,6,21
	cmplwi 7,10,1023
	or 9,11,9
	ble- 7,.L44
	li 0,1023
.LVL22:
.L44:
	rlwinm 0,0,0,0xffff
	or 0,9,0
	stw 0,0(3)
	b .L11
.LVL23:
.L74:
.LBE89:
.LBE88:
	.loc 1 237 0
	cmpwi 7,5,5124
	beq- 7,.L19
	cmplwi 7,5,5124
	ble- 7,.L76
	cmpwi 7,5,5126
	beq- 7,.L21
	cmplwi 7,5,5126
	bge- 7,.L77
.LVL24:
	.loc 1 300 0
	lis 9,put_UINT@ha
	la 9,put_UINT@l(9)
	stw 9,152(1)
.LVL25:
.L15:
	.loc 1 318 0
	lbz 9,0(6)
	.loc 1 319 0
	lis 0,0x4330
	.loc 1 318 0
	stw 0,96(1)
.LBB90:
.LBB91:
.LBB92:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/glint.h"
	.loc 2 365 0
	lis 11,Trans@ha
.LBE92:
.LBE91:
.LBE90:
	.loc 1 318 0
	xoris 9,9,0x8000
	.loc 2 365 0
	lfs 11,Trans@l(11)
	.loc 1 318 0
	stw 9,100(1)
	.loc 1 319 0
	lis 9,.LC10@ha
	lfs 13,.LC10@l(9)
	lis 9,.LC1@ha
	.loc 1 318 0
	lfd 1,96(1)
	.loc 1 319 0
	lfs 0,.LC1@l(9)
	.loc 1 318 0
	fsub 1,1,13
	.loc 1 319 0
	lbz 8,1(6)
	.loc 1 320 0
	lbz 10,2(6)
	.loc 1 321 0
	lbz 9,3(6)
	.loc 1 319 0
	xoris 8,8,0x8000
	.loc 1 318 0
	frsp 1,1
	.loc 1 320 0
	xoris 10,10,0x8000
	.loc 1 321 0
	xoris 9,9,0x8000
	.loc 1 319 0
	stw 8,76(1)
	.loc 1 321 0
	stw 9,92(1)
.LBB135:
.LBB100:
.LBB93:
	.loc 2 365 0
	la 9,Trans@l(11)
.LBE93:
.LBE100:
.LBE135:
	.loc 1 318 0
	fdivs 1,1,0
	.loc 1 319 0
	stw 0,72(1)
	.loc 1 320 0
	stw 10,84(1)
.LBB136:
.LBB101:
.LBB94:
	.loc 2 367 0
	lis 11,.LC8@ha
.LBE94:
.LBE101:
.LBE136:
	.loc 1 320 0
	stw 0,80(1)
	.loc 1 321 0
	stw 0,88(1)
	.loc 1 319 0
	lfd 30,72(1)
	.loc 2 365 0
	lfs 12,4(9)
	.loc 1 320 0
	lfd 31,80(1)
	.loc 1 321 0
	lfd 29,88(1)
	.loc 2 365 0
	fmadds 1,1,11,12
.LBB137:
.LBB102:
.LBB95:
	.loc 2 367 0
	lfs 12,.LC8@l(11)
.LBE95:
.LBE102:
.LBE137:
	.loc 1 319 0
	fsub 30,30,13
	.loc 1 320 0
	fsub 31,31,13
	.loc 1 321 0
	fsub 13,29,13
.LBB138:
.LBB103:
.LBB96:
	.loc 2 367 0
	fcmpu 7,1,12
.LBE96:
.LBE103:
.LBE138:
	.loc 1 319 0
	frsp 30,30
	.loc 1 320 0
	frsp 31,31
	.loc 1 321 0
	frsp 13,13
	.loc 1 319 0
	fdivs 30,30,0
.LVL26:
	.loc 1 320 0
	fdivs 31,31,0
.LVL27:
	.loc 1 321 0
	fdivs 0,13,0
.LVL28:
.LBB139:
.LBB104:
.LBB97:
	.loc 2 367 0
	bgt- 7,.L62
	.loc 2 369 0
	lis 10,.LC17@ha
	lfs 13,.LC17@l(10)
	fcmpu 7,1,13
	bnl- 7,.L45
	.loc 2 370 0
	fmr 1,13
.LVL29:
.L45:
	.loc 2 365 0
	lfs 11,8(9)
	lfs 13,12(9)
.LBE97:
.LBE104:
.LBB105:
.LBB106:
	.loc 2 367 0
	lfs 12,.LC8@l(11)
.LBE106:
.LBE105:
.LBB110:
.LBB98:
	.loc 2 365 0
	fmadds 30,30,11,13
.LVL30:
.LBE98:
.LBE110:
.LBB111:
.LBB107:
	.loc 2 367 0
	fcmpu 7,30,12
	bgt- 7,.L64
	.loc 2 369 0
	lis 10,.LC17@ha
	lfs 13,.LC17@l(10)
	fcmpu 7,30,13
	bnl- 7,.L46
	.loc 2 370 0
	fmr 30,13
.LVL31:
.L46:
	.loc 2 365 0
	lfs 11,16(9)
	lfs 13,20(9)
.LBE107:
.LBE111:
.LBB112:
.LBB113:
	.loc 2 367 0
	lfs 12,.LC8@l(11)
.LBE113:
.LBE112:
.LBB118:
.LBB108:
	.loc 2 365 0
	fmadds 31,31,11,13
.LVL32:
.LBE108:
.LBE118:
.LBB119:
.LBB114:
	.loc 2 367 0
	fcmpu 7,31,12
	bgt- 7,.L66
	.loc 2 369 0
	lis 10,.LC17@ha
	lfs 13,.LC17@l(10)
	fcmpu 7,31,13
	bnl- 7,.L47
	.loc 2 370 0
	fmr 31,13
.LVL33:
.L47:
	.loc 2 365 0
	lfs 29,24(9)
	lfs 13,28(9)
.LBE114:
.LBE119:
.LBB120:
.LBB121:
	.loc 2 367 0
	lfs 12,.LC8@l(11)
.LBE121:
.LBE120:
.LBB126:
.LBB115:
	.loc 2 365 0
	fmadds 29,0,29,13
.LVL34:
.LBE115:
.LBE126:
.LBB127:
.LBB122:
	.loc 2 367 0
	fcmpu 7,29,12
	bgt- 7,.L68
.L80:
	.loc 2 369 0
	lis 9,.LC17@ha
	lfs 0,.LC17@l(9)
	fcmpu 7,29,0
	bnl- 7,.L48
	.loc 2 370 0
	fmr 29,0
.LVL35:
.L48:
.LBE122:
.LBE127:
.LBE139:
	.loc 1 325 0
	cmpwi 7,4,6407
	beq- 7,.L54
.L81:
	cmplwi 7,4,6407
	bgt- 7,.L58
	cmpwi 7,4,6404
	beq- 7,.L51
	cmplwi 7,4,6404
	ble- 7,.L78
	cmpwi 7,4,6405
	beq- 7,.L52
	cmpwi 7,4,6406
	bne+ 7,.L49
.LBB140:
.LBB141:
	.loc 1 190 0
	mr 9,1
.LBE141:
.LBE140:
.LBB145:
.LBB146:
	.loc 1 194 0
	lwz 0,152(1)
.LBE146:
.LBE145:
.LBB150:
.LBB142:
	.loc 1 190 0
	stwu 3,8(9)
.LVL36:
.LBE142:
.LBE150:
.LBB151:
.LBB147:
	.loc 1 194 0
	fmr 1,29
.LVL37:
	mtctr 0
	mr 3,9
.LVL38:
	bctrl
.LVL39:
	b .L11
.LVL40:
.L75:
.LBE147:
.LBE151:
	.loc 1 237 0
	ori 0,0,32822
	cmpw 7,5,0
	beq- 7,.L26
	cmplwi 7,5,32822
	blt- 7,.L25
	xoris 0,5,0xffff
	cmpwi 7,0,-31902
	beq 7,.L27
	xoris 0,5,0xffff
	cmpwi 7,0,-31901
	bne 7,.L14
.LVL41:
.LBB152:
.LBB153:
	.loc 1 48 0
	lbz 11,0(6)
	lbz 9,1(6)
	lbz 0,2(6)
	b .L70
.LVL42:
.L76:
.LBE153:
.LBE152:
	.loc 1 237 0
	cmpwi 7,5,5121
	beq- 7,.L16
	cmplwi 7,5,5121
	ble- 7,.L79
	cmpwi 7,5,5122
	beq- 7,.L17
	cmpwi 7,5,5123
	bne+ 7,.L14
.LVL43:
	.loc 1 294 0
	lis 9,put_USHORT@ha
	la 9,put_USHORT@l(9)
	stw 9,152(1)
	.loc 1 295 0
	b .L15
.LVL44:
.L30:
.LBB154:
.LBB155:
	.loc 1 66 0
	lbz 10,0(6)
	lbz 11,1(6)
	lbz 9,3(6)
	lbz 0,2(6)
.LVL45:
.L71:
	srwi 10,10,4
	rlwinm 11,11,0,24,27
	or 11,10,11
	rlwinm 9,9,8,16,19
	or 9,11,9
	rlwinm 0,0,4,20,23
	or 0,9,0
	sth 0,0(3)
.LVL46:
.L11:
.LBE155:
.LBE154:
	.loc 1 360 0
	lwz 0,196(1)
	lwz 31,164(1)
	mtlr 0
	lfd 29,168(1)
	lfd 30,176(1)
	lfd 31,184(1)
	addi 1,1,192
	.cfi_remember_state
.LCFI13:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	blr
.LVL47:
.L25:
.LCFI14:
	.cfi_restore_state
.LBB156:
.LBB157:
	.loc 1 84 0
	lbz 10,0(6)
	lbz 9,1(6)
	lbz 11,3(6)
	lbz 0,2(6)
.LVL48:
.L72:
.LBE157:
.LBE156:
.LBB158:
.LBB159:
	.loc 1 90 0
	slwi 10,10,24
	slwi 9,9,16
	or 9,10,9
	slwi 0,0,8
	or 9,9,11
.LBE159:
.LBE158:
	.loc 1 360 0
	lwz 31,164(1)
.LBB163:
.LBB160:
	.loc 1 90 0
	or 0,9,0
.LBE160:
.LBE163:
	.loc 1 360 0
	lfd 29,168(1)
.LBB164:
.LBB161:
	.loc 1 90 0
	stw 0,0(3)
.LBE161:
.LBE164:
	.loc 1 360 0
	lwz 0,196(1)
	lfd 30,176(1)
	mtlr 0
	lfd 31,184(1)
	addi 1,1,192
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI15:
	.cfi_def_cfa_offset 0
	blr
.LVL49:
.L66:
.LCFI16:
	.cfi_restore_state
.LBB165:
.LBB128:
.LBB116:
	.loc 2 365 0
	lfs 29,24(9)
	.loc 2 368 0
	fmr 31,12
.LVL50:
	.loc 2 365 0
	lfs 13,28(9)
.LBE116:
.LBE128:
.LBB129:
.LBB123:
	.loc 2 367 0
	lfs 12,.LC8@l(11)
.LBE123:
.LBE129:
.LBB130:
.LBB117:
	.loc 2 365 0
	fmadds 29,0,29,13
.LVL51:
.LBE117:
.LBE130:
.LBB131:
.LBB124:
	.loc 2 367 0
	fcmpu 7,29,12
	bng- 7,.L80
.LVL52:
.L68:
.LBE124:
.LBE131:
.LBE165:
	.loc 1 325 0
	cmpwi 7,4,6407
.LBB166:
.LBB132:
.LBB125:
	.loc 2 368 0
	fmr 29,12
.LVL53:
.LBE125:
.LBE132:
.LBE166:
	.loc 1 325 0
	bne+ 7,.L81
.LVL54:
.L54:
.LBB167:
.LBB148:
	.loc 1 194 0
	mr 31,1
.LBE148:
.LBE167:
.LBB168:
.LBB169:
	.loc 1 198 0
	lwz 0,152(1)
.LBE169:
.LBE168:
.LBB173:
.LBB149:
	.loc 1 194 0
	stwu 3,8(31)
.LVL55:
.LBE149:
.LBE173:
.LBB174:
.LBB170:
	.loc 1 198 0
	mtctr 0
	mr 3,31
.LVL56:
	bctrl
.LVL57:
	.loc 1 199 0
	lwz 0,152(1)
	mr 3,31
	fmr 1,30
	mtctr 0
	bctrl
	.loc 1 200 0
	lwz 0,152(1)
	mr 3,31
	fmr 1,31
	mtctr 0
	bctrl
	b .L11
.LVL58:
.L64:
.LBE170:
.LBE174:
.LBB175:
.LBB133:
.LBB109:
	.loc 2 368 0
	fmr 30,12
.LVL59:
	b .L46
.LVL60:
.L62:
.LBE109:
.LBE133:
.LBB134:
.LBB99:
	fmr 1,12
.LVL61:
	b .L45
.LVL62:
.L58:
.LBE99:
.LBE134:
.LBE175:
	.loc 1 325 0
	cmpwi 7,4,6410
	beq- 7,.L57
	cmplwi 7,4,6410
	ble- 7,.L82
	xoris 0,4,0xffff
	cmpwi 7,0,-32544
	beq 7,.L54
	xoris 0,4,0xffff
	cmpwi 7,0,-32543
	bne 7,.L49
.L55:
.LBB176:
.LBB171:
	.loc 1 200 0
	mr 31,1
.LBE171:
.LBE176:
.LBB177:
.LBB178:
	.loc 1 204 0
	lwz 0,152(1)
.LBE178:
.LBE177:
.LBB181:
.LBB172:
	.loc 1 200 0
	stwu 3,8(31)
.LVL63:
.LBE172:
.LBE181:
.LBB182:
.LBB179:
	.loc 1 204 0
	mtctr 0
	mr 3,31
.LVL64:
	bctrl
.LVL65:
	.loc 1 205 0
	lwz 0,152(1)
	mr 3,31
	fmr 1,30
	mtctr 0
	bctrl
	.loc 1 206 0
	lwz 0,152(1)
	mr 3,31
	fmr 1,31
	mtctr 0
	bctrl
	.loc 1 207 0
	lwz 0,152(1)
	mr 3,31
	fmr 1,29
	mtctr 0
	bctrl
	b .L11
.LVL66:
.L31:
.LBE179:
.LBE182:
.LBB183:
.LBB184:
	.loc 1 78 0
	lbz 10,3(6)
	lbz 11,2(6)
	lbz 9,0(6)
	rlwinm 10,10,8,16,16
	lbz 0,1(6)
	rlwinm 11,11,7,17,21
	or 11,10,11
	srwi 9,9,3
	or 9,11,9
	rlwinm 0,0,2,22,26
	or 0,9,0
	sth 0,0(3)
	b .L11
.LVL67:
.L19:
.LBE184:
.LBE183:
	.loc 1 303 0
	lis 9,put_INT@ha
	la 9,put_INT@l(9)
	stw 9,152(1)
	.loc 1 304 0
	b .L15
.LVL68:
.L24:
.LBB185:
.LBB186:
	.loc 1 72 0
	lbz 10,0(6)
	lbz 11,1(6)
	lbz 9,3(6)
	rlwinm 10,10,8,16,20
	lbz 0,2(6)
	rlwinm 11,11,3,21,25
	or 11,10,11
	srwi 9,9,7
	or 9,11,9
	rlwinm 0,0,30,26,30
	or 0,9,0
	sth 0,0(3)
	b .L11
.LVL69:
.L26:
.LBE186:
.LBE185:
.LBB187:
.LBB188:
	.loc 1 100 0
	lbz 9,0(6)
	lis 0,0x4330
	stw 0,24(1)
	lis 10,.LC11@ha
	xoris 9,9,0x8000
	lfd 0,.LC11@l(10)
	stw 9,28(1)
	lis 9,.LC10@ha
	lfs 13,.LC10@l(9)
	.loc 1 105 0
	addi 10,1,140
	.loc 1 100 0
	lfd 11,24(1)
	.loc 1 105 0
	lbz 11,1(6)
	.loc 1 110 0
	lbz 9,2(6)
	.loc 1 100 0
	fsub 11,11,13
	.loc 1 105 0
	xoris 11,11,0x8000
	stw 0,32(1)
	.loc 1 110 0
	xoris 9,9,0x8000
	.loc 1 105 0
	stw 11,36(1)
	.loc 1 110 0
	stw 9,44(1)
	.loc 1 100 0
	fmul 11,11,0
.LVL70:
	.loc 1 110 0
	stw 0,40(1)
	.loc 1 116 0
	addi 9,1,148
	.loc 1 105 0
	lfd 12,32(1)
	.loc 1 110 0
	lfd 10,40(1)
	.loc 1 105 0
	fsub 12,12,13
	.loc 1 116 0
	fctiwz 11,11
.LVL71:
	.loc 1 110 0
	fsub 13,10,13
	.loc 1 105 0
	fmul 12,12,0
	.loc 1 116 0
	stfiwx 11,0,9
	.loc 1 110 0
	addi 9,1,144
	fmul 0,13,0
	.loc 1 116 0
	lwz 11,148(1)
	.loc 1 105 0
	fctiwz 12,12
	.loc 1 116 0
	rlwinm 0,11,0,0xffff
	.loc 1 110 0
	fctiwz 0,0
	.loc 1 116 0
	cmplwi 7,0,1023
	.loc 1 105 0
	stfiwx 12,0,10
	.loc 1 110 0
	stfiwx 0,0,9
	.loc 1 105 0
	lwz 9,140(1)
.LVL72:
	.loc 1 110 0
	lwz 0,144(1)
.LVL73:
	.loc 1 116 0
	bgt- 7,.L83
.L39:
	rlwinm 10,9,0,0xffff
	slwi 11,11,22
	cmplwi 7,10,1023
	bgt- 7,.L84
.LVL74:
.L40:
	rlwinm 10,0,0,0xffff
.LVL75:
	rlwinm 9,9,12,4,19
	cmplwi 7,10,1023
	lbz 10,3(6)
	or 9,11,9
	srwi 10,10,6
	or 9,9,10
	bgt- 7,.L85
.LVL76:
.L41:
	rlwinm 0,0,2,14,29
	or 0,9,0
	stw 0,0(3)
	b .L11
.LVL77:
.L21:
.LBE188:
.LBE187:
	.loc 1 306 0
	lis 9,put_FLOAT@ha
	la 9,put_FLOAT@l(9)
	stw 9,152(1)
	.loc 1 307 0
	b .L15
.LVL78:
.L29:
.LBB190:
.LBB191:
	.loc 1 54 0
	lbz 11,2(6)
	lbz 9,1(6)
	lbz 0,0(6)
.LVL79:
.L70:
	rlwinm 11,11,8,16,20
	rlwinm 9,9,3,21,26
	or 9,11,9
	srwi 0,0,3
	or 0,9,0
.LBE191:
.LBE190:
	.loc 1 360 0
	lwz 31,164(1)
.LBB193:
.LBB192:
	.loc 1 54 0
	sth 0,0(3)
.LBE192:
.LBE193:
	.loc 1 360 0
	lwz 0,196(1)
	lfd 29,168(1)
	mtlr 0
	lfd 30,176(1)
	lfd 31,184(1)
	addi 1,1,192
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI17:
	.cfi_def_cfa_offset 0
	blr
.L16:
.LCFI18:
	.cfi_restore_state
	.loc 1 288 0
	lis 9,put_UBYTE@ha
	la 9,put_UBYTE@l(9)
	stw 9,152(1)
	b .L15
.L77:
	.loc 1 237 0
	xoris 0,5,0xffff
	cmpwi 7,0,-32718
	beq 7,.L22
	xoris 0,5,0xffff
	cmpwi 7,0,-32717
	beq 7,.L86
.L14:
	.loc 1 310 0
	lis 3,.LC12@ha
.LVL80:
	li 4,310
.LVL81:
	la 3,.LC12@l(3)
.LVL82:
.L73:
	.loc 1 357 0
	lis 5,.LANCHOR0@ha
.LVL83:
	lis 6,.LC13@ha
.LVL84:
	la 5,.LANCHOR0@l(5)
	la 6,.LC13@l(6)
	bl __assert_func
.LVL85:
.L79:
	.loc 1 237 0
	cmpwi 7,5,5120
	bne+ 7,.L14
	.loc 1 291 0
	lis 9,put_BYTE@ha
	la 9,put_BYTE@l(9)
	stw 9,152(1)
	b .L15
.LVL86:
.L82:
	.loc 1 325 0
	cmpwi 7,4,6408
	beq- 7,.L55
	cmpwi 7,4,6409
	beq- 7,.L87
.L49:
	.loc 1 357 0
	lis 3,.LC12@ha
.LVL87:
	li 4,357
.LVL88:
	la 3,.LC12@l(3)
	b .L73
.LVL89:
.L78:
	.loc 1 325 0
	cmpwi 7,4,6403
	bne+ 7,.L49
	mr 9,1
.LBB194:
.LBB195:
	.loc 1 182 0
	lwz 0,152(1)
.LBE195:
.LBE194:
	.loc 1 325 0
	stwu 3,8(9)
.LVL90:
.LBB199:
.LBB196:
	.loc 1 182 0
	mtctr 0
	mr 3,9
.LVL91:
	bctrl
.LVL92:
	b .L11
.LVL93:
.L85:
.LBE196:
.LBE199:
.LBB200:
.LBB189:
	.loc 1 116 0
	li 0,1023
.LVL94:
	b .L41
.LVL95:
.L84:
	li 9,1023
.LVL96:
	b .L40
.LVL97:
.L83:
	li 11,1023
	b .L39
.LVL98:
.L27:
.LBE189:
.LBE200:
.LBB201:
.LBB202:
	.loc 1 42 0
	lbz 11,0(6)
	lbz 9,2(6)
	lbz 0,1(6)
	srwi 11,11,5
	rlwinm 9,9,0,0,25
	or 9,11,9
	rlwinm 0,0,2,22,24
	or 0,9,0
	stb 0,0(3)
	b .L11
.LVL99:
.L32:
.LBE202:
.LBE201:
.LBB203:
.LBB162:
	.loc 1 90 0
	lbz 10,3(6)
	lbz 9,2(6)
	lbz 11,0(6)
	lbz 0,1(6)
	b .L72
.LVL100:
.L17:
.LBE162:
.LBE203:
	.loc 1 297 0
	lis 9,put_SHORT@ha
	la 9,put_SHORT@l(9)
	stw 9,152(1)
	.loc 1 298 0
	b .L15
.LVL101:
.L86:
.LBB204:
.LBB205:
	.loc 1 60 0
	lbz 10,3(6)
	lbz 11,2(6)
	lbz 9,0(6)
	lbz 0,1(6)
	b .L71
.LVL102:
.L22:
.LBE205:
.LBE204:
.LBB206:
.LBB207:
	.loc 1 36 0
	lbz 11,2(6)
	lbz 9,0(6)
	lbz 0,1(6)
	srwi 11,11,6
	rlwinm 9,9,0,0,26
	or 9,11,9
	rlwinm 0,0,29,27,29
	or 0,9,0
	stb 0,0(3)
	b .L11
.LVL103:
.L57:
.LBE207:
.LBE206:
.LBB208:
.LBB209:
.LBB210:
.LBB211:
	.loc 1 211 0
	fadds 1,30,1
.LVL104:
	lis 9,.LC14@ha
	lfs 0,.LC14@l(9)
.LBE211:
.LBE210:
	.loc 1 219 0
	lis 0,0x4330
.LBB216:
.LBB212:
	.loc 1 211 0
	addi 9,1,120
.LBE212:
.LBE216:
	.loc 1 219 0
	stw 0,112(1)
.LBB217:
.LBB213:
	.loc 1 211 0
	fadds 31,1,31
.LVL105:
.LBE213:
.LBE217:
.LBE209:
.LBE208:
.LBB221:
.LBB222:
	.loc 1 215 0
	stw 3,8(1)
.LVL106:
.LBE222:
.LBE221:
.LBB235:
.LBB220:
	.loc 1 219 0
	addi 3,1,8
.LVL107:
.LBB218:
.LBB214:
	.loc 1 211 0
	fdivs 0,31,0
	fctiwz 0,0
	stfiwx 0,0,9
.LBE214:
.LBE218:
	.loc 1 219 0
	lis 9,.LC16@ha
	lfs 0,.LC16@l(9)
.LBB219:
.LBB215:
	.loc 1 211 0
	lwz 0,120(1)
.LBE215:
.LBE219:
	.loc 1 219 0
	rlwinm 0,0,0,0xff
	stw 0,116(1)
	lwz 0,152(1)
	lfd 1,112(1)
	mtctr 0
	fsub 1,1,0
	frsp 1,1
	bctrl
.LVL108:
	.loc 1 220 0
	lwz 0,152(1)
	addi 3,1,8
	fmr 1,29
	mtctr 0
	bctrl
	b .L11
.LVL109:
.L52:
.LBE220:
.LBE235:
.LBB236:
.LBB237:
	.loc 1 186 0
	mr 9,1
.LBE237:
.LBE236:
.LBB241:
.LBB143:
	.loc 1 190 0
	lwz 0,152(1)
.LBE143:
.LBE241:
.LBB242:
.LBB238:
	.loc 1 186 0
	stwu 3,8(9)
.LVL110:
.LBE238:
.LBE242:
.LBB243:
.LBB144:
	.loc 1 190 0
	fmr 1,31
.LVL111:
	mtctr 0
	mr 3,9
.LVL112:
	bctrl
.LVL113:
	b .L11
.LVL114:
.L87:
.LBE144:
.LBE243:
.LBB244:
.LBB233:
.LBB223:
.LBB224:
	.loc 1 211 0
	fadds 1,30,1
.LVL115:
	lis 9,.LC14@ha
	lfs 0,.LC14@l(9)
.LBE224:
.LBE223:
	.loc 1 215 0
	lis 0,0x4330
.LBB229:
.LBB225:
	.loc 1 211 0
	addi 9,1,124
.LBE225:
.LBE229:
	.loc 1 215 0
	stw 0,104(1)
.LBB230:
.LBB226:
	.loc 1 211 0
	fadds 31,1,31
.LVL116:
.LBE226:
.LBE230:
.LBE233:
.LBE244:
.LBB245:
.LBB180:
	.loc 1 207 0
	stw 3,8(1)
.LVL117:
.LBE180:
.LBE245:
.LBB246:
.LBB234:
	.loc 1 215 0
	addi 3,1,8
.LVL118:
.LBB231:
.LBB227:
	.loc 1 211 0
	fdivs 0,31,0
	fctiwz 0,0
	stfiwx 0,0,9
.LBE227:
.LBE231:
	.loc 1 215 0
	lis 9,.LC16@ha
	lfs 0,.LC16@l(9)
.LBB232:
.LBB228:
	.loc 1 211 0
	lwz 0,124(1)
.LBE228:
.LBE232:
	.loc 1 215 0
	rlwinm 0,0,0,0xff
	stw 0,108(1)
	lwz 0,152(1)
	lfd 1,104(1)
	mtctr 0
	fsub 1,1,0
	frsp 1,1
	bctrl
.LVL119:
	b .L11
.LVL120:
.L51:
.LBE234:
.LBE246:
.LBB247:
.LBB197:
	.loc 1 182 0
	mr 9,1
.LBE197:
.LBE247:
.LBB248:
.LBB239:
	.loc 1 186 0
	lwz 0,152(1)
.LBE239:
.LBE248:
.LBB249:
.LBB198:
	.loc 1 182 0
	stwu 3,8(9)
.LVL121:
.LBE198:
.LBE249:
.LBB250:
.LBB240:
	.loc 1 186 0
	fmr 1,30
.LVL122:
	mtctr 0
	mr 3,9
.LVL123:
	bctrl
.LVL124:
	b .L11
.LBE240:
.LBE250:
	.cfi_endproc
.LFE93:
	.size	write_rgb, .-write_rgb
	.align 2
	.globl glReadBuffer
	.type	glReadBuffer, @function
glReadBuffer:
.LFB64:
	.loc 1 6 0
	.cfi_startproc
.LVL125:
	mflr 0
	stwu 1,-8(1)
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 7 0
	lis 9,cur_state@ha
	.loc 1 6 0
	stw 0,12(1)
	.loc 1 7 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L94
	.loc 1 9 0
	addi 3,3,-1024
.LVL126:
	cmplwi 7,3,6
	ble- 7,.L95
.LVL127:
.L91:
	.loc 1 21 0
	lis 4,.LC12@ha
	li 3,1282
	la 4,.LC12@l(4)
	li 5,21
	bl _glSetErrorEx
	.loc 1 24 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI20:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL128:
.L95:
.LCFI21:
	.cfi_restore_state
	.loc 1 9 0
	li 0,1
	slw 3,0,3
.LVL129:
	andi. 0,3,81
	bne- 0,.L92
	andi. 9,3,36
	beq- 0,.L91
	.loc 1 18 0
	li 0,1029
	lis 9,read_mode@ha
	stw 0,read_mode@l(9)
	.loc 1 24 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI22:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L92:
.LCFI23:
	.cfi_restore_state
	.loc 1 14 0
	li 0,1028
	lis 9,read_mode@ha
	stw 0,read_mode@l(9)
	.loc 1 24 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI24:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL130:
.L94:
.LCFI25:
	.cfi_restore_state
	.loc 1 7 0 discriminator 1
	lis 4,.LC12@ha
	li 3,1282
.LVL131:
	la 4,.LC12@l(4)
	li 5,7
	bl _glSetErrorEx
	.loc 1 24 0 discriminator 1
	lwz 0,12(1)
	addi 1,1,8
.LCFI26:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE64:
	.size	glReadBuffer, .-glReadBuffer
	.align 2
	.globl glReadPixels
	.type	glReadPixels, @function
glReadPixels:
.LFB96:
	.loc 1 389 0
	.cfi_startproc
.LVL132:
	mflr 0
	stwu 1,-176(1)
.LCFI27:
	.cfi_def_cfa_offset 176
	.cfi_register 65, 0
	.loc 1 390 0
	lis 11,cur_state@ha
	.loc 1 389 0
	mfcr 12
	stw 14,104(1)
	mr 14,9
	.cfi_offset 14, -72
	.cfi_register 70, 12
	stw 0,180(1)
	.loc 1 390 0
	lwz 0,cur_state@l(11)
	.cfi_offset 65, 4
	.loc 1 389 0
	stw 17,116(1)
	mr 17,7
	.cfi_offset 17, -60
	.loc 1 390 0
	andi. 11,0,1
	.loc 1 389 0
	stw 18,120(1)
	stw 19,124(1)
	mr 18,8
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	stw 22,136(1)
	mr 19,6
	stw 24,144(1)
	mr 22,4
	.cfi_offset 24, -32
	.cfi_offset 22, -40
	stw 27,156(1)
	mr 24,5
	stw 15,108(1)
	mr 27,3
	.cfi_offset 15, -68
	.cfi_offset 27, -20
	stw 16,112(1)
	stw 20,128(1)
	stw 21,132(1)
	stw 23,140(1)
	stw 25,148(1)
	stw 26,152(1)
	stw 28,160(1)
	stw 29,164(1)
	stw 30,168(1)
	stw 31,172(1)
	stw 12,100(1)
	.loc 1 390 0
	bne- 0,.L141
	.cfi_offset 70, -76
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 23, -36
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 16, -64
	.loc 1 392 0
	cmpwi 7,5,0
	blt- 7,.L99
	.loc 1 392 0 is_stmt 0 discriminator 1
	cmpwi 7,6,0
	blt- 7,.L99
	.loc 1 399 0 is_stmt 1
	cmplwi 7,7,6403
	bge- 7,.L142
.LVL133:
.L101:
	.loc 1 416 0
	lis 4,.LC12@ha
.LVL134:
	li 3,1280
.LVL135:
	la 4,.LC12@l(4)
	li 5,416
.LVL136:
	bl _glSetErrorEx
.LVL137:
.L96:
	.loc 1 518 0
	lwz 0,180(1)
.LVL138:
	lwz 12,100(1)
	mtlr 0
	lwz 14,104(1)
.LVL139:
	lwz 15,108(1)
	mtcrf 8,12
	lwz 16,112(1)
	lwz 17,116(1)
	lwz 18,120(1)
	lwz 19,124(1)
	lwz 20,128(1)
	lwz 21,132(1)
	lwz 22,136(1)
.LVL140:
	lwz 23,140(1)
	lwz 24,144(1)
.LVL141:
	lwz 25,148(1)
	lwz 26,152(1)
	lwz 27,156(1)
.LVL142:
	lwz 28,160(1)
	lwz 29,164(1)
	lwz 30,168(1)
	lwz 31,172(1)
	addi 1,1,176
	.cfi_remember_state
.LCFI28:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL143:
.L142:
.LCFI29:
	.cfi_restore_state
	.loc 1 399 0
	cmplwi 7,7,6410
	bgt- 7,.L143
.LVL144:
.L102:
	.loc 1 422 0
	cmplwi 7,18,32822
	bgt- 7,.L105
	cmplwi 7,18,32818
	blt- 7,.L144
.L104:
.LVL145:
	.loc 1 453 0
	lis 9,read_mode@ha
	lwz 0,read_mode@l(9)
	cmpwi 7,0,1028
	beq- 7,.L107
.L147:
	cmpwi 7,0,1029
	bne+ 7,.L96
	.loc 1 461 0
	bl getBackFramebuffer
.LVL146:
	.loc 1 462 0
	li 4,0
	.loc 1 461 0
	mr 30,3
.LVL147:
	.loc 1 462 0
	bl GX_CopyDisp
.LVL148:
	.loc 1 463 0
	bl GX_DrawDone
.L106:
	.loc 1 466 0
	cmpwi 7,30,0
	beq- 7,.L96
	.loc 1 474 0
	addi 3,1,16
	addi 4,1,12
	bl getVImode
.LVL149:
	.loc 1 478 0
	lwz 25,12(1)
.LVL150:
	addic. 25,25,-1
	blt- 0,.L96
	.loc 1 480 0
	cmpw 7,25,22
	blt- 7,.L96
.LVL151:
	lwz 0,16(1)
	mr 15,17
	.loc 1 385 0
	subf 23,22,25
.LBB280:
.LBB281:
.LBB282:
	.loc 1 380 0
	lis 20,.LC21@ha
.LBB283:
.LBB284:
	.loc 1 364 0
	lis 21,.LC1@ha
	mr 17,19
.LVL152:
	mr 16,18
.LVL153:
.L109:
.LBE284:
.LBE283:
.LBE282:
.LBE281:
.LBE280:
	.loc 1 485 0 discriminator 1
	cmpwi 7,0,0
	beq- 7,.L110
	.loc 1 485 0 is_stmt 0
	add 9,17,22
	li 31,0
	cmpw 4,9,25
	b .L121
.LVL154:
.L145:
.LBB373:
	.loc 1 489 0 is_stmt 1
	addi 31,31,1
.L112:
.LVL155:
.LBE373:
	.loc 1 485 0
	cmplw 7,31,0
	bge- 7,.L110
.LVL156:
.L121:
.LBB374:
	.loc 1 487 0
	lwz 28,0(30)
.LVL157:
	addi 30,30,4
.LVL158:
	.loc 1 489 0
	blt- 4,.L145
	.loc 1 489 0 is_stmt 0 discriminator 1
	addi 29,31,1
	cmpw 7,29,27
	blt- 7,.L125
	add 26,27,24
	cmpw 7,31,26
	bgt- 7,.L125
.LVL159:
	.loc 1 501 0 is_stmt 1
	cmpw 7,31,27
	.loc 1 495 0
	rlwinm 18,28,16,24,31
.LVL160:
	.loc 1 497 0
	rlwinm 19,28,0,0xff
.LVL161:
	.loc 1 501 0
	bge- 7,.L146
.LVL162:
.L113:
	.loc 1 510 0
	cmpw 7,29,26
	blt- 7,.L117
.LVL163:
.L139:
	lwz 0,16(1)
	.loc 1 514 0
	addi 31,31,2
.LVL164:
.LBE374:
	.loc 1 485 0
	cmplw 7,31,0
	blt+ 7,.L121
.LVL165:
.L110:
	.loc 1 478 0
	addic. 25,25,-1
.LVL166:
	blt- 0,.L96
	.loc 1 480 0
	cmpw 7,22,25
	addi 23,23,-1
	ble+ 7,.L109
	b .L96
.LVL167:
.L105:
	.loc 1 422 0
	addis 9,18,0xffff
	addi 0,9,31902
	cmplwi 7,0,6
	bgt- 7,.L103
.LVL168:
	.loc 1 453 0
	lis 9,read_mode@ha
	lwz 0,read_mode@l(9)
	cmpwi 7,0,1028
	bne+ 7,.L147
.L107:
	.loc 1 457 0
	bl getFrontFramebuffer
.LVL169:
	mr 30,3
.LVL170:
	.loc 1 458 0
	b .L106
.LVL171:
.L99:
	.loc 1 394 0
	lis 4,.LC12@ha
	li 3,1281
	la 4,.LC12@l(4)
	li 5,394
	bl _glSetErrorEx
	.loc 1 395 0
	b .L96
.L141:
	.loc 1 390 0 discriminator 1
	lis 4,.LC12@ha
	li 3,1282
	la 4,.LC12@l(4)
	li 5,390
	bl _glSetErrorEx
	b .L96
.L143:
	.loc 1 399 0
	addis 9,7,0xffff
	addi 0,9,32544
	cmplwi 7,0,1
	ble- 7,.L102
	b .L101
.L144:
	.loc 1 422 0
	addi 0,18,-5120
	cmplwi 7,0,6
	ble- 7,.L104
.L103:
	.loc 1 446 0
	lis 4,.LC12@ha
	li 3,1280
	la 4,.LC12@l(4)
	li 5,446
	bl _glSetErrorEx
	.loc 1 447 0
	b .L96
.LVL172:
.L125:
.LBB375:
	.loc 1 489 0
	mr 31,29
	b .L112
.LVL173:
.L117:
	.loc 1 512 0
	lis 0,0x4330
.LVL174:
	rlwinm 28,28,24,24,31
.LVL175:
	stw 0,56(1)
	lis 9,.LC16@ha
	stw 28,60(1)
.LBB319:
.LBB309:
	.loc 1 380 0
	lis 11,.LC18@ha
.LBE309:
.LBE319:
	.loc 1 512 0
	lfs 13,.LC16@l(9)
.LBB320:
.LBB310:
	.loc 1 380 0
	lis 9,.LC19@ha
.LBE310:
.LBE320:
	.loc 1 512 0
	lfd 0,56(1)
	stw 0,64(1)
	fsub 0,0,13
	stw 19,68(1)
.LBB321:
.LBB311:
	.loc 1 380 0
	lfd 10,.LC18@l(11)
	lis 11,.LC22@ha
.LBE311:
.LBE321:
	.loc 1 512 0
	lfd 12,64(1)
	frsp 0,0
.LBB322:
.LBB312:
	.loc 1 380 0
	lfd 11,.LC19@l(9)
.LBE312:
.LBE322:
	.loc 1 512 0
	fsub 12,12,13
.LBB323:
.LBB313:
	.loc 1 380 0
	lfd 9,.LC22@l(11)
	lfs 8,.LC21@l(20)
	fmul 0,0,10
.LBE313:
.LBE323:
	.loc 1 512 0
	stw 0,48(1)
	stw 18,52(1)
.LBB324:
.LBB314:
.LBB290:
.LBB287:
	.loc 1 366 0
	li 0,255
.LBE287:
.LBE290:
.LBE314:
.LBE324:
	.loc 1 512 0
	frsp 12,12
.LBB325:
.LBB315:
.LBB291:
.LBB288:
	.loc 1 364 0
	lfs 10,.LC1@l(21)
.LBE288:
.LBE291:
	.loc 1 380 0
	fmadd 11,12,11,0
	fmsub 11,11,8,9
.LBE315:
.LBE325:
	.loc 1 512 0
	lfd 9,48(1)
	fsub 13,9,13
.LBB326:
.LBB316:
	.loc 1 380 0
	frsp 11,11
.LBE316:
.LBE326:
	.loc 1 512 0
	frsp 13,13
.LVL176:
.LBB327:
.LBB317:
.LBB292:
.LBB289:
	.loc 1 364 0
	fcmpu 7,11,10
	bgt- 7,.L118
.LVL177:
.LBB285:
.LBB286:
	.loc 1 368 0
	lis 9,.LC17@ha
	.loc 1 370 0
	li 0,0
	.loc 1 368 0
	lfs 10,.LC17@l(9)
	fcmpu 7,11,10
	blt- 7,.L118
	.loc 1 374 0
	fctiwz 11,11
.LVL178:
	addi 11,1,80
	stfiwx 11,0,11
	lwz 0,80(1)
	rlwinm 0,0,0,0xff
.L118:
.LBE286:
.LBE285:
.LBE289:
.LBE292:
	.loc 1 381 0
	lis 9,.LC23@ha
	.loc 1 385 0
	fneg 8,13
	.loc 1 381 0
	lfd 11,.LC23@l(9)
	.loc 1 385 0
	fneg 12,12
	.loc 1 381 0
	lis 11,.LC24@ha
	lis 9,.LC25@ha
	fmadd 8,8,11,0
	lfd 7,.LC24@l(11)
	lfs 9,.LC21@l(20)
	lfd 10,.LC25@l(9)
	fmadd 12,12,7,8
.LBB293:
.LBB294:
	.loc 1 364 0
	lfs 11,.LC1@l(21)
.LBE294:
.LBE293:
	.loc 1 380 0
	stb 0,8(1)
.LBB299:
.LBB297:
	.loc 1 366 0
	li 0,255
.LBE297:
.LBE299:
	.loc 1 381 0
	fmadd 12,12,9,10
	frsp 12,12
.LVL179:
.LBB300:
.LBB298:
	.loc 1 364 0
	fcmpu 7,12,11
	bgt- 7,.L119
.LVL180:
.LBB295:
.LBB296:
	.loc 1 368 0
	lis 11,.LC17@ha
	.loc 1 370 0
	li 0,0
	.loc 1 368 0
	lfs 11,.LC17@l(11)
	fcmpu 7,12,11
	blt- 7,.L119
	.loc 1 374 0
	fctiwz 12,12
.LVL181:
	addi 9,1,76
	stfiwx 12,0,9
	lwz 0,76(1)
	rlwinm 0,0,0,0xff
.L119:
.LBE296:
.LBE295:
.LBE298:
.LBE300:
	.loc 1 382 0
	lis 11,.LC26@ha
	lis 9,.LC27@ha
	lfd 12,.LC26@l(11)
	lfs 10,.LC21@l(20)
	fmadd 0,13,12,0
	lfd 11,.LC27@l(9)
.LBB301:
.LBB302:
	.loc 1 364 0
	lfs 12,.LC1@l(21)
.LBE302:
.LBE301:
	.loc 1 381 0
	stb 0,9(1)
.LBB307:
.LBB305:
	.loc 1 366 0
	li 0,255
.LBE305:
.LBE307:
	.loc 1 382 0
	fmsub 0,0,10,11
	frsp 0,0
.LVL182:
.LBB308:
.LBB306:
	.loc 1 364 0
	fcmpu 7,0,12
	bgt- 7,.L120
.LVL183:
.LBB303:
.LBB304:
	.loc 1 368 0
	lis 11,.LC17@ha
	.loc 1 370 0
	li 0,0
	.loc 1 368 0
	lfs 13,.LC17@l(11)
.LVL184:
	fcmpu 7,0,13
	blt- 7,.L120
	.loc 1 374 0
	fctiwz 0,0
.LVL185:
	addi 9,1,72
	stfiwx 0,0,9
	lwz 0,72(1)
	rlwinm 0,0,0,0xff
.L120:
.LBE304:
.LBE303:
.LBE306:
.LBE308:
.LBE317:
.LBE327:
	.loc 1 514 0
	lis 11,.LC28@ha
	mr 6,24
	lwz 10,.LC28@l(11)
	mr 4,14
	mr 5,16
.LBB328:
.LBB318:
	.loc 1 382 0
	stb 0,10(1)
.LBE318:
.LBE328:
	.loc 1 514 0
	mr 7,17
	.loc 1 513 0
	li 0,-1
	.loc 1 514 0
	subf 8,27,29
	mr 9,23
	mr 3,15
	.loc 1 513 0
	stb 0,11(1)
	.loc 1 514 0
	bl pixel_offset
	mr 4,15
	mr 5,16
	addi 6,1,8
	bl write_rgb
	b .L139
.LVL186:
.L146:
	.loc 1 503 0
	lis 0,0x4330
	srwi 9,28,24
	stw 9,36(1)
	lis 9,.LC16@ha
	stw 0,32(1)
.LBB329:
.LBB330:
	.loc 1 380 0
	lis 11,.LC18@ha
.LBE330:
.LBE329:
	.loc 1 503 0
	lfs 13,.LC16@l(9)
.LBB364:
.LBB355:
	.loc 1 380 0
	lis 9,.LC19@ha
.LBE355:
.LBE364:
	.loc 1 503 0
	lfd 0,32(1)
	stw 0,40(1)
	fsub 0,0,13
	stw 19,44(1)
.LBB365:
.LBB356:
	.loc 1 380 0
	lfd 10,.LC18@l(11)
	lis 11,.LC22@ha
.LBE356:
.LBE365:
	.loc 1 503 0
	lfd 12,40(1)
	frsp 0,0
.LBB366:
.LBB357:
	.loc 1 380 0
	lfd 11,.LC19@l(9)
.LBE357:
.LBE366:
	.loc 1 503 0
	fsub 12,12,13
.LBB367:
.LBB358:
	.loc 1 380 0
	lfd 9,.LC22@l(11)
	lfs 8,.LC21@l(20)
	fmul 0,0,10
.LBE358:
.LBE367:
	.loc 1 503 0
	stw 0,24(1)
	stw 18,28(1)
.LBB368:
.LBB359:
.LBB331:
.LBB332:
	.loc 1 366 0
	li 0,255
.LBE332:
.LBE331:
.LBE359:
.LBE368:
	.loc 1 503 0
	frsp 12,12
.LBB369:
.LBB360:
.LBB337:
.LBB335:
	.loc 1 364 0
	lfs 10,.LC1@l(21)
.LBE335:
.LBE337:
	.loc 1 380 0
	fmadd 11,12,11,0
	fmsub 11,11,8,9
.LBE360:
.LBE369:
	.loc 1 503 0
	lfd 9,24(1)
	fsub 13,9,13
.LBB370:
.LBB361:
	.loc 1 380 0
	frsp 11,11
.LBE361:
.LBE370:
	.loc 1 503 0
	frsp 13,13
.LVL187:
.LBB371:
.LBB362:
.LBB338:
.LBB336:
	.loc 1 364 0
	fcmpu 7,11,10
	bgt- 7,.L114
.LVL188:
.LBB333:
.LBB334:
	.loc 1 368 0
	lis 9,.LC17@ha
	.loc 1 370 0
	li 0,0
	.loc 1 368 0
	lfs 10,.LC17@l(9)
	fcmpu 7,11,10
	blt- 7,.L114
	.loc 1 374 0
	fctiwz 11,11
.LVL189:
	addi 11,1,92
	stfiwx 11,0,11
	lwz 0,92(1)
	rlwinm 0,0,0,0xff
.L114:
.LBE334:
.LBE333:
.LBE336:
.LBE338:
	.loc 1 381 0
	lis 9,.LC23@ha
	.loc 1 385 0
	fneg 8,13
	.loc 1 381 0
	lfd 11,.LC23@l(9)
	.loc 1 385 0
	fneg 12,12
	.loc 1 381 0
	lis 11,.LC24@ha
	lis 9,.LC25@ha
	fmadd 8,8,11,0
	lfd 7,.LC24@l(11)
	lfs 9,.LC21@l(20)
	lfd 10,.LC25@l(9)
	fmadd 12,12,7,8
.LBB339:
.LBB340:
	.loc 1 364 0
	lfs 11,.LC1@l(21)
.LBE340:
.LBE339:
	.loc 1 380 0
	stb 0,8(1)
.LBB345:
.LBB343:
	.loc 1 366 0
	li 0,255
.LBE343:
.LBE345:
	.loc 1 381 0
	fmadd 12,12,9,10
	frsp 12,12
.LVL190:
.LBB346:
.LBB344:
	.loc 1 364 0
	fcmpu 7,12,11
	bgt- 7,.L115
.LVL191:
.LBB341:
.LBB342:
	.loc 1 368 0
	lis 11,.LC17@ha
	.loc 1 370 0
	li 0,0
	.loc 1 368 0
	lfs 11,.LC17@l(11)
	fcmpu 7,12,11
	blt- 7,.L115
	.loc 1 374 0
	fctiwz 12,12
.LVL192:
	addi 9,1,88
	stfiwx 12,0,9
	lwz 0,88(1)
	rlwinm 0,0,0,0xff
.L115:
.LBE342:
.LBE341:
.LBE344:
.LBE346:
	.loc 1 382 0
	lis 11,.LC26@ha
	lis 9,.LC27@ha
	lfd 12,.LC26@l(11)
	lfs 10,.LC21@l(20)
	fmadd 0,13,12,0
	lfd 11,.LC27@l(9)
.LBB347:
.LBB348:
	.loc 1 364 0
	lfs 12,.LC1@l(21)
.LBE348:
.LBE347:
	.loc 1 381 0
	stb 0,9(1)
.LBB353:
.LBB351:
	.loc 1 366 0
	li 0,255
.LBE351:
.LBE353:
	.loc 1 382 0
	fmsub 0,0,10,11
	frsp 0,0
.LVL193:
.LBB354:
.LBB352:
	.loc 1 364 0
	fcmpu 7,0,12
	bgt- 7,.L116
.LVL194:
.LBB349:
.LBB350:
	.loc 1 368 0
	lis 11,.LC17@ha
	.loc 1 370 0
	li 0,0
	.loc 1 368 0
	lfs 13,.LC17@l(11)
.LVL195:
	fcmpu 7,0,13
	blt- 7,.L116
	.loc 1 374 0
	fctiwz 0,0
.LVL196:
	addi 9,1,84
	stfiwx 0,0,9
	lwz 0,84(1)
	rlwinm 0,0,0,0xff
.L116:
.LBE350:
.LBE349:
.LBE352:
.LBE354:
.LBE362:
.LBE371:
	.loc 1 505 0
	lis 11,.LC28@ha
	mr 6,24
	lwz 10,.LC28@l(11)
	mr 4,14
	mr 5,16
.LBB372:
.LBB363:
	.loc 1 382 0
	stb 0,10(1)
.LBE363:
.LBE372:
	.loc 1 505 0
	mr 3,15
	.loc 1 504 0
	li 0,-1
	.loc 1 505 0
	mr 7,17
	subf 8,27,31
	mr 9,23
	.loc 1 504 0
	stb 0,11(1)
	.loc 1 505 0
	bl pixel_offset
	mr 4,15
	mr 5,16
	addi 6,1,8
.LVL197:
	bl write_rgb
.LVL198:
	b .L113
.LBE375:
	.cfi_endproc
.LFE96:
	.size	glReadPixels, .-glReadPixels
	.align 2
	.globl glGetTexImage
	.type	glGetTexImage, @function
glGetTexImage:
.LFB97:
	.loc 1 523 0
	.cfi_startproc
.LVL199:
	mflr 0
	stwu 1,-8(1)
.LCFI30:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 524 0
	lis 9,cur_state@ha
	.loc 1 523 0
	stw 0,12(1)
	.loc 1 524 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	beq+ 0,.L148
	.loc 1 524 0 is_stmt 0 discriminator 1
	lis 4,.LC12@ha
.LVL200:
	li 3,1282
.LVL201:
	la 4,.LC12@l(4)
	li 5,524
.LVL202:
	bl _glSetErrorEx
.LVL203:
.L148:
	.loc 1 525 0 is_stmt 1
	lwz 0,12(1)
	addi 1,1,8
.LCFI31:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE97:
	.size	glGetTexImage, .-glGetTexImage
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
	.type	__FUNCTION__.12916, @object
	.size	__FUNCTION__.12916, 10
__FUNCTION__.12916:
	.string	"write_rgb"
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1132396544
.LC3:
	.4byte	1123942400
.LC4:
	.4byte	1199570688
.LC5:
	.4byte	1191181824
.LC6:
	.4byte	1333788672
.LC7:
	.4byte	1325400064
.LC8:
	.4byte	1065353216
.LC10:
	.4byte	1501560836
.LC14:
	.4byte	1077936128
.LC16:
	.4byte	1501560832
.LC17:
	.4byte	0
.LC21:
	.4byte	998244352
.LC28:
	.4byte	pack
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC11:
	.4byte	1074793484
	.4byte	202116108
.LC18:
	.4byte	1081254223
	.4byte	-549755814
.LC19:
	.4byte	1081706835
	.4byte	-137438953
.LC22:
	.4byte	1080810872
	.4byte	-721554506
.LC23:
	.4byte	1079579295
	.4byte	-1099511628
.LC24:
	.4byte	1080689623
	.4byte	171798692
.LC25:
	.4byte	1080095342
	.4byte	-1752346657
.LC26:
	.4byte	1082139467
	.4byte	-962072674
.LC27:
	.4byte	1081167200
	.4byte	1099511628
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC12:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_outcopy.c"
	.zero	2
.LC13:
	.string	"0"
	.section	".text"
.Letext0:
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 5 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 6 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 7 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 8 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d72
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF212
	.byte	0x1
	.4byte	.LASF213
	.4byte	.LASF214
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x3
	.byte	0x93
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x3
	.byte	0x94
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF215
	.byte	0x3
	.byte	0x96
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
	.byte	0x3
	.byte	0x99
	.4byte	0x69
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x9a
	.4byte	0x42
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x9d
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x9e
	.4byte	0xa3
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0x49
	.uleb128 0x6
	.byte	0x4
	.4byte	0x98
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0xd4
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x29
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2a
	.4byte	0x42
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x35
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0x36
	.4byte	0x7b
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0x50
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF23
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0x8
	.string	"u8"
	.byte	0x6
	.byte	0x11
	.4byte	0xe3
	.uleb128 0x8
	.string	"u16"
	.byte	0x6
	.byte	0x12
	.4byte	0xf9
	.uleb128 0x8
	.string	"u32"
	.byte	0x6
	.byte	0x13
	.4byte	0x10f
	.uleb128 0x8
	.string	"s8"
	.byte	0x6
	.byte	0x16
	.4byte	0xd8
	.uleb128 0x8
	.string	"s16"
	.byte	0x6
	.byte	0x17
	.4byte	0xee
	.uleb128 0x8
	.string	"s32"
	.byte	0x6
	.byte	0x18
	.4byte	0x104
	.uleb128 0x8
	.string	"f32"
	.byte	0x6
	.byte	0x2b
	.4byte	0xa3
	.uleb128 0x9
	.4byte	0xa3
	.uleb128 0x9
	.4byte	0x30
	.uleb128 0xa
	.4byte	0x128
	.4byte	0x18d
	.uleb128 0xb
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x6
	.byte	0x4
	.4byte	0x19a
	.uleb128 0xc
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0xc
	.byte	0x7
	.byte	0x5e
	.4byte	0x1d3
	.uleb128 0xe
	.string	"x"
	.byte	0x7
	.byte	0x5f
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"y"
	.byte	0x7
	.byte	0x5f
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"z"
	.byte	0x7
	.byte	0x5f
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0x60
	.4byte	0x1a2
	.uleb128 0xf
	.4byte	.LASF216
	.byte	0x4
	.byte	0x8
	.2byte	0x490
	.4byte	0x23e
	.uleb128 0x10
	.string	"U8"
	.byte	0x8
	.2byte	0x492
	.4byte	0x23e
	.uleb128 0x10
	.string	"S8"
	.byte	0x8
	.2byte	0x493
	.4byte	0x243
	.uleb128 0x10
	.string	"U16"
	.byte	0x8
	.2byte	0x494
	.4byte	0x248
	.uleb128 0x10
	.string	"S16"
	.byte	0x8
	.2byte	0x495
	.4byte	0x24d
	.uleb128 0x10
	.string	"U32"
	.byte	0x8
	.2byte	0x496
	.4byte	0x178
	.uleb128 0x10
	.string	"S32"
	.byte	0x8
	.2byte	0x497
	.4byte	0x252
	.uleb128 0x10
	.string	"F32"
	.byte	0x8
	.2byte	0x498
	.4byte	0x173
	.byte	0
	.uleb128 0x9
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x50
	.uleb128 0x9
	.4byte	0x7b
	.uleb128 0x9
	.4byte	0x57
	.uleb128 0x9
	.4byte	0x69
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x8
	.2byte	0x499
	.4byte	0x1de
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x4
	.byte	0x8
	.2byte	0x49e
	.4byte	0x2a5
	.uleb128 0x13
	.string	"r"
	.byte	0x8
	.2byte	0x49f
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"g"
	.byte	0x8
	.2byte	0x4a0
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.string	"b"
	.byte	0x8
	.2byte	0x4a1
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x13
	.string	"a"
	.byte	0x8
	.2byte	0x4a2
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x8
	.2byte	0x4a3
	.4byte	0x263
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x40
	.byte	0x8
	.2byte	0x4f1
	.4byte	0x2ce
	.uleb128 0x13
	.string	"val"
	.byte	0x8
	.2byte	0x4f2
	.4byte	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	0x13d
	.4byte	0x2de
	.uleb128 0xb
	.4byte	0x30
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x8
	.2byte	0x4f3
	.4byte	0x2b1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x128
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13d
	.uleb128 0x14
	.byte	0x10
	.byte	0x2
	.byte	0x15
	.4byte	0x317
	.uleb128 0xe
	.string	"v"
	.byte	0x2
	.byte	0x17
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"w"
	.byte	0x2
	.byte	0x18
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x2
	.byte	0x19
	.4byte	0x2f6
	.uleb128 0x14
	.byte	0x8
	.byte	0x2
	.byte	0x1b
	.4byte	0x343
	.uleb128 0xe
	.string	"s"
	.byte	0x2
	.byte	0x1d
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"t"
	.byte	0x2
	.byte	0x1e
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x2
	.byte	0x1f
	.4byte	0x322
	.uleb128 0x14
	.byte	0x10
	.byte	0x2
	.byte	0x21
	.4byte	0x387
	.uleb128 0xe
	.string	"r"
	.byte	0x2
	.byte	0x23
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"g"
	.byte	0x2
	.byte	0x24
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"b"
	.byte	0x2
	.byte	0x25
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"a"
	.byte	0x2
	.byte	0x26
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x2
	.byte	0x27
	.4byte	0x34e
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x14
	.byte	0x2
	.byte	0x42
	.4byte	0x3e3
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x2
	.byte	0x44
	.4byte	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"p"
	.byte	0x2
	.byte	0x45
	.4byte	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x2
	.byte	0x46
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x2
	.byte	0x47
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x2
	.byte	0x48
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x2
	.byte	0x49
	.4byte	0x392
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x433
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x9
	.byte	0xe
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x9
	.byte	0xf
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x9
	.byte	0x10
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x9
	.byte	0x12
	.4byte	0x3ee
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0xa4
	.byte	0x2
	.byte	0x83
	.4byte	0x4f9
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x2
	.byte	0x85
	.4byte	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"obj"
	.byte	0x2
	.byte	0x87
	.4byte	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"pos"
	.byte	0x2
	.byte	0x89
	.4byte	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x2
	.byte	0x8b
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x2
	.byte	0x8d
	.4byte	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x2
	.byte	0x8e
	.4byte	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x2
	.byte	0x8f
	.4byte	0x387
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x2
	.byte	0x91
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x2
	.byte	0x92
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x2
	.byte	0x93
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x2
	.byte	0x94
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x2
	.byte	0x95
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x2
	.byte	0x96
	.4byte	0x43e
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x44
	.byte	0x2
	.byte	0xa0
	.4byte	0x557
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x2
	.byte	0xa2
	.4byte	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x2
	.byte	0xa3
	.4byte	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x2
	.byte	0xa4
	.4byte	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x2
	.byte	0xa5
	.4byte	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x2
	.byte	0xa6
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x2
	.byte	0xa7
	.4byte	0x504
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x4
	.byte	0x2
	.byte	0xbf
	.4byte	0x581
	.uleb128 0x17
	.4byte	.LASF63
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF64
	.sleb128 1
	.uleb128 0x17
	.4byte	.LASF65
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x2
	.byte	0xc4
	.4byte	0x562
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x10
	.byte	0x2
	.byte	0xe8
	.4byte	0x5cd
	.uleb128 0xe
	.string	"x"
	.byte	0x2
	.byte	0xea
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"y"
	.byte	0x2
	.byte	0xeb
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x2
	.byte	0xec
	.4byte	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x2
	.byte	0xed
	.4byte	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x2
	.byte	0xee
	.4byte	0x58c
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x14
	.byte	0x2
	.byte	0xfb
	.4byte	0x63c
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x2
	.byte	0xfd
	.4byte	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x2
	.byte	0xfe
	.4byte	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x2
	.byte	0xff
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x100
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x101
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x102
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x103
	.4byte	0x5d8
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x8
	.byte	0x2
	.2byte	0x117
	.4byte	0x674
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x119
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x11a
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x11b
	.4byte	0x648
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x6c
	.byte	0x2
	.2byte	0x127
	.4byte	0x7d8
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x129
	.4byte	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x12b
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x12c
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x12d
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x12e
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x12f
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x130
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x131
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x132
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x133
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x134
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x136
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x138
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x139
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x13b
	.4byte	0x7d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x13c
	.4byte	0x7d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x13d
	.4byte	0x7d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x13e
	.4byte	0x7d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x13
	.string	"tex"
	.byte	0x2
	.2byte	0x140
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x142
	.4byte	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x144
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x145
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0
	.uleb128 0xa
	.4byte	0x25
	.4byte	0x7e8
	.uleb128 0xb
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x2
	.2byte	0x146
	.4byte	0x680
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x1
	.byte	0x8e
	.4byte	0x7ff
	.uleb128 0x6
	.byte	0x4
	.4byte	0x805
	.uleb128 0x19
	.byte	0x1
	.4byte	0x816
	.uleb128 0x1a
	.4byte	0x816
	.uleb128 0x1a
	.4byte	0xa3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x16b
	.byte	0x1
	.byte	0x3
	.4byte	0x83f
	.uleb128 0x1c
	.string	"c"
	.byte	0x2
	.2byte	0x16b
	.4byte	0xb7
	.uleb128 0x1c
	.string	"p"
	.byte	0x2
	.2byte	0x16b
	.4byte	0x83f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x674
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.byte	0x3
	.4byte	0x874
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0xb4
	.4byte	0xbd
	.uleb128 0x1f
	.string	"fun"
	.byte	0x1
	.byte	0xb4
	.4byte	0x7f4
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0xb4
	.4byte	0x874
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x20
	.4byte	.LASF109
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.4byte	0x70
	.byte	0x3
	.4byte	0x8a7
	.uleb128 0x1f
	.string	"r"
	.byte	0x1
	.byte	0xd1
	.4byte	0x98
	.uleb128 0x1f
	.string	"g"
	.byte	0x1
	.byte	0xd1
	.4byte	0x98
	.uleb128 0x1f
	.string	"b"
	.byte	0x1
	.byte	0xd1
	.4byte	0x98
	.byte	0
	.uleb128 0x21
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x16a
	.byte	0x1
	.4byte	0x128
	.byte	0x3
	.4byte	0x8c4
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.2byte	0x16a
	.4byte	0xa3
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF111
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.byte	0x3
	.4byte	0x8f1
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x20
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x20
	.4byte	0x2ea
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x22
	.4byte	0x2ea
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.byte	0x3
	.4byte	0x91e
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x26
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x26
	.4byte	0x2ea
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x28
	.4byte	0x2ea
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.byte	0x3
	.4byte	0x94b
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x2c
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x2c
	.4byte	0x2ea
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x2e
	.4byte	0x94b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x132
	.uleb128 0x1d
	.4byte	.LASF114
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.byte	0x3
	.4byte	0x97e
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x32
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x32
	.4byte	0x2ea
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x34
	.4byte	0x94b
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF115
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.4byte	0x9ab
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x38
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x38
	.4byte	0x2ea
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x3a
	.4byte	0x94b
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF116
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.byte	0x3
	.4byte	0x9d8
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x3e
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x3e
	.4byte	0x2ea
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x40
	.4byte	0x94b
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF117
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.4byte	0xa05
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x44
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x44
	.4byte	0x2ea
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x46
	.4byte	0x94b
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.byte	0x3
	.4byte	0xa32
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x4a
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x4a
	.4byte	0x2ea
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x4c
	.4byte	0x94b
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x3
	.4byte	0xa5f
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x50
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x50
	.4byte	0x2ea
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x52
	.4byte	0x2f0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3
	.4byte	0xa8c
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x56
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x56
	.4byte	0x2ea
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x58
	.4byte	0x2f0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x3
	.4byte	0xad4
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x5f
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x5f
	.4byte	0x2ea
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x61
	.4byte	0x2f0
	.uleb128 0x22
	.string	"r"
	.byte	0x1
	.byte	0x62
	.4byte	0x132
	.uleb128 0x22
	.string	"g"
	.byte	0x1
	.byte	0x62
	.4byte	0x132
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.byte	0x62
	.4byte	0x132
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.byte	0x3
	.4byte	0xb1c
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x76
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x76
	.4byte	0x2ea
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x78
	.4byte	0x2f0
	.uleb128 0x22
	.string	"r"
	.byte	0x1
	.byte	0x79
	.4byte	0x132
	.uleb128 0x22
	.string	"g"
	.byte	0x1
	.byte	0x79
	.4byte	0x132
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.byte	0x79
	.4byte	0x132
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x176
	.byte	0x1
	.byte	0x3
	.4byte	0xb53
	.uleb128 0x1c
	.string	"r"
	.byte	0x2
	.2byte	0x176
	.4byte	0xb7
	.uleb128 0x1c
	.string	"g"
	.byte	0x2
	.2byte	0x176
	.4byte	0xb7
	.uleb128 0x1c
	.string	"b"
	.byte	0x2
	.2byte	0x176
	.4byte	0xb7
	.uleb128 0x1c
	.string	"a"
	.byte	0x2
	.2byte	0x176
	.4byte	0xb7
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0x1
	.byte	0xb8
	.byte	0x1
	.byte	0x3
	.4byte	0xb82
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0xb8
	.4byte	0xbd
	.uleb128 0x1f
	.string	"fun"
	.byte	0x1
	.byte	0xb8
	.4byte	0x7f4
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0xb8
	.4byte	0x874
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.4byte	0xbb1
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0xbc
	.4byte	0xbd
	.uleb128 0x1f
	.string	"fun"
	.byte	0x1
	.byte	0xbc
	.4byte	0x7f4
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0xbc
	.4byte	0x874
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.byte	0x3
	.4byte	0xbe0
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0xc0
	.4byte	0xbd
	.uleb128 0x1f
	.string	"fun"
	.byte	0x1
	.byte	0xc0
	.4byte	0x7f4
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0xc0
	.4byte	0x874
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.byte	0x3
	.4byte	0xc0f
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0xc4
	.4byte	0xbd
	.uleb128 0x1f
	.string	"fun"
	.byte	0x1
	.byte	0xc4
	.4byte	0x7f4
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0xc4
	.4byte	0x874
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.byte	0x3
	.4byte	0xc3e
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0xca
	.4byte	0xbd
	.uleb128 0x1f
	.string	"fun"
	.byte	0x1
	.byte	0xca
	.4byte	0x7f4
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0xca
	.4byte	0x874
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.byte	0x3
	.4byte	0xc6d
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0xd5
	.4byte	0xbd
	.uleb128 0x1f
	.string	"fun"
	.byte	0x1
	.byte	0xd5
	.4byte	0x7f4
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0xd5
	.4byte	0x874
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF130
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.byte	0x3
	.4byte	0xc9c
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0xd9
	.4byte	0xbd
	.uleb128 0x1f
	.string	"fun"
	.byte	0x1
	.byte	0xd9
	.4byte	0x7f4
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0xd9
	.4byte	0x874
	.byte	0
	.uleb128 0x23
	.4byte	.LASF132
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST0
	.4byte	0xcd9
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0x90
	.4byte	0x816
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.byte	0x90
	.4byte	0xa3
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0x92
	.4byte	0xcd9
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ea
	.uleb128 0x23
	.4byte	.LASF133
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LLST1
	.4byte	0xd1c
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0x95
	.4byte	0x816
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.byte	0x95
	.4byte	0xa3
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0x97
	.4byte	0xd1c
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd22
	.uleb128 0x6
	.byte	0x4
	.4byte	0x148
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST2
	.4byte	0xd65
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0x9a
	.4byte	0x816
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.byte	0x9a
	.4byte	0xa3
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0x9c
	.4byte	0xd65
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x94b
	.uleb128 0x23
	.4byte	.LASF135
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST3
	.4byte	0xda8
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0x9f
	.4byte	0x816
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.byte	0x9f
	.4byte	0xa3
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0xa1
	.4byte	0xda8
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdae
	.uleb128 0x6
	.byte	0x4
	.4byte	0x152
	.uleb128 0x23
	.4byte	.LASF136
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST4
	.4byte	0xdf1
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0xa4
	.4byte	0x816
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.byte	0xa4
	.4byte	0xa3
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0xa6
	.4byte	0xdf1
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2f0
	.uleb128 0x27
	.4byte	.LASF137
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xe33
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0xa9
	.4byte	0x816
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.byte	0xa9
	.4byte	0xa3
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0xab
	.4byte	0xe33
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe39
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15d
	.uleb128 0x27
	.4byte	.LASF138
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xe7b
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0xae
	.4byte	0x816
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.byte	0xae
	.4byte	0xa3
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0xb0
	.4byte	0xe7b
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x23
	.4byte	.LASF139
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LLST5
	.4byte	0x1472
	.uleb128 0x28
	.4byte	.LASF107
	.byte	0x1
	.byte	0xdf
	.4byte	0xbd
	.4byte	.LLST6
	.uleb128 0x28
	.4byte	.LASF140
	.byte	0x1
	.byte	0xdf
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	.LASF41
	.byte	0x1
	.byte	0xdf
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x28
	.4byte	.LASF108
	.byte	0x1
	.byte	0xdf
	.4byte	0x2ea
	.4byte	.LLST9
	.uleb128 0x29
	.string	"fun"
	.byte	0x1
	.byte	0xec
	.4byte	0x7f4
	.4byte	.LLST10
	.uleb128 0x2a
	.4byte	.LASF141
	.4byte	0x1482
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.12916
	.uleb128 0x2b
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x13c
	.4byte	0x1487
	.4byte	.LLST11
	.uleb128 0x2c
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	0xf1f
	.uleb128 0x29
	.string	"t"
	.byte	0x1
	.byte	0xe6
	.4byte	0x128
	.4byte	.LLST12
	.byte	0
	.uleb128 0x2d
	.4byte	0xad4
	.4byte	.LBB88
	.4byte	.LBE88
	.byte	0x1
	.2byte	0x11c
	.4byte	0xf68
	.uleb128 0x2e
	.4byte	0xaec
	.4byte	.LLST13
	.uleb128 0x2e
	.4byte	0xae1
	.4byte	.LLST14
	.uleb128 0x2f
	.4byte	.LBB89
	.4byte	.LBE89
	.uleb128 0x30
	.4byte	0xaf7
	.4byte	.LLST14
	.uleb128 0x31
	.4byte	0xb00
	.uleb128 0x31
	.4byte	0xb09
	.uleb128 0x31
	.4byte	0xb12
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xb1c
	.4byte	.LBB90
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x143
	.4byte	0x1039
	.uleb128 0x2e
	.4byte	0xb48
	.4byte	.LLST16
	.uleb128 0x2e
	.4byte	0xb3e
	.4byte	.LLST17
	.uleb128 0x2e
	.4byte	0xb34
	.4byte	.LLST18
	.uleb128 0x2e
	.4byte	0xb2a
	.4byte	.LLST19
	.uleb128 0x32
	.4byte	0x81c
	.4byte	.LBB91
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x2
	.2byte	0x178
	.4byte	0xfc7
	.uleb128 0x2e
	.4byte	0x834
	.4byte	.LLST20
	.uleb128 0x2e
	.4byte	0x82a
	.4byte	.LLST19
	.byte	0
	.uleb128 0x32
	.4byte	0x81c
	.4byte	.LBB105
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x2
	.2byte	0x179
	.4byte	0xfee
	.uleb128 0x2e
	.4byte	0x834
	.4byte	.LLST22
	.uleb128 0x2e
	.4byte	0x82a
	.4byte	.LLST23
	.byte	0
	.uleb128 0x32
	.4byte	0x81c
	.4byte	.LBB112
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x2
	.2byte	0x17a
	.4byte	0x1015
	.uleb128 0x2e
	.4byte	0x834
	.4byte	.LLST24
	.uleb128 0x2e
	.4byte	0x82a
	.4byte	.LLST25
	.byte	0
	.uleb128 0x33
	.4byte	0x81c
	.4byte	.LBB120
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x2
	.2byte	0x17b
	.uleb128 0x2e
	.4byte	0x834
	.4byte	.LLST26
	.uleb128 0x2e
	.4byte	0x82a
	.4byte	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xb82
	.4byte	.LBB140
	.4byte	.Ldebug_ranges0+0x120
	.byte	0x1
	.2byte	0x14e
	.4byte	0x1069
	.uleb128 0x2e
	.4byte	0xba5
	.4byte	.LLST28
	.uleb128 0x2e
	.4byte	0xb9a
	.4byte	.LLST29
	.uleb128 0x2e
	.4byte	0xb8f
	.4byte	.LLST30
	.byte	0
	.uleb128 0x32
	.4byte	0xbb1
	.4byte	.LBB145
	.4byte	.Ldebug_ranges0+0x148
	.byte	0x1
	.2byte	0x151
	.4byte	0x1099
	.uleb128 0x2e
	.4byte	0xbd4
	.4byte	.LLST31
	.uleb128 0x2e
	.4byte	0xbc9
	.4byte	.LLST32
	.uleb128 0x2e
	.4byte	0xbbe
	.4byte	.LLST33
	.byte	0
	.uleb128 0x34
	.4byte	0x91e
	.4byte	.LBB152
	.4byte	.LBE152
	.byte	0x1
	.byte	0xf8
	.4byte	0x10d2
	.uleb128 0x2e
	.4byte	0x936
	.4byte	.LLST34
	.uleb128 0x2e
	.4byte	0x92b
	.4byte	.LLST35
	.uleb128 0x2f
	.4byte	.LBB153
	.4byte	.LBE153
	.uleb128 0x30
	.4byte	0x941
	.4byte	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x9ab
	.4byte	.LBB154
	.4byte	.LBE154
	.byte	0x1
	.2byte	0x104
	.4byte	0x110c
	.uleb128 0x2e
	.4byte	0x9c3
	.4byte	.LLST37
	.uleb128 0x2e
	.4byte	0x9b8
	.4byte	.LLST38
	.uleb128 0x2f
	.4byte	.LBB155
	.4byte	.LBE155
	.uleb128 0x30
	.4byte	0x9ce
	.4byte	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0xa32
	.4byte	.LBB156
	.4byte	.LBE156
	.byte	0x1
	.2byte	0x110
	.4byte	0x1146
	.uleb128 0x2e
	.4byte	0xa4a
	.4byte	.LLST40
	.uleb128 0x2e
	.4byte	0xa3f
	.4byte	.LLST41
	.uleb128 0x2f
	.4byte	.LBB157
	.4byte	.LBE157
	.uleb128 0x30
	.4byte	0xa55
	.4byte	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xa5f
	.4byte	.LBB158
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x1
	.2byte	0x114
	.4byte	0x117c
	.uleb128 0x2e
	.4byte	0xa77
	.4byte	.LLST43
	.uleb128 0x2e
	.4byte	0xa6c
	.4byte	.LLST44
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0x198
	.uleb128 0x30
	.4byte	0xa82
	.4byte	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xbe0
	.4byte	.LBB168
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.2byte	0x155
	.4byte	0x11ac
	.uleb128 0x2e
	.4byte	0xc03
	.4byte	.LLST46
	.uleb128 0x2e
	.4byte	0xbf8
	.4byte	.LLST47
	.uleb128 0x2e
	.4byte	0xbed
	.4byte	.LLST48
	.byte	0
	.uleb128 0x32
	.4byte	0xc0f
	.4byte	.LBB177
	.4byte	.Ldebug_ranges0+0x1e8
	.byte	0x1
	.2byte	0x159
	.4byte	0x11dc
	.uleb128 0x2e
	.4byte	0xc32
	.4byte	.LLST49
	.uleb128 0x2e
	.4byte	0xc27
	.4byte	.LLST50
	.uleb128 0x2e
	.4byte	0xc1c
	.4byte	.LLST51
	.byte	0
	.uleb128 0x2d
	.4byte	0xa05
	.4byte	.LBB183
	.4byte	.LBE183
	.byte	0x1
	.2byte	0x10c
	.4byte	0x1216
	.uleb128 0x2e
	.4byte	0xa1d
	.4byte	.LLST52
	.uleb128 0x2e
	.4byte	0xa12
	.4byte	.LLST53
	.uleb128 0x2f
	.4byte	.LBB184
	.4byte	.LBE184
	.uleb128 0x30
	.4byte	0xa28
	.4byte	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x9d8
	.4byte	.LBB185
	.4byte	.LBE185
	.byte	0x1
	.2byte	0x108
	.4byte	0x1250
	.uleb128 0x2e
	.4byte	0x9f0
	.4byte	.LLST55
	.uleb128 0x2e
	.4byte	0x9e5
	.4byte	.LLST56
	.uleb128 0x2f
	.4byte	.LBB186
	.4byte	.LBE186
	.uleb128 0x30
	.4byte	0x9fb
	.4byte	.LLST56
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xa8c
	.4byte	.LBB187
	.4byte	.Ldebug_ranges0+0x208
	.byte	0x1
	.2byte	0x118
	.4byte	0x1295
	.uleb128 0x2e
	.4byte	0xaa4
	.4byte	.LLST58
	.uleb128 0x2e
	.4byte	0xa99
	.4byte	.LLST59
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0x220
	.uleb128 0x30
	.4byte	0xaaf
	.4byte	.LLST59
	.uleb128 0x31
	.4byte	0xab8
	.uleb128 0x31
	.4byte	0xac1
	.uleb128 0x31
	.4byte	0xaca
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0x951
	.4byte	.LBB190
	.4byte	.Ldebug_ranges0+0x238
	.byte	0x1
	.byte	0xfc
	.4byte	0x12ca
	.uleb128 0x2e
	.4byte	0x969
	.4byte	.LLST61
	.uleb128 0x2e
	.4byte	0x95e
	.4byte	.LLST62
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0x250
	.uleb128 0x30
	.4byte	0x974
	.4byte	.LLST62
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x845
	.4byte	.LBB194
	.4byte	.Ldebug_ranges0+0x268
	.byte	0x1
	.2byte	0x148
	.4byte	0x12f1
	.uleb128 0x2e
	.4byte	0x85d
	.4byte	.LLST64
	.uleb128 0x2e
	.4byte	0x852
	.4byte	.LLST65
	.byte	0
	.uleb128 0x34
	.4byte	0x8f1
	.4byte	.LBB201
	.4byte	.LBE201
	.byte	0x1
	.byte	0xf4
	.4byte	0x132a
	.uleb128 0x2e
	.4byte	0x909
	.4byte	.LLST66
	.uleb128 0x2e
	.4byte	0x8fe
	.4byte	.LLST67
	.uleb128 0x2f
	.4byte	.LBB202
	.4byte	.LBE202
	.uleb128 0x30
	.4byte	0x914
	.4byte	.LLST67
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x97e
	.4byte	.LBB204
	.4byte	.LBE204
	.byte	0x1
	.2byte	0x100
	.4byte	0x1364
	.uleb128 0x2e
	.4byte	0x996
	.4byte	.LLST69
	.uleb128 0x2e
	.4byte	0x98b
	.4byte	.LLST70
	.uleb128 0x2f
	.4byte	.LBB205
	.4byte	.LBE205
	.uleb128 0x30
	.4byte	0x9a1
	.4byte	.LLST70
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x8c4
	.4byte	.LBB206
	.4byte	.LBE206
	.byte	0x1
	.byte	0xf0
	.4byte	0x139d
	.uleb128 0x2e
	.4byte	0x8dc
	.4byte	.LLST72
	.uleb128 0x2e
	.4byte	0x8d1
	.4byte	.LLST73
	.uleb128 0x2f
	.4byte	.LBB207
	.4byte	.LBE207
	.uleb128 0x30
	.4byte	0x8e7
	.4byte	.LLST73
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xc6d
	.4byte	.LBB208
	.4byte	.Ldebug_ranges0+0x290
	.byte	0x1
	.2byte	0x15f
	.4byte	0x13f0
	.uleb128 0x2e
	.4byte	0xc90
	.4byte	.LLST75
	.uleb128 0x2e
	.4byte	0xc85
	.4byte	.LLST76
	.uleb128 0x2e
	.4byte	0xc7a
	.4byte	.LLST77
	.uleb128 0x37
	.4byte	0x87a
	.4byte	.LBB210
	.4byte	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.byte	0xdb
	.uleb128 0x38
	.4byte	0x89d
	.uleb128 0x2e
	.4byte	0x894
	.4byte	.LLST78
	.uleb128 0x38
	.4byte	0x88b
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xc3e
	.4byte	.LBB221
	.4byte	.Ldebug_ranges0+0x2d8
	.byte	0x1
	.2byte	0x15c
	.4byte	0x1443
	.uleb128 0x2e
	.4byte	0xc61
	.4byte	.LLST79
	.uleb128 0x2e
	.4byte	0xc56
	.4byte	.LLST80
	.uleb128 0x2e
	.4byte	0xc4b
	.4byte	.LLST81
	.uleb128 0x37
	.4byte	0x87a
	.4byte	.LBB223
	.4byte	.Ldebug_ranges0+0x2f8
	.byte	0x1
	.byte	0xd7
	.uleb128 0x38
	.4byte	0x89d
	.uleb128 0x2e
	.4byte	0x894
	.4byte	.LLST82
	.uleb128 0x38
	.4byte	0x88b
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0xb53
	.4byte	.LBB236
	.4byte	.Ldebug_ranges0+0x328
	.byte	0x1
	.2byte	0x14b
	.uleb128 0x39
	.4byte	0xb76
	.byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 0
	.uleb128 0x39
	.4byte	0xb6b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.4byte	0xb60
	.4byte	.LLST83
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xd1
	.4byte	0x1482
	.uleb128 0xb
	.4byte	0x30
	.byte	0x9
	.byte	0
	.uleb128 0x3a
	.4byte	0x1472
	.uleb128 0xa
	.4byte	0xa3
	.4byte	0x1497
	.uleb128 0xb
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF144
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST84
	.4byte	0x14c0
	.uleb128 0x28
	.4byte	.LASF93
	.byte	0x1
	.byte	0x5
	.4byte	0x25
	.4byte	.LLST85
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x17a
	.byte	0x1
	.byte	0x3
	.4byte	0x14fb
	.uleb128 0x1c
	.string	"Y"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xa3
	.uleb128 0x1c
	.string	"Cb"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xa3
	.uleb128 0x1c
	.string	"Cr"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xa3
	.uleb128 0x3c
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x17a
	.4byte	0x2ea
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x181
	.byte	0x1
	.4byte	.LFB96
	.4byte	.LFE96
	.4byte	.LLST86
	.4byte	0x17d6
	.uleb128 0x3e
	.string	"x"
	.byte	0x1
	.2byte	0x181
	.4byte	0x5e
	.4byte	.LLST87
	.uleb128 0x3e
	.string	"y"
	.byte	0x1
	.2byte	0x181
	.4byte	0x5e
	.4byte	.LLST88
	.uleb128 0x3f
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x182
	.4byte	0x8d
	.4byte	.LLST89
	.uleb128 0x3f
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x182
	.4byte	0x8d
	.4byte	.LLST90
	.uleb128 0x3f
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x183
	.4byte	0x25
	.4byte	.LLST91
	.uleb128 0x3f
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x183
	.4byte	0x25
	.4byte	.LLST92
	.uleb128 0x3f
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x184
	.4byte	0xb1
	.4byte	.LLST93
	.uleb128 0x2b
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x2f0
	.4byte	.LLST94
	.uleb128 0x2b
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x13d
	.4byte	.LLST95
	.uleb128 0x2b
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x13d
	.4byte	.LLST96
	.uleb128 0x40
	.string	"i"
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x69
	.4byte	.LLST97
	.uleb128 0x40
	.string	"j"
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x69
	.4byte	.LLST98
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0x350
	.uleb128 0x40
	.string	"val"
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x13d
	.4byte	.LLST99
	.uleb128 0x40
	.string	"Y1"
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x128
	.4byte	.LLST100
	.uleb128 0x40
	.string	"Cb"
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x128
	.4byte	.LLST101
	.uleb128 0x40
	.string	"Y2"
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x128
	.4byte	.LLST102
	.uleb128 0x40
	.string	"Cr"
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x128
	.4byte	.LLST103
	.uleb128 0x41
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x17d
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x32
	.4byte	0x14c0
	.4byte	.LBB281
	.4byte	.Ldebug_ranges0+0x378
	.byte	0x1
	.2byte	0x200
	.4byte	0x1703
	.uleb128 0x2e
	.4byte	0x14ee
	.4byte	.LLST104
	.uleb128 0x38
	.4byte	0x14e3
	.uleb128 0x2e
	.4byte	0x14d8
	.4byte	.LLST105
	.uleb128 0x38
	.4byte	0x14ce
	.uleb128 0x32
	.4byte	0x8a7
	.4byte	.LBB283
	.4byte	.Ldebug_ranges0+0x3d8
	.byte	0x1
	.2byte	0x17c
	.4byte	0x1696
	.uleb128 0x2e
	.4byte	0x8b9
	.4byte	.LLST106
	.uleb128 0x42
	.4byte	0x8a7
	.4byte	.LBB285
	.4byte	.LBE285
	.byte	0x1
	.2byte	0x20d
	.uleb128 0x2e
	.4byte	0x8b9
	.4byte	.LLST107
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x8a7
	.4byte	.LBB293
	.4byte	.Ldebug_ranges0+0x400
	.byte	0x1
	.2byte	0x17d
	.4byte	0x16ce
	.uleb128 0x2e
	.4byte	0x8b9
	.4byte	.LLST108
	.uleb128 0x42
	.4byte	0x8a7
	.4byte	.LBB295
	.4byte	.LBE295
	.byte	0x1
	.2byte	0x20d
	.uleb128 0x2e
	.4byte	0x8b9
	.4byte	.LLST109
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x8a7
	.4byte	.LBB301
	.4byte	.Ldebug_ranges0+0x420
	.byte	0x1
	.2byte	0x17e
	.uleb128 0x2e
	.4byte	0x8b9
	.4byte	.LLST110
	.uleb128 0x42
	.4byte	0x8a7
	.4byte	.LBB303
	.4byte	.LBE303
	.byte	0x1
	.2byte	0x20d
	.uleb128 0x2e
	.4byte	0x8b9
	.4byte	.LLST111
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x14c0
	.4byte	.LBB329
	.4byte	.Ldebug_ranges0+0x440
	.byte	0x1
	.2byte	0x1f7
	.uleb128 0x2e
	.4byte	0x14ee
	.4byte	.LLST112
	.uleb128 0x38
	.4byte	0x14e3
	.uleb128 0x2e
	.4byte	0x14d8
	.4byte	.LLST113
	.uleb128 0x38
	.4byte	0x14ce
	.uleb128 0x32
	.4byte	0x8a7
	.4byte	.LBB331
	.4byte	.Ldebug_ranges0+0x498
	.byte	0x1
	.2byte	0x17c
	.4byte	0x1767
	.uleb128 0x2e
	.4byte	0x8b9
	.4byte	.LLST106
	.uleb128 0x42
	.4byte	0x8a7
	.4byte	.LBB333
	.4byte	.LBE333
	.byte	0x1
	.2byte	0x20d
	.uleb128 0x2e
	.4byte	0x8b9
	.4byte	.LLST107
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x8a7
	.4byte	.LBB339
	.4byte	.Ldebug_ranges0+0x4b8
	.byte	0x1
	.2byte	0x17d
	.4byte	0x179f
	.uleb128 0x2e
	.4byte	0x8b9
	.4byte	.LLST108
	.uleb128 0x42
	.4byte	0x8a7
	.4byte	.LBB341
	.4byte	.LBE341
	.byte	0x1
	.2byte	0x20d
	.uleb128 0x2e
	.4byte	0x8b9
	.4byte	.LLST109
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x8a7
	.4byte	.LBB347
	.4byte	.Ldebug_ranges0+0x4d8
	.byte	0x1
	.2byte	0x17e
	.uleb128 0x2e
	.4byte	0x8b9
	.4byte	.LLST110
	.uleb128 0x42
	.4byte	0x8a7
	.4byte	.LBB349
	.4byte	.LBE349
	.byte	0x1
	.2byte	0x20d
	.uleb128 0x2e
	.4byte	0x8b9
	.4byte	.LLST111
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x208
	.byte	0x1
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	.LLST114
	.4byte	0x1841
	.uleb128 0x3f
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x208
	.4byte	0x25
	.4byte	.LLST115
	.uleb128 0x3f
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x208
	.4byte	0x5e
	.4byte	.LLST116
	.uleb128 0x3f
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x209
	.4byte	0x25
	.4byte	.LLST117
	.uleb128 0x3f
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x209
	.4byte	0x25
	.4byte	.LLST118
	.uleb128 0x3f
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x20a
	.4byte	0xb1
	.4byte	.LLST119
	.byte	0
	.uleb128 0x43
	.4byte	.LASF152
	.byte	0x8
	.2byte	0x548
	.4byte	0x184f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.4byte	0x1854
	.uleb128 0x6
	.byte	0x4
	.4byte	0x257
	.uleb128 0x44
	.4byte	.LASF153
	.byte	0x2
	.byte	0x3d
	.4byte	0x387
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x44
	.4byte	.LASF154
	.byte	0x2
	.byte	0x3e
	.4byte	0x1d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xa
	.4byte	0x343
	.4byte	0x188e
	.uleb128 0xb
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x44
	.4byte	.LASF155
	.byte	0x2
	.byte	0x3f
	.4byte	0x187e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x44
	.4byte	.LASF156
	.byte	0x2
	.byte	0x4b
	.4byte	0x3e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x44
	.4byte	.LASF157
	.byte	0x2
	.byte	0x4c
	.4byte	0x3e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xa
	.4byte	0x3e3
	.4byte	0x18d4
	.uleb128 0xb
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x45
	.string	"tex"
	.byte	0x2
	.byte	0x4d
	.4byte	0x18c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x44
	.4byte	.LASF100
	.byte	0x2
	.byte	0x4e
	.4byte	0x3e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xa
	.4byte	0x1d3
	.4byte	0x1909
	.uleb128 0x46
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x44
	.4byte	.LASF158
	.byte	0x2
	.byte	0x50
	.4byte	0x18f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x44
	.4byte	.LASF159
	.byte	0x2
	.byte	0x51
	.4byte	0x18f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xa
	.4byte	0x343
	.4byte	0x1944
	.uleb128 0xb
	.4byte	0x30
	.byte	0x7
	.uleb128 0x46
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x44
	.4byte	.LASF160
	.byte	0x2
	.byte	0x52
	.4byte	0x192d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xa
	.4byte	0x387
	.4byte	0x1967
	.uleb128 0x46
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x44
	.4byte	.LASF161
	.byte	0x2
	.byte	0x53
	.4byte	0x1956
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x44
	.4byte	.LASF162
	.byte	0x2
	.byte	0x5d
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x44
	.4byte	.LASF163
	.byte	0x2
	.byte	0x5e
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x44
	.4byte	.LASF164
	.byte	0x2
	.byte	0x5f
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x44
	.4byte	.LASF165
	.byte	0x2
	.byte	0x61
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x44
	.4byte	.LASF166
	.byte	0x2
	.byte	0x62
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x44
	.4byte	.LASF167
	.byte	0x2
	.byte	0x6b
	.4byte	0x128
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x44
	.4byte	.LASF168
	.byte	0x2
	.byte	0x6c
	.4byte	0x128
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x44
	.4byte	.LASF169
	.byte	0x2
	.byte	0x6d
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x44
	.4byte	.LASF170
	.byte	0x2
	.byte	0x6e
	.4byte	0xa3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x44
	.4byte	.LASF171
	.byte	0x2
	.byte	0x7a
	.4byte	0x433
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x44
	.4byte	.LASF172
	.byte	0x2
	.byte	0x7b
	.4byte	0x433
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xa
	.4byte	0x433
	.4byte	0x1a4f
	.uleb128 0xb
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x44
	.4byte	.LASF173
	.byte	0x2
	.byte	0x7c
	.4byte	0x1a3f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x44
	.4byte	.LASF174
	.byte	0x2
	.byte	0x7d
	.4byte	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x6
	.byte	0x4
	.4byte	0x433
	.uleb128 0x44
	.4byte	.LASF175
	.byte	0x2
	.byte	0x7e
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xa
	.4byte	0x4f9
	.4byte	0x1a9b
	.uleb128 0xb
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x44
	.4byte	.LASF176
	.byte	0x2
	.byte	0x99
	.4byte	0x1a8b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x44
	.4byte	.LASF177
	.byte	0x2
	.byte	0x9c
	.4byte	0x387
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x44
	.4byte	.LASF178
	.byte	0x2
	.byte	0xa9
	.4byte	0x557
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x44
	.4byte	.LASF179
	.byte	0x2
	.byte	0xac
	.4byte	0x18d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x44
	.4byte	.LASF180
	.byte	0x2
	.byte	0xad
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x44
	.4byte	.LASF181
	.byte	0x2
	.byte	0xb1
	.4byte	0x18d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x44
	.4byte	.LASF182
	.byte	0x2
	.byte	0xb8
	.4byte	0x128
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x44
	.4byte	.LASF183
	.byte	0x2
	.byte	0xb9
	.4byte	0x128
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x44
	.4byte	.LASF184
	.byte	0x2
	.byte	0xba
	.4byte	0x128
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x44
	.4byte	.LASF185
	.byte	0x2
	.byte	0xbb
	.4byte	0x128
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x44
	.4byte	.LASF186
	.byte	0x2
	.byte	0xbd
	.4byte	0x128
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x44
	.4byte	.LASF187
	.byte	0x2
	.byte	0xc6
	.4byte	0x581
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x44
	.4byte	.LASF188
	.byte	0x2
	.byte	0xf0
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x44
	.4byte	.LASF189
	.byte	0x2
	.byte	0xf1
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x44
	.4byte	.LASF190
	.byte	0x2
	.byte	0xf2
	.4byte	0x37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x44
	.4byte	.LASF191
	.byte	0x2
	.byte	0xf3
	.4byte	0x5cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x44
	.4byte	.LASF192
	.byte	0x2
	.byte	0xf4
	.4byte	0x5cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x44
	.4byte	.LASF193
	.byte	0x2
	.byte	0xf5
	.4byte	0x168
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x44
	.4byte	.LASF194
	.byte	0x2
	.byte	0xf6
	.4byte	0x168
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x44
	.4byte	.LASF147
	.byte	0x2
	.byte	0xf8
	.4byte	0x168
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x44
	.4byte	.LASF195
	.byte	0x2
	.byte	0xf9
	.4byte	0x168
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x47
	.4byte	.LASF196
	.byte	0x2
	.2byte	0x105
	.4byte	0x63c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x47
	.4byte	.LASF197
	.byte	0x2
	.2byte	0x106
	.4byte	0x63c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xa
	.4byte	0x18d
	.4byte	0x1c4b
	.uleb128 0xb
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x47
	.4byte	.LASF198
	.byte	0x2
	.2byte	0x107
	.4byte	0x1c3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x47
	.4byte	.LASF199
	.byte	0x2
	.2byte	0x10d
	.4byte	0x18d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x47
	.4byte	.LASF200
	.byte	0x2
	.2byte	0x10e
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x47
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x111
	.4byte	0x2a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xa
	.4byte	0x674
	.4byte	0x1ca7
	.uleb128 0xb
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x47
	.4byte	.LASF202
	.byte	0x2
	.2byte	0x125
	.4byte	0x1c97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x47
	.4byte	.LASF203
	.byte	0x2
	.2byte	0x14a
	.4byte	0x18d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x47
	.4byte	.LASF204
	.byte	0x2
	.2byte	0x14b
	.4byte	0x128
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x47
	.4byte	.LASF205
	.byte	0x2
	.2byte	0x14c
	.4byte	0x168
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x47
	.4byte	.LASF206
	.byte	0x2
	.2byte	0x14d
	.4byte	0x168
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x47
	.4byte	.LASF207
	.byte	0x2
	.2byte	0x14e
	.4byte	0x168
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x47
	.4byte	.LASF208
	.byte	0x2
	.2byte	0x14f
	.4byte	0x2a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xa
	.4byte	0x7e8
	.4byte	0x1d3c
	.uleb128 0xb
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x47
	.4byte	.LASF209
	.byte	0x2
	.2byte	0x151
	.4byte	0x1d2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x47
	.4byte	.LASF210
	.byte	0x2
	.2byte	0x156
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x47
	.4byte	.LASF211
	.byte	0x2
	.2byte	0x159
	.4byte	0x82
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x5
	.byte	0
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.4byte	.LFB77-.Ltext0
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
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB78-.Ltext0
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
	.4byte	.LFE78-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB79-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB80-.Ltext0
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
	.4byte	.LFE80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB81-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB93-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 192
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 192
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 192
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 192
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-1-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-1-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-1-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL39-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL92-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL108-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL119-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL124-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL39-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL92-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL108-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL119-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL124-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL39-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL92-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL108-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL119-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL124-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	put_UINT
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	put_USHORT
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	put_INT
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	put_FLOAT
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	put_SHORT
	.byte	0x9f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0xc
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL57-1-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0xe
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL65-1-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL92-1-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL92-1-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0xc
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0xc
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL122-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 12
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 12
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 12
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 8
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 8
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 8
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 4
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 4
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 4
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 0
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 0
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 0
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+8
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+8
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+8
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+8
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 4
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 4
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 4
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 4
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+16
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+16
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+16
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+16
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 8
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 8
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 8
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 8
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+24
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+24
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+24
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+24
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	Trans+24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 12
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 12
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 12
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 12
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 8
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 8
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -184
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -184
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3828
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -184
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -184
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	.LVL121-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 1024
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 1024
	.byte	0x9f
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LFB96-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 176
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 176
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL146-1-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL146-1-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL146-1-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL137-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL137-1-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL146-1-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL169-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL169-1-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL172-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL137-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL137-1-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL146-1-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL169-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL169-1-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL172-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL137-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL137-1-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL146-1-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL169-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL169-1-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL172-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL144-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL148-1-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL172-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL174-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -164
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -164
	.4byte	.LVL172-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -164
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x7
	.byte	0x91
	.sleb128 -164
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x3
	.byte	0x89
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL172-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 -4
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL186-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 -4
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL186-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL173-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0xa
	.byte	0x8e
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.2byte	0xff00
	.byte	0x1a
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0xa
	.2byte	0xff00
	.byte	0x1a
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0xa
	.2byte	0xff00
	.byte	0x1a
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL186-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0xa
	.2byte	0xff00
	.byte	0x1a
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL173-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL198-1-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LFB97-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL203-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL203-1-.Ltext0
	.2byte	0x1
	.byte	0x57
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
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	.LBB135-.Ltext0
	.4byte	.LBE135-.Ltext0
	.4byte	.LBB136-.Ltext0
	.4byte	.LBE136-.Ltext0
	.4byte	.LBB137-.Ltext0
	.4byte	.LBE137-.Ltext0
	.4byte	.LBB138-.Ltext0
	.4byte	.LBE138-.Ltext0
	.4byte	.LBB139-.Ltext0
	.4byte	.LBE139-.Ltext0
	.4byte	.LBB165-.Ltext0
	.4byte	.LBE165-.Ltext0
	.4byte	.LBB166-.Ltext0
	.4byte	.LBE166-.Ltext0
	.4byte	.LBB175-.Ltext0
	.4byte	.LBE175-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	.LBB102-.Ltext0
	.4byte	.LBE102-.Ltext0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	.LBB134-.Ltext0
	.4byte	.LBE134-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	.LBB133-.Ltext0
	.4byte	.LBE133-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB112-.Ltext0
	.4byte	.LBE112-.Ltext0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	.LBB128-.Ltext0
	.4byte	.LBE128-.Ltext0
	.4byte	.LBB130-.Ltext0
	.4byte	.LBE130-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	.LBB127-.Ltext0
	.4byte	.LBE127-.Ltext0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	.LBB131-.Ltext0
	.4byte	.LBE131-.Ltext0
	.4byte	.LBB132-.Ltext0
	.4byte	.LBE132-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB140-.Ltext0
	.4byte	.LBE140-.Ltext0
	.4byte	.LBB150-.Ltext0
	.4byte	.LBE150-.Ltext0
	.4byte	.LBB241-.Ltext0
	.4byte	.LBE241-.Ltext0
	.4byte	.LBB243-.Ltext0
	.4byte	.LBE243-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB145-.Ltext0
	.4byte	.LBE145-.Ltext0
	.4byte	.LBB151-.Ltext0
	.4byte	.LBE151-.Ltext0
	.4byte	.LBB167-.Ltext0
	.4byte	.LBE167-.Ltext0
	.4byte	.LBB173-.Ltext0
	.4byte	.LBE173-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB158-.Ltext0
	.4byte	.LBE158-.Ltext0
	.4byte	.LBB163-.Ltext0
	.4byte	.LBE163-.Ltext0
	.4byte	.LBB164-.Ltext0
	.4byte	.LBE164-.Ltext0
	.4byte	.LBB203-.Ltext0
	.4byte	.LBE203-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB159-.Ltext0
	.4byte	.LBE159-.Ltext0
	.4byte	.LBB160-.Ltext0
	.4byte	.LBE160-.Ltext0
	.4byte	.LBB161-.Ltext0
	.4byte	.LBE161-.Ltext0
	.4byte	.LBB162-.Ltext0
	.4byte	.LBE162-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB168-.Ltext0
	.4byte	.LBE168-.Ltext0
	.4byte	.LBB174-.Ltext0
	.4byte	.LBE174-.Ltext0
	.4byte	.LBB176-.Ltext0
	.4byte	.LBE176-.Ltext0
	.4byte	.LBB181-.Ltext0
	.4byte	.LBE181-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB177-.Ltext0
	.4byte	.LBE177-.Ltext0
	.4byte	.LBB182-.Ltext0
	.4byte	.LBE182-.Ltext0
	.4byte	.LBB245-.Ltext0
	.4byte	.LBE245-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB187-.Ltext0
	.4byte	.LBE187-.Ltext0
	.4byte	.LBB200-.Ltext0
	.4byte	.LBE200-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB188-.Ltext0
	.4byte	.LBE188-.Ltext0
	.4byte	.LBB189-.Ltext0
	.4byte	.LBE189-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB190-.Ltext0
	.4byte	.LBE190-.Ltext0
	.4byte	.LBB193-.Ltext0
	.4byte	.LBE193-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB191-.Ltext0
	.4byte	.LBE191-.Ltext0
	.4byte	.LBB192-.Ltext0
	.4byte	.LBE192-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB194-.Ltext0
	.4byte	.LBE194-.Ltext0
	.4byte	.LBB199-.Ltext0
	.4byte	.LBE199-.Ltext0
	.4byte	.LBB247-.Ltext0
	.4byte	.LBE247-.Ltext0
	.4byte	.LBB249-.Ltext0
	.4byte	.LBE249-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB208-.Ltext0
	.4byte	.LBE208-.Ltext0
	.4byte	.LBB235-.Ltext0
	.4byte	.LBE235-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB210-.Ltext0
	.4byte	.LBE210-.Ltext0
	.4byte	.LBB216-.Ltext0
	.4byte	.LBE216-.Ltext0
	.4byte	.LBB217-.Ltext0
	.4byte	.LBE217-.Ltext0
	.4byte	.LBB218-.Ltext0
	.4byte	.LBE218-.Ltext0
	.4byte	.LBB219-.Ltext0
	.4byte	.LBE219-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB221-.Ltext0
	.4byte	.LBE221-.Ltext0
	.4byte	.LBB244-.Ltext0
	.4byte	.LBE244-.Ltext0
	.4byte	.LBB246-.Ltext0
	.4byte	.LBE246-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB223-.Ltext0
	.4byte	.LBE223-.Ltext0
	.4byte	.LBB229-.Ltext0
	.4byte	.LBE229-.Ltext0
	.4byte	.LBB230-.Ltext0
	.4byte	.LBE230-.Ltext0
	.4byte	.LBB231-.Ltext0
	.4byte	.LBE231-.Ltext0
	.4byte	.LBB232-.Ltext0
	.4byte	.LBE232-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB236-.Ltext0
	.4byte	.LBE236-.Ltext0
	.4byte	.LBB242-.Ltext0
	.4byte	.LBE242-.Ltext0
	.4byte	.LBB248-.Ltext0
	.4byte	.LBE248-.Ltext0
	.4byte	.LBB250-.Ltext0
	.4byte	.LBE250-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB280-.Ltext0
	.4byte	.LBE280-.Ltext0
	.4byte	.LBB373-.Ltext0
	.4byte	.LBE373-.Ltext0
	.4byte	.LBB374-.Ltext0
	.4byte	.LBE374-.Ltext0
	.4byte	.LBB375-.Ltext0
	.4byte	.LBE375-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB281-.Ltext0
	.4byte	.LBE281-.Ltext0
	.4byte	.LBB319-.Ltext0
	.4byte	.LBE319-.Ltext0
	.4byte	.LBB320-.Ltext0
	.4byte	.LBE320-.Ltext0
	.4byte	.LBB321-.Ltext0
	.4byte	.LBE321-.Ltext0
	.4byte	.LBB322-.Ltext0
	.4byte	.LBE322-.Ltext0
	.4byte	.LBB323-.Ltext0
	.4byte	.LBE323-.Ltext0
	.4byte	.LBB324-.Ltext0
	.4byte	.LBE324-.Ltext0
	.4byte	.LBB325-.Ltext0
	.4byte	.LBE325-.Ltext0
	.4byte	.LBB326-.Ltext0
	.4byte	.LBE326-.Ltext0
	.4byte	.LBB327-.Ltext0
	.4byte	.LBE327-.Ltext0
	.4byte	.LBB328-.Ltext0
	.4byte	.LBE328-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB283-.Ltext0
	.4byte	.LBE283-.Ltext0
	.4byte	.LBB290-.Ltext0
	.4byte	.LBE290-.Ltext0
	.4byte	.LBB291-.Ltext0
	.4byte	.LBE291-.Ltext0
	.4byte	.LBB292-.Ltext0
	.4byte	.LBE292-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB293-.Ltext0
	.4byte	.LBE293-.Ltext0
	.4byte	.LBB299-.Ltext0
	.4byte	.LBE299-.Ltext0
	.4byte	.LBB300-.Ltext0
	.4byte	.LBE300-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB301-.Ltext0
	.4byte	.LBE301-.Ltext0
	.4byte	.LBB307-.Ltext0
	.4byte	.LBE307-.Ltext0
	.4byte	.LBB308-.Ltext0
	.4byte	.LBE308-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB329-.Ltext0
	.4byte	.LBE329-.Ltext0
	.4byte	.LBB364-.Ltext0
	.4byte	.LBE364-.Ltext0
	.4byte	.LBB365-.Ltext0
	.4byte	.LBE365-.Ltext0
	.4byte	.LBB366-.Ltext0
	.4byte	.LBE366-.Ltext0
	.4byte	.LBB367-.Ltext0
	.4byte	.LBE367-.Ltext0
	.4byte	.LBB368-.Ltext0
	.4byte	.LBE368-.Ltext0
	.4byte	.LBB369-.Ltext0
	.4byte	.LBE369-.Ltext0
	.4byte	.LBB370-.Ltext0
	.4byte	.LBE370-.Ltext0
	.4byte	.LBB371-.Ltext0
	.4byte	.LBE371-.Ltext0
	.4byte	.LBB372-.Ltext0
	.4byte	.LBE372-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB331-.Ltext0
	.4byte	.LBE331-.Ltext0
	.4byte	.LBB337-.Ltext0
	.4byte	.LBE337-.Ltext0
	.4byte	.LBB338-.Ltext0
	.4byte	.LBE338-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB339-.Ltext0
	.4byte	.LBE339-.Ltext0
	.4byte	.LBB345-.Ltext0
	.4byte	.LBE345-.Ltext0
	.4byte	.LBB346-.Ltext0
	.4byte	.LBE346-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB347-.Ltext0
	.4byte	.LBE347-.Ltext0
	.4byte	.LBB353-.Ltext0
	.4byte	.LBE353-.Ltext0
	.4byte	.LBB354-.Ltext0
	.4byte	.LBE354-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF123:
	.string	"TransformRGBA"
.LASF139:
	.string	"write_rgb"
.LASF138:
	.string	"put_FLOAT"
.LASF16:
	.string	"char"
.LASF6:
	.string	"GLint"
.LASF140:
	.string	"format"
.LASF57:
	.string	"quad_t"
.LASF67:
	.string	"boxInfo"
.LASF141:
	.string	"__FUNCTION__"
.LASF105:
	.string	"TransformC"
.LASF177:
	.string	"globAmbient"
.LASF173:
	.string	"texture_stack"
.LASF187:
	.string	"cur_state"
.LASF146:
	.string	"buffer"
.LASF188:
	.string	"fb_max_height"
.LASF158:
	.string	"_normalelements"
.LASF59:
	.string	"_mat"
.LASF79:
	.string	"scale"
.LASF52:
	.string	"specular"
.LASF215:
	.string	"GLvoid"
.LASF151:
	.string	"level"
.LASF160:
	.string	"_texcoordelements"
.LASF78:
	.string	"_trans"
.LASF54:
	.string	"spotCutoff"
.LASF82:
	.string	"_tex_env"
.LASF178:
	.string	"curmat"
.LASF44:
	.string	"begin"
.LASF93:
	.string	"mode"
.LASF201:
	.string	"_clearcolor"
.LASF88:
	.string	"maxlod"
.LASF63:
	.string	"GL_STATE_NONE"
.LASF32:
	.string	"_gx_litobj"
.LASF61:
	.string	"shininess"
.LASF175:
	.string	"cur_mode"
.LASF159:
	.string	"_vertexelements"
.LASF36:
	.string	"GXColorf"
.LASF97:
	.string	"CargOp"
.LASF170:
	.string	"_cleardepth"
.LASF51:
	.string	"diffuse"
.LASF154:
	.string	"_tempnormalelement"
.LASF166:
	.string	"cur_tex_client"
.LASF157:
	.string	"vert"
.LASF22:
	.string	"uint32_t"
.LASF17:
	.string	"int8_t"
.LASF204:
	.string	"fog_mode"
.LASF104:
	.string	"putType"
.LASF206:
	.string	"fog_endz"
.LASF163:
	.string	"_type"
.LASF12:
	.string	"float"
.LASF83:
	.string	"min_filter"
.LASF106:
	.string	"put_RED"
.LASF132:
	.string	"put_UBYTE"
.LASF80:
	.string	"bias"
.LASF19:
	.string	"int16_t"
.LASF31:
	.string	"GXColor"
.LASF147:
	.string	"line_width"
.LASF24:
	.string	"long long unsigned int"
.LASF202:
	.string	"Trans"
.LASF196:
	.string	"pack"
.LASF60:
	.string	"emissive"
.LASF137:
	.string	"put_INT"
.LASF113:
	.string	"put_USHORT_5_6_5"
.LASF192:
	.string	"viewPort"
.LASF144:
	.string	"glReadBuffer"
.LASF171:
	.string	"model_stack"
.LASF198:
	.string	"color_write_mask"
.LASF96:
	.string	"Carg"
.LASF38:
	.string	"enable"
.LASF209:
	.string	"glTexEnvs"
.LASF182:
	.string	"blend_type"
.LASF118:
	.string	"put_USHORT_1_5_5_5_REV"
.LASF135:
	.string	"put_SHORT"
.LASF208:
	.string	"fog_color"
.LASF145:
	.string	"glReadPixels"
.LASF150:
	.string	"target"
.LASF68:
	.string	"width"
.LASF134:
	.string	"put_USHORT"
.LASF199:
	.string	"copy_mat_enabled"
.LASF165:
	.string	"cur_tex"
.LASF216:
	.string	"_wgpipe"
.LASF95:
	.string	"comAlpha"
.LASF25:
	.string	"_Bool"
.LASF190:
	.string	"scissor_test"
.LASF127:
	.string	"put_RGB"
.LASF126:
	.string	"put_ALPHA"
.LASF195:
	.string	"point_size"
.LASF194:
	.string	"normFar"
.LASF11:
	.string	"GLfloat"
.LASF200:
	.string	"copy_material"
.LASF65:
	.string	"GL_STATE_NEWLIST"
.LASF174:
	.string	"curmtx"
.LASF50:
	.string	"ambient"
.LASF128:
	.string	"put_RGBA"
.LASF125:
	.string	"put_BLUE"
.LASF180:
	.string	"gxwinding"
.LASF33:
	.string	"GXLightObj"
.LASF124:
	.string	"put_GREEN"
.LASF81:
	.string	"ColorTrans"
.LASF23:
	.string	"long long int"
.LASF183:
	.string	"blend_src"
.LASF62:
	.string	"Material"
.LASF131:
	.string	"pixels"
.LASF143:
	.string	"YCbCr2RGB"
.LASF169:
	.string	"depthfunction"
.LASF103:
	.string	"glTexEnvSet"
.LASF18:
	.string	"uint8_t"
.LASF172:
	.string	"projection_stack"
.LASF112:
	.string	"put_UBYTE_2_3_3_REV"
.LASF161:
	.string	"_colorelements"
.LASF71:
	.string	"swap"
.LASF27:
	.string	"guVector"
.LASF133:
	.string	"put_BYTE"
.LASF42:
	.string	"VertexArray"
.LASF9:
	.string	"GLuint"
.LASF64:
	.string	"GL_STATE_BEGIN"
.LASF210:
	.string	"read_mode"
.LASF45:
	.string	"elem_size"
.LASF66:
	.string	"glState"
.LASF55:
	.string	"constant"
.LASF203:
	.string	"fog_enable"
.LASF7:
	.string	"GLubyte"
.LASF149:
	.string	"glGetTexImage"
.LASF109:
	.string	"GetIlum"
.LASF34:
	.string	"VertexElement"
.LASF114:
	.string	"put_USHORT_5_6_5_REV"
.LASF90:
	.string	"biasclamp"
.LASF73:
	.string	"row_length"
.LASF191:
	.string	"scissorInfo"
.LASF168:
	.string	"depthupdate"
.LASF40:
	.string	"size"
.LASF58:
	.string	"LightObj"
.LASF85:
	.string	"wrap_s"
.LASF86:
	.string	"wrap_t"
.LASF56:
	.string	"linear"
.LASF29:
	.string	"_vecf"
.LASF184:
	.string	"blend_dst"
.LASF69:
	.string	"height"
.LASF155:
	.string	"_temptexcoordelement"
.LASF111:
	.string	"put_UBYTE_3_3_2"
.LASF115:
	.string	"put_USHORT_4_4_4_4"
.LASF148:
	.string	"n_lines"
.LASF108:
	.string	"rgba"
.LASF20:
	.string	"uint16_t"
.LASF14:
	.string	"size_t"
.LASF156:
	.string	"norm"
.LASF197:
	.string	"unpack"
.LASF49:
	.string	"spotDir"
.LASF37:
	.string	"_array"
.LASF53:
	.string	"spotExponent"
.LASF129:
	.string	"put_LUMINANCE"
.LASF89:
	.string	"lodbias"
.LASF176:
	.string	"lights"
.LASF5:
	.string	"short int"
.LASF87:
	.string	"minlod"
.LASF84:
	.string	"max_filter"
.LASF15:
	.string	"long int"
.LASF121:
	.string	"put_UINT_10_10_10_2"
.LASF28:
	.string	"WGPipe"
.LASF0:
	.string	"GLenum"
.LASF47:
	.string	"_light"
.LASF213:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_outcopy.c"
.LASF100:
	.string	"color"
.LASF72:
	.string	"lsb_first"
.LASF10:
	.string	"GLsizei"
.LASF119:
	.string	"put_UINT_8_8_8_8"
.LASF136:
	.string	"put_UINT"
.LASF211:
	.string	"call_offset"
.LASF153:
	.string	"_tempcolorelement"
.LASF75:
	.string	"skip_pixels"
.LASF98:
	.string	"Aarg"
.LASF92:
	.string	"maxaniso"
.LASF2:
	.string	"unsigned int"
.LASF207:
	.string	"fog_density"
.LASF116:
	.string	"put_USHORT_4_4_4_4_REV"
.LASF39:
	.string	"stride"
.LASF181:
	.string	"lighting"
.LASF130:
	.string	"put_LUMINANCE_ALPHA"
.LASF26:
	.string	"long unsigned int"
.LASF185:
	.string	"blend_op"
.LASF205:
	.string	"fog_startz"
.LASF21:
	.string	"int32_t"
.LASF77:
	.string	"pixelStore"
.LASF214:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF212:
	.string	"GNU C 4.6.3"
.LASF110:
	.string	"clamp_255"
.LASF107:
	.string	"pixel"
.LASF41:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF48:
	.string	"enabled"
.LASF117:
	.string	"put_USHORT_5_5_5_1"
.LASF74:
	.string	"skip_rows"
.LASF162:
	.string	"vert_i"
.LASF120:
	.string	"put_UINT_8_8_8_8_REV"
.LASF102:
	.string	"alpha_scale"
.LASF94:
	.string	"comRGB"
.LASF189:
	.string	"fb_max_width"
.LASF193:
	.string	"normNear"
.LASF164:
	.string	"_GLtype"
.LASF167:
	.string	"depthtestenabled"
.LASF30:
	.string	"_gx_color"
.LASF91:
	.string	"edgelod"
.LASF179:
	.string	"gxcullfaceanabled"
.LASF43:
	.string	"_stack"
.LASF4:
	.string	"signed char"
.LASF46:
	.string	"Stack"
.LASF8:
	.string	"short unsigned int"
.LASF152:
	.string	"wgPipe"
.LASF142:
	.string	"rgba_f"
.LASF13:
	.string	"double"
.LASF76:
	.string	"alignment"
.LASF122:
	.string	"put_UINT_2_10_10_10_REV"
.LASF35:
	.string	"TexCoordElement"
.LASF1:
	.string	"GLboolean"
.LASF101:
	.string	"rgb_scale"
.LASF217:
	.string	"_glState"
.LASF70:
	.string	"_pixelStore"
.LASF186:
	.string	"cull_mode"
.LASF99:
	.string	"AargOp"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
