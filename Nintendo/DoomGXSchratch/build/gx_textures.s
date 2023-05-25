	.file	"gx_textures.cpp"
	.section	".text"
.Ltext0:
	.align 2
	.type	_ZL20stb__PrepareOptTablePhPKhi, @function
_ZL20stb__PrepareOptTablePhPKhi:
.LFB53:
	.file 1 "d:/Data/Nintendo/DoomGXSchratch/src/gx/stb_dxt.h"
	.loc 1 108 0
	.cfi_startproc
.LVL0:
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
.LBB132:
.LBB133:
.LBB134:
.LBB135:
	.loc 1 110 0
	li 9,0
.LBE135:
.LBE134:
.LBE133:
.LBE132:
	.loc 1 108 0
	stw 30,8(1)
	mr. 30,5
	.cfi_offset 30, -8
	stw 31,12(1)
.LBB162:
.LBB160:
.LBB158:
.LBB156:
.LBB136:
.LBB137:
	.loc 1 122 0
	lis 5,0x51eb
.LVL1:
.LBB138:
.LBB139:
	.loc 1 92 0
	lis 31,0x5555
	.cfi_offset 31, -4
.LBE139:
.LBE138:
	.loc 1 122 0
	ori 5,5,34079
.LBB146:
.LBB140:
	.loc 1 92 0
	ori 31,31,21846
.LVL2:
.L2:
.LBE140:
.LBE146:
.LBE137:
.LBE136:
	.loc 1 112 0 discriminator 1
	ble- 0,.L5
	.loc 1 112 0 is_stmt 0
	lbz 0,0(4)
	li 6,0
	li 12,256
	mr 10,0
.LVL3:
.L8:
.LBE156:
.LBE158:
.LBE160:
.LBE162:
	.loc 1 108 0 is_stmt 1 discriminator 1
	li 11,0
.LBB163:
.LBB161:
.LBB159:
.LBB157:
.LBB154:
.LBB152:
	.loc 1 122 0 discriminator 1
	mtctr 30
	b .L6
.LVL4:
.L4:
.LBE152:
.LBE154:
	.loc 1 110 0
	lbzx 0,4,6
	lbzx 10,4,11
.LVL5:
.L6:
.LBB155:
.LBB153:
	.loc 1 122 0
	subf 8,0,10
.LBB147:
.LBB141:
	.loc 1 92 0
	slwi 10,10,1
.LVL6:
.LBE141:
.LBE147:
	.loc 1 122 0
	srawi 7,8,31
.LBB148:
.LBB142:
	.loc 1 92 0
	add 0,0,10
.LVL7:
.LBE142:
.LBE148:
	.loc 1 122 0
	xor 8,7,8
.LBB149:
.LBB143:
	.loc 1 92 0
	mulhw 10,0,31
.LBE143:
.LBE149:
	.loc 1 122 0
	subf 8,7,8
.LBB150:
.LBB144:
	.loc 1 92 0
	srawi 0,0,31
.LBE144:
.LBE150:
	.loc 1 122 0
	mulli 8,8,3
.LBB151:
.LBB145:
	.loc 1 92 0
	subf 0,0,10
.LBE145:
.LBE151:
	.loc 1 116 0
	subf 0,9,0
	.loc 1 122 0
	srawi 7,8,31
	mulhw 8,8,5
	.loc 1 116 0
	srawi 10,0,31
	xor 0,10,0
	subf 0,10,0
.LVL8:
	.loc 1 122 0
	srawi 8,8,5
	subf 8,7,8
	add 8,8,0
.LVL9:
	.loc 1 124 0
	cmpw 7,8,12
	bge- 7,.L3
	.loc 1 126 0
	stb 11,0(3)
	.loc 1 127 0
	mr 12,8
.LVL10:
	stb 6,1(3)
.LVL11:
.L3:
.LBE153:
	.loc 1 113 0
	addi 11,11,1
.LVL12:
	bdnz .L4
.LBE155:
	.loc 1 112 0
	addi 6,6,1
.LVL13:
	cmpw 7,6,30
	beq- 7,.L5
	lbz 10,0(4)
	lbzx 0,4,6
	b .L8
.LVL14:
.L5:
.LBE157:
.LBE159:
	.loc 1 110 0
	cmpwi 7,9,255
	addi 3,3,2
	addi 9,9,1
.LVL15:
	bne+ 7,.L2
.LBE161:
.LBE163:
	.loc 1 133 0
	lwz 30,8(1)
.LVL16:
	lwz 31,12(1)
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE53:
	.size	_ZL20stb__PrepareOptTablePhPKhi, .-_ZL20stb__PrepareOptTablePhPKhi
	.align 2
	.type	_ZL15stb__EvalColorsPhtt, @function
_ZL15stb__EvalColorsPhtt:
.LFB54:
	.loc 1 136 0
	.cfi_startproc
.LVL17:
	stwu 1,-24(1)
.LCFI2:
	.cfi_def_cfa_offset 24
.LBB164:
.LBB165:
	.loc 1 72 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 68 0
	srwi 0,4,11
.LBE165:
.LBE164:
	.loc 1 136 0
	stw 28,8(1)
.LBB173:
.LBB166:
	.loc 1 69 0
	rlwinm 11,4,27,26,31
.LBE166:
.LBE173:
	.loc 1 136 0
	stw 29,12(1)
.LBB174:
.LBB167:
	.loc 1 73 0
	add 11,9,11
.LBE167:
.LBE174:
	.loc 1 136 0
	stw 30,16(1)
.LBB175:
.LBB168:
	.loc 1 70 0
	rlwinm 4,4,0,27,31
.LVL18:
.LBE168:
.LBE175:
	.loc 1 136 0
	stw 31,20(1)
.LBB176:
.LBB169:
	.loc 1 75 0
	li 8,0
.LBE169:
.LBE176:
.LBB177:
.LBB178:
	.loc 1 68 0
	srwi 7,5,11
.LBE178:
.LBE177:
.LBB185:
.LBB170:
	.loc 1 72 0
	lbzx 0,9,0
.LVL19:
	stb 0,0(3)
.LBE170:
.LBE185:
.LBB186:
.LBB187:
.LBB188:
.LBB189:
	.loc 1 92 0
	slwi 28,0,1
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
.LBE189:
.LBE188:
.LBE187:
.LBE186:
.LBB218:
.LBB171:
	.loc 1 73 0
	lbz 10,32(11)
	stb 10,1(3)
.LBE171:
.LBE218:
.LBB219:
.LBB210:
.LBB194:
.LBB195:
	.loc 1 92 0
	slwi 29,10,1
.LBE195:
.LBE194:
.LBE210:
.LBE219:
.LBB220:
.LBB172:
	.loc 1 74 0
	lbzx 11,9,4
	.loc 1 75 0
	stb 8,3(3)
.LVL20:
	.loc 1 74 0
	stb 11,2(3)
.LBE172:
.LBE220:
.LBB221:
.LBB179:
	.loc 1 72 0
	lbzx 4,9,7
	.loc 1 69 0
	rlwinm 7,5,27,26,31
	.loc 1 73 0
	add 7,9,7
	.loc 1 70 0
	rlwinm 5,5,0,27,31
.LVL21:
	.loc 1 72 0
	stb 4,4(3)
.LBE179:
.LBE221:
.LBB222:
.LBB223:
.LBB224:
.LBB225:
	.loc 1 92 0
	slwi 30,4,1
	add 0,0,30
.LBE225:
.LBE224:
.LBE223:
.LBE222:
.LBB243:
.LBB211:
.LBB198:
.LBB190:
	add 4,4,28
.LBE190:
.LBE198:
.LBE211:
.LBE243:
.LBB244:
.LBB180:
	.loc 1 73 0
	lbz 6,32(7)
.LBE180:
.LBE244:
	.loc 1 141 0
	lwz 28,8(1)
.LBB245:
.LBB181:
	.loc 1 73 0
	stb 6,5(3)
.LBE181:
.LBE245:
.LBB246:
.LBB238:
.LBB227:
.LBB228:
	.loc 1 92 0
	slwi 31,6,1
	add 10,10,31
.LBE228:
.LBE227:
.LBE238:
.LBE246:
.LBB247:
.LBB212:
.LBB199:
.LBB196:
	add 6,6,29
.LBE196:
.LBE199:
.LBE212:
.LBE247:
.LBB248:
.LBB182:
	.loc 1 74 0
	lbzx 7,9,5
.LBE182:
.LBE248:
.LBB249:
.LBB213:
.LBB200:
.LBB201:
	.loc 1 92 0
	slwi 5,11,1
.LVL22:
.LBE201:
.LBE200:
.LBB204:
.LBB191:
	lis 9,0x5555
.LBE191:
.LBE204:
.LBE213:
.LBE249:
.LBB250:
.LBB183:
	.loc 1 75 0
	stb 8,7(3)
.LBE183:
.LBE250:
.LBB251:
.LBB239:
.LBB230:
.LBB231:
	.loc 1 92 0
	slwi 12,7,1
.LBE231:
.LBE230:
.LBE239:
.LBE251:
.LBB252:
.LBB214:
.LBB205:
.LBB192:
	ori 9,9,21846
.LBE192:
.LBE205:
.LBB206:
.LBB202:
	add 5,7,5
.LBE202:
.LBE206:
.LBE214:
.LBE252:
.LBB253:
.LBB240:
.LBB234:
.LBB232:
	add 11,11,12
.LBE232:
.LBE234:
.LBE240:
.LBE253:
.LBB254:
.LBB215:
.LBB207:
.LBB193:
	mulhw 4,4,9
.LVL23:
.LBE193:
.LBE207:
.LBE215:
.LBE254:
	.loc 1 141 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
.LBB255:
.LBB184:
	.loc 1 74 0
	stb 7,6(3)
.LBE184:
.LBE255:
	.loc 1 141 0
	addi 1,1,24
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
.LBB256:
.LBB216:
.LBB208:
.LBB197:
	.loc 1 92 0
	mulhw 6,6,9
.LBE197:
.LBE208:
	.loc 1 99 0
	stb 4,8(3)
.LBB209:
.LBB203:
	.loc 1 92 0
	mulhw 8,5,9
.LBE203:
.LBE209:
	.loc 1 100 0
	stb 6,9(3)
.LVL24:
.LBE216:
.LBE256:
.LBB257:
.LBB241:
.LBB235:
.LBB226:
	.loc 1 92 0
	mulhw 0,0,9
.LBE226:
.LBE235:
.LBE241:
.LBE257:
.LBB258:
.LBB217:
	.loc 1 101 0
	stb 8,10(3)
.LVL25:
.LBE217:
.LBE258:
.LBB259:
.LBB242:
.LBB236:
.LBB229:
	.loc 1 92 0
	mulhw 10,10,9
.LBE229:
.LBE236:
	.loc 1 99 0
	stb 0,12(3)
.LVL26:
.LBB237:
.LBB233:
	.loc 1 92 0
	mulhw 9,11,9
.LBE233:
.LBE237:
	.loc 1 100 0
	stb 10,13(3)
.LVL27:
	.loc 1 101 0
	stb 9,14(3)
.LBE242:
.LBE259:
	.loc 1 141 0
	blr
	.cfi_endproc
.LFE54:
	.size	_ZL15stb__EvalColorsPhtt, .-_ZL15stb__EvalColorsPhtt
	.align 2
	.type	_ZL21stb__MatchColorsBlockPhS_i, @function
_ZL21stb__MatchColorsBlockPhS_i:
.LFB56:
	.loc 1 173 0
	.cfi_startproc
.LVL28:
	stwu 1,-160(1)
.LCFI4:
	.cfi_def_cfa_offset 160
	stw 23,124(1)
	stw 24,128(1)
	stw 25,132(1)
	stw 26,136(1)
	stw 27,140(1)
	stw 28,144(1)
	stw 29,148(1)
	stw 30,152(1)
	stw 31,156(1)
.LBB260:
	.loc 1 175 0
	lbz 7,0(4)
	lbz 8,4(4)
	.loc 1 177 0
	lbz 9,2(4)
	.loc 1 176 0
	lbz 10,1(4)
	.loc 1 175 0
	subf 8,8,7
.LVL29:
	.loc 1 176 0
	lbz 11,5(4)
	.loc 1 172 0
	li 7,16
	.loc 1 177 0
	lbz 0,6(4)
	.loc 1 172 0
	mtctr 7
	.loc 1 176 0
	subf 11,11,10
.LVL30:
	.loc 1 177 0
	subf 0,0,9
.LVL31:
	addi 9,1,52
.LVL32:
.L14:
	.loc 1 184 0 discriminator 2
	lbz 10,0(3)
	lbz 6,1(3)
	lbz 7,2(3)
	mullw 10,10,8
	addi 3,3,4
	mullw 6,6,11
	mullw 7,7,0
	add 10,10,6
	add 10,10,7
	stwu 10,4(9)
	.loc 1 183 0 discriminator 2
	bdnz .L14
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.loc 1 172 0
	li 10,4
	.loc 1 183 0
	addi 9,1,4
	.loc 1 172 0
	mtctr 10
.LVL33:
.L15:
	.loc 1 187 0 discriminator 2
	lbz 10,0(4)
	lbz 6,1(4)
	lbz 7,2(4)
	mullw 10,10,8
	addi 4,4,4
	mullw 6,6,11
	mullw 7,7,0
	add 10,10,6
	add 10,10,7
	stwu 10,4(9)
	.loc 1 186 0 discriminator 2
	bdnz .L15
.LBB261:
	.loc 1 201 0
	cmpwi 7,5,0
.LBE261:
	.loc 1 198 0
	lwz 29,16(1)
	.loc 1 197 0
	lwz 5,20(1)
.LVL34:
	lwz 28,12(1)
	.loc 1 199 0
	lwz 31,8(1)
	.loc 1 198 0
	add 8,5,29
.LVL35:
	.loc 1 197 0
	add 7,28,5
	.loc 1 198 0
	srawi 8,8,1
	.loc 1 199 0
	add 10,29,31
	.loc 1 197 0
	srawi 7,7,1
.LVL36:
	.loc 1 199 0
	srawi 10,10,1
.LVL37:
.LBB285:
	.loc 1 201 0
	bne- 7,.L16
	li 0,16
.LVL38:
	addi 11,1,120
.LVL39:
	mtctr 0
	li 3,0
.LVL40:
.L21:
.LBB262:
.LBB263:
	.loc 1 204 0
	lwzu 0,-4(11)
.LVL41:
	.loc 1 205 0
	slwi 3,3,2
.LVL42:
	.loc 1 208 0
	cmpw 6,7,0
	.loc 1 210 0
	cmpw 1,10,0
	.loc 1 207 0
	cmpw 7,8,0
	.loc 1 208 0
	crnot 26,25
	.loc 1 210 0
	mfcr 0
	rlwinm 0,0,6,1
	slwi 0,0,1
	.loc 1 208 0
	mfcr 9
	rlwinm 9,9,27,1
	neg 9,9
	rlwinm 9,9,0,30,30
	addi 9,9,1
	.loc 1 207 0
	ble- 7,.L17
	.loc 1 208 0
	or 3,9,3
.LVL43:
.LBE263:
	.loc 1 203 0
	bdnz .L21
.LVL44:
.L22:
.LBE262:
.LBE285:
.LBE260:
	.loc 1 266 0
	lwz 23,124(1)
	lwz 24,128(1)
	lwz 25,132(1)
	lwz 26,136(1)
	lwz 27,140(1)
	lwz 28,144(1)
	lwz 29,148(1)
	lwz 30,152(1)
	lwz 31,156(1)
	addi 1,1,160
	.cfi_remember_state
.LCFI5:
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
.LVL45:
.L17:
.LCFI6:
	.cfi_restore_state
.LBB287:
.LBB286:
.LBB265:
.LBB264:
	.loc 1 210 0
	or 3,0,3
.LVL46:
.LBE264:
	.loc 1 203 0
	bdnz .L21
	b .L22
.LVL47:
.L16:
.LBE265:
.LBB266:
	.loc 1 221 0
	li 0,0
.LVL48:
	li 6,0
	addi 11,1,56
.LVL49:
	stw 0,24(1)
	stw 0,28(1)
.LBB267:
.LBB268:
	.loc 1 227 0
	mulli 6,6,3
.LBE268:
.LBE267:
	.loc 1 221 0
	stw 0,32(1)
	.loc 1 217 0
	slwi 27,7,4
.LVL50:
	.loc 1 221 0
	stw 0,36(1)
.LBB278:
.LBB269:
	.loc 1 253 0
	li 7,4
.LBE269:
.LBE278:
	.loc 1 221 0
	stw 0,40(1)
.LBB279:
.LBB270:
	.loc 1 253 0
	mtctr 7
.LBE270:
.LBE279:
	.loc 1 221 0
	stw 0,44(1)
	.loc 1 218 0
	slwi 8,8,4
.LVL51:
	.loc 1 221 0
	stw 0,48(1)
	.loc 1 219 0
	slwi 25,10,4
.LVL52:
	.loc 1 221 0
	stw 0,52(1)
.LVL53:
.LBB280:
.LBB271:
	.loc 1 227 0
	mulli 0,0,5
	lwz 12,0(11)
.LBE271:
.LBE280:
	.loc 1 221 0
	li 4,0
.LBB281:
.LBB272:
	.loc 1 227 0
	add 0,6,0
.LBE272:
.LBE281:
	.loc 1 214 0
	addi 9,1,40
.LBB282:
.LBB273:
	.loc 1 227 0
	slwi 7,12,4
.LBE273:
.LBE282:
	.loc 1 221 0
	addi 10,1,24
.LBB283:
.LBB274:
	.loc 1 227 0
	add 0,7,0
.LVL54:
.LBE274:
.LBE283:
	.loc 1 221 0
	li 3,0
.LBB284:
.LBB275:
	.loc 1 228 0
	cmpw 7,8,0
	ble- 7,.L23
.LVL55:
.L46:
	.loc 1 229 0
	cmpw 7,27,0
	li 30,3
	mr 0,5
.LVL56:
	ble- 7,.L24
	mr 0,28
	li 30,1
.L24:
.LVL57:
	.loc 1 232 0
	subf 0,0,12
	.loc 1 235 0
	lwz 6,4(11)
	.loc 1 232 0
	stw 0,0(10)
.LVL58:
	.loc 1 235 0
	mulli 12,0,7
	lwz 26,8(9)
	lwz 7,4(9)
	mulli 26,26,3
	mulli 7,7,5
	add 12,12,26
	lwz 26,0(9)
	add 12,12,7
	slwi 7,6,4
	add 12,12,26
	add 12,7,12
.LVL59:
	.loc 1 236 0
	cmpw 7,8,12
	ble- 7,.L25
.L47:
	.loc 1 237 0
	cmpw 7,27,12
	mr 7,5
	li 26,12
	ble- 7,.L26
	mr 7,28
	li 26,4
.L26:
.LVL60:
	.loc 1 240 0
	subf 6,7,6
	.loc 1 243 0
	lwz 12,8(11)
.LVL61:
	.loc 1 240 0
	stw 6,4(10)
	.loc 1 243 0
	mulli 7,6,7
	.loc 1 241 0
	or 26,26,30
.LVL62:
	.loc 1 243 0
	lwz 23,12(9)
	lwz 24,8(9)
	mulli 23,23,3
	mulli 24,24,5
	add 7,7,23
	lwz 23,4(9)
	add 7,7,24
	slwi 24,12,4
	add 7,7,23
	add 7,24,7
.LVL63:
	.loc 1 244 0
	cmpw 7,8,7
	ble- 7,.L27
	.loc 1 245 0
	cmpw 7,27,7
	li 30,48
	mr 7,5
.LVL64:
	ble- 7,.L28
	mr 7,28
	li 30,16
.L28:
	.loc 1 248 0
	subf 12,7,12
	.loc 1 249 0
	or 26,26,30
.LVL65:
	.loc 1 248 0
	stw 12,8(10)
	.loc 1 251 0
	mulli 24,12,7
	lwz 12,12(11)
	lwz 7,12(9)
	lwz 23,8(9)
	mulli 7,7,5
	add 7,24,7
	slwi 24,12,4
	add 7,7,23
	add 7,24,7
.LVL66:
	.loc 1 252 0
	cmpw 7,8,7
	ble- 7,.L29
	.loc 1 253 0
	cmpw 7,27,7
	li 30,192
	mr 7,5
.LVL67:
	ble- 7,.L30
	mr 7,28
	li 30,64
.L30:
	.loc 1 257 0
	or 30,26,30
	.loc 1 256 0
	subf 12,7,12
	.loc 1 260 0
	slw 30,30,4
	.loc 1 256 0
	stw 12,12(10)
.LVL68:
	.loc 1 259 0
	addi 11,11,16
.LVL69:
	.loc 1 260 0
	or 3,3,30
.LVL70:
	addi 4,4,8
.LBE275:
	.loc 1 223 0
	bdz .L22
.LBB276:
	.loc 1 227 0
	lwz 12,0(11)
	mulli 6,6,3
	mulli 0,0,5
.LBE276:
	.loc 1 223 0
	mr 7,10
	mr 10,9
.LVL71:
	mr 9,7
.LVL72:
.LBB277:
	.loc 1 227 0
	add 0,6,0
	slwi 7,12,4
.LVL73:
	add 0,7,0
.LVL74:
	.loc 1 228 0
	cmpw 7,8,0
	bgt- 7,.L46
.LVL75:
.L23:
	.loc 1 231 0
	cmpw 7,25,0
	li 30,0
	mr 0,31
.LVL76:
	ble- 7,.L24
	mr 0,29
	.loc 1 235 0
	lwz 6,4(11)
	.loc 1 232 0
	subf 0,0,12
	.loc 1 231 0
	li 30,2
.LVL77:
	.loc 1 232 0
	stw 0,0(10)
.LVL78:
	.loc 1 235 0
	mulli 12,0,7
	lwz 26,8(9)
	lwz 7,4(9)
	mulli 26,26,3
	mulli 7,7,5
	add 12,12,26
	lwz 26,0(9)
	add 12,12,7
	slwi 7,6,4
	add 12,12,26
	add 12,7,12
.LVL79:
	.loc 1 236 0
	cmpw 7,8,12
	bgt- 7,.L47
.L25:
	.loc 1 239 0
	cmpw 7,25,12
	mr 7,31
	li 26,0
	ble- 7,.L26
	mr 7,29
	li 26,8
	b .L26
.LVL80:
.L29:
	.loc 1 255 0
	cmpw 7,25,7
	li 30,0
	mr 7,31
.LVL81:
	ble- 7,.L30
	mr 7,29
	li 30,128
	b .L30
.LVL82:
.L27:
	.loc 1 247 0
	cmpw 7,25,7
	li 30,0
	mr 7,31
.LVL83:
	ble- 7,.L28
	mr 7,29
	li 30,32
	b .L28
.LBE277:
.LBE284:
.LBE266:
.LBE286:
.LBE287:
	.cfi_endproc
.LFE56:
	.size	_ZL21stb__MatchColorsBlockPhS_i, .-_ZL21stb__MatchColorsBlockPhS_i
	.align 2
	.type	_ZL18qgx_GLWrapModeToGXi, @function
_ZL18qgx_GLWrapModeToGXi:
.LFB42:
	.file 2 "d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_textures.cpp"
	.loc 2 120 0
	.cfi_startproc
.LVL84:
	mflr 0
	stwu 1,-8(1)
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 4,3
	stw 0,12(1)
	.loc 2 121 0
	xoris 0,3,0xffff
	.cfi_offset 65, 4
	cmpwi 7,0,-32467
	beq 7,.L52
	xoris 0,3,0xffff
	cmpwi 7,0,-32465
	beq 7,.L52
	cmpwi 7,3,10497
	.loc 2 123 0
	li 3,1
.LVL85:
	.loc 2 121 0
	beq- 7,.L51
	.loc 2 129 0
	lis 3,.LC0@ha
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL86:
	.loc 2 131 0
	li 3,0
.L51:
	.loc 2 132 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI8:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL87:
.L52:
.LCFI9:
	.cfi_restore_state
	lwz 0,12(1)
	.loc 2 125 0
	li 3,0
.LVL88:
	.loc 2 132 0
	addi 1,1,8
.LCFI10:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE42:
	.size	_ZL18qgx_GLWrapModeToGXi, .-_ZL18qgx_GLWrapModeToGXi
	.align 2
	.type	_ZL16qgx_GLFilterToGXi, @function
_ZL16qgx_GLFilterToGXi:
.LFB41:
	.loc 2 100 0
	.cfi_startproc
.LVL89:
	.loc 2 101 0
	cmpwi 7,3,9984
	.loc 2 100 0
	mflr 0
	stwu 1,-16(1)
.LCFI11:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 2 101 0
	beq- 7,.L57
	.cfi_offset 65, 4
	ble- 7,.L63
	cmpwi 7,3,9986
	beq- 7,.L59
	bge- 7,.L64
	.loc 2 113 0
	lis 3,.LC3@ha
.LVL90:
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.L54:
	.loc 2 115 0
	lis 3,.LC4@ha
	mr 4,31
	la 3,.LC4@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	.loc 2 117 0
	li 3,0
.L55:
	.loc 2 118 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL91:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI12:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL92:
.L63:
.LCFI13:
	.cfi_restore_state
	.loc 2 101 0
	cmpwi 7,3,9728
	.loc 2 105 0
	li 3,0
.LVL93:
	.loc 2 101 0
	beq- 7,.L55
	cmpwi 7,31,9729
	.loc 2 103 0
	li 3,1
	.loc 2 101 0
	bne+ 7,.L54
	b .L55
.L57:
	.loc 2 109 0
	lis 3,.LC1@ha
	la 3,.LC1@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.L59:
	.loc 2 111 0
	lis 3,.LC2@ha
	la 3,.LC2@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	.loc 2 113 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L54
.L64:
	.loc 2 101 0
	cmpwi 7,3,9987
	.loc 2 107 0
	li 3,5
	.loc 2 101 0
	bne+ 7,.L54
	b .L55
	.cfi_endproc
.LFE41:
	.size	_ZL16qgx_GLFilterToGXi, .-_ZL16qgx_GLFilterToGXi
	.align 2
	.type	_ZL13qgx_ReadColorP9_gx_coloriiiiPh, @function
_ZL13qgx_ReadColorP9_gx_coloriiiiPh:
.LFB44:
	.loc 2 159 0
	.cfi_startproc
.LVL94:
.LBB288:
	.loc 2 163 0
	cmpwi 7,7,6408
.LBE288:
	.loc 2 159 0
	mflr 0
	stwu 1,-8(1)
.LCFI14:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB289:
	.loc 2 163 0
	beq- 7,.L68
	.cfi_offset 65, 4
.LVL95:
	.loc 2 183 0
	lis 3,.LC5@ha
.LVL96:
	mr 4,7
.LVL97:
	la 3,.LC5@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL98:
.LBE289:
	.loc 2 185 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI15:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL99:
.L68:
.LCFI16:
	.cfi_restore_state
.LBB290:
	.loc 2 170 0
	mullw 5,5,6
.LVL100:
	add 4,5,4
.LVL101:
	slwi 4,4,2
	.loc 2 173 0
	lbzx 0,8,4
	.loc 2 170 0
	add 8,8,4
.LVL102:
	.loc 2 173 0
	stb 0,0(3)
	.loc 2 174 0
	lbz 0,1(8)
	stb 0,1(3)
	.loc 2 175 0
	lbz 0,2(8)
	stb 0,2(3)
	.loc 2 176 0
	lbz 0,3(8)
	stb 0,3(3)
.LBE290:
	.loc 2 185 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI17:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE44:
	.size	_ZL13qgx_ReadColorP9_gx_coloriiiiPh, .-_ZL13qgx_ReadColorP9_gx_coloriiiiPh
	.align 2
	.globl _Z16qgx_InitTexturesv
	.type	_Z16qgx_InitTexturesv, @function
_Z16qgx_InitTexturesv:
.LFB38:
	.loc 2 53 0
	.cfi_startproc
	mflr 0
	stwu 1,-24(1)
.LCFI18:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	.loc 2 54 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.loc 2 53 0
	stw 0,28(1)
	.loc 2 54 0
	la 31,.LANCHOR0@l(31)
	.loc 2 53 0
	stw 29,12(1)
	stw 30,16(1)
	.loc 2 54 0
	lwz 30,96(31)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	cmpwi 7,30,0
	beq- 7,.L71
	.loc 2 67 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI19:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.L71:
.LCFI20:
	.cfi_restore_state
	.loc 2 56 0
	lis 3,.LC6@ha
	la 3,.LC6@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 2 57 0
	li 4,26624
	li 3,32
	bl memalign
	.loc 2 58 0
	li 4,0
	.loc 2 57 0
	stw 3,96(31)
	.loc 2 58 0
	li 5,26624
	.loc 2 57 0
	mr 29,3
	.loc 2 58 0
	bl memset
	.loc 2 59 0
	lis 3,.LC7@ha
	mr 4,29
	la 3,.LC7@l(3)
	li 5,26624
	li 6,52
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 2 60 0
	li 0,1
	stw 0,100(31)
	.loc 2 61 0
	stw 30,104(31)
	.loc 2 62 0
	stw 30,108(31)
	.loc 2 67 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI21:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE38:
	.size	_Z16qgx_InitTexturesv, .-_Z16qgx_InitTexturesv
	.align 2
	.globl _Z22stb_compress_dxt_blockPhPKhii
	.type	_Z22stb_compress_dxt_blockPhPKhii, @function
