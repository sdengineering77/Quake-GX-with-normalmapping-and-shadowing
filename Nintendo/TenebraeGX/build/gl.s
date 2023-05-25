	.file	"gl.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl glHint
	.type	glHint, @function
glHint:
.LFB64:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl.c"
	.loc 1 21 0
	.cfi_startproc
.LVL0:
	.loc 1 21 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LVL1:
.LBB158:
.LBB159:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,21
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE159:
.LBE158:
	.cfi_endproc
.LFE64:
	.size	glHint, .-glHint
	.align 2
	.globl glPolygonOffset
	.type	glPolygonOffset, @function
glPolygonOffset:
.LFB65:
	.loc 1 23 0
	.cfi_startproc
.LVL2:
	.loc 1 23 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LVL3:
.LBB160:
.LBB161:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,23
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE161:
.LBE160:
	.cfi_endproc
.LFE65:
	.size	glPolygonOffset, .-glPolygonOffset
	.align 2
	.globl glLightModeli
	.type	glLightModeli, @function
glLightModeli:
.LFB66:
	.loc 1 25 0
	.cfi_startproc
.LVL4:
	.loc 1 25 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LVL5:
.LBB162:
.LBB163:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,25
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE163:
.LBE162:
	.cfi_endproc
.LFE66:
	.size	glLightModeli, .-glLightModeli
	.align 2
	.globl glTexGeni
	.type	glTexGeni, @function
glTexGeni:
.LFB67:
	.loc 1 29 0
	.cfi_startproc
.LVL6:
	.loc 1 29 0
	blr
	.cfi_endproc
.LFE67:
	.size	glTexGeni, .-glTexGeni
	.align 2
	.globl glPolygonMode
	.type	glPolygonMode, @function
glPolygonMode:
.LFB68:
	.loc 1 31 0
	.cfi_startproc
.LVL7:
	.loc 1 31 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LVL8:
.LBB164:
.LBB165:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,31
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE165:
.LBE164:
	.cfi_endproc
.LFE68:
	.size	glPolygonMode, .-glPolygonMode
	.align 2
	.globl glShadeModel
	.type	glShadeModel, @function
glShadeModel:
.LFB69:
	.loc 1 35 0
	.cfi_startproc
.LVL9:
	.loc 1 35 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LVL10:
.LBB166:
.LBB167:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,35
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE167:
.LBE166:
	.cfi_endproc
.LFE69:
	.size	glShadeModel, .-glShadeModel
	.align 2
	.globl glClipPlane
	.type	glClipPlane, @function
glClipPlane:
.LFB70:
	.loc 1 37 0
	.cfi_startproc
.LVL11:
	.loc 1 37 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LVL12:
.LBB168:
.LBB169:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,37
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE169:
.LBE168:
	.cfi_endproc
.LFE70:
	.size	glClipPlane, .-glClipPlane
	.align 2
	.globl glColorMaterial
	.type	glColorMaterial, @function
glColorMaterial:
.LFB71:
	.loc 1 42 0
	.cfi_startproc
.LVL13:
	.loc 1 43 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L21
	.loc 1 45 0
	cmpwi 7,4,5632
	beq- 7,.L19
	cmplwi 7,4,5632
	bgt- 7,.L20
	addi 0,4,-4608
	cmplwi 7,0,2
	ble- 7,.L19
.L18:
.LVL14:
.LBB170:
.LBB171:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,52
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL15:
.L20:
.LBE171:
.LBE170:
	.loc 1 45 0
	cmpwi 7,4,5634
	bne+ 7,.L18
.L19:
	.loc 1 51 0
	lis 9,copy_material@ha
	stw 4,copy_material@l(9)
	blr
.L21:
.LVL16:
.LBB172:
.LBB173:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,43
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE173:
.LBE172:
	.cfi_endproc
.LFE71:
	.size	glColorMaterial, .-glColorMaterial
	.align 2
	.globl glBlendFunc
	.type	glBlendFunc, @function
glBlendFunc:
.LFB72:
	.loc 1 57 0
	.cfi_startproc
.LVL17:
	.loc 1 58 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 0,0,1
	bne- 0,.L47
	.loc 1 60 0
	cmpwi 7,3,771
	beq- 7,.L29
	cmplwi 7,3,771
	bgt- 7,.L34
	cmpwi 7,3,1
	beq- 7,.L27
	cmplwi 7,3,1
	blt- 7,.L46
	cmpwi 7,3,770
	beq- 7,.L48
.L25:
.LVL18:
.LBB174:
.LBB175:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,71
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L35
.LVL19:
.L47:
.LBE175:
.LBE174:
.LBB176:
.LBB177:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,58
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL20:
.L34:
.LBE177:
.LBE176:
	.loc 1 60 0
	cmpwi 7,3,773
	beq- 7,.L31
	cmplwi 7,3,773
	bge- 7,.L49
	.loc 1 68 0
	li 0,6
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
	b .L35
.L29:
	.loc 1 67 0
	li 0,5
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
.L35:
	.loc 1 74 0
	cmpwi 7,4,769
	beq- 7,.L40
.L52:
	cmplwi 7,4,769
	bgt- 7,.L45
	cmpwi 7,4,1
	beq- 7,.L38
	cmplwi 7,4,1
	bge- 7,.L50
	.loc 1 76 0
	li 0,0
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	blr
.L27:
	.loc 1 63 0
	lis 9,blend_src@ha
	stb 3,blend_src@l(9)
	b .L35
.L31:
	.loc 1 69 0
	li 0,7
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
	b .L35
.L45:
	.loc 1 74 0
	cmpwi 7,4,771
	beq- 7,.L42
	cmplwi 7,4,771
	bge- 7,.L51
	.loc 1 80 0
	li 0,4
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	blr
.L32:
	.loc 1 64 0
	li 0,2
.L46:
	.loc 1 74 0
	cmpwi 7,4,769
	.loc 1 64 0
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
	.loc 1 74 0
	bne+ 7,.L52
.L40:
	.loc 1 79 0
	li 0,3
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	blr
.L51:
	.loc 1 74 0
	cmpwi 7,4,772
	beq- 7,.L43
	cmpwi 7,4,773
	beq- 7,.L53
.L36:
.LVL21:
.LBB178:
.LBB179:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,84
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL22:
.L53:
.LBE179:
.LBE178:
	.loc 1 83 0
	li 0,7
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	blr
.L49:
	.loc 1 60 0
	cmpwi 7,3,774
	beq- 7,.L32
	cmpwi 7,3,775
	bne+ 7,.L25
	.loc 1 65 0
	li 0,3
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
	b .L35
.L50:
	.loc 1 74 0
	cmpwi 7,4,768
	bne+ 7,.L36
	.loc 1 78 0
	li 0,2
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	blr
.L48:
	.loc 1 66 0
	li 0,4
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
	b .L35
.L42:
	.loc 1 81 0
	li 0,5
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	blr
.L38:
	.loc 1 77 0
	lis 9,blend_dst@ha
	stb 4,blend_dst@l(9)
	blr
.L43:
	.loc 1 82 0
	li 0,6
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	blr
	.cfi_endproc
.LFE72:
	.size	glBlendFunc, .-glBlendFunc
	.align 2
	.globl glScissor
	.type	glScissor, @function
glScissor:
.LFB73:
	.loc 1 89 0
	.cfi_startproc
.LVL23:
	.loc 1 90 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L59
	.loc 1 92 0
	cmpwi 7,5,0
	blt- 7,.L57
	.loc 1 92 0 is_stmt 0 discriminator 1
	cmpwi 7,6,0
	blt- 7,.L57
	.loc 1 98 0 is_stmt 1
	lis 11,scissorInfo@ha
	la 9,scissorInfo@l(11)
	stw 3,scissorInfo@l(11)
	stw 4,4(9)
	stw 5,8(9)
	stw 6,12(9)
	blr
.L57:
.LVL24:
.LBB180:
.LBB181:
	.loc 1 1273 0
	li 0,1281
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,94
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL25:
.L59:
.LBE181:
.LBE180:
.LBB182:
.LBB183:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,90
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE183:
.LBE182:
	.cfi_endproc
.LFE73:
	.size	glScissor, .-glScissor
	.align 2
	.globl glCullFace
	.type	glCullFace, @function
glCullFace:
.LFB74:
	.loc 1 105 0
	.cfi_startproc
.LVL26:
	.loc 1 106 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L68
	.loc 1 108 0
	cmpwi 7,3,1029
	beq- 7,.L65
	cmpwi 7,3,1032
	beq- 7,.L66
	cmpwi 7,3,1028
	beq- 7,.L69
.LVL27:
.LBB184:
.LBB185:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,120
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL28:
.L68:
.LBE185:
.LBE184:
.LBB186:
.LBB187:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,106
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL29:
.L65:
.LBE187:
.LBE186:
	.loc 1 114 0
	li 0,2
	lis 9,cull_mode@ha
	stb 0,cull_mode@l(9)
	.loc 1 115 0
	blr
.L69:
	.loc 1 111 0
	li 0,1
	lis 9,cull_mode@ha
	stb 0,cull_mode@l(9)
	.loc 1 112 0
	blr
.L66:
	.loc 1 117 0
	li 0,3
	lis 9,cull_mode@ha
	stb 0,cull_mode@l(9)
	.loc 1 118 0
	blr
	.cfi_endproc
.LFE74:
	.size	glCullFace, .-glCullFace
	.align 2
	.globl glFrontFace
	.type	glFrontFace, @function
glFrontFace:
.LFB75:
	.loc 1 125 0
	.cfi_startproc
.LVL30:
	.loc 1 127 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L75
	.loc 1 129 0
	addi 0,3,-2304
	cmplwi 7,0,1
	ble- 7,.L76
.LVL31:
.LBB188:
.LBB189:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,135
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL32:
.L76:
.LBE189:
.LBE188:
	.loc 1 133 0
	lis 9,gxwinding@ha
	stw 3,gxwinding@l(9)
	blr
.L75:
.LVL33:
.LBB190:
.LBB191:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,127
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE191:
.LBE190:
	.cfi_endproc
.LFE75:
	.size	glFrontFace, .-glFrontFace
	.align 2
	.globl glDepthRange
	.type	glDepthRange, @function
glDepthRange:
.LFB76:
	.loc 1 145 0
	.cfi_startproc
.LVL34:
	.loc 1 146 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L80
	.loc 1 148 0
	frsp 1,1
.LVL35:
	lis 9,normNear@ha
	.loc 1 149 0
	frsp 2,2
.LVL36:
	.loc 1 148 0
	stfs 1,normNear@l(9)
	.loc 1 149 0
	lis 9,normFar@ha
	stfs 2,normFar@l(9)
	blr
.LVL37:
.L80:
.LBB192:
.LBB193:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,146
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE193:
.LBE192:
	.cfi_endproc
.LFE76:
	.size	glDepthRange, .-glDepthRange
	.align 2
	.globl glViewport
	.type	glViewport, @function
glViewport:
.LFB77:
	.loc 1 156 0
	.cfi_startproc
.LVL38:
	.loc 1 157 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L84
	.loc 1 158 0
	lis 11,viewPort@ha
	la 9,viewPort@l(11)
	stw 3,viewPort@l(11)
	stw 4,4(9)
	stw 5,8(9)
	stw 6,12(9)
	blr
.L84:
.LVL39:
.LBB194:
.LBB195:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,157
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE195:
.LBE194:
	.cfi_endproc
.LFE77:
	.size	glViewport, .-glViewport
	.align 2
	.globl glVertex3f
	.type	glVertex3f, @function
glVertex3f:
.LFB82:
	.loc 1 180 0
	.cfi_startproc
.LVL40:
	.loc 1 181 0
	lis 6,vert_i@ha
	.loc 1 180 0
	stwu 1,-32(1)
.LCFI0:
	.cfi_def_cfa_offset 32
	.loc 1 181 0
	lwz 7,vert_i@l(6)
	.loc 1 180 0
	stw 26,8(1)
	.loc 1 181 0
	cmpwi 7,7,1000
	.loc 1 180 0
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 181 0
	bgt- 7,.L90
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
.LVL41:
.LBB202:
.LBB203:
	.loc 1 192 0
	lis 8,_tempcolorelement@ha
	.loc 1 194 0
	lis 10,_tempnormalelement@ha
	.loc 1 187 0
	mulli 0,7,12
	.loc 1 192 0
	la 9,_tempcolorelement@l(8)
	.loc 1 194 0
	la 11,_tempnormalelement@l(10)
	lis 4,_normalelements@ha
	la 4,_normalelements@l(4)
	.loc 1 192 0
	lwz 28,4(9)
	lwz 29,8(9)
	.loc 1 187 0
	lis 5,_vertexelements@ha
	.loc 1 192 0
	lwz 30,12(9)
	lis 12,_colorelements@ha
	.loc 1 194 0
	lwz 9,8(11)
	.loc 1 187 0
	la 5,_vertexelements@l(5)
	.loc 1 194 0
	lwz 27,_tempnormalelement@l(10)
	.loc 1 192 0
	la 12,_colorelements@l(12)
	.loc 1 194 0
	add 10,4,0
	lwz 31,4(11)
	.loc 1 192 0
	slwi 3,7,4
	lwz 26,_tempcolorelement@l(8)
	.loc 1 194 0
	stwx 27,4,0
	.loc 1 187 0
	add 8,5,0
	.loc 1 192 0
	add 11,12,3
	.loc 1 187 0
	stfsx 1,5,0
	.loc 1 194 0
	stw 9,8(10)
.LVL42:
	.loc 1 180 0
	li 0,8
	lis 9,_texcoordelements@ha
	.loc 1 192 0
	stwx 26,12,3
	.loc 1 180 0
	slwi 4,7,3
	.loc 1 188 0
	stfs 2,4(8)
	.loc 1 189 0
	stfs 3,8(8)
	.loc 1 180 0
	la 9,_texcoordelements@l(9)
	.loc 1 194 0
	lis 8,_temptexcoordelement-8@ha
	.loc 1 192 0
	stw 28,4(11)
	stw 29,8(11)
	.loc 1 180 0
	mtctr 0
	.loc 1 192 0
	stw 30,12(11)
	.loc 1 194 0
	la 8,_temptexcoordelement-8@l(8)
	stw 31,4(10)
	.loc 1 180 0
	add 9,4,9
.LVL43:
.L88:
	.loc 1 199 0
	addi 8,8,8
	lwz 10,0(8)
	lwz 11,4(8)
	stw 10,0(9)
	stw 11,4(9)
	addi 9,9,8000
	.loc 1 197 0
	bdnz .L88
	.loc 1 202 0
	addi 7,7,1
.LBE203:
.LBE202:
	.loc 1 203 0
	lwz 26,8(1)
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LBB205:
.LBB204:
	.loc 1 202 0
	stw 7,vert_i@l(6)
.LBE204:
.LBE205:
	.loc 1 203 0
	addi 1,1,32
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL44:
.L90:
.LCFI2:
	.cfi_restore_state
.LBB206:
.LBB207:
	.loc 1 1273 0
	li 0,1285
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,183
	lis 9,glErrLine@ha
.LBE207:
.LBE206:
	.loc 1 203 0
	lwz 26,8(1)
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LBB209:
.LBB208:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LBE208:
.LBE209:
	.loc 1 203 0
	addi 1,1,32
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE82:
	.size	glVertex3f, .-glVertex3f
	.align 2
	.globl glVertex4f
	.type	glVertex4f, @function
glVertex4f:
.LFB81:
	.loc 1 176 0
	.cfi_startproc
.LVL45:
	.loc 1 178 0
	.loc 1 177 0
	b glVertex3f
.LVL46:
.LVL47:
.LVL48:
.LVL49:
	.cfi_endproc
.LFE81:
	.size	glVertex4f, .-glVertex4f
	.align 2
	.globl glVertex3fv
	.type	glVertex3fv, @function
glVertex3fv:
.LFB80:
	.loc 1 172 0
	.cfi_startproc
.LVL50:
	.loc 1 173 0
	lfs 1,0(3)
	.loc 1 174 0
	.loc 1 173 0
	lfs 2,4(3)
	lfs 3,8(3)
	b glVertex3f
.LVL51:
	.cfi_endproc
.LFE80:
	.size	glVertex3fv, .-glVertex3fv
	.align 2
	.globl glVertex2f
	.type	glVertex2f, @function
glVertex2f:
.LFB79:
	.loc 1 167 0
	.cfi_startproc
.LVL52:
	.loc 1 168 0
	lis 9,.LC1@ha
	.loc 1 169 0
	.loc 1 168 0
	lfs 3,.LC1@l(9)
	b glVertex3f
.LVL53:
.LVL54:
	.cfi_endproc
.LFE79:
	.size	glVertex2f, .-glVertex2f
	.align 2
	.globl glVertex2i
	.type	glVertex2i, @function
glVertex2i:
.LFB78:
	.loc 1 163 0
	.cfi_startproc
.LVL55:
	stwu 1,-24(1)
.LCFI4:
	.cfi_def_cfa_offset 24
	.loc 1 164 0
	lis 0,0x4330
	xoris 3,3,0x8000
.LVL56:
	xoris 4,4,0x8000
.LVL57:
	stw 3,12(1)
	lis 9,.LC3@ha
	stw 0,8(1)
	stw 4,20(1)
	stw 0,16(1)
	lfs 0,.LC3@l(9)
	lis 9,.LC1@ha
	lfd 1,8(1)
	lfd 2,16(1)
	.loc 1 165 0
	.loc 1 164 0
	fsub 1,1,0
	lfs 3,.LC1@l(9)
	fsub 2,2,0
	.loc 1 165 0
	addi 1,1,24
.LCFI5:
	.cfi_def_cfa_offset 0
	.loc 1 164 0
	frsp 1,1
	frsp 2,2
	b glVertex3f
.LVL58:
.LVL59:
	.cfi_endproc
.LFE78:
	.size	glVertex2i, .-glVertex2i
	.align 2
	.globl glNormal3f
	.type	glNormal3f, @function
glNormal3f:
.LFB83:
	.loc 1 205 0
	.cfi_startproc
.LVL60:
	.loc 1 206 0
	lis 11,_tempnormalelement@ha
	la 9,_tempnormalelement@l(11)
	stfs 1,_tempnormalelement@l(11)
	.loc 1 207 0
	stfs 2,4(9)
	.loc 1 208 0
	stfs 3,8(9)
	.loc 1 209 0
	blr
	.cfi_endproc
.LFE83:
	.size	glNormal3f, .-glNormal3f
	.align 2
	.globl glNormal3fv
	.type	glNormal3fv, @function
glNormal3fv:
.LFB84:
	.loc 1 211 0
	.cfi_startproc
.LVL61:
	.loc 1 212 0
	lwz 8,0(3)
.LBB210:
.LBB211:
	.loc 1 206 0
	lis 11,_tempnormalelement@ha
.LBE211:
.LBE210:
	.loc 1 212 0
	lwz 10,4(3)
.LBB215:
.LBB212:
	.loc 1 206 0
	la 9,_tempnormalelement@l(11)
.LBE212:
.LBE215:
	.loc 1 212 0
	lwz 0,8(3)
.LVL62:
.LBB216:
.LBB213:
	.loc 1 207 0
	stw 10,4(9)
	.loc 1 208 0
	stw 0,8(9)
.LBE213:
.LBE216:
	.loc 1 213 0
.LBB217:
.LBB214:
	.loc 1 206 0
	stw 8,_tempnormalelement@l(11)
.LBE214:
.LBE217:
	.loc 1 213 0
	blr
	.cfi_endproc
.LFE84:
	.size	glNormal3fv, .-glNormal3fv
	.align 2
	.globl glColor4f
	.type	glColor4f, @function
glColor4f:
.LFB86:
	.loc 1 219 0
	.cfi_startproc
.LVL63:
	.loc 1 225 0
	lis 9,copy_mat_enabled@ha
	.loc 1 221 0
	lis 11,_tempcolorelement@ha
	.loc 1 225 0
	lbz 0,copy_mat_enabled@l(9)
	.loc 1 221 0
	la 9,_tempcolorelement@l(11)
	stfs 1,_tempcolorelement@l(11)
	.loc 1 225 0
	cmpwi 7,0,0
	.loc 1 222 0
	stfs 2,4(9)
	.loc 1 223 0
	stfs 3,8(9)
	.loc 1 224 0
	stfs 4,12(9)
	.loc 1 225 0
	beqlr- 7
.LBB220:
.LBB221:
	.loc 1 227 0
	lis 10,copy_material@ha
	lwz 0,copy_material@l(10)
	cmpwi 7,0,4610
	beq- 7,.L101
	cmplwi 7,0,4610
	bgt- 7,.L104
	cmpwi 7,0,4608
	beq- 7,.L99
	cmpwi 7,0,4609
	bnelr+ 7
	.loc 1 231 0
	lwz 8,_tempcolorelement@l(11)
	lwz 10,4(9)
	lwz 11,8(9)
	lwz 0,12(9)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	stw 8,32(9)
	stw 10,36(9)
	stw 11,40(9)
	stw 0,44(9)
	blr
.L104:
	.loc 1 227 0
	cmpwi 7,0,5632
	beq- 7,.L102
	cmpwi 7,0,5634
	bnelr+ 7
	.loc 1 234 0
	lwz 8,_tempcolorelement@l(11)
	lwz 10,4(9)
	lwz 11,8(9)
	lwz 0,12(9)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	stw 8,16(9)
	stw 10,20(9)
	stw 11,24(9)
	stw 0,28(9)
	.loc 1 235 0
	stw 8,32(9)
	stw 10,36(9)
	stw 11,40(9)
	stw 0,44(9)
	blr
.L101:
	.loc 1 232 0
	lwz 8,_tempcolorelement@l(11)
	lwz 10,4(9)
	lwz 11,8(9)
	lwz 0,12(9)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	stw 8,48(9)
	stw 10,52(9)
	stw 11,56(9)
	stw 0,60(9)
	blr
