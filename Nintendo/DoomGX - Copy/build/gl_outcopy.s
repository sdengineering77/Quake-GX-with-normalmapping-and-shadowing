	.file	"gl_outcopy.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	put_UBYTE, @function
put_UBYTE:
.LFB79:
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/gl_outcopy.c"
	.loc 1 145 0
.LVL0:
	.loc 1 147 0
	lis 9,.LC1@ha
	.loc 1 145 0
	stwu 1,-16(1)
.LCFI0:
	.loc 1 147 0
	lfs 0,.LC1@l(9)
	addi 10,1,8
	lwz 11,0(3)
	fmul 1,1,0
.LVL1:
	addi 9,11,1
	fctiwz 0,1
	stfiwx 0,0,10
	lwz 0,8(1)
	.loc 1 148 0
	addi 1,1,16
	.loc 1 147 0
	stb 0,0(11)
	stw 9,0(3)
	.loc 1 148 0
	blr
.LFE79:
	.size	put_UBYTE, .-put_UBYTE
	.align 2
	.type	put_BYTE, @function
put_BYTE:
.LFB80:
	.loc 1 150 0
.LVL2:
	.loc 1 152 0
	lis 9,.LC3@ha
	.loc 1 150 0
	stwu 1,-16(1)
.LCFI1:
	.loc 1 152 0
	lfs 0,.LC3@l(9)
	addi 10,1,8
	lwz 11,0(3)
	fmul 1,1,0
.LVL3:
	addi 9,11,1
	fctiwz 0,1
	stfiwx 0,0,10
	lwz 0,8(1)
	.loc 1 153 0
	addi 1,1,16
	.loc 1 152 0
	stb 0,0(11)
	stw 9,0(3)
	.loc 1 153 0
	blr
.LFE80:
	.size	put_BYTE, .-put_BYTE
	.align 2
	.type	put_USHORT, @function
put_USHORT:
.LFB81:
	.loc 1 155 0
.LVL4:
	.loc 1 157 0
	lis 9,.LC4@ha
	.loc 1 155 0
	stwu 1,-16(1)
.LCFI2:
	.loc 1 157 0
	lfs 0,.LC4@l(9)
	addi 11,1,8
	lwz 9,0(3)
	fmuls 1,1,0
.LVL5:
	addi 0,9,2
	stw 0,0(3)
	fctiwz 0,1
	stfiwx 0,0,11
	lwz 0,8(1)
	.loc 1 158 0
	addi 1,1,16
	.loc 1 157 0
	sth 0,0(9)
	.loc 1 158 0
	blr
.LFE81:
	.size	put_USHORT, .-put_USHORT
	.align 2
	.type	put_SHORT, @function
put_SHORT:
.LFB82:
	.loc 1 160 0
.LVL6:
	.loc 1 162 0
	lis 9,.LC5@ha
	.loc 1 160 0
	stwu 1,-16(1)
.LCFI3:
	.loc 1 162 0
	lfs 0,.LC5@l(9)
	addi 11,1,8
	lwz 9,0(3)
	fmuls 1,1,0
.LVL7:
	addi 0,9,2
	stw 0,0(3)
	fctiwz 0,1
	stfiwx 0,0,11
	lwz 0,8(1)
	.loc 1 163 0
	addi 1,1,16
	.loc 1 162 0
	sth 0,0(9)
	.loc 1 163 0
	blr
.LFE82:
	.size	put_SHORT, .-put_SHORT
	.align 2
	.type	put_UINT, @function
put_UINT:
.LFB83:
	.loc 1 165 0
.LVL8:
	.loc 1 167 0
	lis 9,.LC6@ha
	lwz 11,0(3)
	lfs 0,.LC6@l(9)
	lis 9,.LC8@ha
	fmuls 1,1,0
.LVL9:
	fmr 0,1
	lfs 1,.LC8@l(9)
	fcmpu 7,0,1
	cror 30,29,30
	beq- 7,.L10
	fctiwz 0,0
	addi 0,11,4
	stw 0,0(3)
	stfiwx 0,0,11
	.loc 1 168 0
	blr
.L10:
	.loc 1 167 0
	fsub 0,0,1
	addi 0,11,4
	stw 0,0(3)
	fctiwz 13,0
	stfiwx 13,0,11
	lwz 9,0(11)
	addis 9,9,0x8000
	stw 9,0(11)
	.loc 1 168 0
	blr
.LFE83:
	.size	put_UINT, .-put_UINT
	.align 2
	.type	put_INT, @function
put_INT:
.LFB84:
	.loc 1 170 0
.LVL10:
	.loc 1 172 0
	lis 9,.LC8@ha
	lfs 0,.LC8@l(9)
	lwz 9,0(3)
	fmuls 1,1,0
.LVL11:
	addi 0,9,4
	stw 0,0(3)
	fctiwz 0,1
	stfiwx 0,0,9
	.loc 1 173 0
	blr
.LFE84:
	.size	put_INT, .-put_INT
	.align 2
	.type	put_FLOAT, @function
put_FLOAT:
.LFB85:
	.loc 1 175 0
.LVL12:
	.loc 1 177 0
	lwz 9,0(3)
	addi 0,9,4
	stfs 1,0(9)
	stw 0,0(3)
	.loc 1 178 0
	blr
.LFE85:
	.size	put_FLOAT, .-put_FLOAT
	.align 2
	.globl glGetTexImage
	.type	glGetTexImage, @function
glGetTexImage:
.LFB99:
	.loc 1 523 0
.LVL13:
	mflr 0
.LCFI4:
	stwu 1,-8(1)
.LCFI5:
	.loc 1 524 0
	lis 9,cur_state@ha
	.loc 1 523 0
	stw 0,12(1)
.LCFI6:
	.loc 1 524 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L21
	lis 4,.LC11@ha
.LVL14:
	li 3,1282
.LVL15:
	la 4,.LC11@l(4)
	li 5,524
.LVL16:
	bl _glSetErrorEx
.LVL17:
.LVL18:
.L21:
	.loc 1 525 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE99:
	.size	glGetTexImage, .-glGetTexImage
	.align 2
	.globl glReadBuffer
	.type	glReadBuffer, @function
glReadBuffer:
.LFB66:
	.loc 1 6 0
.LVL19:
	mflr 0
.LCFI7:
	stwu 1,-8(1)
.LCFI8:
	.loc 1 7 0
	lis 9,cur_state@ha
	.loc 1 6 0
	stw 0,12(1)
.LCFI9:
	.loc 1 7 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L30
	.loc 1 9 0
	addi 3,3,-1024
.LVL20:
	cmplwi 7,3,6
	ble- 7,.L31
.L26:
	.loc 1 21 0
	lis 4,.LC11@ha
	li 3,1282
	la 4,.LC11@l(4)
	li 5,21
	bl _glSetErrorEx
	.loc 1 24 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L31:
	.loc 1 9 0
	li 0,1
	slw 0,0,3
	andi. 9,0,81
	bne- 0,.L27
	andi. 9,0,36
	beq- 0,.L26
	.loc 1 18 0
	li 0,1029
	lis 9,read_mode@ha
	stw 0,read_mode@l(9)
	.loc 1 24 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L27:
	.loc 1 14 0
	li 0,1028
	lis 9,read_mode@ha
	stw 0,read_mode@l(9)
	.loc 1 24 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL21:
.L30:
	.loc 1 7 0
	lis 4,.LC11@ha
	li 3,1282
.LVL22:
	la 4,.LC11@l(4)
	li 5,7
	bl _glSetErrorEx
	.loc 1 24 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE66:
	.size	glReadBuffer, .-glReadBuffer
	.align 2
	.type	write_rgb, @function
write_rgb:
.LFB95:
	.loc 1 224 0
.LVL23:
	.loc 1 225 0
	addis 9,4,0xffff
	.loc 1 224 0
	mflr 0
.LCFI10:
	.loc 1 225 0
	addi 9,9,32544
	.loc 1 224 0
	stwu 1,-80(1)
.LCFI11:
	.loc 1 225 0
	cmplwi 7,9,1
	.loc 1 224 0
	stfd 29,56(1)
.LCFI12:
	stfd 30,64(1)
.LCFI13:
	stfd 31,72(1)
.LCFI14:
	stw 29,44(1)
.LCFI15:
	stw 31,52(1)
.LCFI16:
	stw 0,84(1)
.LCFI17:
	.loc 1 225 0
	bgt- 7,.L33
.LBB100:
	.loc 1 230 0
	lbz 0,0(6)
.LVL24:
	.loc 1 231 0
	lbz 9,2(6)
	.loc 1 232 0
	stb 0,2(6)
	.loc 1 231 0
	stb 9,0(6)
.L33:
.LBE100:
	.loc 1 237 0
	xoris 0,5,0xffff
.LVL25:
	cmpwi 7,0,-32716
	beq 7,.L45
	cmplwi 7,5,32820
	ble- 7,.L105
	xoris 0,5,0xffff
	cmpwi 7,0,-31900
	beq 7,.L50
	cmplwi 7,5,33636
	ble- 7,.L106
	xoris 0,5,0xffff
	cmpwi 7,0,-31898
	beq 7,.L52
	cmplwi 7,5,33638
	blt- 7,.L51
	xoris 0,5,0xffff
	cmpwi 7,0,-31897
	beq 7,.L53
	xoris 0,5,0xffff
	cmpwi 7,0,-31896
	bne 7,.L35
.LBB101:
.LBB105:
	.loc 1 123 0
	lbz 0,0(6)
	lis 10,0x4330
	stw 10,24(1)
	lis 9,.LC13@ha
	xoris 0,0,0x8000
	lfs 9,.LC13@l(9)
	stw 0,28(1)
	lis 9,.LC14@ha
	lfd 11,.LC14@l(9)
	addi 9,1,32
	.loc 1 128 0
	lbz 0,1(6)
	.loc 1 123 0
	lfd 12,24(1)
	.loc 1 133 0
	lbz 11,2(6)
	.loc 1 128 0
	xoris 0,0,0x8000
	stw 0,28(1)
	.loc 1 123 0
	fsub 12,12,9
	.loc 1 133 0
	xoris 11,11,0x8000
	.loc 1 128 0
	lfd 13,24(1)
	.loc 1 133 0
	stw 11,28(1)
	.loc 1 123 0
	fmul 12,12,11
	.loc 1 128 0
	addi 11,1,32
	fsub 13,13,9
	.loc 1 133 0
	lfd 0,24(1)
	fsub 0,0,9
	.loc 1 123 0
	fctiwz 10,12
	.loc 1 128 0
	fmul 13,13,11
	.loc 1 133 0
	fmul 0,0,11
	.loc 1 123 0
	stfiwx 10,0,9
	.loc 1 128 0
	fctiwz 12,13
	.loc 1 123 0
	lhz 0,34(1)
.LVL26:
	.loc 1 133 0
	fctiwz 13,0
	.loc 1 139 0
	cmplwi 7,0,1023
	.loc 1 128 0
	stfiwx 12,0,11
	.loc 1 139 0
	mr 9,0
	.loc 1 128 0
	lhz 10,34(1)
.LVL27:
	.loc 1 133 0
	stfiwx 13,0,11
	lhz 0,34(1)
.LVL28:
	.loc 1 139 0
	ble- 7,.L63
	li 9,1023
.L63:
	cmplwi 7,0,1023
	mr 11,9
	ble- 7,.L64
	li 0,1023
.LVL29:
.L64:
	cmplwi 7,10,1023
	slwi 0,0,20
.LVL30:
	mr 9,10
.LVL31:
	or 11,11,0
	ble- 7,.L65
.LVL32:
	li 9,1023
.LVL33:
.L65:
	slwi 0,9,10
	or 0,11,0
	stw 0,0(3)
	b .L103
.LVL34:
.L105:
.LBE105:
.LBE101:
	.loc 1 237 0
	cmpwi 7,5,5124
	beq- 7,.L40
	cmplwi 7,5,5124
	ble- 7,.L107
	cmpwi 7,5,5126
	beq- 7,.L42
	cmplwi 7,5,5126
	bge- 7,.L108
.LBB109:
.LBB104:
	.loc 1 298 0
	lis 9,put_UINT@ha
	la 31,put_UINT@l(9)
.LVL35:
.L66:
.LBE104:
.LBE109:
.LBB110:
.LBB112:
.LBB123:
.LBB125:
	.file 2 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/glint.h"
	.loc 2 364 0
	lbz 0,0(6)
	lis 9,0x4330
	stw 9,24(1)
	lis 5,.LC13@ha
.LVL36:
	xoris 0,0,0x8000
	lfs 13,.LC13@l(5)
	stw 0,28(1)
	lis 7,.LC1@ha
	lfs 12,.LC1@l(7)
	lis 9,Trans@ha
	lfd 0,24(1)
	la 10,Trans@l(9)
	lfs 11,Trans@l(9)
	.loc 2 366 0
	lis 8,.LC16@ha
	.loc 2 364 0
	fsub 0,0,13
	lfs 13,4(10)
.LBE125:
.LBE123:
.LBE112:
.LBE110:
	.loc 1 319 0
	lbz 9,1(6)
	.loc 1 320 0
	lbz 29,2(6)
.LBB135:
.LBB133:
.LBB128:
.LBB126:
	.loc 2 364 0
	frsp 0,0
.LBE126:
.LBE128:
.LBE133:
.LBE135:
	.loc 1 321 0
	lbz 6,3(6)
.LVL37:
.LBB136:
.LBB111:
.LBB122:
.LBB124:
	.loc 2 364 0
	fdivs 0,0,12
	.loc 2 366 0
	lfs 12,.LC16@l(8)
	.loc 2 364 0
	fmadds 1,0,11,13
	.loc 2 366 0
	fcmpu 7,1,12
	bng- 7,.L67
	fmr 1,12
.L70:
.LBE124:
.LBE122:
.LBB119:
.LBB120:
	.loc 2 364 0
	xoris 9,9,0x8000
	lis 0,0x4330
	stw 9,28(1)
	stw 0,24(1)
	lfs 13,.LC13@l(5)
	lfd 0,24(1)
	lfs 11,.LC1@l(7)
	fsub 0,0,13
	lfs 12,8(10)
	lfs 13,12(10)
	.loc 2 366 0
	lfs 10,.LC16@l(8)
	.loc 2 364 0
	frsp 0,0
	fdivs 0,0,11
	fmadds 29,0,12,13
	.loc 2 366 0
	fcmpu 7,29,10
	bng- 7,.L73
	fmr 29,10