_Z22stb_compress_dxt_blockPhPKhii:
.LFB63:
	.loc 1 615 0
	.cfi_startproc
.LVL103:
	stwu 1,-400(1)
.LCFI22:
	.cfi_def_cfa_offset 400
	mflr 0
	mfcr 12
	stw 27,380(1)
.LBB369:
	.loc 1 617 0
	lis 27,.LANCHOR1@ha
	.cfi_offset 27, -20
	.cfi_register 70, 12
	.cfi_register 65, 0
.LBE369:
	.loc 1 615 0
	stw 0,404(1)
.LBB620:
	.loc 1 617 0
	lwz 0,.LANCHOR1@l(27)
	.cfi_offset 65, 4
.LBE620:
	.loc 1 615 0
	stw 26,376(1)
	mr 26,5
	.cfi_offset 26, -24
.LBB621:
	.loc 1 617 0
	cmpwi 7,0,0
.LBE621:
	.loc 1 615 0
	stw 30,392(1)
	stw 31,396(1)
	mr 30,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	stw 14,328(1)
	mr 31,4
	stw 15,332(1)
	stw 16,336(1)
	stw 17,340(1)
	stw 18,344(1)
	stw 19,348(1)
	stw 20,352(1)
	stw 21,356(1)
	stw 22,360(1)
	stw 23,364(1)
	stw 24,368(1)
	stw 25,372(1)
	stw 28,384(1)
	stw 29,388(1)
	stw 12,324(1)
.LBB622:
	.loc 1 617 0
	bne- 7,.L170
	.cfi_offset 70, -76
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	.cfi_offset 16, -64
	.cfi_offset 15, -68
	.cfi_offset 14, -72
.LVL104:
.L73:
	.loc 1 622 0
	cmpwi 7,26,0
	bne- 7,.L171
.LVL105:
.L79:
.LBB370:
.LBB371:
	.loc 1 473 0
	andi. 8,6,2
	.loc 1 476 0
	li 10,15
	.loc 1 473 0
	lwz 11,0(31)
	.loc 1 476 0
	mtctr 10
	.loc 1 473 0
	mfcr 20
	rlwinm 20,20,3,1
	mr 9,31
	subfic 20,20,2
.LVL106:
.L90:
	.loc 1 477 0
	lwzu 0,4(9)
	cmpw 7,0,11
	bne- 7,.L89
	.loc 1 476 0
	bdnz .L90
.LBB372:
	.loc 1 481 0
	lbz 10,0(31)
.LVL107:
	.loc 1 483 0
	lis 9,.LANCHOR0@ha
	.loc 1 481 0
	lbz 11,1(31)
.LVL108:
	.loc 1 483 0
	la 0,.LANCHOR0@l(9)
	slwi 10,10,1
.LVL109:
	.loc 1 481 0
	lbz 9,2(31)
.LVL110:
	.loc 1 483 0
	slwi 11,11,1
.LVL111:
	add 10,0,10
	add 11,0,11
	lbz 15,656(10)
	lbz 8,1168(11)
	slwi 9,9,1
.LVL112:
	.loc 1 484 0
	lbz 17,657(10)
	.loc 1 483 0
	add 9,0,9
	.loc 1 484 0
	lbz 10,1169(11)
	.loc 1 483 0
	slwi 15,15,11
	slwi 8,8,5
	lbz 11,656(9)
	.loc 1 484 0
	slwi 17,17,11
	slwi 10,10,5
	lbz 0,657(9)
	.loc 1 483 0
	or 15,15,8
	.loc 1 484 0
	or 17,17,10
	.loc 1 483 0
	or 15,15,11
	.loc 1 484 0
	or 17,17,0
	.loc 1 482 0
	lis 28,0xaaaa
	.loc 1 483 0
	rlwinm 15,15,0,0xffff
.LVL113:
	.loc 1 484 0
	rlwinm 17,17,0,0xffff
.LVL114:
	.loc 1 482 0
	ori 28,28,43690
.LVL115:
.L129:
.LBE372:
.LBB373:
	.loc 1 518 0
	cmplw 7,17,15
	ble- 7,.L130
.LVL116:
.LBB374:
	.loc 1 523 0
	mr 0,15
	xoris 28,28,0x5555
.LVL117:
	mr 15,17
.LVL118:
	xori 28,28,21845
.LVL119:
	mr 17,0
.LVL120:
.L130:
	.loc 1 527 0
	li 8,16
	.loc 1 526 0
	li 0,0
	.loc 1 527 0
	mtctr 8
	li 9,0
.LVL121:
.L132:
.LBE374:
.LBE373:
.LBB375:
	.loc 1 528 0
	srw 11,28,9
	.loc 1 614 0
	subfic 10,9,30
	.loc 1 528 0
	rlwinm 11,11,0,30,31
	.loc 1 527 0
	addi 9,9,2
	.loc 1 528 0
	slw 11,11,10
	or 0,0,11
.LVL122:
	.loc 1 527 0
	bdnz .L132
.LVL123:
.LBE375:
	.loc 1 531 0
	srawi 7,15,8
	.loc 1 533 0
	srawi 8,17,8
	.loc 1 535 0
	srwi 10,0,24
	.loc 1 536 0
	srwi 11,0,16
	.loc 1 537 0
	srwi 9,0,8
.LVL124:
	.loc 1 531 0
	stb 7,0(30)
	.loc 1 532 0
	stb 15,1(30)
	.loc 1 533 0
	stb 8,2(30)
	.loc 1 534 0
	stb 17,3(30)
	.loc 1 535 0
	stb 10,4(30)
	.loc 1 536 0
	stb 11,5(30)
	.loc 1 537 0
	stb 9,6(30)
	.loc 1 538 0
	stb 0,7(30)
.LBE371:
.LBE370:
.LBE622:
	.loc 1 628 0
	lwz 0,404(1)
.LVL125:
	lwz 12,324(1)
	mtlr 0
	lwz 14,328(1)
	lwz 15,332(1)
.LVL126:
	mtcrf 8,12
	lwz 16,336(1)
	lwz 17,340(1)
.LVL127:
	lwz 18,344(1)
	lwz 19,348(1)
	lwz 20,352(1)
.LVL128:
	lwz 21,356(1)
	lwz 22,360(1)
	lwz 23,364(1)
	lwz 24,368(1)
	lwz 25,372(1)
	lwz 26,376(1)
	lwz 27,380(1)
	lwz 28,384(1)
	lwz 29,388(1)
	lwz 30,392(1)
.LVL129:
	lwz 31,396(1)
.LVL130:
	addi 1,1,400
	.cfi_remember_state
.LCFI23:
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
.LVL131:
.L89:
.LCFI24:
	.cfi_restore_state
.LBB623:
.LBB580:
.LBB577:
.LBB376:
	.loc 1 487 0
	rlwinm 11,6,0,31,31
	mr 25,31
	cmpwi 4,11,0
	addi 24,1,84
	stw 11,308(1)
	bne- 4,.L172
.LVL132:
.L93:
.LBB377:
.LBB378:
.LBB379:
	.loc 1 151 0
	mr 11,25
.LBE379:
.LBE378:
.LBE377:
	.loc 1 487 0
	mr 6,25
	li 5,0
	addi 27,1,32
	addi 3,1,20
	addi 4,1,8
.LVL133:
.L99:
.LBB384:
.LBB385:
.LBB386:
.LBB387:
	.loc 1 288 0
	lbz 7,0(6)
.LVL134:
	.loc 1 289 0
	li 0,15
	li 9,4
	mtctr 0
	.loc 1 288 0
	mr 8,7
	mr 10,7
	b .L98
.LVL135:
.L174:
	.loc 1 293 0
	bge- 6,.L97
	mr 7,0
.LVL136:
.L97:
	.loc 1 289 0
	addi 9,9,4
.LVL137:
	bdz .L173
.LVL138:
.L98:
	.loc 1 291 0
	lbzx 0,6,9
	.loc 1 292 0
	cmpw 7,8,0
	.loc 1 293 0
	cmpw 6,7,0
	.loc 1 291 0
	add 10,10,0
.LVL139:
	.loc 1 292 0
	ble- 7,.L174
	mr 8,0
.LVL140:
	.loc 1 289 0
	addi 9,9,4
.LVL141:
	bdnz .L98
.LVL142:
.L173:
.LBE387:
	.loc 1 283 0
	cmpwi 7,5,8
.LBB388:
	.loc 1 296 0
	addi 10,10,8
.LVL143:
	srawi 10,10,4
.LVL144:
	.loc 1 297 0
	stwx 8,3,5
	.loc 1 296 0
	stwx 10,27,5
	.loc 1 298 0
	addi 6,6,1
.LVL145:
	stwx 7,4,5
.LBE388:
	.loc 1 283 0
	addi 5,5,4
	bne+ 7,.L99
.LVL146:
.LBB389:
	.loc 1 614 0
	li 8,16
.LVL147:
.LBE389:
	.loc 1 283 0
	lwz 19,32(1)
	lwz 21,36(1)
.LBB390:
	.loc 1 614 0
	mtctr 8
.LBE390:
	.loc 1 283 0
	lwz 22,40(1)
	.loc 1 614 0
	addi 9,25,1
.LBB391:
	li 6,0
.LVL148:
	li 5,0
.LVL149:
	li 4,0
	li 3,0
	li 27,0
	li 7,0
.LVL150:
.L100:
.LBE391:
.LBE386:
.LBB392:
.LBB393:
	.loc 1 307 0
	lbz 8,-1(9)
	.loc 1 308 0
	lbz 10,0(9)
	.loc 1 307 0
	subf 8,19,8
.LVL151:
	.loc 1 309 0
	lbz 0,1(9)
	.loc 1 308 0
	subf 10,21,10
.LVL152:
	.loc 1 311 0
	mullw 23,8,8
	.loc 1 309 0
	subf 0,22,0
.LVL153:
	.loc 1 316 0
	addi 9,9,4
	.loc 1 312 0
	mullw 26,8,10
	.loc 1 311 0
	add 7,7,23
	.loc 1 313 0
	mullw 8,8,0
.LVL154:
	.loc 1 312 0
	add 27,27,26
	.loc 1 314 0
	mullw 26,10,10
	.loc 1 313 0
	add 3,3,8
	.loc 1 315 0
	mullw 10,10,0
.LVL155:
	.loc 1 314 0
	add 4,4,26
	.loc 1 316 0
	mullw 0,0,0
.LVL156:
	.loc 1 315 0
	add 5,5,10
	.loc 1 316 0
	add 6,6,0
.LBE393:
	.loc 1 305 0
	bdnz .L100
	lis 26,.LC9@ha
.LBE392:
	.loc 1 321 0
	lis 9,.LC10@ha
	la 26,.LC9@l(26)
	li 10,6
	lfs 13,.LC10@l(9)
	lis 8,0x4330
.LBB394:
	.loc 1 305 0
	stw 7,60(1)
	li 9,0
	stw 27,64(1)
.LBE394:
	.loc 1 321 0
	mtctr 10
.LBB395:
	.loc 1 305 0
	stw 3,68(1)
	stw 4,72(1)
	stw 5,76(1)
	stw 6,80(1)
.LBE395:
	.loc 1 321 0
	lfs 11,0(26)
	b .L102
.L175:
	.loc 1 320 0
	addi 10,1,60
	lwzx 7,9,10
.L102:
	.loc 1 321 0
	xoris 0,7,0x8000
	stw 8,184(1)
	stw 0,188(1)
	lis 0,0x4330
	lfd 0,184(1)
	fsub 0,0,11
	frsp 0,0
	fdivs 0,0,13
	stfsx 0,24,9
	addi 9,9,4
	.loc 1 320 0
	bdnz .L175
	.loc 1 323 0
	lwz 9,20(1)
	lwz 8,8(1)
	.loc 1 324 0
	lwz 10,12(1)
	.loc 1 323 0
	subf 8,9,8
	.loc 1 324 0
	lwz 9,24(1)
	.loc 1 325 0
	lwz 7,16(1)
	.loc 1 323 0
	xoris 8,8,0x8000
	.loc 1 324 0
	subf 10,9,10
	.loc 1 325 0
	lwz 9,28(1)
	.loc 1 324 0
	xoris 10,10,0x8000
	.loc 1 323 0
	stw 0,192(1)
	.loc 1 325 0
	subf 9,9,7
	.loc 1 324 0
	stw 0,200(1)
	.loc 1 325 0
	xoris 9,9,0x8000
	stw 0,208(1)
	.loc 1 323 0
	stw 8,196(1)
	.loc 1 325 0
	li 0,4
	.loc 1 324 0
	stw 10,204(1)
	.loc 1 325 0
	mtctr 0
	stw 9,212(1)
	.loc 1 323 0
	lfd 12,192(1)
	.loc 1 324 0
	lfd 13,200(1)
	.loc 1 325 0
	lfd 0,208(1)
	.loc 1 323 0
	fsub 12,12,11
	.loc 1 324 0
	fsub 13,13,11
	.loc 1 325 0
	lfs 3,84(1)
	fsub 0,0,11
	lfs 9,88(1)
	.loc 1 323 0
	frsp 12,12
.LVL157:
	.loc 1 325 0
	lfs 10,92(1)
	.loc 1 324 0
	frsp 13,13
.LVL158:
	.loc 1 325 0
	lfs 4,96(1)
	frsp 0,0
.LVL159:
	lfs 11,100(1)
	lfs 5,104(1)
.LVL160:
.L103:
.LBB396:
.LBB397:
	.loc 1 329 0
	fmuls 7,13,9
	.loc 1 331 0
	fmuls 8,13,11
	.loc 1 330 0
	fmuls 6,13,4
.LBE397:
.LBE396:
	.loc 1 329 0
	fmadds 7,12,3,7
	.loc 1 331 0
	fmadds 8,12,10,8
	.loc 1 330 0
	fmadds 13,12,9,6
.LVL161:
	.loc 1 329 0
	fmadds 12,0,10,7
.LVL162:
	.loc 1 330 0
	fmadds 13,0,11,13
.LVL163:
	.loc 1 331 0
	fmadds 0,0,5,8
.LVL164:
.LBB398:
	.loc 1 327 0
	bdnz .L103
.LBE398:
	.loc 1 338 0
	fabs 11,12
	.loc 1 339 0
	fabs 10,13
	.loc 1 338 0
	fmr 9,11
.LVL165:
	.loc 1 339 0
	fcmpu 7,9,10
	blt- 7,.L104
	.loc 1 338 0
	fmr 10,11
.L104:
.LVL166:
	.loc 1 340 0
	fabs 11,0
	fcmpu 7,11,10
	bgt- 7,.L105
	fmr 11,10
.L105:
.LVL167:
	.loc 1 342 0
	lis 9,.LC12@ha
	lfs 10,.LC12@l(9)
	fcmpu 7,11,10
	blt- 7,.L145
	.loc 1 347 0
	lis 9,.LC14@ha
	.loc 1 348 0
	addi 7,1,296
	.loc 1 347 0
	lfs 10,.LC14@l(9)
	.loc 1 349 0
	addi 8,1,300
	.loc 1 350 0
	addi 9,1,304
	.loc 1 347 0
	fdiv 11,10,11
.LVL168:
	.loc 1 348 0
	fmul 12,11,12
.LVL169:
	.loc 1 349 0
	fmul 13,11,13
.LVL170:
	.loc 1 350 0
	fmul 0,11,0
.LVL171:
	.loc 1 348 0
	fctiwz 12,12
	.loc 1 349 0
	fctiwz 13,13
	.loc 1 350 0
	fctiwz 0,0
	.loc 1 348 0
	stfiwx 12,0,7
	.loc 1 349 0
	stfiwx 13,0,8
	.loc 1 350 0
	stfiwx 0,0,9
	.loc 1 348 0
	lwz 6,296(1)
.LVL172:
	.loc 1 349 0
	lwz 5,300(1)
.LVL173:
	.loc 1 350 0
	lwz 4,304(1)
.LVL174:
.L106:
	.loc 1 271 0
	lis 7,0x8000
	lis 8,0x7fff
	.loc 1 614 0
	addi 25,25,64
.LVL175:
	.loc 1 271 0
	ori 7,7,1
	ori 8,8,65535
.LVL176:
.L109:
.LBB399:
.LBB400:
	.loc 1 356 0
	lbz 0,0(11)
	lbz 10,1(11)
	lbz 9,2(11)
	mullw 0,0,6
	mullw 10,10,5
	mullw 9,9,4
	add 0,0,10
	add 0,0,9
.LVL177:
	.loc 1 358 0
	cmpw 6,8,0
	.loc 1 363 0
	cmpw 7,7,0
	.loc 1 358 0
	ble- 6,.L107
	mr 28,11
	mr 8,0
.L107:
.LVL178:
	.loc 1 363 0
	bge- 7,.L108
	mr 29,11
	mr 7,0
.L108:
.LVL179:
	addi 11,11,4
.LBE400:
	.loc 1 354 0
	cmpw 7,11,25
	bne+ 7,.L109
.LVL180:
.LBE399:
	.loc 1 370 0
	lbz 10,0(28)
	lbz 11,1(28)
	.loc 1 369 0
	lbz 7,0(29)
.LVL181:
.LBB401:
.LBB402:
.LBB403:
.LBB404:
	.loc 1 62 0
	mulli 10,10,31
.LBE404:
.LBE403:
.LBE402:
.LBE401:
	.loc 1 369 0
	lbz 8,1(29)
.LVL182:
.LBB440:
.LBB429:
.LBB408:
.LBB409:
	.loc 1 62 0
	mulli 11,11,63
.LBE409:
.LBE408:
.LBE429:
.LBE440:
	.loc 1 370 0
	lbz 6,2(28)
.LVL183:
.LBB441:
.LBB442:
.LBB443:
.LBB444:
	.loc 1 62 0
	mulli 7,7,31
.LBE444:
.LBE443:
.LBE442:
.LBE441:
	.loc 1 369 0
	lbz 9,2(29)
.LBB479:
.LBB469:
.LBB448:
.LBB449:
	.loc 1 62 0
	mulli 8,8,63
.LBE449:
.LBE448:
.LBE469:
.LBE479:
.LBB480:
.LBB430:
.LBB413:
.LBB414:
	mulli 6,6,31
.LBE414:
.LBE413:
.LBE430:
.LBE480:
.LBB481:
.LBB470:
.LBB453:
.LBB445:
	addi 7,7,128
.LVL184:
.LBE445:
.LBE453:
.LBB454:
.LBB455:
	mulli 9,9,31
.LBE455:
.LBE454:
.LBB460:
.LBB450:
	addi 8,8,128
.LVL185:
.LBE450:
.LBE460:
.LBE470:
.LBE481:
.LBB482:
.LBB431:
.LBB419:
.LBB405:
	addi 10,10,128
.LBE405:
.LBE419:
.LBB420:
.LBB410:
	addi 11,11,128
.LBE410:
.LBE420:
.LBB421:
.LBB415:
	addi 0,6,128
.LVL186:
.LBE415:
.LBE421:
.LBE431:
.LBE482:
.LBB483:
.LBB471:
.LBB461:
.LBB456:
	addi 9,9,128
.LVL187:
.LBE456:
.LBE461:
.LBB462:
.LBB451:
	.loc 1 63 0
	srawi 5,8,8
.LVL188:
.LBE451:
.LBE462:
.LBE471:
.LBE483:
.LBB484:
.LBB432:
.LBB422:
.LBB411:
	srawi 6,11,8
.LBE411:
.LBE422:
.LBE432:
.LBE484:
.LBB485:
.LBB472:
.LBB463:
.LBB446:
	srawi 3,7,8
.LBE446:
.LBE463:
.LBE472:
.LBE485:
.LBB486:
.LBB433:
.LBB423:
.LBB406:
	srawi 4,10,8
.LVL189:
.LBE406:
.LBE423:
.LBE433:
.LBE486:
.LBB487:
.LBB473:
.LBB464:
.LBB452:
	add 8,8,5
.LVL190:
.LBE452:
.LBE464:
.LBE473:
.LBE487:
.LBB488:
.LBB434:
.LBB424:
.LBB412:
	add 11,11,6
.LBE412:
.LBE424:
.LBE434:
.LBE488:
.LBB489:
.LBB474:
.LBB465:
.LBB447:
	add 7,7,3
.LVL191:
.LBE447:
.LBE465:
.LBB466:
.LBB457:
	srawi 5,9,8
.LBE457:
.LBE466:
.LBE474:
.LBE489:
.LBB490:
.LBB435:
.LBB425:
.LBB407:
	add 10,10,4
.LBE407:
.LBE425:
.LBB426:
.LBB416:
	srawi 6,0,8
.LBE416:
.LBE426:
.LBE435:
.LBE490:
.LBB491:
.LBB475:
	.loc 1 80 0
	rlwinm 21,7,3,14,20
	rlwinm 8,8,29,19,26
.LBB467:
.LBB458:
	.loc 1 63 0
	add 9,9,5
.LVL192:
.LBE458:
.LBE467:
.LBE475:
.LBE491:
.LBB492:
.LBB436:
	.loc 1 80 0
	rlwinm 23,10,3,14,20
	rlwinm 11,11,29,19,26
.LBB427:
.LBB417:
	.loc 1 63 0
	add 0,0,6
.LBE417:
.LBE427:
.LBE436:
.LBE492:
.LBB493:
.LBB476:
	.loc 1 80 0
	add 21,21,8
.LBB468:
.LBB459:
	.loc 1 63 0
	srawi 9,9,8
.LBE459:
.LBE468:
.LBE476:
.LBE493:
.LBB494:
.LBB437:
	.loc 1 80 0
	add 23,23,11
.LBB428:
.LBB418:
	.loc 1 63 0
	srawi 0,0,8
.LBE418:
.LBE428:
.LBE437:
.LBE494:
.LBB495:
.LBB477:
	.loc 1 80 0
	add 21,21,9
.LBE477:
.LBE495:
.LBB496:
.LBB438:
	add 23,23,0
.LBE438:
.LBE496:
.LBB497:
.LBB478:
	rlwinm 21,21,0,0xffff
.LVL193:
.LBE478:
.LBE497:
.LBB498:
.LBB439:
	rlwinm 23,23,0,0xffff
.LVL194:
.LBE439:
.LBE498:
.LBE385:
.LBE384:
	.loc 1 492 0
	cmpw 7,21,23
	.loc 1 496 0
	li 28,0
.LVL195:
	.loc 1 492 0
	beq- 7,.L110
	.loc 1 493 0
	addi 3,1,44
	mr 4,21
	mr 5,23
	bl _ZL15stb__EvalColorsPhtt
.LVL196:
	.loc 1 494 0
	lwz 5,308(1)
	mr 3,31
	addi 4,1,44
	bl _ZL21stb__MatchColorsBlockPhS_i
	mr 28,3
.LVL197:
.L110:
	lis 29,.LANCHOR2@ha
.LBB500:
.LBB501:
.LBB502:
.LBB503:
.LBB504:
.LBB505:
	.loc 1 414 0
	lis 22,.LANCHOR0@ha
.LBE505:
.LBE504:
.LBE503:
.LBE502:
.LBE501:
	.loc 1 499 0
	li 24,0
	la 29,.LANCHOR2@l(29)
.LBB570:
.LBB563:
.LBB556:
.LBB548:
.LBB506:
	.loc 1 444 0
	lis 27,0x4330
	lis 18,.LC15@ha
	.loc 1 445 0
	lis 19,.LC16@ha
.LBB507:
.LBB508:
	.loc 1 448 0
	lis 25,.LC18@ha
.LVL198:
.LBE508:
.LBE507:
.LBE506:
.LBB544:
	.loc 1 414 0
	la 22,.LANCHOR0@l(22)
.LBE544:
.LBE548:
.LBE556:
.LBE563:
	.loc 1 502 0
	beq- 4,.L147
.LVL199:
.L178:
.LBB564:
.LBB557:
.LBB549:
	.loc 1 401 0
	slwi 0,28,2
.LBE549:
.LBE557:
.LBE564:
	.loc 1 502 0
	addi 9,1,116
.LVL200:
.LBB565:
.LBB558:
.LBB550:
	.loc 1 401 0
	xor 0,0,28
	.loc 1 614 0
	addi 9,9,1
.LVL201:
	.loc 1 401 0
	cmplwi 7,0,3
	bgt- 7,.L112
.LVL202:
.L179:
.LBE550:
.LBE558:
.LBE565:
	.loc 1 614 0
	li 7,16
	li 0,8
	mtctr 7
	li 11,8
	li 10,8
.L113:
.LBB566:
.LBB559:
.LBB551:
.LBB545:
	.loc 1 407 0
	lbz 6,-1(9)
	.loc 1 408 0
	lbz 7,0(9)
	.loc 1 409 0
	lbz 8,1(9)
	.loc 1 407 0
	add 10,10,6
.LVL203:
	.loc 1 408 0
	add 11,11,7
.LVL204:
	.loc 1 409 0
	addi 9,9,4
	add 0,0,8
.LVL205:
	.loc 1 406 0
	bdnz .L113
	.loc 1 412 0
	srawi 10,10,4
.LVL206:
	srawi 11,11,4
.LVL207:
	.loc 1 414 0
	slwi 10,10,1
.LVL208:
	slwi 11,11,1
.LVL209:
	add 10,22,10
	add 11,22,11
	.loc 1 412 0
	srawi 9,0,4
.LVL210:
	.loc 1 414 0
	lbz 15,656(10)
	.loc 1 415 0
	lbz 17,657(10)
	.loc 1 414 0
	slwi 9,9,1
.LVL211:
	.loc 1 415 0
	lbz 10,1169(11)
	.loc 1 414 0
	add 9,22,9
	.loc 1 415 0
	slwi 17,17,11
	lbz 0,657(9)
.LVL212:
	slwi 10,10,5
	.loc 1 414 0
	lbz 8,1168(11)
	.loc 1 415 0
	or 17,17,10
	.loc 1 414 0
	slwi 15,15,11
	.loc 1 415 0
	or 17,17,0
	.loc 1 414 0
	slwi 8,8,5
	.loc 1 415 0
	rlwinm 17,17,0,0xffff
	.loc 1 414 0
	lbz 11,656(9)
.LBE545:
.LBE551:
	.loc 1 459 0
	cmpw 7,17,23
.LBB552:
.LBB546:
	.loc 1 414 0
	or 15,15,8
	or 15,15,11
	rlwinm 15,15,0,0xffff
.LVL213:
.LBE546:
.LBE552:
	.loc 1 459 0
	beq- 7,.L176
.LVL214:
.L128:
.LBE559:
.LBE566:
	.loc 1 503 0
	cmpw 7,17,15
	beq- 7,.L148
.L180:
	.loc 1 504 0
	addi 3,1,44
	mr 4,15
	mr 5,17
	bl _ZL15stb__EvalColorsPhtt
	.loc 1 505 0
	lwz 5,308(1)
	mr 3,31
	addi 4,1,44
	bl _ZL21stb__MatchColorsBlockPhS_i
.LVL215:
	.loc 1 512 0
	cmpw 7,28,3
	beq- 7,.L129
.LBE570:
	.loc 1 499 0
	addi 24,24,1
.LVL216:
	cmpw 7,24,20
	bge- 7,.L177
	mr 21,15
	mr 23,17
	mr 28,3
.LVL217:
.LBB571:
	.loc 1 502 0
	bne- 4,.L178
.LVL218:
.L147:
.LBB567:
.LBB560:
.LBB553:
	.loc 1 401 0
	slwi 0,28,2
.LBE553:
.LBE560:
.LBE567:
	.loc 1 502 0
	mr 9,31
.LVL219:
.LBB568:
.LBB561:
.LBB554:
	.loc 1 401 0
	xor 0,0,28
	.loc 1 614 0
	addi 9,9,1
	.loc 1 401 0
	cmplwi 7,0,3
	ble- 7,.L179
.LVL220:
.L112:
	li 8,16
.LBE554:
.LBE561:
.LBE568:
	.loc 1 614 0
	mr 11,28
	mtctr 8
	li 16,0
	li 15,0
	li 14,0
	li 5,0
	li 3,0
	li 4,0
	li 17,0
.LVL221:
.L115:
.LBB569:
.LBB562:
.LBB555:
.LBB547:
.LBB512:
.LBB513:
	.loc 1 421 0
	rlwinm 6,11,2,28,29
	.loc 1 422 0
	lbz 7,-1(9)
	.loc 1 421 0
	lwzx 0,29,6
.LVL222:
	add 6,29,6
.LVL223:
	.loc 1 423 0
	lbz 8,0(9)
.LVL224:
	.loc 1 430 0
	add 14,14,7
	.loc 1 424 0
	lbz 10,1(9)