.L99:
	.loc 1 230 0
	lwz 8,_tempcolorelement@l(11)
	lwz 10,4(9)
	lwz 11,8(9)
	lwz 0,12(9)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	stw 8,16(9)
	stw 10,20(9)
	stw 11,24(9)
	stw 0,28(9)
	blr
.L102:
	.loc 1 229 0
	lis 10,curmat@ha
	lwz 7,_tempcolorelement@l(11)
	lwz 8,4(9)
	lwz 11,8(9)
	lwz 0,12(9)
	la 9,curmat@l(10)
	stw 7,curmat@l(10)
	stw 8,4(9)
	stw 11,8(9)
	stw 0,12(9)
	blr
.LBE221:
.LBE220:
	.cfi_endproc
.LFE86:
	.size	glColor4f, .-glColor4f
	.align 2
	.globl glColor3f
	.type	glColor3f, @function
glColor3f:
.LFB85:
	.loc 1 215 0
	.cfi_startproc
.LVL64:
	.loc 1 216 0
	lis 9,.LC4@ha
	.loc 1 217 0
	.loc 1 216 0
	lfs 4,.LC4@l(9)
	b glColor4f
.LVL65:
.LVL66:
.LVL67:
	.cfi_endproc
.LFE85:
	.size	glColor3f, .-glColor3f
	.align 2
	.globl glColor4fv
	.type	glColor4fv, @function
glColor4fv:
.LFB87:
	.loc 1 241 0
	.cfi_startproc
.LVL68:
	.loc 1 242 0
	lfs 1,0(3)
	.loc 1 243 0
	.loc 1 242 0
	lfs 2,4(3)
	lfs 3,8(3)
	lfs 4,12(3)
	b glColor4f
.LVL69:
	.cfi_endproc
.LFE87:
	.size	glColor4fv, .-glColor4fv
	.align 2
	.globl glColor3ub
	.type	glColor3ub, @function
glColor3ub:
.LFB88:
	.loc 1 248 0
	.cfi_startproc
.LVL70:
	stwu 1,-32(1)
.LCFI6:
	.cfi_def_cfa_offset 32
	.loc 1 249 0
	lis 0,0x4330
	lis 9,.LC6@ha
	stw 3,12(1)
	stw 0,8(1)
	stw 4,20(1)
	stw 0,16(1)
	stw 5,28(1)
	stw 0,24(1)
	lfs 0,.LC6@l(9)
	lis 9,.LC7@ha
	lfd 1,8(1)
	lfd 2,16(1)
	lfd 3,24(1)
	fsub 1,1,0
	fsub 2,2,0
	.loc 1 250 0
	.loc 1 249 0
	fsub 3,3,0
	lfs 0,.LC7@l(9)
	frsp 1,1
	lis 9,.LC4@ha
	frsp 2,2
	lfs 4,.LC4@l(9)
	frsp 3,3
	.loc 1 250 0
	addi 1,1,32
.LCFI7:
	.cfi_def_cfa_offset 0
	.loc 1 249 0
	fdivs 1,1,0
	fdivs 2,2,0
	fdivs 3,3,0
	b glColor4f
.LVL71:
.LVL72:
.LVL73:
	.cfi_endproc
.LFE88:
	.size	glColor3ub, .-glColor3ub
	.align 2
	.globl glColor4ub
	.type	glColor4ub, @function
glColor4ub:
.LFB89:
	.loc 1 256 0
	.cfi_startproc
.LVL74:
	stwu 1,-40(1)
.LCFI8:
	.cfi_def_cfa_offset 40
	.loc 1 257 0
	lis 0,0x4330
	lis 9,.LC6@ha
	stw 3,12(1)
	stw 0,8(1)
	stw 4,20(1)
	stw 0,16(1)
	stw 5,28(1)
	stw 0,24(1)
	stw 6,36(1)
	stw 0,32(1)
	lfs 0,.LC6@l(9)
	lis 9,.LC7@ha
	lfd 1,8(1)
	lfd 2,16(1)
	lfd 3,24(1)
	fsub 1,1,0
	lfd 4,32(1)
	fsub 2,2,0
	fsub 3,3,0
	.loc 1 258 0
	.loc 1 257 0
	fsub 4,4,0
	lfs 0,.LC7@l(9)
	frsp 1,1
	.loc 1 258 0
	addi 1,1,40
.LCFI9:
	.cfi_def_cfa_offset 0
	.loc 1 257 0
	frsp 2,2
	frsp 3,3
	frsp 4,4
	fdivs 1,1,0
	fdivs 2,2,0
	fdivs 3,3,0
	fdivs 4,4,0
	b glColor4f
.LVL75:
.LVL76:
.LVL77:
.LVL78:
	.cfi_endproc
.LFE89:
	.size	glColor4ub, .-glColor4ub
	.align 2
	.globl glColor3fv
	.type	glColor3fv, @function
glColor3fv:
.LFB90:
	.loc 1 261 0
	.cfi_startproc
.LVL79:
	.loc 1 262 0
	lfs 1,0(3)
	.loc 1 263 0
	.loc 1 262 0
	lfs 2,4(3)
	lfs 3,8(3)
	b glColor3f
.LVL80:
	.cfi_endproc
.LFE90:
	.size	glColor3fv, .-glColor3fv
	.align 2
	.globl glTexCoord2f
	.type	glTexCoord2f, @function
glTexCoord2f:
.LFB91:
	.loc 1 266 0
	.cfi_startproc
.LVL81:
	.loc 1 267 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,_temptexcoordelement@ha
	la 9,_temptexcoordelement@l(9)
	slwi 0,0,3
	add 11,9,0
	stfsx 1,9,0
	.loc 1 268 0
	stfs 2,4(11)
	.loc 1 269 0
	blr
	.cfi_endproc
.LFE91:
	.size	glTexCoord2f, .-glTexCoord2f
	.align 2
	.globl glTexCoord3f
	.type	glTexCoord3f, @function
glTexCoord3f:
.LFB92:
	.loc 1 271 0
	.cfi_startproc
.LVL82:
	.loc 1 272 0
	lis 9,cur_tex@ha
	lwz 0,cur_tex@l(9)
	lis 9,_temptexcoordelement@ha
	la 9,_temptexcoordelement@l(9)
	slwi 0,0,3
	add 11,9,0
	stfsx 1,9,0
	.loc 1 273 0
	stfs 2,4(11)
	.loc 1 274 0
	blr
	.cfi_endproc
.LFE92:
	.size	glTexCoord3f, .-glTexCoord3f
	.align 2
	.globl glTexCoord2fv
	.type	glTexCoord2fv, @function
glTexCoord2fv:
.LFB93:
	.loc 1 277 0
	.cfi_startproc
.LVL83:
	.loc 1 278 0
	lis 9,cur_tex@ha
	lwz 11,0(3)
	lwz 0,cur_tex@l(9)
	lis 9,_temptexcoordelement@ha
	la 9,_temptexcoordelement@l(9)
	slwi 0,0,3
	stwx 11,9,0
	add 9,9,0
	.loc 1 279 0
	lwz 0,4(3)
	stw 0,4(9)
	.loc 1 280 0
	blr
	.cfi_endproc
.LFE93:
	.size	glTexCoord2fv, .-glTexCoord2fv
	.align 2
	.globl glTexCoord3fv
	.type	glTexCoord3fv, @function
glTexCoord3fv:
.LFB94:
	.loc 1 283 0
	.cfi_startproc
.LVL84:
	.loc 1 284 0
	lis 9,cur_tex@ha
	lwz 11,0(3)
	lwz 0,cur_tex@l(9)
	lis 9,_temptexcoordelement@ha
	la 9,_temptexcoordelement@l(9)
	slwi 0,0,3
	stwx 11,9,0
	add 9,9,0
	.loc 1 285 0
	lwz 0,4(3)
	stw 0,4(9)
	.loc 1 287 0
	blr
	.cfi_endproc
.LFE94:
	.size	glTexCoord3fv, .-glTexCoord3fv
	.align 2
	.globl glLightModelfv
	.type	glLightModelfv, @function
glLightModelfv:
.LFB95:
	.loc 1 292 0
	.cfi_startproc
.LVL85:
	.loc 1 293 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L120
	.loc 1 295 0
	cmpwi 7,3,2899
	beq- 7,.L121
.LVL86:
.LBB222:
.LBB223:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,304
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL87:
.L121:
.LBE223:
.LBE222:
	.loc 1 298 0
	lwz 7,0(4)
	lis 11,globAmbient@ha
	.loc 1 299 0
	lwz 8,4(4)
	.loc 1 298 0
	la 9,globAmbient@l(11)
	.loc 1 300 0
	lwz 10,8(4)
	.loc 1 301 0
	lwz 0,12(4)
	.loc 1 298 0
	stw 7,globAmbient@l(11)
	.loc 1 299 0
	stw 8,4(9)
	.loc 1 300 0
	stw 10,8(9)
	.loc 1 301 0
	stw 0,12(9)
	.loc 1 302 0
	blr
.L120:
.LVL88:
.LBB224:
.LBB225:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,293
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE225:
.LBE224:
	.cfi_endproc
.LFE95:
	.size	glLightModelfv, .-glLightModelfv
	.align 2
	.globl glLightN
	.type	glLightN, @function
glLightN:
.LFB96:
	.loc 1 310 0
	.cfi_startproc
.LVL89:
	.loc 1 312 0
	addi 3,3,-16384
.LVL90:
	cmplwi 7,3,7
	ble- 7,.L134
.LVL91:
.LBB230:
.LBB231:
.LBB232:
.LBB233:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,323
	lis 9,glErrLine@ha
	li 3,-1
.LVL92:
	stw 0,glErrLine@l(9)
	blr
.LVL93:
.L134:
.LBE233:
.LBE232:
.LBE231:
.LBE230:
	.loc 1 312 0
	lis 9,.L132@ha
	slwi 3,3,2
.LVL94:
	la 9,.L132@l(9)
	lwzx 0,9,3
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L132:
	.long .L124-.L132
	.long .L133-.L132
	.long .L126-.L132
	.long .L127-.L132
	.long .L128-.L132
	.long .L129-.L132
	.long .L130-.L132
	.long .L131-.L132
	.section	".text"
.L130:
.LVL95:
	.loc 1 320 0
	li 3,6
	blr
.LVL96:
.L131:
	.loc 1 321 0
	li 3,7
	blr
.LVL97:
.L124:
	.loc 1 314 0
	li 3,0
	blr
.L133:
	.loc 1 315 0
	li 3,1
	.loc 1 328 0
	blr
.L126:
.LVL98:
	.loc 1 316 0
	li 3,2
	blr
.LVL99:
.L127:
	.loc 1 317 0
	li 3,3
	blr
.LVL100:
.L128:
	.loc 1 318 0
	li 3,4
	blr
.LVL101:
.L129:
	.loc 1 319 0
	li 3,5
	blr
	.cfi_endproc
.LFE96:
	.size	glLightN, .-glLightN
	.align 2
	.globl glLightf
	.type	glLightf, @function
glLightf:
.LFB97:
	.loc 1 330 0
	.cfi_startproc
.LVL102:
	mflr 0
	stwu 1,-24(1)
.LCFI10:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 331 0
	lis 9,cur_state@ha
	.loc 1 330 0
	stw 0,28(1)
	.loc 1 331 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	beq- 0,.L136
.LVL103:
.LBB234:
.LBB235:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,331
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.LVL104:
.L135:
.LBE235:
.LBE234:
	.loc 1 349 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI11:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL105:
.L136:
.LCFI12:
	.cfi_restore_state
	.loc 1 333 0
	stw 4,8(1)
	stfd 1,16(1)
	bl glLightN
.LVL106:
	.loc 1 335 0
	cmpwi 0,3,0
	lwz 4,8(1)
	lfd 1,16(1)
	blt- 0,.L135
	.loc 1 338 0
	addi 4,4,-4613
	cmplwi 7,4,4
	ble- 7,.L145
.LVL107:
.LBB236:
.LBB237:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,346
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L135
.LVL108:
.L145:
.LBE237:
.LBE236:
	.loc 1 338 0
	lis 9,.L144@ha
	slwi 4,4,2
	la 9,.L144@l(9)
	.loc 1 344 0
	mulli 3,3,164
.LVL109:
	.loc 1 338 0
	lwzx 0,9,4
	add 9,0,9
	mtctr 9
	.loc 1 344 0
	lis 9,lights@ha
	la 0,lights@l(9)
	add 3,0,3
	.loc 1 338 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L144:
	.long .L139-.L144
	.long .L140-.L144
	.long .L141-.L144
	.long .L142-.L144
	.long .L143-.L144
	.section	".text"
.L142:
	.loc 1 343 0
	stfs 1,156(3)
	b .L135
.L141:
	.loc 1 342 0
	stfs 1,152(3)
	b .L135
.L140:
	.loc 1 340 0
	stfs 1,148(3)
	b .L135
.L139:
	.loc 1 341 0
	stfs 1,144(3)
	b .L135
.L143:
	.loc 1 344 0
	stfs 1,160(3)
	b .L135
	.cfi_endproc
.LFE97:
	.size	glLightf, .-glLightf
	.align 2
	.globl glLightfv
	.type	glLightfv, @function
glLightfv:
.LFB98:
	.loc 1 351 0
	.cfi_startproc
.LVL110:
	mflr 0
	stwu 1,-96(1)
.LCFI13:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
	.loc 1 352 0
	lis 9,cur_state@ha
	.loc 1 351 0
	stw 31,92(1)
	mr 31,5
	.cfi_offset 31, -4
	stw 0,100(1)
	.loc 1 352 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 351 0
	stw 29,84(1)
	.loc 1 352 0
	andi. 9,0,1
	.loc 1 351 0
	stw 30,88(1)
	.loc 1 352 0
	beq- 0,.L147
	.cfi_offset 30, -8
	.cfi_offset 29, -12
.LVL111:
.LBB238:
.LBB239:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,352
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.LVL112:
.L146:
.LBE239:
.LBE238:
	.loc 1 411 0
	lwz 0,100(1)
	lwz 29,84(1)
	mtlr 0
	lwz 30,88(1)
	lwz 31,92(1)
.LVL113:
	addi 1,1,96
	.cfi_remember_state
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL114:
.L147:
.LCFI15:
	.cfi_restore_state
	.loc 1 354 0
	stw 4,72(1)
	bl glLightN
.LVL115:
	.loc 1 356 0
	cmpwi 0,3,0
	lwz 4,72(1)
	blt- 0,.L146
	.loc 1 361 0
	addi 4,4,-4608
	.loc 1 359 0
	li 0,0
	.loc 1 361 0
	cmplwi 7,4,4
	.loc 1 359 0
	stw 0,8(1)
	stw 0,12(1)
	stw 0,16(1)
	.loc 1 361 0
	ble- 7,.L156
.LVL116:
.LBB240:
.LBB241:
.LBB242:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,407
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L146
.LVL117:
.L156:
.LBE242:
.LBE241:
.LBE240:
	.loc 1 361 0
	lis 9,.L155@ha
	slwi 4,4,2
	la 9,.L155@l(9)
	lwzx 0,9,4
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L155:
	.long .L150-.L155
	.long .L151-.L155
	.long .L152-.L155
	.long .L153-.L155
	.long .L154-.L155
	.section	".text"
.L153:
	.loc 1 370 0
	mulli 30,3,164
	.loc 1 367 0
	lwz 0,8(31)
	.loc 1 365 0
	lwz 11,0(31)
	.loc 1 370 0
	lis 3,model_stack@ha
.LVL118:
	.loc 1 366 0
	lwz 9,4(31)
	.loc 1 370 0
	lis 29,lights@ha
	la 29,lights@l(29)
	la 3,model_stack@l(3)
	.loc 1 367 0
	stw 0,16(1)
	.loc 1 365 0
	stw 11,8(1)
	.loc 1 366 0
	stw 9,12(1)
	.loc 1 370 0
	bl TopMtx
	add 5,29,30
	addi 4,1,8
	addi 5,5,68
	.loc 1 372 0
	add 30,29,30
	.loc 1 370 0
	bl ps_guVecMultiply
	.loc 1 372 0
	lwz 0,12(31)
	stw 0,80(30)
	.loc 1 373 0
	b .L146
.LVL119:
.L152:
	.loc 1 388 0
	mulli 3,3,164
.LVL120:
	lis 9,lights@ha
	lwz 0,0(31)
	la 9,lights@l(9)
	add 3,9,3
	stw 0,128(3)
	.loc 1 389 0
	lwz 0,4(31)
	stw 0,132(3)
	.loc 1 390 0
	lwz 0,8(31)
	stw 0,136(3)
	.loc 1 391 0
	lwz 0,12(31)
	stw 0,140(3)
	.loc 1 392 0
	b .L146
.LVL121:
.L151:
	.loc 1 376 0
	mulli 3,3,164
.LVL122:
	lis 9,lights@ha
	lwz 0,0(31)
	la 9,lights@l(9)
	add 3,9,3
	stw 0,112(3)
	.loc 1 377 0
	lwz 0,4(31)
	stw 0,116(3)
	.loc 1 378 0
	lwz 0,8(31)
	stw 0,120(3)
	.loc 1 379 0
	lwz 0,12(31)
	stw 0,124(3)
	.loc 1 380 0
	b .L146
.LVL123:
.L150:
	.loc 1 382 0
	mulli 3,3,164
.LVL124:
	lis 9,lights@ha
	lwz 0,0(31)
	la 9,lights@l(9)
	add 3,9,3
	stw 0,96(3)
	.loc 1 383 0
	lwz 0,4(31)
	stw 0,100(3)
	.loc 1 384 0
	lwz 0,8(31)
	stw 0,104(3)
	.loc 1 385 0
	lwz 0,12(31)
	stw 0,108(3)
	.loc 1 386 0
	b .L146
.LVL125:
.L154:
.LBB243:
	.loc 1 395 0
	mulli 30,3,164
	lis 29,lights@ha
	lwz 0,0(31)
	la 29,lights@l(29)
	.loc 1 402 0
	lis 3,model_stack@ha
.LVL126:
	.loc 1 395 0
	add 9,29,30
	.loc 1 402 0
	la 3,model_stack@l(3)
	.loc 1 395 0
	stw 0,84(9)
	.loc 1 396 0
	lwz 0,4(31)
	stw 0,88(9)
	.loc 1 397 0
	lwz 0,8(31)
	stw 0,92(9)
	.loc 1 402 0
	bl TopMtx
	addi 4,1,20
	bl ps_guMtxTranspose
	.loc 1 404 0
	add 4,29,30
	addi 4,4,84
	addi 3,1,20
	mr 5,4
	bl ps_guVecMultiply
	.loc 1 405 0
	b .L146
.LBE243:
	.cfi_endproc
.LFE98:
	.size	glLightfv, .-glLightfv
	.align 2
	.globl glMaterialf
	.type	glMaterialf, @function
glMaterialf:
.LFB99:
	.loc 1 415 0
	.cfi_startproc
.LVL127:
	.loc 1 416 0
	cmpwi 7,4,5633
	beq- 7,.L162
.LVL128:
.LBB244:
.LBB245:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,421
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL129:
.L162:
.LBE245:
.LBE244:
	.loc 1 419 0
	lis 9,curmat+64@ha
	stfs 1,curmat+64@l(9)
	blr
	.cfi_endproc
.LFE99:
	.size	glMaterialf, .-glMaterialf
	.align 2
	.globl glMaterialfv
	.type	glMaterialfv, @function
glMaterialfv:
.LFB100:
	.loc 1 426 0
	.cfi_startproc
.LVL130:
	.loc 1 427 0
	cmpwi 7,4,4610
	.loc 1 426 0
	mflr 0
	stwu 1,-16(1)
.LCFI16:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,5
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 427 0
	beq- 7,.L167
	.cfi_offset 65, 4
	cmplwi 7,4,4610
	ble- 7,.L173
	cmpwi 7,4,5633
	beq- 7,.L169
	cmpwi 7,4,5634
	beq- 7,.L170
	cmpwi 7,4,5632
	beq- 7,.L174
.L164:
.LVL131:
.LBB246:
.LBB247:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,461
	lis 9,glErrLine@ha
.LBE247:
.LBE246:
	.loc 1 464 0
	lwz 31,12(1)
.LBB249:
.LBB248:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LBE248:
.LBE249:
	.loc 1 464 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI17:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	mtlr 0
	blr
.LVL132:
.L173:
.LCFI18:
	.cfi_restore_state
	.loc 1 427 0
	cmpwi 7,4,4608
	beq- 7,.L165
	cmpwi 7,4,4609
	bne+ 7,.L164
	b .L166
.L170:
	.loc 1 430 0
	li 4,4608
.LVL133:
	bl glMaterialfv
.LVL134:
.L166:
	.loc 1 440 0
	lwz 0,0(31)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	stw 0,32(9)
	.loc 1 441 0
	lwz 0,4(31)
	stw 0,36(9)
	.loc 1 442 0
	lwz 0,8(31)
	stw 0,40(9)
	.loc 1 443 0
	lwz 0,12(31)
	.loc 1 464 0
	lwz 31,12(1)
.LVL135:
	.loc 1 443 0
	stw 0,44(9)
	.loc 1 464 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI19:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL136:
.L169:
.LCFI20:
	.cfi_restore_state
	.loc 1 458 0
	lwz 0,0(5)
	lis 9,curmat+64@ha
	.loc 1 464 0
	lwz 31,12(1)
	.loc 1 458 0
	stw 0,curmat+64@l(9)
	.loc 1 464 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI21:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L174:
.LCFI22:
	.cfi_restore_state
	.loc 1 434 0
	lis 11,curmat@ha
	.loc 1 437 0
	lwz 0,12(5)
	.loc 1 434 0
	la 9,curmat@l(11)
	lwz 7,0(5)
	.loc 1 435 0
	lwz 8,4(5)
	.loc 1 436 0
	lwz 10,8(5)
	.loc 1 437 0
	stw 0,12(9)
	.loc 1 464 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	.loc 1 435 0
	stw 8,4(9)
	.loc 1 436 0
	stw 10,8(9)
	.loc 1 464 0
	.loc 1 434 0
	stw 7,curmat@l(11)
	.loc 1 464 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI23:
	.cfi_def_cfa_offset 0
	blr
.L165:
.LCFI24:
	.cfi_restore_state
	.loc 1 446 0
	lwz 0,0(5)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	.loc 1 464 0
	lwz 31,12(1)
	.loc 1 446 0
	stw 0,16(9)
	.loc 1 447 0
	lwz 0,4(5)
	stw 0,20(9)
	.loc 1 448 0
	lwz 0,8(5)
	stw 0,24(9)
	.loc 1 449 0
	lwz 0,12(5)
	stw 0,28(9)
	.loc 1 464 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI25:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L167:
.LCFI26:
	.cfi_restore_state
	.loc 1 452 0
	lwz 0,0(5)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	.loc 1 464 0
	lwz 31,12(1)
	.loc 1 452 0
	stw 0,48(9)
	.loc 1 453 0
	lwz 0,4(5)
	stw 0,52(9)
	.loc 1 454 0
	lwz 0,8(5)
	stw 0,56(9)
	.loc 1 455 0
	lwz 0,12(5)
	stw 0,60(9)
	.loc 1 464 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_restore 31
.LCFI27:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE100:
	.size	glMaterialfv, .-glMaterialfv
	.align 2
	.globl glGetMaterialfv
	.type	glGetMaterialfv, @function
glGetMaterialfv:
.LFB101:
	.loc 1 469 0
	.cfi_startproc
.LVL137:
	.loc 1 470 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L186
.LVL138:
	.loc 1 474 0
	cmpwi 7,4,4610
	beq- 7,.L181
	cmplwi 7,4,4610
	bgt- 7,.L184
	cmpwi 7,4,4608
	beq- 7,.L179
	cmpwi 7,4,4609
	beq- 7,.L187
.L178:
.LVL139:
.LBB250:
.LBB251:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,496
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL140:
.L186:
.LBE251:
.LBE250:
.LBB252:
.LBB253:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,470
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL141:
.L184:
.LBE253:
.LBE252:
	.loc 1 474 0
	cmpwi 7,4,5632
	beq- 7,.L182
	cmpwi 7,4,5633
	bne+ 7,.L178
	.loc 1 493 0
	lis 9,curmat+64@ha
	lwz 0,curmat+64@l(9)
	stw 0,0(5)
	blr
.L181:
.LVL142:
	.loc 1 490 0
	lis 8,curmat@ha
	la 8,curmat@l(8)
	lwz 10,48(8)
.LVL143:
	lwz 11,52(8)
.LVL144:
	lwz 9,56(8)
.LVL145:
	lwz 0,60(8)
.LVL146:
.L185:
	.loc 1 502 0
	stw 10,0(5)
	.loc 1 503 0
	stw 11,4(5)
	.loc 1 504 0
	stw 9,8(5)
	.loc 1 505 0
	stw 0,12(5)
	blr
.LVL147:
.L179:
	.loc 1 486 0
	lis 8,curmat@ha
	la 8,curmat@l(8)
	lwz 10,16(8)
.LVL148:
	lwz 11,20(8)
.LVL149:
	lwz 9,24(8)
.LVL150:
	lwz 0,28(8)
.LVL151:
	.loc 1 502 0
	stw 10,0(5)
	.loc 1 503 0
	stw 11,4(5)
	.loc 1 504 0
	stw 9,8(5)
	.loc 1 505 0
	stw 0,12(5)
	blr
.LVL152:
.L182:
	.loc 1 478 0
	lis 9,curmat@ha
	la 8,curmat@l(9)
	lwz 10,curmat@l(9)
.LVL153:
	lwz 11,4(8)
.LVL154:
	lwz 9,8(8)
.LVL155:
	lwz 0,12(8)
.LVL156:
	.loc 1 479 0
	b .L185
.LVL157:
.L187:
	.loc 1 482 0
	lis 8,curmat@ha
	la 8,curmat@l(8)
	lwz 10,32(8)
.LVL158:
	lwz 11,36(8)
.LVL159:
	lwz 9,40(8)
.LVL160:
	lwz 0,44(8)
.LVL161:
	.loc 1 483 0
	b .L185
	.cfi_endproc
.LFE101:
	.size	glGetMaterialfv, .-glGetMaterialfv
	.align 2
	.globl glClear
	.type	glClear, @function
glClear:
.LFB103:
	.loc 1 576 0
	.cfi_startproc
.LVL162:
	.loc 1 577 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
.LVL163:
.LBB254:
.LBB255:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,577
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE255:
.LBE254:
	.cfi_endproc
.LFE103:
	.size	glClear, .-glClear
	.align 2
	.globl glClearColor
	.type	glClearColor, @function
glClearColor:
.LFB104:
	.loc 1 634 0
	.cfi_startproc
.LVL164:
	.loc 1 636 0
	lis 9,cur_state@ha
	.loc 1 634 0
	stwu 1,-24(1)
.LCFI28:
	.cfi_def_cfa_offset 24
	.loc 1 636 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L193
	.loc 1 638 0
	lis 9,.LC7@ha
	lis 11,_clearcolor@ha
	lfs 0,.LC7@l(9)
	addi 9,1,8
	fmuls 1,1,0
.LVL165:
	.loc 1 639 0
	fmuls 2,2,0
.LVL166:
	.loc 1 640 0
	fmuls 3,3,0
.LVL167:
	.loc 1 638 0
	fctiwz 1,1
	.loc 1 641 0
	fmuls 0,4,0
	.loc 1 639 0
	fctiwz 2,2
	.loc 1 640 0
	fctiwz 3,3
	.loc 1 638 0
	stfiwx 1,0,9
	.loc 1 641 0
	fctiwz 0,0
	.loc 1 639 0
	addi 9,1,12
	stfiwx 2,0,9
	.loc 1 640 0
	addi 9,1,16
	stfiwx 3,0,9
	.loc 1 641 0
	addi 9,1,20
	stfiwx 0,0,9
	.loc 1 638 0
	la 9,_clearcolor@l(11)
	.loc 1 639 0
	lwz 8,12(1)
	.loc 1 640 0
	lwz 10,16(1)
	.loc 1 641 0
	lwz 0,20(1)
	.loc 1 638 0
	lwz 7,8(1)
	.loc 1 639 0
	stb 8,1(9)
	.loc 1 640 0
	stb 10,2(9)
	.loc 1 641 0
	stb 0,3(9)
	.loc 1 638 0
	stb 7,_clearcolor@l(11)
	.loc 1 642 0
	addi 1,1,24
	.cfi_remember_state
.LCFI29:
	.cfi_def_cfa_offset 0
	blr
.LVL168:
.L193:
.LCFI30:
	.cfi_restore_state
.LBB256:
.LBB257:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,636
	lis 9,glErrLine@ha
.LBE257:
.LBE256:
	.loc 1 642 0
.LBB259:
.LBB258:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LBE258:
.LBE259:
	.loc 1 642 0
	addi 1,1,24
.LCFI31:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE104:
	.size	glClearColor, .-glClearColor
	.align 2
	.globl glClearDepth
	.type	glClearDepth, @function
glClearDepth:
.LFB105:
	.loc 1 644 0
	.cfi_startproc
.LVL169:
	.loc 1 646 0
	lis 9,cur_state@ha
	.loc 1 644 0
	stwu 1,-16(1)
.LCFI32:
	.cfi_def_cfa_offset 16
	.loc 1 646 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L200
	.loc 1 648 0
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	fmr 13,0
	stfs 0,8(1)
	lwz 0,8(1)
	fcmpu 7,1,13
	bng- 7,.L201
.LVL170:
.L197:
	.loc 1 657 0
	lis 9,_cleardepth@ha
	.loc 1 658 0
	.loc 1 657 0
	stw 0,_cleardepth@l(9)
	.loc 1 658 0
	addi 1,1,16
	.cfi_remember_state
.LCFI33:
	.cfi_def_cfa_offset 0
	blr
.LVL171:
.L201:
.LCFI34:
	.cfi_restore_state
	.loc 1 652 0
	lis 9,.LC9@ha
	li 0,0
	lfd 0,.LC9@l(9)
	fcmpu 7,1,0
	blt+ 7,.L197
	frsp 1,1
.LVL172:
	stfs 1,8(1)
	lwz 0,8(1)
	b .L197
.LVL173:
.L200:
.LBB260:
.LBB261:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,646
	lis 9,glErrLine@ha
.LBE261:
.LBE260:
	.loc 1 658 0
.LBB263:
.LBB262:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LBE262:
.LBE263:
	.loc 1 658 0
	addi 1,1,16
.LCFI35:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE105:
	.size	glClearDepth, .-glClearDepth
	.align 2
	.globl glFlush
	.type	glFlush, @function
glFlush:
.LFB106:
	.loc 1 662 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI36:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 664 0
	lis 9,cur_state@ha
	.loc 1 662 0
	stw 0,12(1)
	.loc 1 664 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	beq- 0,.L203
.LVL174:
.LBB264:
.LBB265:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,664
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.LBE265:
.LBE264:
	.loc 1 667 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI37:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL175:
.L203:
.LCFI38:
	.cfi_restore_state
	.loc 1 666 0
	bl GX_DrawDone
	.loc 1 667 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI39:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE106:
	.size	glFlush, .-glFlush
	.align 2
	.globl updateFog
	.type	updateFog, @function
updateFog:
.LFB107:
	.loc 1 674 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI40:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 675 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	.loc 1 674 0
	stw 0,20(1)
	.loc 1 675 0
	.cfi_offset 65, 4
	bl TopPrjMtx
.LVL176:
	.loc 1 676 0
	lis 9,fog_enable@ha
	lbz 0,fog_enable@l(9)
	cmpwi 7,0,0
	beq- 7,.L206
	.loc 1 678 0
	lis 9,fog_mode@ha
	.loc 1 680 0
	mr 4,1
	.loc 1 678 0
	lbz 0,fog_mode@l(9)
	.loc 1 680 0
	lis 9,fog_color@ha
	lwz 9,fog_color@l(9)
	stwu 9,8(4)
	.loc 1 678 0
	andi. 9,0,2
	bne- 0,.L209
	.loc 1 684 0
	lis 9,fog_density@ha
	lfs 3,68(3)
	lfs 2,fog_density@l(9)
	lis 9,.LC1@ha
	lfs 4,72(3)
	mr 3,0
.LVL177:
	lfs 1,.LC1@l(9)
	bl GX_SetFog
	.loc 1 691 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI41:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL178:
.L209:
.LCFI42:
	.cfi_restore_state
	.loc 1 680 0
	lis 9,fog_startz@ha
	lfs 3,68(3)
	lfs 1,fog_startz@l(9)
	lis 9,fog_endz@ha
	lfs 4,72(3)
	mr 3,0
.LVL179:
	lfs 2,fog_endz@l(9)
	bl GX_SetFog
	.loc 1 691 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI43:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL180:
.L206:
.LCFI44:
	.cfi_restore_state
	.loc 1 689 0
	lis 9,fog_color@ha
	mr 4,1
	lwz 0,fog_color@l(9)
	lis 9,fog_startz@ha
	lfs 1,fog_startz@l(9)
	lis 9,fog_endz@ha
	stwu 0,8(4)
	lfs 2,fog_endz@l(9)
	lfs 3,68(3)
	lfs 4,72(3)
	li 3,0
.LVL181:
	bl GX_SetFog
	.loc 1 691 0
	lwz 0,20(1)
	addi 1,1,16
.LCFI45:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE107:
	.size	updateFog, .-updateFog
	.align 2
	.globl glFogf
	.type	glFogf, @function
glFogf:
.LFB110:
	.loc 1 709 0
	.cfi_startproc
.LVL182:
	.loc 1 710 0
	lis 9,cur_state@ha
	.loc 1 709 0
	stwu 1,-16(1)
.LCFI46:
	.cfi_def_cfa_offset 16
	.loc 1 710 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L230
	.loc 1 712 0
	cmpwi 7,3,2915
	beq- 7,.L215
	cmplwi 7,3,2915
	bgt- 7,.L218
	cmpwi 7,3,2914
	bne+ 7,.L213
	.loc 1 738 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,1,0
	bnl- 7,.L229
.LVL183:
.LBB286:
.LBB287:
	.loc 1 1273 0
	li 0,1281
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,740
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L210
.LVL184:
.L230:
.LBE287:
.LBE286:
.LBB288:
.LBB289:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,710
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.LVL185:
.L210:
.LBE289:
.LBE288:
	.loc 1 749 0
	addi 1,1,16
	.cfi_remember_state
.LCFI47:
	.cfi_def_cfa_offset 0
	blr
.LVL186:
.L218:
.LCFI48:
	.cfi_restore_state
	.loc 1 712 0
	cmpwi 7,3,2916
	beq- 7,.L216
	cmpwi 7,3,2917
	beq- 7,.L231
.L213:
.LVL187:
.LBB290:
.LBB291:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,746
	lis 9,glErrLine@ha
.LBE291:
.LBE290:
	.loc 1 749 0
.LBB293:
.LBB292:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LBE292:
.LBE293:
	.loc 1 749 0
	addi 1,1,16
	.cfi_remember_state
.LCFI49:
	.cfi_def_cfa_offset 0
	blr
.LVL188:
.L215:
.LCFI50:
	.cfi_restore_state
	.loc 1 732 0
	lis 9,fog_startz@ha
	.loc 1 749 0
	.loc 1 732 0
	stfs 1,fog_startz@l(9)
	.loc 1 749 0
	addi 1,1,16
	.cfi_remember_state
.LCFI51:
	.cfi_def_cfa_offset 0
	blr
.L216:
.LCFI52:
	.cfi_restore_state
	.loc 1 735 0
	lis 9,fog_endz@ha
	.loc 1 749 0
	.loc 1 735 0
	stfs 1,fog_endz@l(9)
	.loc 1 749 0
	addi 1,1,16
	.cfi_remember_state
.LCFI53:
	.cfi_def_cfa_offset 0
	blr
.L231:
.LCFI54:
	.cfi_restore_state
.LVL189:
.LBB294:
.LBB295:
	.loc 1 715 0
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	fcmpu 7,1,0
	cror 30,29,30
	beq- 7,.L223
	fctiwz 1,1
.LVL190:
	addi 9,1,12
	stfiwx 1,0,9
	lwz 9,12(1)
.L224:
	cmpwi 7,9,2049
	beq- 7,.L221
	cmpwi 7,9,9729
	beq- 7,.L222
	cmpwi 7,9,2048
	beq- 7,.L232
.LVL191:
.LBB296:
.LBB297:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,727
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L210
.LVL192:
.L229:
.LBE297:
.LBE296:
.LBE295:
.LBE294:
.LBB299:
.LBB300:
	.loc 1 698 0
	lis 9,.LC11@ha
	lfd 0,.LC11@l(9)
	lis 9,fog_density@ha
	fdiv 0,0,1
	frsp 0,0
	stfs 0,fog_density@l(9)
.LBE300:
.LBE299:
	.loc 1 744 0
	b .L210
.LVL193:
.L232:
.LBB301:
.LBB298:
	.loc 1 721 0
	li 0,4
	lis 9,fog_mode@ha
	stb 0,fog_mode@l(9)
	b .L210
.LVL194:
.L223:
	.loc 1 715 0
	fsubs 0,1,0
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 9,8(1)
	addis 9,9,0x8000
	b .L224
.LVL195:
.L222:
	.loc 1 718 0
	li 0,2
	lis 9,fog_mode@ha
	stb 0,fog_mode@l(9)
	b .L210
.L221:
	.loc 1 724 0
	li 0,5
	lis 9,fog_mode@ha
	stb 0,fog_mode@l(9)
	b .L210
.LBE298:
.LBE301:
	.cfi_endproc
.LFE110:
	.size	glFogf, .-glFogf
	.align 2
	.globl glFogi
	.type	glFogi, @function
glFogi:
.LFB109:
	.loc 1 704 0
	.cfi_startproc
.LVL196:
	stwu 1,-16(1)
.LCFI55:
	.cfi_def_cfa_offset 16
	.loc 1 705 0
	xoris 4,4,0x8000
.LVL197:
	lis 0,0x4330
	lis 9,.LC3@ha
	stw 4,12(1)
	stw 0,8(1)
	lfs 0,.LC3@l(9)
	lfd 1,8(1)
	.loc 1 706 0
	addi 1,1,16
.LCFI56:
	.cfi_def_cfa_offset 0
	.loc 1 705 0
	fsub 1,1,0
	frsp 1,1
	b glFogf
.LVL198:
.LVL199:
	.cfi_endproc
.LFE109:
	.size	glFogi, .-glFogi
	.align 2
	.globl glFogfv
	.type	glFogfv, @function
glFogfv:
.LFB111:
	.loc 1 752 0
	.cfi_startproc
.LVL200:
	.loc 1 753 0
	lis 9,cur_state@ha
	.loc 1 752 0
	stwu 1,-24(1)
.LCFI57:
	.cfi_def_cfa_offset 24
	.loc 1 753 0
	lwz 0,cur_state@l(9)
	andi. 11,0,1
	bne- 0,.L240
	.loc 1 755 0
	cmpwi 7,3,2918
	beq- 7,.L241
	.loc 1 764 0
	lfs 1,0(4)
	.loc 1 767 0
	addi 1,1,24
	.cfi_remember_state
.LCFI58:
	.cfi_def_cfa_offset 0
	.loc 1 764 0
	b glFogf
.LVL201:
.L241:
.LCFI59:
	.cfi_restore_state
	.loc 1 758 0
	lis 9,.LC7@ha
	lfs 11,0(4)
	lfs 0,.LC7@l(9)
	.loc 1 759 0
	addi 11,1,12
	lfs 12,4(4)
	.loc 1 758 0
	addi 9,1,8
	.loc 1 760 0
	lfs 13,8(4)
	.loc 1 758 0
	fmuls 11,11,0
	.loc 1 761 0
	lfs 10,12(4)
	.loc 1 759 0
	fmuls 12,12,0
	.loc 1 760 0
	fmuls 13,13,0
	.loc 1 761 0
	fmuls 0,10,0
	.loc 1 758 0
	fctiwz 11,11
	.loc 1 759 0
	fctiwz 12,12
	.loc 1 760 0
	fctiwz 13,13
	.loc 1 761 0
	fctiwz 0,0
	.loc 1 758 0
	stfiwx 11,0,9
	.loc 1 759 0
	stfiwx 12,0,11
	.loc 1 760 0
	addi 9,1,16
	.loc 1 761 0
	addi 11,1,20
	.loc 1 760 0
	stfiwx 13,0,9
	.loc 1 761 0
	stfiwx 0,0,11
	.loc 1 758 0
	lis 11,fog_color@ha
	la 9,fog_color@l(11)
	.loc 1 759 0
	lwz 8,12(1)
	.loc 1 760 0
	lwz 10,16(1)
	.loc 1 761 0
	lwz 0,20(1)
	.loc 1 758 0
	lwz 7,8(1)
	.loc 1 759 0
	stb 8,1(9)
	.loc 1 760 0
	stb 10,2(9)
	.loc 1 761 0
	stb 0,3(9)
	.loc 1 758 0
	stb 7,fog_color@l(11)
	.loc 1 767 0
	addi 1,1,24
	.cfi_remember_state
.LCFI60:
	.cfi_def_cfa_offset 0
	blr
.L240:
.LCFI61:
	.cfi_restore_state
.LVL202:
.LBB302:
.LBB303:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,753
	lis 9,glErrLine@ha
.LBE303:
.LBE302:
	.loc 1 767 0
.LBB305:
.LBB304:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LBE304:
.LBE305:
	.loc 1 767 0
	addi 1,1,24
.LCFI62:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE111:
	.size	glFogfv, .-glFogfv
	.align 2
	.globl glDepthMask
	.type	glDepthMask, @function
glDepthMask:
.LFB112:
	.loc 1 770 0
	.cfi_startproc
.LVL203:
	.loc 1 771 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L249
	.loc 1 773 0
	cmpwi 7,3,0
	beq- 7,.L246
	cmpwi 7,3,1
	beq- 7,.L246
.LVL204:
.LBB306:
.LBB307:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,778
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL205:
.L246:
.LBE307:
.LBE306:
	.loc 1 776 0
	lis 9,depthupdate@ha
	stb 3,depthupdate@l(9)
	blr
.L249:
.LVL206:
.LBB308:
.LBB309:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,771
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE309:
.LBE308:
	.cfi_endproc
.LFE112:
	.size	glDepthMask, .-glDepthMask
	.align 2
	.globl glEnable
	.type	glEnable, @function
glEnable:
.LFB113:
	.loc 1 785 0
	.cfi_startproc
.LVL207:
	mflr 0
	stwu 1,-8(1)
.LCFI63:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 786 0
	lis 9,cur_state@ha
	.loc 1 785 0
	mr 4,3
	stw 0,12(1)
	.loc 1 786 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L269
	.loc 1 788 0
	cmpwi 7,3,3008
	beq- 7,.L259
	cmplwi 7,3,3008
	bgt- 7,.L264
	cmpwi 7,3,2903
	beq- 7,.L256
	cmplwi 7,3,2903
	bgt- 7,.L265
	cmpwi 7,3,2884
	beq- 7,.L254
	cmpwi 7,3,2896
	beq- 7,.L270