.L76:
.LBE120:
.LBE119:
.LBB116:
.LBB117:
	.loc 2 364 0
	xoris 9,29,0x8000
	lis 0,0x4330
	stw 9,28(1)
	stw 0,24(1)
	lfs 13,.LC13@l(5)
	lfd 0,24(1)
	lfs 11,.LC1@l(7)
	fsub 0,0,13
	lfs 12,16(10)
	lfs 13,20(10)
	.loc 2 366 0
	lfs 10,.LC16@l(8)
	.loc 2 364 0
	frsp 0,0
	fdivs 0,0,11
	fmadds 30,0,12,13
	.loc 2 366 0
	fcmpu 7,30,10
	bng- 7,.L79
	fmr 30,10
.L82:
.LBE117:
.LBE116:
.LBB113:
.LBB114:
	.loc 2 364 0
	xoris 0,6,0x8000
	lis 9,0x4330
	stw 0,28(1)
	stw 9,24(1)
	lfs 13,.LC13@l(5)
	lfd 0,24(1)
	lfs 11,.LC1@l(7)
	fsub 0,0,13
	lfs 12,28(10)
	lfs 13,24(10)
	.loc 2 366 0
	lfs 10,.LC16@l(8)
	.loc 2 364 0
	frsp 0,0
	fdivs 0,0,11
	fmadds 31,0,13,12
	.loc 2 366 0
	fcmpu 7,31,10
	bng- 7,.L85
	fmr 31,10
.L88:
.LBE114:
.LBE113:
.LBE111:
.LBE136:
	.loc 1 325 0
	cmpwi 7,4,6407
	beq- 7,.L96
	cmplwi 7,4,6407
	bgt- 7,.L100
	cmpwi 7,4,6404
	beq- 7,.L93
	cmplwi 7,4,6404
	ble- 7,.L109
	cmpwi 7,4,6405
	beq- 7,.L94
	cmpwi 7,4,6406
	bne+ 7,.L91
.LBB137:
.LBB138:
	.loc 1 190 0
	stw 3,8(1)
.LVL38:
.LBE138:
.LBE137:
.LBB140:
.LBB141:
	.loc 1 194 0
	fmr 1,31
	addi 3,1,8
.LVL39:
	mtctr 31
	bctrl
.LVL40:
	b .L103
.LVL41:
.L106:
.LBE141:
.LBE140:
	.loc 1 237 0
	xoris 0,5,0xffff
	cmpwi 7,0,-32714
	beq 7,.L47
	cmplwi 7,5,32822
	blt- 7,.L46
	xoris 0,5,0xffff
	cmpwi 7,0,-31902
	beq 7,.L48
	xoris 0,5,0xffff
	cmpwi 7,0,-31901
	bne 7,.L35
.LBB143:
.LBB144:
	.loc 1 48 0
	lbz 0,1(6)
	lbz 9,2(6)
	lbz 11,0(6)
	rlwinm 0,0,3,21,26
	srwi 9,9,3
	or 0,0,9
	rlwinm 11,11,8,16,20
	or 0,0,11
	sth 0,0(3)
	b .L103
.L107:
.LBE144:
.LBE143:
	.loc 1 237 0
	cmpwi 7,5,5121
	beq- 7,.L37
	cmplwi 7,5,5121
	ble- 7,.L110
	cmpwi 7,5,5122
	beq- 7,.L38
	cmpwi 7,5,5123
	bne+ 7,.L35
.LBB145:
.LBB106:
	.loc 1 292 0
	lis 9,put_USHORT@ha
	la 31,put_USHORT@l(9)
.LVL42:
	b .L66
.LVL43:
.L51:
.LBE106:
.LBE145:
.LBB146:
.LBB147:
	.loc 1 66 0
	lbz 0,0(6)
	lbz 9,1(6)
	lbz 11,3(6)
	srwi 0,0,4
	lbz 10,2(6)
	rlwinm 9,9,0,24,27
	or 0,0,9
	rlwinm 11,11,8,16,19
	or 0,0,11
	rlwinm 10,10,4,20,23
	or 0,0,10
	sth 0,0(3)
.LVL44:
.L103:
.LBE147:
.LBE146:
	.loc 1 360 0
	lwz 0,84(1)
	lwz 29,44(1)
	lwz 31,52(1)
.LVL45:
	mtlr 0
	lfd 29,56(1)
	lfd 30,64(1)
	lfd 31,72(1)
	addi 1,1,80
	blr
.LVL46:
.L46:
.LBB148:
.LBB149:
	.loc 1 84 0
	lbz 9,0(6)
	lbz 0,3(6)
	lbz 11,1(6)
	slwi 9,9,24
	lbz 10,2(6)
	or 0,0,9
	slwi 11,11,16
	or 0,0,11
	slwi 10,10,8
	or 0,0,10
	stw 0,0(3)
	b .L103
.LVL47:
.L100:
.LBE149:
.LBE148:
	.loc 1 325 0
	cmpwi 7,4,6410
	beq- 7,.L99
	cmplwi 7,4,6410
	ble- 7,.L111
	xoris 0,4,0xffff
	cmpwi 7,0,-32544
	beq 7,.L96
	xoris 0,4,0xffff
	cmpwi 7,0,-32543
	bne 7,.L91
.L97:
.LBB150:
.LBB152:
	.loc 1 204 0
	addi 29,1,8
.LBE152:
.LBE150:
.LBB154:
.LBB156:
	.loc 1 200 0
	stw 3,8(1)
.LVL48:
.LBE156:
.LBE154:
.LBB158:
.LBB151:
	.loc 1 204 0
	mtctr 31
	mr 3,29
.LVL49:
	bctrl
.LVL50:
	.loc 1 205 0
	mr 3,29
	fmr 1,29
	mtctr 31
	bctrl
	.loc 1 206 0
	fmr 1,30
	mr 3,29
.LVL51:
.L104:
.LBE151:
.LBE158:
.LBB159:
.LBB161:
	.loc 1 219 0
	mtctr 31
	bctrl
.LVL52:
	.loc 1 220 0
	mr 3,29
	fmr 1,31
	mtctr 31
	bctrl
	b .L103
.LVL53:
.L85:
.LBE161:
.LBE159:
.LBB163:
.LBB134:
.LBB129:
.LBB115:
	.loc 2 368 0
	lis 9,.LC37@ha
	lfs 0,.LC37@l(9)
	fcmpu 7,31,0
	bnl+ 7,.L88
	fmr 31,0
	b .L88
.L79:
.LBE115:
.LBE129:
.LBB130:
.LBB118:
	lis 11,.LC37@ha
	lfs 0,.LC37@l(11)
	fcmpu 7,30,0
	bnl+ 7,.L82
	fmr 30,0
	b .L82
.L73:
.LBE118:
.LBE130:
.LBB131:
.LBB121:
	lis 9,.LC37@ha
	lfs 0,.LC37@l(9)
	fcmpu 7,29,0
	bnl+ 7,.L76
	fmr 29,0
	b .L76
.L67:
.LBE121:
.LBE131:
.LBB132:
.LBB127:
	lis 11,.LC37@ha
	lfs 0,.LC37@l(11)
	fcmpu 7,1,0
	bnl+ 7,.L70
	fmr 1,0
	b .L70
.LVL54:
.L42:
.LBE127:
.LBE132:
.LBE134:
.LBE163:
	.loc 1 310 0
	lis 9,put_FLOAT@ha
	la 31,put_FLOAT@l(9)
.LVL55:
	b .L66
.LVL56:
.L52:
.LBB164:
.LBB165:
	.loc 1 78 0
	lbz 0,3(6)
	lbz 9,2(6)
	lbz 11,0(6)
	rlwinm 0,0,8,16,16
	lbz 10,1(6)
	rlwinm 9,9,7,17,21
	or 0,0,9
	srwi 11,11,3
	or 0,0,11
	rlwinm 10,10,2,22,26
	or 0,0,10
	sth 0,0(3)
	b .L103
.L50:
.LBE165:
.LBE164:
.LBB166:
.LBB167:
	.loc 1 54 0
	lbz 0,2(6)
	lbz 9,1(6)
	lbz 11,0(6)
	rlwinm 0,0,8,16,20
	rlwinm 9,9,3,21,26
	or 0,0,9
	srwi 11,11,3
	or 0,0,11
	sth 0,0(3)
	b .L103
.L37:
.LBE167:
.LBE166:
.LBB168:
.LBB103:
	.loc 1 139 0
	lis 9,put_UBYTE@ha
	la 31,put_UBYTE@l(9)
.LVL57:
	b .L66
.LVL58:
.L47:
.LBE103:
.LBE168:
.LBB169:
.LBB170:
	.loc 1 100 0
	lbz 0,0(6)
	lis 10,0x4330
	stw 10,24(1)
	lis 9,.LC13@ha
	xoris 0,0,0x8000
	lfs 9,.LC13@l(9)
	stw 0,28(1)
	lis 9,.LC14@ha
	lfd 11,.LC14@l(9)
	addi 9,1,32
	.loc 1 105 0
	lbz 0,1(6)
	.loc 1 100 0
	lfd 12,24(1)
	.loc 1 110 0
	lbz 11,2(6)
	.loc 1 105 0
	xoris 0,0,0x8000
	stw 0,28(1)
	.loc 1 100 0
	fsub 12,12,9
	.loc 1 110 0
	xoris 11,11,0x8000
	.loc 1 105 0
	lfd 13,24(1)
	.loc 1 110 0
	stw 11,28(1)
	.loc 1 100 0
	fmul 12,12,11
	.loc 1 105 0
	addi 11,1,32
	fsub 13,13,9
	.loc 1 110 0
	lfd 0,24(1)
	fsub 0,0,9
	.loc 1 100 0
	fctiwz 10,12
	.loc 1 105 0
	fmul 13,13,11
	.loc 1 110 0
	fmul 0,0,11
	.loc 1 100 0
	stfiwx 10,0,9
	.loc 1 105 0
	fctiwz 12,13
	.loc 1 100 0
	lhz 0,34(1)
.LVL59:
	.loc 1 110 0
	fctiwz 13,0
	.loc 1 116 0
	cmplwi 7,0,1023
	.loc 1 105 0
	stfiwx 12,0,11
	.loc 1 116 0
	mr 9,0
	.loc 1 105 0
	lhz 0,34(1)
.LVL60:
	.loc 1 110 0
	stfiwx 13,0,11
	lhz 11,34(1)
.LVL61:
	.loc 1 116 0
	bgt- 7,.L112
.L60:
	cmplwi 7,0,1023
	mr 8,0
	lbz 0,3(6)
.LVL62:
	slwi 9,9,22
.LVL63:
	srwi 0,0,6
	or 6,9,0
.LVL64:
	bgt- 7,.L113
.L61:
	cmplwi 7,11,1023
	slwi 0,8,12
	mr 10,11
	or 6,6,0
	bgt- 7,.L114
.LVL65:
.L62:
	slwi 0,10,2
	or 0,6,0
	stw 0,0(3)
	b .L103
.LVL66:
.L40:
.LBE170:
.LBE169:
.LBB171:
.LBB107:
	.loc 1 301 0
	lis 9,put_INT@ha
	la 31,put_INT@l(9)
.LVL67:
	b .L66
.LVL68:
.L45:
.LBE107:
.LBE171:
.LBB172:
.LBB173:
	.loc 1 72 0
	lbz 0,1(6)
	lbz 9,2(6)
	lbz 11,0(6)
	rlwinm 0,0,3,21,25
	lbz 10,3(6)
	rlwinm 9,9,30,26,30
	or 0,0,9
	rlwinm 11,11,8,16,20
	or 0,0,11
	srwi 10,10,7
	or 0,0,10
	sth 0,0(3)
	b .L103
.L108:
.LBE173:
.LBE172:
	.loc 1 237 0
	xoris 0,5,0xffff
	cmpwi 7,0,-32718
	beq 7,.L43
	xoris 0,5,0xffff
	cmpwi 7,0,-32717
	beq 7,.L115
.L35:
	.loc 1 310 0
	lis 3,.LC11@ha
.LVL69:
	lis 5,.LANCHOR0@ha
.LVL70:
	lis 6,.LC15@ha
.LVL71:
	la 3,.LC11@l(3)
	la 5,.LANCHOR0@l(5)
	la 6,.LC15@l(6)
	li 4,310
.LVL72:
	bl __assert_func
.LVL73:
.L110:
	.loc 1 237 0
	cmpwi 7,5,5120
	bne+ 7,.L35
.LBB174:
.LBB102:
	.loc 1 289 0
	lis 9,put_BYTE@ha
	la 31,put_BYTE@l(9)
.LVL74:
	b .L66
.LVL75:
.L111:
.LBE102:
.LBE174:
	.loc 1 325 0
	cmpwi 7,4,6408
	beq- 7,.L97
	cmpwi 7,4,6409
	beq- 7,.L116
.L91:
	.loc 1 357 0
	lis 3,.LC11@ha
.LVL76:
	lis 5,.LANCHOR0@ha
	lis 6,.LC15@ha
	la 3,.LC11@l(3)
	la 5,.LANCHOR0@l(5)
	la 6,.LC15@l(6)
	li 4,357
.LVL77:
	bl __assert_func
.LVL78:
.L109:
	.loc 1 325 0
	cmpwi 7,4,6403
	bne+ 7,.L91
	stw 3,8(1)
.LVL79:
.LBB175:
.LBB176:
	.loc 1 182 0
	mtctr 31
	addi 3,1,8
.LVL80:
	bctrl
.LVL81:
	b .L103
.LVL82:
.L114:
	li 10,1023
	b .L62
.LVL83:
.L113:
	li 8,1023
	b .L61
.LVL84:
.L112:
	li 9,1023
	b .L60
.LVL85:
.L48:
.LBE176:
.LBE175:
.LBB178:
.LBB179:
	.loc 1 42 0
	lbz 0,0(6)
	lbz 9,2(6)
	lbz 11,1(6)
	srwi 0,0,5
	rlwinm 9,9,0,0,25
	or 0,0,9
	rlwinm 11,11,2,22,24
	or 0,0,11
	stb 0,0(3)
	b .L103