.LVL225:
	.loc 1 427 0
	mullw 12,0,7
	.loc 1 426 0
	lwz 6,16(6)
.LVL226:
	.loc 1 431 0
	add 15,15,8
	.loc 1 432 0
	add 16,16,10
	.loc 1 426 0
	add 17,17,6
.LVL227:
	.loc 1 428 0
	mullw 7,0,8
.LVL228:
	.loc 1 427 0
	add 4,4,12
.LVL229:
.LBE513:
	.loc 1 419 0
	srwi 11,11,2
.LVL230:
	addi 9,9,4
.LBB514:
	.loc 1 429 0
	mullw 0,0,10
.LVL231:
	.loc 1 428 0
	add 3,3,7
.LVL232:
	.loc 1 429 0
	add 5,5,0
.LVL233:
.LBE514:
	.loc 1 419 0
	bdnz .L115
.LBE512:
	.loc 1 441 0
	rlwinm 9,17,24,24,31
	.loc 1 442 0
	rlwinm 0,17,0,24,31
	.loc 1 440 0
	srawi 17,17,16
.LVL234:
	.loc 1 444 0
	mullw 11,0,0
.LVL235:
	stw 27,216(1)
.LBB515:
.LBB509:
	.loc 1 375 0
	addi 7,1,292
.LBE509:
.LBE515:
	.loc 1 444 0
	lfs 12,0(26)
	lfs 9,.LC15@l(18)
	mullw 10,17,9
.LVL236:
	.loc 1 448 0
	stw 27,224(1)
.LBB516:
.LBB510:
	lfs 11,.LC18@l(25)
.LBE510:
.LBE516:
	.loc 1 445 0
	lfs 13,.LC16@l(19)
	.loc 1 444 0
	subf 11,11,10
	.loc 1 435 0
	mulli 14,14,3
.LVL237:
	.loc 1 444 0
	xoris 11,11,0x8000
	.loc 1 448 0
	mullw 10,9,4
	.loc 1 444 0
	stw 11,220(1)
	.loc 1 435 0
	subf 14,4,14
.LVL238:
	.loc 1 445 0
	lis 11,.LC17@ha
	.loc 1 444 0
	lfd 0,216(1)
	.loc 1 445 0
	lfs 10,.LC17@l(11)
	.loc 1 448 0
	mullw 11,14,0
	.loc 1 444 0
	fsub 0,0,12
	frsp 0,0
	.loc 1 448 0
	subf 11,11,10
	xoris 11,11,0x8000
	.loc 1 436 0
	mulli 8,15,3
.LVL239:
	.loc 1 448 0
	stw 11,228(1)
	.loc 1 437 0
	mulli 16,16,3
.LVL240:
	.loc 1 444 0
	fdivs 0,9,0
	.loc 1 436 0
	subf 8,3,8
.LVL241:
	.loc 1 448 0
	lfd 9,224(1)
	.loc 1 437 0
	subf 16,5,16
.LVL242:
	.loc 1 448 0
	fsub 12,9,12
	.loc 1 445 0
	fmuls 13,0,13
	.loc 1 448 0
	frsp 12,12
	.loc 1 445 0
	fdivs 13,13,10
.LVL243:
.LBB517:
.LBB511:
	.loc 1 448 0
	fmadds 12,0,12,11
.LVL244:
	.loc 1 375 0
	fctiwz 12,12
.LVL245:
	stfiwx 12,0,7
	lwz 10,292(1)
	cmpwi 7,10,31
	ble- 7,.L116
	li 10,31
.L116:
.LVL246:
.LBE511:
.LBE517:
	.loc 1 449 0
	mullw 7,9,3
	stw 27,232(1)
	lfs 12,0(26)
.LBB518:
.LBB519:
	lfs 11,.LC18@l(25)
.LBE519:
.LBE518:
	mullw 11,8,0
	subf 11,11,7
	xoris 11,11,0x8000
	stw 11,236(1)
.LBB522:
.LBB520:
	.loc 1 375 0
	addi 11,1,288
.LBE520:
.LBE522:
	.loc 1 449 0
	lfd 10,232(1)
	fsub 12,10,12
	frsp 12,12
.LBB523:
.LBB521:
	fmadds 12,13,12,11
.LVL247:
	.loc 1 375 0
	fctiwz 12,12
.LVL248:
	stfiwx 12,0,11
	lwz 11,288(1)
	cmpwi 7,11,63
	ble- 7,.L117
	li 11,63
.L117:
.LVL249:
.LBE521:
.LBE523:
	.loc 1 450 0
	mullw 7,16,0
	stw 27,240(1)
	lfs 12,0(26)
.LBB524:
.LBB525:
	lfs 11,.LC18@l(25)
.LBE525:
.LBE524:
	mullw 9,9,5
.LVL250:
	subf 9,7,9
.LBB528:
.LBB526:
	.loc 1 375 0
	addi 7,1,284
.LBE526:
.LBE528:
	.loc 1 450 0
	xoris 9,9,0x8000
	stw 9,244(1)
	lfd 10,240(1)
	fsub 12,10,12
	frsp 12,12
.LBB529:
.LBB527:
	fmadds 12,0,12,11
.LVL251:
	.loc 1 375 0
	fctiwz 12,12
.LVL252:
	stfiwx 12,0,7
	lwz 9,284(1)
	cmpwi 7,9,31
	ble- 7,.L118
	li 9,31
.L118:
.LBE527:
.LBE529:
	.loc 1 452 0
	mullw 7,14,17
	stw 27,248(1)
	lfs 12,0(26)
	.loc 1 448 0
	nor 15,10,10
.LBB530:
.LBB531:
	.loc 1 452 0
	lfs 11,.LC18@l(25)
.LBE531:
.LBE530:
	.loc 1 450 0
	nor 6,9,9
	.loc 1 448 0
	srawi 15,15,31
	.loc 1 452 0
	mullw 4,0,4
.LVL253:
	.loc 1 448 0
	and 15,10,15
	.loc 1 450 0
	srawi 6,6,31
	and 9,9,6
	.loc 1 448 0
	slwi 15,15,11
	.loc 1 452 0
	subf 7,4,7
	.loc 1 449 0
	or 15,15,9
	.loc 1 452 0
	xoris 7,7,0x8000
.LBB534:
.LBB532:
	.loc 1 375 0
	addi 9,1,280
.LBE532:
.LBE534:
	.loc 1 452 0
	stw 7,252(1)
	.loc 1 449 0
	nor 7,11,11
	srawi 7,7,31
	.loc 1 452 0
	lfd 10,248(1)
	.loc 1 449 0
	and 11,11,7
.LVL254:
	slwi 11,11,5
	.loc 1 452 0
	fsub 12,10,12
	.loc 1 450 0
	or 15,15,11
	rlwinm 15,15,0,0xffff
	.loc 1 452 0
	frsp 12,12
.LBB535:
.LBB533:
	fmadds 12,0,12,11
.LVL255:
	.loc 1 375 0
	fctiwz 12,12
.LVL256:
	stfiwx 12,0,9
	lwz 11,280(1)
	cmpwi 7,11,31
	ble- 7,.L122
	li 11,31
.L122:
.LVL257:
.LBE533:
.LBE535:
	.loc 1 453 0
	mullw 9,8,17
	stw 27,256(1)
	lfs 11,0(26)
.LBB536:
.LBB537:
	.loc 1 375 0
	addi 10,1,276
	.loc 1 453 0
	lfs 12,.LC18@l(25)
.LBE537:
.LBE536:
	mullw 3,0,3
.LVL258:
	subf 9,3,9
	xoris 9,9,0x8000
	stw 9,260(1)
	lfd 10,256(1)
	fsub 11,10,11
	frsp 11,11
.LBB539:
.LBB538:
	fmadds 13,13,11,12
.LVL259:
	.loc 1 375 0
	fctiwz 13,13
.LVL260:
	stfiwx 13,0,10
	lwz 9,276(1)
	cmpwi 7,9,63
	ble- 7,.L123
	li 9,63
.L123:
.LVL261:
.LBE538:
.LBE539:
	.loc 1 454 0
	mullw 17,16,17
.LVL262:
	stw 27,264(1)
	lfs 12,0(26)
.LBB540:
.LBB541:
	.loc 1 375 0
	addi 7,1,272
	.loc 1 454 0
	lfs 13,.LC18@l(25)
.LBE541:
.LBE540:
	mullw 0,0,5
.LVL263:
	subf 0,0,17
	xoris 0,0,0x8000
	stw 0,268(1)
	lfd 11,264(1)
	fsub 12,11,12
	frsp 12,12
.LBB543:
.LBB542:
	fmadds 0,0,12,13
.LVL264:
	.loc 1 375 0
	fctiwz 0,0
.LVL265:
	stfiwx 0,0,7
	lwz 0,272(1)
	cmpwi 7,0,31
	ble- 7,.L124
	li 0,31
.L124:
.LBE542:
.LBE543:
	.loc 1 452 0
	nor 17,11,11
	.loc 1 454 0
	nor 8,0,0
.LVL266:
	.loc 1 453 0
	nor 10,9,9
	.loc 1 452 0
	srawi 17,17,31
	and 17,11,17
	.loc 1 454 0
	srawi 8,8,31
	.loc 1 453 0
	srawi 10,10,31
	.loc 1 452 0
	slwi 17,17,11
	.loc 1 454 0
	and 0,0,8
	.loc 1 453 0
	and 9,9,10
.LVL267:
	or 17,17,0
	slwi 9,9,5
	.loc 1 454 0
	or 17,17,9
	rlwinm 17,17,0,0xffff
.LVL268:
.LBE547:
.LBE555:
	.loc 1 459 0
	cmpw 7,17,23
	bne+ 7,.L128
.LVL269:
.L176:
	cmpw 7,15,21
	beq- 7,.L129
.LBE562:
.LBE569:
	.loc 1 503 0
	cmpw 7,17,15
	bne+ 7,.L180
.L148:
	mr 15,17
	.loc 1 507 0
	li 28,0
.LVL270:
	b .L130
.LVL271:
.L171:
.LBE571:
.LBE500:
.LBE376:
.LBE577:
.LBE580:
.LBB581:
.LBB582:
	.loc 1 548 0
	lbz 10,3(31)
.LVL272:
	li 11,15
	li 9,0
	mtctr 11
	mr 8,10
	b .L81
.LVL273:
.L182:
	.loc 1 553 0
	ble- 6,.L80
	mr 8,0
.LVL274:
.L80:
	addi 9,9,4
	.loc 1 550 0
	bdz .L181
.L81:
	.loc 1 614 0
	add 11,31,9
	.loc 1 552 0
	lbz 0,7(11)
	cmpw 7,0,10
	.loc 1 553 0
	cmpw 6,0,8
	.loc 1 552 0
	bge- 7,.L182
	mr 10,0
.LVL275:
	.loc 1 553 0
	addi 9,9,4
	.loc 1 550 0
	bdnz .L81
.LVL276:
.L181:
	.loc 1 564 0
	subf 25,10,8
	.loc 1 557 0
	stb 8,0(30)
	.loc 1 567 0
	cmpwi 7,25,7
	srawi 9,25,1
	.loc 1 558 0
	stb 10,1(30)
	.loc 1 559 0
	addi 26,30,2
.LVL277:
	.loc 1 565 0
	slwi 3,25,2
.LVL278:
	.loc 1 566 0
	slwi 27,25,1
.LVL279:
	.loc 1 567 0
	addi 0,9,2
	bgt- 7,.L83
	addi 0,25,-1
.L83:
.LVL280:
	.loc 1 568 0
	mulli 10,10,-7
.LVL281:
.LBB583:
.LBB584:
	.loc 1 577 0
	li 7,16
.LBE584:
.LBE583:
	.loc 1 568 0
	li 11,0
	.loc 1 569 0
	li 9,0
	.loc 1 568 0
	add 24,10,0
.LVL282:
.LBB588:
.LBB585:
	.loc 1 577 0
	mtctr 7
.LBE585:
.LBE588:
	.loc 1 569 0
	li 0,0
	b .L87
.LVL283:
.L184:
.LBB589:
.LBB586:
	.loc 1 587 0
	stb 0,0(26)
	.loc 1 589 0
	addi 9,9,-5
	.loc 1 587 0
	addi 26,26,1
.LVL284:
	.loc 1 588 0
	srawi 0,0,8
.LVL285:
	.loc 1 589 0
	addi 11,11,4
.LBE586:
	.loc 1 571 0
	bdz .L183
.LVL286:
.L87:
.LBB587:
	.loc 1 614 0
	add 10,31,11
	.loc 1 586 0
	addi 7,9,3
	.loc 1 572 0
	lbz 8,3(10)
	.loc 1 586 0
	cmpwi 7,7,7
	.loc 1 576 0
	mr 10,3
	li 5,4
	.loc 1 572 0
	mulli 8,8,7
	.loc 1 577 0
	mr 4,27
	.loc 1 572 0
	add 8,24,8
.LVL287:
	.loc 1 576 0
	cmpw 6,3,8
	ble- 6,.L84
	li 10,0
	li 5,0
.L84:
.LVL288:
	subf 10,10,8
.LVL289:
	.loc 1 577 0
	li 8,2
	cmpw 6,27,10
	ble- 6,.L85
	li 4,0
	li 8,0
.L85:
	subf 10,4,10
.LVL290:
	add 8,5,8
.LVL291:
	.loc 1 578 0
	cmpw 6,25,10
	crnot 26,25
	mfcr 10
	rlwinm 10,10,27,1
	add 10,8,10
	.loc 1 581 0
	neg 10,10
	rlwinm 10,10,0,29,31
.LVL292:
	.loc 1 582 0
	cmpwi 6,10,1
	crnot 26,25
	mfcr 8
	rlwinm 8,8,27,1
.LVL293:
	xor 10,8,10
.LVL294:
	.loc 1 585 0
	slw 10,10,9
.LVL295:
	or 0,0,10
.LVL296:
	.loc 1 586 0
	bgt- 7,.L184
	mr 9,7
	.loc 1 589 0
	addi 11,11,4
.LBE587:
	.loc 1 571 0
	bdnz .L87
.LVL297:
.L183:
.LBE589:
.LBE582:
.LBE581:
	.loc 1 624 0
	addi 30,30,8
.LVL298:
	b .L79
.LVL299:
.L145:
.LBB590:
.LBB578:
.LBB575:
.LBB572:
.LBB499:
	.loc 1 345 0
	li 4,114
	.loc 1 344 0
	li 5,587
	.loc 1 343 0
	li 6,299
	b .L106
.LVL300:
.L177:
.LBE499:
.LBE572:
.LBB573:
	.loc 1 505 0
	mr 28,3
.LVL301:
	b .L129
.LVL302:
.L170:
	li 0,32
	lis 25,.LANCHOR0@ha
	mtctr 0
.LBE573:
.LBE575:
.LBE578:
.LBE590:
	.loc 1 617 0
	li 9,0
	la 25,.LANCHOR0@l(25)
.L74:
.LBB591:
.LBB592:
	.loc 1 598 0
	srawi 11,9,2
	slwi 0,9,3
	or 0,11,0
	stbx 0,25,9
	.loc 1 597 0
	addi 9,9,1
.LVL303:
	bdnz .L74
	li 7,64
	lis 24,.LANCHOR0+32@ha
	mtctr 7
	li 9,0
.LVL304:
	la 24,.LANCHOR0+32@l(24)
.L75:
	.loc 1 601 0
	srawi 11,9,4
	slwi 0,9,2
	or 0,11,0
	stbx 0,24,9
	.loc 1 600 0
	addi 9,9,1
.LVL305:
	bdnz .L75
	lis 7,.LANCHOR0+384@ha
.LBB593:
.LBB594:
	.loc 1 605 0
	li 8,272
	la 7,.LANCHOR0+384@l(7)
	mtctr 8
.LBE594:
.LBE593:
	.loc 1 600 0
	li 9,0
.LVL306:
	li 0,0
	addi 5,7,-272
.LVL307:
.L165:
.LBB618:
.LBB615:
.LBB595:
.LBB596:
	.loc 1 62 0
	mulli 11,0,63
.LBE596:
.LBE595:
.LBB601:
.LBB602:
	mulli 10,0,31
.LBE602:
.LBE601:
.LBB607:
.LBB597:
	addi 11,11,128
.LBE597:
.LBE607:
.LBB608:
.LBB603:
	addi 0,10,128
.LVL308:
.LBE603:
.LBE608:
.LBB609:
.LBB598:
	.loc 1 63 0
	srawi 8,11,8
.LBE598:
.LBE609:
.LBB610:
.LBB604:
	srawi 10,0,8
.LBE604:
.LBE610:
.LBB611:
.LBB599:
	add 11,11,8
.LBE599:
.LBE611:
.LBB612:
.LBB605:
	add 0,0,10
.LVL309:
.LBE605:
.LBE612:
.LBB613:
.LBB600:
	srawi 11,11,8
.LBE600:
.LBE613:
.LBB614:
.LBB606:
	srawi 0,0,8
.LBE606:
.LBE614:
	.loc 1 607 0
	add 11,25,11
	.loc 1 606 0
	lbzx 10,25,0
	.loc 1 607 0
	lbz 0,32(11)
	.loc 1 606 0
	stbx 10,7,9
.LVL310:
	.loc 1 607 0
	stbx 0,5,9
.LBE615:
	.loc 1 603 0
	addi 9,9,1
.LVL311:
.LBB616:
	.loc 1 605 0
	cmpwi 7,9,7
	cmpwi 6,9,263
.LBE616:
	.loc 1 603 0
	bdz .L185
.LBB617:
	.loc 1 605 0
	li 0,0
	ble- 7,.L165
	li 0,255
	bgt- 6,.L165
	.loc 1 614 0
	addi 0,9,-8
	b .L165
.L185:
.LBE617:
.LBE618:
	.loc 1 610 0
	addi 3,25,656
.LVL312:
	mr 4,25
	li 5,32
	stw 6,312(1)
	bl _ZL20stb__PrepareOptTablePhPKhi
.LVL313:
	.loc 1 611 0
	addi 3,25,1168
	mr 4,24
	li 5,64
	bl _ZL20stb__PrepareOptTablePhPKhi
.LBE592:
.LBE591:
	.loc 1 619 0
	li 0,0
	stw 0,.LANCHOR1@l(27)
	lwz 6,312(1)
	b .L73
.LVL314:
.L172:
.LBB619:
.LBB579:
.LBB576:
.LBB574:
.LBB383:
.LBB382:
.LBB380:
	.loc 1 153 0
	lis 25,.LANCHOR0@ha
	.loc 1 152 0
	addi 24,1,84
	.loc 1 153 0
	la 25,.LANCHOR0@l(25)
	.loc 1 152 0
	addi 10,1,116
.LVL315:
	mr 11,31
	mr 8,24
	.loc 1 147 0
	addi 9,1,100
	.loc 1 152 0
	li 21,0
	.loc 1 153 0
	addi 0,25,392
	.loc 1 154 0
	li 22,0
.LVL316:
.L133:
	stw 22,0(24)
	.loc 1 614 0
	li 7,4
	.loc 1 154 0
	stw 22,4(24)
	.loc 1 614 0
	mtctr 7
	.loc 1 154 0
	stw 22,8(24)
	stw 22,12(24)
	stw 22,16(24)
	stw 22,20(24)
	stw 22,24(24)
	stw 22,28(24)
.LVL317:
	lwz 6,4(9)
	lwz 7,0(9)
.LVL318:
.L95:
	.loc 1 156 0
	mulli 6,6,3
	lbz 5,0(11)
	mulli 7,7,5
	add 7,6,7
	add 6,0,5
	srawi 7,7,4
	lbzx 27,6,7
	.loc 1 158 0
	lbz 6,4(11)
	.loc 1 157 0
	subf 7,27,5
	.loc 1 156 0
	stb 27,0(10)
	.loc 1 157 0
	stw 7,0(8)
	.loc 1 158 0
	mulli 5,7,7
	lwz 26,8(9)
	lwz 3,4(9)
	mulli 26,26,3
	lwz 4,0(9)
	mulli 3,3,5
	add 5,5,26
	add 5,5,3
	add 5,5,4
	add 4,0,6
	srawi 5,5,4
	lbzx 3,4,5
	.loc 1 160 0
	lbz 5,8(11)
	.loc 1 159 0
	subf 6,3,6
	.loc 1 158 0
	stb 3,4(10)
	.loc 1 159 0
	stw 6,4(8)
	.loc 1 160 0
	mulli 4,6,7
	lwz 19,12(9)
	lwz 23,8(9)
	mulli 19,19,3
	lwz 26,4(9)
	mulli 23,23,5
	add 4,4,19
	add 4,4,23
	add 4,4,26
	add 26,0,5
	srawi 4,4,4
	lbzx 4,26,4
	.loc 1 162 0
	lbz 26,12(11)
	.loc 1 164 0
	addi 11,11,16
.LVL319:
	.loc 1 161 0
	subf 5,4,5
	.loc 1 160 0
	stb 4,8(10)
	.loc 1 161 0
	stw 5,8(8)
	.loc 1 162 0
	mulli 5,5,7
	add 23,0,26
	lwz 18,12(9)
	lwz 19,8(9)
	mulli 18,18,5
	add 5,5,18
	add 5,5,19
	srawi 5,5,4
	lbzx 5,23,5
	.loc 1 155 0
	mr 23,9
	.loc 1 163 0
	subf 26,5,26
	.loc 1 162 0
	stb 5,12(10)
	.loc 1 163 0
	stw 26,12(8)
	.loc 1 165 0
	addi 10,10,16
.LVL320:
	.loc 1 155 0
	bdz .L186
	mr 9,8
.LVL321:
	mr 8,23
.LVL322:
	b .L95
.LVL323:
.L186:
.LBE380:
	.loc 1 151 0
	cmpwi 7,21,2
	addi 21,21,1
.LVL324:
	beq- 7,.L187
.LBB381:
	.loc 1 153 0
	cmpwi 7,21,1
	.loc 1 152 0
	addi 0,1,116
.LVL325:
	add 10,0,21
.LVL326:
	.loc 1 614 0
	add 11,31,21
.LVL327:
	.loc 1 153 0
	addi 0,25,120
	beq- 7,.L94
	addi 0,25,392
.L94:
	mr 7,9
	mr 9,8
	mr 8,7
.LVL328:
	b .L133
.LVL329:
.L187:
.LBE381:
	.loc 1 491 0
	addi 25,1,116
	b .L93
.LBE382:
.LBE383:
.LBE574:
.LBE576:
.LBE579:
.LBE619:
.LBE623:
	.cfi_endproc
.LFE63:
	.size	_Z22stb_compress_dxt_blockPhPKhii, .-_Z22stb_compress_dxt_blockPhPKhii
	.align 2
	.globl _Z15qgxInitTexturesv
	.type	_Z15qgxInitTexturesv, @function
_Z15qgxInitTexturesv:
.LFB66:
	.loc 2 317 0
	.cfi_startproc
	.loc 2 319 0
	.loc 2 318 0
	b _Z16qgx_InitTexturesv
	.cfi_endproc
.LFE66:
	.size	_Z15qgxInitTexturesv, .-_Z15qgxInitTexturesv
	.align 2
	.globl _Z20qgxLoadCurrentTexMapv
	.type	_Z20qgxLoadCurrentTexMapv, @function
_Z20qgxLoadCurrentTexMapv:
.LFB67:
	.loc 2 321 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI25:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB624:
	.loc 2 323 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
.LBE624:
	.loc 2 321 0
	stw 0,12(1)
.LBB625:
	.loc 2 323 0
	lwz 4,108(9)
	lwz 0,96(9)
	.cfi_offset 65, 4
	slwi 11,4,2
	add 9,9,11
	lwz 3,1680(9)
	mulli 3,3,52
	add 3,0,3
.LVL330:
	.loc 2 325 0
	lbz 0,36(3)
	cmpwi 7,0,0
	beq- 7,.L189
	.loc 2 325 0 is_stmt 0 discriminator 1
	lwz 0,32(3)
	cmpwi 7,0,0
	beq- 7,.L189
	.loc 2 327 0 is_stmt 1
	rlwinm 4,4,0,0xff
	bl GX_LoadTexObj
.LVL331:
.L189:
.LBE625:
	.loc 2 331 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI26:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE67:
	.size	_Z20qgxLoadCurrentTexMapv, .-_Z20qgxLoadCurrentTexMapv
	.align 2
	.globl _Z13qgxTexImage2DiiiiiPh
	.type	_Z13qgxTexImage2DiiiiiPh, @function
_Z13qgxTexImage2DiiiiiPh:
.LFB68:
	.loc 2 333 0
	.cfi_startproc
.LVL332:
	stwu 1,-240(1)
.LCFI27:
	.cfi_def_cfa_offset 240
	mflr 0
	mfcr 12
	stw 23,204(1)
.LBB646:
	.loc 2 340 0
	lis 23,.LANCHOR0@ha
	.cfi_offset 23, -36
	.cfi_register 70, 12
	.cfi_register 65, 0
	la 23,.LANCHOR0@l(23)
.LBE646:
	.loc 2 333 0
	stw 0,244(1)
.LBB715:
	.loc 2 340 0
	lwz 0,104(23)
	.cfi_offset 65, 4
	lwz 11,96(23)
	mulli 9,0,52
.LBE715:
	.loc 2 333 0
	stw 25,212(1)
	stw 28,224(1)
	mr 25,4
	.cfi_offset 28, -16
	.cfi_offset 25, -28
	stw 29,228(1)
.LBB716:
	.loc 2 340 0
	add 11,11,9
.LBE716:
	.loc 2 333 0
	stw 30,232(1)
	mr 29,7
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	stw 14,168(1)
	mr 30,5
	stw 15,172(1)
	mr 28,8
	stw 16,176(1)
	stw 17,180(1)
	stw 18,184(1)
	stw 19,188(1)
	stw 20,192(1)
	stw 21,196(1)
	stw 22,200(1)
	stw 24,208(1)
	stw 26,216(1)
	stw 27,220(1)
	stw 31,236(1)
	stw 12,164(1)
	.loc 2 333 0
	stw 3,148(1)
.LBB717:
	.loc 2 342 0
	lbz 9,36(11)
	.loc 2 340 0
	stw 11,112(1)
.LVL333:
	.loc 2 342 0
	cmpwi 7,9,0
.LBE717:
	.loc 2 333 0
	stw 6,132(1)
.LBB718:
	.loc 2 342 0
	bne+ 7,.L192
	.cfi_offset 70, -76
	.cfi_offset 31, -4
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	.cfi_offset 16, -64
	.cfi_offset 15, -68
	.cfi_offset 14, -72
	.loc 2 343 0
	lis 3,.LC19@ha
.LVL334:
	mr 4,0
.LVL335:
	la 3,.LC19@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL336:
.L192:
	.loc 2 347 0
	lwz 11,112(1)
	lbz 0,48(11)
	extsb. 0,0
	blt- 0,.L193
	.loc 2 347 0 is_stmt 0 discriminator 1
	lwz 11,148(1)
	cmpw 7,0,11
	beq- 7,.L193
.LVL337:
.L191:
.LBE718:
	.loc 2 405 0 is_stmt 1
	lwz 0,244(1)
	lwz 12,164(1)
	mtlr 0
	lwz 14,168(1)
	lwz 15,172(1)
	mtcrf 56,12
	lwz 16,176(1)
	lwz 17,180(1)
	lwz 18,184(1)
	lwz 19,188(1)
	lwz 20,192(1)
	lwz 21,196(1)
	lwz 22,200(1)
	lwz 23,204(1)
	lwz 24,208(1)
	lwz 25,212(1)
	lwz 26,216(1)
	lwz 27,220(1)
	lwz 28,224(1)
.LVL338:
	lwz 29,228(1)
.LVL339:
	lwz 30,232(1)
.LVL340:
	lwz 31,236(1)
	addi 1,1,240
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
.LVL341:
.L193:
.LCFI29:
	.cfi_restore_state
.LBB719:
.LBB647:
.LBB648:
	.loc 2 135 0
	li 0,0
	ori 0,0,32854
	cmpw 7,25,0
	beq- 7,.L199
	li 0,0
	bgt- 7,.L202
	ori 0,0,32843
	cmpw 7,25,0
	beq- 7,.L196
	bgt- 7,.L203
	xoris 0,25,0xffff
	cmpwi 7,0,-32708
	beq 7,.L196
	xoris 0,25,0xffff
	cmpwi 7,0,-32699
	beq 7,.L251
.L195:
	.loc 2 155 0
	lis 3,.LC21@ha
	mr 4,25
	la 3,.LC21@l(3)
	.loc 2 156 0
	li 26,0
	.loc 2 155 0
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	li 0,0
	li 11,0
	stw 0,128(1)
	stw 11,88(1)
	b .L198
.L202:
	.loc 2 135 0
	ori 0,0,33776
	cmpw 7,25,0
	beq- 7,.L201
	bgt- 7,.L204
	xoris 0,25,0xffff
	cmpwi 7,0,-32680
	beq 7,.L199
	xoris 0,25,0xffff
	cmpwi 7,0,-32539
	bne 7,.L195
	.loc 2 153 0
	lis 3,.LC20@ha
	la 3,.LC20@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L195