.L253:
	.loc 1 818 0
	lis 3,.LC12@ha
.LVL208:
	la 3,.LC12@l(3)
	crxor 6,6,6
	bl printf
.LVL209:
.LBB310:
.LBB311:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,819
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L250
.LVL210:
.L269:
.LBE311:
.LBE310:
.LBB312:
.LBB313:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,786
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.LVL211:
.L250:
.LBE313:
.LBE312:
	.loc 1 822 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI64:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL212:
.L264:
.LCFI65:
	.cfi_restore_state
	.loc 1 788 0
	cmpwi 7,3,3553
	beq- 7,.L262
	cmplwi 7,3,3553
	bgt- 7,.L266
	cmpwi 7,3,3042
	beq- 7,.L260
	cmpwi 7,3,3089
	bne+ 7,.L253
	.loc 1 816 0
	li 0,1
	lis 9,scissor_test@ha
	stb 0,scissor_test@l(9)
	b .L250
.L259:
	.loc 1 790 0
	li 0,1
	lis 9,_alphatest_enabled@ha
	stb 0,_alphatest_enabled@l(9)
	b .L250
.L256:
	.loc 1 815 0
	li 0,1
	lis 9,copy_mat_enabled@ha
	stb 0,copy_mat_enabled@l(9)
	b .L250
.L262:
	.loc 1 794 0
	li 3,1
.LVL213:
	bl _glSetEnableTex
.LVL214:
	b .L250
.LVL215:
.L270:
	.loc 1 793 0
	li 0,1
	lis 9,lighting@ha
	stb 0,lighting@l(9)
	b .L250
.L266:
	.loc 1 788 0
	addi 0,3,-16384
	cmplwi 7,0,7
	bgt- 7,.L253
.LBB314:
	.loc 1 804 0
	bl glLightN
.LVL216:
	.loc 1 805 0
	cmpwi 0,3,0
	blt- 0,.L271
	.loc 1 810 0
	mulli 3,3,164
.LVL217:
	lis 9,lights@ha
	li 0,1
	la 9,lights@l(9)
	stbx 0,9,3
	.loc 1 811 0
	b .L250
.LVL218:
.L265:
.LBE314:
	.loc 1 788 0
	cmpwi 7,3,2912
	beq- 7,.L257
	cmpwi 7,3,2929
	bne+ 7,.L253
	.loc 1 792 0
	li 0,1
	lis 9,depthtestenabled@ha
	stb 0,depthtestenabled@l(9)
	b .L250
.L257:
	.loc 1 814 0
	li 0,1
	lis 9,fog_enable@ha
	stb 0,fog_enable@l(9)
	b .L250
.L260:
	.loc 1 791 0
	li 0,1
	lis 9,blend_type@ha
	stb 0,blend_type@l(9)
	b .L250
.L254:
	.loc 1 813 0
	li 0,1
	lis 9,gxcullfaceanabled@ha
	stb 0,gxcullfaceanabled@l(9)
	b .L250
.LVL219:
.L271:
.LBB317:
.LBB315:
.LBB316:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,807
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L250
.LBE316:
.LBE315:
.LBE317:
	.cfi_endproc
.LFE113:
	.size	glEnable, .-glEnable
	.align 2
	.globl glIsEnabled
	.type	glIsEnabled, @function
glIsEnabled:
.LFB114:
	.loc 1 825 0
	.cfi_startproc
.LVL220:
	mflr 0
	stwu 1,-8(1)
.LCFI66:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 827 0
	lis 9,cur_state@ha
	.loc 1 825 0
	stw 0,12(1)
	.loc 1 827 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 11,0,1
	bne- 0,.L297
	.loc 1 829 0
	cmpwi 7,3,3089
	beq- 7,.L283
	cmplwi 7,3,3089
	bgt- 7,.L286
	cmpwi 7,3,2912
	beq- 7,.L279
	cmplwi 7,3,2912
	bgt- 7,.L287
	cmplwi 7,3,2882
	ble- 7,.L298
	cmpwi 7,3,2896
	beq- 7,.L277
	cmpwi 7,3,2903
	beq- 7,.L278
	cmpwi 7,3,2884
	bne+ 7,.L275
	.loc 1 833 0
	lis 9,gxcullfaceanabled@ha
	lbz 3,gxcullfaceanabled@l(9)
.LVL221:
	b .L274
.LVL222:
.L297:
.LBB318:
.LBB319:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,827
	lis 9,glErrLine@ha
.LBE319:
.LBE318:
	.loc 1 827 0
	li 3,0
.LVL223:
.LBB321:
.LBB320:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LVL224:
.L274:
.LBE320:
.LBE321:
	.loc 1 903 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI67:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL225:
.L286:
.LCFI68:
	.cfi_restore_state
	.loc 1 829 0
	cmplwi 7,3,10754
	ble- 7,.L299
	cmplwi 7,3,16391
	bgt- 7,.L293
	cmplwi 7,3,16384
	blt- 7,.L300
.LBB322:
	.loc 1 856 0
	bl glLightN
.LVL226:
	.loc 1 857 0
	cmpwi 0,3,0
	blt- 0,.L301
	.loc 1 862 0
	mulli 3,3,164
.LVL227:
	lis 9,lights@ha
	la 9,lights@l(9)
	lbzx 3,9,3
	b .L274
.LVL228:
.L283:
.LBE322:
	.loc 1 866 0
	lis 9,scissor_test@ha
	lbz 3,scissor_test@l(9)
.LVL229:
	b .L274
.LVL230:
.L299:
	.loc 1 829 0
	cmplwi 7,3,10753
	bge- 7,.L295
	cmpwi 7,3,3472
	beq- 7,.L295
	cmplwi 7,3,3472
	bgt- 7,.L292
	cmplwi 7,3,3168
	blt- 7,.L275
	cmplwi 7,3,3171
	ble- 7,.L295
	cmpwi 7,3,3456
	bne+ 7,.L275
.L295:
	.loc 1 897 0
	li 3,0
.LVL231:
	b .L274
.LVL232:
.L279:
	.loc 1 835 0
	lis 9,fog_enable@ha
	lbz 3,fog_enable@l(9)
.LVL233:
	b .L274
.LVL234:
.L287:
	.loc 1 829 0
	cmpwi 7,3,3008
	beq- 7,.L295
	cmplwi 7,3,3008
	bgt- 7,.L289
	cmpwi 7,3,2960
	beq- 7,.L295
	cmpwi 7,3,2977
	beq- 7,.L295
	cmpwi 7,3,2929
	bne+ 7,.L275
	.loc 1 834 0
	lis 9,depthtestenabled@ha
	lbz 3,depthtestenabled@l(9)
.LVL235:
	xori 3,3,1
	cntlzw 3,3
	srwi 3,3,5
	b .L274
.LVL236:
.L293:
	.loc 1 829 0
	xoris 0,3,0xffff
	cmpwi 7,0,-32713
	beq 7,.L295
	cmplwi 7,3,32823
	blt- 7,.L275
	addis 9,3,0xffff
	addi 9,9,32652
	cmplwi 7,9,5
	ble- 7,.L302
.L275:
.LVL237:
.LBB327:
.LBB328:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,900
	lis 9,glErrLine@ha
.LBE328:
.LBE327:
	.loc 1 901 0
	li 3,0
.LVL238:
.LBB330:
.LBB329:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LBE329:
.LBE330:
	.loc 1 901 0
	b .L274
.LVL239:
.L298:
	.loc 1 829 0
	cmplwi 7,3,2881
	bge- 7,.L295
	cmpwi 7,3,2848
	beq- 7,.L295
	cmpwi 7,3,2852
	beq- 7,.L295
	cmpwi 7,3,2832
	bne+ 7,.L275
	.loc 1 897 0
	li 3,0
.LVL240:
	b .L274
.LVL241:
.L289:
	.loc 1 829 0
	cmpwi 7,3,3042
	beq- 7,.L281
	cmplwi 7,3,3042
	bgt- 7,.L290
	cmpwi 7,3,3024
	bne+ 7,.L275
	.loc 1 897 0
	li 3,0
.LVL242:
	b .L274
.LVL243:
.L300:
	.loc 1 829 0
	addi 9,3,-12288
	cmplwi 7,9,5
	bgt- 7,.L275
	.loc 1 897 0
	li 3,0
.LVL244:
	b .L274
.LVL245:
.L301:
.LBB331:
.LBB323:
.LBB324:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,859
	lis 9,glErrLine@ha
.LBE324:
.LBE323:
	.loc 1 860 0
	li 3,0
.LVL246:
.LBB326:
.LBB325:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LBE325:
.LBE326:
	.loc 1 860 0
	b .L274
.LVL247:
.L278:
.LBE331:
	.loc 1 832 0
	lis 9,copy_mat_enabled@ha
	lbz 3,copy_mat_enabled@l(9)
.LVL248:
	b .L274
.LVL249:
.L277:
	.loc 1 865 0
	lis 9,lighting@ha
	lbz 3,lighting@l(9)
.LVL250:
	b .L274
.LVL251:
.L302:
	.loc 1 842 0
	bl _glIsArrayEnabled
.LVL252:
	b .L274
.LVL253:
.L281:
	.loc 1 831 0
	lis 9,blend_type@ha
	lbz 3,blend_type@l(9)
.LVL254:
	xori 3,3,1
	cntlzw 3,3
	srwi 3,3,5
	b .L274
.LVL255:
.L292:
	.loc 1 829 0
	cmplwi 7,3,3508
	blt- 7,.L275
	cmplwi 7,3,3512
	ble- 7,.L295
	addi 9,3,-3552
	cmplwi 7,9,1
	bgt- 7,.L275
.L282:
	.loc 1 846 0
	lis 9,cur_tex@ha
	lwz 3,cur_tex@l(9)
.LVL256:
	bl _glGetEnableTex
	b .L274
.LVL257:
.L290:
	.loc 1 829 0
	cmpwi 7,3,3057
	beq- 7,.L282
	cmpwi 7,3,3058
	bne+ 7,.L275
	.loc 1 897 0
	li 3,0
.LVL258:
	b .L274
	.cfi_endproc
.LFE114:
	.size	glIsEnabled, .-glIsEnabled
	.align 2
	.globl glDisable
	.type	glDisable, @function
glDisable:
.LFB115:
	.loc 1 906 0
	.cfi_startproc
.LVL259:
	mflr 0
	stwu 1,-16(1)
.LCFI69:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 907 0
	lis 9,cur_state@ha
	.loc 1 906 0
	mr 4,3
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 907 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	andi. 31,0,1
	bne- 0,.L324
	.loc 1 909 0
	cmpwi 7,3,3058
	beq- 7,.L303
	cmplwi 7,3,3058
	bgt- 7,.L317
	cmpwi 7,3,2903
	beq- 7,.L309
	cmplwi 7,3,2903
	bgt- 7,.L318
	cmplwi 7,3,2882
	bgt- 7,.L319
	cmplwi 7,3,2881
	bge- 7,.L303
	cmpwi 7,3,2848
	beq- 7,.L303
	cmpwi 7,3,2852
	beq- 7,.L303
	cmpwi 7,3,2832
	bne+ 7,.L306
.LVL260:
.L303:
	.loc 1 971 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI70:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL261:
.L324:
.LCFI71:
	.cfi_restore_state
.LBB332:
.LBB333:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,907
	lis 9,glErrLine@ha
.LBE333:
.LBE332:
	.loc 1 971 0
	lwz 31,12(1)
.LBB335:
.LBB334:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LBE334:
.LBE335:
	.loc 1 971 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI72:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL262:
.L317:
.LCFI73:
	.cfi_restore_state
	.loc 1 909 0
	cmpwi 7,3,3553
	beq- 7,.L315
	cmplwi 7,3,3553
	bgt- 7,.L321
	cmpwi 7,3,3456
	beq- 7,.L303
	cmplwi 7,3,3456
	ble- 7,.L325
	cmpwi 7,3,3472
	beq- 7,.L303
	cmplwi 7,3,3472
	blt- 7,.L306
	addi 0,3,-3508
	cmplwi 7,0,4
	bgt- 7,.L306
	b .L303
.L315:
	.loc 1 915 0
	li 3,0
.LVL263:
	bl _glSetEnableTex
.LVL264:
	b .L303
.LVL265:
.L309:
	.loc 1 933 0
	lis 9,copy_mat_enabled@ha
	stb 31,copy_mat_enabled@l(9)
	b .L303
.L318:
	.loc 1 909 0
	cmpwi 7,3,2977
	beq- 7,.L303
	cmplwi 7,3,2977
	ble- 7,.L326
	cmpwi 7,3,3024
	beq- 7,.L303
	cmpwi 7,3,3042
	beq- 7,.L313
	cmpwi 7,3,3008
	bne+ 7,.L306
	.loc 1 911 0
	li 0,0
	lis 9,_alphatest_enabled@ha
	stb 0,_alphatest_enabled@l(9)
	b .L303
.L321:
	.loc 1 909 0
	cmplwi 7,3,12293
	ble- 7,.L327
	cmplwi 7,3,16384
	blt- 7,.L306
	cmplwi 7,3,16391
	ble- 7,.L316
	xoris 0,3,0xffff
	cmpwi 7,0,-32713
	bne 7,.L306
	b .L303
.L327:
	cmplwi 7,3,12288
	bge- 7,.L303
	addi 0,3,-10753
	cmplwi 7,0,1
	ble- 7,.L303
.L306:
	.loc 1 967 0
	lis 3,.LC13@ha
.LVL266:
	la 3,.LC13@l(3)
	crxor 6,6,6
	bl printf
.LVL267:
.LBB336:
.LBB337:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,968
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L303
.LVL268:
.L319:
.LBE337:
.LBE336:
	.loc 1 909 0
	cmpwi 7,3,2884
	beq- 7,.L307
	cmpwi 7,3,2896
	bne+ 7,.L306
	.loc 1 914 0
	lis 9,lighting@ha
	stb 31,lighting@l(9)
	b .L303
.L326:
	.loc 1 909 0
	cmpwi 7,3,2929
	beq- 7,.L311
	cmpwi 7,3,2960
	beq- 7,.L303
	cmpwi 7,3,2912
	bne+ 7,.L306
	.loc 1 932 0
	li 0,0
	lis 9,fog_enable@ha
	stb 0,fog_enable@l(9)
	b .L303
.L325:
	.loc 1 909 0
	cmpwi 7,3,3089
	beq- 7,.L314
	cmplwi 7,3,3089
	blt- 7,.L306
	addi 0,3,-3168
	cmplwi 7,0,3
	bgt- 7,.L306
	b .L303
.L316:
.LBB338:
	.loc 1 925 0
	bl glLightN
.LVL269:
	.loc 1 926 0
	cmpwi 0,3,0
	blt- 0,.L303
	.loc 1 928 0
	mulli 3,3,164
.LVL270:
	lis 9,lights@ha
	la 9,lights@l(9)
	stbx 31,9,3
	.loc 1 929 0
	b .L303
.LVL271:
.L307:
.LBE338:
	.loc 1 931 0
	lis 9,gxcullfaceanabled@ha
	stb 31,gxcullfaceanabled@l(9)
	b .L303
.L314:
	.loc 1 934 0
	lis 9,scissor_test@ha
	stb 31,scissor_test@l(9)
	b .L303
.L311:
	.loc 1 913 0
	lis 9,depthtestenabled@ha
	stb 31,depthtestenabled@l(9)
	b .L303
.L313:
	.loc 1 912 0
	lis 9,blend_type@ha
	stb 31,blend_type@l(9)
	b .L303
	.cfi_endproc
.LFE115:
	.size	glDisable, .-glDisable
	.align 2
	.globl glDepthFunc
	.type	glDepthFunc, @function
glDepthFunc:
.LFB116:
	.loc 1 975 0
	.cfi_startproc
.LVL272:
	.loc 1 976 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L341
	.loc 1 978 0
	addi 3,3,-512
.LVL273:
	cmplwi 7,3,7
	ble- 7,.L342
.LVL274:
.LBB339:
.LBB340:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,989
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL275:
.L342:
.LBE340:
.LBE339:
	.loc 1 978 0
	lis 9,.L340@ha
	slwi 3,3,2
.LVL276:
	la 9,.L340@l(9)
	lwzx 0,9,3
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L340:
	.long .L332-.L340
	.long .L333-.L340
	.long .L334-.L340
	.long .L335-.L340
	.long .L336-.L340
	.long .L337-.L340
	.long .L338-.L340
	.long .L339-.L340
	.section	".text"
.LVL277:
.L341:
.LBB341:
.LBB342:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,976
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL278:
.L338:
.LBE342:
.LBE341:
	.loc 1 986 0
	li 0,6
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L337:
	.loc 1 985 0
	li 0,5
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L336:
	.loc 1 984 0
	li 0,4
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L335:
	.loc 1 983 0
	li 0,3
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L334:
	.loc 1 982 0
	li 0,2
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L333:
	.loc 1 981 0
	li 0,1
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L332:
	.loc 1 980 0
	li 0,0
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L339:
	.loc 1 987 0
	li 0,7
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
	.cfi_endproc
.LFE116:
	.size	glDepthFunc, .-glDepthFunc
	.align 2
	.globl glAlphaFunc
	.type	glAlphaFunc, @function
glAlphaFunc:
.LFB117:
	.loc 1 996 0
	.cfi_startproc
.LVL279:
	.loc 1 997 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L350
	.loc 1 998 0
	addi 0,3,-512
	cmplwi 7,0,7
	ble- 7,.L351
.LVL280:
.LBB343:
.LBB344:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1014
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL281:
.L351:
.LBE344:
.LBE343:
	.loc 1 1007 0
	lis 9,_alphatest_func@ha
	lis 11,_alphatest_ref@ha
	lwz 0,_alphatest_func@l(9)
	cmpw 7,0,3
	beq- 7,.L352
.L348:
	.loc 1 1008 0
	stw 3,_alphatest_func@l(9)
	.loc 1 1010 0
	li 0,1
	lis 9,_alphatest_dirty@ha
	.loc 1 1009 0
	stfs 1,_alphatest_ref@l(11)
	.loc 1 1010 0
	stb 0,_alphatest_dirty@l(9)
	blr
.L350:
.LVL282:
.LBB345:
.LBB346:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,997
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LVL283:
.L352:
.LBE346:
.LBE345:
	.loc 1 1007 0 discriminator 1
	lfs 0,_alphatest_ref@l(11)
	fcmpu 7,0,1
	beqlr- 7
	b .L348
	.cfi_endproc
.LFE117:
	.size	glAlphaFunc, .-glAlphaFunc
	.align 2
	.globl gxgl_glGetDoublev
	.type	gxgl_glGetDoublev, @function
gxgl_glGetDoublev:
.LFB118:
	.loc 1 1024 0
	.cfi_startproc
.LVL284:
	.loc 1 1025 0
	cmplwi 7,3,2982
	.loc 1 1024 0
	mflr 0
	stwu 1,-8(1)
.LCFI74:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 1025 0
	blt- 7,.L354
	.cfi_offset 65, 4
	cmplwi 7,3,2983
	bgt- 7,.L357
.L355:
	.loc 1 1029 0
	bl _glGetMatrixd
.LVL285:
	.loc 1 1035 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI75:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL286:
.L357:
.LCFI76:
	.cfi_restore_state
	.loc 1 1025 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31489
	beq 7,.L355
.L354:
.LVL287:
.LBB347:
.LBB348:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1032
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.LBE348:
.LBE347:
	.loc 1 1035 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI77:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE118:
	.size	gxgl_glGetDoublev, .-gxgl_glGetDoublev
	.align 2
	.globl glMultiTexCoord2fARB
	.type	glMultiTexCoord2fARB, @function
glMultiTexCoord2fARB:
.LFB120:
	.loc 1 1112 0
	.cfi_startproc
.LVL288:
	.loc 1 1113 0
	addis 3,3,0xffff
.LVL289:
	addi 3,3,31552
.LVL290:
	cmplwi 7,3,8
	bgt- 7,.L361
.LVL291:
	.loc 1 1122 0
	lis 9,_temptexcoordelement@ha
	slwi 3,3,3
.LVL292:
	la 9,_temptexcoordelement@l(9)
	add 11,9,3
	stfsx 1,9,3
	stfs 2,4(11)
	blr
.LVL293:
.L361:
.LBB349:
.LBB350:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1115
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE350:
.LBE349:
	.cfi_endproc
.LFE120:
	.size	glMultiTexCoord2fARB, .-glMultiTexCoord2fARB
	.align 2
	.globl glClientActiveTextureARB
	.type	glClientActiveTextureARB, @function
glClientActiveTextureARB:
.LFB121:
	.loc 1 1126 0
	.cfi_startproc
.LVL294:
	.loc 1 1127 0
	addis 3,3,0xffff
.LVL295:
	addi 3,3,31552
.LVL296:
	cmplwi 7,3,8
	bgt- 7,.L365
	.loc 1 1133 0
	lis 9,cur_tex_client@ha
	stw 3,cur_tex_client@l(9)
	blr
.L365:
.LVL297:
.LBB351:
.LBB352:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1129
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE352:
.LBE351:
	.cfi_endproc
.LFE121:
	.size	glClientActiveTextureARB, .-glClientActiveTextureARB
	.align 2
	.globl glActiveTextureARB
	.type	glActiveTextureARB, @function
glActiveTextureARB:
.LFB122:
	.loc 1 1137 0
	.cfi_startproc
.LVL298:
	.loc 1 1138 0
	addis 3,3,0xffff
.LVL299:
	.loc 1 1137 0
	mflr 0
	.loc 1 1138 0
	addi 3,3,31552
.LVL300:
	.loc 1 1137 0
	stwu 1,-8(1)