.L53:
.LBE179:
.LBE178:
.LBB180:
.LBB181:
	.loc 1 90 0
	lbz 0,3(6)
	lbz 9,2(6)
	lbz 11,1(6)
	slwi 0,0,24
	lbz 10,0(6)
	slwi 9,9,16
	or 0,0,9
	slwi 11,11,8
	or 0,0,10
	or 0,0,11
	stw 0,0(3)
	b .L103
.L38:
.LBE181:
.LBE180:
.LBB182:
.LBB108:
	.loc 1 295 0
	lis 9,put_SHORT@ha
	la 31,put_SHORT@l(9)
.LVL86:
	b .L66
.LVL87:
.L115:
.LBE108:
.LBE182:
.LBB183:
.LBB184:
	.loc 1 60 0
	lbz 0,0(6)
	lbz 9,2(6)
	lbz 11,1(6)
	rlwinm 0,0,8,16,19
	lbz 10,3(6)
	rlwinm 9,9,0,24,27
	or 0,0,9
	rlwinm 11,11,4,20,23
	or 0,0,11
	srwi 10,10,4
	or 0,0,10
	sth 0,0(3)
	b .L103
.L43:
.LBE184:
.LBE183:
.LBB185:
.LBB186:
	.loc 1 36 0
	lbz 0,1(6)
	lbz 9,2(6)
	lbz 11,0(6)
	rlwinm 0,0,29,27,29
	srwi 9,9,6
	or 0,0,9
	rlwinm 11,11,0,0,26
	or 0,0,11
	stb 0,0(3)
	b .L103
.LVL88:
.L99:
.LBE186:
.LBE185:
.LBB187:
.LBB160:
	.loc 1 219 0
	fadds 0,1,29
	lis 9,.LC17@ha
	lfs 13,.LC17@l(9)
	addi 9,1,32
	lis 0,0x4330
	addi 29,1,8
	fadds 0,30,0
	stw 0,24(1)
.LBE160:
.LBE187:
.LBB188:
.LBB190:
	.loc 1 215 0
	stw 3,8(1)
.LVL89:
.LBE190:
.LBE188:
.LBB192:
.LBB162:
	.loc 1 219 0
	mr 3,29
.LVL90:
	fdivs 0,0,13
	fctiwz 13,0
	stfiwx 13,0,9
	lis 9,.LC19@ha
	lfs 0,.LC19@l(9)
	lbz 0,35(1)
	stw 0,28(1)
	lfd 1,24(1)
	fsub 1,1,0
	frsp 1,1
	b .L104
.LVL91:
.L96:
.LBE162:
.LBE192:
.LBB193:
.LBB155:
	.loc 1 198 0
	addi 29,1,8
.LBE155:
.LBE193:
.LBB194:
.LBB142:
	.loc 1 194 0
	stw 3,8(1)
.LVL92:
.LBE142:
.LBE194:
.LBB195:
.LBB157:
	.loc 1 198 0
	mtctr 31
	mr 3,29
.LVL93:
	bctrl
.LVL94:
	.loc 1 199 0
	mr 3,29
	fmr 1,29
	mtctr 31
	bctrl
	.loc 1 200 0
	mr 3,29
	fmr 1,30
	mtctr 31
	bctrl
	b .L103
.LVL95:
.L94:
.LBE157:
.LBE195:
.LBB196:
.LBB197:
	.loc 1 186 0
	stw 3,8(1)
.LVL96:
.LBE197:
.LBE196:
.LBB199:
.LBB139:
	.loc 1 190 0
	fmr 1,30
	addi 3,1,8
.LVL97:
	mtctr 31
	bctrl
.LVL98:
	b .L103
.LVL99:
.L116:
.LBE139:
.LBE199:
.LBB200:
.LBB189:
	.loc 1 215 0
	fadds 0,1,29
	lis 9,.LC17@ha
	lfs 13,.LC17@l(9)
	addi 9,1,32
	lis 0,0x4330
.LBE189:
.LBE200:
.LBB201:
.LBB153:
	.loc 1 207 0
	stw 3,8(1)
.LVL100:
.LBE153:
.LBE201:
.LBB202:
.LBB191:
	.loc 1 215 0
	fadds 0,30,0
	stw 0,24(1)
	addi 3,1,8
.LVL101:
	mtctr 31
	fdivs 0,0,13
	fctiwz 13,0
	stfiwx 13,0,9
	lis 9,.LC19@ha
	lfs 0,.LC19@l(9)
	lbz 0,35(1)
	stw 0,28(1)
	lfd 1,24(1)
	fsub 1,1,0
	frsp 1,1
	bctrl
.LVL102:
	b .L103
.LVL103:
.L93:
.LBE191:
.LBE202:
.LBB203:
.LBB177:
	.loc 1 182 0
	stw 3,8(1)
.LVL104:
.LBE177:
.LBE203:
.LBB204:
.LBB198:
	.loc 1 186 0
	fmr 1,29
	addi 3,1,8
.LVL105:
	mtctr 31
	bctrl
.LVL106:
	b .L103
.LBE198:
.LBE204:
.LFE95:
	.size	write_rgb, .-write_rgb
	.align 2
	.globl glReadPixels
	.type	glReadPixels, @function
glReadPixels:
.LFB98:
	.loc 1 389 0
.LVL107:
	mflr 0
.LCFI18:
	stwu 1,-208(1)
.LCFI19:
	.loc 1 390 0
	lis 11,cur_state@ha
	.loc 1 389 0
	mfcr 12
.LCFI20:
	stw 14,48(1)
.LCFI21:
	mr 14,9
	stw 0,212(1)
.LCFI22:
	stw 19,68(1)
.LCFI23:
	mr 19,4
	.loc 1 390 0
	lwz 0,cur_state@l(11)
	.loc 1 389 0
	stw 20,72(1)
.LCFI24:
	mr 20,6
	.loc 1 390 0
	andi. 11,0,1
	.loc 1 389 0
	stw 23,84(1)
.LCFI25:
	stw 24,88(1)
.LCFI26:
	mr 23,5
	stw 25,92(1)
.LCFI27:
	mr 24,8
	stw 28,104(1)
.LCFI28:
	mr 25,7
	stfd 21,120(1)
.LCFI29:
	mr 28,3
	stfd 22,128(1)
.LCFI30:
	stfd 23,136(1)
.LCFI31:
	stfd 24,144(1)
.LCFI32:
	stfd 25,152(1)
.LCFI33:
	stfd 26,160(1)
.LCFI34:
	stfd 27,168(1)
.LCFI35:
	stfd 28,176(1)
.LCFI36:
	stfd 29,184(1)
.LCFI37:
	stfd 30,192(1)
.LCFI38:
	stfd 31,200(1)
.LCFI39:
	stw 15,52(1)
.LCFI40:
	stw 16,56(1)
.LCFI41:
	stw 17,60(1)
.LCFI42:
	stw 18,64(1)
.LCFI43:
	stw 21,76(1)
.LCFI44:
	stw 22,80(1)
.LCFI45:
	stw 26,96(1)
.LCFI46:
	stw 27,100(1)
.LCFI47:
	stw 29,108(1)
.LCFI48:
	stw 30,112(1)
.LCFI49:
	stw 31,116(1)
.LCFI50:
	stw 12,44(1)
.LCFI51:
	.loc 1 390 0
	bne- 0,.L195
.LVL108:
	.loc 1 392 0
	cmpwi 7,5,0
	blt- 7,.L121
.LVL109:
	cmpwi 7,6,0
	blt- 7,.L121
.LVL110:
	.loc 1 399 0
	cmplwi 7,7,6403
	bge- 7,.L196
.LVL111:
.L124:
	.loc 1 416 0
	lis 4,.LC11@ha
	li 3,1280
	la 4,.LC11@l(4)
	li 5,416
.LVL112:
	bl _glSetErrorEx
.LVL113:
.LVL114:
.L193:
	.loc 1 518 0
	lwz 0,212(1)
	lwz 12,44(1)
	lwz 14,48(1)
.LVL115:
	mtlr 0
	lwz 15,52(1)
	mtcrf 8,12
	lwz 16,56(1)
	lwz 17,60(1)
	lwz 18,64(1)
.LVL116:
	lwz 19,68(1)
.LVL117:
	lwz 20,72(1)
.LVL118:
	lwz 21,76(1)
.LVL119:
	lwz 22,80(1)
	lwz 23,84(1)
.LVL120:
	lwz 24,88(1)
.LVL121:
	lwz 25,92(1)
.LVL122:
	lwz 26,96(1)
	lwz 27,100(1)
.LVL123:
	lwz 28,104(1)
.LVL124:
	lwz 29,108(1)
.LVL125:
	lwz 30,112(1)
.LVL126:
	lwz 31,116(1)
.LVL127:
	lfd 21,120(1)
	lfd 22,128(1)
	lfd 23,136(1)
	lfd 24,144(1)
	lfd 25,152(1)
	lfd 26,160(1)
	lfd 27,168(1)
	lfd 28,176(1)
	lfd 29,184(1)
	lfd 30,192(1)
	lfd 31,200(1)
	addi 1,1,208
	blr
.LVL128:
.L121:
	.loc 1 394 0
	lis 4,.LC11@ha
	li 3,1281
	la 4,.LC11@l(4)
	li 5,394
.LVL129:
	bl _glSetErrorEx
	b .L193
.LVL130:
.L195:
	.loc 1 390 0
	lis 4,.LC11@ha
	li 3,1282
	la 4,.LC11@l(4)
	li 5,390
	bl _glSetErrorEx
	b .L193
.LVL131:
.L196:
	.loc 1 399 0
	cmplwi 7,7,6410
	bgt- 7,.L197
.L125:
	.loc 1 422 0
	cmplwi 7,24,32822
	ble- 7,.L198
	addis 9,24,0xffff
	addi 9,9,31902
	cmplwi 7,9,6
	ble- 7,.L127
.LVL132:
.L126:
	.loc 1 446 0
	lis 4,.LC11@ha
	li 3,1280
	la 4,.LC11@l(4)
	li 5,446
.LVL133:
	bl _glSetErrorEx
.LVL134:
	b .L193
.LVL135:
.L198:
	.loc 1 422 0
	cmplwi 7,24,32818
	bge- 7,.L127
	addi 0,24,-5120
	cmplwi 7,0,6
	bgt- 7,.L126
.L127:
	.loc 1 453 0
	lis 9,read_mode@ha
	lwz 0,read_mode@l(9)
	cmpwi 7,0,1028
	beq- 7,.L130
	cmpwi 7,0,1029
	bne+ 7,.L193
	.loc 1 461 0
	bl getBackFramebuffer
.LVL136:
	.loc 1 462 0
	li 4,0
	.loc 1 461 0
	mr 29,3
.LVL137:
	.loc 1 462 0
	bl GX_CopyDisp
	.loc 1 463 0
	bl GX_DrawDone
.L132:
	.loc 1 466 0
	cmpwi 7,29,0
	beq- 7,.L193
	.loc 1 474 0
	addi 3,1,8
	addi 4,1,12
	bl getVImode
	.loc 1 478 0
	lwz 0,12(1)
.LVL138:
	addic. 27,0,-1
.LVL139:
	blt- 0,.L193
.LVL140:
	.loc 1 480 0
	cmpw 7,27,19
	blt- 7,.L193
.LBB222:
.LBB223:
.LBB226:
	.loc 1 380 0
	lis 5,.LC38@ha
	lis 9,.LC39@ha
	lfd 31,.LC38@l(5)
	lis 5,.LC42@ha
	lfd 30,.LC39@l(9)
	.loc 1 381 0
	lis 9,.LC43@ha
	.loc 1 380 0
	lfd 29,.LC42@l(5)
	.loc 1 381 0
	lis 5,.LC44@ha
	lfd 28,.LC43@l(9)
	lis 9,.LC45@ha
	.loc 1 380 0
	lis 15,.LC19@ha
	lis 17,.LC41@ha
.LBB228:
.LBB230:
	.loc 1 364 0
	lis 16,.LC1@ha
.LBE230:
.LBE228:
	.loc 1 381 0
	lfd 27,.LC44@l(5)
	lfd 26,.LC45@l(9)
	.loc 1 382 0
	lis 5,.LC46@ha
	lis 9,.LC47@ha
	lwz 11,8(1)
.LVL141:
	.loc 1 380 0
	lfs 23,.LC19@l(15)
.LBE226:
.LBE223:
.LBE222:
	.loc 1 482 0
	subf 22,19,27
.LBB277:
.LBB247:
.LBB225:
	.loc 1 380 0
	lfs 22,.LC41@l(17)
.LBB227:
.LBB231:
	.loc 1 364 0
	lfs 21,.LC1@l(16)
.LBE231:
.LBE227:
	.loc 1 382 0
	lfd 25,.LC46@l(5)
	lfd 24,.LC47@l(9)
.LVL142:
.L136:
.LBE225:
.LBE247:
.LBE277:
	.loc 1 485 0
	cmpwi 7,11,0
	beq- 7,.L138
	add 0,20,19
	li 8,0
.LVL143:
	cmpw 4,27,0
	b .L140
.LVL144:
.L199:
.LBB278:
	.loc 1 489 0
	addi 31,8,1
.LVL145:
.L143:
.LBE278:
	.loc 1 485 0
	cmplw 7,31,11
	bge- 7,.L138
.LVL146:
.L200:
	mr 8,31
.LVL147:
.L140:
.LBB279:
	.loc 1 487 0
	lwz 30,0(29)
.LVL148:
	addi 29,29,4
	.loc 1 489 0
	bgt- 4,.L199
	addi 31,8,1
.LVL149:
	cmpw 7,31,28
	blt- 7,.L143
	add 26,23,28
	cmpw 7,26,8
	blt- 7,.L143
.LVL150:
	.loc 1 501 0
	cmpw 7,28,8
	.loc 1 495 0
	rlwinm 18,30,16,24,31
	.loc 1 497 0
	rlwinm 21,30,0,0xff
.LVL151:
	.loc 1 501 0
	bgt- 7,.L146