.L251:
.LVL342:
.LBE648:
.LBE647:
.LBB651:
.LBB652:
	.loc 2 246 0
	lwz 11,132(1)
	rlwinm 0,30,0,0xffff
	mr 3,0
	li 5,2
	rlwinm 11,11,0,0xffff
	li 6,0
	mr 4,11
	li 7,0
	stw 0,136(1)
	.loc 2 140 0
	li 26,2
	.loc 2 246 0
	stw 11,140(1)
	bl GX_GetTexBufferSize
	li 0,2
	.loc 2 353 0
	li 11,2
	.loc 2 246 0
	stw 3,144(1)
	stw 0,128(1)
	.loc 2 353 0
	stw 11,88(1)
.LVL343:
.L238:
.LBE652:
.LBE651:
	.loc 2 355 0
	lwz 11,112(1)
	lis 3,.LC22@ha
	lwz 0,104(23)
	la 3,.LC22@l(3)
	lwz 4,148(1)
	mr 5,25
	lwz 7,132(1)
	mr 6,30
	lwz 10,144(1)
	mr 8,29
	mr 9,28
	stw 11,8(1)
	stw 0,12(1)
	stw 26,16(1)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 2 358 0
	lwz 11,112(1)
	lwz 11,32(11)
	cmpwi 7,11,0
	stw 11,124(1)
	beq- 7,.L205
	.loc 2 358 0 is_stmt 0 discriminator 1
	lwz 11,112(1)
	lhz 0,38(11)
	cmpw 7,0,30
	beq- 7,.L252
.L206:
	.loc 2 359 0 is_stmt 1
	lwz 3,124(1)
	bl free
	.loc 2 360 0
	lwz 11,112(1)
	li 0,0
	stw 0,32(11)
.L205:
	.loc 2 365 0
	lwz 4,144(1)
	li 3,32
	bl memalign
	stw 3,124(1)
.LVL344:
.L207:
.LBB654:
.LBB655:
	.loc 2 205 0
	lwz 11,88(1)
	cmplwi 7,11,14
	ble- 7,.L253
.L208:
	.loc 2 237 0
	lis 3,.LC23@ha
	la 3,.LC23@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.L210:
.LVL345:
.LBE655:
.LBE654:
	.loc 2 373 0
	lwz 11,132(1)
	cmpwi 7,11,0
	ble- 7,.L216
	cmpwi 7,30,0
.LBB658:
.LBB659:
	.loc 2 333 0
	mullw 9,17,27
	lis 18,.LANCHOR0+1712@ha
.LBE659:
.LBE658:
	.loc 2 373 0
	lwz 21,124(1)
	la 18,.LANCHOR0+1712@l(18)
	mfcr 11
	rlwinm 11,11,28,0xf0000000
	cmpwi 7,26,14
.LBB688:
.LBB682:
.LBB660:
	.loc 2 333 0
	mullw 17,17,31
.LVL346:
.LBE660:
	stw 9,100(1)
	stw 11,152(1)
	lwz 11,88(1)
	mfcr 0
	rlwinm 0,0,28,0xf0000000
	cmpwi 4,11,2
.LBB675:
.LBB661:
	.loc 2 288 0
	addi 15,11,-4
	stw 0,108(1)
.LBE661:
.LBE675:
	.loc 2 281 0
	lwz 0,92(1)
	cmpwi 7,0,0
	mfcr 0
	rlwinm 0,0,28,0xf0000000
	cmpwi 7,27,0
	stw 0,120(1)
	mfcr 0
	rlwinm 0,0,28,0xf0000000
	stw 0,104(1)
.LBE682:
.LBE688:
	.loc 2 373 0
	li 0,0
	stw 0,96(1)
.LVL347:
.L215:
	.loc 2 374 0 discriminator 1
	lwz 9,152(1)
	rlwinm 9,9,4,0xffffffff
	mtcrf 1,9
	rlwinm 9,9,28,0xffffffff
	ble- 7,.L237
.LBB689:
.LBB683:
.LBB676:
.LBB668:
.LBB662:
.LBB663:
	.loc 2 194 0
	lwz 11,88(1)
.LBE663:
.LBE662:
.LBE668:
.LBE676:
.LBE683:
.LBE689:
	.loc 2 374 0
	li 19,0
.LBB690:
.LBB684:
.LBB677:
.LBB669:
.LBB666:
.LBB664:
	.loc 2 194 0
	cmpwi 2,11,5
.LVL348:
.L236:
.LBE664:
.LBE666:
.LBE669:
.LBE677:
.LBE684:
.LBE690:
	.loc 2 375 0
	lwz 0,108(1)
	rlwinm 0,0,4,0xffffffff
	mtcrf 1,0
	rlwinm 0,0,28,0xffffffff
	bne- 7,.L217
	lwz 16,96(1)
	.loc 2 333 0
	addi 14,21,32
	stw 31,116(1)
	mr 20,27
.LVL349:
.L218:
.LBB691:
.LBB692:
	.loc 2 255 0
	mr 24,19
	.loc 2 333 0
	addi 22,21,16
.LVL350:
.L235:
.LBE692:
.LBE691:
	mr 26,16
	li 31,0
.LVL351:
.L234:
.LBB705:
.LBB703:
.LBB693:
.LBB694:
.LBB695:
	addi 25,31,4
.LBE695:
.LBE694:
.LBE693:
.LBE703:
.LBE705:
	mr 27,24
.LVL352:
.L231:
.LBB706:
.LBB704:
.LBB701:
.LBB699:
.LBB698:
.LBB696:
	.loc 2 261 0
	slwi 3,31,2
	addi 9,1,24
	mr 4,27
	add 3,9,3
	mr 5,26
	mr 6,30
	mr 7,29
	mr 8,28
	.loc 2 262 0
	addi 31,31,1
.LVL353:
	.loc 2 261 0
	bl _ZL13qgx_ReadColorP9_gx_coloriiiiPh
.LVL354:
	.loc 2 260 0
	cmpw 7,25,31
	.loc 2 262 0
	addi 27,27,1
	.loc 2 260 0
	bne+ 7,.L231
.LBE696:
	.loc 2 259 0
	cmpwi 7,25,16
.LBB697:
	.loc 2 260 0
	mr 31,25
.LVL355:
	addi 26,26,1
.LBE697:
	.loc 2 259 0
	bne+ 7,.L234
.LBE698:
	.loc 2 266 0
	mr 3,21
	addi 4,1,24
	li 5,0
	li 6,0
	.loc 2 267 0
	addi 21,21,8
.LVL356:
	.loc 2 266 0
	bl _Z22stb_compress_dxt_blockPhPKhii
.LVL357:
.LBE699:
	.loc 2 256 0
	cmpw 7,21,22
.LBB700:
	.loc 2 267 0
	addi 24,24,4
.LBE700:
	.loc 2 256 0
	bne- 7,.L235
.LBE701:
	.loc 2 255 0
	cmpw 7,14,21
.LBB702:
	.loc 2 256 0
	addi 16,16,4
.LBE702:
	.loc 2 255 0
	bne- 7,.L218
	lwz 31,116(1)
	mr 27,20
.LVL358:
.L219:
.LBE704:
.LBE706:
	.loc 2 333 0
	add 19,19,27
	.loc 2 383 0
	mr 21,14
.LVL359:
	.loc 2 374 0
	cmpw 7,30,19
	bgt+ 7,.L236
.LVL360:
.L237:
	.loc 2 333 0
	lwz 11,96(1)
	lwz 0,92(1)
	add 11,11,0
	.loc 2 373 0
	lwz 0,132(1)
	.loc 2 333 0
	stw 11,96(1)
.LVL361:
	.loc 2 373 0
	cmpw 7,0,11
	bgt+ 7,.L215
.LVL362:
.L216:
	.loc 2 387 0
	lwz 11,112(1)
	.loc 2 391 0
	li 0,1
	.loc 2 387 0
	lwz 9,124(1)
	.loc 2 391 0
	stb 0,43(11)
	.loc 2 387 0
	stw 9,32(11)
	.loc 2 388 0
	lwz 9,136(1)
	.loc 2 392 0
	stb 0,44(11)
	.loc 2 393 0
	li 0,0
	.loc 2 388 0
	sth 9,38(11)
	.loc 2 389 0
	lwz 9,140(1)
	.loc 2 393 0
	stb 0,47(11)
	.loc 2 389 0
	sth 9,40(11)
	.loc 2 394 0
	lwz 0,148(1)
	.loc 2 390 0
	lwz 9,128(1)
	.loc 2 394 0
	stb 0,48(11)
	.loc 2 390 0
	stb 9,42(11)
	.loc 2 399 0
	lwz 4,144(1)
	lwz 3,124(1)
	bl DCFlushRange
	.loc 2 400 0
	lwz 3,112(1)
	lwz 4,32(3)
	lhz 5,38(3)
	lhz 6,40(3)
	lbz 7,42(3)
	lbz 8,43(3)
	lbz 9,44(3)
	lbz 10,47(3)
	bl GX_InitTexObj
	.loc 2 404 0
	bl _Z20qgxLoadCurrentTexMapv
	b .L191
.LVL363:
.L217:
.LBB707:
.LBB685:
	.loc 2 281 0
	lwz 0,120(1)
	addi 14,21,32
	rlwinm 0,0,4,0xffffffff
	mtcrf 1,0
	rlwinm 0,0,28,0xffffffff
	ble- 7,.L219
.LBB678:
.LBB670:
	.loc 2 288 0
	lwz 11,88(1)
.LBE670:
.LBE678:
.LBE685:
.LBE707:
	.loc 2 333 0
	li 14,0
	li 16,0
.LBB708:
.LBB686:
.LBB679:
.LBB671:
	.loc 2 288 0
	cmpwi 3,11,0
.LVL364:
.L220:
.LBE671:
	.loc 2 282 0
	lwz 11,104(1)
	rlwinm 11,11,4,0xffffffff
	mtcrf 1,11
	rlwinm 11,11,28,0xffffffff
	ble- 7,.L230
	.loc 2 333 0
	lwz 0,96(1)
.LBE679:
.LBE686:
.LBE708:
	mr 26,19
	mr 25,14
.LBB709:
.LBB687:
.LBB680:
	add 20,16,0
	b .L229
.LVL365:
.L254:
.LBB672:
	.loc 2 288 0
	bne- 3,.L221
	.loc 2 292 0
	lis 9,.LC25@ha
	addi 4,26,1
	lwz 3,.LC25@l(9)
	mr 5,20
	mr 6,30
	mr 7,29
	mr 8,28
	bl _ZL13qgx_ReadColorP9_gx_coloriiiiPh
	.loc 2 293 0
	lbz 0,1715(23)
	rlwinm 0,0,0,24,27
	stb 0,0(22)
	.loc 2 294 0
	lbz 9,1719(23)
	srwi 9,9,4
	or 0,0,9
	stb 0,0(22)
.L226:
	.loc 2 307 0
	add 26,26,31
	add 25,25,17
.LBE672:
	.loc 2 333 0
	subf 0,19,26
	.loc 2 282 0
	cmpw 7,27,0
	ble- 7,.L230
.LVL366:
.L229:
.LBB673:
	.loc 2 284 0
	divw 24,25,31
	.loc 2 286 0
	mr 3,18
	mr 4,26
	mr 5,20
	mr 6,30
	mr 7,29
	mr 8,28
	.loc 2 284 0
	add 22,21,24
.LVL367:
	.loc 2 286 0
	bl _ZL13qgx_ReadColorP9_gx_coloriiiiPh
	.loc 2 288 0
	beq- 4,.L223
	ble- 4,.L254
	cmplwi 7,15,1
	ble- 7,.L255
.L221:
	.loc 2 307 0
	lis 11,.LC26@ha
	lwz 4,88(1)
	lwz 3,.LC26@l(11)
	add 26,26,31
	add 25,25,17
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LBE673:
	.loc 2 333 0
	subf 0,19,26
	.loc 2 282 0
	cmpw 7,27,0
	bgt+ 7,.L229
.LVL368:
.L230:
.LBE680:
	.loc 2 281 0
	lwz 0,92(1)
	addi 16,16,1
.LVL369:
	lwz 9,100(1)
	cmpw 7,16,0
	add 14,14,9
	bne+ 7,.L220
	addi 14,21,32
	b .L219
.LVL370:
.L223:
.LBB681:
.LBB674:
	.loc 2 298 0
	lbz 0,1715(23)
	rlwinm 0,0,0,24,27
	stbx 0,21,24
	.loc 2 299 0
	lbz 9,1712(23)
	srwi 9,9,4
	or 0,0,9
	stbx 0,21,24
	b .L226
.L255:
.LVL371:
.LBB667:
.LBB665:
	.loc 2 194 0
	beq- 2,.L256
	.loc 2 197 0
	lbz 11,1712(23)
	lbz 9,1713(23)
	lbz 0,1714(23)
	rlwinm 11,11,8,16,20
	rlwinm 9,9,3,21,26
	or 9,11,9
	srwi 0,0,3
	or 9,0,9
.LVL372:
	.loc 2 199 0
	sth 9,0(22)
	b .L226
.LVL373:
.L256:
	.loc 2 195 0
	lbz 10,1714(23)
	lbz 11,1713(23)
	lbz 9,1715(23)
	srwi 10,10,4
	lbz 0,1712(23)
	rlwinm 11,11,0,24,27
	or 11,10,11
	rlwinm 9,9,7,17,19
	or 9,11,9
	rlwinm 0,0,4,20,23
	or 9,9,0
	rlwinm 9,9,0,17,31
.LVL374:
	.loc 2 199 0
	sth 9,0(22)
	b .L226
.LVL375:
.L253:
.LBE665:
.LBE667:
.LBE674:
.LBE681:
.LBE687:
.LBE709:
.LBB710:
.LBB656:
	.loc 2 205 0
	lis 9,.L214@ha
	slwi 0,11,2
	la 9,.L214@l(9)
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L214:
	.long .L209-.L214
	.long .L208-.L214
	.long .L240-.L214
	.long .L208-.L214
	.long .L211-.L214
	.long .L212-.L214
	.long .L208-.L214
	.long .L208-.L214
	.long .L208-.L214
	.long .L208-.L214
	.long .L208-.L214
	.long .L208-.L214
	.long .L208-.L214
	.long .L208-.L214
	.long .L213-.L214
	.section	".text"
.LVL376:
.L252:
.LBE656:
.LBE710:
	.loc 2 358 0 discriminator 2
	lhz 0,40(11)
	lwz 11,132(1)
	cmpw 7,0,11
	bne+ 7,.L206
	b .L207
.LVL377:
.L203:
.LBB711:
.LBB649:
	.loc 2 135 0
	addis 0,25,0xffff
	addic 0,0,32688
	cmplwi 7,0,1
	bgt- 7,.L195
	li 0,4
	li 11,4
	stw 0,128(1)
	.loc 2 147 0
	li 26,4
	.loc 2 135 0
	stw 11,88(1)
	b .L198
.L204:
	addis 0,25,0xffff
	addic 0,0,31758
	cmplwi 7,0,1
	bgt- 7,.L195
.L201:
	li 0,14
	li 11,14
	stw 0,128(1)
	.loc 2 144 0
	li 26,14
	.loc 2 135 0
	stw 11,88(1)
	b .L198
.L196:
	li 11,0
	.loc 2 138 0
	li 26,0
	.loc 2 135 0
	stw 11,128(1)
	stw 11,88(1)
.L198:
.LVL378:
.LBE649:
.LBE711:
.LBB712:
.LBB653:
	.loc 2 248 0
	lwz 11,132(1)
	rlwinm 0,30,0,0xffff
	mr 3,0
	mr 5,26
	rlwinm 11,11,0,0xffff
	li 6,0
	mr 4,11
	li 7,0
	stw 0,136(1)
	stw 11,140(1)
	bl GX_GetTexBufferSize
	stw 3,144(1)
	b .L238
.LVL379:
.L199:
.LBE653:
.LBE712:
.LBB713:
.LBB650:
	li 0,5
	li 11,5
	stw 0,128(1)
	.loc 2 150 0
	li 26,5
	stw 11,88(1)
	b .L198
.LVL380:
.L213:
.LBE650:
.LBE713:
.LBB714:
.LBB657:
	.loc 2 232 0
	li 11,8
.LVL381:
	.loc 2 234 0
	li 17,0
	.loc 2 233 0
	li 31,0
	.loc 2 232 0
	stw 11,92(1)
	.loc 2 231 0
	li 27,8
	b .L210
.L212:
	.loc 2 226 0
	li 0,4
	.loc 2 228 0
	li 17,2
	.loc 2 227 0
	li 31,1
	.loc 2 226 0
	stw 0,92(1)
	.loc 2 225 0
	li 27,4
	b .L210
.L211:
	.loc 2 220 0
	li 11,4
	.loc 2 222 0
	li 17,2
	.loc 2 221 0
	li 31,1
	.loc 2 220 0
	stw 11,92(1)
	.loc 2 219 0
	li 27,4
	b .L210
.L240:
	.loc 2 214 0
	li 0,4
	.loc 2 216 0
	li 17,1
	.loc 2 215 0
	li 31,1
	.loc 2 214 0
	stw 0,92(1)
	.loc 2 213 0
	li 27,8
	b .L210
.L209:
	.loc 2 208 0
	li 0,8
	.loc 2 210 0
	li 17,1
	.loc 2 209 0
	li 31,2
	.loc 2 208 0
	stw 0,92(1)
	.loc 2 207 0
	li 27,8
	b .L210
.LBE657:
.LBE714:
.LBE719:
	.cfi_endproc
.LFE68:
	.size	_Z13qgxTexImage2DiiiiiPh, .-_Z13qgxTexImage2DiiiiiPh
	.align 2
	.globl _Z16qgxSetGLTexParamiiiii
	.type	_Z16qgxSetGLTexParamiiiii, @function
_Z16qgxSetGLTexParamiiiii:
.LFB69:
	.loc 2 411 0
	.cfi_startproc
.LVL382:
	stwu 1,-32(1)