.LCFI78:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1138 0
	cmplwi 7,3,8
	.loc 1 1137 0
	stw 0,12(1)
	.loc 1 1138 0
	bgt- 7,.L369
	.cfi_offset 65, 4
	.loc 1 1146 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	.loc 1 1144 0
	lis 9,cur_tex@ha
	stw 3,cur_tex@l(9)
	.loc 1 1146 0
	cmpwi 7,0,5890
	beq- 7,.L370
	.loc 1 1150 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI79:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L369:
.LCFI80:
	.cfi_restore_state
.LVL301:
.LBB353:
.LBB354:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1140
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.LBE354:
.LBE353:
	.loc 1 1150 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI81:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL302:
.L370:
.LCFI82:
	.cfi_restore_state
	.loc 1 1148 0
	li 3,5890
.LVL303:
	bl glMatrixMode
.LVL304:
	.loc 1 1150 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI83:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE122:
	.size	glActiveTextureARB, .-glActiveTextureARB
	.align 2
	.globl glGetIntegerv
	.type	glGetIntegerv, @function
glGetIntegerv:
.LFB123:
	.loc 1 1152 0
	.cfi_startproc
.LVL305:
	mflr 0
	stwu 1,-32(1)
.LCFI84:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 1153 0
	lis 9,cur_state@ha
	.loc 1 1152 0
	stw 31,28(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,36(1)
	.loc 1 1153 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L397
	.loc 1 1155 0
	cmpwi 7,4,0
	beq- 7,.L371
	.loc 1 1157 0
	cmplwi 7,3,3359
	ble- 7,.L398
	cmpwi 7,3,3385
	beq- 7,.L387
	cmplwi 7,3,3385
	bgt- 7,.L394
	cmpwi 7,3,3381
	beq- 7,.L384
	cmplwi 7,3,3381
	ble- 7,.L399
	cmpwi 7,3,3382
	beq- 7,.L385
	cmpwi 7,3,3384
	bne+ 7,.L374
	.loc 1 1189 0
	lis 3,projection_stack@ha
.LVL306:
	la 3,projection_stack@l(3)
	bl MaxStackSize
.LVL307:
	stw 3,0(31)
.LVL308:
.L371:
	.loc 1 1250 0
	lwz 0,36(1)
	lwz 31,28(1)
.LVL309:
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
.LCFI85:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL310:
.L398:
.LCFI86:
	.cfi_restore_state
	.loc 1 1157 0
	cmplwi 7,3,3352
	bge- 7,.L381
	cmplwi 7,3,3317
	bgt- 7,.L392
	cmplwi 7,3,3312
	bge- 7,.L380
	cmpwi 7,3,2979
	beq- 7,.L377
	cmplwi 7,3,2979
	bgt- 7,.L393
	cmpwi 7,3,2976
	beq- 7,.L375
	cmpwi 7,3,2978
	bne+ 7,.L374
	.loc 1 1240 0
	lis 9,viewPort@ha
	lwz 0,viewPort@l(9)
	la 9,viewPort@l(9)
	stw 0,0(4)
	.loc 1 1241 0
	lwz 0,4(9)
	stw 0,4(4)
	.loc 1 1242 0
	lwz 0,8(9)
	stw 0,8(4)
	.loc 1 1243 0
	lwz 0,12(9)
	stw 0,12(4)
	.loc 1 1244 0
	b .L371
.L397:
.LVL311:
.LBB355:
.LBB356:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1153
	lis 9,glErrLine@ha
.LBE356:
.LBE355:
	.loc 1 1250 0
	lwz 31,28(1)
.LBB358:
.LBB357:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LBE357:
.LBE358:
	.loc 1 1250 0
	lwz 0,36(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 31
.LCFI87:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL312:
.L394:
.LCFI88:
	.cfi_restore_state
	.loc 1 1157 0
	cmplwi 7,3,32878
	ble- 7,.L400
	xoris 0,3,0xffff
	cmpwi 7,0,-32535
	beq 7,.L389
	xoris 0,3,0xffff
	cmpwi 7,0,-31518
	beq 7,.L390
	xoris 0,3,0xffff
	cmpwi 7,0,-32536
	beq 7,.L389
.L374:
.LVL313:
.LBB359:
.LBB360:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1246
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.LBE360:
.LBE359:
	.loc 1 1247 0
	li 0,0
	stw 0,0(31)
	.loc 1 1248 0
	b .L371
.LVL314:
.L392:
	.loc 1 1157 0
	cmplwi 7,3,3328
	blt- 7,.L374
	cmplwi 7,3,3333
	ble- 7,.L380
	addi 0,3,-3344
	cmplwi 7,0,5
	bgt- 7,.L374
.L381:
.LBB361:
	.loc 1 1235 0
	addi 4,1,8
.LVL315:
	bl _glGetPixelTransferf
.LVL316:
	.loc 1 1236 0
	lfs 0,8(1)
	fctiwz 0,0
	stfiwx 0,0,31
.LBE361:
	.loc 1 1238 0
	b .L371
.LVL317:
.L387:
	.loc 1 1186 0
	lis 3,texture_stack@ha
.LVL318:
	la 3,texture_stack@l(3)
	bl MaxStackSize
	stw 3,0(31)
	.loc 1 1187 0
	b .L371
.LVL319:
.L400:
	.loc 1 1157 0
	cmplwi 7,3,32875
	bge- 7,.L380
	cmpwi 7,3,3387
	bne+ 7,.L374
.L384:
	.loc 1 1199 0
	li 0,16
	stw 0,0(31)
	.loc 1 1200 0
	b .L371
.L399:
	.loc 1 1157 0
	cmpwi 7,3,3377
	beq- 7,.L390
	cmpwi 7,3,3379
	bne+ 7,.L374
	.loc 1 1166 0
	li 0,1024
	stw 0,0(4)
	.loc 1 1167 0
	b .L371
.L380:
	.loc 1 1217 0
	mr 4,31
	bl _glGetPixelStore
.LVL320:
	.loc 1 1218 0
	b .L371
.LVL321:
.L390:
	.loc 1 1171 0
	li 0,8
	stw 0,0(31)
	.loc 1 1172 0
	b .L371
.L389:
	.loc 1 1195 0
	li 0,32000
	stw 0,0(31)
	.loc 1 1196 0
	b .L371
.L385:
	.loc 1 1183 0
	lis 3,model_stack@ha
.LVL322:
	la 3,model_stack@l(3)
	bl MaxStackSize
	stw 3,0(31)
	.loc 1 1184 0
	b .L371
.LVL323:
.L375:
	.loc 1 1160 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	stw 0,0(4)
	.loc 1 1161 0
	b .L371
.L377:
	.loc 1 1174 0
	lis 3,model_stack@ha
.LVL324:
	la 3,model_stack@l(3)
	bl StackSize
	stw 3,0(31)
	.loc 1 1175 0
	b .L371
.LVL325:
.L393:
	.loc 1 1157 0
	cmpwi 7,3,2980
	beq- 7,.L378
	cmpwi 7,3,2981
	bne+ 7,.L374
	.loc 1 1177 0
	lis 3,texture_stack@ha
.LVL326:
	la 3,texture_stack@l(3)
	bl StackSize
	stw 3,0(31)
	.loc 1 1178 0
	b .L371
.LVL327:
.L378:
	.loc 1 1180 0
	lis 3,projection_stack@ha
.LVL328:
	la 3,projection_stack@l(3)
	bl StackSize
	stw 3,0(31)
	.loc 1 1181 0
	b .L371
	.cfi_endproc
.LFE123:
	.size	glGetIntegerv, .-glGetIntegerv
	.align 2
	.globl glGetFloatv
	.type	glGetFloatv, @function
glGetFloatv:
.LFB119:
	.loc 1 1038 0
	.cfi_startproc
.LVL329:
	mflr 0
	stwu 1,-40(1)
.LCFI89:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 1039 0
	lis 9,cur_state@ha
	.loc 1 1038 0
	stw 31,36(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,44(1)
	.loc 1 1039 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L416
	.loc 1 1041 0
	cmpwi 7,4,0
	beq- 7,.L417
	.loc 1 1047 0
	cmplwi 7,3,3359
	ble- 7,.L418
	cmplwi 7,3,32878
	ble- 7,.L419
	xoris 0,3,0xffff
	cmpwi 7,0,-31518
	beq 7,.L406
	cmplwi 7,3,34018
	ble- 7,.L420
	xoris 0,3,0xffff
	cmpwi 7,0,-31489
	bne 7,.L405
	.loc 1 1050 0
	lis 9,.LC14@ha
	lwz 0,.LC14@l(9)
	stw 0,0(4)
.L407:
	.loc 1 1054 0
	mr 4,31
.LVL330:
	bl _glGetMatrixf
.LVL331:
	.loc 1 1109 0
	lwz 0,44(1)
	lwz 31,36(1)
.LVL332:
	mtlr 0
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 31
.LCFI90:
	.cfi_def_cfa_offset 0
	blr
.LVL333:
.L418:
.LCFI91:
	.cfi_restore_state
	.loc 1 1047 0
	cmplwi 7,3,3352
	bge- 7,.L408
	cmplwi 7,3,3317
	bgt- 7,.L411
	cmplwi 7,3,3312
	bge- 7,.L406
	cmplwi 7,3,2981
	bgt- 7,.L412
	cmplwi 7,3,2979
	bge- 7,.L406
	cmpwi 7,3,2976
	bne+ 7,.L405
.L406:
.LBB362:
	.loc 1 1102 0
	addi 4,1,8
.LVL334:
	bl glGetIntegerv
.LVL335:
	.loc 1 1103 0
	lwz 0,8(1)
	lis 9,.LC3@ha
	xoris 0,0,0x8000
	lfs 0,.LC3@l(9)
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lfd 13,24(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,0(31)
.L405:
.LVL336:
.LBE362:
.LBB363:
.LBB364:
	.loc 1 1273 0
	li 0,1280
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1106
	lis 9,glErrLine@ha
.LBE364:
.LBE363:
	.loc 1 1109 0
	lwz 31,36(1)
.LVL337:
.LBB366:
.LBB365:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LBE365:
.LBE366:
	.loc 1 1109 0
	lwz 0,44(1)
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 31
.LCFI92:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL338:
.L416:
.LCFI93:
	.cfi_restore_state
.LBB367:
.LBB368:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1039
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
.LVL339:
.L401:
.LBE368:
.LBE367:
	.loc 1 1109 0
	lwz 0,44(1)
	lwz 31,36(1)
	mtlr 0
	addi 1,1,40
	.cfi_remember_state
.LCFI94:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.L419:
.LCFI95:
	.cfi_restore_state
	.loc 1 1047 0
	cmplwi 7,3,32875
	bge- 7,.L406
	cmpwi 7,3,3382
	beq- 7,.L406
	cmplwi 7,3,3382
	bgt- 7,.L414
	cmpwi 7,3,3377
	beq- 7,.L406
	cmpwi 7,3,3379
	bne+ 7,.L405
	b .L406
.L411:
	cmplwi 7,3,3328
	blt- 7,.L405
	cmplwi 7,3,3333
	ble- 7,.L406
	addi 0,3,-3344
	cmplwi 7,0,5
	bgt- 7,.L405
.L408:
	.loc 1 1070 0
	mr 4,31
.LVL340:
	bl _glGetPixelTransferf
.LVL341:
	.loc 1 1109 0
	lwz 0,44(1)
	lwz 31,36(1)
.LVL342:
	mtlr 0
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 31
.LCFI96:
	.cfi_def_cfa_offset 0
	blr
.LVL343:
.L417:
.LCFI97:
	.cfi_restore_state
.LBB369:
.LBB370:
	.loc 1 1273 0
	li 0,1281
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1043
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	b .L401
.LVL344:
.L420:
.LBE370:
.LBE369:
	.loc 1 1047 0
	addis 9,3,0xffff
	addi 0,9,32536
	cmplwi 7,0,1
	bgt- 7,.L405
	b .L406
.L414:
	addi 0,3,-3384
	cmplwi 7,0,1
	bgt- 7,.L405
	b .L406
.L412:
	cmplwi 7,3,2984
	bgt- 7,.L405
	b .L407
	.cfi_endproc
.LFE119:
	.size	glGetFloatv, .-glGetFloatv
	.align 2
	.globl glLineWidth
	.type	glLineWidth, @function
glLineWidth:
.LFB124:
	.loc 1 1253 0
	.cfi_startproc
.LVL345:
	.loc 1 1254 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L424
	.loc 1 1256 0
	lis 9,line_width@ha
	stfs 1,line_width@l(9)
	blr
.L424:
.LVL346:
.LBB371:
.LBB372:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1254
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE372:
.LBE371:
	.cfi_endproc
.LFE124:
	.size	glLineWidth, .-glLineWidth
	.align 2
	.globl glPointSize
	.type	glPointSize, @function
glPointSize:
.LFB125:
	.loc 1 1260 0
	.cfi_startproc
.LVL347:
	.loc 1 1261 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L428
	.loc 1 1263 0
	lis 9,point_size@ha
	stfs 1,point_size@l(9)
	blr
.L428:
.LVL348:
.LBB373:
.LBB374:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1261
	lis 9,glErrLine@ha
	stw 0,glErrLine@l(9)
	blr
.LBE374:
.LBE373:
	.cfi_endproc
.LFE125:
	.size	glPointSize, .-glPointSize
	.align 2
	.globl _glSetErrorEx
	.type	_glSetErrorEx, @function
_glSetErrorEx:
.LFB126:
	.loc 1 1272 0
	.cfi_startproc
.LVL349:
	.loc 1 1273 0
	lis 9,glErrCode@ha
	.loc 1 1276 0
	.loc 1 1273 0
	stw 3,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,glErrFile@ha
	stw 4,glErrFile@l(9)
	.loc 1 1275 0
	lis 9,glErrLine@ha
	stw 5,glErrLine@l(9)
	.loc 1 1276 0
	blr
	.cfi_endproc
.LFE126:
	.size	_glSetErrorEx, .-_glSetErrorEx
	.align 2
	.globl glGetError
	.type	glGetError, @function
glGetError:
.LFB127:
	.loc 1 1278 0
	.cfi_startproc
	.loc 1 1279 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 0,0,1
	bne- 0,.L433
	.loc 1 1281 0
	lis 9,glErrCode@ha
	lwz 3,glErrCode@l(9)
.LVL350:
	.loc 1 1282 0
	stw 0,glErrCode@l(9)
	.loc 1 1284 0
	blr
.LVL351:
.L433:
.LBB375:
.LBB376:
	.loc 1 1273 0
	li 0,1282
	lis 9,glErrCode@ha
	stw 0,glErrCode@l(9)
	.loc 1 1274 0
	lis 9,.LC0@ha
	la 0,.LC0@l(9)
	lis 9,glErrFile@ha
	stw 0,glErrFile@l(9)
	.loc 1 1275 0
	li 0,1279
	lis 9,glErrLine@ha
.LBE376:
.LBE375:
	.loc 1 1279 0
	li 3,0
.LBB378:
.LBB377:
	.loc 1 1275 0
	stw 0,glErrLine@l(9)
.LBE377:
.LBE378:
	.loc 1 1279 0
	blr
	.cfi_endproc
.LFE127:
	.size	glGetError, .-glGetError
	.align 2
	.globl glColorMask
	.type	glColorMask, @function
glColorMask:
.LFB128:
	.loc 1 1290 0
	.cfi_startproc
.LVL352:
	.loc 1 1291 0
	xori 3,3,1
.LVL353:
	.loc 1 1292 0
	xori 4,4,1
.LVL354:
	.loc 1 1293 0
	xori 5,5,1
.LVL355:
	.loc 1 1294 0
	xori 6,6,1
.LVL356:
	.loc 1 1291 0
	lis 11,color_write_mask@ha
	cntlzw 3,3
	.loc 1 1292 0
	cntlzw 4,4
	.loc 1 1293 0
	cntlzw 5,5
	.loc 1 1294 0
	cntlzw 6,6
	.loc 1 1291 0
	la 9,color_write_mask@l(11)
	srwi 3,3,5
	.loc 1 1292 0
	srwi 4,4,5
	.loc 1 1293 0
	srwi 5,5,5
	.loc 1 1294 0
	srwi 6,6,5
	.loc 1 1292 0
	stb 4,1(9)
	.loc 1 1293 0
	stb 5,2(9)
	.loc 1 1294 0
	stb 6,3(9)
	.loc 1 1295 0
	.loc 1 1291 0
	stb 3,color_write_mask@l(11)
	.loc 1 1295 0
	blr
	.cfi_endproc
.LFE128:
	.size	glColorMask, .-glColorMask
	.globl glErrLine
	.globl glErrFile
	.globl glErrCode
	.comm	_alphatest_ref,4,4
	.comm	_alphatest_func,4,4
	.comm	_alphatest_dirty,1,1
	.comm	_alphatest_enabled,1,1
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
.LC10:
	.4byte	1325400064
.LC14:
	.4byte	1082130432
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC9:
	.4byte	0
	.4byte	0
.LC11:
	.4byte	1075195458
	.4byte	-17155559
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl.c"
	.zero	2
.LC12:
	.string	"glEnable invalind enum, 0x%X\n"
	.zero	2
.LC13:
	.string	"glDisable invalind enum, 0x%X\n"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	glErrLine, @object
	.size	glErrLine, 4
glErrLine:
	.zero	4
	.type	glErrFile, @object
	.size	glErrFile, 4
glErrFile:
	.zero	4
	.type	glErrCode, @object
	.size	glErrCode, 4
glErrCode:
	.zero	4
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 5 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 7 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/glint.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x29d1
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF269
	.byte	0x1
	.4byte	.LASF270
	.4byte	.LASF271
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x7
	.4byte	0x71
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
	.byte	0x3
	.byte	0x93
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x94
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x95
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x99
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x9a
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x3
	.byte	0x9d
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x3
	.byte	0x9e
	.4byte	0x91
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x3
	.byte	0x9f
	.4byte	0x91
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x3
	.byte	0xa0
	.4byte	0x8a
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x3
	.byte	0xa1
	.4byte	0x8a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11e
	.uleb128 0x7
	.4byte	0xec
	.uleb128 0x6
	.byte	0x4
	.4byte	0xec
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x135
	.uleb128 0x7
	.4byte	0x102
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x4
	.byte	0x2a
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x4
	.byte	0x50
	.4byte	0x30
	.uleb128 0x6
	.byte	0x4
	.4byte	0x102
	.uleb128 0x8
	.string	"u8"
	.byte	0x5
	.byte	0x11
	.4byte	0x13a
	.uleb128 0x8
	.string	"u32"
	.byte	0x5
	.byte	0x13
	.4byte	0x145
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
	.4byte	.LASF27
	.uleb128 0x6
	.byte	0x4
	.4byte	0x18d
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0xc
	.byte	0x6
	.byte	0x5e
	.4byte	0x1bf
	.uleb128 0xc
	.string	"x"
	.byte	0x6
	.byte	0x5f
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"y"
	.byte	0x6
	.byte	0x5f
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"z"
	.byte	0x6
	.byte	0x5f
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x6
	.byte	0x60
	.4byte	0x18e
	.uleb128 0x8
	.string	"Mtx"
	.byte	0x6
	.byte	0x73
	.4byte	0x1d5
	.uleb128 0xd
	.4byte	0x16b
	.4byte	0x1eb
	.uleb128 0xe
	.4byte	0x30
	.byte	0x2
	.uleb128 0xe
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x6
	.byte	0x89
	.4byte	0x1f6
	.uleb128 0xd
	.4byte	0x16b
	.4byte	0x20c
	.uleb128 0xe
	.4byte	0x30
	.byte	0x3
	.uleb128 0xe
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF272
	.byte	0x4
	.byte	0x7
	.2byte	0x490
	.4byte	0x26c
	.uleb128 0x10
	.string	"U8"
	.byte	0x7
	.2byte	0x492
	.4byte	0x26c
	.uleb128 0x10
	.string	"S8"
	.byte	0x7
	.2byte	0x493
	.4byte	0x271
	.uleb128 0x10
	.string	"U16"
	.byte	0x7
	.2byte	0x494
	.4byte	0x276
	.uleb128 0x10
	.string	"S16"
	.byte	0x7
	.2byte	0x495
	.4byte	0x27b
	.uleb128 0x10
	.string	"U32"
	.byte	0x7
	.2byte	0x496
	.4byte	0x17b
	.uleb128 0x10
	.string	"S32"
	.byte	0x7
	.2byte	0x497
	.4byte	0x280
	.uleb128 0x10
	.string	"F32"
	.byte	0x7
	.2byte	0x498
	.4byte	0x176
	.byte	0
	.uleb128 0x9
	.4byte	0x37
	.uleb128 0x9
	.4byte	0x47
	.uleb128 0x9
	.4byte	0x3e
	.uleb128 0x9
	.4byte	0x4e
	.uleb128 0x9
	.4byte	0x55
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x7
	.2byte	0x499
	.4byte	0x20c
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x4
	.byte	0x7
	.2byte	0x49e
	.4byte	0x2d3
	.uleb128 0x13
	.string	"r"
	.byte	0x7
	.2byte	0x49f
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"g"
	.byte	0x7
	.2byte	0x4a0
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.string	"b"
	.byte	0x7
	.2byte	0x4a1
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x13
	.string	"a"
	.byte	0x7
	.2byte	0x4a2
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x7
	.2byte	0x4a3
	.4byte	0x291
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x40
	.byte	0x7
	.2byte	0x4f1
	.4byte	0x2fc
	.uleb128 0x13
	.string	"val"
	.byte	0x7
	.2byte	0x4f2
	.4byte	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	0x160
	.4byte	0x30c
	.uleb128 0xe
	.4byte	0x30
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x7
	.2byte	0x4f3
	.4byte	0x2df
	.uleb128 0x14
	.byte	0x10
	.byte	0x8
	.byte	0x15
	.4byte	0x339
	.uleb128 0xc
	.string	"v"
	.byte	0x8
	.byte	0x17
	.4byte	0x1bf
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
	.4byte	.LASF36
	.byte	0x8
	.byte	0x19
	.4byte	0x318
	.uleb128 0x14
	.byte	0x8
	.byte	0x8
	.byte	0x1b
	.4byte	0x365
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
	.4byte	.LASF37
	.byte	0x8
	.byte	0x1f
	.4byte	0x344
	.uleb128 0x14
	.byte	0x10
	.byte	0x8
	.byte	0x21
	.4byte	0x3a9
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
	.4byte	.LASF38
	.byte	0x8
	.byte	0x27
	.4byte	0x370
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x14
	.byte	0x8
	.byte	0x42
	.4byte	0x405
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x8
	.byte	0x44
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"p"
	.byte	0x8
	.byte	0x45
	.4byte	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x8
	.byte	0x46
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x8
	.byte	0x47
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x8
	.byte	0x48
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x8
	.byte	0x49
	.4byte	0x3b4
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x4c
	.byte	0x8
	.byte	0x70
	.4byte	0x455
	.uleb128 0xc
	.string	"mat"
	.byte	0x8
	.byte	0x72
	.4byte	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x8
	.byte	0x73
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x8
	.byte	0x74
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x8
	.byte	0x75
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x8
	.byte	0x76
	.4byte	0x410
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x4a5
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x9
	.byte	0xe
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x9
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x9
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x9
	.byte	0x12
	.4byte	0x460
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xa4
	.byte	0x8
	.byte	0x83
	.4byte	0x56b
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x8
	.byte	0x85
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"obj"
	.byte	0x8
	.byte	0x87
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"pos"
	.byte	0x8
	.byte	0x89
	.4byte	0x339
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x8
	.byte	0x8b
	.4byte	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x8
	.byte	0x8d
	.4byte	0x3a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x8
	.byte	0x8e
	.4byte	0x3a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x8
	.byte	0x8f
	.4byte	0x3a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x8
	.byte	0x91
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x8
	.byte	0x92
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x8
	.byte	0x93
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x8
	.byte	0x94
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x8
	.byte	0x95
	.4byte	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x8
	.byte	0x96
	.4byte	0x4b0
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x44
	.byte	0x8
	.byte	0xa0
	.4byte	0x5c9
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x8
	.byte	0xa2
	.4byte	0x3a9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x8
	.byte	0xa3
	.4byte	0x3a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x8
	.byte	0xa4
	.4byte	0x3a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x8
	.byte	0xa5
	.4byte	0x3a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x8
	.byte	0xa6
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x8
	.byte	0xa7
	.4byte	0x576
	.uleb128 0x16
	.4byte	.LASF273
	.byte	0x4
	.byte	0x8
	.byte	0xbf
	.4byte	0x5f3
	.uleb128 0x17
	.4byte	.LASF70
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF71
	.sleb128 1
	.uleb128 0x17
	.4byte	.LASF72
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x8
	.byte	0xc4
	.4byte	0x5d4
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x10
	.byte	0x8
	.byte	0xe8
	.4byte	0x63f
	.uleb128 0xc
	.string	"x"
	.byte	0x8
	.byte	0xea
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"y"
	.byte	0x8
	.byte	0xeb
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x8
	.byte	0xec
	.4byte	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x8
	.byte	0xed
	.4byte	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x8
	.byte	0xee
	.4byte	0x5fe
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x14
	.byte	0x8
	.byte	0xfb
	.4byte	0x6ae
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x8
	.byte	0xfd
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x8
	.byte	0xfe
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x8
	.byte	0xff
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x100
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x101
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x102
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x103
	.4byte	0x64a
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x8
	.byte	0x8
	.2byte	0x117
	.4byte	0x6e6
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x119
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x11a
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x11b
	.4byte	0x6ba
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x6c
	.byte	0x8
	.2byte	0x127
	.4byte	0x84a
	.uleb128 0x18
	.4byte	.LASF55
	.byte	0x8
	.2byte	0x129
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x12b
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x12c
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x12d
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x12e
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x12f
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x130
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x131
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x132
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x133
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x134
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x18
	.4byte	.LASF46
	.byte	0x8
	.2byte	0x136
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x138
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x139
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x13b
	.4byte	0x84a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x13c
	.4byte	0x84a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x13d
	.4byte	0x84a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x13e
	.4byte	0x84a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x13
	.string	"tex"
	.byte	0x8
	.2byte	0x140
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x142
	.4byte	0x3a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x144
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x145
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0
	.uleb128 0xd
	.4byte	0x9f
	.4byte	0x85a
	.uleb128 0xe
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x146
	.4byte	0x6f2
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF110
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.byte	0x1
	.4byte	0x890
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.byte	0xcd
	.4byte	0xec
	.uleb128 0x1a
	.string	"y"
	.byte	0x1
	.byte	0xcd
	.4byte	0xec
	.uleb128 0x1a
	.string	"z"
	.byte	0x1
	.byte	0xcd
	.4byte	0xec
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF111
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.4byte	0x8c3
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.byte	0xdb
	.4byte	0xec
	.uleb128 0x1a
	.string	"g"
	.byte	0x1
	.byte	0xdb
	.4byte	0xec
	.uleb128 0x1a
	.string	"b"
	.byte	0x1
	.byte	0xdb
	.4byte	0xec
	.uleb128 0x1a
	.string	"a"
	.byte	0x1
	.byte	0xdb
	.4byte	0xec
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x4f7
	.byte	0x1
	.byte	0x1
	.4byte	0x8f5
	.uleb128 0x1c
	.string	"e"
	.byte	0x1
	.2byte	0x4f7
	.4byte	0x9f
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x4f7
	.4byte	0x78
	.uleb128 0x1d
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x4f7
	.4byte	0x55
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x2b5
	.byte	0x1
	.4byte	0xec
	.byte	0x1
	.4byte	0x912
	.uleb128 0x1c
	.string	"d"
	.byte	0x1
	.2byte	0x2b5
	.4byte	0xec
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x2c4
	.byte	0x1
	.byte	0x1
	.4byte	0x93a
	.uleb128 0x1d
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x9f
	.uleb128 0x1d
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x2c4
	.4byte	0xec
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x135
	.byte	0x1
	.4byte	0x55
	.byte	0x1
	.4byte	0x966
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x135
	.4byte	0x9f
	.uleb128 0x20
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x137
	.4byte	0x55
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.byte	0x1
	.4byte	0x999
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.byte	0xb4
	.4byte	0xec
	.uleb128 0x1a
	.string	"y"
	.byte	0x1
	.byte	0xb4
	.4byte	0xec
	.uleb128 0x1a
	.string	"z"
	.byte	0x1
	.byte	0xb4
	.4byte	0xec
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.4byte	0x55
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x9f5
	.uleb128 0x23
	.4byte	.LASF121
	.byte	0x1
	.byte	0x15
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF46
	.byte	0x1
	.byte	0x15
	.4byte	0x9f
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB158
	.4byte	.LBE158
	.byte	0x1
	.byte	0x15
	.uleb128 0x25
	.4byte	0x8e8
	.byte	0x15
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa53
	.uleb128 0x23
	.4byte	.LASF124
	.byte	0x1
	.byte	0x17
	.4byte	0xec
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x23
	.4byte	.LASF125
	.byte	0x1
	.byte	0x17
	.4byte	0xec
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB160
	.4byte	.LBE160
	.byte	0x1
	.byte	0x17
	.uleb128 0x25
	.4byte	0x8e8
	.byte	0x17
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xaaf
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x1
	.byte	0x19
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF117
	.byte	0x1
	.byte	0x19
	.4byte	0xc0
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB162
	.4byte	.LBE162
	.byte	0x1
	.byte	0x19
	.uleb128 0x25
	.4byte	0x8e8
	.byte	0x19
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xaef
	.uleb128 0x23
	.4byte	.LASF128
	.byte	0x1
	.byte	0x1d
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x1
	.byte	0x1d
	.4byte	0x9f
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF117
	.byte	0x1
	.byte	0x1d
	.4byte	0xc0
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xb4b
	.uleb128 0x23
	.4byte	.LASF130
	.byte	0x1
	.byte	0x1f
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF46
	.byte	0x1
	.byte	0x1f
	.4byte	0x9f
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB164
	.4byte	.LBE164
	.byte	0x1
	.byte	0x1f
	.uleb128 0x25
	.4byte	0x8e8
	.byte	0x1f
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xb9a
	.uleb128 0x23
	.4byte	.LASF46
	.byte	0x1
	.byte	0x23
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB166
	.4byte	.LBE166
	.byte	0x1
	.byte	0x23
	.uleb128 0x25
	.4byte	0x8e8
	.byte	0x23
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xbf6
	.uleb128 0x23
	.4byte	.LASF133
	.byte	0x1
	.byte	0x25
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.byte	0x25
	.4byte	0x12f
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB168
	.4byte	.LBE168
	.byte	0x1
	.byte	0x25
	.uleb128 0x25
	.4byte	0x8e8
	.byte	0x25
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF135
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xc81
	.uleb128 0x23
	.4byte	.LASF130
	.byte	0x1
	.byte	0x29
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF46
	.byte	0x1
	.byte	0x29
	.4byte	0x9f
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	0x8c3
	.4byte	.LBB170
	.4byte	.LBE170
	.byte	0x1
	.byte	0x34
	.4byte	0xc57
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST0
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST1
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST2
	.byte	0
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB172
	.4byte	.LBE172
	.byte	0x1
	.byte	0x2b
	.uleb128 0x25
	.4byte	0x8e8
	.byte	0x2b
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xd3d
	.uleb128 0x23
	.4byte	.LASF137
	.byte	0x1
	.byte	0x38
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF138
	.byte	0x1
	.byte	0x38
	.4byte	0x9f
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	0x8c3
	.4byte	.LBB174
	.4byte	.LBE174
	.byte	0x1
	.byte	0x47
	.4byte	0xce2
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST3
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST4
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST5
	.byte	0
	.uleb128 0x28
	.4byte	0x8c3
	.4byte	.LBB176
	.4byte	.LBE176
	.byte	0x1
	.byte	0x3a
	.4byte	0xd11
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST6
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST7
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST8
	.byte	0
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB178
	.4byte	.LBE178
	.byte	0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST9
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF139
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xdde
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.byte	0x58
	.4byte	0xc0
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.byte	0x58
	.4byte	0xc0
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF75
	.byte	0x1
	.byte	0x58
	.4byte	0xe1
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF76
	.byte	0x1
	.byte	0x58
	.4byte	0xe1
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.4byte	0x8c3
	.4byte	.LBB180
	.4byte	.LBE180
	.byte	0x1
	.byte	0x5e
	.4byte	0xdb4
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST12
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST13
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST14
	.byte	0
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB182
	.4byte	.LBE182
	.byte	0x1
	.byte	0x5a
	.uleb128 0x25
	.4byte	0x8e8
	.byte	0x5a
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF140
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xe5e
	.uleb128 0x23
	.4byte	.LASF46
	.byte	0x1
	.byte	0x68
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	0x8c3
	.4byte	.LBB184
	.4byte	.LBE184
	.byte	0x1
	.byte	0x78
	.4byte	0xe32
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST15
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST16
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST17
	.byte	0
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB186
	.4byte	.LBE186
	.byte	0x1
	.byte	0x6a
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST18
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST19
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xedc
	.uleb128 0x23
	.4byte	.LASF46
	.byte	0x1
	.byte	0x7d
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	0x8c3
	.4byte	.LBB188
	.4byte	.LBE188
	.byte	0x1
	.byte	0x87
	.4byte	0xeb2
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST21
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST22
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST23
	.byte	0
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB190
	.4byte	.LBE190
	.byte	0x1
	.byte	0x7f
	.uleb128 0x25
	.4byte	0x8e8
	.byte	0x7f
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF142
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	.LFB76
	.4byte	.LFE76
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xf3c
	.uleb128 0x2b
	.4byte	.LASF143
	.byte	0x1
	.byte	0x90
	.4byte	0x10d
	.4byte	.LLST24
	.uleb128 0x2b
	.4byte	.LASF144
	.byte	0x1
	.byte	0x90
	.4byte	0x10d
	.4byte	.LLST25
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB192
	.4byte	.LBE192
	.byte	0x1
	.byte	0x92
	.uleb128 0x25
	.4byte	0x8e8
	.byte	0x92
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xfae
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.byte	0x98
	.4byte	0xc0
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.byte	0x99
	.4byte	0xc0
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9a
	.4byte	0xe1
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF76
	.byte	0x1
	.byte	0x9b
	.4byte	0xe1
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.4byte	0x8c3
	.4byte	.LBB194
	.4byte	.LBE194
	.byte	0x1
	.byte	0x9d
	.uleb128 0x25
	.4byte	0x8e8
	.byte	0x9d
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0x966
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST26
	.4byte	0x1048
	.uleb128 0x26
	.4byte	0x974
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x26
	.4byte	0x97d
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x26
	.4byte	0x986
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x2d
	.4byte	0x98f
	.uleb128 0x2e
	.4byte	0x966
	.4byte	.LBB202
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb4
	.4byte	0x101e
	.uleb128 0x29
	.4byte	0x986
	.4byte	.LLST27
	.uleb128 0x29
	.4byte	0x97d
	.4byte	.LLST28
	.uleb128 0x29
	.4byte	0x974
	.4byte	.LLST29
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x30
	.4byte	0x98f
	.4byte	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0x8c3
	.4byte	.LBB206
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xb7
	.uleb128 0x25
	.4byte	0x8e8
	.byte	0xb7
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x505
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF146
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1095
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.byte	0xb0
	.4byte	0xec
	.4byte	.LLST31
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.byte	0xb0
	.4byte	0xec
	.4byte	.LLST32
	.uleb128 0x32
	.string	"z"
	.byte	0x1
	.byte	0xb0
	.4byte	0xec
	.4byte	.LLST33
	.uleb128 0x32
	.string	"w"
	.byte	0x1
	.byte	0xb0
	.4byte	0xec
	.4byte	.LLST34
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF147
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x10bb
	.uleb128 0x32
	.string	"v"
	.byte	0x1
	.byte	0xab
	.4byte	0x118
	.4byte	.LLST35
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF148
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x10ee
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.byte	0xa7
	.4byte	0xec
	.4byte	.LLST36
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.byte	0xa7
	.4byte	0xec
	.4byte	.LLST37
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF149
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LLST38
	.4byte	0x1122
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.byte	0xa3
	.4byte	0xc0
	.4byte	.LLST39
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.byte	0xa3
	.4byte	0xc0
	.4byte	.LLST40
	.byte	0
	.uleb128 0x34
	.4byte	0x866
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x114f
	.uleb128 0x26
	.4byte	0x874
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x26
	.4byte	0x87d
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x26
	.4byte	0x886
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x119b
	.uleb128 0x2a
	.string	"v"
	.byte	0x1
	.byte	0xd3
	.4byte	0x118
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	0x866
	.4byte	.LBB210
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xd4
	.uleb128 0x26
	.4byte	0x886
	.byte	0x2
	.byte	0x73
	.sleb128 8
	.uleb128 0x26
	.4byte	0x87d
	.byte	0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x26
	.4byte	0x874
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x890
	.4byte	.LFB86
	.4byte	.LFE86
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x11fe
	.uleb128 0x26
	.4byte	0x89e
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x26
	.4byte	0x8a7
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x26
	.4byte	0x8b0
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x26
	.4byte	0x8b9
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x24
	.4byte	0x890
	.4byte	.LBB220
	.4byte	.LBE220
	.byte	0x1
	.byte	0xdb
	.uleb128 0x35
	.4byte	.LBB221
	.4byte	.LBE221
	.uleb128 0x36
	.4byte	0x8b9
	.uleb128 0x36
	.4byte	0x8b0
	.uleb128 0x36
	.4byte	0x8a7
	.uleb128 0x36
	.4byte	0x89e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x123e
	.uleb128 0x32
	.string	"r"
	.byte	0x1
	.byte	0xd7
	.4byte	0xec
	.4byte	.LLST41
	.uleb128 0x32
	.string	"g"
	.byte	0x1
	.byte	0xd7
	.4byte	0xec
	.4byte	.LLST42
	.uleb128 0x32
	.string	"b"
	.byte	0x1
	.byte	0xd7
	.4byte	0xec
	.4byte	.LLST43
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF152
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1264
	.uleb128 0x32
	.string	"v"
	.byte	0x1
	.byte	0xf1
	.4byte	0x118
	.4byte	.LLST44
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF153
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LLST45
	.4byte	0x12ab
	.uleb128 0x32
	.string	"red"
	.byte	0x1
	.byte	0xf5
	.4byte	0xcb
	.4byte	.LLST46
	.uleb128 0x2b
	.4byte	.LASF154
	.byte	0x1
	.byte	0xf6
	.4byte	0xcb
	.4byte	.LLST47
	.uleb128 0x2b
	.4byte	.LASF155
	.byte	0x1
	.byte	0xf7
	.4byte	0xcb
	.4byte	.LLST48
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF156
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LLST49
	.4byte	0x1301
	.uleb128 0x32
	.string	"red"
	.byte	0x1
	.byte	0xfc
	.4byte	0xcb
	.4byte	.LLST50
	.uleb128 0x2b
	.4byte	.LASF154
	.byte	0x1
	.byte	0xfd
	.4byte	0xcb
	.4byte	.LLST51
	.uleb128 0x2b
	.4byte	.LASF155
	.byte	0x1
	.byte	0xfe
	.4byte	0xcb
	.4byte	.LLST52
	.uleb128 0x2b
	.4byte	.LASF157
	.byte	0x1
	.byte	0xff
	.4byte	0xcb
	.4byte	.LLST53
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x104
	.byte	0x1
	.4byte	.LFB90
	.4byte	.LFE90
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1329
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.2byte	0x104
	.4byte	0x118
	.4byte	.LLST54
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x10a
	.byte	0x1
	.4byte	.LFB91
	.4byte	.LFE91
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x135d
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xec
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x39
	.string	"t"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xec
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x10f
	.byte	0x1
	.4byte	.LFB92
	.4byte	.LFE92
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x139e
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.2byte	0x10f
	.4byte	0xec
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x39
	.string	"t"
	.byte	0x1
	.2byte	0x10f
	.4byte	0xec
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x39
	.string	"u"
	.byte	0x1
	.2byte	0x10f
	.4byte	0xec
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x115
	.byte	0x1
	.4byte	.LFB93
	.4byte	.LFE93
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x13c5
	.uleb128 0x39
	.string	"st"
	.byte	0x1
	.2byte	0x115
	.4byte	0x118
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x11b
	.byte	0x1
	.4byte	.LFB94
	.4byte	.LFE94
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x13ed
	.uleb128 0x39
	.string	"stu"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x118
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x124
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x147e
	.uleb128 0x3a
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x124
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x124
	.4byte	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB222
	.4byte	.LBE222
	.byte	0x1
	.2byte	0x130
	.4byte	0x1452
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST55
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST56
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST57
	.byte	0
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB224
	.4byte	.LBE224
	.byte	0x1
	.2byte	0x125
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x125
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x93a
	.4byte	.LFB96
	.4byte	.LFE96
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x14f6
	.uleb128 0x29
	.4byte	0x94d
	.4byte	.LLST58
	.uleb128 0x30
	.4byte	0x959
	.4byte	.LLST59
	.uleb128 0x3c
	.4byte	0x93a
	.4byte	.LBB230
	.4byte	.LBE230
	.byte	0x1
	.2byte	0x135
	.uleb128 0x35
	.4byte	.LBB231
	.4byte	.LBE231
	.uleb128 0x2d
	.4byte	0x959
	.uleb128 0x36
	.4byte	0x94d
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB232
	.4byte	.LBE232
	.byte	0x1
	.2byte	0x143
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST60
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST61
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST62
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x14a
	.byte	0x1
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	.LLST63
	.4byte	0x15ad
	.uleb128 0x3e
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x14a
	.4byte	0x9f
	.4byte	.LLST64
	.uleb128 0x3e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x14a
	.4byte	0x9f
	.4byte	.LLST65
	.uleb128 0x3e
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x14a
	.4byte	0xec
	.4byte	.LLST66
	.uleb128 0x3f
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x14d
	.4byte	0x55
	.4byte	.LLST67
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB234
	.4byte	.LBE234
	.byte	0x1
	.2byte	0x14b
	.4byte	0x1580
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST68
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST69
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST70
	.byte	0
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB236
	.4byte	.LBE236
	.byte	0x1
	.2byte	0x15a
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST71
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST72
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST73
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x15f
	.byte	0x1
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LLST74
	.4byte	0x168a
	.uleb128 0x3e
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x15f
	.4byte	0x9f
	.4byte	.LLST75
	.uleb128 0x3e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x15f
	.4byte	0x9f
	.4byte	.LLST76
	.uleb128 0x3e
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x15f
	.4byte	0x118
	.4byte	.LLST77
	.uleb128 0x3f
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x162
	.4byte	0x55
	.4byte	.LLST78
	.uleb128 0x40
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x167
	.4byte	0x1bf
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB238
	.4byte	.LBE238
	.byte	0x1
	.2byte	0x160
	.4byte	0x1647
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST79
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST80
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST81
	.byte	0
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0x41
	.string	"mvi"
	.byte	0x1
	.2byte	0x191
	.4byte	0x1ca
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB241
	.4byte	.LBE241
	.byte	0x1
	.2byte	0x197
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST82
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST83
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST84
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x19f
	.byte	0x1
	.4byte	.LFB99
	.4byte	.LFE99
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x16fb
	.uleb128 0x3a
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x19f
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x19f
	.4byte	0x9f
	.byte	0x1
	.byte	0x54
	.uleb128 0x3a
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x19f
	.4byte	0xec
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB244
	.4byte	.LBE244
	.byte	0x1
	.2byte	0x1a5
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST85
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST86
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST87
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x1aa
	.byte	0x1
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	.LLST88
	.4byte	0x1772
	.uleb128 0x3e
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x9f
	.4byte	.LLST89
	.uleb128 0x3e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x9f
	.4byte	.LLST90
	.uleb128 0x3e
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x118
	.4byte	.LLST91
	.uleb128 0x42
	.4byte	0x8c3
	.4byte	.LBB246
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.2byte	0x1cd
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST92
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST93
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST94
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x1d4
	.byte	0x1
	.4byte	.LFB101
	.4byte	.LFE101
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1830
	.uleb128 0x3a
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x9f
	.byte	0x1
	.byte	0x54
	.uleb128 0x3a
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x123
	.byte	0x1
	.byte	0x55
	.uleb128 0x3f
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x55
	.4byte	.LLST95
	.uleb128 0x43
	.string	"t"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x3a9
	.4byte	.LLST96
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB250
	.4byte	.LBE250
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x1803
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST97
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST98
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST99
	.byte	0
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB252
	.4byte	.LBE252
	.byte	0x1
	.2byte	0x1d6
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST100
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST101
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST102
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB103
	.4byte	.LFE103
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1883
	.uleb128 0x3a
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x240
	.4byte	0xb5
	.byte	0x1
	.byte	0x53
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB254
	.4byte	.LBE254
	.byte	0x1
	.2byte	0x241
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x241
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x277
	.byte	0x1
	.4byte	.LFB104
	.4byte	.LFE104
	.4byte	.LLST103
	.4byte	0x1908
	.uleb128 0x38
	.string	"red"
	.byte	0x1
	.2byte	0x277
	.4byte	0xf7
	.4byte	.LLST104
	.uleb128 0x3e
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x278
	.4byte	0xf7
	.4byte	.LLST105
	.uleb128 0x3e
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x279
	.4byte	0xf7
	.4byte	.LLST106
	.uleb128 0x3a
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x27a
	.4byte	0xf7
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x42
	.4byte	0x8c3
	.4byte	.LBB256
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x27c
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x27c
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x284
	.byte	0x1
	.4byte	.LFB105
	.4byte	.LFE105
	.4byte	.LLST107
	.4byte	0x195e
	.uleb128 0x3e
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x284
	.4byte	0x10d
	.4byte	.LLST108
	.uleb128 0x42
	.4byte	0x8c3
	.4byte	.LBB260
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.2byte	0x286
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x286
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x296
	.byte	0x1
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LLST109
	.4byte	0x19a5
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB264
	.4byte	.LBE264
	.byte	0x1
	.2byte	0x298
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST110
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST111
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST112
	.byte	0
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x2a1
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST113
	.4byte	0x19cd
	.uleb128 0x43
	.string	"p"
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x19cd
	.4byte	.LLST114
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x455
	.uleb128 0x2c
	.4byte	0x912
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST115
	.4byte	0x1af8
	.uleb128 0x26
	.4byte	0x921
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	0x92d
	.4byte	.LLST116
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB286
	.4byte	.LBE286
	.byte	0x1
	.2byte	0x2e4
	.4byte	0x1a28
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST117
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST118
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST119
	.byte	0
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB288
	.4byte	.LBE288
	.byte	0x1
	.2byte	0x2c6
	.4byte	0x1a58
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST120
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST121
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST122
	.byte	0
	.uleb128 0x45
	.4byte	0x8c3
	.4byte	.LBB290
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.2byte	0x2ea
	.4byte	0x1a88
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST123
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST124
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST125
	.byte	0
	.uleb128 0x45
	.4byte	0x912
	.4byte	.LBB294
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x1add
	.uleb128 0x29
	.4byte	0x92d
	.4byte	.LLST126
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0x100
	.uleb128 0x36
	.4byte	0x921
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB296
	.4byte	.LBE296
	.byte	0x1
	.2byte	0x2d7
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST127
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST128
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST129
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	0x8f5
	.4byte	.LBB299
	.4byte	.LBE299
	.byte	0x1
	.2byte	0x2e7
	.uleb128 0x29
	.4byte	0x907
	.4byte	.LLST130
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x2bf
	.byte	0x1
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST131
	.4byte	0x1b33
	.uleb128 0x3e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x2bf
	.4byte	0x9f
	.4byte	.LLST132
	.uleb128 0x3e
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x2bf
	.4byte	0xc0
	.4byte	.LLST133
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x2ef
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST134
	.4byte	0x1b99
	.uleb128 0x3e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x2ef
	.4byte	0x9f
	.4byte	.LLST135
	.uleb128 0x3e
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x2ef
	.4byte	0x118
	.4byte	.LLST136
	.uleb128 0x42
	.4byte	0x8c3
	.4byte	.LBB302
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x1
	.2byte	0x2f1
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x2f1
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x301
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1c1c
	.uleb128 0x3a
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x301
	.4byte	0xaa
	.byte	0x1
	.byte	0x53
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB306
	.4byte	.LBE306
	.byte	0x1
	.2byte	0x30a
	.4byte	0x1bf0
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST137
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST138
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST139
	.byte	0
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB308
	.4byte	.LBE308
	.byte	0x1
	.2byte	0x303
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x303
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x310
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST140
	.4byte	0x1ce6
	.uleb128 0x3e
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x310
	.4byte	0x9f
	.4byte	.LLST141
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB310
	.4byte	.LBE310
	.byte	0x1
	.2byte	0x333
	.4byte	0x1c76
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST142
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST143
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST144
	.byte	0
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB312
	.4byte	.LBE312
	.byte	0x1
	.2byte	0x312
	.4byte	0x1ca6
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST145
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST146
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST147
	.byte	0
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0x130
	.uleb128 0x43
	.string	"n"
	.byte	0x1
	.2byte	0x324
	.4byte	0x55
	.4byte	.LLST148
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB315
	.4byte	.LBE315
	.byte	0x1
	.2byte	0x327
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x327
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x500
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x338
	.byte	0x1
	.4byte	0xaa
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST149
	.4byte	0x1db5
	.uleb128 0x38
	.string	"cap"
	.byte	0x1
	.2byte	0x338
	.4byte	0x9f
	.4byte	.LLST150
	.uleb128 0x45
	.4byte	0x8c3
	.4byte	.LBB318
	.4byte	.Ldebug_ranges0+0x148
	.byte	0x1
	.2byte	0x33b
	.4byte	0x1d44
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST151
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST152
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST153
	.byte	0
	.uleb128 0x47
	.4byte	.Ldebug_ranges0+0x160
	.4byte	0x1d88
	.uleb128 0x43
	.string	"n"
	.byte	0x1
	.2byte	0x358
	.4byte	0x55
	.4byte	.LLST154
	.uleb128 0x42
	.4byte	0x8c3
	.4byte	.LBB323
	.4byte	.Ldebug_ranges0+0x178
	.byte	0x1
	.2byte	0x35b
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST155
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST156
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST157
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x8c3
	.4byte	.LBB327
	.4byte	.Ldebug_ranges0+0x190
	.byte	0x1
	.2byte	0x384
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST158
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST159
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST160
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x38a
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST161
	.4byte	0x1e58
	.uleb128 0x3e
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x38a
	.4byte	0x9f
	.4byte	.LLST162
	.uleb128 0x45
	.4byte	0x8c3
	.4byte	.LBB332
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.2byte	0x38b
	.4byte	0x1e0f
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST163
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST164
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST165
	.byte	0
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB336
	.4byte	.LBE336
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x1e3f
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST166
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST167
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST168
	.byte	0
	.uleb128 0x35
	.4byte	.LBB338
	.4byte	.LBE338
	.uleb128 0x43
	.string	"n"
	.byte	0x1
	.2byte	0x39d
	.4byte	0x55
	.4byte	.LLST169
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x3cf
	.byte	0x1
	.4byte	.LFB116
	.4byte	.LFE116
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1ede
	.uleb128 0x3e
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x3cf
	.4byte	0x9f
	.4byte	.LLST170
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB339
	.4byte	.LBE339
	.byte	0x1
	.2byte	0x3dd
	.4byte	0x1eb1
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST171
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST172
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST173
	.byte	0
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB341
	.4byte	.LBE341
	.byte	0x1
	.2byte	0x3d0
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST174
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST175
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST176
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x3e4
	.byte	0x1
	.4byte	.LFB117
	.4byte	.LFE117
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1f71
	.uleb128 0x3a
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x9f
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"ref"
	.byte	0x1
	.2byte	0x3e4
	.4byte	0xf7
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB343
	.4byte	.LBE343
	.byte	0x1
	.2byte	0x3f6
	.4byte	0x1f44
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST177
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST178
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST179
	.byte	0
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB345
	.4byte	.LBE345
	.byte	0x1
	.2byte	0x3e5
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST180
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST181
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST182
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x400
	.byte	0x1
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST183
	.4byte	0x1fd7
	.uleb128 0x3e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x400
	.4byte	0x9f
	.4byte	.LLST184
	.uleb128 0x3e
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x400
	.4byte	0x150
	.4byte	.LLST185
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB347
	.4byte	.LBE347
	.byte	0x1
	.2byte	0x408
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x408
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x500
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x457
	.byte	0x1
	.4byte	.LFB120
	.4byte	.LFE120
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2056
	.uleb128 0x3e
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x457
	.4byte	0x9f
	.4byte	.LLST186
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.2byte	0x457
	.4byte	0xec
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x39
	.string	"t"
	.byte	0x1
	.2byte	0x457
	.4byte	0xec
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x3f
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x460
	.4byte	0x55
	.4byte	.LLST187
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB349
	.4byte	.LBE349
	.byte	0x1
	.2byte	0x45b
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x45b
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x500
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x465
	.byte	0x1
	.4byte	.LFB121
	.4byte	.LFE121
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x20ab
	.uleb128 0x3e
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x465
	.4byte	0x9f
	.4byte	.LLST188
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB351
	.4byte	.LBE351
	.byte	0x1
	.2byte	0x469
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x469
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x500
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x470
	.byte	0x1
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST189
	.4byte	0x2102
	.uleb128 0x3e
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x470
	.4byte	0x9f
	.4byte	.LLST190
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB353
	.4byte	.LBE353
	.byte	0x1
	.2byte	0x474
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST191
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST192
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST193
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x480
	.byte	0x1
	.4byte	.LFB123
	.4byte	.LFE123
	.4byte	.LLST194
	.4byte	0x21b7
	.uleb128 0x3e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x480
	.4byte	0x9f
	.4byte	.LLST195
	.uleb128 0x3e
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x480
	.4byte	0x129
	.4byte	.LLST196
	.uleb128 0x45
	.4byte	0x8c3
	.4byte	.LBB355
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.2byte	0x481
	.4byte	0x216c
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST197
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST198
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST199
	.byte	0
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB359
	.4byte	.LBE359
	.byte	0x1
	.2byte	0x4de
	.4byte	0x219c
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST200
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST201
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST202
	.byte	0
	.uleb128 0x35
	.4byte	.LBB361
	.4byte	.LBE361
	.uleb128 0x43
	.string	"val"
	.byte	0x1
	.2byte	0x4d2
	.4byte	0x91
	.4byte	.LLST203
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x40d
	.byte	0x1
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST204
	.4byte	0x229c
	.uleb128 0x3e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x40d
	.4byte	0x9f
	.4byte	.LLST205
	.uleb128 0x3e
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x40d
	.4byte	0x123
	.4byte	.LLST206
	.uleb128 0x48
	.4byte	.LBB362
	.4byte	.LBE362
	.4byte	0x220f
	.uleb128 0x43
	.string	"val"
	.byte	0x1
	.2byte	0x44d
	.4byte	0x55
	.4byte	.LLST207
	.byte	0
	.uleb128 0x45
	.4byte	0x8c3
	.4byte	.LBB363
	.4byte	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.2byte	0x452
	.4byte	0x223f
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST208
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST209
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST210
	.byte	0
	.uleb128 0x3b
	.4byte	0x8c3
	.4byte	.LBB367
	.4byte	.LBE367
	.byte	0x1
	.2byte	0x40f
	.4byte	0x226f
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST211
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST212
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST213
	.byte	0
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB369
	.4byte	.LBE369
	.byte	0x1
	.2byte	0x413
	.uleb128 0x29
	.4byte	0x8e8
	.4byte	.LLST214
	.uleb128 0x29
	.4byte	0x8dc
	.4byte	.LLST215
	.uleb128 0x29
	.4byte	0x8d2
	.4byte	.LLST216
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x4e4
	.byte	0x1
	.4byte	.LFB124
	.4byte	.LFE124
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x22f0
	.uleb128 0x3a
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x4e4
	.4byte	0xec
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB371
	.4byte	.LBE371
	.byte	0x1
	.2byte	0x4e6
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x4e6
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x4eb
	.byte	0x1
	.4byte	.LFB125
	.4byte	.LFE125
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2344
	.uleb128 0x3a
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x4eb
	.4byte	0xec
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x3c
	.4byte	0x8c3
	.4byte	.LBB373
	.4byte	.LBE373
	.byte	0x1
	.2byte	0x4ed
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x4ed
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x8c3
	.4byte	.LFB126
	.4byte	.LFE126
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x236e
	.uleb128 0x26
	.4byte	0x8d2
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	0x8e8
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x4fe
	.byte	0x1
	.4byte	0x9f
	.4byte	.LFB127
	.4byte	.LFE127
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x23c5
	.uleb128 0x43
	.string	"e"
	.byte	0x1
	.2byte	0x501
	.4byte	0x9f
	.4byte	.LLST217
	.uleb128 0x42
	.4byte	0x8c3
	.4byte	.LBB375
	.4byte	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.2byte	0x4ff
	.uleb128 0x27
	.4byte	0x8e8
	.2byte	0x4ff
	.uleb128 0x26
	.4byte	0x8dc
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x27
	.4byte	0x8d2
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x506
	.byte	0x1
	.4byte	.LFB128
	.4byte	.LFE128
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x241f
	.uleb128 0x38
	.string	"red"
	.byte	0x1
	.2byte	0x506
	.4byte	0xaa
	.4byte	.LLST218
	.uleb128 0x3e
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x507
	.4byte	0xaa
	.4byte	.LLST219
	.uleb128 0x3e
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x508
	.4byte	0xaa
	.4byte	.LLST220
	.uleb128 0x3e
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x509
	.4byte	0xaa
	.4byte	.LLST221
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF201
	.byte	0x7
	.2byte	0x548
	.4byte	0x242d
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.4byte	0x2432
	.uleb128 0x6
	.byte	0x4
	.4byte	0x285
	.uleb128 0x4b
	.4byte	.LASF202
	.byte	0x8
	.byte	0x3d
	.4byte	0x3a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x4b
	.4byte	.LASF203
	.byte	0x8
	.byte	0x3e
	.4byte	0x1bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xd
	.4byte	0x365
	.4byte	0x246c
	.uleb128 0xe
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF204
	.byte	0x8
	.byte	0x3f
	.4byte	0x245c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x4b
	.4byte	.LASF205
	.byte	0x8
	.byte	0x4b
	.4byte	0x405
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x4b
	.4byte	.LASF206
	.byte	0x8
	.byte	0x4c
	.4byte	0x405
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xd
	.4byte	0x405
	.4byte	0x24b2
	.uleb128 0xe
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x4c
	.string	"tex"
	.byte	0x8
	.byte	0x4d
	.4byte	0x24a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x4b
	.4byte	.LASF106
	.byte	0x8
	.byte	0x4e
	.4byte	0x405
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xd
	.4byte	0x1bf
	.4byte	0x24e7
	.uleb128 0x4d
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF207
	.byte	0x8
	.byte	0x50
	.4byte	0x24d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x4b
	.4byte	.LASF208
	.byte	0x8
	.byte	0x51
	.4byte	0x24d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xd
	.4byte	0x365
	.4byte	0x2522
	.uleb128 0xe
	.4byte	0x30
	.byte	0x7
	.uleb128 0x4d
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF209
	.byte	0x8
	.byte	0x52
	.4byte	0x250b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xd
	.4byte	0x3a9
	.4byte	0x2545
	.uleb128 0x4d
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF210
	.byte	0x8
	.byte	0x53
	.4byte	0x2534
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x4b
	.4byte	.LASF211
	.byte	0x8
	.byte	0x5d
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x4b
	.4byte	.LASF212
	.byte	0x8
	.byte	0x5e
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x4b
	.4byte	.LASF213
	.byte	0x8
	.byte	0x5f
	.4byte	0x9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x4b
	.4byte	.LASF214
	.byte	0x8
	.byte	0x61
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x4b
	.4byte	.LASF215
	.byte	0x8
	.byte	0x62
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x4b
	.4byte	.LASF216
	.byte	0x1
	.byte	0xd
	.4byte	0x9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_alphatest_func
	.uleb128 0x4b
	.4byte	.LASF217
	.byte	0x1
	.byte	0xe
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_alphatest_ref
	.uleb128 0x4b
	.4byte	.LASF218
	.byte	0x1
	.byte	0xb
	.4byte	0x180
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_alphatest_enabled
	.uleb128 0x4b
	.4byte	.LASF219
	.byte	0x1
	.byte	0xc
	.4byte	0x180
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_alphatest_dirty
	.uleb128 0x4b
	.4byte	.LASF220
	.byte	0x8
	.byte	0x6b
	.4byte	0x156
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x4b
	.4byte	.LASF221
	.byte	0x8
	.byte	0x6c
	.4byte	0x156
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x4b
	.4byte	.LASF222
	.byte	0x8
	.byte	0x6d
	.4byte	0x9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x4b
	.4byte	.LASF223
	.byte	0x8
	.byte	0x6e
	.4byte	0x91
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x4b
	.4byte	.LASF224
	.byte	0x8
	.byte	0x7a
	.4byte	0x4a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x4b
	.4byte	.LASF225
	.byte	0x8
	.byte	0x7b
	.4byte	0x4a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xd
	.4byte	0x4a5
	.4byte	0x2675
	.uleb128 0xe
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF226
	.byte	0x8
	.byte	0x7c
	.4byte	0x2665
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x4b
	.4byte	.LASF227
	.byte	0x8
	.byte	0x7d
	.4byte	0x2699
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a5
	.uleb128 0x4b
	.4byte	.LASF228
	.byte	0x8
	.byte	0x7e
	.4byte	0x9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xd
	.4byte	0x56b
	.4byte	0x26c1
	.uleb128 0xe
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF229
	.byte	0x8
	.byte	0x99
	.4byte	0x26b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x4b
	.4byte	.LASF230
	.byte	0x8
	.byte	0x9c
	.4byte	0x3a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x4b
	.4byte	.LASF231
	.byte	0x8
	.byte	0xa9
	.4byte	0x5c9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x4b
	.4byte	.LASF232
	.byte	0x8
	.byte	0xac
	.4byte	0x180
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x4b
	.4byte	.LASF233
	.byte	0x8
	.byte	0xad
	.4byte	0x9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x4b
	.4byte	.LASF234
	.byte	0x8
	.byte	0xb1
	.4byte	0x180
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x4b
	.4byte	.LASF235
	.byte	0x8
	.byte	0xb8
	.4byte	0x156
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x4b
	.4byte	.LASF236
	.byte	0x8
	.byte	0xb9
	.4byte	0x156
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x4b
	.4byte	.LASF237
	.byte	0x8
	.byte	0xba
	.4byte	0x156
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x4b
	.4byte	.LASF238
	.byte	0x8
	.byte	0xbb
	.4byte	0x156
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x4b
	.4byte	.LASF239
	.byte	0x8
	.byte	0xbd
	.4byte	0x156
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x4b
	.4byte	.LASF240
	.byte	0x8
	.byte	0xc6
	.4byte	0x5f3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x4b
	.4byte	.LASF241
	.byte	0x8
	.byte	0xf0
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x4b
	.4byte	.LASF242
	.byte	0x8
	.byte	0xf1
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x4b
	.4byte	.LASF243
	.byte	0x8
	.byte	0xf2
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x4b
	.4byte	.LASF244
	.byte	0x8
	.byte	0xf3
	.4byte	0x63f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x4b
	.4byte	.LASF245
	.byte	0x8
	.byte	0xf4
	.4byte	0x63f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x4b
	.4byte	.LASF246
	.byte	0x8
	.byte	0xf5
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x4b
	.4byte	.LASF247
	.byte	0x8
	.byte	0xf6
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x4b
	.4byte	.LASF248
	.byte	0x8
	.byte	0xf8
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x4b
	.4byte	.LASF249
	.byte	0x8
	.byte	0xf9
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x4e
	.4byte	.LASF250
	.byte	0x8
	.2byte	0x105
	.4byte	0x6ae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x4e
	.4byte	.LASF251
	.byte	0x8
	.2byte	0x106
	.4byte	0x6ae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xd
	.4byte	0x180
	.4byte	0x2871
	.uleb128 0xe
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF252
	.byte	0x8
	.2byte	0x107
	.4byte	0x2861
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x4e
	.4byte	.LASF253
	.byte	0x8
	.2byte	0x10d
	.4byte	0x180
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x4e
	.4byte	.LASF254
	.byte	0x8
	.2byte	0x10e
	.4byte	0x9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x4e
	.4byte	.LASF255
	.byte	0x8
	.2byte	0x111
	.4byte	0x2d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xd
	.4byte	0x6e6
	.4byte	0x28cd
	.uleb128 0xe
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF256
	.byte	0x8
	.2byte	0x125
	.4byte	0x28bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x4e
	.4byte	.LASF257
	.byte	0x8
	.2byte	0x14a
	.4byte	0x180
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x4e
	.4byte	.LASF258
	.byte	0x8
	.2byte	0x14b
	.4byte	0x156
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x4e
	.4byte	.LASF259
	.byte	0x8
	.2byte	0x14c
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x4e
	.4byte	.LASF260
	.byte	0x8
	.2byte	0x14d
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x4e
	.4byte	.LASF261
	.byte	0x8
	.2byte	0x14e
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x4e
	.4byte	.LASF262
	.byte	0x8
	.2byte	0x14f
	.4byte	0x2d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xd
	.4byte	0x85a
	.4byte	0x2962
	.uleb128 0xe
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF263
	.byte	0x8
	.2byte	0x151
	.4byte	0x2952
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x4e
	.4byte	.LASF264
	.byte	0x8
	.2byte	0x156
	.4byte	0x9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x4e
	.4byte	.LASF265
	.byte	0x8
	.2byte	0x159
	.4byte	0xd6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x4e
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x4f3
	.4byte	0x9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glErrCode
	.uleb128 0x4e
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x4f4
	.4byte	0x78
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glErrFile
	.uleb128 0x4e
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x4f5
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glErrLine
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
	.uleb128 0x1e
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x47
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x501
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x78
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x6a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x87
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB82-.Ltext0
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
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL49-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LFB78-.Ltext0
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
	.4byte	.LFE78-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL59-1-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-1-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL67-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LFB88-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL73-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LFB89-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE89-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL78-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL77-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x130
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 16384
	.byte	0x9f
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 16384
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL101-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x143
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LFB97-.Ltext0
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
	.4byte	.LFE97-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x14b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x15a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LFB98-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL115-1-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL115-.Ltext0
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
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x160
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x197
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x1a5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LFB100-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL134-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL136-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL134-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL134-1-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL136-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x1cd
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x9
	.byte	0x3
	.4byte	curmat+48
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x10
	.byte	0x3
	.4byte	curmat+48
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+52
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x17
	.byte	0x3
	.4byte	curmat+48
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+52
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+56
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0xc
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x9
	.byte	0x3
	.4byte	curmat+16
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x10
	.byte	0x3
	.4byte	curmat+16
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+20
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x17
	.byte	0x3
	.4byte	curmat+16
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+20
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+24
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1c
	.byte	0x3
	.4byte	curmat+16
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+20
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+24
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+28
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x9
	.byte	0x3
	.4byte	curmat
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x10
	.byte	0x3
	.4byte	curmat
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x17
	.byte	0x3
	.4byte	curmat
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+4
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+8
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1c
	.byte	0x3
	.4byte	curmat
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+4
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+8
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+12
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x9
	.byte	0x3
	.4byte	curmat+32
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x10
	.byte	0x3
	.4byte	curmat+32
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+36
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x17
	.byte	0x3
	.4byte	curmat+32
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+36
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+40
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL161-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1c
	.byte	0x3
	.4byte	curmat+32
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+36
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+40
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	curmat+44
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x1f0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x1d6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LFB104-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL168-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL168-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL168-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LFB105-.Ltext0
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
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL173-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LFB106-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE106-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x298
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LFB107-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI43-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI45-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST114:
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
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI49-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI50-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI52-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI53-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI54-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2e4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x501
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2c6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2ea
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2d7
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI56-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL199-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-1-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI57-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI59-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI60-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI61-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI62-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL201-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL201-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x30a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI65-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x333
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x312
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL219-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI66-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI67-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI68-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 12288
	.byte	0x9f
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x33b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x35b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x384
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI69-.Ltext0
	.4byte	.LCFI70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI70-.Ltext0
	.4byte	.LCFI71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI71-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI72-.Ltext0
	.4byte	.LCFI73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI73-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL264-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL271-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x38b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x3c8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 512
	.byte	0x9f
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x3dd
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x3d0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x3f6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST178:
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x3e5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST181:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI74-.Ltext0
	.4byte	.LCFI75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI75-.Ltext0
	.4byte	.LCFI76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI76-.Ltext0
	.4byte	.LCFI77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI77-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL286-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL286-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 65536
	.byte	0x9f
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 33984
	.byte	0x9f
	.4byte	.LVL293-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 33984
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 65536
	.byte	0x9f
	.4byte	.LVL296-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 33984
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LFB122-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI78-.Ltext0
	.4byte	.LCFI79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI79-.Ltext0
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
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 65536
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 33984
	.byte	0x9f
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL304-1-.Ltext0
	.2byte	0xb
	.byte	0x3
	.4byte	cur_tex
	.byte	0x6
	.byte	0x23
	.uleb128 0x84c0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x474
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST192:
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LFB123-.Ltext0
	.4byte	.LCFI84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI84-.Ltext0
	.4byte	.LCFI85-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI85-.Ltext0
	.4byte	.LCFI86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI86-.Ltext0
	.4byte	.LCFI87-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI87-.Ltext0
	.4byte	.LCFI88-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI88-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL316-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL320-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL307-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL307-1-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL315-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL315-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x481
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x4de
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST202:
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST203:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0
	.4byte	0
.LLST204:
	.4byte	.LFB119-.Ltext0
	.4byte	.LCFI89-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI89-.Ltext0
	.4byte	.LCFI90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI90-.Ltext0
	.4byte	.LCFI91-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI91-.Ltext0
	.4byte	.LCFI92-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI92-.Ltext0
	.4byte	.LCFI93-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI93-.Ltext0
	.4byte	.LCFI94-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI94-.Ltext0
	.4byte	.LCFI95-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI95-.Ltext0
	.4byte	.LCFI96-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI96-.Ltext0
	.4byte	.LCFI97-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI97-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST205:
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL331-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL335-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL341-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL343-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST206:
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL343-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST207:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LLST208:
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x452
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST209:
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST210:
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST211:
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x40f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST212:
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST213:
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST214:
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x413
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST215:
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST216:
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x501
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST217:
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	glErrCode
	.4byte	0
	.4byte	0
.LLST218:
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST219:
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST220:
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST221:
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x1
	.byte	0x56
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
	.4byte	.LBB202-.Ltext0
	.4byte	.LBE202-.Ltext0
	.4byte	.LBB205-.Ltext0
	.4byte	.LBE205-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB203-.Ltext0
	.4byte	.LBE203-.Ltext0
	.4byte	.LBB204-.Ltext0
	.4byte	.LBE204-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB206-.Ltext0
	.4byte	.LBE206-.Ltext0
	.4byte	.LBB209-.Ltext0
	.4byte	.LBE209-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB210-.Ltext0
	.4byte	.LBE210-.Ltext0
	.4byte	.LBB215-.Ltext0
	.4byte	.LBE215-.Ltext0
	.4byte	.LBB216-.Ltext0
	.4byte	.LBE216-.Ltext0
	.4byte	.LBB217-.Ltext0
	.4byte	.LBE217-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB240-.Ltext0
	.4byte	.LBE240-.Ltext0
	.4byte	.LBB243-.Ltext0
	.4byte	.LBE243-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB246-.Ltext0
	.4byte	.LBE246-.Ltext0
	.4byte	.LBB249-.Ltext0
	.4byte	.LBE249-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB256-.Ltext0
	.4byte	.LBE256-.Ltext0
	.4byte	.LBB259-.Ltext0
	.4byte	.LBE259-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB260-.Ltext0
	.4byte	.LBE260-.Ltext0
	.4byte	.LBB263-.Ltext0
	.4byte	.LBE263-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB290-.Ltext0
	.4byte	.LBE290-.Ltext0
	.4byte	.LBB293-.Ltext0
	.4byte	.LBE293-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB294-.Ltext0
	.4byte	.LBE294-.Ltext0
	.4byte	.LBB301-.Ltext0
	.4byte	.LBE301-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB295-.Ltext0
	.4byte	.LBE295-.Ltext0
	.4byte	.LBB298-.Ltext0
	.4byte	.LBE298-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB302-.Ltext0
	.4byte	.LBE302-.Ltext0
	.4byte	.LBB305-.Ltext0
	.4byte	.LBE305-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB314-.Ltext0
	.4byte	.LBE314-.Ltext0
	.4byte	.LBB317-.Ltext0
	.4byte	.LBE317-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB318-.Ltext0
	.4byte	.LBE318-.Ltext0
	.4byte	.LBB321-.Ltext0
	.4byte	.LBE321-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB322-.Ltext0
	.4byte	.LBE322-.Ltext0
	.4byte	.LBB331-.Ltext0
	.4byte	.LBE331-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB323-.Ltext0
	.4byte	.LBE323-.Ltext0
	.4byte	.LBB326-.Ltext0
	.4byte	.LBE326-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB327-.Ltext0
	.4byte	.LBE327-.Ltext0
	.4byte	.LBB330-.Ltext0
	.4byte	.LBE330-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB332-.Ltext0
	.4byte	.LBE332-.Ltext0
	.4byte	.LBB335-.Ltext0
	.4byte	.LBE335-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB355-.Ltext0
	.4byte	.LBE355-.Ltext0
	.4byte	.LBB358-.Ltext0
	.4byte	.LBE358-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB363-.Ltext0
	.4byte	.LBE363-.Ltext0
	.4byte	.LBB366-.Ltext0
	.4byte	.LBE366-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB375-.Ltext0
	.4byte	.LBE375-.Ltext0
	.4byte	.LBB378-.Ltext0
	.4byte	.LBE378-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF161:
	.string	"glTexCoord2fv"
.LASF270:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl.c"
.LASF148:
	.string	"glVertex2f"
.LASF133:
	.string	"plane"
.LASF164:
	.string	"params"
.LASF149:
	.string	"glVertex2i"
.LASF53:
	.string	"Stack"
.LASF8:
	.string	"char"
.LASF216:
	.string	"_alphatest_func"
.LASF170:
	.string	"glGetMaterialfv"
.LASF17:
	.string	"GLint"
.LASF64:
	.string	"quad_t"
.LASF74:
	.string	"boxInfo"
.LASF18:
	.string	"GLubyte"
.LASF230:
	.string	"globAmbient"
.LASF226:
	.string	"texture_stack"
.LASF219:
	.string	"_alphatest_dirty"
.LASF240:
	.string	"cur_state"
.LASF194:
	.string	"glGetIntegerv"
.LASF241:
	.string	"fb_max_height"
.LASF58:
	.string	"diffuse"
.LASF119:
	.string	"glVertex3f"
.LASF207:
	.string	"_normalelements"
.LASF66:
	.string	"_mat"
.LASF137:
	.string	"sfactor"
.LASF128:
	.string	"coord"
.LASF59:
	.string	"specular"
.LASF114:
	.string	"line"
.LASF155:
	.string	"blue"
.LASF209:
	.string	"_texcoordelements"
.LASF123:
	.string	"glPolygonOffset"
.LASF85:
	.string	"_trans"
.LASF61:
	.string	"spotCutoff"
.LASF89:
	.string	"_tex_env"
.LASF187:
	.string	"func"
.LASF231:
	.string	"curmat"
.LASF51:
	.string	"begin"
.LASF46:
	.string	"mode"
.LASF220:
	.string	"depthtestenabled"
.LASF255:
	.string	"_clearcolor"
.LASF146:
	.string	"glVertex4f"
.LASF95:
	.string	"maxlod"
.LASF70:
	.string	"GL_STATE_NONE"
.LASF109:
	.string	"glTexEnvSet"
.LASF34:
	.string	"_gx_litobj"
.LASF183:
	.string	"glEnable"
.LASF228:
	.string	"cur_mode"
.LASF208:
	.string	"_vertexelements"
.LASF38:
	.string	"GXColorf"
.LASF103:
	.string	"CargOp"
.LASF223:
	.string	"_cleardepth"
.LASF184:
	.string	"glDisable"
.LASF169:
	.string	"glMaterialfv"
.LASF203:
	.string	"_tempnormalelement"
.LASF215:
	.string	"cur_tex_client"
.LASF206:
	.string	"vert"
.LASF26:
	.string	"uint32_t"
.LASF173:
	.string	"glClearColor"
.LASF258:
	.string	"fog_mode"
.LASF186:
	.string	"glAlphaFunc"
.LASF112:
	.string	"_glSetErrorEx"
.LASF260:
	.string	"fog_endz"
.LASF212:
	.string	"_type"
.LASF11:
	.string	"float"
.LASF130:
	.string	"face"
.LASF87:
	.string	"bias"
.LASF33:
	.string	"GXColor"
.LASF48:
	.string	"farZclip"
.LASF248:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF113:
	.string	"file"
.LASF24:
	.string	"GLclampd"
.LASF256:
	.string	"Trans"
.LASF250:
	.string	"pack"
.LASF67:
	.string	"emissive"
.LASF245:
	.string	"viewPort"
.LASF90:
	.string	"min_filter"
.LASF224:
	.string	"model_stack"
.LASF252:
	.string	"color_write_mask"
.LASF102:
	.string	"Carg"
.LASF40:
	.string	"enable"
.LASF263:
	.string	"glTexEnvs"
.LASF235:
	.string	"blend_type"
.LASF218:
	.string	"_alphatest_enabled"
.LASF197:
	.string	"glPointSize"
.LASF176:
	.string	"glFlush"
.LASF195:
	.string	"glGetFloatv"
.LASF168:
	.string	"glMaterialf"
.LASF200:
	.string	"glColorMask"
.LASF262:
	.string	"fog_color"
.LASF268:
	.string	"glErrLine"
.LASF267:
	.string	"glErrFile"
.LASF121:
	.string	"target"
.LASF75:
	.string	"width"
.LASF253:
	.string	"copy_mat_enabled"
.LASF214:
	.string	"cur_tex"
.LASF55:
	.string	"enabled"
.LASF145:
	.string	"glViewport"
.LASF272:
	.string	"_wgpipe"
.LASF127:
	.string	"glTexGeni"
.LASF101:
	.string	"comAlpha"
.LASF27:
	.string	"_Bool"
.LASF185:
	.string	"glDepthFunc"
.LASF243:
	.string	"scissor_test"
.LASF249:
	.string	"point_size"
.LASF68:
	.string	"shininess"
.LASF247:
	.string	"normFar"
.LASF21:
	.string	"GLfloat"
.LASF254:
	.string	"copy_material"
.LASF135:
	.string	"glColorMaterial"
.LASF190:
	.string	"texture"
.LASF153:
	.string	"glColor3ub"
.LASF72:
	.string	"GL_STATE_NEWLIST"
.LASF227:
	.string	"curmtx"
.LASF140:
	.string	"glCullFace"
.LASF199:
	.string	"glGetError"
.LASF244:
	.string	"scissorInfo"
.LASF150:
	.string	"glNormal3fv"
.LASF167:
	.string	"lightPos"
.LASF162:
	.string	"glTexCoord3fv"
.LASF144:
	.string	"far_val"
.LASF233:
	.string	"gxwinding"
.LASF158:
	.string	"glColor3fv"
.LASF35:
	.string	"GXLightObj"
.LASF88:
	.string	"ColorTrans"
.LASF236:
	.string	"blend_src"
.LASF69:
	.string	"Material"
.LASF189:
	.string	"glMultiTexCoord2fARB"
.LASF222:
	.string	"depthfunction"
.LASF141:
	.string	"glFrontFace"
.LASF25:
	.string	"uint8_t"
.LASF225:
	.string	"projection_stack"
.LASF151:
	.string	"glColor3f"
.LASF210:
	.string	"_colorelements"
.LASF178:
	.string	"updateFog"
.LASF78:
	.string	"swap"
.LASF57:
	.string	"ambient"
.LASF28:
	.string	"guVector"
.LASF5:
	.string	"long long int"
.LASF44:
	.string	"VertexArray"
.LASF192:
	.string	"glClientActiveTextureARB"
.LASF19:
	.string	"GLuint"
.LASF71:
	.string	"GL_STATE_BEGIN"
.LASF175:
	.string	"depth"
.LASF264:
	.string	"read_mode"
.LASF52:
	.string	"elem_size"
.LASF73:
	.string	"glState"
.LASF62:
	.string	"constant"
.LASF115:
	.string	"glFogf"
.LASF179:
	.string	"glFogi"
.LASF257:
	.string	"fog_enable"
.LASF16:
	.string	"GLbitfield"
.LASF191:
	.string	"mytex"
.LASF111:
	.string	"glColor4f"
.LASF31:
	.string	"_vecf"
.LASF36:
	.string	"VertexElement"
.LASF86:
	.string	"scale"
.LASF97:
	.string	"biasclamp"
.LASF80:
	.string	"row_length"
.LASF22:
	.string	"GLclampf"
.LASF221:
	.string	"depthupdate"
.LASF42:
	.string	"size"
.LASF65:
	.string	"LightObj"
.LASF117:
	.string	"param"
.LASF92:
	.string	"wrap_s"
.LASF93:
	.string	"wrap_t"
.LASF63:
	.string	"linear"
.LASF172:
	.string	"mask"
.LASF237:
	.string	"blend_dst"
.LASF76:
	.string	"height"
.LASF204:
	.string	"_temptexcoordelement"
.LASF47:
	.string	"nearZclip"
.LASF160:
	.string	"glTexCoord3f"
.LASF154:
	.string	"green"
.LASF12:
	.string	"long double"
.LASF49:
	.string	"PrjMtx"
.LASF196:
	.string	"glLineWidth"
.LASF23:
	.string	"GLdouble"
.LASF13:
	.string	"size_t"
.LASF180:
	.string	"glFogfv"
.LASF132:
	.string	"glClipPlane"
.LASF205:
	.string	"norm"
.LASF251:
	.string	"unpack"
.LASF56:
	.string	"spotDir"
.LASF39:
	.string	"_array"
.LASF60:
	.string	"spotExponent"
.LASF96:
	.string	"lodbias"
.LASF229:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF166:
	.string	"glLightfv"
.LASF94:
	.string	"minlod"
.LASF91:
	.string	"max_filter"
.LASF118:
	.string	"light"
.LASF9:
	.string	"long int"
.LASF198:
	.string	"glIsEnabled"
.LASF30:
	.string	"WGPipe"
.LASF14:
	.string	"GLenum"
.LASF177:
	.string	"glLightN"
.LASF193:
	.string	"glActiveTextureARB"
.LASF54:
	.string	"_light"
.LASF182:
	.string	"flag"
.LASF106:
	.string	"color"
.LASF20:
	.string	"GLsizei"
.LASF265:
	.string	"call_offset"
.LASF202:
	.string	"_tempcolorelement"
.LASF138:
	.string	"dfactor"
.LASF139:
	.string	"glScissor"
.LASF82:
	.string	"skip_pixels"
.LASF104:
	.string	"Aarg"
.LASF99:
	.string	"maxaniso"
.LASF159:
	.string	"glTexCoord2f"
.LASF0:
	.string	"unsigned int"
.LASF122:
	.string	"glHint"
.LASF126:
	.string	"glLightModeli"
.LASF261:
	.string	"fog_density"
.LASF41:
	.string	"stride"
.LASF234:
	.string	"lighting"
.LASF156:
	.string	"glColor4ub"
.LASF181:
	.string	"glDepthMask"
.LASF7:
	.string	"long unsigned int"
.LASF157:
	.string	"alpha"
.LASF238:
	.string	"blend_op"
.LASF259:
	.string	"fog_startz"
.LASF84:
	.string	"pixelStore"
.LASF271:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF110:
	.string	"glNormal3f"
.LASF269:
	.string	"GNU C 4.6.3"
.LASF152:
	.string	"glColor4fv"
.LASF143:
	.string	"near_val"
.LASF43:
	.string	"type"
.LASF171:
	.string	"glClear"
.LASF1:
	.string	"unsigned char"
.LASF29:
	.string	"Mtx44"
.LASF81:
	.string	"skip_rows"
.LASF147:
	.string	"glVertex3fv"
.LASF266:
	.string	"glErrCode"
.LASF211:
	.string	"vert_i"
.LASF79:
	.string	"lsb_first"
.LASF108:
	.string	"alpha_scale"
.LASF136:
	.string	"glBlendFunc"
.LASF100:
	.string	"comRGB"
.LASF242:
	.string	"fb_max_width"
.LASF246:
	.string	"normNear"
.LASF213:
	.string	"_GLtype"
.LASF131:
	.string	"glShadeModel"
.LASF32:
	.string	"_gx_color"
.LASF98:
	.string	"edgelod"
.LASF232:
	.string	"gxcullfaceanabled"
.LASF129:
	.string	"glPolygonMode"
.LASF125:
	.string	"units"
.LASF50:
	.string	"_stack"
.LASF3:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF165:
	.string	"glLightf"
.LASF201:
	.string	"wgPipe"
.LASF274:
	.string	"calc_density"
.LASF142:
	.string	"glDepthRange"
.LASF10:
	.string	"double"
.LASF83:
	.string	"alignment"
.LASF163:
	.string	"glLightModelfv"
.LASF37:
	.string	"TexCoordElement"
.LASF45:
	.string	"_prj_mat"
.LASF217:
	.string	"_alphatest_ref"
.LASF124:
	.string	"factor"
.LASF15:
	.string	"GLboolean"
.LASF107:
	.string	"rgb_scale"
.LASF273:
	.string	"_glState"
.LASF77:
	.string	"_pixelStore"
.LASF116:
	.string	"pname"
.LASF174:
	.string	"glClearDepth"
.LASF239:
	.string	"cull_mode"
.LASF188:
	.string	"gxgl_glGetDoublev"
.LASF105:
	.string	"AargOp"
.LASF120:
	.string	"lightNum"
.LASF134:
	.string	"equation"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