.LBB248:
.LBB250:
	.loc 1 380 0
	lis 9,0x4330
	srwi 0,30,24
	stw 0,28(1)
	lis 11,.LC38@ha
.LVL152:
	stw 9,24(1)
	lis 5,.LC39@ha
	lfs 11,.LC19@l(15)
	lis 9,.LC42@ha
	lfd 13,24(1)
.LBB251:
.LBB253:
	.loc 1 364 0
	li 12,255
.LBE253:
.LBE251:
	.loc 1 380 0
	stw 21,28(1)
	fsub 13,13,11
	lfd 9,.LC38@l(11)
	lfd 0,24(1)
	lfd 12,.LC39@l(5)
	frsp 13,13
	lfd 10,.LC42@l(9)
	fsub 0,0,11
	fmr 11,13
	lfs 13,.LC41@l(17)
	frsp 0,0
	fmul 8,11,9
	fmr 6,0
.LBB255:
.LBB252:
	.loc 1 364 0
	lfs 0,.LC1@l(16)
.LBE252:
.LBE255:
	.loc 1 380 0
	fmadd 12,6,12,8
	fmsub 12,12,13,10
	frsp 12,12
.LVL153:
.LBB256:
.LBB254:
	.loc 1 364 0
	fcmpu 7,12,0
	bgt- 7,.L151
	.loc 1 368 0
	lis 11,.LC37@ha
	li 12,0
	lfs 0,.LC37@l(11)
	fcmpu 7,12,0
	blt- 7,.L151
	fmr 0,12
	addi 5,1,32
	fctiwz 13,0
	stfiwx 13,0,5
	lbz 12,35(1)
.L151:
.LBE254:
.LBE256:
	.loc 1 381 0
	lis 0,0x4330
	stw 18,28(1)
	stw 0,24(1)
	lis 9,.LC43@ha
	lfs 13,.LC19@l(15)
	lis 11,.LC44@ha
	lfd 0,24(1)
	lis 5,.LC45@ha
	lfd 11,.LC43@l(9)
.LBB257:
.LBB259:
	.loc 1 364 0
	li 9,255
.LBE259:
.LBE257:
	.loc 1 381 0
	fsub 0,0,13
	lfd 12,.LC44@l(11)
.LVL154:
	lfs 13,.LC41@l(17)
.LBB262:
.LBB260:
	.loc 1 364 0
	mtctr 9
.LBE260:
.LBE262:
	.loc 1 381 0
	lfd 10,.LC45@l(5)
	frsp 0,0
.LBB263:
.LBB258:
	.loc 1 364 0
	lfs 9,.LC1@l(16)
.LBE258:
.LBE263:
	.loc 1 381 0
	fmr 7,0
	fmadd 11,7,11,8
	fmadd 12,6,12,11
	fmadd 12,12,13,10
	frsp 12,12
.LVL155:
.LBB264:
.LBB261:
	.loc 1 364 0
	fcmpu 7,12,9
	bgt- 7,.L158
	.loc 1 368 0
	lis 11,.LC37@ha
	li 0,0
	lfs 0,.LC37@l(11)
	mtctr 0
	fcmpu 7,12,0
	blt- 7,.L158
	fmr 0,12
	addi 5,1,32
	fctiwz 13,0
	stfiwx 13,0,5
	lbz 9,35(1)
	mtctr 9
.L158:
.LBE261:
.LBE264:
	.loc 1 382 0
	lis 11,.LC46@ha
	lis 5,.LC47@ha
	lfd 0,.LC46@l(11)
.LBB265:
.LBB267:
	.loc 1 364 0
	li 0,255
.LBE267:
.LBE265:
	.loc 1 382 0
	lfs 13,.LC41@l(17)
	fmadd 0,7,0,8
	lfd 12,.LC47@l(5)
.LVL156:
.LBB269:
.LBB266:
	.loc 1 364 0
	lfs 11,.LC1@l(16)
.LBE266:
.LBE269:
	.loc 1 382 0
	fmsub 0,0,13,12
	frsp 13,0
.LVL157:
.LBB270:
.LBB268:
	.loc 1 364 0
	fcmpu 7,13,11
	bgt- 7,.L165
	.loc 1 368 0
	lis 9,.LC37@ha
	li 0,0
	lfs 0,.LC37@l(9)
	fcmpu 7,13,0
	blt- 7,.L165
	fmr 0,13
	addi 11,1,32
	fctiwz 13,0
.LVL158:
	stfiwx 13,0,11
	lbz 0,35(1)
.LVL159:
.L165:
.LBE268:
.LBE270:
	.loc 1 382 0
	stb 0,18(1)
.LBE250:
.LBE248:
	.loc 1 504 0
	li 0,-1
	.loc 1 505 0
	lis 11,.LC57@ha
	.loc 1 504 0
	stb 0,19(1)
.LBB272:
.LBB249:
	.loc 1 381 0
	mfctr 0
.LBE249:
.LBE272:
	.loc 1 505 0
	lwz 10,.LC57@l(11)
	mr 6,23
	mr 4,14
	mr 5,24
	subf 8,28,8
.LVL160:
	mr 3,25
	mr 7,20
	mr 9,22
.LBB273:
.LBB271:
	.loc 1 381 0
	stb 0,17(1)
	.loc 1 380 0
	stb 12,16(1)
.LBE271:
.LBE273:
	.loc 1 505 0
	bl pixel_offset
.LVL161:
	mr 4,25
	mr 5,24
	addi 6,1,16
	bl write_rgb
.LVL162:
.L146:
	.loc 1 510 0
	cmpw 7,31,26
	bge- 7,.L194
.LBB274:
.LBB245:
	.loc 1 380 0
	rlwinm 0,30,24,24,31
	lis 9,0x4330
	stw 0,28(1)
	fmr 12,23
	stw 9,24(1)
	fmr 11,22
.LBB233:
.LBB229:
	.loc 1 364 0
	li 30,255
.LVL163:
.LBE229:
.LBE233:
	.loc 1 380 0
	lfd 0,24(1)
	stw 21,28(1)
	fsub 0,0,12
	lfd 13,24(1)
	frsp 0,0
	fsub 13,13,12
	fmr 12,0
	frsp 13,13
	fmul 10,12,31
	fmr 8,13
	fmadd 0,8,30,10
	fmsub 0,0,11,29
	frsp 13,0
.LVL164:
.LBB234:
.LBB232:
	.loc 1 364 0
	fcmpu 7,13,21
	bgt- 7,.L174
	.loc 1 368 0
	lis 5,.LC37@ha
	li 30,0
	lfs 0,.LC37@l(5)
	fcmpu 7,13,0
	blt- 7,.L174
	fmr 0,13
	addi 9,1,32
	fctiwz 13,0
.LVL165:
	stfiwx 13,0,9
	lbz 30,35(1)
.LVL166:
.L174:
.LBE232:
.LBE234:
	.loc 1 381 0
	lis 0,0x4330
	stw 18,28(1)
	stw 0,24(1)
.LBB235:
.LBB237:
	.loc 1 364 0
	li 11,255
.LBE237:
.LBE235:
	.loc 1 381 0
	lfs 0,.LC19@l(15)
	lfd 13,24(1)
.LVL167:
	lfs 12,.LC41@l(17)
	fsub 13,13,0
.LBB239:
.LBB236:
	.loc 1 364 0
	lfs 11,.LC1@l(16)
.LBE236:
.LBE239:
	.loc 1 381 0
	frsp 13,13
	fmr 9,13
	fmadd 0,9,28,10
	fmadd 0,8,27,0
	fmadd 0,0,12,26
	frsp 13,0
.LVL168:
.LBB240:
.LBB238:
	.loc 1 364 0
	fcmpu 7,13,11
	bgt- 7,.L181
	.loc 1 368 0
	lis 11,.LC37@ha
	lfs 0,.LC37@l(11)
	li 11,0
	fcmpu 7,13,0
	blt- 7,.L181
	fmr 0,13
	addi 5,1,32
	fctiwz 13,0
.LVL169:
	stfiwx 13,0,5
	lbz 11,35(1)
.LVL170:
.L181:
.LBE238:
.LBE240:
	.loc 1 382 0
	fmadd 13,9,25,10
.LVL171:
	lfs 0,.LC41@l(17)
.LBB241:
.LBB242:
	.loc 1 364 0
	lfs 12,.LC1@l(16)
	li 0,255
.LBE242:
.LBE241:
	.loc 1 382 0
	fmsub 13,13,0,24
	frsp 13,13
.LVL172:
.LBB244:
.LBB243:
	.loc 1 364 0
	fcmpu 7,13,12
	bgt- 7,.L188
	.loc 1 368 0
	lis 9,.LC37@ha
	li 0,0
	lfs 0,.LC37@l(9)
	fcmpu 7,13,0
	blt- 7,.L188
	fmr 0,13
	addi 5,1,32
	fctiwz 13,0
.LVL173:
	stfiwx 13,0,5
	lbz 0,35(1)
.LVL174:
.L188:
.LBE243:
.LBE244:
.LBE245:
.LBE274:
	.loc 1 514 0
	lis 5,.LC57@ha
	mr 6,23
	lwz 10,.LC57@l(5)
	mr 4,14
	mr 5,24
.LBB275:
.LBB224:
	.loc 1 382 0
	stb 0,18(1)
.LBE224:
.LBE275:
	.loc 1 514 0
	subf 8,28,31
	.loc 1 513 0
	li 0,-1
	.loc 1 514 0
	mr 7,20
	mr 9,22
	mr 3,25
	.loc 1 513 0
	stb 0,19(1)
.LBB276:
.LBB246:
	.loc 1 381 0
	stb 11,17(1)
	.loc 1 380 0
	stb 30,16(1)
.LBE246:
.LBE276:
	.loc 1 514 0
	bl pixel_offset
.LVL175:
	mr 4,25
	mr 5,24
	addi 6,1,16
	bl write_rgb
.LVL176:
.L194:
	lwz 11,8(1)
	addi 31,31,1
.LBE279:
	.loc 1 485 0
	cmplw 7,31,11
	blt+ 7,.L200
.LVL177:
.L138:
	.loc 1 478 0
	addic. 27,27,-1
	blt- 0,.L193
	.loc 1 480 0
	cmpw 7,19,27
	.loc 1 482 0
	addi 22,22,-1
	.loc 1 480 0
	ble+ 7,.L136
	b .L193
.LVL178:
.L197:
	.loc 1 399 0
	addis 9,7,0xffff
	addi 9,9,32544
	cmplwi 7,9,1
	ble- 7,.L125
	b .L124
.L130:
	.loc 1 457 0
	bl getFrontFramebuffer
.LVL179:
	mr 29,3
.LVL180:
	b .L132
.LFE98:
	.size	glReadPixels, .-glReadPixels
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
	.type	__FUNCTION__.13403, @object
	.size	__FUNCTION__.13403, 10
__FUNCTION__.13403:
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
.LC8:
	.4byte	1325400064
.LC13:
	.4byte	1501560836
.LC16:
	.4byte	1065353216
.LC17:
	.4byte	1077936128
.LC19:
	.4byte	1501560832
.LC37:
	.4byte	0
.LC41:
	.4byte	998244352
.LC57:
	.4byte	pack
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC14:
	.4byte	1074793484
	.4byte	202116108
.LC38:
	.4byte	1081254223
	.4byte	-549755814
.LC39:
	.4byte	1081706835
	.4byte	-137438953
.LC42:
	.4byte	1080810872
	.4byte	-721554506
.LC43:
	.4byte	-1067904353
	.4byte	-1099511628
.LC44:
	.4byte	-1066794025
	.4byte	171798692
.LC45:
	.4byte	1080095342
	.4byte	-1752346657
.LC46:
	.4byte	1082139467
	.4byte	-962072674
.LC47:
	.4byte	1081167200
	.4byte	1099511628
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC11:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl_outcopy.c"
	.zero	2
.LC15:
	.string	"0"
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
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x4
	.4byte	.LCFI0-.LFB79
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x4
	.4byte	.LCFI1-.LFB80
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x4
	.4byte	.LCFI2-.LFB81
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI3-.LFB82
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
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
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.byte	0x4
	.4byte	.LCFI5-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI8-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.byte	0x4
	.4byte	.LCFI11-.LFB95
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI17-.LCFI11
	.byte	0x9f
	.uleb128 0x7
	.byte	0x9d
	.uleb128 0x9
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.byte	0x4
	.4byte	.LCFI19-.LFB98
	.byte	0xe
	.uleb128 0xd0
	.byte	0x4
	.4byte	.LCFI21-.LCFI19
	.byte	0x8e
	.uleb128 0x28
	.byte	0x9
	.uleb128 0x40
	.uleb128 0xc
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI23-.LCFI21
	.byte	0x93
	.uleb128 0x23
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x94
	.uleb128 0x22
	.byte	0x4
	.4byte	.LCFI26-.LCFI24
	.byte	0x98
	.uleb128 0x1e
	.byte	0x97
	.uleb128 0x1f
	.byte	0x4
	.4byte	.LCFI28-.LCFI26
	.byte	0x9c
	.uleb128 0x1a
	.byte	0x99
	.uleb128 0x1d
	.byte	0x4
	.4byte	.LCFI51-.LCFI28
	.byte	0x5
	.uleb128 0x40
	.uleb128 0x29
	.byte	0x9f
	.uleb128 0x17
	.byte	0x9e
	.uleb128 0x18
	.byte	0x9d
	.uleb128 0x19
	.byte	0x9b
	.uleb128 0x1b
	.byte	0x9a
	.uleb128 0x1c
	.byte	0x96
	.uleb128 0x20
	.byte	0x95
	.uleb128 0x21
	.byte	0x92
	.uleb128 0x24
	.byte	0x91
	.uleb128 0x25
	.byte	0x90
	.uleb128 0x26
	.byte	0x8f
	.uleb128 0x27
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0xb9
	.uleb128 0xe
	.byte	0xb8
	.uleb128 0x10
	.byte	0xb7
	.uleb128 0x12
	.byte	0xb6
	.uleb128 0x14
	.byte	0xb5
	.uleb128 0x16
	.align 2