.LCFI30:
	.cfi_def_cfa_offset 32
	mflr 0
	mr 8,7
	stw 28,16(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_register 65, 0
	stw 29,20(1)
.LBB720:
	.loc 2 415 0
	lis 3,.LC27@ha
.LVL383:
.LBE720:
	.loc 2 411 0
	stw 30,24(1)
	mr 29,4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	stw 31,28(1)
	mr 30,5
	mr 31,6
	.cfi_offset 31, -4
.LBB721:
	.loc 2 415 0
	mr 4,28
.LVL384:
	la 3,.LC27@l(3)
	mr 5,29
.LVL385:
	mr 6,30
.LVL386:
	mr 7,31
.LVL387:
.LBE721:
	.loc 2 411 0
	stw 0,36(1)
	stw 27,12(1)
.LBB722:
	.loc 2 415 0
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL388:
	.loc 2 417 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lwz 4,104(9)
	lwz 27,96(9)
	mulli 0,4,52
	add 27,27,0
.LVL389:
	.loc 2 419 0
	lbz 0,36(27)
	cmpwi 7,0,0
	beq- 7,.L263
.L258:
	.loc 2 423 0
	cmpwi 7,28,-1
	beq- 7,.L259
	.loc 2 424 0
	mr 3,28
	bl _ZL18qgx_GLWrapModeToGXi
.LVL390:
	stb 3,43(27)
.LVL391:
.L259:
	.loc 2 427 0
	cmpwi 7,29,-1
	beq- 7,.L260
	.loc 2 428 0
	mr 3,29
	bl _ZL18qgx_GLWrapModeToGXi
.LVL392:
	stb 3,44(27)
.LVL393:
.L260:
	.loc 2 431 0
	cmpwi 7,30,-1
	beq- 7,.L261
	.loc 2 432 0
	mr 3,30
	bl _ZL16qgx_GLFilterToGXi
.LVL394:
	stb 3,45(27)
.LVL395:
.L261:
	.loc 2 435 0
	cmpwi 7,31,-1
	beq- 7,.L262
	.loc 2 436 0
	mr 3,31
	bl _ZL16qgx_GLFilterToGXi
.LVL396:
	stb 3,46(27)
.LVL397:
.L262:
	.loc 2 442 0
	li 0,0
	.loc 2 445 0
	lwz 4,32(27)
	.loc 2 442 0
	stb 0,47(27)
	.loc 2 445 0
	mr 3,27
	lhz 5,38(27)
	li 10,0
	lhz 6,40(27)
	lbz 7,42(27)
	lbz 8,43(27)
	lbz 9,44(27)
	bl GX_InitTexObj
.LBE722:
	.loc 2 448 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL398:
	mtlr 0
	lwz 28,16(1)
.LVL399:
	lwz 29,20(1)
.LVL400:
	lwz 30,24(1)
.LVL401:
	lwz 31,28(1)
.LVL402:
	addi 1,1,32
	.cfi_remember_state
.LCFI31:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL403:
.L263:
.LCFI32:
	.cfi_restore_state
.LBB723:
	.loc 2 420 0
	lis 3,.LC19@ha
	la 3,.LC19@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L258
.LBE723:
	.cfi_endproc
.LFE69:
	.size	_Z16qgxSetGLTexParamiiiii, .-_Z16qgxSetGLTexParamiiiii
	.align 2
	.globl _Z14qgxGenTexturesiPj
	.type	_Z14qgxGenTexturesiPj, @function
_Z14qgxGenTexturesiPj:
.LFB70:
	.loc 2 450 0
	.cfi_startproc
.LVL404:
	stwu 1,-56(1)
.LCFI33:
	.cfi_def_cfa_offset 56
	mflr 0
	stw 25,28(1)
.LBB728:
	.loc 2 451 0
	mr. 25,3
	.cfi_offset 25, -28
	.cfi_register 65, 0
.LBE728:
	.loc 2 450 0
	stw 0,60(1)
	stw 21,12(1)
	stw 22,16(1)
	stw 23,20(1)
	stw 24,24(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 28,40(1)
	stw 29,44(1)
	stw 30,48(1)
	stw 31,52(1)
.LBB741:
	.loc 2 451 0
	ble- 0,.L264
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 65, 4
	lis 28,.LANCHOR0@ha
.LBB729:
.LBB730:
	.loc 2 73 0
	lis 21,.LC28@ha
.LBE730:
.LBE729:
	.loc 2 451 0
	la 28,.LANCHOR0@l(28)
.LBB736:
.LBB731:
	.loc 2 82 0
	lis 22,.LC29@ha
.LBE731:
.LBE736:
	.loc 2 451 0
	lwz 29,96(28)
	.loc 2 450 0
	addi 26,4,-4
.LBE741:
	.loc 2 451 0
	li 27,0
.LBB742:
.LBB737:
.LBB732:
	.loc 2 73 0
	la 21,.LC28@l(21)
	.loc 2 82 0
	la 22,.LC29@l(22)
	.loc 2 86 0
	li 23,1
	.loc 2 87 0
	li 24,-1
.LVL405:
.L271:
	.loc 2 72 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L274
.L266:
	.loc 2 75 0
	lwz 0,100(28)
	cmpwi 7,0,511
	bgt- 7,.L267
	lwz 29,96(28)
	.loc 2 450 0
	mulli 9,0,52
	subfic 11,0,512
	mtctr 11
	add 9,29,9
.LVL406:
.L270:
	.loc 2 77 0
	mr 31,9
	lbz 9,36(9)
	mr 30,0
	cmpwi 7,9,0
	.loc 2 76 0
	addi 0,30,1
	addi 9,31,52
	.loc 2 77 0
	beq- 7,.L269
.LVL407:
	.loc 2 76 0
	bdnz .L270
	addi 31,29,26624
	li 30,512
	li 0,513
.LVL408:
.L269:
	.loc 2 85 0
	mr 3,31
	li 4,0
	li 5,52
.LBE732:
.LBE737:
	.loc 2 451 0
	addi 27,27,1
.LBB738:
.LBB733:
	.loc 2 84 0
	stw 0,100(28)
	.loc 2 85 0
	bl memset
.LVL409:
.LBE733:
.LBE738:
	.loc 2 451 0
	cmpw 7,27,25
.LBB739:
.LBB734:
	.loc 2 86 0
	stb 23,36(31)
	.loc 2 87 0
	stb 24,48(31)
.LBE734:
.LBE739:
	.loc 2 453 0
	stwu 30,4(26)
	.loc 2 451 0
	bne+ 7,.L271
.LVL410:
.L264:
.LBE742:
	.loc 2 455 0
	lwz 0,60(1)
	lwz 21,12(1)
	mtlr 0
	lwz 22,16(1)
	lwz 23,20(1)
	lwz 24,24(1)
	lwz 25,28(1)
.LVL411:
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI34:
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
	.cfi_restore 21
	blr
.LVL412:
.L267:
.LCFI35:
	.cfi_restore_state
.LBB743:
.LBB740:
.LBB735:
	.loc 2 82 0
	mr 3,22
	li 4,512
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	lwz 29,96(28)
	li 30,0
	li 0,1
	mr 31,29
	b .L269
.L274:
	.loc 2 73 0
	mr 3,21
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L266
.LBE735:
.LBE740:
.LBE743:
	.cfi_endproc
.LFE70:
	.size	_Z14qgxGenTexturesiPj, .-_Z14qgxGenTexturesiPj
	.align 2
	.globl _Z17qgxDeleteTexturesiPj
	.type	_Z17qgxDeleteTexturesiPj, @function
_Z17qgxDeleteTexturesiPj:
.LFB71:
	.loc 2 458 0
	.cfi_startproc
.LVL413:
	stwu 1,-40(1)
.LCFI36:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 28,24(1)
.LBB744:
	.loc 2 459 0
	mr. 28,3
	.cfi_offset 28, -16
	.cfi_register 65, 0
.LBE744:
	.loc 2 458 0
	stw 0,44(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 29,28(1)
	stw 30,32(1)
	stw 31,36(1)
.LBB751:
	.loc 2 459 0
	ble- 0,.L275
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	lis 26,.LC30@ha
	lis 29,.LANCHOR0@ha
	.loc 2 458 0
	addi 30,4,-4
.LBE751:
	.loc 2 459 0
	li 31,0
	la 26,.LC30@l(26)
	la 29,.LANCHOR0@l(29)
.LBB752:
.LBB745:
.LBB746:
	.loc 2 93 0
	li 27,0
.LVL414:
.L279:
.LBE746:
.LBE745:
	.loc 2 460 0
	lwzu 5,4(30)
	mr 4,31
	mr 3,26
	.loc 2 459 0
	addi 31,31,1
	.loc 2 460 0
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 2 461 0
	lwz 0,0(30)
	lwz 25,96(29)
	mulli 9,0,52
	add 9,25,9
	lwz 11,32(9)
	cmpwi 7,11,0
	.loc 2 462 0
	mr 3,11
	.loc 2 461 0
	beq- 7,.L277
	.loc 2 462 0
	bl free
	lwz 0,0(30)
	mulli 9,0,52
	add 9,25,9
.L277:
.LVL415:
.LBB749:
.LBB747:
	.loc 2 95 0
	lwz 11,100(29)
.LBE747:
.LBE749:
	.loc 2 459 0
	cmpw 7,31,28
.LBB750:
.LBB748:
	.loc 2 93 0
	stb 27,36(9)
	.loc 2 95 0
	cmpw 6,0,11
	bge- 6,.L278
	.loc 2 96 0
	stw 0,100(29)
.L278:
.LVL416:
.LBE748:
.LBE750:
	.loc 2 459 0
	bne+ 7,.L279
.LVL417:
.L275:
.LBE752:
	.loc 2 466 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
.LVL418:
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
.LCFI37:
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
.LFE71:
	.size	_Z17qgxDeleteTexturesiPj, .-_Z17qgxDeleteTexturesiPj
	.align 2
	.globl _Z14qgxBindTexturej
	.type	_Z14qgxBindTexturej, @function
_Z14qgxBindTexturej:
.LFB72:
	.loc 2 469 0
	.cfi_startproc
.LVL419:
	.loc 2 472 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 2 473 0
	lwz 0,108(9)
	.loc 2 472 0
	stw 3,104(9)
	.loc 2 473 0
	slwi 0,0,2
	add 11,9,0
	stw 3,1680(11)
	.loc 2 476 0
	.loc 2 474 0
	b _Z20qgxLoadCurrentTexMapv
.LVL420:
	.cfi_endproc
.LFE72:
	.size	_Z14qgxBindTexturej, .-_Z14qgxBindTexturej
	.align 2
	.globl _Z15qgxActiveTexMapj
	.type	_Z15qgxActiveTexMapj, @function
_Z15qgxActiveTexMapj:
.LFB73:
	.loc 2 481 0
	.cfi_startproc
.LVL421:
	stwu 1,-16(1)
.LCFI38:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 2 482 0
	lis 3,.LC31@ha
.LVL422:
	mr 4,31
	la 3,.LC31@l(3)
	.loc 2 481 0
	stw 0,20(1)
	.loc 2 482 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 2 483 0
	cmplwi 7,31,7
	ble+ 7,.L283
	.loc 2 484 0
	lis 3,.LC32@ha
	la 3,.LC32@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.L283:
	.loc 2 487 0
	lwz 0,20(1)
	.loc 2 486 0
	lis 9,.LANCHOR0+108@ha
	stw 31,.LANCHOR0+108@l(9)
	.loc 2 487 0
	mtlr 0
	lwz 31,12(1)
.LVL423:
	addi 1,1,16
.LCFI39:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE73:
	.size	_Z15qgxActiveTexMapj, .-_Z15qgxActiveTexMapj
	.section	.rodata
	.align 2
	.set	.LANCHOR2,. + 0
	.type	_ZZL16stb__RefineBlockPhPtS0_jE5w1Tab, @object
	.size	_ZZL16stb__RefineBlockPhPtS0_jE5w1Tab, 16
_ZZL16stb__RefineBlockPhPtS0_jE5w1Tab:
	.long	3
	.long	0
	.long	2
	.long	1
	.type	_ZZL16stb__RefineBlockPhPtS0_jE5prods, @object
	.size	_ZZL16stb__RefineBlockPhPtS0_jE5prods, 16
_ZZL16stb__RefineBlockPhPtS0_jE5prods:
	.long	589824
	.long	2304
	.long	262402
	.long	66562
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC9:
	.4byte	1501560836
.LC10:
	.4byte	1132396544
.LC12:
	.4byte	1082130432
.LC14:
	.4byte	1140850688
.LC15:
	.4byte	1052424891
.LC16:
	.4byte	1115422720
.LC17:
	.4byte	1106771968
.LC18:
	.4byte	1056964608
.LC25:
	.4byte	.LANCHOR0+1716
.LC26:
	.4byte	.LC24
	.section	".data"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	_ZZ22stb_compress_dxt_blockPhPKhiiE4init, @object
	.size	_ZZ22stb_compress_dxt_blockPhPKhiiE4init, 4
_ZZ22stb_compress_dxt_blockPhPKhiiE4init:
	.long	1
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"Unsupported GL Wrap S mode %04X\r\n"
	.zero	2
.LC1:
	.string	"Unsupported GL Filter Min mode GL_NEAREST_MIPMAP_NEAREST\r\n"
	.zero	1
.LC2:
	.string	"Unsupported GL Filter Min mode GL_NEAREST_MIPMAP_LINEAR\r\n"
	.zero	2
.LC3:
	.string	"Unsupported GL Filter Min mode GL_LINEAR_MIPMAP_NEAREST\r\n"
	.zero	2
.LC4:
	.string	"Unsupported GL Filter Min mode %04X\r\n"
	.zero	2
.LC5:
	.string	"New GL input texformat needed %4X\r\n"
.LC6:
	.string	">>> qgx_InitTextures()\r\n"
	.zero	3
.LC7:
	.string	">>> gxtexdescs %p size %d element size %d\r\n"
.LC19:
	.string	"Texture not bound: %d\r\n"
.LC20:
	.string	"Unsupported GL FMT: GL_COLOR_INDEX8_EXT\r\n"
	.zero	2
.LC21:
	.string	"Unsupported GL FMT: %d\r\n"
	.zero	3
.LC22:
	.string	">>> void qgxTexImage2D(%d, %04X, %d, %d, %04X, %p) size %d using texdesc %p %d gxfmt %d\r\n"
	.zero	2
.LC23:
	.string	"qgx_getTexConvParms Tex format not supported yet!"
	.zero	2
.LC24:
	.string	"qgx_TexConvHandlePixel: Unsupported texture format %d\r\n"
.LC27:
	.string	">>> qgxSetGLTexParam() %02X %02X %02X %02X %02X\r\n"
	.zero	2
.LC28:
	.string	"Allocated texture desc before initialization\r\n"
	.zero	1
.LC29:
	.string	"Out of gx_texture descriptors: > %d\r\n"
	.zero	2
.LC30:
	.string	">>> qgxDeleteTexture() %d %d\r\n"
	.zero	1
.LC31:
	.string	">>> void qgxActiveTexMap %d\r\n"
	.zero	2
.LC32:
	.string	"Texmap cannot be bigger than 7\r\n"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	_ZL12stb__Expand5, @object
	.size	_ZL12stb__Expand5, 32
_ZL12stb__Expand5:
	.zero	32
	.type	_ZL12stb__Expand6, @object
	.size	_ZL12stb__Expand6, 64
_ZL12stb__Expand6:
	.zero	64
	.type	_ZL10gxtexdescs, @object
	.size	_ZL10gxtexdescs, 4
_ZL10gxtexdescs:
	.zero	4
	.type	_ZL13gxtexsrchfree, @object
	.size	_ZL13gxtexsrchfree, 4
_ZL13gxtexsrchfree:
	.zero	4
	.type	_ZL13gxcurrtexdesc, @object
	.size	_ZL13gxcurrtexdesc, 4
_ZL13gxcurrtexdesc:
	.zero	4
	.type	_ZL12gxcurrtexmap, @object
	.size	_ZL12gxcurrtexmap, 4
_ZL12gxcurrtexmap:
	.zero	4
	.type	_ZL14stb__QuantGTab, @object
	.size	_ZL14stb__QuantGTab, 272
_ZL14stb__QuantGTab:
	.zero	272
	.type	_ZL15stb__QuantRBTab, @object
	.size	_ZL15stb__QuantRBTab, 272
_ZL15stb__QuantRBTab:
	.zero	272
	.type	_ZL12stb__OMatch5, @object
	.size	_ZL12stb__OMatch5, 512
_ZL12stb__OMatch5:
	.zero	512
	.type	_ZL12stb__OMatch6, @object
	.size	_ZL12stb__OMatch6, 512
_ZL12stb__OMatch6:
	.zero	512
	.type	_ZL9gxtexmaps, @object
	.size	_ZL9gxtexmaps, 32
_ZL9gxtexmaps:
	.zero	32
	.type	_ZL5color, @object
	.size	_ZL5color, 8
_ZL5color:
	.zero	8
	.section	".text"
.Letext0:
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 4 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 6 "d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_qgx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2194
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF195
	.byte	0x4
	.4byte	.LASF196
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x3
	.byte	0x29
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2a
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x35
	.4byte	0x50
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x36
	.4byte	0x62
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.4byte	0x74
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x50
	.4byte	0x86
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.string	"u8"
	.byte	0x4
	.byte	0x11
	.4byte	0x33
	.uleb128 0x5
	.string	"u16"
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x5
	.string	"u32"
	.byte	0x4
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x5
	.string	"s8"
	.byte	0x4
	.byte	0x16
	.4byte	0x21
	.uleb128 0x5
	.string	"s16"
	.byte	0x4
	.byte	0x17
	.4byte	0x45
	.uleb128 0x5
	.string	"s32"
	.byte	0x4
	.byte	0x18
	.4byte	0x69
	.uleb128 0x5
	.string	"vu8"
	.byte	0x4
	.byte	0x1b
	.4byte	0xe6
	.uleb128 0x6
	.4byte	0x9b
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x1c
	.4byte	0xf6
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x1d
	.4byte	0x106
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x5
	.string	"vs8"
	.byte	0x4
	.byte	0x20
	.4byte	0x116
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x126
	.uleb128 0x6
	.4byte	0xc5
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.4byte	0x136
	.uleb128 0x6
	.4byte	0xd0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2e
	.4byte	0x154
	.uleb128 0x6
	.4byte	0x13b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x7
	.4byte	.LASF197
	.byte	0x4
	.byte	0x5
	.2byte	0x490
	.4byte	0x1c0
	.uleb128 0x8
	.string	"U8"
	.byte	0x5
	.2byte	0x492
	.4byte	0xdb
	.uleb128 0x8
	.string	"S8"
	.byte	0x5
	.2byte	0x493
	.4byte	0x10b
	.uleb128 0x8
	.string	"U16"
	.byte	0x5
	.2byte	0x494
	.4byte	0xeb
	.uleb128 0x8
	.string	"S16"
	.byte	0x5
	.2byte	0x495
	.4byte	0x11b
	.uleb128 0x8
	.string	"U32"
	.byte	0x5
	.2byte	0x496
	.4byte	0xfb
	.uleb128 0x8
	.string	"S32"
	.byte	0x5
	.2byte	0x497
	.4byte	0x12b
	.uleb128 0x8
	.string	"F32"
	.byte	0x5
	.2byte	0x498
	.4byte	0x149
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x499
	.4byte	0x160
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.byte	0x5
	.2byte	0x49e
	.4byte	0x20e
	.uleb128 0xb
	.string	"r"
	.byte	0x5
	.2byte	0x49f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"g"
	.byte	0x5
	.2byte	0x4a0
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"b"
	.byte	0x5
	.2byte	0x4a1
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"a"
	.byte	0x5
	.2byte	0x4a2
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x4a3
	.4byte	0x1cc
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x20
	.byte	0x5
	.2byte	0x4b9
	.4byte	0x237
	.uleb128 0xb
	.string	"val"
	.byte	0x5
	.2byte	0x4ba
	.4byte	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	0x86
	.4byte	0x247
	.uleb128 0xd
	.4byte	0x86
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x4bb
	.4byte	0x21a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3e
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0x270
	.uleb128 0xd
	.4byte	0x86
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0xb
	.4byte	0x3e
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x10
	.byte	0x2
	.byte	0x11
	.4byte	0x2c0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x2
	.byte	0x12
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x2
	.byte	0x13
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x2
	.byte	0x14
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"bpp"
	.byte	0x2
	.byte	0x15
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x2
	.byte	0x16
	.4byte	0x27b
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x34
	.byte	0x2
	.byte	0x18
	.4byte	0x38e
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x2
	.byte	0x19
	.4byte	0x247
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x2
	.byte	0x1a
	.4byte	0x38e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x2
	.byte	0x1b
	.4byte	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x2
	.byte	0x1d
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x2
	.byte	0x1e
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x2
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x2
	.byte	0x21
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x2
	.byte	0x22
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x2
	.byte	0x23
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x2
	.byte	0x25
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x2
	.byte	0x26
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x2
	.byte	0x27
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.string	"pad"
	.byte	0x2
	.byte	0x28
	.4byte	0x260
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x270
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF46
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x2
	.byte	0x2a
	.4byte	0x2cb
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF49
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x1
	.byte	0x3c
	.4byte	0x74
	.byte	0x1
	.4byte	0x3e2
	.uleb128 0x13
	.string	"a"
	.byte	0x1
	.byte	0x3c
	.4byte	0x74
	.uleb128 0x13
	.string	"b"
	.byte	0x1
	.byte	0x3c
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.byte	0x3e
	.4byte	0x74
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x54
	.4byte	0x74
	.byte	0x1
	.4byte	0x405
	.uleb128 0x13
	.string	"a"
	.byte	0x1
	.byte	0x54
	.4byte	0x74
	.uleb128 0x13
	.string	"b"
	.byte	0x1
	.byte	0x54
	.4byte	0x74
	.byte	0
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.4byte	0x446
	.uleb128 0x13
	.string	"out"
	.byte	0x1
	.byte	0x42
	.4byte	0x25a
	.uleb128 0x13
	.string	"v"
	.byte	0x1
	.byte	0x42
	.4byte	0x62
	.uleb128 0x14
	.uleb128 0x15
	.string	"rv"
	.byte	0x1
	.byte	0x44
	.4byte	0x74
	.uleb128 0x15
	.string	"gv"
	.byte	0x1
	.byte	0x45
	.4byte	0x74
	.uleb128 0x15
	.string	"bv"
	.byte	0x1
	.byte	0x46
	.4byte	0x74
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	0x472
	.uleb128 0x13
	.string	"out"
	.byte	0x1
	.byte	0x61
	.4byte	0x25a
	.uleb128 0x13
	.string	"p1"
	.byte	0x1
	.byte	0x61
	.4byte	0x25a
	.uleb128 0x13
	.string	"p2"
	.byte	0x1
	.byte	0x61
	.4byte	0x25a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x1
	.byte	0x4e
	.4byte	0x62
	.byte	0x1
	.4byte	0x49e
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0x4e
	.4byte	0x74
	.uleb128 0x13
	.string	"g"
	.byte	0x1
	.byte	0x4e
	.4byte	0x74
	.uleb128 0x13
	.string	"b"
	.byte	0x1
	.byte	0x4e
	.4byte	0x74
	.byte	0
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x175
	.4byte	0x74
	.byte	0x1
	.4byte	0x4dc
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.2byte	0x175
	.4byte	0x13b
	.uleb128 0x18
	.string	"p0"
	.byte	0x1
	.2byte	0x175
	.4byte	0x74
	.uleb128 0x18
	.string	"p1"
	.byte	0x1
	.2byte	0x175
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.2byte	0x177
	.4byte	0x74
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x21e
	.byte	0x1
	.4byte	0x59a
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x21e
	.4byte	0x25a
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.2byte	0x21e
	.4byte	0x25a
	.uleb128 0x1b
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x21e
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.2byte	0x220
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x220
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x220
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x220
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x220
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x220
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x220
	.4byte	0x74
	.uleb128 0x19
	.string	"mn"
	.byte	0x1
	.2byte	0x223
	.4byte	0x74
	.uleb128 0x19
	.string	"mx"
	.byte	0x1
	.2byte	0x223
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x19
	.string	"a"
	.byte	0x1
	.2byte	0x23c
	.4byte	0x74
	.uleb128 0x19
	.string	"ind"
	.byte	0x1
	.2byte	0x23d
	.4byte	0x74
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.2byte	0x23d
	.4byte	0x74
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x2
	.byte	0xbe
	.byte	0x3
	.4byte	0x5de
	.uleb128 0x1d
	.4byte	.LASF66
	.byte	0x2
	.byte	0xbe
	.4byte	0x5de
	.uleb128 0x1d
	.4byte	.LASF57
	.byte	0x2
	.byte	0xbe
	.4byte	0x38e
	.uleb128 0x1d
	.4byte	.LASF67
	.byte	0x2
	.byte	0xbe
	.4byte	0x394
	.uleb128 0x14
	.uleb128 0x1e
	.4byte	.LASF68
	.byte	0x2
	.byte	0xbf
	.4byte	0xa5
	.uleb128 0x15
	.string	"p"
	.byte	0x2
	.byte	0xc0
	.4byte	0x5e4
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x20e
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x2
	.byte	0xf3
	.4byte	0x74
	.byte	0x1
	.4byte	0x632
	.uleb128 0x1d
	.4byte	.LASF37
	.byte	0x2
	.byte	0xf3
	.4byte	0x74
	.uleb128 0x1d
	.4byte	.LASF38
	.byte	0x2
	.byte	0xf3
	.4byte	0x74
	.uleb128 0x1d
	.4byte	.LASF70
	.byte	0x2
	.byte	0xf3
	.4byte	0x74
	.uleb128 0x1d
	.4byte	.LASF71
	.byte	0x2
	.byte	0xf3
	.4byte	0x74
	.uleb128 0x1d
	.4byte	.LASF72
	.byte	0x2
	.byte	0xf3
	.4byte	0x74
	.byte	0
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x2
	.byte	0x86
	.4byte	0xb0
	.byte	0x1
	.4byte	0x64e
	.uleb128 0x1d
	.4byte	.LASF74
	.byte	0x2
	.byte	0x86
	.4byte	0x74
	.byte	0
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x2
	.byte	0xca
	.4byte	0x2c0
	.byte	0x1
	.4byte	0x677
	.uleb128 0x13
	.string	"fmt"
	.byte	0x2
	.byte	0xca
	.4byte	0x677
	.uleb128 0x14
	.uleb128 0x1e
	.4byte	.LASF76
	.byte	0x2
	.byte	0xcb
	.4byte	0x2c0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x74
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x2
	.byte	0xfd
	.byte	0x1
	.4byte	0x712
	.uleb128 0x1d
	.4byte	.LASF78
	.byte	0x2
	.byte	0xfd
	.4byte	0x74
	.uleb128 0x1d
	.4byte	.LASF37
	.byte	0x2
	.byte	0xfd
	.4byte	0x74
	.uleb128 0x13
	.string	"x"
	.byte	0x2
	.byte	0xfd
	.4byte	0x74
	.uleb128 0x13
	.string	"y"
	.byte	0x2
	.byte	0xfd
	.4byte	0x74
	.uleb128 0x1d
	.4byte	.LASF79
	.byte	0x2
	.byte	0xfd
	.4byte	0x38e
	.uleb128 0x1d
	.4byte	.LASF57
	.byte	0x2
	.byte	0xfd
	.4byte	0x38e
	.uleb128 0x14
	.uleb128 0x15
	.string	"by"
	.byte	0x2
	.byte	0xff
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x19
	.string	"bx"
	.byte	0x2
	.2byte	0x100
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x1c
	.4byte	.LASF66
	.byte	0x2
	.2byte	0x101
	.4byte	0x712
	.uleb128 0x19
	.string	"i"
	.byte	0x2
	.2byte	0x102
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x19
	.string	"py"
	.byte	0x2
	.2byte	0x103
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x19
	.string	"px"
	.byte	0x2
	.2byte	0x104
	.4byte	0x74
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x1cc
	.4byte	0x722
	.uleb128 0xd
	.4byte	0x86
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x2
	.byte	0x5c
	.byte	0x1
	.4byte	0x73a
	.uleb128 0x1d
	.4byte	.LASF81
	.byte	0x2
	.byte	0x5c
	.4byte	0x74
	.byte	0
	.uleb128 0x20
	.4byte	.LASF88
	.byte	0x1
	.byte	0x6b
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST0
	.4byte	0x816
	.uleb128 0x21
	.4byte	.LASF82
	.byte	0x1
	.byte	0x6b
	.4byte	0x25a
	.4byte	.LLST1
	.uleb128 0x22
	.4byte	.LASF83
	.byte	0x1
	.byte	0x6b
	.4byte	0x816
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF84
	.byte	0x1
	.byte	0x6b
	.4byte	0x74
	.4byte	.LLST2
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0x6d
	.4byte	0x74
	.4byte	.LLST3
	.uleb128 0x24
	.string	"mn"
	.byte	0x1
	.byte	0x6d
	.4byte	0x74
	.4byte	.LLST4
	.uleb128 0x24
	.string	"mx"
	.byte	0x1
	.byte	0x6d
	.4byte	0x74
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x25
	.4byte	.LASF85
	.byte	0x1
	.byte	0x6f
	.4byte	0x74
	.4byte	.LLST6
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x25
	.4byte	.LASF86
	.byte	0x1
	.byte	0x72
	.4byte	0x74
	.4byte	.LLST7
	.uleb128 0x25
	.4byte	.LASF87
	.byte	0x1
	.byte	0x73
	.4byte	0x74
	.4byte	.LLST8
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.byte	0x74
	.4byte	0x74
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	0x3e2
	.4byte	.LBB138
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x74
	.uleb128 0x27
	.4byte	0x3fb
	.4byte	.LLST7
	.uleb128 0x27
	.4byte	0x3f2
	.4byte	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x81c
	.uleb128 0x1f
	.4byte	0x3e
	.uleb128 0x20
	.4byte	.LASF89
	.byte	0x1
	.byte	0x87
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST12
	.4byte	0x9e6
	.uleb128 0x22
	.4byte	.LASF66
	.byte	0x1
	.byte	0x87
	.4byte	0x25a
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"c0"
	.byte	0x1
	.byte	0x87
	.4byte	0x62
	.4byte	.LLST13
	.uleb128 0x28
	.string	"c1"
	.byte	0x1
	.byte	0x87
	.4byte	0x62
	.4byte	.LLST14
	.uleb128 0x29
	.4byte	0x405
	.4byte	.LBB164
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0x89
	.4byte	0x896
	.uleb128 0x2a
	.4byte	0x41c
	.uleb128 0x2b
	.4byte	0x411
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xe8
	.uleb128 0x2c
	.4byte	0x426
	.uleb128 0x2c
	.4byte	0x430
	.uleb128 0x2c
	.4byte	0x43a
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x405
	.4byte	.LBB177
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.byte	0x8a
	.4byte	0x8dd
	.uleb128 0x27
	.4byte	0x41c
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	0x411
	.byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x170
	.uleb128 0x2d
	.4byte	0x426
	.4byte	.LLST16
	.uleb128 0x2d
	.4byte	0x430
	.4byte	.LLST17
	.uleb128 0x2d
	.4byte	0x43a
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x446
	.4byte	.LBB186
	.4byte	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0x8b
	.4byte	0x964
	.uleb128 0x2b
	.4byte	0x467
	.byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.uleb128 0x2b
	.4byte	0x45d
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	0x452
	.byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.uleb128 0x29
	.4byte	0x3e2
	.4byte	.LBB188
	.4byte	.Ldebug_ranges0+0x200
	.byte	0x1
	.byte	0x63
	.4byte	0x927
	.uleb128 0x2a
	.4byte	0x3fb
	.uleb128 0x2a
	.4byte	0x3f2
	.byte	0
	.uleb128 0x29
	.4byte	0x3e2
	.4byte	.LBB194
	.4byte	.Ldebug_ranges0+0x230
	.byte	0x1
	.byte	0x64
	.4byte	0x945
	.uleb128 0x2a
	.4byte	0x3fb
	.uleb128 0x2a
	.4byte	0x3f2
	.byte	0
	.uleb128 0x26
	.4byte	0x3e2
	.4byte	.LBB200
	.4byte	.Ldebug_ranges0+0x250
	.byte	0x1
	.byte	0x65
	.uleb128 0x2b
	.4byte	0x3fb
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.4byte	0x3f2
	.byte	0x1
	.byte	0x57
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x446
	.4byte	.LBB222
	.4byte	.Ldebug_ranges0+0x270
	.byte	0x1
	.byte	0x8c
	.uleb128 0x2b
	.4byte	0x467
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	0x45d
	.byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.uleb128 0x2b
	.4byte	0x452
	.byte	0x3
	.byte	0x73
	.sleb128 12
	.byte	0x9f
	.uleb128 0x29
	.4byte	0x3e2
	.4byte	.LBB224
	.4byte	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.byte	0x63
	.4byte	0x9aa
	.uleb128 0x2a
	.4byte	0x3fb
	.uleb128 0x2a
	.4byte	0x3f2
	.byte	0
	.uleb128 0x29
	.4byte	0x3e2
	.4byte	.LBB227
	.4byte	.Ldebug_ranges0+0x2c0
	.byte	0x1
	.byte	0x64
	.4byte	0x9c8
	.uleb128 0x2a
	.4byte	0x3fb
	.uleb128 0x2a
	.4byte	0x3f2
	.byte	0
	.uleb128 0x26
	.4byte	0x3e2
	.4byte	.LBB230
	.4byte	.Ldebug_ranges0+0x2d8
	.byte	0x1
	.byte	0x65
	.uleb128 0x2a
	.4byte	0x3fb
	.uleb128 0x2b
	.4byte	0x3f2
	.byte	0x1
	.byte	0x57
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF102
	.byte	0x1
	.byte	0xac
	.4byte	0x86
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST19
	.4byte	0xb61
	.uleb128 0x21
	.4byte	.LASF90
	.byte	0x1
	.byte	0xac
	.4byte	0x25a
	.4byte	.LLST20
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x1
	.byte	0xac
	.4byte	0x25a
	.4byte	.LLST21
	.uleb128 0x21
	.4byte	.LASF91
	.byte	0x1
	.byte	0xac
	.4byte	0x74
	.4byte	.LLST22
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x2f8
	.uleb128 0x25
	.4byte	.LASF64
	.byte	0x1
	.byte	0xae
	.4byte	0x86
	.4byte	.LLST23
	.uleb128 0x25
	.4byte	.LASF92
	.byte	0x1
	.byte	0xaf
	.4byte	0x74
	.4byte	.LLST24
	.uleb128 0x25
	.4byte	.LASF93
	.byte	0x1
	.byte	0xb0
	.4byte	0x74
	.4byte	.LLST25
	.uleb128 0x25
	.4byte	.LASF94
	.byte	0x1
	.byte	0xb1
	.4byte	0x74
	.4byte	.LLST26
	.uleb128 0x2f
	.4byte	.LASF95
	.byte	0x1
	.byte	0xb2
	.4byte	0xb61
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.4byte	.LASF96
	.byte	0x1
	.byte	0xb3
	.4byte	0xb71
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xb4
	.4byte	0x74
	.4byte	.LLST27
	.uleb128 0x25
	.4byte	.LASF97
	.byte	0x1
	.byte	0xb5
	.4byte	0x74
	.4byte	.LLST28
	.uleb128 0x2f
	.4byte	.LASF98
	.byte	0x1
	.byte	0xb5
	.4byte	0x74
	.byte	0x1
	.byte	0x58
	.uleb128 0x25
	.4byte	.LASF99
	.byte	0x1
	.byte	0xb5
	.4byte	0x74
	.4byte	.LLST29
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x310
	.4byte	0xade
	.uleb128 0x24
	.string	"dot"
	.byte	0x1
	.byte	0xcc
	.4byte	0x74
	.4byte	.LLST30
	.byte	0
	.uleb128 0x31
	.4byte	.LBB266
	.4byte	.LBE266
	.uleb128 0x32
	.string	"err"
	.byte	0x1
	.byte	0xd6
	.4byte	0xb81
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.string	"ep1"
	.byte	0x1
	.byte	0xd6
	.4byte	0xb91
	.4byte	.LLST31
	.uleb128 0x24
	.string	"ep2"
	.byte	0x1
	.byte	0xd6
	.4byte	0xb91
	.4byte	.LLST32
	.uleb128 0x24
	.string	"dp"
	.byte	0x1
	.byte	0xd7
	.4byte	0xb91
	.4byte	.LLST33
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.byte	0xd7
	.4byte	0x74
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x328
	.uleb128 0x24
	.string	"dot"
	.byte	0x1
	.byte	0xe1
	.4byte	0x74
	.4byte	.LLST34
	.uleb128 0x25
	.4byte	.LASF100
	.byte	0x1
	.byte	0xe1
	.4byte	0x74
	.4byte	.LLST35
	.uleb128 0x25
	.4byte	.LASF101
	.byte	0x1
	.byte	0xe1
	.4byte	0x74
	.4byte	.LLST36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x74
	.4byte	0xb71
	.uleb128 0xd
	.4byte	0x86
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0x74
	.4byte	0xb81
	.uleb128 0xd
	.4byte	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	0x74
	.4byte	0xb91
	.uleb128 0xd
	.4byte	0x86
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x74
	.uleb128 0x2e
	.4byte	.LASF103
	.byte	0x2
	.byte	0x78
	.4byte	0x74
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST37
	.4byte	0xbc2
	.uleb128 0x21
	.4byte	.LASF104
	.byte	0x2
	.byte	0x78
	.4byte	0x74
	.4byte	.LLST38
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF105
	.byte	0x2
	.byte	0x64
	.4byte	0x74
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST39
	.4byte	0xbed
	.uleb128 0x21
	.4byte	.LASF106
	.byte	0x2
	.byte	0x64
	.4byte	0x74
	.4byte	.LLST40
	.byte	0
	.uleb128 0x20
	.4byte	.LASF107
	.byte	0x2
	.byte	0x9f
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST41
	.4byte	0xc7b
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x2
	.byte	0x9f
	.4byte	0x5de
	.4byte	.LLST42
	.uleb128 0x28
	.string	"x"
	.byte	0x2
	.byte	0x9f
	.4byte	0x74
	.4byte	.LLST43
	.uleb128 0x28
	.string	"y"
	.byte	0x2
	.byte	0x9f
	.4byte	0x74
	.4byte	.LLST44
	.uleb128 0x28
	.string	"w"
	.byte	0x2
	.byte	0x9f
	.4byte	0x74
	.4byte	.LLST45
	.uleb128 0x21
	.4byte	.LASF108
	.byte	0x2
	.byte	0x9f
	.4byte	0x74
	.4byte	.LLST46
	.uleb128 0x21
	.4byte	.LASF35
	.byte	0x2
	.byte	0x9f
	.4byte	0x38e
	.4byte	.LLST47
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x380
	.uleb128 0x25
	.4byte	.LASF109
	.byte	0x2
	.byte	0xa0
	.4byte	0x74
	.4byte	.LLST48
	.uleb128 0x2f
	.4byte	.LASF110
	.byte	0x2
	.byte	0xa1
	.4byte	0x38e
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF148
	.byte	0x2
	.byte	0x35
	.4byte	.LASF198
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST49
	.uleb128 0x1a
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x252
	.byte	0x1
	.4byte	0xcb9
	.uleb128 0x14
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.2byte	0x254
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.2byte	0x25d
	.4byte	0x74
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1cf
	.byte	0x1
	.4byte	0xda9
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x25a
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x25a
	.uleb128 0x1b
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x86
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x62
	.uleb128 0x1c
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x62
	.uleb128 0x1c
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1d6
	.4byte	0xda9
	.uleb128 0x1c
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1d6
	.4byte	0xdb9
	.uleb128 0x1c
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x20e
	.4byte	0x86
	.uleb128 0x34
	.4byte	0xd79
	.uleb128 0x19
	.string	"r"
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x74
	.uleb128 0x19
	.string	"g"
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x74
	.uleb128 0x19
	.string	"b"
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x74
	.byte	0
	.uleb128 0x34
	.4byte	0xd8b
	.uleb128 0x1c
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x86
	.byte	0
	.uleb128 0x34
	.4byte	0xd9b
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.2byte	0x208
	.4byte	0x62
	.byte	0
	.uleb128 0x14
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.2byte	0x20f
	.4byte	0x74
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xdb9
	.uleb128 0xd
	.4byte	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xdc9
	.uleb128 0xd
	.4byte	0x86
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.4byte	0xe4d
	.uleb128 0x1d
	.4byte	.LASF57
	.byte	0x1
	.byte	0x91
	.4byte	0x25a
	.uleb128 0x1d
	.4byte	.LASF90
	.byte	0x1
	.byte	0x91
	.4byte	0x25a
	.uleb128 0x14
	.uleb128 0x15
	.string	"err"
	.byte	0x1
	.byte	0x93
	.4byte	0xb81
	.uleb128 0x15
	.string	"ep1"
	.byte	0x1
	.byte	0x93
	.4byte	0xb91
	.uleb128 0x15
	.string	"ep2"
	.byte	0x1
	.byte	0x93
	.4byte	0xb91
	.uleb128 0x15
	.string	"et"
	.byte	0x1
	.byte	0x93
	.4byte	0xb91
	.uleb128 0x15
	.string	"ch"
	.byte	0x1
	.byte	0x94
	.4byte	0x74
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.byte	0x94
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x15
	.string	"bp"
	.byte	0x1
	.byte	0x98
	.4byte	0x25a
	.uleb128 0x15
	.string	"dp"
	.byte	0x1
	.byte	0x98
	.4byte	0x25a
	.uleb128 0x1e
	.4byte	.LASF120
	.byte	0x1
	.byte	0x99
	.4byte	0x25a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.4byte	0xff9
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x10d
	.4byte	0x25a
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x10d
	.4byte	0xff9
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x10d
	.4byte	0xff9
	.uleb128 0x14
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x10f
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x10f
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x110
	.4byte	0x25a
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x110
	.4byte	0x25a
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x111
	.4byte	0x142
	.uleb128 0x19
	.string	"v_r"
	.byte	0x1
	.2byte	0x112
	.4byte	0x74
	.uleb128 0x19
	.string	"v_g"
	.byte	0x1
	.2byte	0x112
	.4byte	0x74
	.uleb128 0x19
	.string	"v_b"
	.byte	0x1
	.2byte	0x112
	.4byte	0x74
	.uleb128 0x35
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x113
	.4byte	0x677
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x114
	.4byte	0xfff
	.uleb128 0x19
	.string	"vfr"
	.byte	0x1
	.2byte	0x114
	.4byte	0x13b
	.uleb128 0x19
	.string	"vfg"
	.byte	0x1
	.2byte	0x114
	.4byte	0x13b
	.uleb128 0x19
	.string	"vfb"
	.byte	0x1
	.2byte	0x114
	.4byte	0x13b
	.uleb128 0x19
	.string	"cov"
	.byte	0x1
	.2byte	0x117
	.4byte	0x100f
	.uleb128 0x19
	.string	"mu"
	.byte	0x1
	.2byte	0x118
	.4byte	0x101f
	.uleb128 0x19
	.string	"min"
	.byte	0x1
	.2byte	0x118
	.4byte	0x101f
	.uleb128 0x19
	.string	"max"
	.byte	0x1
	.2byte	0x118
	.4byte	0x101f
	.uleb128 0x19
	.string	"ch"
	.byte	0x1
	.2byte	0x119
	.4byte	0x74
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.2byte	0x119
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x119
	.4byte	0x74
	.uleb128 0x34
	.4byte	0xfa1
	.uleb128 0x19
	.string	"bp"
	.byte	0x1
	.2byte	0x11d
	.4byte	0x816
	.uleb128 0x19
	.string	"muv"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x11e
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x11e
	.4byte	0x74
	.byte	0
	.uleb128 0x34
	.4byte	0xfc5
	.uleb128 0x19
	.string	"r"
	.byte	0x1
	.2byte	0x133
	.4byte	0x74
	.uleb128 0x19
	.string	"g"
	.byte	0x1
	.2byte	0x134
	.4byte	0x74
	.uleb128 0x19
	.string	"b"
	.byte	0x1
	.2byte	0x135
	.4byte	0x74
	.byte	0
	.uleb128 0x34
	.4byte	0xfe9
	.uleb128 0x19
	.string	"r"
	.byte	0x1
	.2byte	0x149
	.4byte	0x13b
	.uleb128 0x19
	.string	"g"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x13b
	.uleb128 0x19
	.string	"b"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x13b
	.byte	0
	.uleb128 0x14
	.uleb128 0x19
	.string	"dot"
	.byte	0x1
	.2byte	0x164
	.4byte	0x74
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x62
	.uleb128 0xc
	.4byte	0x13b
	.4byte	0x100f
	.uleb128 0xd
	.4byte	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	0x74
	.4byte	0x101f
	.uleb128 0xd
	.4byte	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	0x74
	.4byte	0x102f
	.uleb128 0xd
	.4byte	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x180
	.4byte	0x74
	.byte	0x1
	.4byte	0x11d9
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x180
	.4byte	0x25a
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x180
	.4byte	0xff9
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x180
	.4byte	0xff9
	.uleb128 0x1b
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x180
	.4byte	0x86
	.uleb128 0x14
	.uleb128 0x36
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x182
	.4byte	0x11d9
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.uleb128 0x36
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x183
	.4byte	0x11de
	.byte	0x10
	.byte	0
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.uleb128 0x19
	.string	"frb"
	.byte	0x1
	.2byte	0x187
	.4byte	0x13b
	.uleb128 0x19
	.string	"fg"
	.byte	0x1
	.2byte	0x187
	.4byte	0x13b
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x188
	.4byte	0x62
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x188
	.4byte	0x62
	.uleb128 0x1c
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x188
	.4byte	0x62
	.uleb128 0x1c
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x188
	.4byte	0x62
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.2byte	0x189
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x189
	.4byte	0x74
	.uleb128 0x19
	.string	"xx"
	.byte	0x1
	.2byte	0x189
	.4byte	0x74
	.uleb128 0x19
	.string	"xy"
	.byte	0x1
	.2byte	0x189
	.4byte	0x74
	.uleb128 0x19
	.string	"yy"
	.byte	0x1
	.2byte	0x189
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x18a
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x18a
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x18a
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x18b
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x18b
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x18b
	.4byte	0x74
	.uleb128 0x19
	.string	"cm"
	.byte	0x1
	.2byte	0x18c
	.4byte	0x86
	.uleb128 0x34
	.4byte	0x11a0
	.uleb128 0x19
	.string	"r"
	.byte	0x1
	.2byte	0x195
	.4byte	0x74
	.uleb128 0x19
	.string	"g"
	.byte	0x1
	.2byte	0x195
	.4byte	0x74
	.uleb128 0x19
	.string	"b"
	.byte	0x1
	.2byte	0x195
	.4byte	0x74
	.byte	0
	.uleb128 0x14
	.uleb128 0x1c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x74
	.uleb128 0x19
	.string	"w1"
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x74
	.uleb128 0x19
	.string	"r"
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x74
	.uleb128 0x19
	.string	"g"
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x74
	.uleb128 0x19
	.string	"b"
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x74
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0xb71
	.uleb128 0x1f
	.4byte	0xb71
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x266
	.4byte	.LASF152
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST50
	.4byte	0x1a83
	.uleb128 0x38
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x266
	.4byte	0x25a
	.4byte	.LLST51
	.uleb128 0x39
	.string	"src"
	.byte	0x1
	.2byte	0x266
	.4byte	0x816
	.4byte	.LLST52
	.uleb128 0x38
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x266
	.4byte	0x74
	.4byte	.LLST53
	.uleb128 0x38
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x266
	.4byte	0x74
	.4byte	.LLST54
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x3a0
	.uleb128 0x3a
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x268
	.4byte	0x74
	.byte	0x5
	.byte	0x3
	.4byte	_ZZ22stb_compress_dxt_blockPhPKhiiE4init
	.uleb128 0x3b
	.4byte	0xcb9
	.4byte	.LBB370
	.4byte	.Ldebug_ranges0+0x3d0
	.byte	0x1
	.2byte	0x273
	.4byte	0x194f
	.uleb128 0x27
	.4byte	0xcde
	.4byte	.LLST55
	.uleb128 0x27
	.4byte	0xcd2
	.4byte	.LLST56
	.uleb128 0x27
	.4byte	0xcc6
	.4byte	.LLST57
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x3f8
	.uleb128 0x2d
	.4byte	0xceb
	.4byte	.LLST58
	.uleb128 0x2d
	.4byte	0xcf7
	.4byte	.LLST59
	.uleb128 0x2d
	.4byte	0xd01
	.4byte	.LLST60
	.uleb128 0x2d
	.4byte	0xd0d
	.4byte	.LLST61
	.uleb128 0x2d
	.4byte	0xd19
	.4byte	.LLST62
	.uleb128 0x2d
	.4byte	0xd25
	.4byte	.LLST63
	.uleb128 0x3c
	.4byte	0xd31
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x3c
	.4byte	0xd3d
	.byte	0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x2d
	.4byte	0xd49
	.4byte	.LLST64
	.uleb128 0x3d
	.4byte	.LBB372
	.4byte	.LBE372
	.4byte	0x1305
	.uleb128 0x2d
	.4byte	0xd5a
	.4byte	.LLST65
	.uleb128 0x2d
	.4byte	0xd64
	.4byte	.LLST66
	.uleb128 0x2d
	.4byte	0xd6e
	.4byte	.LLST67
	.byte	0
	.uleb128 0x3d
	.4byte	.LBB374
	.4byte	.LBE374
	.4byte	0x131c
	.uleb128 0x2d
	.4byte	0xd90
	.4byte	.LLST68
	.byte	0
	.uleb128 0x3d
	.4byte	.LBB375
	.4byte	.LBE375
	.4byte	0x1333
	.uleb128 0x2d
	.4byte	0xd9c
	.4byte	.LLST69
	.byte	0
	.uleb128 0x3b
	.4byte	0xdc9
	.4byte	.LBB377
	.4byte	.Ldebug_ranges0+0x420
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x13af
	.uleb128 0x2a
	.4byte	0xde0
	.uleb128 0x2a
	.4byte	0xdd5
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x438
	.uleb128 0x3c
	.4byte	0xdec
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x2d
	.4byte	0xdf7
	.4byte	.LLST70
	.uleb128 0x2d
	.4byte	0xe02
	.4byte	.LLST71
	.uleb128 0x2d
	.4byte	0xe17
	.4byte	.LLST72
	.uleb128 0x2d
	.4byte	0xe21
	.4byte	.LLST73
	.uleb128 0x2d
	.4byte	0xe0d
	.4byte	.LLST74
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x450
	.uleb128 0x2d
	.4byte	0xe2b
	.4byte	.LLST75
	.uleb128 0x2d
	.4byte	0xe35
	.4byte	.LLST76
	.uleb128 0x2d
	.4byte	0xe3f
	.4byte	.LLST77
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0xe4d
	.4byte	.LBB384
	.4byte	.Ldebug_ranges0+0x468
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x16ad
	.uleb128 0x27
	.4byte	0xe72
	.4byte	.LLST78
	.uleb128 0x27
	.4byte	0xe66
	.4byte	.LLST79
	.uleb128 0x27
	.4byte	0xe5a
	.4byte	.LLST80
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x480
	.uleb128 0x2d
	.4byte	0xe7f
	.4byte	.LLST81
	.uleb128 0x2d
	.4byte	0xe8b
	.4byte	.LLST82
	.uleb128 0x2c
	.4byte	0xe97
	.uleb128 0x3c
	.4byte	0xea3
	.byte	0x1
	.byte	0x6d
	.uleb128 0x2d
	.4byte	0xeaf
	.4byte	.LLST83
	.uleb128 0x2d
	.4byte	0xebb
	.4byte	.LLST84
	.uleb128 0x2d
	.4byte	0xec7
	.4byte	.LLST85
	.uleb128 0x2d
	.4byte	0xed3
	.4byte	.LLST86
	.uleb128 0x3c
	.4byte	0xeec
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x2d
	.4byte	0xef8
	.4byte	.LLST87
	.uleb128 0x2d
	.4byte	0xf04
	.4byte	.LLST88
	.uleb128 0x2d
	.4byte	0xf10
	.4byte	.LLST89
	.uleb128 0x3c
	.4byte	0xf1c
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x3c
	.4byte	0xf28
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x3c
	.4byte	0xf33
	.byte	0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x3c
	.4byte	0xf3f
	.byte	0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x2d
	.4byte	0xf4b
	.4byte	.LLST90
	.uleb128 0x2d
	.4byte	0xf56
	.4byte	.LLST91
	.uleb128 0x2d
	.4byte	0xf60
	.4byte	.LLST92
	.uleb128 0x3e
	.4byte	0xedf
	.byte	0x4
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x498
	.4byte	0x14bc
	.uleb128 0x2d
	.4byte	0xf71
	.4byte	.LLST93
	.uleb128 0x2d
	.4byte	0xf7c
	.4byte	.LLST94
	.uleb128 0x2d
	.4byte	0xf88
	.4byte	.LLST95
	.uleb128 0x2d
	.4byte	0xf94
	.4byte	.LLST96
	.byte	0
	.uleb128 0x3d
	.4byte	.LBB393
	.4byte	.LBE393
	.4byte	0x14e5
	.uleb128 0x2d
	.4byte	0xfa6
	.4byte	.LLST97
	.uleb128 0x2d
	.4byte	0xfb0
	.4byte	.LLST98
	.uleb128 0x2d
	.4byte	0xfba
	.4byte	.LLST99
	.byte	0
	.uleb128 0x3d
	.4byte	.LBB397
	.4byte	.LBE397
	.4byte	0x150e
	.uleb128 0x2d
	.4byte	0xfca
	.4byte	.LLST100
	.uleb128 0x2d
	.4byte	0xfd4
	.4byte	.LLST101
	.uleb128 0x2d
	.4byte	0xfde
	.4byte	.LLST102
	.byte	0
	.uleb128 0x3d
	.4byte	.LBB400
	.4byte	.LBE400
	.4byte	0x1525
	.uleb128 0x2d
	.4byte	0xfea
	.4byte	.LLST103
	.byte	0
	.uleb128 0x3b
	.4byte	0x472
	.4byte	.LBB401
	.4byte	.Ldebug_ranges0+0x4c8
	.byte	0x1
	.2byte	0x172
	.4byte	0x15e4
	.uleb128 0x27
	.4byte	0x494
	.4byte	.LLST104
	.uleb128 0x27
	.4byte	0x48b
	.4byte	.LLST105
	.uleb128 0x27
	.4byte	0x482
	.4byte	.LLST106
	.uleb128 0x29
	.4byte	0x3b4
	.4byte	.LBB403
	.4byte	.Ldebug_ranges0+0x530
	.byte	0x1
	.byte	0x50
	.4byte	0x1585
	.uleb128 0x27
	.4byte	0x3cd
	.4byte	.LLST107
	.uleb128 0x27
	.4byte	0x3c4
	.4byte	.LLST108
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x558
	.uleb128 0x2c
	.4byte	0x3d7
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x3b4
	.4byte	.LBB408
	.4byte	.Ldebug_ranges0+0x580
	.byte	0x1
	.byte	0x50
	.4byte	0x15b6
	.uleb128 0x27
	.4byte	0x3cd
	.4byte	.LLST109
	.uleb128 0x27
	.4byte	0x3c4
	.4byte	.LLST110
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x5a8
	.uleb128 0x2c
	.4byte	0x3d7
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x3b4
	.4byte	.LBB413
	.4byte	.Ldebug_ranges0+0x5d0
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.4byte	0x3cd
	.4byte	.LLST111
	.uleb128 0x27
	.4byte	0x3c4
	.4byte	.LLST112
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x600
	.uleb128 0x2c
	.4byte	0x3d7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	0x472
	.4byte	.LBB441
	.4byte	.Ldebug_ranges0+0x630
	.byte	0x1
	.2byte	0x171
	.uleb128 0x27
	.4byte	0x494
	.4byte	.LLST113
	.uleb128 0x27
	.4byte	0x48b
	.4byte	.LLST114
	.uleb128 0x27
	.4byte	0x482
	.4byte	.LLST115
	.uleb128 0x29
	.4byte	0x3b4
	.4byte	.LBB443
	.4byte	.Ldebug_ranges0+0x690
	.byte	0x1
	.byte	0x50
	.4byte	0x1644
	.uleb128 0x27
	.4byte	0x3cd
	.4byte	.LLST107
	.uleb128 0x27
	.4byte	0x3c4
	.4byte	.LLST108
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x6b8
	.uleb128 0x2d
	.4byte	0x3d7
	.4byte	.LLST116
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x3b4
	.4byte	.LBB448
	.4byte	.Ldebug_ranges0+0x6e0
	.byte	0x1
	.byte	0x50
	.4byte	0x1679
	.uleb128 0x27
	.4byte	0x3cd
	.4byte	.LLST109
	.uleb128 0x27
	.4byte	0x3c4
	.4byte	.LLST110
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x708
	.uleb128 0x2d
	.4byte	0x3d7
	.4byte	.LLST117
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x3b4
	.4byte	.LBB454
	.4byte	.Ldebug_ranges0+0x730
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.4byte	0x3cd
	.4byte	.LLST111
	.uleb128 0x27
	.4byte	0x3c4
	.4byte	.LLST112
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x760
	.uleb128 0x2d
	.4byte	0x3d7
	.4byte	.LLST118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x790
	.uleb128 0x2d
	.4byte	0xd7e
	.4byte	.LLST119
	.uleb128 0x3f
	.4byte	0x102f
	.4byte	.LBB502
	.4byte	.Ldebug_ranges0+0x7b0
	.byte	0x1
	.2byte	0x1f6
	.uleb128 0x27
	.4byte	0x1064
	.4byte	.LLST120
	.uleb128 0x27
	.4byte	0x1058
	.4byte	.LLST121
	.uleb128 0x27
	.4byte	0x104c
	.4byte	.LLST122
	.uleb128 0x27
	.4byte	0x1040
	.4byte	.LLST123
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x7f8
	.uleb128 0x2d
	.4byte	0x10ab
	.4byte	.LLST124
	.uleb128 0x2d
	.4byte	0x10b7
	.4byte	.LLST125
	.uleb128 0x2d
	.4byte	0x10c2
	.4byte	.LLST126
	.uleb128 0x2d
	.4byte	0x10ce
	.4byte	.LLST127
	.uleb128 0x2d
	.4byte	0x10da
	.4byte	.LLST128
	.uleb128 0x2d
	.4byte	0x10e6
	.4byte	.LLST129
	.uleb128 0x2c
	.4byte	0x10f2
	.uleb128 0x2d
	.4byte	0x10fc
	.4byte	.LLST130
	.uleb128 0x2d
	.4byte	0x1108
	.4byte	.LLST131
	.uleb128 0x2d
	.4byte	0x1113
	.4byte	.LLST132
	.uleb128 0x2d
	.4byte	0x111e
	.4byte	.LLST133
	.uleb128 0x2d
	.4byte	0x1129
	.4byte	.LLST134
	.uleb128 0x2d
	.4byte	0x1135
	.4byte	.LLST135
	.uleb128 0x2d
	.4byte	0x1141
	.4byte	.LLST136
	.uleb128 0x2d
	.4byte	0x114d
	.4byte	.LLST137
	.uleb128 0x2d
	.4byte	0x1159
	.4byte	.LLST138
	.uleb128 0x2d
	.4byte	0x1165
	.4byte	.LLST139
	.uleb128 0x2d
	.4byte	0x1171
	.4byte	.LLST140
	.uleb128 0x3c
	.4byte	0x1071
	.byte	0x5
	.byte	0x3
	.4byte	_ZZL16stb__RefineBlockPhPtS0_jE5w1Tab
	.uleb128 0x3c
	.4byte	0x108e
	.byte	0x5
	.byte	0x3
	.4byte	_ZZL16stb__RefineBlockPhPtS0_jE5prods
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x840
	.4byte	0x17cd
	.uleb128 0x2d
	.4byte	0x1181
	.4byte	.LLST141
	.uleb128 0x2d
	.4byte	0x118b
	.4byte	.LLST142
	.uleb128 0x2d
	.4byte	0x1195
	.4byte	.LLST143
	.byte	0
	.uleb128 0x3b
	.4byte	0x49e
	.4byte	.LBB507
	.4byte	.Ldebug_ranges0+0x868
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x1804
	.uleb128 0x27
	.4byte	0x4b9
	.4byte	.LLST144
	.uleb128 0x27
	.4byte	0x4c4
	.4byte	.LLST145
	.uleb128 0x2a
	.4byte	0x4af
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x890
	.uleb128 0x2c
	.4byte	0x4d0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x8b8
	.4byte	0x183b
	.uleb128 0x2d
	.4byte	0x11a1
	.4byte	.LLST146
	.uleb128 0x2d
	.4byte	0x11ad
	.4byte	.LLST147
	.uleb128 0x2d
	.4byte	0x11b8
	.4byte	.LLST148
	.uleb128 0x2d
	.4byte	0x11c2
	.4byte	.LLST149
	.uleb128 0x2d
	.4byte	0x11cc
	.4byte	.LLST150
	.byte	0
	.uleb128 0x3b
	.4byte	0x49e
	.4byte	.LBB518
	.4byte	.Ldebug_ranges0+0x8d0
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x1872
	.uleb128 0x27
	.4byte	0x4b9
	.4byte	.LLST151
	.uleb128 0x27
	.4byte	0x4c4
	.4byte	.LLST152
	.uleb128 0x2a
	.4byte	0x4af
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x8f0
	.uleb128 0x2c
	.4byte	0x4d0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0x49e
	.4byte	.LBB524
	.4byte	.Ldebug_ranges0+0x910
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x18a9
	.uleb128 0x27
	.4byte	0x4b9
	.4byte	.LLST153
	.uleb128 0x27
	.4byte	0x4c4
	.4byte	.LLST154
	.uleb128 0x2a
	.4byte	0x4af
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x930
	.uleb128 0x2c
	.4byte	0x4d0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0x49e
	.4byte	.LBB530
	.4byte	.Ldebug_ranges0+0x950
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x18e0
	.uleb128 0x27
	.4byte	0x4b9
	.4byte	.LLST155
	.uleb128 0x27
	.4byte	0x4c4
	.4byte	.LLST156
	.uleb128 0x2a
	.4byte	0x4af
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x970
	.uleb128 0x2c
	.4byte	0x4d0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0x49e
	.4byte	.LBB536
	.4byte	.Ldebug_ranges0+0x990
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x1917
	.uleb128 0x27
	.4byte	0x4b9
	.4byte	.LLST157
	.uleb128 0x27
	.4byte	0x4c4
	.4byte	.LLST158
	.uleb128 0x2a
	.4byte	0x4af
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x9a8
	.uleb128 0x2c
	.4byte	0x4d0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	0x49e
	.4byte	.LBB540
	.4byte	.Ldebug_ranges0+0x9c0
	.byte	0x1
	.2byte	0x1c6
	.uleb128 0x27
	.4byte	0x4b9
	.4byte	.LLST159
	.uleb128 0x27
	.4byte	0x4c4
	.4byte	.LLST160
	.uleb128 0x2a
	.4byte	0x4af
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x9d8
	.uleb128 0x2c
	.4byte	0x4d0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	0x4dc
	.4byte	.LBB581
	.4byte	.LBE581
	.byte	0x1
	.2byte	0x26f
	.4byte	0x19ee
	.uleb128 0x27
	.4byte	0x4f5
	.4byte	.LLST161
	.uleb128 0x27
	.4byte	0x4e9
	.4byte	.LLST162
	.uleb128 0x31
	.4byte	.LBB582
	.4byte	.LBE582
	.uleb128 0x2d
	.4byte	0x50e
	.4byte	.LLST163
	.uleb128 0x2d
	.4byte	0x518
	.4byte	.LLST164
	.uleb128 0x2d
	.4byte	0x524
	.4byte	.LLST165
	.uleb128 0x2d
	.4byte	0x530
	.4byte	.LLST166
	.uleb128 0x2d
	.4byte	0x53c
	.4byte	.LLST167
	.uleb128 0x2d
	.4byte	0x548
	.4byte	.LLST168
	.uleb128 0x2d
	.4byte	0x554
	.4byte	.LLST169
	.uleb128 0x2d
	.4byte	0x560
	.4byte	.LLST170
	.uleb128 0x2d
	.4byte	0x56b
	.4byte	.LLST171
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x9f0
	.uleb128 0x2d
	.4byte	0x577
	.4byte	.LLST172
	.uleb128 0x2d
	.4byte	0x581
	.4byte	.LLST173
	.uleb128 0x2c
	.4byte	0x58d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0xc93
	.4byte	.LBB591
	.4byte	.LBE591
	.byte	0x1
	.2byte	0x26a
	.uleb128 0x31
	.4byte	.LBB592
	.4byte	.LBE592
	.uleb128 0x2d
	.4byte	0xca1
	.4byte	.LLST174
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xa18
	.uleb128 0x2d
	.4byte	0xcac
	.4byte	.LLST175
	.uleb128 0x3b
	.4byte	0x3b4
	.4byte	.LBB595
	.4byte	.Ldebug_ranges0+0xa40
	.byte	0x1
	.2byte	0x25f
	.4byte	0x1a4c
	.uleb128 0x27
	.4byte	0x3cd
	.4byte	.LLST176
	.uleb128 0x2a
	.4byte	0x3c4
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xa70
	.uleb128 0x2c
	.4byte	0x3d7
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	0x3b4
	.4byte	.LBB601
	.4byte	.Ldebug_ranges0+0xaa0
	.byte	0x1
	.2byte	0x25e
	.uleb128 0x27
	.4byte	0x3cd
	.4byte	.LLST177
	.uleb128 0x27
	.4byte	0x3c4
	.4byte	.LLST175
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xad0
	.uleb128 0x2d
	.4byte	0x3d7
	.4byte	.LLST179
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF149
	.byte	0x2
	.2byte	0x13d
	.4byte	.LASF199
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF151
	.byte	0x2
	.2byte	0x141
	.4byte	.LASF153
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST180
	.4byte	0x1acf
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xb00
	.uleb128 0x43
	.4byte	.LASF154
	.byte	0x2
	.2byte	0x142
	.4byte	0x1acf
	.4byte	.LLST181
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x39b
	.uleb128 0x1a
	.4byte	.LASF155
	.byte	0x2
	.2byte	0x118
	.byte	0x1
	.4byte	0x1b8b
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x2
	.2byte	0x118
	.4byte	0x74
	.uleb128 0x1b
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x118
	.4byte	0x74
	.uleb128 0x1b
	.4byte	.LASF29
	.byte	0x2
	.2byte	0x118
	.4byte	0x74
	.uleb128 0x1b
	.4byte	.LASF30
	.byte	0x2
	.2byte	0x118
	.4byte	0x74
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x118
	.4byte	0x74
	.uleb128 0x18
	.string	"bpp"
	.byte	0x2
	.2byte	0x118
	.4byte	0x74
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x118
	.4byte	0x74
	.uleb128 0x18
	.string	"x"
	.byte	0x2
	.2byte	0x118
	.4byte	0x74
	.uleb128 0x18
	.string	"y"
	.byte	0x2
	.2byte	0x118
	.4byte	0x74
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x118
	.4byte	0x38e
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x2
	.2byte	0x118
	.4byte	0x38e
	.uleb128 0x14
	.uleb128 0x19
	.string	"py"
	.byte	0x2
	.2byte	0x119
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x19
	.string	"px"
	.byte	0x2
	.2byte	0x11a
	.4byte	0x74
	.uleb128 0x14
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0x2
	.2byte	0x11c
	.4byte	0x38e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF157
	.byte	0x2
	.2byte	0x14d
	.4byte	.LASF158
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST182
	.4byte	0x1e3e
	.uleb128 0x38
	.4byte	.LASF159
	.byte	0x2
	.2byte	0x14d
	.4byte	0x74
	.4byte	.LLST183
	.uleb128 0x38
	.4byte	.LASF160
	.byte	0x2
	.2byte	0x14d
	.4byte	0x74
	.4byte	.LLST184
	.uleb128 0x38
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x14d
	.4byte	0x74
	.4byte	.LLST185
	.uleb128 0x38
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x14d
	.4byte	0x74
	.4byte	.LLST186
	.uleb128 0x38
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x14d
	.4byte	0x74
	.4byte	.LLST187
	.uleb128 0x38
	.4byte	.LASF35
	.byte	0x2
	.2byte	0x14d
	.4byte	0x38e
	.4byte	.LLST188
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xb18
	.uleb128 0x44
	.string	"buf"
	.byte	0x2
	.2byte	0x14e
	.4byte	0x38e
	.4byte	.LLST189
	.uleb128 0x43
	.4byte	.LASF161
	.byte	0x2
	.2byte	0x14e
	.4byte	0x38e
	.4byte	.LLST190
	.uleb128 0x43
	.4byte	.LASF70
	.byte	0x2
	.2byte	0x14f
	.4byte	0xb0
	.4byte	.LLST191
	.uleb128 0x43
	.4byte	.LASF162
	.byte	0x2
	.2byte	0x14f
	.4byte	0xb0
	.4byte	.LLST192
	.uleb128 0x44
	.string	"x"
	.byte	0x2
	.2byte	0x150
	.4byte	0x74
	.4byte	.LLST193
	.uleb128 0x44
	.string	"y"
	.byte	0x2
	.2byte	0x150
	.4byte	0x74
	.4byte	.LLST194
	.uleb128 0x43
	.4byte	.LASF163
	.byte	0x2
	.2byte	0x151
	.4byte	0x2c0
	.4byte	.LLST195
	.uleb128 0x43
	.4byte	.LASF154
	.byte	0x2
	.2byte	0x152
	.4byte	0x1acf
	.4byte	.LLST196
	.uleb128 0x3b
	.4byte	0x632
	.4byte	.LBB647
	.4byte	.Ldebug_ranges0+0xb50
	.byte	0x2
	.2byte	0x160
	.4byte	0x1ca7
	.uleb128 0x27
	.4byte	0x642
	.4byte	.LLST197
	.byte	0
	.uleb128 0x3b
	.4byte	0x5ea
	.4byte	.LBB651
	.4byte	.Ldebug_ranges0+0xb70
	.byte	0x2
	.2byte	0x161
	.4byte	0x1cd7
	.uleb128 0x27
	.4byte	0x610
	.4byte	.LLST198
	.uleb128 0x27
	.4byte	0x605
	.4byte	.LLST199
	.uleb128 0x27
	.4byte	0x5fa
	.4byte	.LLST200
	.byte	0
	.uleb128 0x3b
	.4byte	0x64e
	.4byte	.LBB654
	.4byte	.Ldebug_ranges0+0xb88
	.byte	0x2
	.2byte	0x172
	.4byte	0x1d00
	.uleb128 0x27
	.4byte	0x65e
	.4byte	.LLST201
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xba8
	.uleb128 0x2c
	.4byte	0x66a
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0x1ad5
	.4byte	.LBB658
	.4byte	.Ldebug_ranges0+0xbc8
	.byte	0x2
	.2byte	0x179
	.4byte	0x1db9
	.uleb128 0x2a
	.4byte	0x1b56
	.uleb128 0x2a
	.4byte	0x1b4a
	.uleb128 0x2a
	.4byte	0x1b40
	.uleb128 0x2a
	.4byte	0x1b36
	.uleb128 0x2a
	.4byte	0x1b2a
	.uleb128 0x2a
	.4byte	0x1b1e
	.uleb128 0x2a
	.4byte	0x1b12
	.uleb128 0x2a
	.4byte	0x1b06
	.uleb128 0x2a
	.4byte	0x1afa
	.uleb128 0x2a
	.4byte	0x1aee
	.uleb128 0x2a
	.4byte	0x1ae2
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xc08
	.uleb128 0x2d
	.4byte	0x1b63
	.4byte	.LLST202
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xc48
	.uleb128 0x2d
	.4byte	0x1b6f
	.4byte	.LLST203
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xc90
	.uleb128 0x2d
	.4byte	0x1b7b
	.4byte	.LLST204
	.uleb128 0x3f
	.4byte	0x59a
	.4byte	.LBB662
	.4byte	.Ldebug_ranges0+0xcd8
	.byte	0x2
	.2byte	0x130
	.uleb128 0x2a
	.4byte	0x5bc
	.uleb128 0x27
	.4byte	0x5a6
	.4byte	.LLST205
	.uleb128 0x27
	.4byte	0x5b1
	.4byte	.LLST206
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xcf8
	.uleb128 0x2d
	.4byte	0x5c8
	.4byte	.LLST207
	.uleb128 0x2d
	.4byte	0x5d3
	.4byte	.LLST206
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	0x67c
	.4byte	.LBB691
	.4byte	.Ldebug_ranges0+0xd18
	.byte	0x2
	.2byte	0x17d
	.uleb128 0x27
	.4byte	0x6bb
	.4byte	.LLST209
	.uleb128 0x2a
	.4byte	0x6b0
	.uleb128 0x2a
	.4byte	0x6a7
	.uleb128 0x2a
	.4byte	0x69e
	.uleb128 0x2a
	.4byte	0x693
	.uleb128 0x2a
	.4byte	0x688
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xd38
	.uleb128 0x2c
	.4byte	0x6c7
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xd58
	.uleb128 0x2d
	.4byte	0x6d2
	.4byte	.LLST210
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xd78
	.uleb128 0x3c
	.4byte	0x6de
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2d
	.4byte	0x6ea
	.4byte	.LLST211
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xd98
	.uleb128 0x2d
	.4byte	0x6f5
	.4byte	.LLST212
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xdb0
	.uleb128 0x2d
	.4byte	0x701
	.4byte	.LLST213
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF164
	.byte	0x2
	.2byte	0x19b
	.4byte	.LASF165
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST214
	.4byte	0x1f0e
	.uleb128 0x38
	.4byte	.LASF166
	.byte	0x2
	.2byte	0x19b
	.4byte	0x74
	.4byte	.LLST215
	.uleb128 0x38
	.4byte	.LASF167
	.byte	0x2
	.2byte	0x19b
	.4byte	0x74
	.4byte	.LLST216
	.uleb128 0x38
	.4byte	.LASF168
	.byte	0x2
	.2byte	0x19b
	.4byte	0x74
	.4byte	.LLST217
	.uleb128 0x38
	.4byte	.LASF169
	.byte	0x2
	.2byte	0x19b
	.4byte	0x74
	.4byte	.LLST218
	.uleb128 0x38
	.4byte	.LASF170
	.byte	0x2
	.2byte	0x19b
	.4byte	0x74
	.4byte	.LLST219
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xdc8
	.uleb128 0x43
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x19c
	.4byte	0x9b
	.4byte	.LLST220
	.uleb128 0x43
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x19c
	.4byte	0x9b
	.4byte	.LLST221
	.uleb128 0x43
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x19c
	.4byte	0x9b
	.4byte	.LLST222
	.uleb128 0x43
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x19c
	.4byte	0x9b
	.4byte	.LLST223
	.uleb128 0x1c
	.4byte	.LASF171
	.byte	0x2
	.2byte	0x19c
	.4byte	0x9b
	.uleb128 0x43
	.4byte	.LASF154
	.byte	0x2
	.2byte	0x19d
	.4byte	0x1acf
	.4byte	.LLST224
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0x2
	.byte	0x45
	.4byte	0x74
	.byte	0x1
	.4byte	0x1f2c
	.uleb128 0x14
	.uleb128 0x1e
	.4byte	.LASF81
	.byte	0x2
	.byte	0x46
	.4byte	0x74
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF173
	.byte	0x2
	.2byte	0x1c2
	.4byte	.LASF174
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST225
	.4byte	0x1f9e
	.uleb128 0x39
	.string	"num"
	.byte	0x2
	.2byte	0x1c2
	.4byte	0x74
	.4byte	.LLST226
	.uleb128 0x38
	.4byte	.LASF175
	.byte	0x2
	.2byte	0x1c2
	.4byte	0x1f9e
	.4byte	.LLST227
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xdf0
	.uleb128 0x44
	.string	"i"
	.byte	0x2
	.2byte	0x1c3
	.4byte	0x74
	.4byte	.LLST228
	.uleb128 0x3f
	.4byte	0x1f0e
	.4byte	.LBB729
	.4byte	.Ldebug_ranges0+0xe18
	.byte	0x2
	.2byte	0x1c5
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xe50
	.uleb128 0x2d
	.4byte	0x1f1f
	.4byte	.LLST229
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x86
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF176
	.byte	0x2
	.2byte	0x1ca
	.4byte	.LASF177
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST230
	.4byte	0x2010
	.uleb128 0x39
	.string	"num"
	.byte	0x2
	.2byte	0x1ca
	.4byte	0x74
	.4byte	.LLST231
	.uleb128 0x38
	.4byte	.LASF175
	.byte	0x2
	.2byte	0x1ca
	.4byte	0x1f9e
	.4byte	.LLST232
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0xe88
	.uleb128 0x44
	.string	"i"
	.byte	0x2
	.2byte	0x1cb
	.4byte	0x74
	.4byte	.LLST233
	.uleb128 0x3f
	.4byte	0x722
	.4byte	.LBB745
	.4byte	.Ldebug_ranges0+0xea8
	.byte	0x2
	.2byte	0x1d0
	.uleb128 0x27
	.4byte	0x72e
	.4byte	.LLST234
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.4byte	.LASF178
	.byte	0x2
	.2byte	0x1d5
	.4byte	.LASF179
	.4byte	.LFB72
	.4byte	.LFE72
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x203d
	.uleb128 0x38
	.4byte	.LASF180
	.byte	0x2
	.2byte	0x1d5
	.4byte	0x86
	.4byte	.LLST235
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF181
	.byte	0x2
	.2byte	0x1e1
	.4byte	.LASF182
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST236
	.4byte	0x206b
	.uleb128 0x38
	.4byte	.LASF183
	.byte	0x2
	.2byte	0x1e1
	.4byte	0x86
	.4byte	.LLST237
	.byte	0
	.uleb128 0x46
	.4byte	.LASF200
	.byte	0x5
	.2byte	0x548
	.4byte	0x2079
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	0x207e
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1c0
	.uleb128 0x2f
	.4byte	.LASF184
	.byte	0x2
	.byte	0x2c
	.4byte	0xb81
	.byte	0x5
	.byte	0x3
	.4byte	_ZL9gxtexmaps
	.uleb128 0x2f
	.4byte	.LASF185
	.byte	0x2
	.byte	0x2d
	.4byte	0x74
	.byte	0x5
	.byte	0x3
	.4byte	_ZL12gxcurrtexmap
	.uleb128 0x2f
	.4byte	.LASF186
	.byte	0x2
	.byte	0x2e
	.4byte	0x1acf
	.byte	0x5
	.byte	0x3
	.4byte	_ZL10gxtexdescs
	.uleb128 0x2f
	.4byte	.LASF187
	.byte	0x2
	.byte	0x2f
	.4byte	0x74
	.byte	0x5
	.byte	0x3
	.4byte	_ZL13gxtexsrchfree
	.uleb128 0x2f
	.4byte	.LASF188
	.byte	0x2
	.byte	0x30
	.4byte	0x74
	.byte	0x5
	.byte	0x3
	.4byte	_ZL13gxcurrtexdesc
	.uleb128 0xc
	.4byte	0x1cc
	.4byte	0x20e9
	.uleb128 0xd
	.4byte	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF66
	.byte	0x2
	.byte	0x33
	.4byte	0x20d9
	.byte	0x5
	.byte	0x3
	.4byte	_ZL5color
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0x210a
	.uleb128 0xd
	.4byte	0x86
	.byte	0x1f
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF189
	.byte	0x1
	.byte	0x35
	.4byte	0x20fa
	.byte	0x5
	.byte	0x3
	.4byte	_ZL12stb__Expand5
	.uleb128 0x2f
	.4byte	.LASF190
	.byte	0x1
	.byte	0x36
	.4byte	0xda9
	.byte	0x5
	.byte	0x3
	.4byte	_ZL12stb__Expand6
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0x2142
	.uleb128 0xd
	.4byte	0x86
	.byte	0xff
	.uleb128 0xd
	.4byte	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF191
	.byte	0x1
	.byte	0x37
	.4byte	0x212c
	.byte	0x5
	.byte	0x3
	.4byte	_ZL12stb__OMatch5
	.uleb128 0x2f
	.4byte	.LASF192
	.byte	0x1
	.byte	0x38
	.4byte	0x212c
	.byte	0x5
	.byte	0x3
	.4byte	_ZL12stb__OMatch6
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0x2175
	.uleb128 0x47
	.4byte	0x86
	.2byte	0x10f
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF193
	.byte	0x1
	.byte	0x39
	.4byte	0x2164
	.byte	0x5
	.byte	0x3
	.4byte	_ZL15stb__QuantRBTab
	.uleb128 0x2f
	.4byte	.LASF194
	.byte	0x1
	.byte	0x3a
	.4byte	0x2164
	.byte	0x5
	.byte	0x3
	.4byte	_ZL14stb__QuantGTab
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
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB53-.Ltext0
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
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x100
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB54-.Ltext0
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
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3b
	.byte	0x25
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0x7e0
	.byte	0x1a
	.byte	0x35
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB56-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL72-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL73-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LFB42-.Ltext0
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
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB41-.Ltext0
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
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LFB44-.Ltext0
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
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL99-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL99-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL99-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LFB63-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 400
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 400
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL312-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL131-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL313-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL314-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL314-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xaaaaaaaa
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0xc
	.4byte	0x55550000
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL314-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL321-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -300
	.byte	0x9f
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL329-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL324-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL329-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL316-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL327-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL329-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4792
	.sleb128 0
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4792
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4783
	.sleb128 0
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4783
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x3
	.byte	0x89
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0x9f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x80000001
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x80000001
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL196-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x9
	.byte	0x8c
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x9
	.byte	0x8c
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x2
	.byte	0x4f
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x2
	.byte	0x4f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x9
	.byte	0x8d
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x9
	.byte	0x8d
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x9
	.byte	0x8c
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x2
	.byte	0x4f
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x2
	.byte	0x4f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x9
	.byte	0x8d
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x9
	.byte	0x8c
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL196-1-.Ltext0
	.2byte	0x9
	.byte	0x8d
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL196-1-.Ltext0
	.2byte	0x9
	.byte	0x8d
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL196-1-.Ltext0
	.2byte	0x9
	.byte	0x8d
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL196-1-.Ltext0
	.2byte	0xf
	.byte	0x8d
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x8
	.byte	0x3f
	.byte	0x1e
	.byte	0x23
	.uleb128 0x80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL196-1-.Ltext0
	.2byte	0xe
	.byte	0x8d
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x4f
	.byte	0x1e
	.byte	0x23
	.uleb128 0x80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4792
	.sleb128 0
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4792
	.sleb128 0
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4792
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4783
	.sleb128 0
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4783
	.sleb128 0
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4783
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x4f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x4f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x4f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x4f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL313-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x2
	.byte	0x4f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LFB67-.Ltext0
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
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST181:
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL331-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 240
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 240
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL334-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL375-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL336-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL336-1-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL341-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL336-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL336-1-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL336-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL336-1-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL341-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL336-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL336-1-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL341-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -116
	.4byte	.LVL380-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -116
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -116
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x3
	.byte	0x7e
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL359-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL363-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL378-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST192:
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL380-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL359-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL361-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0xe
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -148
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x61
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0xd
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -148
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0xa
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -148
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0xa
	.byte	0x64
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -148
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0xa
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -148
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL336-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL336-1-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL375-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL378-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL378-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL380-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL378-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL380-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	.LVL380-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL381-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	0
	.4byte	0
.LLST202:
	.4byte	.LVL363-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST203:
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST204:
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST205:
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5color
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST206:
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST207:
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL374-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST209:
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL357-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL357-1-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x3
	.byte	0x85
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST210:
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST211:
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST212:
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST213:
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST214:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST215:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL399-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL403-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST216:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL384-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL400-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL403-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST217:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL401-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL403-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST218:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL402-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL403-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST219:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL388-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST220:
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST221:
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST222:
	.4byte	.LVL394-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST223:
	.4byte	.LVL396-.Ltext0
	.4byte	.LVL397-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST224:
	.4byte	.LVL389-.Ltext0
	.4byte	.LVL398-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL403-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST225:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST226:
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL405-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL411-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL412-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST227:
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL405-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST228:
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL405-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL409-.Ltext0
	.4byte	.LVL410-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST229:
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL407-.Ltext0
	.4byte	.LVL408-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL412-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST230:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI37-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST231:
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL414-.Ltext0
	.4byte	.LVL418-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST232:
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST233:
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST234:
	.4byte	.LVL415-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST235:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL420-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST236:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST237:
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL423-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL423-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_ZL12gxcurrtexmap
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
	.4byte	.LBB132-.Ltext0
	.4byte	.LBE132-.Ltext0
	.4byte	.LBB162-.Ltext0
	.4byte	.LBE162-.Ltext0
	.4byte	.LBB163-.Ltext0
	.4byte	.LBE163-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB134-.Ltext0
	.4byte	.LBE134-.Ltext0
	.4byte	.LBB158-.Ltext0
	.4byte	.LBE158-.Ltext0
	.4byte	.LBB159-.Ltext0
	.4byte	.LBE159-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB137-.Ltext0
	.4byte	.LBE137-.Ltext0
	.4byte	.LBB152-.Ltext0
	.4byte	.LBE152-.Ltext0
	.4byte	.LBB153-.Ltext0
	.4byte	.LBE153-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB138-.Ltext0
	.4byte	.LBE138-.Ltext0
	.4byte	.LBB146-.Ltext0
	.4byte	.LBE146-.Ltext0
	.4byte	.LBB147-.Ltext0
	.4byte	.LBE147-.Ltext0
	.4byte	.LBB148-.Ltext0
	.4byte	.LBE148-.Ltext0
	.4byte	.LBB149-.Ltext0
	.4byte	.LBE149-.Ltext0
	.4byte	.LBB150-.Ltext0
	.4byte	.LBE150-.Ltext0
	.4byte	.LBB151-.Ltext0
	.4byte	.LBE151-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB164-.Ltext0
	.4byte	.LBE164-.Ltext0
	.4byte	.LBB173-.Ltext0
	.4byte	.LBE173-.Ltext0
	.4byte	.LBB174-.Ltext0
	.4byte	.LBE174-.Ltext0
	.4byte	.LBB175-.Ltext0
	.4byte	.LBE175-.Ltext0
	.4byte	.LBB176-.Ltext0
	.4byte	.LBE176-.Ltext0
	.4byte	.LBB185-.Ltext0
	.4byte	.LBE185-.Ltext0
	.4byte	.LBB218-.Ltext0
	.4byte	.LBE218-.Ltext0
	.4byte	.LBB220-.Ltext0
	.4byte	.LBE220-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB165-.Ltext0
	.4byte	.LBE165-.Ltext0
	.4byte	.LBB166-.Ltext0
	.4byte	.LBE166-.Ltext0
	.4byte	.LBB167-.Ltext0
	.4byte	.LBE167-.Ltext0
	.4byte	.LBB168-.Ltext0
	.4byte	.LBE168-.Ltext0
	.4byte	.LBB169-.Ltext0
	.4byte	.LBE169-.Ltext0
	.4byte	.LBB170-.Ltext0
	.4byte	.LBE170-.Ltext0
	.4byte	.LBB171-.Ltext0
	.4byte	.LBE171-.Ltext0
	.4byte	.LBB172-.Ltext0
	.4byte	.LBE172-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB177-.Ltext0
	.4byte	.LBE177-.Ltext0
	.4byte	.LBB221-.Ltext0
	.4byte	.LBE221-.Ltext0
	.4byte	.LBB244-.Ltext0
	.4byte	.LBE244-.Ltext0
	.4byte	.LBB245-.Ltext0
	.4byte	.LBE245-.Ltext0
	.4byte	.LBB248-.Ltext0
	.4byte	.LBE248-.Ltext0
	.4byte	.LBB250-.Ltext0
	.4byte	.LBE250-.Ltext0
	.4byte	.LBB255-.Ltext0
	.4byte	.LBE255-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB178-.Ltext0
	.4byte	.LBE178-.Ltext0
	.4byte	.LBB179-.Ltext0
	.4byte	.LBE179-.Ltext0
	.4byte	.LBB180-.Ltext0
	.4byte	.LBE180-.Ltext0
	.4byte	.LBB181-.Ltext0
	.4byte	.LBE181-.Ltext0
	.4byte	.LBB182-.Ltext0
	.4byte	.LBE182-.Ltext0
	.4byte	.LBB183-.Ltext0
	.4byte	.LBE183-.Ltext0
	.4byte	.LBB184-.Ltext0
	.4byte	.LBE184-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB186-.Ltext0
	.4byte	.LBE186-.Ltext0
	.4byte	.LBB219-.Ltext0
	.4byte	.LBE219-.Ltext0
	.4byte	.LBB243-.Ltext0
	.4byte	.LBE243-.Ltext0
	.4byte	.LBB247-.Ltext0
	.4byte	.LBE247-.Ltext0
	.4byte	.LBB249-.Ltext0
	.4byte	.LBE249-.Ltext0
	.4byte	.LBB252-.Ltext0
	.4byte	.LBE252-.Ltext0
	.4byte	.LBB254-.Ltext0
	.4byte	.LBE254-.Ltext0
	.4byte	.LBB256-.Ltext0
	.4byte	.LBE256-.Ltext0
	.4byte	.LBB258-.Ltext0
	.4byte	.LBE258-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB188-.Ltext0
	.4byte	.LBE188-.Ltext0
	.4byte	.LBB198-.Ltext0
	.4byte	.LBE198-.Ltext0
	.4byte	.LBB204-.Ltext0
	.4byte	.LBE204-.Ltext0
	.4byte	.LBB205-.Ltext0
	.4byte	.LBE205-.Ltext0
	.4byte	.LBB207-.Ltext0
	.4byte	.LBE207-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB194-.Ltext0
	.4byte	.LBE194-.Ltext0
	.4byte	.LBB199-.Ltext0
	.4byte	.LBE199-.Ltext0
	.4byte	.LBB208-.Ltext0
	.4byte	.LBE208-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB200-.Ltext0
	.4byte	.LBE200-.Ltext0
	.4byte	.LBB206-.Ltext0
	.4byte	.LBE206-.Ltext0
	.4byte	.LBB209-.Ltext0
	.4byte	.LBE209-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB222-.Ltext0
	.4byte	.LBE222-.Ltext0
	.4byte	.LBB246-.Ltext0
	.4byte	.LBE246-.Ltext0
	.4byte	.LBB251-.Ltext0
	.4byte	.LBE251-.Ltext0
	.4byte	.LBB253-.Ltext0
	.4byte	.LBE253-.Ltext0
	.4byte	.LBB257-.Ltext0
	.4byte	.LBE257-.Ltext0
	.4byte	.LBB259-.Ltext0
	.4byte	.LBE259-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB224-.Ltext0
	.4byte	.LBE224-.Ltext0
	.4byte	.LBB235-.Ltext0
	.4byte	.LBE235-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB227-.Ltext0
	.4byte	.LBE227-.Ltext0
	.4byte	.LBB236-.Ltext0
	.4byte	.LBE236-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB230-.Ltext0
	.4byte	.LBE230-.Ltext0
	.4byte	.LBB234-.Ltext0
	.4byte	.LBE234-.Ltext0
	.4byte	.LBB237-.Ltext0
	.4byte	.LBE237-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB260-.Ltext0
	.4byte	.LBE260-.Ltext0
	.4byte	.LBB287-.Ltext0
	.4byte	.LBE287-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB263-.Ltext0
	.4byte	.LBE263-.Ltext0
	.4byte	.LBB264-.Ltext0
	.4byte	.LBE264-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB268-.Ltext0
	.4byte	.LBE268-.Ltext0
	.4byte	.LBB269-.Ltext0
	.4byte	.LBE269-.Ltext0
	.4byte	.LBB270-.Ltext0
	.4byte	.LBE270-.Ltext0
	.4byte	.LBB271-.Ltext0
	.4byte	.LBE271-.Ltext0
	.4byte	.LBB272-.Ltext0
	.4byte	.LBE272-.Ltext0
	.4byte	.LBB273-.Ltext0
	.4byte	.LBE273-.Ltext0
	.4byte	.LBB274-.Ltext0
	.4byte	.LBE274-.Ltext0
	.4byte	.LBB275-.Ltext0
	.4byte	.LBE275-.Ltext0
	.4byte	.LBB276-.Ltext0
	.4byte	.LBE276-.Ltext0
	.4byte	.LBB277-.Ltext0
	.4byte	.LBE277-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB288-.Ltext0
	.4byte	.LBE288-.Ltext0
	.4byte	.LBB289-.Ltext0
	.4byte	.LBE289-.Ltext0
	.4byte	.LBB290-.Ltext0
	.4byte	.LBE290-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB369-.Ltext0
	.4byte	.LBE369-.Ltext0
	.4byte	.LBB620-.Ltext0
	.4byte	.LBE620-.Ltext0
	.4byte	.LBB621-.Ltext0
	.4byte	.LBE621-.Ltext0
	.4byte	.LBB622-.Ltext0
	.4byte	.LBE622-.Ltext0
	.4byte	.LBB623-.Ltext0
	.4byte	.LBE623-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB370-.Ltext0
	.4byte	.LBE370-.Ltext0
	.4byte	.LBB580-.Ltext0
	.4byte	.LBE580-.Ltext0
	.4byte	.LBB590-.Ltext0
	.4byte	.LBE590-.Ltext0
	.4byte	.LBB619-.Ltext0
	.4byte	.LBE619-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB371-.Ltext0
	.4byte	.LBE371-.Ltext0
	.4byte	.LBB577-.Ltext0
	.4byte	.LBE577-.Ltext0
	.4byte	.LBB578-.Ltext0
	.4byte	.LBE578-.Ltext0
	.4byte	.LBB579-.Ltext0
	.4byte	.LBE579-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB377-.Ltext0
	.4byte	.LBE377-.Ltext0
	.4byte	.LBB574-.Ltext0
	.4byte	.LBE574-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB378-.Ltext0
	.4byte	.LBE378-.Ltext0
	.4byte	.LBB383-.Ltext0
	.4byte	.LBE383-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB380-.Ltext0
	.4byte	.LBE380-.Ltext0
	.4byte	.LBB381-.Ltext0
	.4byte	.LBE381-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB384-.Ltext0
	.4byte	.LBE384-.Ltext0
	.4byte	.LBB572-.Ltext0
	.4byte	.LBE572-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB385-.Ltext0
	.4byte	.LBE385-.Ltext0
	.4byte	.LBB499-.Ltext0
	.4byte	.LBE499-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB387-.Ltext0
	.4byte	.LBE387-.Ltext0
	.4byte	.LBB388-.Ltext0
	.4byte	.LBE388-.Ltext0
	.4byte	.LBB389-.Ltext0
	.4byte	.LBE389-.Ltext0
	.4byte	.LBB390-.Ltext0
	.4byte	.LBE390-.Ltext0
	.4byte	.LBB391-.Ltext0
	.4byte	.LBE391-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB401-.Ltext0
	.4byte	.LBE401-.Ltext0
	.4byte	.LBB440-.Ltext0
	.4byte	.LBE440-.Ltext0
	.4byte	.LBB480-.Ltext0
	.4byte	.LBE480-.Ltext0
	.4byte	.LBB482-.Ltext0
	.4byte	.LBE482-.Ltext0
	.4byte	.LBB484-.Ltext0
	.4byte	.LBE484-.Ltext0
	.4byte	.LBB486-.Ltext0
	.4byte	.LBE486-.Ltext0
	.4byte	.LBB488-.Ltext0
	.4byte	.LBE488-.Ltext0
	.4byte	.LBB490-.Ltext0
	.4byte	.LBE490-.Ltext0
	.4byte	.LBB492-.Ltext0
	.4byte	.LBE492-.Ltext0
	.4byte	.LBB494-.Ltext0
	.4byte	.LBE494-.Ltext0
	.4byte	.LBB496-.Ltext0
	.4byte	.LBE496-.Ltext0
	.4byte	.LBB498-.Ltext0
	.4byte	.LBE498-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB403-.Ltext0
	.4byte	.LBE403-.Ltext0
	.4byte	.LBB419-.Ltext0
	.4byte	.LBE419-.Ltext0
	.4byte	.LBB423-.Ltext0
	.4byte	.LBE423-.Ltext0
	.4byte	.LBB425-.Ltext0
	.4byte	.LBE425-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB404-.Ltext0
	.4byte	.LBE404-.Ltext0
	.4byte	.LBB405-.Ltext0
	.4byte	.LBE405-.Ltext0
	.4byte	.LBB406-.Ltext0
	.4byte	.LBE406-.Ltext0
	.4byte	.LBB407-.Ltext0
	.4byte	.LBE407-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB408-.Ltext0
	.4byte	.LBE408-.Ltext0
	.4byte	.LBB420-.Ltext0
	.4byte	.LBE420-.Ltext0
	.4byte	.LBB422-.Ltext0
	.4byte	.LBE422-.Ltext0
	.4byte	.LBB424-.Ltext0
	.4byte	.LBE424-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB409-.Ltext0
	.4byte	.LBE409-.Ltext0
	.4byte	.LBB410-.Ltext0
	.4byte	.LBE410-.Ltext0
	.4byte	.LBB411-.Ltext0
	.4byte	.LBE411-.Ltext0
	.4byte	.LBB412-.Ltext0
	.4byte	.LBE412-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB413-.Ltext0
	.4byte	.LBE413-.Ltext0
	.4byte	.LBB421-.Ltext0
	.4byte	.LBE421-.Ltext0
	.4byte	.LBB426-.Ltext0
	.4byte	.LBE426-.Ltext0
	.4byte	.LBB427-.Ltext0
	.4byte	.LBE427-.Ltext0
	.4byte	.LBB428-.Ltext0
	.4byte	.LBE428-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB414-.Ltext0
	.4byte	.LBE414-.Ltext0
	.4byte	.LBB415-.Ltext0
	.4byte	.LBE415-.Ltext0
	.4byte	.LBB416-.Ltext0
	.4byte	.LBE416-.Ltext0
	.4byte	.LBB417-.Ltext0
	.4byte	.LBE417-.Ltext0
	.4byte	.LBB418-.Ltext0
	.4byte	.LBE418-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB441-.Ltext0
	.4byte	.LBE441-.Ltext0
	.4byte	.LBB479-.Ltext0
	.4byte	.LBE479-.Ltext0
	.4byte	.LBB481-.Ltext0
	.4byte	.LBE481-.Ltext0
	.4byte	.LBB483-.Ltext0
	.4byte	.LBE483-.Ltext0
	.4byte	.LBB485-.Ltext0
	.4byte	.LBE485-.Ltext0
	.4byte	.LBB487-.Ltext0
	.4byte	.LBE487-.Ltext0
	.4byte	.LBB489-.Ltext0
	.4byte	.LBE489-.Ltext0
	.4byte	.LBB491-.Ltext0
	.4byte	.LBE491-.Ltext0
	.4byte	.LBB493-.Ltext0
	.4byte	.LBE493-.Ltext0
	.4byte	.LBB495-.Ltext0
	.4byte	.LBE495-.Ltext0
	.4byte	.LBB497-.Ltext0
	.4byte	.LBE497-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB443-.Ltext0
	.4byte	.LBE443-.Ltext0
	.4byte	.LBB453-.Ltext0
	.4byte	.LBE453-.Ltext0
	.4byte	.LBB463-.Ltext0
	.4byte	.LBE463-.Ltext0
	.4byte	.LBB465-.Ltext0
	.4byte	.LBE465-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB444-.Ltext0
	.4byte	.LBE444-.Ltext0
	.4byte	.LBB445-.Ltext0
	.4byte	.LBE445-.Ltext0
	.4byte	.LBB446-.Ltext0
	.4byte	.LBE446-.Ltext0
	.4byte	.LBB447-.Ltext0
	.4byte	.LBE447-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB448-.Ltext0
	.4byte	.LBE448-.Ltext0
	.4byte	.LBB460-.Ltext0
	.4byte	.LBE460-.Ltext0
	.4byte	.LBB462-.Ltext0
	.4byte	.LBE462-.Ltext0
	.4byte	.LBB464-.Ltext0
	.4byte	.LBE464-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB449-.Ltext0
	.4byte	.LBE449-.Ltext0
	.4byte	.LBB450-.Ltext0
	.4byte	.LBE450-.Ltext0
	.4byte	.LBB451-.Ltext0
	.4byte	.LBE451-.Ltext0
	.4byte	.LBB452-.Ltext0
	.4byte	.LBE452-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB454-.Ltext0
	.4byte	.LBE454-.Ltext0
	.4byte	.LBB461-.Ltext0
	.4byte	.LBE461-.Ltext0
	.4byte	.LBB466-.Ltext0
	.4byte	.LBE466-.Ltext0
	.4byte	.LBB467-.Ltext0
	.4byte	.LBE467-.Ltext0
	.4byte	.LBB468-.Ltext0
	.4byte	.LBE468-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB455-.Ltext0
	.4byte	.LBE455-.Ltext0
	.4byte	.LBB456-.Ltext0
	.4byte	.LBE456-.Ltext0
	.4byte	.LBB457-.Ltext0
	.4byte	.LBE457-.Ltext0
	.4byte	.LBB458-.Ltext0
	.4byte	.LBE458-.Ltext0
	.4byte	.LBB459-.Ltext0
	.4byte	.LBE459-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB501-.Ltext0
	.4byte	.LBE501-.Ltext0
	.4byte	.LBB570-.Ltext0
	.4byte	.LBE570-.Ltext0
	.4byte	.LBB571-.Ltext0
	.4byte	.LBE571-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB502-.Ltext0
	.4byte	.LBE502-.Ltext0
	.4byte	.LBB563-.Ltext0
	.4byte	.LBE563-.Ltext0
	.4byte	.LBB564-.Ltext0
	.4byte	.LBE564-.Ltext0
	.4byte	.LBB565-.Ltext0
	.4byte	.LBE565-.Ltext0
	.4byte	.LBB566-.Ltext0
	.4byte	.LBE566-.Ltext0
	.4byte	.LBB567-.Ltext0
	.4byte	.LBE567-.Ltext0
	.4byte	.LBB568-.Ltext0
	.4byte	.LBE568-.Ltext0
	.4byte	.LBB569-.Ltext0
	.4byte	.LBE569-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB503-.Ltext0
	.4byte	.LBE503-.Ltext0
	.4byte	.LBB556-.Ltext0
	.4byte	.LBE556-.Ltext0
	.4byte	.LBB557-.Ltext0
	.4byte	.LBE557-.Ltext0
	.4byte	.LBB558-.Ltext0
	.4byte	.LBE558-.Ltext0
	.4byte	.LBB559-.Ltext0
	.4byte	.LBE559-.Ltext0
	.4byte	.LBB560-.Ltext0
	.4byte	.LBE560-.Ltext0
	.4byte	.LBB561-.Ltext0
	.4byte	.LBE561-.Ltext0
	.4byte	.LBB562-.Ltext0
	.4byte	.LBE562-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB505-.Ltext0
	.4byte	.LBE505-.Ltext0
	.4byte	.LBB544-.Ltext0
	.4byte	.LBE544-.Ltext0
	.4byte	.LBB545-.Ltext0
	.4byte	.LBE545-.Ltext0
	.4byte	.LBB546-.Ltext0
	.4byte	.LBE546-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB507-.Ltext0
	.4byte	.LBE507-.Ltext0
	.4byte	.LBB515-.Ltext0
	.4byte	.LBE515-.Ltext0
	.4byte	.LBB516-.Ltext0
	.4byte	.LBE516-.Ltext0
	.4byte	.LBB517-.Ltext0
	.4byte	.LBE517-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB508-.Ltext0
	.4byte	.LBE508-.Ltext0
	.4byte	.LBB509-.Ltext0
	.4byte	.LBE509-.Ltext0
	.4byte	.LBB510-.Ltext0
	.4byte	.LBE510-.Ltext0
	.4byte	.LBB511-.Ltext0
	.4byte	.LBE511-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB513-.Ltext0
	.4byte	.LBE513-.Ltext0
	.4byte	.LBB514-.Ltext0
	.4byte	.LBE514-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB518-.Ltext0
	.4byte	.LBE518-.Ltext0
	.4byte	.LBB522-.Ltext0
	.4byte	.LBE522-.Ltext0
	.4byte	.LBB523-.Ltext0
	.4byte	.LBE523-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB519-.Ltext0
	.4byte	.LBE519-.Ltext0
	.4byte	.LBB520-.Ltext0
	.4byte	.LBE520-.Ltext0
	.4byte	.LBB521-.Ltext0
	.4byte	.LBE521-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB524-.Ltext0
	.4byte	.LBE524-.Ltext0
	.4byte	.LBB528-.Ltext0
	.4byte	.LBE528-.Ltext0
	.4byte	.LBB529-.Ltext0
	.4byte	.LBE529-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB525-.Ltext0
	.4byte	.LBE525-.Ltext0
	.4byte	.LBB526-.Ltext0
	.4byte	.LBE526-.Ltext0
	.4byte	.LBB527-.Ltext0
	.4byte	.LBE527-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB530-.Ltext0
	.4byte	.LBE530-.Ltext0
	.4byte	.LBB534-.Ltext0
	.4byte	.LBE534-.Ltext0
	.4byte	.LBB535-.Ltext0
	.4byte	.LBE535-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB531-.Ltext0
	.4byte	.LBE531-.Ltext0
	.4byte	.LBB532-.Ltext0
	.4byte	.LBE532-.Ltext0
	.4byte	.LBB533-.Ltext0
	.4byte	.LBE533-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB536-.Ltext0
	.4byte	.LBE536-.Ltext0
	.4byte	.LBB539-.Ltext0
	.4byte	.LBE539-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB537-.Ltext0
	.4byte	.LBE537-.Ltext0
	.4byte	.LBB538-.Ltext0
	.4byte	.LBE538-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB540-.Ltext0
	.4byte	.LBE540-.Ltext0
	.4byte	.LBB543-.Ltext0
	.4byte	.LBE543-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB541-.Ltext0
	.4byte	.LBE541-.Ltext0
	.4byte	.LBB542-.Ltext0
	.4byte	.LBE542-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB584-.Ltext0
	.4byte	.LBE584-.Ltext0
	.4byte	.LBB585-.Ltext0
	.4byte	.LBE585-.Ltext0
	.4byte	.LBB586-.Ltext0
	.4byte	.LBE586-.Ltext0
	.4byte	.LBB587-.Ltext0
	.4byte	.LBE587-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB594-.Ltext0
	.4byte	.LBE594-.Ltext0
	.4byte	.LBB615-.Ltext0
	.4byte	.LBE615-.Ltext0
	.4byte	.LBB616-.Ltext0
	.4byte	.LBE616-.Ltext0
	.4byte	.LBB617-.Ltext0
	.4byte	.LBE617-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB595-.Ltext0
	.4byte	.LBE595-.Ltext0
	.4byte	.LBB607-.Ltext0
	.4byte	.LBE607-.Ltext0
	.4byte	.LBB609-.Ltext0
	.4byte	.LBE609-.Ltext0
	.4byte	.LBB611-.Ltext0
	.4byte	.LBE611-.Ltext0
	.4byte	.LBB613-.Ltext0
	.4byte	.LBE613-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB596-.Ltext0
	.4byte	.LBE596-.Ltext0
	.4byte	.LBB597-.Ltext0
	.4byte	.LBE597-.Ltext0
	.4byte	.LBB598-.Ltext0
	.4byte	.LBE598-.Ltext0
	.4byte	.LBB599-.Ltext0
	.4byte	.LBE599-.Ltext0
	.4byte	.LBB600-.Ltext0
	.4byte	.LBE600-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB601-.Ltext0
	.4byte	.LBE601-.Ltext0
	.4byte	.LBB608-.Ltext0
	.4byte	.LBE608-.Ltext0
	.4byte	.LBB610-.Ltext0
	.4byte	.LBE610-.Ltext0
	.4byte	.LBB612-.Ltext0
	.4byte	.LBE612-.Ltext0
	.4byte	.LBB614-.Ltext0
	.4byte	.LBE614-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB602-.Ltext0
	.4byte	.LBE602-.Ltext0
	.4byte	.LBB603-.Ltext0
	.4byte	.LBE603-.Ltext0
	.4byte	.LBB604-.Ltext0
	.4byte	.LBE604-.Ltext0
	.4byte	.LBB605-.Ltext0
	.4byte	.LBE605-.Ltext0
	.4byte	.LBB606-.Ltext0
	.4byte	.LBE606-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB624-.Ltext0
	.4byte	.LBE624-.Ltext0
	.4byte	.LBB625-.Ltext0
	.4byte	.LBE625-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB646-.Ltext0
	.4byte	.LBE646-.Ltext0
	.4byte	.LBB715-.Ltext0
	.4byte	.LBE715-.Ltext0
	.4byte	.LBB716-.Ltext0
	.4byte	.LBE716-.Ltext0
	.4byte	.LBB717-.Ltext0
	.4byte	.LBE717-.Ltext0
	.4byte	.LBB718-.Ltext0
	.4byte	.LBE718-.Ltext0
	.4byte	.LBB719-.Ltext0
	.4byte	.LBE719-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB647-.Ltext0
	.4byte	.LBE647-.Ltext0
	.4byte	.LBB711-.Ltext0
	.4byte	.LBE711-.Ltext0
	.4byte	.LBB713-.Ltext0
	.4byte	.LBE713-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB651-.Ltext0
	.4byte	.LBE651-.Ltext0
	.4byte	.LBB712-.Ltext0
	.4byte	.LBE712-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB654-.Ltext0
	.4byte	.LBE654-.Ltext0
	.4byte	.LBB710-.Ltext0
	.4byte	.LBE710-.Ltext0
	.4byte	.LBB714-.Ltext0
	.4byte	.LBE714-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB655-.Ltext0
	.4byte	.LBE655-.Ltext0
	.4byte	.LBB656-.Ltext0
	.4byte	.LBE656-.Ltext0
	.4byte	.LBB657-.Ltext0
	.4byte	.LBE657-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB658-.Ltext0
	.4byte	.LBE658-.Ltext0
	.4byte	.LBB688-.Ltext0
	.4byte	.LBE688-.Ltext0
	.4byte	.LBB689-.Ltext0
	.4byte	.LBE689-.Ltext0
	.4byte	.LBB690-.Ltext0
	.4byte	.LBE690-.Ltext0
	.4byte	.LBB707-.Ltext0
	.4byte	.LBE707-.Ltext0
	.4byte	.LBB708-.Ltext0
	.4byte	.LBE708-.Ltext0
	.4byte	.LBB709-.Ltext0
	.4byte	.LBE709-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB659-.Ltext0
	.4byte	.LBE659-.Ltext0
	.4byte	.LBB682-.Ltext0
	.4byte	.LBE682-.Ltext0
	.4byte	.LBB683-.Ltext0
	.4byte	.LBE683-.Ltext0
	.4byte	.LBB684-.Ltext0
	.4byte	.LBE684-.Ltext0
	.4byte	.LBB685-.Ltext0
	.4byte	.LBE685-.Ltext0
	.4byte	.LBB686-.Ltext0
	.4byte	.LBE686-.Ltext0
	.4byte	.LBB687-.Ltext0
	.4byte	.LBE687-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB660-.Ltext0
	.4byte	.LBE660-.Ltext0
	.4byte	.LBB675-.Ltext0
	.4byte	.LBE675-.Ltext0
	.4byte	.LBB676-.Ltext0
	.4byte	.LBE676-.Ltext0
	.4byte	.LBB677-.Ltext0
	.4byte	.LBE677-.Ltext0
	.4byte	.LBB678-.Ltext0
	.4byte	.LBE678-.Ltext0
	.4byte	.LBB679-.Ltext0
	.4byte	.LBE679-.Ltext0
	.4byte	.LBB680-.Ltext0
	.4byte	.LBE680-.Ltext0
	.4byte	.LBB681-.Ltext0
	.4byte	.LBE681-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB661-.Ltext0
	.4byte	.LBE661-.Ltext0
	.4byte	.LBB668-.Ltext0
	.4byte	.LBE668-.Ltext0
	.4byte	.LBB669-.Ltext0
	.4byte	.LBE669-.Ltext0
	.4byte	.LBB670-.Ltext0
	.4byte	.LBE670-.Ltext0
	.4byte	.LBB671-.Ltext0
	.4byte	.LBE671-.Ltext0
	.4byte	.LBB672-.Ltext0
	.4byte	.LBE672-.Ltext0
	.4byte	.LBB673-.Ltext0
	.4byte	.LBE673-.Ltext0
	.4byte	.LBB674-.Ltext0
	.4byte	.LBE674-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB662-.Ltext0
	.4byte	.LBE662-.Ltext0
	.4byte	.LBB666-.Ltext0
	.4byte	.LBE666-.Ltext0
	.4byte	.LBB667-.Ltext0
	.4byte	.LBE667-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB663-.Ltext0
	.4byte	.LBE663-.Ltext0
	.4byte	.LBB664-.Ltext0
	.4byte	.LBE664-.Ltext0
	.4byte	.LBB665-.Ltext0
	.4byte	.LBE665-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB691-.Ltext0
	.4byte	.LBE691-.Ltext0
	.4byte	.LBB705-.Ltext0
	.4byte	.LBE705-.Ltext0
	.4byte	.LBB706-.Ltext0
	.4byte	.LBE706-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB692-.Ltext0
	.4byte	.LBE692-.Ltext0
	.4byte	.LBB703-.Ltext0
	.4byte	.LBE703-.Ltext0
	.4byte	.LBB704-.Ltext0
	.4byte	.LBE704-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB693-.Ltext0
	.4byte	.LBE693-.Ltext0
	.4byte	.LBB701-.Ltext0
	.4byte	.LBE701-.Ltext0
	.4byte	.LBB702-.Ltext0
	.4byte	.LBE702-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB694-.Ltext0
	.4byte	.LBE694-.Ltext0
	.4byte	.LBB699-.Ltext0
	.4byte	.LBE699-.Ltext0
	.4byte	.LBB700-.Ltext0
	.4byte	.LBE700-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB695-.Ltext0
	.4byte	.LBE695-.Ltext0
	.4byte	.LBB698-.Ltext0
	.4byte	.LBE698-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB696-.Ltext0
	.4byte	.LBE696-.Ltext0
	.4byte	.LBB697-.Ltext0
	.4byte	.LBE697-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB720-.Ltext0
	.4byte	.LBE720-.Ltext0
	.4byte	.LBB721-.Ltext0
	.4byte	.LBE721-.Ltext0
	.4byte	.LBB722-.Ltext0
	.4byte	.LBE722-.Ltext0
	.4byte	.LBB723-.Ltext0
	.4byte	.LBE723-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB728-.Ltext0
	.4byte	.LBE728-.Ltext0
	.4byte	.LBB741-.Ltext0
	.4byte	.LBE741-.Ltext0
	.4byte	.LBB742-.Ltext0
	.4byte	.LBE742-.Ltext0
	.4byte	.LBB743-.Ltext0
	.4byte	.LBE743-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB729-.Ltext0
	.4byte	.LBE729-.Ltext0
	.4byte	.LBB736-.Ltext0
	.4byte	.LBE736-.Ltext0
	.4byte	.LBB737-.Ltext0
	.4byte	.LBE737-.Ltext0
	.4byte	.LBB738-.Ltext0
	.4byte	.LBE738-.Ltext0
	.4byte	.LBB739-.Ltext0
	.4byte	.LBE739-.Ltext0
	.4byte	.LBB740-.Ltext0
	.4byte	.LBE740-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB730-.Ltext0
	.4byte	.LBE730-.Ltext0
	.4byte	.LBB731-.Ltext0
	.4byte	.LBE731-.Ltext0
	.4byte	.LBB732-.Ltext0
	.4byte	.LBE732-.Ltext0
	.4byte	.LBB733-.Ltext0
	.4byte	.LBE733-.Ltext0
	.4byte	.LBB734-.Ltext0
	.4byte	.LBE734-.Ltext0
	.4byte	.LBB735-.Ltext0
	.4byte	.LBE735-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB744-.Ltext0
	.4byte	.LBE744-.Ltext0
	.4byte	.LBB751-.Ltext0
	.4byte	.LBE751-.Ltext0
	.4byte	.LBB752-.Ltext0
	.4byte	.LBE752-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB745-.Ltext0
	.4byte	.LBE745-.Ltext0
	.4byte	.LBB749-.Ltext0
	.4byte	.LBE749-.Ltext0
	.4byte	.LBB750-.Ltext0
	.4byte	.LBE750-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF95:
	.string	"dots"
.LASF68:
	.string	"texel"
.LASF182:
	.string	"_Z15qgxActiveTexMapj"
.LASF149:
	.string	"qgxInitTextures"
.LASF150:
	.string	"stb_compress_dxt_block"
.LASF173:
	.string	"qgxGenTextures"
.LASF85:
	.string	"bestErr"
.LASF50:
	.string	"stb__Mul8Bit"
.LASF148:
	.string	"qgx_InitTextures"
.LASF78:
	.string	"glfmt"
.LASF139:
	.string	"akku"
.LASF76:
	.string	"parms"
.LASF165:
	.string	"_Z16qgxSetGLTexParamiiiii"
.LASF79:
	.string	"source"
.LASF58:
	.string	"mode"
.LASF164:
	.string	"qgxSetGLTexParam"
.LASF122:
	.string	"pmax16"
.LASF162:
	.string	"gxsize"
.LASF177:
	.string	"_Z17qgxDeleteTexturesiPj"
.LASF113:
	.string	"refinecount"
.LASF117:
	.string	"tmpmask"
.LASF96:
	.string	"stops"
.LASF30:
	.string	"blocky"
.LASF175:
	.string	"list"
.LASF103:
	.string	"qgx_GLWrapModeToGX"
.LASF2:
	.string	"signed char"
.LASF83:
	.string	"expand"
.LASF140:
	.string	"At1_r"
.LASF9:
	.string	"uint32_t"
.LASF0:
	.string	"int8_t"
.LASF13:
	.string	"vu16"
.LASF31:
	.string	"stepx"
.LASF17:
	.string	"float"
.LASF40:
	.string	"gxWrapS"
.LASF41:
	.string	"gxWrapT"
.LASF108:
	.string	"inputFormat"
.LASF81:
	.string	"index"
.LASF160:
	.string	"internalFormat"
.LASF60:
	.string	"bias"
.LASF71:
	.string	"mipmap"
.LASF4:
	.string	"int16_t"
.LASF42:
	.string	"gxFilterMin"
.LASF12:
	.string	"long long unsigned int"
.LASF51:
	.string	"stb__Lerp13"
.LASF137:
	.string	"oldMin"
.LASF118:
	.string	"lastmask"
.LASF25:
	.string	"GXTexObj"
.LASF22:
	.string	"GXColor"
.LASF91:
	.string	"dither"
.LASF171:
	.string	"gxAniso"
.LASF179:
	.string	"_Z14qgxBindTexturej"
.LASF36:
	.string	"used"
.LASF156:
	.string	"target"
.LASF48:
	.string	"long int"
.LASF163:
	.string	"tcparms"
.LASF191:
	.string	"stb__OMatch5"
.LASF192:
	.string	"stb__OMatch6"
.LASF197:
	.string	"_wgpipe"
.LASF14:
	.string	"vu32"
.LASF28:
	.string	"gxtexconvparms_s"
.LASF32:
	.string	"gxtexconvparms_t"
.LASF37:
	.string	"width"
.LASF152:
	.string	"_Z22stb_compress_dxt_blockPhPKhii"
.LASF180:
	.string	"texnum"
.LASF109:
	.string	"datasize"
.LASF72:
	.string	"nummip"
.LASF55:
	.string	"stb__sclamp"
.LASF112:
	.string	"stb__CompressColorBlock"
.LASF136:
	.string	"prods"
.LASF193:
	.string	"stb__QuantRBTab"
.LASF19:
	.string	"vf32"
.LASF144:
	.string	"At2_g"
.LASF158:
	.string	"_Z13qgxTexImage2DiiiiiPh"
.LASF143:
	.string	"At2_r"
.LASF168:
	.string	"glFilterMin"
.LASF20:
	.string	"char"
.LASF198:
	.string	"_Z16qgx_InitTexturesv"
.LASF86:
	.string	"mine"
.LASF135:
	.string	"w1Tab"
.LASF15:
	.string	"vs16"
.LASF126:
	.string	"minp"
.LASF132:
	.string	"minv"
.LASF115:
	.string	"min16"
.LASF35:
	.string	"data"
.LASF11:
	.string	"long long int"
.LASF65:
	.string	"qgx_WriteColorTexel"
.LASF170:
	.string	"glAniso"
.LASF196:
	.string	"d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_textures.cpp"
.LASF174:
	.string	"_Z14qgxGenTexturesiPj"
.LASF1:
	.string	"uint8_t"
.LASF44:
	.string	"gxMipMap"
.LASF187:
	.string	"gxtexsrchfree"
.LASF188:
	.string	"gxcurrtexdesc"
.LASF34:
	.string	"gxTexObj"
.LASF94:
	.string	"dirb"
.LASF172:
	.string	"qgx_AllocTexDescIndex"
.LASF93:
	.string	"dirg"
.LASF185:
	.string	"gxcurrtexmap"
.LASF166:
	.string	"glWrapS"
.LASF92:
	.string	"dirr"
.LASF183:
	.string	"texmap"
.LASF176:
	.string	"qgxDeleteTextures"
.LASF110:
	.string	"address"
.LASF128:
	.string	"magn"
.LASF46:
	.string	"bool"
.LASF74:
	.string	"glFmt"
.LASF54:
	.string	"stb__As16Bit"
.LASF16:
	.string	"vs32"
.LASF130:
	.string	"covf"
.LASF101:
	.string	"step"
.LASF84:
	.string	"size"
.LASF33:
	.string	"gxtexdesc_s"
.LASF47:
	.string	"gxtexdesc_t"
.LASF59:
	.string	"dist"
.LASF159:
	.string	"miplevel"
.LASF64:
	.string	"mask"
.LASF26:
	.string	"long unsigned int"
.LASF38:
	.string	"height"
.LASF121:
	.string	"stb__OptimizeColorsBlock"
.LASF29:
	.string	"blockx"
.LASF53:
	.string	"stb__Lerp13RGB"
.LASF49:
	.string	"long double"
.LASF6:
	.string	"uint16_t"
.LASF102:
	.string	"stb__MatchColorsBlock"
.LASF24:
	.string	"_gx_texobj"
.LASF104:
	.string	"glWrapMode"
.LASF5:
	.string	"short int"
.LASF189:
	.string	"stb__Expand5"
.LASF190:
	.string	"stb__Expand6"
.LASF119:
	.string	"stb__DitherBlock"
.LASF167:
	.string	"glWrapT"
.LASF82:
	.string	"Table"
.LASF21:
	.string	"WGPipe"
.LASF69:
	.string	"qgx_GetTexBufferSize"
.LASF99:
	.string	"c3Point"
.LASF66:
	.string	"color"
.LASF43:
	.string	"gxFilterMax"
.LASF63:
	.string	"bits"
.LASF45:
	.string	"mipLevel"
.LASF90:
	.string	"block"
.LASF178:
	.string	"qgxBindTexture"
.LASF181:
	.string	"qgxActiveTexMap"
.LASF151:
	.string	"qgxLoadCurrentTexMap"
.LASF157:
	.string	"qgxTexImage2D"
.LASF138:
	.string	"oldMax"
.LASF10:
	.string	"unsigned int"
.LASF120:
	.string	"quant"
.LASF194:
	.string	"stb__QuantGTab"
.LASF147:
	.string	"init"
.LASF129:
	.string	"nIterPower"
.LASF107:
	.string	"qgx_ReadColor"
.LASF114:
	.string	"max16"
.LASF77:
	.string	"qgx_TexConvToCMPRBlock"
.LASF146:
	.string	"alpha"
.LASF123:
	.string	"pmin16"
.LASF8:
	.string	"int32_t"
.LASF27:
	.string	"byte"
.LASF80:
	.string	"qgx_FreeTexDesc"
.LASF161:
	.string	"blockptr"
.LASF56:
	.string	"stb__CompressAlphaBlock"
.LASF134:
	.string	"stb__RefineBlock"
.LASF3:
	.string	"unsigned char"
.LASF124:
	.string	"mind"
.LASF186:
	.string	"gxtexdescs"
.LASF88:
	.string	"stb__PrepareOptTable"
.LASF155:
	.string	"qgx_TexConvToPixelBlock"
.LASF111:
	.string	"stb__InitDXT"
.LASF105:
	.string	"qgx_GLFilterToGX"
.LASF73:
	.string	"qgx_GLFmtToGX"
.LASF116:
	.string	"dblock"
.LASF154:
	.string	"texdesc"
.LASF75:
	.string	"qgx_GetTexConvParms"
.LASF98:
	.string	"halfPoint"
.LASF100:
	.string	"lmask"
.LASF169:
	.string	"glFilterMax"
.LASF23:
	.string	"_gx_color"
.LASF131:
	.string	"iter"
.LASF125:
	.string	"maxd"
.LASF87:
	.string	"maxe"
.LASF97:
	.string	"c0Point"
.LASF127:
	.string	"maxp"
.LASF133:
	.string	"maxv"
.LASF7:
	.string	"short unsigned int"
.LASF153:
	.string	"_Z20qgxLoadCurrentTexMapv"
.LASF200:
	.string	"wgPipe"
.LASF199:
	.string	"_Z15qgxInitTexturesv"
.LASF195:
	.string	"GNU C++ 4.6.3"
.LASF67:
	.string	"toRGBA"
.LASF52:
	.string	"stb__From16Bit"
.LASF18:
	.string	"double"
.LASF184:
	.string	"gxtexmaps"
.LASF70:
	.string	"gxfmt"
.LASF62:
	.string	"dist2"
.LASF61:
	.string	"dist4"
.LASF145:
	.string	"At2_b"
.LASF39:
	.string	"gxFormat"
.LASF106:
	.string	"glFilter"
.LASF89:
	.string	"stb__EvalColors"
.LASF57:
	.string	"dest"
.LASF142:
	.string	"At1_b"
.LASF141:
	.string	"At1_g"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