.LEFDE20:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB79-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB80-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
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
	.4byte	.LFB81-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB82-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB99-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB95-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL104-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB98-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 208
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL180-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -200
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -200
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
	.file 3 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 5 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 7 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 8 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0x1a60
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF204
	.byte	0x1
	.4byte	.LASF205
	.4byte	.LASF206
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
	.4byte	.LASF207
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
	.byte	0xd6
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x8
	.string	"u8"
	.byte	0x5
	.byte	0xf
	.4byte	0x42
	.uleb128 0x8
	.string	"u16"
	.byte	0x5
	.byte	0x10
	.4byte	0x7b
	.uleb128 0x8
	.string	"u32"
	.byte	0x5
	.byte	0x11
	.4byte	0x30
	.uleb128 0x8
	.string	"s8"
	.byte	0x5
	.byte	0x14
	.4byte	0x50
	.uleb128 0x8
	.string	"s16"
	.byte	0x5
	.byte	0x15
	.4byte	0x57
	.uleb128 0x8
	.string	"s32"
	.byte	0x5
	.byte	0x16
	.4byte	0x69
	.uleb128 0x8
	.string	"f32"
	.byte	0x5
	.byte	0x29
	.4byte	0xa3
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x35
	.4byte	0xe6
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.4byte	0xe6
	.4byte	0x155
	.uleb128 0xb
	.4byte	0x142
	.byte	0x3
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0xc
	.byte	0x6
	.byte	0x27
	.4byte	0x186
	.uleb128 0xd
	.string	"x"
	.byte	0x6
	.byte	0x28
	.4byte	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"y"
	.byte	0x6
	.byte	0x28
	.4byte	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"z"
	.byte	0x6
	.byte	0x28
	.4byte	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x29
	.4byte	0x155
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x4
	.byte	0x7
	.2byte	0x3b8
	.4byte	0x1d3
	.uleb128 0xf
	.string	"r"
	.byte	0x7
	.2byte	0x3b9
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"g"
	.byte	0x7
	.2byte	0x3ba
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.string	"b"
	.byte	0x7
	.2byte	0x3bb
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"a"
	.byte	0x7
	.2byte	0x3bc
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x7
	.2byte	0x3bd
	.4byte	0x191
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x40
	.byte	0x7
	.2byte	0x3d6
	.4byte	0x1fc
	.uleb128 0xf
	.string	"val"
	.byte	0x7
	.2byte	0x3d7
	.4byte	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.4byte	0xfb
	.4byte	0x20c
	.uleb128 0xb
	.4byte	0x142
	.byte	0xf
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x7
	.2byte	0x3d8
	.4byte	0x1df
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x22b
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfb
	.uleb128 0x12
	.byte	0x10
	.byte	0x2
	.byte	0x15
	.4byte	0x253
	.uleb128 0xd
	.string	"v"
	.byte	0x2
	.byte	0x16
	.4byte	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"w"
	.byte	0x2
	.byte	0x17
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x2
	.byte	0x18
	.4byte	0x232
	.uleb128 0x12
	.byte	0x8
	.byte	0x2
	.byte	0x1b
	.4byte	0x27f
	.uleb128 0xd
	.string	"s"
	.byte	0x2
	.byte	0x1c
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"t"
	.byte	0x2
	.byte	0x1d
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x2
	.byte	0x1e
	.4byte	0x25e
	.uleb128 0x12
	.byte	0x10
	.byte	0x2
	.byte	0x21
	.4byte	0x2c3
	.uleb128 0xd
	.string	"r"
	.byte	0x2
	.byte	0x22
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"g"
	.byte	0x2
	.byte	0x23
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"b"
	.byte	0x2
	.byte	0x24
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"a"
	.byte	0x2
	.byte	0x25
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x2
	.byte	0x26
	.4byte	0x28a
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x14
	.byte	0x2
	.byte	0x42
	.4byte	0x31f
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x2
	.byte	0x43
	.4byte	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"p"
	.byte	0x2
	.byte	0x44
	.4byte	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x2
	.byte	0x45
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x2
	.byte	0x46
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x2
	.byte	0x47
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x2
	.byte	0x48
	.4byte	0x2ce
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x36f
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x8
	.byte	0xe
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x8
	.byte	0xf
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x8
	.byte	0x10
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"cur"
	.byte	0x8
	.byte	0x11
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x8
	.byte	0x12
	.4byte	0x32a
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0xa4
	.byte	0x2
	.byte	0x83
	.4byte	0x435
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x2
	.byte	0x84
	.4byte	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"obj"
	.byte	0x2
	.byte	0x86
	.4byte	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"pos"
	.byte	0x2
	.byte	0x88
	.4byte	0x253
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x2
	.byte	0x8a
	.4byte	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x2
	.byte	0x8c
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x2
	.byte	0x8d
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x2
	.byte	0x8e
	.4byte	0x2c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x2
	.byte	0x90
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x2
	.byte	0x91
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x2
	.byte	0x92
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x2
	.byte	0x93
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x2
	.byte	0x94
	.4byte	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x2
	.byte	0x95
	.4byte	0x37a
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x44
	.byte	0x2
	.byte	0xa0
	.4byte	0x493
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x2
	.byte	0xa1
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x2
	.byte	0xa2
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x2
	.byte	0xa3
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x2
	.byte	0xa4
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x2
	.byte	0xa5
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x2
	.byte	0xa6
	.4byte	0x440
	.uleb128 0x14
	.4byte	.LASF208
	.byte	0x4
	.byte	0x2
	.byte	0xbf
	.4byte	0x4bd
	.uleb128 0x15
	.4byte	.LASF56
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF57
	.sleb128 1
	.uleb128 0x15
	.4byte	.LASF58
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x2
	.byte	0xc3
	.4byte	0x49e
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x10
	.byte	0x2
	.byte	0xe8
	.4byte	0x509
	.uleb128 0xd
	.string	"x"
	.byte	0x2
	.byte	0xe9
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"y"
	.byte	0x2
	.byte	0xea
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x2
	.byte	0xeb
	.4byte	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x2
	.byte	0xec
	.4byte	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x2
	.byte	0xed
	.4byte	0x4c8
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x14
	.byte	0x2
	.byte	0xfb
	.4byte	0x577
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x2
	.byte	0xfc
	.4byte	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x2
	.byte	0xfd
	.4byte	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x2
	.byte	0xfe
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x2
	.byte	0xff
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x100
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x2
	.2byte	0x101
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x2
	.2byte	0x102
	.4byte	0x514
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x8
	.byte	0x2
	.2byte	0x117
	.4byte	0x5af
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x118
	.4byte	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x119
	.4byte	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x11a
	.4byte	0x583
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x6c
	.byte	0x2
	.2byte	0x127
	.4byte	0x713
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x128
	.4byte	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x12a
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x12b
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x12c
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x12d
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x12e
	.4byte	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x12f
	.4byte	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x130
	.4byte	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x131
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x132
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x133
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x135
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x137
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x138
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x13a
	.4byte	0x713
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x13b
	.4byte	0x713
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x13c
	.4byte	0x713
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x13d
	.4byte	0x713
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"tex"
	.byte	0x2
	.2byte	0x13f
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x141
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x143
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x144
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0xa
	.4byte	0x25
	.4byte	0x723
	.uleb128 0xb
	.4byte	0x142
	.byte	0x2
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x145
	.4byte	0x5bb
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x1
	.byte	0x8e
	.4byte	0x73a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x740
	.uleb128 0x17
	.byte	0x1
	.4byte	0x751
	.uleb128 0x18
	.4byte	0x751
	.uleb128 0x18
	.4byte	0xa3
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x16b
	.byte	0x1
	.byte	0x3
	.4byte	0x77a
	.uleb128 0x1a
	.string	"c"
	.byte	0x2
	.2byte	0x16a
	.4byte	0xb7
	.uleb128 0x1a
	.string	"p"
	.byte	0x2
	.2byte	0x16a
	.4byte	0x77a
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5af
	.uleb128 0x1b
	.4byte	.LASF98
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.4byte	0x70
	.byte	0x3
	.4byte	0x7ad
	.uleb128 0x1c
	.string	"r"
	.byte	0x1
	.byte	0xd1
	.4byte	0x98
	.uleb128 0x1c
	.string	"g"
	.byte	0x1
	.byte	0xd1
	.4byte	0x98
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.byte	0xd1
	.4byte	0x98
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x16b
	.byte	0x1
	.4byte	0xe6
	.byte	0x3
	.4byte	0x7ca
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.2byte	0x16a
	.4byte	0xa3
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.byte	0x3
	.4byte	0x7f7
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x20
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x20
	.4byte	0x21f
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x22
	.4byte	0x21f
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF104
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.byte	0x3
	.4byte	0x824
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x26
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x26
	.4byte	0x21f
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x28
	.4byte	0x21f
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF105
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.byte	0x3
	.4byte	0x851
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x2c
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x2c
	.4byte	0x21f
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x2e
	.4byte	0x13c
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF106
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.4byte	0x87e
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x32
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x32
	.4byte	0x21f
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x34
	.4byte	0x13c
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.byte	0x3
	.4byte	0x8ab
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x38
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x38
	.4byte	0x21f
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x3a
	.4byte	0x13c
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.byte	0x3
	.4byte	0x8d8
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x3e
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x3e
	.4byte	0x21f
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x40
	.4byte	0x13c
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF109
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3
	.4byte	0x905
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x50
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x50
	.4byte	0x21f
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x52
	.4byte	0x22c
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF110
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3
	.4byte	0x932
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x56
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x56
	.4byte	0x21f
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x58
	.4byte	0x22c
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF111
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.byte	0x3
	.4byte	0x961
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xb4
	.4byte	0xbd
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xb4
	.4byte	0x72f
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0xb4
	.4byte	0x961
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x1e
	.4byte	.LASF112
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.byte	0x3
	.4byte	0x996
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xb8
	.4byte	0xbd
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xb8
	.4byte	0x72f
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0xb8
	.4byte	0x961
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF113
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.byte	0x3
	.4byte	0x9c5
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xbc
	.4byte	0xbd
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xbc
	.4byte	0x72f
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0xbc
	.4byte	0x961
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF114
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.byte	0x3
	.4byte	0x9f4
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xc0
	.4byte	0xbd
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xc0
	.4byte	0x72f
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0xc0
	.4byte	0x961
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF116
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST0
	.4byte	0xa30
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0x90
	.4byte	0x751
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0x90
	.4byte	0xa3
	.4byte	.LLST1
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x92
	.4byte	0xa30
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21f
	.uleb128 0x21
	.4byte	.LASF117
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST2
	.4byte	0xa72
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0x95
	.4byte	0x751
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0x95
	.4byte	0xa3
	.4byte	.LLST3
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x97
	.4byte	0xa72
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa78
	.uleb128 0x6
	.byte	0x4
	.4byte	0x106
	.uleb128 0x21
	.4byte	.LASF118
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST4
	.4byte	0xaba
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0x9a
	.4byte	0x751
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0x9a
	.4byte	0xa3
	.4byte	.LLST5
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x9c
	.4byte	0xaba
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13c
	.uleb128 0x21
	.4byte	.LASF119
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST6
	.4byte	0xafc
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0x9f
	.4byte	0x751
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0x9f
	.4byte	0xa3
	.4byte	.LLST7
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0xa1
	.4byte	0xafc
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb02
	.uleb128 0x6
	.byte	0x4
	.4byte	0x110
	.uleb128 0x24
	.4byte	.LASF120
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x1
	.byte	0x51
	.4byte	0xb42
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0xa4
	.4byte	0x751
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0xa4
	.4byte	0xa3
	.4byte	.LLST9
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0xa6
	.4byte	0xb42
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x22c
	.uleb128 0x24
	.4byte	.LASF121
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.byte	0x1
	.byte	0x51
	.4byte	0xb82
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0xa9
	.4byte	0x751
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.byte	0xa9
	.4byte	0xa3
	.4byte	.LLST11
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0xab
	.4byte	0xb82
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb88
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11b
	.uleb128 0x24
	.4byte	.LASF122
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.byte	0x1
	.byte	0x51
	.4byte	0xbc7
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0xae
	.4byte	0x751
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
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0xb0
	.4byte	0xbc7
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x20b
	.byte	0x1
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LLST13
	.4byte	0xc38
	.uleb128 0x27
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x208
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x208
	.4byte	0x5e
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x209
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x27
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x209
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x27
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x20a
	.4byte	0xb1
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST19
	.4byte	0xc61
	.uleb128 0x29
	.4byte	.LASF86
	.byte	0x1
	.byte	0x5
	.4byte	0x25
	.4byte	.LLST20
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.byte	0x3
	.4byte	0xc8e
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x44
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x44
	.4byte	0x21f
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x46
	.4byte	0x13c
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.byte	0x3
	.4byte	0xcbb
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x4a
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x4a
	.4byte	0x21f
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x4c
	.4byte	0x13c
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.byte	0x3
	.4byte	0xd03
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x5f
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x5f
	.4byte	0x21f
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x61
	.4byte	0x22c
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.byte	0x62
	.4byte	0xf0
	.uleb128 0x20
	.string	"g"
	.byte	0x1
	.byte	0x62
	.4byte	0xf0
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.byte	0x62
	.4byte	0xf0
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.byte	0x3
	.4byte	0xd4b
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x76
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x76
	.4byte	0x21f
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x78
	.4byte	0x22c
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.byte	0x79
	.4byte	0xf0
	.uleb128 0x20
	.string	"g"
	.byte	0x1
	.byte	0x79
	.4byte	0xf0
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.byte	0x79
	.4byte	0xf0
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x176
	.byte	0x1
	.byte	0x3
	.4byte	0xd86
	.uleb128 0x1a
	.string	"r"
	.byte	0x2
	.2byte	0x175
	.4byte	0xb7
	.uleb128 0x1a
	.string	"g"
	.byte	0x2
	.2byte	0x175
	.4byte	0xb7
	.uleb128 0x1a
	.string	"b"
	.byte	0x2
	.2byte	0x175
	.4byte	0xb7
	.uleb128 0x1a
	.string	"a"
	.byte	0x2
	.2byte	0x175
	.4byte	0xb7
	.uleb128 0x2a
	.uleb128 0x2a
	.uleb128 0x2a
	.uleb128 0x2a
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.byte	0x3
	.4byte	0xdb5
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xc4
	.4byte	0xbd
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xc4
	.4byte	0x72f
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0xc4
	.4byte	0x961
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.byte	0x3
	.4byte	0xde4
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xca
	.4byte	0xbd
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xca
	.4byte	0x72f
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0xca
	.4byte	0x961
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.byte	0x3
	.4byte	0xe14
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xd5
	.4byte	0xbd
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xd5
	.4byte	0x72f
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0xd5
	.4byte	0x961
	.uleb128 0x2a
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.byte	0x3
	.4byte	0xe44
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xd9
	.4byte	0xbd
	.uleb128 0x1c
	.string	"fun"
	.byte	0x1
	.byte	0xd9
	.4byte	0x72f
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0xd9
	.4byte	0x961
	.uleb128 0x2a
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.4byte	.LLST21
	.4byte	0x12de
	.uleb128 0x29
	.4byte	.LASF102
	.byte	0x1
	.byte	0xdf
	.4byte	0xbd
	.4byte	.LLST22
	.uleb128 0x29
	.4byte	.LASF125
	.byte	0x1
	.byte	0xdf
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x29
	.4byte	.LASF34
	.byte	0x1
	.byte	0xdf
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x29
	.4byte	.LASF103
	.byte	0x1
	.byte	0xdf
	.4byte	0x21f
	.4byte	.LLST25
	.uleb128 0x2b
	.string	"fun"
	.byte	0x1
	.byte	0xec
	.4byte	0x72f
	.4byte	.LLST26
	.uleb128 0x2c
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x13c
	.4byte	0x12de
	.uleb128 0x2d
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	0xece
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.byte	0xe6
	.4byte	0xe6
	.4byte	.LLST27
	.byte	0x0
	.uleb128 0x2e
	.4byte	0xd03
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x11c
	.4byte	0xf0f
	.uleb128 0x2f
	.4byte	0xd1b
	.uleb128 0x2f
	.4byte	0xd10
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x31
	.4byte	0xd26
	.uleb128 0x32
	.4byte	0xd2f
	.4byte	.LLST28
	.uleb128 0x32
	.4byte	0xd38
	.4byte	.LLST29
	.uleb128 0x32
	.4byte	0xd41
	.4byte	.LLST30
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	0xd4b
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x143
	.4byte	0xf9c
	.uleb128 0x2f
	.4byte	0xd77
	.uleb128 0x2f
	.4byte	0xd6d
	.uleb128 0x2f
	.4byte	0xd63
	.uleb128 0x2f
	.4byte	0xd59
	.uleb128 0x2e
	.4byte	0x757
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x2
	.2byte	0x17a
	.4byte	0xf4e
	.uleb128 0x2f
	.4byte	0x76f
	.uleb128 0x2f
	.4byte	0x765
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x757
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x2
	.2byte	0x179
	.4byte	0xf69
	.uleb128 0x2f
	.4byte	0x76f
	.uleb128 0x2f
	.4byte	0x765
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x757
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x2
	.2byte	0x178
	.4byte	0xf84
	.uleb128 0x2f
	.4byte	0x76f
	.uleb128 0x2f
	.4byte	0x765
	.byte	0x0
	.uleb128 0x33
	.4byte	0x757
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x2
	.2byte	0x177
	.uleb128 0x2f
	.4byte	0x76f
	.uleb128 0x2f
	.4byte	0x765
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x996
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x1
	.2byte	0x14e
	.4byte	0xfc0
	.uleb128 0x2f
	.4byte	0x9b9
	.uleb128 0x2f
	.4byte	0x9ae
	.uleb128 0x34
	.4byte	0x9a3
	.4byte	.LLST31
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x9c5
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.2byte	0x151
	.4byte	0xfe4
	.uleb128 0x2f
	.4byte	0x9e8
	.uleb128 0x2f
	.4byte	0x9dd
	.uleb128 0x34
	.4byte	0x9d2
	.4byte	.LLST32
	.byte	0x0
	.uleb128 0x35
	.4byte	0x824
	.4byte	.LBB143
	.4byte	.LBE143
	.byte	0x1
	.byte	0xf8
	.4byte	0x1011
	.uleb128 0x2f
	.4byte	0x83c
	.uleb128 0x2f
	.4byte	0x831
	.uleb128 0x36
	.4byte	.LBB144
	.4byte	.LBE144
	.uleb128 0x31
	.4byte	0x847
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.4byte	0x8ab
	.4byte	.LBB146
	.4byte	.LBE146
	.byte	0x1
	.2byte	0x104
	.4byte	0x103f
	.uleb128 0x2f
	.4byte	0x8c3
	.uleb128 0x2f
	.4byte	0x8b8
	.uleb128 0x36
	.4byte	.LBB147
	.4byte	.LBE147
	.uleb128 0x31
	.4byte	0x8ce
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.4byte	0x8d8
	.4byte	.LBB148
	.4byte	.LBE148
	.byte	0x1
	.2byte	0x110
	.4byte	0x106d
	.uleb128 0x2f
	.4byte	0x8f0
	.uleb128 0x2f
	.4byte	0x8e5
	.uleb128 0x36
	.4byte	.LBB149
	.4byte	.LBE149
	.uleb128 0x31
	.4byte	0x8fb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	0xdb5
	.4byte	.Ldebug_ranges0+0x148
	.byte	0x1
	.2byte	0x159
	.4byte	0x1091
	.uleb128 0x2f
	.4byte	0xdd8
	.uleb128 0x2f
	.4byte	0xdcd
	.uleb128 0x34
	.4byte	0xdc2
	.4byte	.LLST33
	.byte	0x0
	.uleb128 0x2e
	.4byte	0xd86
	.4byte	.Ldebug_ranges0+0x168
	.byte	0x1
	.2byte	0x155
	.4byte	0x10b5
	.uleb128 0x2f
	.4byte	0xda9
	.uleb128 0x2f
	.4byte	0xd9e
	.uleb128 0x34
	.4byte	0xd93
	.4byte	.LLST34
	.byte	0x0
	.uleb128 0x2e
	.4byte	0xe14
	.4byte	.Ldebug_ranges0+0x188
	.byte	0x1
	.2byte	0x15f
	.4byte	0x10d9
	.uleb128 0x2f
	.4byte	0xe37
	.uleb128 0x2f
	.4byte	0xe2c
	.uleb128 0x34
	.4byte	0xe21
	.4byte	.LLST35
	.byte	0x0
	.uleb128 0x37
	.4byte	0xc8e
	.4byte	.LBB164
	.4byte	.LBE164
	.byte	0x1
	.2byte	0x10c
	.4byte	0x1107
	.uleb128 0x2f
	.4byte	0xca6
	.uleb128 0x2f
	.4byte	0xc9b
	.uleb128 0x36
	.4byte	.LBB165
	.4byte	.LBE165
	.uleb128 0x31
	.4byte	0xcb1
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.4byte	0x851
	.4byte	.LBB166
	.4byte	.LBE166
	.byte	0x1
	.byte	0xfc
	.4byte	0x1134
	.uleb128 0x2f
	.4byte	0x869
	.uleb128 0x2f
	.4byte	0x85e
	.uleb128 0x36
	.4byte	.LBB167
	.4byte	.LBE167
	.uleb128 0x31
	.4byte	0x874
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.4byte	0xcbb
	.4byte	.LBB169
	.4byte	.LBE169
	.byte	0x1
	.2byte	0x118
	.4byte	0x117d
	.uleb128 0x2f
	.4byte	0xcd3
	.uleb128 0x2f
	.4byte	0xcc8
	.uleb128 0x36
	.4byte	.LBB170
	.4byte	.LBE170
	.uleb128 0x31
	.4byte	0xcde
	.uleb128 0x32
	.4byte	0xce7
	.4byte	.LLST36
	.uleb128 0x32
	.4byte	0xcf0
	.4byte	.LLST37
	.uleb128 0x32
	.4byte	0xcf9
	.4byte	.LLST38
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.4byte	0xc61
	.4byte	.LBB172
	.4byte	.LBE172
	.byte	0x1
	.2byte	0x108
	.4byte	0x11ab
	.uleb128 0x2f
	.4byte	0xc79
	.uleb128 0x2f
	.4byte	0xc6e
	.uleb128 0x36
	.4byte	.LBB173
	.4byte	.LBE173
	.uleb128 0x31
	.4byte	0xc84
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x932
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.2byte	0x148
	.4byte	0x11cf
	.uleb128 0x2f
	.4byte	0x955
	.uleb128 0x2f
	.4byte	0x94a
	.uleb128 0x34
	.4byte	0x93f
	.4byte	.LLST39
	.byte	0x0
	.uleb128 0x35
	.4byte	0x7f7
	.4byte	.LBB178
	.4byte	.LBE178
	.byte	0x1
	.byte	0xf4
	.4byte	0x11fc
	.uleb128 0x2f
	.4byte	0x80f
	.uleb128 0x2f
	.4byte	0x804
	.uleb128 0x36
	.4byte	.LBB179
	.4byte	.LBE179
	.uleb128 0x31
	.4byte	0x81a
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.4byte	0x905
	.4byte	.LBB180
	.4byte	.LBE180
	.byte	0x1
	.2byte	0x114
	.4byte	0x122a
	.uleb128 0x2f
	.4byte	0x91d
	.uleb128 0x2f
	.4byte	0x912
	.uleb128 0x36
	.4byte	.LBB181
	.4byte	.LBE181
	.uleb128 0x31
	.4byte	0x928
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.4byte	0x87e
	.4byte	.LBB183
	.4byte	.LBE183
	.byte	0x1
	.2byte	0x100
	.4byte	0x1258
	.uleb128 0x2f
	.4byte	0x896
	.uleb128 0x2f
	.4byte	0x88b
	.uleb128 0x36
	.4byte	.LBB184
	.4byte	.LBE184
	.uleb128 0x31
	.4byte	0x8a1
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.4byte	0x7ca
	.4byte	.LBB185
	.4byte	.LBE185
	.byte	0x1
	.byte	0xf0
	.4byte	0x1285
	.uleb128 0x2f
	.4byte	0x7e2
	.uleb128 0x2f
	.4byte	0x7d7
	.uleb128 0x36
	.4byte	.LBB186
	.4byte	.LBE186
	.uleb128 0x31
	.4byte	0x7ed
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	0xde4
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.2byte	0x15c
	.4byte	0x12a9
	.uleb128 0x2f
	.4byte	0xe07
	.uleb128 0x2f
	.4byte	0xdfc
	.uleb128 0x34
	.4byte	0xdf1
	.4byte	.LLST40
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x967
	.4byte	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.2byte	0x14b
	.4byte	0x12cd
	.uleb128 0x2f
	.4byte	0x98a
	.uleb128 0x2f
	.4byte	0x97f
	.uleb128 0x34
	.4byte	0x974
	.4byte	.LLST41
	.byte	0x0
	.uleb128 0x38
	.4byte	.LASF139
	.4byte	0x1543
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.13403
	.byte	0x0
	.uleb128 0xa
	.4byte	0xa3
	.4byte	0x12ee
	.uleb128 0xb
	.4byte	0x142
	.byte	0x3
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x17b
	.byte	0x1
	.byte	0x3
	.4byte	0x132c
	.uleb128 0x1a
	.string	"Y"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xa3
	.uleb128 0x1a
	.string	"Cb"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xa3
	.uleb128 0x1a
	.string	"Cr"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xa3
	.uleb128 0x39
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x17a
	.4byte	0x21f
	.uleb128 0x2a
	.uleb128 0x2a
	.uleb128 0x2a
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x185
	.byte	0x1
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LLST42
	.4byte	0x1533
	.uleb128 0x3a
	.string	"x"
	.byte	0x1
	.2byte	0x181
	.4byte	0x5e
	.4byte	.LLST43
	.uleb128 0x3a
	.string	"y"
	.byte	0x1
	.2byte	0x181
	.4byte	0x5e
	.4byte	.LLST44
	.uleb128 0x27
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x182
	.4byte	0x8d
	.4byte	.LLST45
	.uleb128 0x27
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x182
	.4byte	0x8d
	.4byte	.LLST46
	.uleb128 0x27
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x183
	.4byte	0x25
	.4byte	.LLST47
	.uleb128 0x27
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x183
	.4byte	0x25
	.4byte	.LLST48
	.uleb128 0x27
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x184
	.4byte	0xb1
	.4byte	.LLST49
	.uleb128 0x3b
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x22c
	.4byte	.LLST50
	.uleb128 0x3b
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1d7
	.4byte	0xfb
	.4byte	.LLST51
	.uleb128 0x3b
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x1d8
	.4byte	0xfb
	.4byte	.LLST52
	.uleb128 0x3c
	.string	"i"
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x69
	.4byte	.LLST53
	.uleb128 0x3c
	.string	"j"
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x69
	.4byte	.LLST54
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x1f8
	.uleb128 0x3c
	.string	"val"
	.byte	0x1
	.2byte	0x1e7
	.4byte	0xfb
	.4byte	.LLST55
	.uleb128 0x3d
	.string	"Y1"
	.byte	0x1
	.2byte	0x1ee
	.4byte	0xe6
	.uleb128 0x3c
	.string	"Cb"
	.byte	0x1
	.2byte	0x1ef
	.4byte	0xe6
	.4byte	.LLST56
	.uleb128 0x3d
	.string	"Y2"
	.byte	0x1
	.2byte	0x1f0
	.4byte	0xe6
	.uleb128 0x3c
	.string	"Cr"
	.byte	0x1
	.2byte	0x1f1
	.4byte	0xe6
	.4byte	.LLST57
	.uleb128 0x3e
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x145
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2e
	.4byte	0x12ee
	.4byte	.Ldebug_ranges0+0x220
	.byte	0x1
	.2byte	0x200
	.4byte	0x14c6
	.uleb128 0x2f
	.4byte	0x131c
	.uleb128 0x2f
	.4byte	0x1311
	.uleb128 0x2f
	.4byte	0x1306
	.uleb128 0x2f
	.4byte	0x12fc
	.uleb128 0x2e
	.4byte	0x7ad
	.4byte	.Ldebug_ranges0+0x250
	.byte	0x1
	.2byte	0x17c
	.4byte	0x1495
	.uleb128 0x34
	.4byte	0x7bf
	.4byte	.LLST58
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x7ad
	.4byte	.Ldebug_ranges0+0x278
	.byte	0x1
	.2byte	0x17d
	.4byte	0x14af
	.uleb128 0x34
	.4byte	0x7bf
	.4byte	.LLST59
	.byte	0x0
	.uleb128 0x33
	.4byte	0x7ad
	.4byte	.Ldebug_ranges0+0x298
	.byte	0x1
	.2byte	0x17e
	.uleb128 0x34
	.4byte	0x7bf
	.4byte	.LLST60
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.4byte	0x12ee
	.4byte	.Ldebug_ranges0+0x2b0
	.byte	0x1
	.2byte	0x1f7
	.uleb128 0x2f
	.4byte	0x131c
	.uleb128 0x2f
	.4byte	0x1311
	.uleb128 0x2f
	.4byte	0x1306
	.uleb128 0x2f
	.4byte	0x12fc
	.uleb128 0x2e
	.4byte	0x7ad
	.4byte	.Ldebug_ranges0+0x2d0
	.byte	0x1
	.2byte	0x17c
	.4byte	0x1500
	.uleb128 0x34
	.4byte	0x7bf
	.4byte	.LLST61
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x7ad
	.4byte	.Ldebug_ranges0+0x2f0
	.byte	0x1
	.2byte	0x17d
	.4byte	0x151a
	.uleb128 0x34
	.4byte	0x7bf
	.4byte	.LLST62
	.byte	0x0
	.uleb128 0x33
	.4byte	0x7ad
	.4byte	.Ldebug_ranges0+0x318
	.byte	0x1
	.2byte	0x17e
	.uleb128 0x34
	.4byte	0x7bf
	.4byte	.LLST63
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.4byte	0xd1
	.4byte	0x1543
	.uleb128 0xb
	.4byte	0x142
	.byte	0x9
	.byte	0x0
	.uleb128 0x3f
	.4byte	0x1533
	.uleb128 0x40
	.4byte	.LASF145
	.byte	0x2
	.byte	0x3c
	.4byte	0x2c3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x40
	.4byte	.LASF146
	.byte	0x2
	.byte	0x3d
	.4byte	0x186
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xa
	.4byte	0x27f
	.4byte	0x157c
	.uleb128 0xb
	.4byte	0x142
	.byte	0x7
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF147
	.byte	0x2
	.byte	0x3e
	.4byte	0x156c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x40
	.4byte	.LASF148
	.byte	0x2
	.byte	0x4a
	.4byte	0x31f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x40
	.4byte	.LASF149
	.byte	0x2
	.byte	0x4b
	.4byte	0x31f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xa
	.4byte	0x31f
	.4byte	0x15c2
	.uleb128 0xb
	.4byte	0x142
	.byte	0x7
	.byte	0x0
	.uleb128 0x41
	.string	"tex"
	.byte	0x2
	.byte	0x4c
	.4byte	0x15b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x40
	.4byte	.LASF93
	.byte	0x2
	.byte	0x4d
	.4byte	0x31f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xa
	.4byte	0x186
	.4byte	0x15f7
	.uleb128 0x42
	.4byte	0x142
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF150
	.byte	0x2
	.byte	0x4f
	.4byte	0x15e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x40
	.4byte	.LASF151
	.byte	0x2
	.byte	0x50
	.4byte	0x15e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xa
	.4byte	0x27f
	.4byte	0x1632
	.uleb128 0xb
	.4byte	0x142
	.byte	0x7
	.uleb128 0x42
	.4byte	0x142
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF152
	.byte	0x2
	.byte	0x51
	.4byte	0x161b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xa
	.4byte	0x2c3
	.4byte	0x1655
	.uleb128 0x42
	.4byte	0x142
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF153
	.byte	0x2
	.byte	0x52
	.4byte	0x1644
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x40
	.4byte	.LASF154
	.byte	0x2
	.byte	0x5c
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x40
	.4byte	.LASF155
	.byte	0x2
	.byte	0x5d
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x40
	.4byte	.LASF156
	.byte	0x2
	.byte	0x5e
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x40
	.4byte	.LASF157
	.byte	0x2
	.byte	0x60
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x40
	.4byte	.LASF158
	.byte	0x2
	.byte	0x61
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x40
	.4byte	.LASF159
	.byte	0x2
	.byte	0x6a
	.4byte	0xe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x40
	.4byte	.LASF160
	.byte	0x2
	.byte	0x6b
	.4byte	0xe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x40
	.4byte	.LASF161
	.byte	0x2
	.byte	0x6c
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x40
	.4byte	.LASF162
	.byte	0x2
	.byte	0x6d
	.4byte	0xa3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x40
	.4byte	.LASF163
	.byte	0x2
	.byte	0x79
	.4byte	0x36f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x40
	.4byte	.LASF164
	.byte	0x2
	.byte	0x7a
	.4byte	0x36f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xa
	.4byte	0x36f
	.4byte	0x173d
	.uleb128 0xb
	.4byte	0x142
	.byte	0x7
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF165
	.byte	0x2
	.byte	0x7b
	.4byte	0x172d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x40
	.4byte	.LASF166
	.byte	0x2
	.byte	0x7c
	.4byte	0x1761
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x6
	.byte	0x4
	.4byte	0x36f
	.uleb128 0x40
	.4byte	.LASF167
	.byte	0x2
	.byte	0x7d
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xa
	.4byte	0x435
	.4byte	0x1789
	.uleb128 0xb
	.4byte	0x142
	.byte	0x7
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF168
	.byte	0x2
	.byte	0x98
	.4byte	0x1779
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x40
	.4byte	.LASF169
	.byte	0x2
	.byte	0x9b
	.4byte	0x2c3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x40
	.4byte	.LASF170
	.byte	0x2
	.byte	0xa8
	.4byte	0x493
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x40
	.4byte	.LASF171
	.byte	0x2
	.byte	0xab
	.4byte	0x131
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x40
	.4byte	.LASF172
	.byte	0x2
	.byte	0xac
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x40
	.4byte	.LASF173
	.byte	0x2
	.byte	0xb0
	.4byte	0x131
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x40
	.4byte	.LASF174
	.byte	0x2
	.byte	0xb7
	.4byte	0xe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x40
	.4byte	.LASF175
	.byte	0x2
	.byte	0xb8
	.4byte	0xe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x40
	.4byte	.LASF176
	.byte	0x2
	.byte	0xb9
	.4byte	0xe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x40
	.4byte	.LASF177
	.byte	0x2
	.byte	0xba
	.4byte	0xe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x40
	.4byte	.LASF178
	.byte	0x2
	.byte	0xbc
	.4byte	0xe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x40
	.4byte	.LASF179
	.byte	0x2
	.byte	0xc5
	.4byte	0x4bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x40
	.4byte	.LASF180
	.byte	0x2
	.byte	0xef
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x40
	.4byte	.LASF181
	.byte	0x2
	.byte	0xf0
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x40
	.4byte	.LASF182
	.byte	0x2
	.byte	0xf1
	.4byte	0x37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x40
	.4byte	.LASF183
	.byte	0x2
	.byte	0xf2
	.4byte	0x509
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x40
	.4byte	.LASF184
	.byte	0x2
	.byte	0xf3
	.4byte	0x509
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x40
	.4byte	.LASF185
	.byte	0x2
	.byte	0xf4
	.4byte	0x126
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x40
	.4byte	.LASF186
	.byte	0x2
	.byte	0xf5
	.4byte	0x126
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x40
	.4byte	.LASF143
	.byte	0x2
	.byte	0xf7
	.4byte	0x126
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x40
	.4byte	.LASF187
	.byte	0x2
	.byte	0xf8
	.4byte	0x126
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x43
	.4byte	.LASF188
	.byte	0x2
	.2byte	0x104
	.4byte	0x577
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x43
	.4byte	.LASF189
	.byte	0x2
	.2byte	0x105
	.4byte	0x577
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xa
	.4byte	0x131
	.4byte	0x1939
	.uleb128 0xb
	.4byte	0x142
	.byte	0x3
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF190
	.byte	0x2
	.2byte	0x106
	.4byte	0x1929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x43
	.4byte	.LASF191
	.byte	0x2
	.2byte	0x10c
	.4byte	0x131
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x43
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x10d
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x43
	.4byte	.LASF193
	.byte	0x2
	.2byte	0x110
	.4byte	0x1d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xa
	.4byte	0x5af
	.4byte	0x1995
	.uleb128 0xb
	.4byte	0x142
	.byte	0x3
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF194
	.byte	0x2
	.2byte	0x124
	.4byte	0x1985
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x43
	.4byte	.LASF195
	.byte	0x2
	.2byte	0x149
	.4byte	0x131
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x43
	.4byte	.LASF196
	.byte	0x2
	.2byte	0x14a
	.4byte	0xe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x43
	.4byte	.LASF197
	.byte	0x2
	.2byte	0x14b
	.4byte	0x126
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x43
	.4byte	.LASF198
	.byte	0x2
	.2byte	0x14c
	.4byte	0x126
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x43
	.4byte	.LASF199
	.byte	0x2
	.2byte	0x14d
	.4byte	0x126
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x43
	.4byte	.LASF200
	.byte	0x2
	.2byte	0x14e
	.4byte	0x1d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xa
	.4byte	0x723
	.4byte	0x1a2a
	.uleb128 0xb
	.4byte	0x142
	.byte	0x7
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x150
	.4byte	0x1a1a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x43
	.4byte	.LASF202
	.byte	0x2
	.2byte	0x155
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x43
	.4byte	.LASF203
	.byte	0x2
	.2byte	0x158
	.4byte	0x82
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
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
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
	.4byte	0x3f2
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1a64
	.4byte	0xbcd
	.string	"glGetTexImage"
	.4byte	0xc38
	.string	"glReadBuffer"
	.4byte	0x132c
	.string	"glReadPixels"
	.4byte	0x1548
	.string	"_tempcolorelement"
	.4byte	0x155a
	.string	"_tempnormalelement"
	.4byte	0x157c
	.string	"_temptexcoordelement"
	.4byte	0x158e
	.string	"norm"
	.4byte	0x15a0
	.string	"vert"
	.4byte	0x15c2
	.string	"tex"
	.4byte	0x15d4
	.string	"color"
	.4byte	0x15f7
	.string	"_normalelements"
	.4byte	0x1609
	.string	"_vertexelements"
	.4byte	0x1632
	.string	"_texcoordelements"
	.4byte	0x1655
	.string	"_colorelements"
	.4byte	0x1667
	.string	"vert_i"
	.4byte	0x1679
	.string	"_type"
	.4byte	0x168b
	.string	"_GLtype"
	.4byte	0x169d
	.string	"cur_tex"
	.4byte	0x16af
	.string	"cur_tex_client"
	.4byte	0x16c1
	.string	"depthtestenabled"
	.4byte	0x16d3
	.string	"depthupdate"
	.4byte	0x16e5
	.string	"depthfunction"
	.4byte	0x16f7
	.string	"_cleardepth"
	.4byte	0x1709
	.string	"model_stack"
	.4byte	0x171b
	.string	"projection_stack"
	.4byte	0x173d
	.string	"texture_stack"
	.4byte	0x174f
	.string	"curmtx"
	.4byte	0x1767
	.string	"cur_mode"
	.4byte	0x1789
	.string	"lights"
	.4byte	0x179b
	.string	"globAmbient"
	.4byte	0x17ad
	.string	"curmat"
	.4byte	0x17bf
	.string	"gxcullfaceanabled"
	.4byte	0x17d1
	.string	"gxwinding"
	.4byte	0x17e3
	.string	"lighting"
	.4byte	0x17f5
	.string	"blend_type"
	.4byte	0x1807
	.string	"blend_src"
	.4byte	0x1819
	.string	"blend_dst"
	.4byte	0x182b
	.string	"blend_op"
	.4byte	0x183d
	.string	"cull_mode"
	.4byte	0x184f
	.string	"cur_state"
	.4byte	0x1861
	.string	"fb_max_height"
	.4byte	0x1873
	.string	"fb_max_width"
	.4byte	0x1885
	.string	"scissor_test"
	.4byte	0x1897
	.string	"scissorInfo"
	.4byte	0x18a9
	.string	"viewPort"
	.4byte	0x18bb
	.string	"normNear"
	.4byte	0x18cd
	.string	"normFar"
	.4byte	0x18df
	.string	"line_width"
	.4byte	0x18f1
	.string	"point_size"
	.4byte	0x1903
	.string	"pack"
	.4byte	0x1916
	.string	"unpack"
	.4byte	0x1939
	.string	"color_write_mask"
	.4byte	0x194c
	.string	"copy_mat_enabled"
	.4byte	0x195f
	.string	"copy_material"
	.4byte	0x1972
	.string	"_clearcolor"
	.4byte	0x1995
	.string	"Trans"
	.4byte	0x19a8
	.string	"fog_enable"
	.4byte	0x19bb
	.string	"fog_mode"
	.4byte	0x19ce
	.string	"fog_startz"
	.4byte	0x19e1
	.string	"fog_endz"
	.4byte	0x19f4
	.string	"fog_density"
	.4byte	0x1a07
	.string	"fog_color"
	.4byte	0x1a2a
	.string	"glTexEnvs"
	.4byte	0x1a3d
	.string	"read_mode"
	.4byte	0x1a50
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	.LBB182-.Ltext0
	.4byte	.LBE182-.Ltext0
	.4byte	.LBB174-.Ltext0
	.4byte	.LBE174-.Ltext0
	.4byte	.LBB171-.Ltext0
	.4byte	.LBE171-.Ltext0
	.4byte	.LBB168-.Ltext0
	.4byte	.LBE168-.Ltext0
	.4byte	.LBB145-.Ltext0
	.4byte	.LBE145-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	.LBB102-.Ltext0
	.4byte	.LBE102-.Ltext0
	.4byte	.LBB107-.Ltext0
	.4byte	.LBE107-.Ltext0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	.LBB163-.Ltext0
	.4byte	.LBE163-.Ltext0
	.4byte	.LBB136-.Ltext0
	.4byte	.LBE136-.Ltext0
	.4byte	.LBB135-.Ltext0
	.4byte	.LBE135-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	.LBB130-.Ltext0
	.4byte	.LBE130-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	.LBB131-.Ltext0
	.4byte	.LBE131-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB123-.Ltext0
	.4byte	.LBE123-.Ltext0
	.4byte	.LBB132-.Ltext0
	.4byte	.LBE132-.Ltext0
	.4byte	.LBB122-.Ltext0
	.4byte	.LBE122-.Ltext0
	.4byte	.LBB128-.Ltext0
	.4byte	.LBE128-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB137-.Ltext0
	.4byte	.LBE137-.Ltext0
	.4byte	.LBB199-.Ltext0
	.4byte	.LBE199-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB140-.Ltext0
	.4byte	.LBE140-.Ltext0
	.4byte	.LBB194-.Ltext0
	.4byte	.LBE194-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB150-.Ltext0
	.4byte	.LBE150-.Ltext0
	.4byte	.LBB201-.Ltext0
	.4byte	.LBE201-.Ltext0
	.4byte	.LBB158-.Ltext0
	.4byte	.LBE158-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB154-.Ltext0
	.4byte	.LBE154-.Ltext0
	.4byte	.LBB195-.Ltext0
	.4byte	.LBE195-.Ltext0
	.4byte	.LBB193-.Ltext0
	.4byte	.LBE193-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB159-.Ltext0
	.4byte	.LBE159-.Ltext0
	.4byte	.LBB192-.Ltext0
	.4byte	.LBE192-.Ltext0
	.4byte	.LBB187-.Ltext0
	.4byte	.LBE187-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB175-.Ltext0
	.4byte	.LBE175-.Ltext0
	.4byte	.LBB203-.Ltext0
	.4byte	.LBE203-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB188-.Ltext0
	.4byte	.LBE188-.Ltext0
	.4byte	.LBB202-.Ltext0
	.4byte	.LBE202-.Ltext0
	.4byte	.LBB200-.Ltext0
	.4byte	.LBE200-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB196-.Ltext0
	.4byte	.LBE196-.Ltext0
	.4byte	.LBB204-.Ltext0
	.4byte	.LBE204-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB222-.Ltext0
	.4byte	.LBE222-.Ltext0
	.4byte	.LBB279-.Ltext0
	.4byte	.LBE279-.Ltext0
	.4byte	.LBB278-.Ltext0
	.4byte	.LBE278-.Ltext0
	.4byte	.LBB277-.Ltext0
	.4byte	.LBE277-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB223-.Ltext0
	.4byte	.LBE223-.Ltext0
	.4byte	.LBB276-.Ltext0
	.4byte	.LBE276-.Ltext0
	.4byte	.LBB275-.Ltext0
	.4byte	.LBE275-.Ltext0
	.4byte	.LBB274-.Ltext0
	.4byte	.LBE274-.Ltext0
	.4byte	.LBB247-.Ltext0
	.4byte	.LBE247-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB228-.Ltext0
	.4byte	.LBE228-.Ltext0
	.4byte	.LBB234-.Ltext0
	.4byte	.LBE234-.Ltext0
	.4byte	.LBB233-.Ltext0
	.4byte	.LBE233-.Ltext0
	.4byte	.LBB227-.Ltext0
	.4byte	.LBE227-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB235-.Ltext0
	.4byte	.LBE235-.Ltext0
	.4byte	.LBB240-.Ltext0
	.4byte	.LBE240-.Ltext0
	.4byte	.LBB239-.Ltext0
	.4byte	.LBE239-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB241-.Ltext0
	.4byte	.LBE241-.Ltext0
	.4byte	.LBB244-.Ltext0
	.4byte	.LBE244-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB248-.Ltext0
	.4byte	.LBE248-.Ltext0
	.4byte	.LBB273-.Ltext0
	.4byte	.LBE273-.Ltext0
	.4byte	.LBB272-.Ltext0
	.4byte	.LBE272-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB251-.Ltext0
	.4byte	.LBE251-.Ltext0
	.4byte	.LBB256-.Ltext0
	.4byte	.LBE256-.Ltext0
	.4byte	.LBB255-.Ltext0
	.4byte	.LBE255-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB257-.Ltext0
	.4byte	.LBE257-.Ltext0
	.4byte	.LBB264-.Ltext0
	.4byte	.LBE264-.Ltext0
	.4byte	.LBB263-.Ltext0
	.4byte	.LBE263-.Ltext0
	.4byte	.LBB262-.Ltext0
	.4byte	.LBE262-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB265-.Ltext0
	.4byte	.LBE265-.Ltext0
	.4byte	.LBB270-.Ltext0
	.4byte	.LBE270-.Ltext0
	.4byte	.LBB269-.Ltext0
	.4byte	.LBE269-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF90:
	.string	"CargOp"
.LASF131:
	.string	"put_UINT_2_10_10_10_REV"
.LASF183:
	.string	"scissorInfo"
.LASF14:
	.string	"size_t"
.LASF205:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl_outcopy.c"
.LASF95:
	.string	"alpha_scale"
.LASF166:
	.string	"curmtx"
.LASF195:
	.string	"fog_enable"
.LASF189:
	.string	"unpack"
.LASF169:
	.string	"globAmbient"
.LASF120:
	.string	"put_UINT"
.LASF77:
	.string	"max_filter"
.LASF34:
	.string	"type"
.LASF9:
	.string	"GLuint"
.LASF66:
	.string	"row_length"
.LASF100:
	.string	"TransformC"
.LASF97:
	.string	"putType"
.LASF18:
	.string	"long long unsigned int"
.LASF165:
	.string	"texture_stack"
.LASF102:
	.string	"pixel"
.LASF42:
	.string	"spotDir"
.LASF58:
	.string	"GL_STATE_NEWLIST"
.LASF202:
	.string	"read_mode"
.LASF152:
	.string	"_texcoordelements"
.LASF56:
	.string	"GL_STATE_NONE"
.LASF11:
	.string	"GLfloat"
.LASF133:
	.string	"put_RGB"
.LASF159:
	.string	"depthtestenabled"
.LASF134:
	.string	"put_RGBA"
.LASF21:
	.string	"_vecf"
.LASF17:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF24:
	.string	"_gx_litobj"
.LASF101:
	.string	"put_UBYTE_3_3_2"
.LASF105:
	.string	"put_USHORT_5_6_5"
.LASF33:
	.string	"size"
.LASF72:
	.string	"scale"
.LASF161:
	.string	"depthfunction"
.LASF146:
	.string	"_tempnormalelement"
.LASF116:
	.string	"put_UBYTE"
.LASF20:
	.string	"Vector"
.LASF55:
	.string	"Material"
.LASF74:
	.string	"ColorTrans"
.LASF15:
	.string	"long int"
.LASF140:
	.string	"YCbCr2RGB"
.LASF53:
	.string	"emissive"
.LASF27:
	.string	"VertexElement"
.LASF109:
	.string	"put_UINT_8_8_8_8"
.LASF127:
	.string	"glReadBuffer"
.LASF94:
	.string	"rgb_scale"
.LASF177:
	.string	"blend_op"
.LASF151:
	.string	"_vertexelements"
.LASF108:
	.string	"put_USHORT_4_4_4_4_REV"
.LASF31:
	.string	"enable"
.LASF197:
	.string	"fog_startz"
.LASF13:
	.string	"double"
.LASF78:
	.string	"wrap_s"
.LASF79:
	.string	"wrap_t"
.LASF142:
	.string	"buffer"
.LASF176:
	.string	"blend_dst"
.LASF10:
	.string	"GLsizei"
.LASF50:
	.string	"quad_t"
.LASF164:
	.string	"projection_stack"
.LASF71:
	.string	"_trans"
.LASF112:
	.string	"put_GREEN"
.LASF6:
	.string	"GLint"
.LASF115:
	.string	"pixels"
.LASF206:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF51:
	.string	"LightObj"
.LASF126:
	.string	"glGetTexImage"
.LASF196:
	.string	"fog_mode"
.LASF141:
	.string	"glReadPixels"
.LASF73:
	.string	"bias"
.LASF2:
	.string	"unsigned int"
.LASF154:
	.string	"vert_i"
.LASF37:
	.string	"begin"
.LASF29:
	.string	"GXColorf"
.LASF135:
	.string	"put_LUMINANCE"
.LASF26:
	.string	"long unsigned int"
.LASF40:
	.string	"_light"
.LASF80:
	.string	"minlod"
.LASF48:
	.string	"constant"
.LASF163:
	.string	"model_stack"
.LASF54:
	.string	"shininess"
.LASF175:
	.string	"blend_src"
.LASF84:
	.string	"edgelod"
.LASF61:
	.string	"width"
.LASF124:
	.string	"level"
.LASF153:
	.string	"_colorelements"
.LASF160:
	.string	"depthupdate"
.LASF8:
	.string	"short unsigned int"
.LASF179:
	.string	"cur_state"
.LASF35:
	.string	"VertexArray"
.LASF59:
	.string	"glState"
.LASF49:
	.string	"linear"
.LASF198:
	.string	"fog_endz"
.LASF7:
	.string	"GLubyte"
.LASF123:
	.string	"target"
.LASF65:
	.string	"lsb_first"
.LASF19:
	.string	"bool"
.LASF121:
	.string	"put_INT"
.LASF5:
	.string	"short int"
.LASF155:
	.string	"_type"
.LASF203:
	.string	"call_offset"
.LASF184:
	.string	"viewPort"
.LASF172:
	.string	"gxwinding"
.LASF190:
	.string	"color_write_mask"
.LASF208:
	.string	"_glState"
.LASF139:
	.string	"__FUNCTION__"
.LASF1:
	.string	"GLboolean"
.LASF113:
	.string	"put_BLUE"
.LASF98:
	.string	"GetIlum"
.LASF148:
	.string	"norm"
.LASF99:
	.string	"clamp_255"
.LASF136:
	.string	"put_LUMINANCE_ALPHA"
.LASF68:
	.string	"skip_pixels"
.LASF173:
	.string	"lighting"
.LASF114:
	.string	"put_ALPHA"
.LASF39:
	.string	"Stack"
.LASF30:
	.string	"_array"
.LASF46:
	.string	"spotExponent"
.LASF96:
	.string	"glTexEnvSet"
.LASF167:
	.string	"cur_mode"
.LASF200:
	.string	"fog_color"
.LASF70:
	.string	"pixelStore"
.LASF181:
	.string	"fb_max_width"
.LASF104:
	.string	"put_UBYTE_2_3_3_REV"
.LASF143:
	.string	"line_width"
.LASF64:
	.string	"swap"
.LASF199:
	.string	"fog_density"
.LASF12:
	.string	"float"
.LASF193:
	.string	"_clearcolor"
.LASF192:
	.string	"copy_material"
.LASF43:
	.string	"ambient"
.LASF185:
	.string	"normNear"
.LASF69:
	.string	"alignment"
.LASF25:
	.string	"GXLightObj"
.LASF57:
	.string	"GL_STATE_BEGIN"
.LASF60:
	.string	"boxInfo"
.LASF144:
	.string	"n_lines"
.LASF118:
	.string	"put_USHORT"
.LASF3:
	.string	"unsigned char"
.LASF186:
	.string	"normFar"
.LASF178:
	.string	"cull_mode"
.LASF38:
	.string	"elem_size"
.LASF52:
	.string	"_mat"
.LASF103:
	.string	"rgba"
.LASF81:
	.string	"maxlod"
.LASF83:
	.string	"biasclamp"
.LASF106:
	.string	"put_USHORT_5_6_5_REV"
.LASF82:
	.string	"lodbias"
.LASF125:
	.string	"format"
.LASF187:
	.string	"point_size"
.LASF91:
	.string	"Aarg"
.LASF204:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF162:
	.string	"_cleardepth"
.LASF32:
	.string	"stride"
.LASF28:
	.string	"TexCoordElement"
.LASF92:
	.string	"AargOp"
.LASF137:
	.string	"write_rgb"
.LASF149:
	.string	"vert"
.LASF93:
	.string	"color"
.LASF16:
	.string	"char"
.LASF89:
	.string	"Carg"
.LASF86:
	.string	"mode"
.LASF45:
	.string	"specular"
.LASF0:
	.string	"GLenum"
.LASF22:
	.string	"_gx_color"
.LASF180:
	.string	"fb_max_height"
.LASF132:
	.string	"TransformRGBA"
.LASF182:
	.string	"scissor_test"
.LASF85:
	.string	"maxaniso"
.LASF128:
	.string	"put_USHORT_5_5_5_1"
.LASF170:
	.string	"curmat"
.LASF145:
	.string	"_tempcolorelement"
.LASF41:
	.string	"enabled"
.LASF191:
	.string	"copy_mat_enabled"
.LASF207:
	.string	"GLvoid"
.LASF188:
	.string	"pack"
.LASF88:
	.string	"comAlpha"
.LASF107:
	.string	"put_USHORT_4_4_4_4"
.LASF147:
	.string	"_temptexcoordelement"
.LASF194:
	.string	"Trans"
.LASF111:
	.string	"put_RED"
.LASF129:
	.string	"put_USHORT_1_5_5_5_REV"
.LASF75:
	.string	"_tex_env"
.LASF168:
	.string	"lights"
.LASF76:
	.string	"min_filter"
.LASF150:
	.string	"_normalelements"
.LASF110:
	.string	"put_UINT_8_8_8_8_REV"
.LASF119:
	.string	"put_SHORT"
.LASF117:
	.string	"put_BYTE"
.LASF157:
	.string	"cur_tex"
.LASF44:
	.string	"diffuse"
.LASF174:
	.string	"blend_type"
.LASF47:
	.string	"spotCutoff"
.LASF87:
	.string	"comRGB"
.LASF23:
	.string	"GXColor"
.LASF156:
	.string	"_GLtype"
.LASF36:
	.string	"_stack"
.LASF201:
	.string	"glTexEnvs"
.LASF62:
	.string	"height"
.LASF63:
	.string	"_pixelStore"
.LASF158:
	.string	"cur_tex_client"
.LASF171:
	.string	"gxcullfaceanabled"
.LASF122:
	.string	"put_FLOAT"
.LASF138:
	.string	"rgba_f"
.LASF130:
	.string	"put_UINT_10_10_10_2"
.LASF67:
	.string	"skip_rows"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
