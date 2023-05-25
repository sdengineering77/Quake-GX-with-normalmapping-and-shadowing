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
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/gl.c"
	.loc 1 29 0
.LVL0:
	.loc 1 29 0
	blr
.LFE69:
	.size	glTexGeni, .-glTexGeni
	.align 2
	.globl glNormal3f
	.type	glNormal3f, @function
glNormal3f:
.LFB85:
	.loc 1 205 0
.LVL1:
	.loc 1 206 0
	lis 9,_tempnormalelement@ha
	la 11,_tempnormalelement@l(9)
	stfs 1,_tempnormalelement@l(9)
	.loc 1 208 0
	stfs 3,8(11)
	.loc 1 207 0
	stfs 2,4(11)
	.loc 1 209 0
	blr
.LFE85:
	.size	glNormal3f, .-glNormal3f
	.align 2
	.globl glNormal3fv
	.type	glNormal3fv, @function
glNormal3fv:
.LFB86:
	.loc 1 211 0
.LVL2:
	.loc 1 212 0
	lfs 3,8(3)
	lfs 1,0(3)
	lfs 2,4(3)
	b glNormal3f
.LVL3:
.LFE86:
	.size	glNormal3fv, .-glNormal3fv
	.align 2
	.globl glColor4f
	.type	glColor4f, @function
glColor4f:
.LFB88:
	.loc 1 219 0
.LVL4:
	.loc 1 225 0
	lis 9,copy_mat_enabled@ha
	.loc 1 221 0
	lis 11,_tempcolorelement@ha
	.loc 1 225 0
	lbz 0,copy_mat_enabled@l(9)
	.loc 1 221 0
	la 6,_tempcolorelement@l(11)
	stfs 1,_tempcolorelement@l(11)
	.loc 1 225 0
	cmpwi 7,0,0
	.loc 1 222 0
	stfs 2,4(6)
	.loc 1 223 0
	stfs 3,8(6)
	.loc 1 224 0
	stfs 4,12(6)
	.loc 1 225 0
	beqlr- 7
	.loc 1 227 0
	lis 9,copy_material@ha
	lwz 0,copy_material@l(9)
	cmpwi 7,0,4610
	beq- 7,.L12
	cmplwi 7,0,4610
	bgt- 7,.L15
	cmpwi 7,0,4608
	beq- 7,.L10
	cmpwi 7,0,4609
	bnelr+ 7
	.loc 1 231 0
	lis 9,curmat@ha
	lwz 8,_tempcolorelement@l(11)
	la 9,curmat@l(9)
	lwz 0,12(6)
	lwz 11,4(6)
	lwz 10,8(6)
	stw 0,44(9)
	stw 8,32(9)
	stw 11,36(9)
	stw 10,40(9)
	blr
.L15:
	.loc 1 227 0
	cmpwi 7,0,5632
	beq- 7,.L13
	cmpwi 7,0,5634
	bnelr+ 7
	.loc 1 234 0
	lis 9,curmat@ha
	lwz 10,_tempcolorelement@l(11)
	la 9,curmat@l(9)
	lwz 8,12(6)
	lwz 0,4(6)
	lwz 11,8(6)
	.loc 1 235 0
	stw 8,44(9)
	stw 10,32(9)
	stw 0,36(9)
	stw 11,40(9)
	.loc 1 234 0
	stw 10,16(9)
	stw 0,20(9)
	stw 11,24(9)
	stw 8,28(9)
	blr
.L12:
	.loc 1 232 0
	lis 9,curmat@ha
	lwz 8,_tempcolorelement@l(11)
	la 9,curmat@l(9)
	lwz 0,12(6)
	lwz 11,4(6)
	lwz 10,8(6)
	stw 0,60(9)
	stw 8,48(9)
	stw 11,52(9)
	stw 10,56(9)
	blr
.L10:
	.loc 1 230 0
	lis 9,curmat@ha
	lwz 8,_tempcolorelement@l(11)
	la 9,curmat@l(9)
	lwz 0,12(6)
	lwz 11,4(6)
	lwz 10,8(6)
	stw 0,28(9)
	stw 8,16(9)
	stw 11,20(9)
	stw 10,24(9)
	blr
.L13:
	.loc 1 229 0
	lwz 8,_tempcolorelement@l(11)
	lis 11,curmat@ha
	la 9,curmat@l(11)
	lwz 7,12(6)
	lwz 0,4(6)
	lwz 10,8(6)
	stw 8,curmat@l(11)
	stw 7,12(9)
	stw 0,4(9)
	stw 10,8(9)
	blr
.LFE88:
	.size	glColor4f, .-glColor4f
	.align 2
	.globl glColor3f
	.type	glColor3f, @function
glColor3f:
.LFB87:
	.loc 1 215 0
.LVL5:
	.loc 1 216 0
	lis 9,.LC0@ha
	lfs 4,.LC0@l(9)
	b glColor4f
.LVL6:
.LFE87:
	.size	glColor3f, .-glColor3f
	.align 2
	.globl glColor4fv
	.type	glColor4fv, @function
glColor4fv:
.LFB89:
	.loc 1 241 0
.LVL7:
	.loc 1 242 0
	lfs 4,12(3)
	lfs 1,0(3)
	lfs 2,4(3)
	lfs 3,8(3)
	b glColor4f
.LVL8:
.LFE89:
	.size	glColor4fv, .-glColor4fv
	.align 2
	.globl glColor3ub
	.type	glColor3ub, @function
glColor3ub:
.LFB90:
	.loc 1 248 0
.LVL9:
	stwu 1,-16(1)
.LCFI0:
	.loc 1 249 0
	lis 0,0x4330
	lis 9,.LC2@ha
	stw 3,12(1)
	stw 0,8(1)
	lfs 0,.LC2@l(9)
	lis 9,.LC3@ha
	lfd 1,8(1)
	stw 4,12(1)
	fsub 1,1,0
	lfd 2,8(1)
	stw 5,12(1)
	fsub 2,2,0
	lfd 3,8(1)
	frsp 1,1
	.loc 1 250 0
	addi 1,1,16
	.loc 1 249 0
	fsub 3,3,0
	lfs 0,.LC3@l(9)
	frsp 2,2
	lis 9,.LC0@ha
	fdivs 1,1,0
	lfs 4,.LC0@l(9)
	frsp 3,3
	fdivs 2,2,0
	fdivs 3,3,0
	b glColor4f
.LVL10:
.LFE90:
	.size	glColor3ub, .-glColor3ub
	.align 2
	.globl glColor4ub
	.type	glColor4ub, @function
glColor4ub:
.LFB91:
	.loc 1 256 0
.LVL11:
	stwu 1,-16(1)
.LCFI1:
	.loc 1 257 0
	lis 0,0x4330
	lis 9,.LC2@ha
	stw 3,12(1)
	stw 0,8(1)
	lfs 0,.LC2@l(9)
	lis 9,.LC3@ha
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
	.loc 1 258 0
	addi 1,1,16
	.loc 1 257 0
	fsub 4,4,0
	lfs 0,.LC3@l(9)
	frsp 3,3
	fdivs 1,1,0
	frsp 4,4
	fdivs 2,2,0
	fdivs 4,4,0
	fdivs 3,3,0
	b glColor4f
.LVL12:
.LFE91:
	.size	glColor4ub, .-glColor4ub
	.align 2
	.globl glColor3fv
	.type	glColor3fv, @function
glColor3fv:
.LFB92:
	.loc 1 261 0
.LVL13:
	.loc 1 262 0
	lfs 3,8(3)
	lfs 1,0(3)
	lfs 2,4(3)
	b glColor3f
.LVL14:
.LFE92:
	.size	glColor3fv, .-glColor3fv
	.align 2
	.globl glTexCoord2f
	.type	glTexCoord2f, @function
glTexCoord2f:
.LFB93:
	.loc 1 266 0
.LVL15:
	.loc 1 267 0
	lis 11,cur_tex@ha
	lis 9,_temptexcoordelement@ha
	lwz 0,cur_tex@l(11)
	la 9,_temptexcoordelement@l(9)
	slwi 0,0,3
	add 11,0,9
	stfsx 1,9,0
	.loc 1 268 0
	stfs 2,4(11)
	.loc 1 269 0
	blr
.LFE93:
	.size	glTexCoord2f, .-glTexCoord2f
	.align 2
	.globl glTexCoord3f
	.type	glTexCoord3f, @function
glTexCoord3f:
.LFB94:
	.loc 1 271 0
.LVL16:
	.loc 1 272 0
	lis 11,cur_tex@ha
	lis 9,_temptexcoordelement@ha
	lwz 0,cur_tex@l(11)
	la 9,_temptexcoordelement@l(9)
	slwi 0,0,3
	add 11,0,9
	stfsx 1,9,0
	.loc 1 273 0
	stfs 2,4(11)
	.loc 1 274 0
	blr
.LFE94:
	.size	glTexCoord3f, .-glTexCoord3f
	.align 2
	.globl glTexCoord2fv
	.type	glTexCoord2fv, @function
glTexCoord2fv:
.LFB95:
	.loc 1 277 0
.LVL17:
	.loc 1 278 0
	lis 9,cur_tex@ha
	lfs 0,0(3)
	lwz 11,cur_tex@l(9)
	lis 9,_temptexcoordelement@ha
	la 9,_temptexcoordelement@l(9)
	slwi 11,11,3
	stfsx 0,11,9
	add 11,11,9
	.loc 1 279 0
	lfs 0,4(3)
	stfs 0,4(11)
	.loc 1 280 0
	blr
.LFE95:
	.size	glTexCoord2fv, .-glTexCoord2fv
	.align 2
	.globl glTexCoord3fv
	.type	glTexCoord3fv, @function
glTexCoord3fv:
.LFB96:
	.loc 1 283 0
.LVL18:
	.loc 1 284 0
	lis 9,cur_tex@ha
	lfs 0,0(3)
	lwz 11,cur_tex@l(9)
	lis 9,_temptexcoordelement@ha
	la 9,_temptexcoordelement@l(9)
	slwi 11,11,3
	stfsx 0,11,9
	add 11,11,9
	.loc 1 285 0
	lfs 0,4(3)
	stfs 0,4(11)
	.loc 1 287 0
	blr
.LFE96:
	.size	glTexCoord3fv, .-glTexCoord3fv
	.align 2
	.globl _glSetErrorEx
	.type	_glSetErrorEx, @function
_glSetErrorEx:
.LFB128:
	.loc 1 1272 0
.LVL19:
	.loc 1 1273 0
	lis 9,glErrCode@ha
	.loc 1 1274 0
	lis 11,glErrFile@ha
	.loc 1 1273 0
	stw 3,glErrCode@l(9)
	.loc 1 1275 0
	lis 9,glErrLine@ha
	.loc 1 1274 0
	stw 4,glErrFile@l(11)
	.loc 1 1275 0
	stw 5,glErrLine@l(9)
	.loc 1 1276 0
	blr
.LFE128:
	.size	_glSetErrorEx, .-_glSetErrorEx
	.align 2
	.globl glPointSize
	.type	glPointSize, @function
glPointSize:
.LFB127:
	.loc 1 1260 0
.LVL20:
	.loc 1 1261 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L43
	.loc 1 1263 0
	lis 9,point_size@ha
	stfs 1,point_size@l(9)
	.loc 1 1264 0
	blr
.L43:
	.loc 1 1261 0
	lis 4,.LC6@ha
	li 3,1282
	la 4,.LC6@l(4)
	li 5,1261
	b _glSetErrorEx
.LVL21:
.LFE127:
	.size	glPointSize, .-glPointSize
	.align 2
	.globl glLineWidth
	.type	glLineWidth, @function
glLineWidth:
.LFB126:
	.loc 1 1253 0
.LVL22:
	.loc 1 1254 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L49
	.loc 1 1256 0
	lis 9,line_width@ha
	stfs 1,line_width@l(9)
	.loc 1 1257 0
	blr
.L49:
	.loc 1 1254 0
	lis 4,.LC6@ha
	li 3,1282
	la 4,.LC6@l(4)
	li 5,1254
	b _glSetErrorEx
.LVL23:
.LFE126:
	.size	glLineWidth, .-glLineWidth
	.align 2
	.globl glClientActiveTextureARB
	.type	glClientActiveTextureARB, @function
glClientActiveTextureARB:
.LFB123:
	.loc 1 1126 0
.LVL24:
	.loc 1 1127 0
	addis 3,3,0xffff
.LVL25:
	addi 3,3,31552
	cmplwi 7,3,8
	bgt- 7,.L55
	.loc 1 1133 0
	lis 9,cur_tex_client@ha
	stw 3,cur_tex_client@l(9)
	.loc 1 1134 0
	blr
.L55:
	.loc 1 1129 0
	lis 4,.LC6@ha
	li 3,1280
	la 4,.LC6@l(4)
	li 5,1129
	b _glSetErrorEx
.LFE123:
	.size	glClientActiveTextureARB, .-glClientActiveTextureARB
	.align 2
	.globl glMultiTexCoord2fARB
	.type	glMultiTexCoord2fARB, @function
glMultiTexCoord2fARB:
.LFB122:
	.loc 1 1112 0
.LVL26:
	.loc 1 1113 0
	addis 3,3,0xffff
.LVL27:
	addi 0,3,31552
	cmplwi 7,0,8
	bgt- 7,.L61
	.loc 1 1122 0
	lis 9,_temptexcoordelement@ha
	slwi 0,0,3
	la 9,_temptexcoordelement@l(9)
	add 11,0,9
	stfsx 1,9,0
	stfs 2,4(11)
	.loc 1 1123 0
	blr
.L61:
	.loc 1 1115 0
	lis 4,.LC6@ha
	li 3,1280
	la 4,.LC6@l(4)
	li 5,1115
	b _glSetErrorEx
.LVL28:
.LFE122:
	.size	glMultiTexCoord2fARB, .-glMultiTexCoord2fARB
	.align 2
	.globl glAlphaFunc
	.type	glAlphaFunc, @function
glAlphaFunc:
.LFB119:
	.loc 1 996 0
.LVL29:
	.loc 1 997 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L73
	.loc 1 998 0
	addi 0,3,-512
	cmplwi 7,0,7
	bgt- 7,.L65
	.loc 1 1007 0
	lis 9,_alphatest_func@ha
	lis 11,_alphatest_ref@ha
	lwz 0,_alphatest_func@l(9)
	cmpw 7,0,3
	beq- 7,.L74
.L67:
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
.L65:
	.loc 1 1014 0
	lis 4,.LC6@ha
	li 3,1280
.LVL30:
	la 4,.LC6@l(4)
	li 5,1014
	b _glSetErrorEx
.LVL31:
.L73:
	.loc 1 997 0
	lis 4,.LC6@ha
	li 3,1282
.LVL32:
	la 4,.LC6@l(4)
	li 5,997
	b _glSetErrorEx
.LVL33:
.L74:
	.loc 1 1007 0
	lfs 0,_alphatest_ref@l(11)
	fcmpu 7,0,1
	bne+ 7,.L67
	blr
.LFE119:
	.size	glAlphaFunc, .-glAlphaFunc
	.align 2
	.globl glDepthFunc
	.type	glDepthFunc, @function
glDepthFunc:
.LFB118:
	.loc 1 975 0
.LVL34:
	.loc 1 976 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L90
	.loc 1 978 0
	addi 0,3,-512
	cmplwi 7,0,7
	ble- 7,.L91
	.loc 1 989 0
	lis 4,.LC6@ha
	li 3,1280
.LVL35:
	la 4,.LC6@l(4)
	li 5,989
	b _glSetErrorEx
.LVL36:
.L91:
	.loc 1 978 0
	lis 9,.L87@ha
	slwi 0,0,2
	la 9,.L87@l(9)
	lwzx 11,9,0
	add 11,11,9
	mtctr 11
	bctr
	.section	.rodata
	.align 2
	.align 2
.L87:
	.long .L79-.L87
	.long .L80-.L87
	.long .L81-.L87
	.long .L82-.L87
	.long .L83-.L87
	.long .L84-.L87
	.long .L85-.L87
	.long .L86-.L87
	.section	".text"
.L90:
	.loc 1 976 0
	lis 4,.LC6@ha
	li 3,1282
.LVL37:
	la 4,.LC6@l(4)
	li 5,976
	b _glSetErrorEx
.LVL38:
.L86:
	.loc 1 987 0
	li 0,7
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L85:
	.loc 1 986 0
	li 0,6
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L84:
	.loc 1 985 0
	li 0,5
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L83:
	.loc 1 984 0
	li 0,4
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L82:
	.loc 1 983 0
	li 0,3
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L81:
	.loc 1 982 0
	li 0,2
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L80:
	.loc 1 981 0
	li 0,1
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.L79:
	.loc 1 980 0
	li 0,0
	lis 9,depthfunction@ha
	stw 0,depthfunction@l(9)
	blr
.LFE118:
	.size	glDepthFunc, .-glDepthFunc
	.align 2
	.globl glDepthMask
	.type	glDepthMask, @function
glDepthMask:
.LFB114:
	.loc 1 770 0
.LVL39:
	.loc 1 771 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L100
	.loc 1 773 0
	cmpwi 7,3,0
	beq- 7,.L96
	cmpwi 7,3,1
	beq- 7,.L96
	.loc 1 778 0
	lis 4,.LC6@ha
	li 3,1280
.LVL40:
	la 4,.LC6@l(4)
	li 5,778
	b _glSetErrorEx
.LVL41:
.L96:
	.loc 1 776 0
	lis 9,depthupdate@ha
	stb 3,depthupdate@l(9)
	blr
.L100:
	.loc 1 771 0
	lis 4,.LC6@ha
	li 3,1282
.LVL42:
	la 4,.LC6@l(4)
	li 5,771
	b _glSetErrorEx
.LFE114:
	.size	glDepthMask, .-glDepthMask
	.align 2
	.globl glFogf
	.type	glFogf, @function
glFogf:
.LFB112:
	.loc 1 709 0
.LVL43:
	stwu 1,-16(1)
.LCFI2:
	.loc 1 710 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L122
	.loc 1 712 0
	cmpwi 7,3,2915
	beq- 7,.L106
	cmplwi 7,3,2915
	bgt- 7,.L109
	cmpwi 7,3,2914
	bne+ 7,.L104
	.loc 1 738 0
	lis 9,.LC18@ha
	lfs 0,.LC18@l(9)
	fcmpu 7,1,0
	blt- 7,.L123
	.loc 1 743 0
	lis 9,.LC9@ha
	fmr 13,1
	lfd 0,.LC9@l(9)
	.loc 1 749 0
	addi 1,1,16
	.loc 1 743 0
	lis 9,fog_density@ha
	fdiv 0,0,13
	frsp 0,0
	stfs 0,fog_density@l(9)
	.loc 1 749 0
	blr
.L122:
	.loc 1 710 0
	lis 4,.LC6@ha
	li 3,1282
.LVL44:
	la 4,.LC6@l(4)
	li 5,710
	.loc 1 749 0
	addi 1,1,16
	.loc 1 710 0
	b _glSetErrorEx
.LVL45:
.L109:
	.loc 1 712 0
	cmpwi 7,3,2916
	beq- 7,.L107
	cmpwi 7,3,2917
	beq- 7,.L124
.L104:
	.loc 1 746 0
	lis 4,.LC6@ha
	li 3,1280
.LVL46:
	la 4,.LC6@l(4)
	li 5,746
	.loc 1 749 0
	addi 1,1,16
	.loc 1 746 0
	b _glSetErrorEx
.LVL47:
.L106:
	.loc 1 732 0
	lis 9,fog_startz@ha
	stfs 1,fog_startz@l(9)
.L120:
	.loc 1 749 0
	addi 1,1,16
	blr
.L107:
	.loc 1 735 0
	lis 9,fog_endz@ha
	.loc 1 749 0
	addi 1,1,16
	.loc 1 735 0
	stfs 1,fog_endz@l(9)
	.loc 1 749 0
	blr
.L124:
	.loc 1 715 0
	fmr 0,1
	lis 9,.LC8@ha
	lfs 1,.LC8@l(9)
.LVL48:
	fcmpu 7,0,1
	cror 30,29,30
	beq- 7,.L114
	fctiwz 0,0
	addi 9,1,8
	stfiwx 0,0,9
	lwz 9,8(1)
.L115:
	cmpwi 7,9,2049
	beq- 7,.L112
	cmpwi 7,9,9729
	beq- 7,.L113
	cmpwi 7,9,2048
	beq- 7,.L125
	.loc 1 727 0
	lis 4,.LC6@ha
	li 3,1280
.LVL49:
	la 4,.LC6@l(4)
	li 5,727
	.loc 1 749 0
	addi 1,1,16
	.loc 1 727 0
	b _glSetErrorEx
.LVL50:
.L114:
	.loc 1 715 0
	fsub 0,0,1
	addi 9,1,12
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 9,12(1)
	addis 9,9,0x8000
	b .L115
.L125:
	.loc 1 721 0
	li 0,4
	lis 9,fog_mode@ha
	stb 0,fog_mode@l(9)
	b .L120
.L113:
	.loc 1 718 0
	li 0,2
	lis 9,fog_mode@ha
	stb 0,fog_mode@l(9)
	b .L120
.L112:
	.loc 1 724 0
	li 0,5
	lis 9,fog_mode@ha
	stb 0,fog_mode@l(9)
	b .L120
.LVL51:
.L123:
	.loc 1 740 0
	lis 4,.LC6@ha
	li 3,1281
.LVL52:
	la 4,.LC6@l(4)
	li 5,740
	.loc 1 749 0
	addi 1,1,16
	.loc 1 740 0
	b _glSetErrorEx
.LVL53:
.LFE112:
	.size	glFogf, .-glFogf
	.align 2
	.globl glFogfv
	.type	glFogfv, @function
glFogfv:
.LFB113:
	.loc 1 752 0
.LVL54:
	stwu 1,-16(1)
.LCFI3:
	.loc 1 753 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L133
	.loc 1 755 0
	cmpwi 7,3,2918
	beq- 7,.L134
	.loc 1 764 0
	lfs 1,0(4)
	.loc 1 767 0
	addi 1,1,16
	.loc 1 764 0
	b glFogf
.LVL55:
.L134:
	.loc 1 758 0
	lis 9,.LC3@ha
	lfs 0,0(4)
	lfs 12,.LC3@l(9)
	addi 10,1,8
	lis 9,fog_color@ha
	fmuls 0,0,12
	la 11,fog_color@l(9)
	fctiwz 13,0
	stfiwx 13,0,10
	lwz 0,8(1)
	stb 0,fog_color@l(9)
	.loc 1 759 0
	lfs 0,4(4)
	fmuls 0,0,12
	fctiwz 13,0
	stfiwx 13,0,10
	lwz 0,8(1)
	stb 0,1(11)
	.loc 1 760 0
	lfs 0,8(4)
	fmuls 0,0,12
	fctiwz 13,0
	stfiwx 13,0,10
	lwz 0,8(1)
	stb 0,2(11)
	.loc 1 761 0
	lfs 0,12(4)
	fmuls 0,0,12
	fctiwz 13,0
	stfiwx 13,0,10
	lwz 0,8(1)
	.loc 1 767 0
	addi 1,1,16
	.loc 1 761 0
	stb 0,3(11)
	.loc 1 767 0
	blr
.L133:
	.loc 1 753 0
	lis 4,.LC6@ha
.LVL56:
	li 3,1282
.LVL57:
	la 4,.LC6@l(4)
	li 5,753
	.loc 1 767 0
	addi 1,1,16
	.loc 1 753 0
	b _glSetErrorEx
.LFE113:
	.size	glFogfv, .-glFogfv
	.align 2
	.globl glFogi
	.type	glFogi, @function
glFogi:
.LFB111:
	.loc 1 704 0
.LVL58:
	stwu 1,-16(1)
.LCFI4:
	.loc 1 705 0
	xoris 4,4,0x8000
.LVL59:
	lis 0,0x4330
	lis 9,.LC21@ha
	stw 4,12(1)
	stw 0,8(1)
	lfs 0,.LC21@l(9)
	lfd 1,8(1)
	.loc 1 706 0
	addi 1,1,16
	.loc 1 705 0
	fsub 1,1,0
	frsp 1,1
	b glFogf
.LVL60:
.LFE111:
	.size	glFogi, .-glFogi
	.align 2
	.globl glClearDepth
	.type	glClearDepth, @function
glClearDepth:
.LFB107:
	.loc 1 644 0
.LVL61:
	.loc 1 646 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L149
	.loc 1 648 0
	lis 9,.LC0@ha
	lfs 13,.LC0@l(9)
	fmr 0,13
	fcmpu 7,1,0
	bng- 7,.L150
.L143:
	.loc 1 657 0
	lis 9,_cleardepth@ha
	stfs 13,_cleardepth@l(9)
	.loc 1 658 0
	blr
.L149:
	.loc 1 646 0
	lis 4,.LC6@ha
	li 3,1282
	la 4,.LC6@l(4)
	li 5,646
	b _glSetErrorEx
.LVL62:
.L150:
	.loc 1 652 0
	lis 9,.LC18@ha
	lfs 13,.LC18@l(9)
	lis 9,.LC23@ha
	lfd 0,.LC23@l(9)
	fcmpu 7,1,0
	blt- 7,.L143
	frsp 13,1
	.loc 1 657 0
	lis 9,_cleardepth@ha
	stfs 13,_cleardepth@l(9)
	.loc 1 658 0
	blr
.LFE107:
	.size	glClearDepth, .-glClearDepth
	.align 2
	.globl glClearColor
	.type	glClearColor, @function
glClearColor:
.LFB106:
	.loc 1 634 0
.LVL63:
	stwu 1,-16(1)
.LCFI5:
	.loc 1 636 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 7,0,1
	bne- 0,.L156
	.loc 1 638 0
	lis 9,.LC3@ha
	lis 8,_clearcolor@ha
	lfs 0,.LC3@l(9)
	addi 9,1,8
	.loc 1 641 0
	addi 7,1,8
	.loc 1 638 0
	fmuls 13,1,0
	.loc 1 639 0
	fmuls 12,2,0
	.loc 1 640 0
	fmuls 11,3,0
	.loc 1 638 0
	fctiwz 10,13
	.loc 1 639 0
	fctiwz 13,12
	.loc 1 641 0
	fmuls 0,4,0
	.loc 1 638 0
	stfiwx 10,0,9
	.loc 1 640 0
	fctiwz 12,11
	.loc 1 638 0
	lwz 0,8(1)
	.loc 1 641 0
	fctiwz 11,0
	.loc 1 639 0
	stfiwx 13,0,9
	lwz 11,8(1)
	.loc 1 640 0
	stfiwx 12,0,9
	.loc 1 638 0
	la 9,_clearcolor@l(8)
	.loc 1 640 0
	lwz 10,8(1)
	.loc 1 641 0
	stfiwx 11,0,7
	.loc 1 638 0
	stb 0,_clearcolor@l(8)
	.loc 1 639 0
	stb 11,1(9)
	.loc 1 641 0
	lwz 0,8(1)
	.loc 1 642 0
	addi 1,1,16
	.loc 1 640 0
	stb 10,2(9)
	.loc 1 641 0
	stb 0,3(9)
	.loc 1 642 0
	blr
.L156:
	.loc 1 636 0
	lis 4,.LC6@ha
	li 3,1282
	la 4,.LC6@l(4)
	li 5,636
	.loc 1 642 0
	addi 1,1,16
	.loc 1 636 0
	b _glSetErrorEx
.LVL64:
.LFE106:
	.size	glClearColor, .-glClearColor
	.align 2
	.globl glClear
	.type	glClear, @function
glClear:
.LFB105:
	.loc 1 576 0
.LVL65:
	.loc 1 577 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
	lis 4,.LC6@ha
	li 3,1282
.LVL66:
	la 4,.LC6@l(4)
	li 5,577
	b _glSetErrorEx
.LFE105:
	.size	glClear, .-glClear
	.align 2
	.globl glGetMaterialfv
	.type	glGetMaterialfv, @function
glGetMaterialfv:
.LFB103:
	.loc 1 469 0
.LVL67:
	.loc 1 470 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L174
	.loc 1 474 0
	cmpwi 7,4,4610
	beq- 7,.L167
	cmplwi 7,4,4610
	bgt- 7,.L170
	cmpwi 7,4,4608
	beq- 7,.L165
	cmpwi 7,4,4609
	beq- 7,.L175
.L164:
	.loc 1 496 0
	lis 4,.LC6@ha
.LVL68:
	li 3,1280
.LVL69:
	la 4,.LC6@l(4)
	li 5,496
.LVL70:
	b _glSetErrorEx
.LVL71:
.L174:
	.loc 1 470 0
	lis 4,.LC6@ha
.LVL72:
	li 3,1282
.LVL73:
	la 4,.LC6@l(4)
	li 5,470
.LVL74:
	b _glSetErrorEx
.LVL75:
.L170:
	.loc 1 474 0
	cmpwi 7,4,5632
	beq- 7,.L168
	cmpwi 7,4,5633
	bne+ 7,.L164
	.loc 1 493 0
	lis 9,curmat+64@ha
	lfs 0,curmat+64@l(9)
	stfs 0,0(5)
	blr
.L167:
	.loc 1 490 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	lfs 11,48(9)
	lfs 12,60(9)
	lfs 13,56(9)
	lfs 0,52(9)
	.loc 1 505 0
	stfs 12,12(5)
	.loc 1 502 0
	stfs 11,0(5)
	.loc 1 503 0
	stfs 0,4(5)
	.loc 1 504 0
	stfs 13,8(5)
	blr
.L165:
	.loc 1 486 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	lfs 11,16(9)
	lfs 12,28(9)
	lfs 13,24(9)
	lfs 0,20(9)
	.loc 1 505 0
	stfs 12,12(5)
	.loc 1 502 0
	stfs 11,0(5)
	.loc 1 503 0
	stfs 0,4(5)
	.loc 1 504 0
	stfs 13,8(5)
	blr
.L168:
	.loc 1 478 0
	lis 11,curmat@ha
	la 9,curmat@l(11)
	lfs 11,curmat@l(11)
	lfs 0,4(9)
	lfs 12,12(9)
	lfs 13,8(9)
	.loc 1 505 0
	stfs 12,12(5)
	.loc 1 502 0
	stfs 11,0(5)
	.loc 1 503 0
	stfs 0,4(5)
	.loc 1 504 0
	stfs 13,8(5)
	blr
.L175:
	.loc 1 482 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	lfs 11,32(9)
	lfs 12,44(9)
	lfs 13,40(9)
	lfs 0,36(9)
	.loc 1 505 0
	stfs 12,12(5)
	.loc 1 502 0
	stfs 11,0(5)
	.loc 1 503 0
	stfs 0,4(5)
	.loc 1 504 0
	stfs 13,8(5)
	blr
.LFE103:
	.size	glGetMaterialfv, .-glGetMaterialfv
	.align 2
	.globl glMaterialfv
	.type	glMaterialfv, @function
glMaterialfv:
.LFB102:
	.loc 1 426 0
.LVL76:
	.loc 1 427 0
	cmpwi 7,4,4610
	.loc 1 426 0
	mflr 0
.LCFI6:
	stwu 1,-16(1)
.LCFI7:
	stw 31,12(1)
.LCFI8:
	mr 31,5
	stw 0,20(1)
.LCFI9:
	.loc 1 427 0
	beq- 7,.L181
.LVL77:
	cmplwi 7,4,4610
	ble- 7,.L189
	cmpwi 7,4,5633
	beq- 7,.L183
	cmpwi 7,4,5634
	beq- 7,.L184
	cmpwi 7,4,5632
	beq- 7,.L190
	.loc 1 464 0
	lwz 0,20(1)
	.loc 1 461 0
	lis 4,.LC6@ha
.LVL78:
	.loc 1 464 0
	lwz 31,12(1)
.LVL79:
	.loc 1 461 0
	la 4,.LC6@l(4)
	.loc 1 464 0
	mtlr 0
	.loc 1 461 0
	li 3,1280
.LVL80:
	li 5,461
.LVL81:
	.loc 1 464 0
	addi 1,1,16
	.loc 1 461 0
	b _glSetErrorEx
.LVL82:
.L189:
	.loc 1 427 0
	cmpwi 7,4,4608
	beq- 7,.L179
	cmpwi 7,4,4609
	beq- 7,.L180
	.loc 1 464 0
	lwz 0,20(1)
	.loc 1 461 0
	lis 4,.LC6@ha
.LVL83:
	.loc 1 464 0
	lwz 31,12(1)
.LVL84:
	.loc 1 461 0
	la 4,.LC6@l(4)
	.loc 1 464 0
	mtlr 0
	.loc 1 461 0
	li 3,1280
.LVL85:
	li 5,461
.LVL86:
	.loc 1 464 0
	addi 1,1,16
	.loc 1 461 0
	b _glSetErrorEx
.LVL87:
.L184:
	.loc 1 430 0
	li 4,4608
.LVL88:
	bl glMaterialfv
.LVL89:
.L180:
	.loc 1 440 0
	lfs 13,0(31)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	.loc 1 464 0
	lwz 0,20(1)
	.loc 1 440 0
	stfs 13,32(9)
	.loc 1 464 0
	mtlr 0
	.loc 1 441 0
	lfs 0,4(31)
	stfs 0,36(9)
	.loc 1 442 0
	lfs 13,8(31)
	stfs 13,40(9)
	.loc 1 443 0
	lfs 0,12(31)
	.loc 1 464 0
	lwz 31,12(1)
.LVL90:
	addi 1,1,16
	.loc 1 443 0
	stfs 0,44(9)
	.loc 1 464 0
	blr
.LVL91:
.L183:
	lwz 0,20(1)
	.loc 1 458 0
	lis 9,curmat+64@ha
	lfs 0,0(5)
	.loc 1 464 0
	lwz 31,12(1)
.LVL92:
	mtlr 0
	addi 1,1,16
	.loc 1 458 0
	stfs 0,curmat+64@l(9)
	.loc 1 464 0
	blr
.LVL93:
.L190:
	.loc 1 434 0
	lfs 0,0(5)
	lis 9,curmat@ha
	.loc 1 464 0
	lwz 0,20(1)
	.loc 1 434 0
	stfs 0,curmat@l(9)
	la 9,curmat@l(9)
	.loc 1 464 0
	lwz 31,12(1)
.LVL94:
	mtlr 0
	.loc 1 435 0
	lfs 0,4(5)
	.loc 1 464 0
	addi 1,1,16
	.loc 1 435 0
	stfs 0,4(9)
	.loc 1 436 0
	lfs 13,8(5)
	stfs 13,8(9)
	.loc 1 437 0
	lfs 0,12(5)
	stfs 0,12(9)
	.loc 1 464 0
	blr
.LVL95:
.L179:
	.loc 1 446 0
	lfs 13,0(5)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	.loc 1 464 0
	lwz 0,20(1)
	.loc 1 446 0
	stfs 13,16(9)
	.loc 1 464 0
	lwz 31,12(1)
.LVL96:
	mtlr 0
	.loc 1 447 0
	lfs 0,4(5)
	.loc 1 464 0
	addi 1,1,16
	.loc 1 447 0
	stfs 0,20(9)
	.loc 1 448 0
	lfs 13,8(5)
	stfs 13,24(9)
	.loc 1 449 0
	lfs 0,12(5)
	stfs 0,28(9)
	.loc 1 464 0
	blr
.LVL97:
.L181:
	.loc 1 452 0
	lfs 13,0(5)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	.loc 1 464 0
	lwz 0,20(1)
	.loc 1 452 0
	stfs 13,48(9)
	.loc 1 464 0
	lwz 31,12(1)
.LVL98:
	mtlr 0
	.loc 1 453 0
	lfs 0,4(5)
	.loc 1 464 0
	addi 1,1,16
	.loc 1 453 0
	stfs 0,52(9)
	.loc 1 454 0
	lfs 13,8(5)
	stfs 13,56(9)
	.loc 1 455 0
	lfs 0,12(5)
	stfs 0,60(9)
	.loc 1 464 0
	blr
.LFE102:
	.size	glMaterialfv, .-glMaterialfv
	.align 2
	.globl glMaterialf
	.type	glMaterialf, @function
glMaterialf:
.LFB101:
	.loc 1 415 0
.LVL99:
	.loc 1 416 0
	cmpwi 7,4,5633
	beq- 7,.L196
	.loc 1 421 0
	lis 4,.LC6@ha
.LVL100:
	li 3,1280
.LVL101:
	la 4,.LC6@l(4)
	li 5,421
	b _glSetErrorEx
.LVL102:
.L196:
	.loc 1 419 0
	lis 9,curmat+64@ha
	stfs 1,curmat+64@l(9)
	.loc 1 424 0
	blr
.LFE101:
	.size	glMaterialf, .-glMaterialf
	.align 2
	.globl glLightN
	.type	glLightN, @function
glLightN:
.LFB98:
	.loc 1 310 0
.LVL103:
	mflr 0
.LCFI10:
	stwu 1,-8(1)
.LCFI11:
	stw 0,12(1)
.LCFI12:
	.loc 1 312 0
	addi 0,3,-16384
	cmplwi 7,0,7
	ble- 7,.L210
	.loc 1 323 0
	lis 4,.LC6@ha
	li 3,1280
.LVL104:
	la 4,.LC6@l(4)
	li 5,323
	bl _glSetErrorEx
	.loc 1 328 0
	lwz 0,12(1)
	.loc 1 323 0
	li 3,-1
.LVL105:
	.loc 1 328 0
	addi 1,1,8
	mtlr 0
.LVL106:
	blr
.LVL107:
.L210:
	.loc 1 312 0
	lis 9,.L207@ha
	slwi 0,0,2
	la 9,.L207@l(9)
	lwzx 11,9,0
	add 11,11,9
	mtctr 11
	bctr
	.section	.rodata
	.align 2
	.align 2
.L207:
	.long .L199-.L207
	.long .L200-.L207
	.long .L201-.L207
	.long .L202-.L207
	.long .L203-.L207
	.long .L204-.L207
	.long .L205-.L207
	.long .L206-.L207
	.section	".text"
.L206:
	.loc 1 328 0
	lwz 0,12(1)
	.loc 1 324 0
	li 3,7
.LVL108:
	.loc 1 328 0
	addi 1,1,8
.LVL109:
	mtlr 0
	blr
.LVL110:
.L199:
	lwz 0,12(1)
	.loc 1 312 0
	li 3,0
.LVL111:
	.loc 1 328 0
	addi 1,1,8
.LVL112:
	mtlr 0
	blr
.LVL113:
.L200:
	lwz 0,12(1)
	.loc 1 314 0
	li 3,1
.LVL114:
	.loc 1 328 0
	addi 1,1,8
.LVL115:
	mtlr 0
	blr
.LVL116:
.L201:
	lwz 0,12(1)
	.loc 1 315 0
	li 3,2
.LVL117:
	.loc 1 328 0
	addi 1,1,8
.LVL118:
	mtlr 0
	blr
.LVL119:
.L202:
	lwz 0,12(1)
	.loc 1 316 0
	li 3,3
.LVL120:
	.loc 1 328 0
	addi 1,1,8
.LVL121:
	mtlr 0
	blr
.LVL122:
.L203:
	lwz 0,12(1)
	.loc 1 317 0
	li 3,4
.LVL123:
	.loc 1 328 0
	addi 1,1,8
.LVL124:
	mtlr 0
	blr
.LVL125:
.L204:
	lwz 0,12(1)
	.loc 1 318 0
	li 3,5
.LVL126:
	.loc 1 328 0
	addi 1,1,8
.LVL127:
	mtlr 0
	blr
.LVL128:
.L205:
	lwz 0,12(1)
	.loc 1 319 0
	li 3,6
.LVL129:
	.loc 1 328 0
	addi 1,1,8
.LVL130:
	mtlr 0
	blr
.LFE98:
	.size	glLightN, .-glLightN
	.align 2
	.globl glLightf
	.type	glLightf, @function
glLightf:
.LFB99:
	.loc 1 330 0
.LVL131:
	mflr 0
.LCFI13:
	stwu 1,-24(1)
.LCFI14:
	.loc 1 331 0
	lis 9,cur_state@ha
	.loc 1 330 0
	stfd 31,16(1)
.LCFI15:
	fmr 31,1
	stw 0,28(1)
.LCFI16:
	stw 31,12(1)
.LCFI17:
	.loc 1 330 0
	mr 31,4
	.loc 1 331 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L212
.LVL132:
	lis 4,.LC6@ha
	li 3,1282
.LVL133:
	la 4,.LC6@l(4)
	li 5,331
.L224:
	.loc 1 349 0
	lwz 0,28(1)
	lwz 31,12(1)
.LVL134:
	mtlr 0
	lfd 31,16(1)
.LVL135:
	addi 1,1,24
	.loc 1 346 0
	b _glSetErrorEx
.LVL136:
.L212:
	.loc 1 333 0
	bl glLightN
.LVL137:
	.loc 1 335 0
	cmpwi 0,3,0
.LVL138:
	blt- 0,.L223
	.loc 1 338 0
	addi 0,31,-4613
	cmplwi 7,0,4
	ble- 7,.L225
	.loc 1 346 0
	lis 4,.LC6@ha
	li 3,1280
.LVL139:
	la 4,.LC6@l(4)
	li 5,346
	b .L224
.LVL140:
.L220:
	.loc 1 343 0
	mulli 11,3,164
	lis 9,lights@ha
	la 9,lights@l(9)
	add 11,11,9
	stfs 31,156(11)
.L223:
	.loc 1 349 0
	lwz 0,28(1)
	lwz 31,12(1)
.LVL141:
	lfd 31,16(1)
.LVL142:
	mtlr 0
	addi 1,1,24
	blr
.LVL143:
.L225:
	.loc 1 338 0
	lis 9,.L222@ha
	slwi 0,0,2
	la 9,.L222@l(9)
	lwzx 11,9,0
	add 11,11,9
	mtctr 11
	bctr
	.section	.rodata
	.align 2
	.align 2
.L222:
	.long .L217-.L222
	.long .L218-.L222
	.long .L219-.L222
	.long .L220-.L222
	.long .L221-.L222
	.section	".text"
.L221:
	.loc 1 344 0
	mulli 11,3,164
	lis 9,lights@ha
	la 9,lights@l(9)
	add 11,11,9
	stfs 31,160(11)
	b .L223
.L219:
	.loc 1 342 0
	mulli 11,3,164
	lis 9,lights@ha
	la 9,lights@l(9)
	add 11,11,9
	stfs 31,152(11)
	b .L223
.L218:
	.loc 1 340 0
	mulli 11,3,164
	lis 9,lights@ha
	la 9,lights@l(9)
	add 11,11,9
	stfs 31,148(11)
	b .L223
.L217:
	.loc 1 341 0
	mulli 11,3,164
	lis 9,lights@ha
	la 9,lights@l(9)
	add 11,11,9
	stfs 31,144(11)
	b .L223
.LFE99:
	.size	glLightf, .-glLightf
	.align 2
	.globl glLightModelfv
	.type	glLightModelfv, @function
glLightModelfv:
.LFB97:
	.loc 1 292 0
.LVL144:
	.loc 1 293 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L233
	.loc 1 295 0
	cmpwi 7,3,2899
	beq- 7,.L234
	.loc 1 304 0
	lis 4,.LC6@ha
.LVL145:
	li 3,1280
.LVL146:
	la 4,.LC6@l(4)
	li 5,304
	b _glSetErrorEx
.LVL147:
.L234:
	.loc 1 298 0
	lfs 0,0(4)
	lis 9,globAmbient@ha
	stfs 0,globAmbient@l(9)
	la 9,globAmbient@l(9)
	.loc 1 299 0
	lfs 0,4(4)
	stfs 0,4(9)
	.loc 1 300 0
	lfs 13,8(4)
	stfs 13,8(9)
	.loc 1 301 0
	lfs 0,12(4)
	stfs 0,12(9)
	.loc 1 307 0
	blr
.L233:
	.loc 1 293 0
	lis 4,.LC6@ha
.LVL148:
	li 3,1282
.LVL149:
	la 4,.LC6@l(4)
	li 5,293
	b _glSetErrorEx
.LFE97:
	.size	glLightModelfv, .-glLightModelfv
	.align 2
	.globl glVertex3f
	.type	glVertex3f, @function
glVertex3f:
.LFB84:
	.loc 1 180 0
.LVL150:
	stwu 1,-40(1)
.LCFI18:
	stw 31,36(1)
.LCFI19:
	.loc 1 181 0
	lis 31,vert_i@ha
	lwz 12,vert_i@l(31)
	.loc 1 180 0
	stw 24,8(1)
.LCFI20:
	.loc 1 181 0
	cmpwi 7,12,1000
	.loc 1 180 0
	stw 25,12(1)
.LCFI21:
	stw 26,16(1)
.LCFI22:
	stw 27,20(1)
.LCFI23:
	stw 28,24(1)
.LCFI24:
	stw 29,28(1)
.LCFI25:
	.loc 1 181 0
	bgt- 7,.L244
	.loc 1 194 0
	lis 6,_tempnormalelement@ha
	.loc 1 187 0
	mulli 0,12,12
	.loc 1 194 0
	lwz 3,_tempnormalelement@l(6)
	.loc 1 192 0
	lis 7,_tempcolorelement@ha
	.loc 1 194 0
	lis 9,_normalelements@ha
	.loc 1 192 0
	la 10,_tempcolorelement@l(7)
	lwz 29,_tempcolorelement@l(7)
	.loc 1 194 0
	la 5,_tempnormalelement@l(6)
	la 9,_normalelements@l(9)
	.loc 1 187 0
	lis 8,_vertexelements@ha
	.loc 1 192 0
	lis 11,_colorelements@ha
	.loc 1 194 0
	stwx 3,9,0
	.loc 1 192 0
	lwz 27,12(10)
	.loc 1 194 0
	add 4,0,9
	.loc 1 192 0
	lwz 26,4(10)
	.loc 1 187 0
	la 8,_vertexelements@l(8)
	.loc 1 192 0
	lwz 25,8(10)
	la 11,_colorelements@l(11)
	.loc 1 194 0
	lwz 28,8(5)
	.loc 1 192 0
	slwi 6,12,4
	.loc 1 194 0
	lwz 24,4(5)
	lis 9,_texcoordelements@ha
	.loc 1 192 0
	stwx 29,6,11
	add 10,6,11
	.loc 1 187 0
	stfsx 1,8,0
	add 5,0,8
	.loc 1 194 0
	la 9,_texcoordelements@l(9)
	slwi 7,12,3
	li 0,8
	.loc 1 189 0
	stfs 3,8(5)
	.loc 1 194 0
	add 7,7,9
	.loc 1 192 0
	stw 27,12(10)
	.loc 1 194 0
	stw 28,8(4)
	lis 9,_temptexcoordelement+4@ha
	.loc 1 188 0
	stfs 2,4(5)
	mtctr 0
	.loc 1 192 0
	stw 26,4(10)
	.loc 1 194 0
	la 9,_temptexcoordelement+4@l(9)
	.loc 1 192 0
	stw 25,8(10)
	.loc 1 194 0
	addi 7,7,4
	stw 24,4(4)
.L238:
	.loc 1 199 0
	lfs 0,-4(9)
	lfs 13,0(9)
	addi 9,9,8
	stfs 0,-4(7)
	stfs 13,0(7)
	addi 7,7,8000
	.loc 1 197 0
	bdnz .L238
	.loc 1 202 0
	addi 0,12,1
	.loc 1 203 0
	lwz 24,8(1)
	.loc 1 202 0
	stw 0,vert_i@l(31)
	.loc 1 203 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 31,36(1)
	addi 1,1,40
	blr
.L244:
	.loc 1 183 0
	lis 4,.LC6@ha
	.loc 1 203 0
	lwz 24,8(1)
	lwz 25,12(1)
	.loc 1 183 0
	la 4,.LC6@l(4)
	.loc 1 203 0
	lwz 26,16(1)
	.loc 1 183 0
	li 3,1285
	.loc 1 203 0
	lwz 27,20(1)
	.loc 1 183 0
	li 5,183
	.loc 1 203 0
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 31,36(1)
	addi 1,1,40
	.loc 1 183 0
	b _glSetErrorEx
.LVL151:
.LFE84:
	.size	glVertex3f, .-glVertex3f
	.align 2
	.globl glVertex4f
	.type	glVertex4f, @function
glVertex4f:
.LFB83:
	.loc 1 176 0
.LVL152:
	.loc 1 177 0
	b glVertex3f
.LVL153:
.LFE83:
	.size	glVertex4f, .-glVertex4f
	.align 2
	.globl glVertex3fv
	.type	glVertex3fv, @function
glVertex3fv:
.LFB82:
	.loc 1 172 0
.LVL154:
	.loc 1 173 0
	lfs 3,8(3)
	lfs 1,0(3)
	lfs 2,4(3)
	b glVertex3f
.LVL155:
.LFE82:
	.size	glVertex3fv, .-glVertex3fv
	.align 2
	.globl glVertex2f
	.type	glVertex2f, @function
glVertex2f:
.LFB81:
	.loc 1 167 0
.LVL156:
	.loc 1 168 0
	lis 9,.LC18@ha
	lfs 3,.LC18@l(9)
	b glVertex3f
.LVL157:
.LFE81:
	.size	glVertex2f, .-glVertex2f
	.align 2
	.globl glVertex2i
	.type	glVertex2i, @function
glVertex2i:
.LFB80:
	.loc 1 163 0
.LVL158:
	stwu 1,-16(1)
.LCFI26:
	.loc 1 164 0
	xoris 3,3,0x8000
.LVL159:
	lis 0,0x4330
	xoris 4,4,0x8000
.LVL160:
	stw 3,12(1)
	lis 9,.LC21@ha
	stw 0,8(1)
	lfs 0,.LC21@l(9)
	lis 9,.LC18@ha
	lfd 1,8(1)
	stw 4,12(1)
	fsub 1,1,0
	lfs 3,.LC18@l(9)
	lfd 2,8(1)
	.loc 1 165 0
	addi 1,1,16
	.loc 1 164 0
	fsub 2,2,0
	frsp 1,1
	frsp 2,2
	b glVertex3f
.LFE80:
	.size	glVertex2i, .-glVertex2i
	.align 2
	.globl glViewport
	.type	glViewport, @function
glViewport:
.LFB79:
	.loc 1 156 0
.LVL161:
	.loc 1 157 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L258
	.loc 1 158 0
	lis 11,viewPort@ha
	la 9,viewPort@l(11)
	stw 3,viewPort@l(11)
	stw 4,4(9)
	stw 6,12(9)
	stw 5,8(9)
	.loc 1 159 0
	blr
.L258:
	.loc 1 157 0
	lis 4,.LC6@ha
.LVL162:
	li 3,1282
.LVL163:
	la 4,.LC6@l(4)
	li 5,157
.LVL164:
	b _glSetErrorEx
.LVL165:
.LFE79:
	.size	glViewport, .-glViewport
	.align 2
	.globl glDepthRange
	.type	glDepthRange, @function
glDepthRange:
.LFB78:
	.loc 1 145 0
.LVL166:
	.loc 1 146 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L264
	.loc 1 148 0
	frsp 0,1
	lis 9,normNear@ha
	.loc 1 149 0
	frsp 13,2
	lis 11,normFar@ha
	.loc 1 148 0
	stfs 0,normNear@l(9)
	.loc 1 149 0
	stfs 13,normFar@l(11)
	.loc 1 150 0
	blr
.L264:
	.loc 1 146 0
	lis 4,.LC6@ha
	li 3,1282
	la 4,.LC6@l(4)
	li 5,146
	b _glSetErrorEx
.LVL167:
.LFE78:
	.size	glDepthRange, .-glDepthRange
	.align 2
	.globl glFrontFace
	.type	glFrontFace, @function
glFrontFace:
.LFB77:
	.loc 1 125 0
.LVL168:
	.loc 1 127 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L272
	.loc 1 129 0
	addi 0,3,-2304
	cmplwi 7,0,1
	ble- 7,.L273
	.loc 1 135 0
	lis 4,.LC6@ha
	li 3,1280
.LVL169:
	la 4,.LC6@l(4)
	li 5,135
	b _glSetErrorEx
.LVL170:
.L273:
	.loc 1 133 0
	lis 9,gxwinding@ha
	stw 3,gxwinding@l(9)
	.loc 1 139 0
	blr
.L272:
	.loc 1 127 0
	lis 4,.LC6@ha
	li 3,1282
.LVL171:
	la 4,.LC6@l(4)
	li 5,127
	b _glSetErrorEx
.LFE77:
	.size	glFrontFace, .-glFrontFace
	.align 2
	.globl glCullFace
	.type	glCullFace, @function
glCullFace:
.LFB76:
	.loc 1 105 0
.LVL172:
	.loc 1 106 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L283
	.loc 1 108 0
	cmpwi 7,3,1029
	beq- 7,.L279
	cmpwi 7,3,1032
	beq- 7,.L280
	cmpwi 7,3,1028
	beq- 7,.L284
	.loc 1 120 0
	lis 4,.LC6@ha
	li 3,1280
.LVL173:
	la 4,.LC6@l(4)
	li 5,120
	b _glSetErrorEx
.LVL174:
.L283:
	.loc 1 106 0
	lis 4,.LC6@ha
	li 3,1282
.LVL175:
	la 4,.LC6@l(4)
	li 5,106
	b _glSetErrorEx
.LVL176:
.L279:
	.loc 1 114 0
	li 0,2
	lis 9,cull_mode@ha
	stb 0,cull_mode@l(9)
	blr
.L284:
	.loc 1 111 0
	li 0,1
	lis 9,cull_mode@ha
	stb 0,cull_mode@l(9)
	blr
.L280:
	.loc 1 117 0
	li 0,3
	lis 9,cull_mode@ha
	stb 0,cull_mode@l(9)
	blr
.LFE76:
	.size	glCullFace, .-glCullFace
	.align 2
	.globl glScissor
	.type	glScissor, @function
glScissor:
.LFB75:
	.loc 1 89 0
.LVL177:
	.loc 1 90 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L293
	.loc 1 92 0
	cmpwi 7,5,0
	blt- 7,.L288
	cmpwi 7,6,0
	blt- 7,.L288
	.loc 1 98 0
	lis 11,scissorInfo@ha
	la 9,scissorInfo@l(11)
	stw 3,scissorInfo@l(11)
	stw 4,4(9)
	stw 6,12(9)
	stw 5,8(9)
	.loc 1 99 0
	blr
.L288:
	.loc 1 94 0
	lis 4,.LC6@ha
.LVL178:
	li 3,1281
.LVL179:
	la 4,.LC6@l(4)
	li 5,94
.LVL180:
	b _glSetErrorEx
.LVL181:
.L293:
	.loc 1 90 0
	lis 4,.LC6@ha
.LVL182:
	li 3,1282
.LVL183:
	la 4,.LC6@l(4)
	li 5,90
.LVL184:
	b _glSetErrorEx
.LVL185:
.LFE75:
	.size	glScissor, .-glScissor
	.align 2
	.globl glBlendFunc
	.type	glBlendFunc, @function
glBlendFunc:
.LFB74:
	.loc 1 57 0
.LVL186:
	mflr 0
.LCFI27:
	stwu 1,-16(1)
.LCFI28:
	.loc 1 58 0
	lis 9,cur_state@ha
	.loc 1 57 0
	stw 31,12(1)
.LCFI29:
	mr 31,4
	stw 0,20(1)
.LCFI30:
	.loc 1 58 0
	lwz 0,cur_state@l(9)
	andi. 0,0,1
	bne- 0,.L323
.LVL187:
	.loc 1 60 0
	cmpwi 7,3,771
	beq- 7,.L301
	cmplwi 7,3,771
	bgt- 7,.L306
	cmpwi 7,3,1
	beq- 7,.L299
	cmplwi 7,3,1
	blt- 7,.L322
	cmpwi 7,3,770
	beq- 7,.L324
.L297:
	.loc 1 71 0
	lis 4,.LC6@ha
	li 3,1280
.LVL188:
	la 4,.LC6@l(4)
	li 5,71
	bl _glSetErrorEx
	b .L307
.LVL189:
.L323:
	.loc 1 58 0
	lis 4,.LC6@ha
	li 3,1282
.LVL190:
	la 4,.LC6@l(4)
	li 5,58
.L321:
	.loc 1 86 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL191:
	addi 1,1,16
	mtlr 0
	.loc 1 84 0
	b _glSetErrorEx
.LVL192:
.L306:
	.loc 1 60 0
	cmpwi 7,3,773
	beq- 7,.L303
	cmplwi 7,3,773
	bge- 7,.L325
	.loc 1 68 0
	li 0,6
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
	b .L307
.L301:
	.loc 1 67 0
	li 0,5
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
.LVL193:
.L307:
	.loc 1 74 0
	cmpwi 7,31,769
	beq- 7,.L312
.L327:
	cmplwi 7,31,769
	bgt- 7,.L317
	cmpwi 7,31,1
	beq- 7,.L310
	cmplwi 7,31,1
	bge- 7,.L326
	.loc 1 76 0
	li 0,0
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
.LVL194:
.L319:
	.loc 1 86 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL195:
	addi 1,1,16
	mtlr 0
	blr
.LVL196:
.L299:
	.loc 1 63 0
	lis 9,blend_src@ha
	stb 3,blend_src@l(9)
.LVL197:
	b .L307
.LVL198:
.L303:
	.loc 1 69 0
	li 0,7
.L322:
	.loc 1 74 0
	cmpwi 7,31,769
	.loc 1 69 0
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
	.loc 1 74 0
	bne+ 7,.L327
.LVL199:
.L312:
	.loc 1 79 0
	li 0,3
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	b .L319
.L317:
	.loc 1 74 0
	cmpwi 7,31,771
	beq- 7,.L314
	cmplwi 7,31,771
	bge- 7,.L328
	.loc 1 80 0
	li 0,4
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	b .L319
.LVL200:
.L325:
	.loc 1 60 0
	cmpwi 7,3,774
	beq- 7,.L304
	cmpwi 7,3,775
	bne+ 7,.L297
	.loc 1 65 0
	li 0,3
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
	b .L307
.LVL201:
.L326:
	.loc 1 74 0
	cmpwi 7,31,768
	beq- 7,.L329
.L308:
	.loc 1 84 0
	lis 4,.LC6@ha
	li 3,1280
.LVL202:
	la 4,.LC6@l(4)
	li 5,84
	b .L321
.LVL203:
.L328:
	.loc 1 74 0
	cmpwi 7,31,772
	beq- 7,.L315
	cmpwi 7,31,773
	bne+ 7,.L308
	.loc 1 83 0
	li 0,7
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	b .L319
.L315:
	.loc 1 82 0
	li 0,6
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	b .L319
.LVL204:
.L324:
	.loc 1 66 0
	li 0,4
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
	b .L307
.L304:
	.loc 1 64 0
	li 0,2
	b .L322
.LVL205:
.L310:
	.loc 1 77 0
	lis 9,blend_dst@ha
	stb 31,blend_dst@l(9)
.LVL206:
	b .L319
.LVL207:
.L314:
	.loc 1 81 0
	li 0,5
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	b .L319
.L329:
	.loc 1 78 0
	li 0,2
	lis 9,blend_dst@ha
	stb 0,blend_dst@l(9)
	b .L319
.LFE74:
	.size	glBlendFunc, .-glBlendFunc
	.align 2
	.globl glColorMaterial
	.type	glColorMaterial, @function
glColorMaterial:
.LFB73:
	.loc 1 42 0
.LVL208:
	.loc 1 43 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L338
	.loc 1 45 0
	cmpwi 7,4,5632
	beq- 7,.L334
	cmplwi 7,4,5632
	bgt- 7,.L335
	addi 0,4,-4608
	cmplwi 7,0,2
	ble- 7,.L334
.L333:
	.loc 1 52 0
	lis 4,.LC6@ha
.LVL209:
	li 3,1280
.LVL210:
	la 4,.LC6@l(4)
	li 5,52
	b _glSetErrorEx
.LVL211:
.L335:
	.loc 1 45 0
	cmpwi 7,4,5634
	bne+ 7,.L333
.L334:
	.loc 1 51 0
	lis 9,copy_material@ha
	stw 4,copy_material@l(9)
	.loc 1 54 0
	blr
.L338:
	.loc 1 43 0
	lis 4,.LC6@ha
.LVL212:
	li 3,1282
.LVL213:
	la 4,.LC6@l(4)
	li 5,43
	b _glSetErrorEx
.LFE73:
	.size	glColorMaterial, .-glColorMaterial
	.align 2
	.globl glClipPlane
	.type	glClipPlane, @function
glClipPlane:
.LFB72:
	.loc 1 37 0
.LVL214:
	.loc 1 37 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
	lis 4,.LC6@ha
.LVL215:
	li 3,1282
.LVL216:
	la 4,.LC6@l(4)
	li 5,37
	b _glSetErrorEx
.LFE72:
	.size	glClipPlane, .-glClipPlane
	.align 2
	.globl glShadeModel
	.type	glShadeModel, @function
glShadeModel:
.LFB71:
	.loc 1 35 0
.LVL217:
	.loc 1 35 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
	lis 4,.LC6@ha
	li 3,1282
.LVL218:
	la 4,.LC6@l(4)
	li 5,35
	b _glSetErrorEx
.LFE71:
	.size	glShadeModel, .-glShadeModel
	.align 2
	.globl glPolygonMode
	.type	glPolygonMode, @function
glPolygonMode:
.LFB70:
	.loc 1 31 0
.LVL219:
	.loc 1 31 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
	lis 4,.LC6@ha
.LVL220:
	li 3,1282
.LVL221:
	la 4,.LC6@l(4)
	li 5,31
	b _glSetErrorEx
.LFE70:
	.size	glPolygonMode, .-glPolygonMode
	.align 2
	.globl glLightModeli
	.type	glLightModeli, @function
glLightModeli:
.LFB68:
	.loc 1 25 0
.LVL222:
	.loc 1 25 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
	lis 4,.LC6@ha
.LVL223:
	li 3,1282
.LVL224:
	la 4,.LC6@l(4)
	li 5,25
	b _glSetErrorEx
.LFE68:
	.size	glLightModeli, .-glLightModeli
	.align 2
	.globl glPolygonOffset
	.type	glPolygonOffset, @function
glPolygonOffset:
.LFB67:
	.loc 1 23 0
.LVL225:
	.loc 1 23 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
	lis 4,.LC6@ha
	li 3,1282
	la 4,.LC6@l(4)
	li 5,23
	b _glSetErrorEx
.LVL226:
.LFE67:
	.size	glPolygonOffset, .-glPolygonOffset
	.align 2
	.globl glHint
	.type	glHint, @function
glHint:
.LFB66:
	.loc 1 21 0
.LVL227:
	.loc 1 21 0
	lis 9,cur_state@ha
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beqlr- 0
	lis 4,.LC6@ha
.LVL228:
	li 3,1282
.LVL229:
	la 4,.LC6@l(4)
	li 5,21
	b _glSetErrorEx
.LFE66:
	.size	glHint, .-glHint
	.align 2
	.globl glGetError
	.type	glGetError, @function
glGetError:
.LFB129:
	.loc 1 1278 0
	mflr 0
.LCFI31:
	stwu 1,-8(1)
.LCFI32:
	.loc 1 1279 0
	lis 9,cur_state@ha
	.loc 1 1278 0
	stw 0,12(1)
.LCFI33:
	.loc 1 1279 0
	lwz 0,cur_state@l(9)
	andi. 0,0,1
	bne- 0,.L368
	.loc 1 1281 0
	lis 9,glErrCode@ha
	lwz 3,glErrCode@l(9)
.LVL230:
.LVL231:
	.loc 1 1282 0
	stw 0,glErrCode@l(9)
	.loc 1 1284 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L368:
	.loc 1 1279 0
	lis 4,.LC6@ha
	li 3,1282
	la 4,.LC6@l(4)
	li 5,1279
	bl _glSetErrorEx
	.loc 1 1284 0
	lwz 0,12(1)
	.loc 1 1279 0
	li 3,0
.LVL232:
	.loc 1 1284 0
	addi 1,1,8
	mtlr 0
.LVL233:
	blr
.LFE129:
	.size	glGetError, .-glGetError
	.align 2
	.globl glColorMask
	.type	glColorMask, @function
glColorMask:
.LFB130:
	.loc 1 1290 0
.LVL234:
	.loc 1 1291 0
	xori 3,3,1
.LVL235:
	.loc 1 1292 0
	xori 4,4,1
.LVL236:
	.loc 1 1293 0
	xori 5,5,1
.LVL237:
	.loc 1 1294 0
	xori 6,6,1
.LVL238:
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
	.loc 1 1291 0
	stb 3,color_write_mask@l(11)
	.loc 1 1294 0
	stb 6,3(9)
	.loc 1 1292 0
	stb 4,1(9)
	.loc 1 1293 0
	stb 5,2(9)
	.loc 1 1295 0
	blr
.LFE130:
	.size	glColorMask, .-glColorMask
	.align 2
	.globl glGetIntegerv
	.type	glGetIntegerv, @function
glGetIntegerv:
.LFB125:
	.loc 1 1152 0
.LVL239:
	mflr 0
.LCFI34:
	stwu 1,-32(1)
.LCFI35:
	.loc 1 1153 0
	lis 9,cur_state@ha
	.loc 1 1152 0
	stw 31,28(1)
.LCFI36:
	mr 31,4
	stw 0,36(1)
.LCFI37:
	.loc 1 1153 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L400
.LVL240:
	.loc 1 1155 0
	cmpwi 7,4,0
	beq- 7,.L399
.LVL241:
	.loc 1 1157 0
	cmplwi 7,3,3359
	ble- 7,.L401
	cmpwi 7,3,3385
	beq- 7,.L389
	cmplwi 7,3,3385
	ble- 7,.L402
	cmplwi 7,3,32878
	bgt- 7,.L398
	cmplwi 7,3,32875
	bge- 7,.L382
	cmpwi 7,3,3387
	bne+ 7,.L376
.L386:
	.loc 1 1199 0
	li 0,16
	stw 0,0(31)
.LVL242:
.L399:
	.loc 1 1250 0
	lwz 0,36(1)
	lwz 31,28(1)
.LVL243:
	addi 1,1,32
	mtlr 0
	blr
.LVL244:
.L401:
	.loc 1 1157 0
	cmplwi 7,3,3352
	bge- 7,.L383
	cmplwi 7,3,3317
	bgt- 7,.L394
	cmplwi 7,3,3312
	bge- 7,.L382
	cmpwi 7,3,2979
	beq- 7,.L379
	cmplwi 7,3,2979
	bgt- 7,.L395
	cmpwi 7,3,2976
	beq- 7,.L377
	cmpwi 7,3,2978
	bne+ 7,.L376
	.loc 1 1240 0
	lis 11,viewPort@ha
	lwz 9,viewPort@l(11)
	la 11,viewPort@l(11)
	stw 9,0(4)
	.loc 1 1241 0
	lwz 0,4(11)
	stw 0,4(4)
	.loc 1 1242 0
	lwz 9,8(11)
	stw 9,8(4)
	.loc 1 1243 0
	lwz 0,12(11)
	stw 0,12(4)
	b .L399
.LVL245:
.L400:
	.loc 1 1153 0
	lis 4,.LC6@ha
	li 3,1282
.LVL246:
	la 4,.LC6@l(4)
	li 5,1153
	bl _glSetErrorEx
	.loc 1 1250 0
	lwz 0,36(1)
	lwz 31,28(1)
.LVL247:
	addi 1,1,32
	mtlr 0
	blr
.LVL248:
.L402:
	.loc 1 1157 0
	cmpwi 7,3,3381
	beq- 7,.L386
	cmplwi 7,3,3381
	ble- 7,.L403
	cmpwi 7,3,3382
	beq- 7,.L387
	cmpwi 7,3,3384
	bne+ 7,.L376
	.loc 1 1189 0
	lis 3,projection_stack@ha
.LVL249:
	la 3,projection_stack@l(3)
	bl MaxStackSize
.LVL250:
	stw 3,0(31)
	b .L399
.LVL251:
.L394:
	.loc 1 1157 0
	cmplwi 7,3,3328
	blt- 7,.L376
	cmplwi 7,3,3333
	ble- 7,.L382
	addi 0,3,-3344
	cmplwi 7,0,5
	bgt- 7,.L376
.L383:
.LBB4:
	.loc 1 1235 0
	addi 4,1,8
.LVL252:
	bl _glGetPixelTransferf
.LVL253:
	.loc 1 1236 0
	lfs 0,8(1)
.LVL254:
	fctiwz 13,0
	stfiwx 13,0,31
	b .L399
.LVL255:
.L398:
.LBE4:
	.loc 1 1157 0
	xoris 0,3,0xffff
	cmpwi 7,0,-32535
	beq 7,.L391
	xoris 0,3,0xffff
	cmpwi 7,0,-31518
	beq 7,.L392
	xoris 0,3,0xffff
	cmpwi 7,0,-32536
	bne 7,.L376
.L391:
	.loc 1 1195 0
	li 0,32000
	stw 0,0(31)
	b .L399
.L403:
	.loc 1 1157 0
	cmpwi 7,3,3377
	beq- 7,.L392
	cmpwi 7,3,3379
	beq- 7,.L404
.L376:
	.loc 1 1246 0
	lis 4,.LC6@ha
.LVL256:
	li 3,1280
.LVL257:
	la 4,.LC6@l(4)
	li 5,1246
	bl _glSetErrorEx
	.loc 1 1247 0
	li 0,0
	stw 0,0(31)
	b .L399
.LVL258:
.L382:
	.loc 1 1217 0
	mr 4,31
	bl _glGetPixelStore
.LVL259:
	b .L399
.LVL260:
.L392:
	.loc 1 1171 0
	li 0,8
	stw 0,0(31)
	b .L399
.L404:
	.loc 1 1166 0
	li 0,1024
	stw 0,0(4)
	b .L399
.L377:
	.loc 1 1160 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	stw 0,0(4)
	b .L399
.L389:
	.loc 1 1186 0
	lis 3,texture_stack@ha
.LVL261:
	la 3,texture_stack@l(3)
	bl MaxStackSize
.LVL262:
	stw 3,0(31)
	b .L399
.LVL263:
.L387:
	.loc 1 1183 0
	lis 3,model_stack@ha
.LVL264:
	la 3,model_stack@l(3)
	bl MaxStackSize
.LVL265:
	stw 3,0(31)
	b .L399
.LVL266:
.L379:
	.loc 1 1174 0
	lis 3,model_stack@ha
.LVL267:
	la 3,model_stack@l(3)
	bl StackSize
.LVL268:
	stw 3,0(31)
	b .L399
.LVL269:
.L395:
	.loc 1 1157 0
	cmpwi 7,3,2980
	beq- 7,.L380
	cmpwi 7,3,2981
	bne+ 7,.L376
	.loc 1 1177 0
	lis 3,texture_stack@ha
.LVL270:
	la 3,texture_stack@l(3)
	bl StackSize
.LVL271:
	stw 3,0(31)
	b .L399
.LVL272:
.L380:
	.loc 1 1180 0
	lis 3,projection_stack@ha
.LVL273:
	la 3,projection_stack@l(3)
	bl StackSize
.LVL274:
	stw 3,0(31)
	b .L399
.LFE125:
	.size	glGetIntegerv, .-glGetIntegerv
	.align 2
	.globl glActiveTextureARB
	.type	glActiveTextureARB, @function
glActiveTextureARB:
.LFB124:
	.loc 1 1137 0
.LVL275:
	.loc 1 1138 0
	addis 3,3,0xffff
.LVL276:
	.loc 1 1137 0
	mflr 0
.LCFI38:
	.loc 1 1138 0
	addi 3,3,31552
	.loc 1 1137 0
	stwu 1,-8(1)
.LCFI39:
	.loc 1 1138 0
	cmplwi 7,3,8
	.loc 1 1137 0
	stw 0,12(1)
.LCFI40:
	.loc 1 1138 0
	bgt- 7,.L411
	.loc 1 1146 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	.loc 1 1144 0
	lis 9,cur_tex@ha
	stw 3,cur_tex@l(9)
	.loc 1 1146 0
	cmpwi 7,0,5890
	beq- 7,.L412
	.loc 1 1150 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L411:
	lwz 0,12(1)
	.loc 1 1140 0
	lis 4,.LC6@ha
	la 4,.LC6@l(4)
	li 3,1280
	.loc 1 1150 0
	mtlr 0
	.loc 1 1140 0
	li 5,1140
	.loc 1 1150 0
	addi 1,1,8
	.loc 1 1140 0
	b _glSetErrorEx
.L412:
	.loc 1 1148 0
	li 3,5890
	bl glMatrixMode
	.loc 1 1150 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE124:
	.size	glActiveTextureARB, .-glActiveTextureARB
	.align 2
	.globl glGetFloatv
	.type	glGetFloatv, @function
glGetFloatv:
.LFB121:
	.loc 1 1038 0
.LVL277:
	mflr 0
.LCFI41:
	stwu 1,-40(1)
.LCFI42:
	.loc 1 1039 0
	lis 9,cur_state@ha
	.loc 1 1038 0
	stw 31,36(1)
.LCFI43:
	mr 31,4
	stw 0,44(1)
.LCFI44:
	.loc 1 1039 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L431
.LVL278:
	.loc 1 1041 0
	cmpwi 7,4,0
	beq- 7,.L432
.LVL279:
	.loc 1 1047 0
	cmplwi 7,3,3359
	ble- 7,.L433
	cmplwi 7,3,32878
	ble- 7,.L434
	xoris 0,3,0xffff
	cmpwi 7,0,-31518
	beq 7,.L420
	cmplwi 7,3,34018
	bgt- 7,.L429
	addis 9,3,0xffff
	addi 9,9,32536
	cmplwi 7,9,1
	bgt- 7,.L419
.L420:
.LBB5:
	.loc 1 1102 0
	addi 4,1,8
.LVL280:
	bl glGetIntegerv
.LVL281:
	.loc 1 1103 0
	lwz 0,8(1)
.LVL282:
	lis 9,0x4330
	xoris 0,0,0x8000
	stw 9,24(1)
	stw 0,28(1)
	lis 9,.LC21@ha
	lfs 13,.LC21@l(9)
	lfd 0,24(1)
	fsub 0,0,13
	frsp 0,0
	stfs 0,0(31)
.LVL283:
.L419:
.LBE5:
	.loc 1 1106 0
	lis 4,.LC6@ha
	li 3,1280
.LVL284:
	la 4,.LC6@l(4)
	li 5,1106
	bl _glSetErrorEx
	.loc 1 1109 0
	lwz 0,44(1)
	lwz 31,36(1)
.LVL285:
	addi 1,1,40
	mtlr 0
	blr
.LVL286:
.L433:
	.loc 1 1047 0
	cmplwi 7,3,3352
	bge- 7,.L422
	cmplwi 7,3,3317
	bgt- 7,.L425
	cmplwi 7,3,3312
	bge- 7,.L420
	cmplwi 7,3,2981
	bgt- 7,.L426
	cmplwi 7,3,2979
	bge- 7,.L420
	cmpwi 7,3,2976
	bne+ 7,.L419
	b .L420
.LVL287:
.L431:
	.loc 1 1039 0
	lis 4,.LC6@ha
	li 3,1282
.LVL288:
	la 4,.LC6@l(4)
	li 5,1039
	bl _glSetErrorEx
.L430:
	.loc 1 1109 0
	lwz 0,44(1)
	lwz 31,36(1)
.LVL289:
	addi 1,1,40
	mtlr 0
	blr
.LVL290:
.L434:
	.loc 1 1047 0
	cmplwi 7,3,32875
	bge- 7,.L420
	cmpwi 7,3,3382
	beq- 7,.L420
	cmplwi 7,3,3382
	bgt- 7,.L428
	cmpwi 7,3,3377
	beq- 7,.L420
	cmpwi 7,3,3379
	bne+ 7,.L419
	b .L420
.L425:
	cmplwi 7,3,3328
	blt- 7,.L419
	cmplwi 7,3,3333
	ble- 7,.L420
	addi 0,3,-3344
	cmplwi 7,0,5
	bgt- 7,.L419
.L422:
	.loc 1 1070 0
	mr 4,31
	bl _glGetPixelTransferf
.LVL291:
	.loc 1 1109 0
	lwz 0,44(1)
	lwz 31,36(1)
.LVL292:
	addi 1,1,40
	mtlr 0
	blr
.LVL293:
.L432:
	.loc 1 1043 0
	lis 4,.LC6@ha
.LVL294:
	li 3,1281
.LVL295:
	la 4,.LC6@l(4)
	li 5,1043
	bl _glSetErrorEx
	b .L430
.LVL296:
.L429:
	.loc 1 1047 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31489
	bne 7,.L419
	.loc 1 1050 0
	lis 9,.LC27@ha
	lfs 0,.LC27@l(9)
	stfs 0,0(4)
.L421:
	.loc 1 1054 0
	mr 4,31
	bl _glGetMatrixf
.LVL297:
	.loc 1 1109 0
	lwz 0,44(1)
	lwz 31,36(1)
.LVL298:
	addi 1,1,40
	mtlr 0
	blr
.LVL299:
.L428:
	.loc 1 1047 0
	addi 0,3,-3384
	cmplwi 7,0,1
	bgt- 7,.L419
	b .L420
.L426:
	cmplwi 7,3,2984
	bgt- 7,.L419
	b .L421
.LFE121:
	.size	glGetFloatv, .-glGetFloatv
	.align 2
	.globl gxgl_glGetDoublev
	.type	gxgl_glGetDoublev, @function
gxgl_glGetDoublev:
.LFB120:
	.loc 1 1024 0
.LVL300:
	.loc 1 1025 0
	cmplwi 7,3,2982
	.loc 1 1024 0
	mflr 0
.LCFI45:
	stwu 1,-8(1)
.LCFI46:
	stw 0,12(1)
.LCFI47:
	.loc 1 1025 0
	blt- 7,.L436
	cmplwi 7,3,2983
	bgt- 7,.L440
.L437:
	.loc 1 1029 0
	bl _glGetMatrixd
.LVL301:
	.loc 1 1035 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL302:
.L440:
	.loc 1 1025 0
	xoris 0,3,0xffff
	cmpwi 7,0,-31489
	beq 7,.L437
.L436:
	.loc 1 1035 0
	lwz 0,12(1)
	.loc 1 1032 0
	lis 4,.LC6@ha
.LVL303:
	la 4,.LC6@l(4)
	li 3,1280
.LVL304:
	.loc 1 1035 0
	mtlr 0
	.loc 1 1032 0
	li 5,1032
	.loc 1 1035 0
	addi 1,1,8
	.loc 1 1032 0
	b _glSetErrorEx
.LFE120:
	.size	gxgl_glGetDoublev, .-gxgl_glGetDoublev
	.align 2
	.globl glDisable
	.type	glDisable, @function
glDisable:
.LFB117:
	.loc 1 906 0
.LVL305:
	mflr 0
.LCFI48:
	stwu 1,-16(1)
.LCFI49:
	.loc 1 907 0
	lis 9,cur_state@ha
	.loc 1 906 0
	mr 4,3
	stw 31,12(1)
.LCFI50:
	stw 0,20(1)
.LCFI51:
	.loc 1 907 0
	lwz 0,cur_state@l(9)
	andi. 31,0,1
	bne- 0,.L466
.LVL306:
	.loc 1 909 0
	cmpwi 7,3,3058
	beq- 7,.L464
.LVL307:
	cmplwi 7,3,3058
	bgt- 7,.L456
	cmpwi 7,3,2903
	beq- 7,.L448
	cmplwi 7,3,2903
	bgt- 7,.L457
	cmplwi 7,3,2882
	bgt- 7,.L458
	cmplwi 7,3,2881
	bge- 7,.L464
	cmpwi 7,3,2848
	beq- 7,.L464
	cmpwi 7,3,2852
	beq- 7,.L464
	cmpwi 7,3,2832
	bne+ 7,.L444
.LVL308:
.L464:
	.loc 1 971 0
	lwz 0,20(1)
	lwz 31,12(1)
	addi 1,1,16
	mtlr 0
	blr
.LVL309:
.L466:
	.loc 1 907 0
	lis 4,.LC6@ha
.LVL310:
	li 3,1282
.LVL311:
	la 4,.LC6@l(4)
	li 5,907
.L465:
	.loc 1 971 0
	lwz 0,20(1)
	lwz 31,12(1)
	addi 1,1,16
	mtlr 0
	.loc 1 968 0
	b _glSetErrorEx
.LVL312:
.L456:
	.loc 1 909 0
	cmpwi 7,3,3553
	beq- 7,.L454
	cmplwi 7,3,3553
	bgt- 7,.L460
	cmpwi 7,3,3456
	beq- 7,.L464
	cmplwi 7,3,3456
	ble- 7,.L467
	cmpwi 7,3,3472
	beq- 7,.L464
	cmplwi 7,3,3472
	blt- 7,.L444
	addi 0,3,-3508
	cmplwi 7,0,4
	bgt- 7,.L444
	b .L464
.L454:
	.loc 1 915 0
	li 3,0
.LVL313:
	bl _glSetEnableTex
.LVL314:
	b .L464
.LVL315:
.L448:
	.loc 1 933 0
	lis 9,copy_mat_enabled@ha
	stb 31,copy_mat_enabled@l(9)
	b .L464
.L457:
	.loc 1 909 0
	cmpwi 7,3,2977
	beq- 7,.L464
	cmplwi 7,3,2977
	ble- 7,.L468
	cmpwi 7,3,3024
	beq- 7,.L464
	cmpwi 7,3,3042
	beq- 7,.L452
	cmpwi 7,3,3008
	bne+ 7,.L444
	.loc 1 911 0
	lis 9,_alphatest_enabled@ha
	stb 31,_alphatest_enabled@l(9)
	b .L464
.L460:
	.loc 1 909 0
	cmplwi 7,3,12293
	ble- 7,.L469
	cmplwi 7,3,16384
	blt- 7,.L444
	cmplwi 7,3,16391
	ble- 7,.L455
	xoris 0,3,0xffff
	cmpwi 7,0,-32713
	bne 7,.L444
	b .L464
.L469:
	cmplwi 7,3,12288
	bge- 7,.L464
	addi 0,3,-10753
	cmplwi 7,0,1
	ble- 7,.L464
.L444:
	.loc 1 967 0
	lis 3,.LC30@ha
.LVL316:
	la 3,.LC30@l(3)
	crxor 6,6,6
	bl printf
.LVL317:
	.loc 1 968 0
	lis 4,.LC6@ha
	la 4,.LC6@l(4)
	li 3,1280
	li 5,968
	b .L465
.LVL318:
.L458:
	.loc 1 909 0
	cmpwi 7,3,2884
	beq- 7,.L446
	cmpwi 7,3,2896
	bne+ 7,.L444
	.loc 1 914 0
	lis 9,lighting@ha
	stb 31,lighting@l(9)
	b .L464
.L468:
	.loc 1 909 0
	cmpwi 7,3,2929
	beq- 7,.L450
	cmpwi 7,3,2960
	beq- 7,.L464
	cmpwi 7,3,2912
	bne+ 7,.L444
	.loc 1 932 0
	lis 9,fog_enable@ha
	stb 31,fog_enable@l(9)
	b .L464
.L467:
	.loc 1 909 0
	cmpwi 7,3,3089
	beq- 7,.L453
	cmplwi 7,3,3089
	blt- 7,.L444
	addi 0,3,-3168
	cmplwi 7,0,3
	bgt- 7,.L444
	b .L464
.L455:
.LBB6:
	.loc 1 925 0
	bl glLightN
.LVL319:
	.loc 1 926 0
	cmpwi 0,3,0
.LVL320:
	blt- 0,.L464
	.loc 1 928 0
	mulli 0,3,164
	lis 9,lights@ha
	la 9,lights@l(9)
	stbx 31,9,0
	b .L464
.LVL321:
.L446:
.LBE6:
	.loc 1 931 0
	lis 9,gxcullfaceanabled@ha
	stb 31,gxcullfaceanabled@l(9)
	b .L464
.L453:
	.loc 1 934 0
	lis 9,scissor_test@ha
	stb 31,scissor_test@l(9)
	b .L464
.L450:
	.loc 1 913 0
	lis 9,depthtestenabled@ha
	stb 31,depthtestenabled@l(9)
	b .L464
.L452:
	.loc 1 912 0
	lis 9,blend_type@ha
	stb 31,blend_type@l(9)
	b .L464
.LFE117:
	.size	glDisable, .-glDisable
	.align 2
	.globl glEnable
	.type	glEnable, @function
glEnable:
.LFB115:
	.loc 1 785 0
.LVL322:
	mflr 0
.LCFI52:
	stwu 1,-16(1)
.LCFI53:
	.loc 1 786 0
	lis 9,cur_state@ha
	.loc 1 785 0
	stw 31,12(1)
.LCFI54:
	stw 0,20(1)
.LCFI55:
	.loc 1 786 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L493
	.loc 1 788 0
	cmpwi 7,3,3008
	beq- 7,.L479
	cmplwi 7,3,3008
	bgt- 7,.L484
	cmpwi 7,3,2903
	beq- 7,.L476
	cmplwi 7,3,2903
	bgt- 7,.L485
	cmpwi 7,3,2884
	beq- 7,.L474
	cmpwi 7,3,2896
	beq- 7,.L494
.L473:
	.loc 1 818 0
	mr 4,3
	lis 3,.LC31@ha
.LVL323:
	la 3,.LC31@l(3)
	crxor 6,6,6
	bl printf
.LVL324:
	.loc 1 819 0
	lis 4,.LC6@ha
	la 4,.LC6@l(4)
	li 3,1280
	li 5,819
	b .L492
.LVL325:
.L493:
	.loc 1 786 0
	lis 4,.LC6@ha
	li 3,1282
.LVL326:
	la 4,.LC6@l(4)
	li 5,786
.L492:
	.loc 1 822 0
	lwz 0,20(1)
	lwz 31,12(1)
	addi 1,1,16
	mtlr 0
	.loc 1 819 0
	b _glSetErrorEx
.LVL327:
.L484:
	.loc 1 788 0
	cmpwi 7,3,3553
	beq- 7,.L482
	cmplwi 7,3,3553
	bgt- 7,.L486
	cmpwi 7,3,3042
	beq- 7,.L480
	cmpwi 7,3,3089
	bne+ 7,.L473
	.loc 1 816 0
	li 0,1
	lis 9,scissor_test@ha
	stb 0,scissor_test@l(9)
	b .L490
.L479:
	.loc 1 790 0
	li 0,1
	lis 9,_alphatest_enabled@ha
	stb 0,_alphatest_enabled@l(9)
.LVL328:
.L490:
	.loc 1 822 0
	lwz 0,20(1)
	lwz 31,12(1)
	addi 1,1,16
	mtlr 0
	blr
.LVL329:
.L476:
	.loc 1 815 0
	li 0,1
	lis 9,copy_mat_enabled@ha
	stb 0,copy_mat_enabled@l(9)
	b .L490
.L482:
	.loc 1 794 0
	li 3,1
.LVL330:
	bl _glSetEnableTex
	b .L490
.LVL331:
.L494:
	.loc 1 793 0
	li 0,1
	lis 9,lighting@ha
	stb 0,lighting@l(9)
	b .L490
.L486:
	.loc 1 788 0
	addi 0,3,-16384
	cmplwi 7,0,7
	bgt- 7,.L473
.LBB7:
	.loc 1 804 0
	bl glLightN
.LVL332:
	.loc 1 805 0
	cmpwi 0,3,0
.LVL333:
	blt- 0,.L495
	.loc 1 810 0
	mulli 11,3,164
	lis 9,lights@ha
	li 0,1
	la 9,lights@l(9)
	stbx 0,11,9
	b .L490
.LVL334:
.L485:
.LBE7:
	.loc 1 788 0
	cmpwi 7,3,2912
	beq- 7,.L477
	cmpwi 7,3,2929
	bne+ 7,.L473
	.loc 1 792 0
	li 0,1
	lis 9,depthtestenabled@ha
	stb 0,depthtestenabled@l(9)
	b .L490
.L477:
	.loc 1 814 0
	li 0,1
	lis 9,fog_enable@ha
	stb 0,fog_enable@l(9)
	b .L490
.L480:
	.loc 1 791 0
	li 0,1
	lis 9,blend_type@ha
	stb 0,blend_type@l(9)
	b .L490
.L474:
	.loc 1 813 0
	li 0,1
	lis 9,gxcullfaceanabled@ha
	stb 0,gxcullfaceanabled@l(9)
	b .L490
.LVL335:
.L495:
.LBB8:
	.loc 1 807 0
	lis 4,.LC6@ha
	li 3,1280
.LVL336:
	la 4,.LC6@l(4)
	li 5,807
	b .L492
.LBE8:
.LFE115:
	.size	glEnable, .-glEnable
	.align 2
	.globl glIsEnabled
	.type	glIsEnabled, @function
glIsEnabled:
.LFB116:
	.loc 1 825 0
.LVL337:
	mflr 0
.LCFI56:
	stwu 1,-8(1)
.LCFI57:
	.loc 1 827 0
	lis 9,cur_state@ha
	.loc 1 825 0
	stw 0,12(1)
.LCFI58:
	.loc 1 827 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L525
	.loc 1 829 0
	cmpwi 7,3,3089
	beq- 7,.L509
	cmplwi 7,3,3089
	bgt- 7,.L512
	cmpwi 7,3,2912
	beq- 7,.L505
	cmplwi 7,3,2912
	bgt- 7,.L513
	cmplwi 7,3,2882
	ble- 7,.L526
	cmpwi 7,3,2896
	beq- 7,.L503
	cmpwi 7,3,2903
	beq- 7,.L504
	cmpwi 7,3,2884
	bne+ 7,.L500
	.loc 1 833 0
	lis 9,gxcullfaceanabled@ha
	lbz 0,gxcullfaceanabled@l(9)
	xori 3,0,1
.LVL338:
	cntlzw 3,3
	srwi 3,3,5
	b .L499
.LVL339:
.L525:
	.loc 1 827 0
	lis 4,.LC6@ha
	li 3,1282
.LVL340:
	la 4,.LC6@l(4)
	li 5,827
	bl _glSetErrorEx
	li 3,0
.L499:
	.loc 1 903 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL341:
.L512:
	.loc 1 829 0
	cmplwi 7,3,10754
	ble- 7,.L527
	cmplwi 7,3,16391
	bgt- 7,.L519
	cmplwi 7,3,16384
	blt- 7,.L528
.LBB9:
	.loc 1 856 0
	bl glLightN
.LVL342:
	.loc 1 857 0
	cmpwi 0,3,0
.LVL343:
	blt- 0,.L529
	.loc 1 862 0
	mulli 0,3,164
	lis 9,lights@ha
	la 9,lights@l(9)
	lbzx 11,9,0
	xori 3,11,1
.LVL344:
	cntlzw 3,3
	srwi 3,3,5
	b .L499
.LVL345:
.L509:
.LBE9:
	.loc 1 866 0
	lis 9,scissor_test@ha
	lbz 3,scissor_test@l(9)
.LVL346:
	b .L499
.LVL347:
.L527:
	.loc 1 829 0
	cmplwi 7,3,10753
	bge- 7,.L524
	cmpwi 7,3,3472
	beq- 7,.L524
	cmplwi 7,3,3472
	bgt- 7,.L518
	cmplwi 7,3,3168
	blt- 7,.L500
	cmplwi 7,3,3171
	ble- 7,.L524
	cmpwi 7,3,3456
	bne+ 7,.L500
.L524:
	.loc 1 900 0
	li 3,0
.LVL348:
.L531:
	.loc 1 903 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL349:
.L505:
	.loc 1 835 0
	lis 9,fog_enable@ha
	lbz 0,fog_enable@l(9)
	xori 3,0,1
.LVL350:
	cntlzw 3,3
	srwi 3,3,5
	b .L499
.LVL351:
.L513:
	.loc 1 829 0
	cmpwi 7,3,3008
	beq- 7,.L524
	cmplwi 7,3,3008
	bgt- 7,.L515
	cmpwi 7,3,2960
	beq- 7,.L524
	cmpwi 7,3,2977
	beq- 7,.L524
	cmpwi 7,3,2929
	bne+ 7,.L500
	.loc 1 834 0
	lis 9,depthtestenabled@ha
	lbz 0,depthtestenabled@l(9)
	xori 3,0,1
.LVL352:
	cntlzw 3,3
	srwi 3,3,5
	b .L499
.LVL353:
.L519:
	.loc 1 829 0
	xoris 0,3,0xffff
	cmpwi 7,0,-32713
	beq 7,.L524
	cmplwi 7,3,32823
	blt- 7,.L500
	addis 9,3,0xffff
	addi 9,9,32652
	cmplwi 7,9,5
	ble- 7,.L530
.L500:
	.loc 1 900 0
	lis 4,.LC6@ha
	li 3,1280
.LVL354:
	la 4,.LC6@l(4)
	li 5,900
	bl _glSetErrorEx
	li 3,0
	b .L531
.LVL355:
.L526:
	.loc 1 829 0
	cmplwi 7,3,2881
	bge- 7,.L524
	cmpwi 7,3,2848
	beq- 7,.L524
	cmpwi 7,3,2852
	beq- 7,.L524
	cmpwi 7,3,2832
	bne+ 7,.L500
	.loc 1 900 0
	li 3,0
.LVL356:
	b .L531
.LVL357:
.L515:
	.loc 1 829 0
	cmpwi 7,3,3042
	beq- 7,.L507
	cmplwi 7,3,3042
	bgt- 7,.L516
	cmpwi 7,3,3024
	bne+ 7,.L500
	.loc 1 900 0
	li 3,0
.LVL358:
	b .L531
.LVL359:
.L528:
	.loc 1 829 0
	addi 0,3,-12288
	cmplwi 7,0,5
	bgt- 7,.L500
	.loc 1 900 0
	li 3,0
.LVL360:
	b .L531
.LVL361:
.L530:
	.loc 1 842 0
	bl _glIsArrayEnabled
.LVL362:
	b .L499
.LVL363:
.L504:
	.loc 1 832 0
	lis 9,copy_mat_enabled@ha
	lbz 0,copy_mat_enabled@l(9)
	xori 3,0,1
.LVL364:
	cntlzw 3,3
	srwi 3,3,5
	b .L499
.LVL365:
.L503:
	.loc 1 865 0
	lis 9,lighting@ha
	lbz 0,lighting@l(9)
	xori 3,0,1
.LVL366:
	cntlzw 3,3
	srwi 3,3,5
	b .L499
.LVL367:
.L507:
	.loc 1 831 0
	lis 9,blend_type@ha
	lbz 0,blend_type@l(9)
	xori 3,0,1
.LVL368:
	cntlzw 3,3
	srwi 3,3,5
	b .L499
.LVL369:
.L518:
	.loc 1 829 0
	cmplwi 7,3,3508
	blt- 7,.L500
	cmplwi 7,3,3512
	ble- 7,.L524
	addi 0,3,-3552
	cmplwi 7,0,1
	bgt- 7,.L500
.L508:
	.loc 1 846 0
	lis 9,cur_tex@ha
	lwz 3,cur_tex@l(9)
.LVL370:
	bl _glGetEnableTex
	b .L499
.LVL371:
.L516:
	.loc 1 829 0
	cmpwi 7,3,3057
	beq- 7,.L508
	cmpwi 7,3,3058
	bne+ 7,.L500
	.loc 1 900 0
	li 3,0
.LVL372:
	b .L531
.LVL373:
.L529:
.LBB10:
	.loc 1 859 0
	lis 4,.LC6@ha
	li 3,1280
.LVL374:
	la 4,.LC6@l(4)
	li 5,859
	bl _glSetErrorEx
	li 3,0
	b .L499
.LBE10:
.LFE116:
	.size	glIsEnabled, .-glIsEnabled
	.align 2
	.globl updateFog
	.type	updateFog, @function
updateFog:
.LFB109:
	.loc 1 674 0
	mflr 0
.LCFI59:
	stwu 1,-16(1)
.LCFI60:
	.loc 1 675 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	.loc 1 674 0
	stw 0,20(1)
.LCFI61:
	.loc 1 675 0
	bl TopPrjMtx
	.loc 1 676 0
	lis 9,fog_enable@ha
	.loc 1 675 0
	mr 10,3
.LVL375:
	.loc 1 676 0
	lbz 0,fog_enable@l(9)
	cmpwi 7,0,0
	beq- 7,.L533
	.loc 1 678 0
	lis 9,fog_mode@ha
	lbz 3,fog_mode@l(9)
	andi. 0,3,2
	bne- 0,.L539
	.loc 1 684 0
	lis 9,fog_color@ha
	addi 4,1,8
	lwz 0,fog_color@l(9)
	lis 9,fog_density@ha
	lfs 2,fog_density@l(9)
	lis 9,.LC18@ha
	stw 0,8(1)
	lfs 1,.LC18@l(9)
	lfs 4,72(10)
	lfs 3,68(10)
	bl GX_SetFog
.LVL376:
	.loc 1 691 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LVL377:
.L539:
	.loc 1 680 0
	lis 9,fog_color@ha
	lis 11,fog_endz@ha
	lwz 0,fog_color@l(9)
	lis 9,fog_startz@ha
	lfs 1,fog_startz@l(9)
	addi 4,1,8
	stw 0,8(1)
	lfs 2,fog_endz@l(11)
	lfs 4,72(10)
	lfs 3,68(10)
	bl GX_SetFog
.LVL378:
	.loc 1 691 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LVL379:
.L533:
	.loc 1 689 0
	lis 9,fog_color@ha
	lis 11,fog_endz@ha
	lwz 0,fog_color@l(9)
	lis 9,fog_startz@ha
	lfs 1,fog_startz@l(9)
	addi 4,1,8
	stw 0,8(1)
	lfs 2,fog_endz@l(11)
	lfs 4,72(3)
	lfs 3,68(3)
	li 3,0
	bl GX_SetFog
.LVL380:
	.loc 1 691 0
	lwz 0,20(1)
	addi 1,1,16
	mtlr 0
	blr
.LFE109:
	.size	updateFog, .-updateFog
	.align 2
	.globl glFlush
	.type	glFlush, @function
glFlush:
.LFB108:
	.loc 1 662 0
	mflr 0
.LCFI62:
	stwu 1,-8(1)
.LCFI63:
	.loc 1 664 0
	lis 9,cur_state@ha
	.loc 1 662 0
	stw 0,12(1)
.LCFI64:
	.loc 1 664 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L541
	.loc 1 667 0
	lwz 0,12(1)
	.loc 1 664 0
	lis 4,.LC6@ha
	la 4,.LC6@l(4)
	li 3,1282
	.loc 1 667 0
	mtlr 0
	.loc 1 664 0
	li 5,664
	.loc 1 667 0
	addi 1,1,8
	.loc 1 664 0
	b _glSetErrorEx
.L541:
	.loc 1 666 0
	bl GX_DrawDone
	.loc 1 667 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE108:
	.size	glFlush, .-glFlush
	.align 2
	.globl glLightfv
	.type	glLightfv, @function
glLightfv:
.LFB100:
	.loc 1 351 0
.LVL381:
	mflr 0
.LCFI65:
	stwu 1,-96(1)
.LCFI66:
	.loc 1 352 0
	lis 9,cur_state@ha
	.loc 1 351 0
	stw 29,84(1)
.LCFI67:
	mr 29,4
	stw 0,100(1)
.LCFI68:
	stw 31,92(1)
.LCFI69:
	mr 31,5
	.loc 1 352 0
	lwz 0,cur_state@l(9)
	.loc 1 351 0
	stw 27,76(1)
.LCFI70:
	.loc 1 352 0
	andi. 9,0,1
	.loc 1 351 0
	stw 28,80(1)
.LCFI71:
	.loc 1 352 0
	beq- 0,.L546
.LVL382:
	lis 4,.LC6@ha
	li 3,1282
.LVL383:
	la 4,.LC6@l(4)
	li 5,352
	bl _glSetErrorEx
.LVL384:
.L557:
	.loc 1 411 0
	lwz 0,100(1)
	lwz 27,76(1)
	lwz 28,80(1)
	mtlr 0
	lwz 29,84(1)
.LVL385:
	lwz 31,92(1)
.LVL386:
	addi 1,1,96
	blr
.LVL387:
.L546:
	.loc 1 354 0
	bl glLightN
.LVL388:
	.loc 1 356 0
	cmpwi 0,3,0
.LVL389:
	blt- 0,.L557
	.loc 1 361 0
	addi 4,29,-4608
	.loc 1 359 0
	lis 9,.LANCHOR0@ha
	.loc 1 361 0
	cmplwi 7,4,4
	.loc 1 359 0
	la 11,.LANCHOR0@l(9)
	lwz 10,.LANCHOR0@l(9)
	lwz 8,8(11)
	lwz 0,4(11)
	stw 10,8(1)
	stw 0,12(1)
	stw 8,16(1)
	.loc 1 361 0
	ble- 7,.L558
.LBB11:
	.loc 1 407 0
	lis 4,.LC6@ha
	li 3,1280
.LVL390:
	la 4,.LC6@l(4)
	li 5,407
	bl _glSetErrorEx
	b .L557
.LVL391:
.L558:
.LBE11:
	.loc 1 361 0
	lis 9,.L556@ha
	slwi 0,4,2
	la 9,.L556@l(9)
	lwzx 11,9,0
	add 11,11,9
	mtctr 11
	bctr
	.section	.rodata
	.align 2
	.align 2
.L556:
	.long .L551-.L556
	.long .L552-.L556
	.long .L553-.L556
	.long .L554-.L556
	.long .L555-.L556
	.section	".text"
.L555:
.LBB12:
	.loc 1 395 0
	mulli 27,3,164
	lis 29,lights@ha
.LVL392:
	lfs 0,0(31)
	la 29,lights@l(29)
	.loc 1 402 0
	lis 3,model_stack@ha
.LVL393:
	addi 28,1,20
	.loc 1 395 0
	add 9,27,29
	.loc 1 402 0
	la 3,model_stack@l(3)
	.loc 1 395 0
	stfs 0,84(9)
	.loc 1 404 0
	add 29,29,27
	addi 29,29,84
	.loc 1 396 0
	lfs 13,4(31)
	stfs 13,88(9)
	.loc 1 397 0
	lfs 0,8(31)
	stfs 0,92(9)
	.loc 1 402 0
	bl TopMtx
	mr 4,28
	bl ps_guMtxTranspose
	.loc 1 404 0
	mr 4,29
	mr 3,28
	mr 5,29
	bl ps_guVecMultiply
	b .L557
.LVL394:
.L554:
.LBE12:
	.loc 1 370 0
	mulli 28,3,164
	.loc 1 365 0
	lfs 0,0(31)
	.loc 1 366 0
	lfs 13,4(31)
	.loc 1 370 0
	lis 3,model_stack@ha
.LVL395:
	.loc 1 367 0
	lfs 12,8(31)
	.loc 1 370 0
	lis 29,lights@ha
.LVL396:
	la 29,lights@l(29)
	la 3,model_stack@l(3)
	.loc 1 365 0
	stfs 0,8(1)
	.loc 1 366 0
	stfs 13,12(1)
	.loc 1 367 0
	stfs 12,16(1)
	.loc 1 370 0
	bl TopMtx
	add 5,28,29
	addi 4,1,8
	addi 5,5,68
	.loc 1 372 0
	add 28,28,29
	.loc 1 370 0
	bl ps_guVecMultiply
	.loc 1 372 0
	lfs 0,12(31)
	stfs 0,80(28)
	b .L557
.LVL397:
.L553:
	.loc 1 388 0
	mulli 11,3,164
	lis 9,lights@ha
	lfs 13,0(31)
	la 9,lights@l(9)
	add 11,11,9
	stfs 13,128(11)
	.loc 1 389 0
	lfs 0,4(31)
	stfs 0,132(11)
	.loc 1 390 0
	lfs 13,8(31)
	stfs 13,136(11)
	.loc 1 391 0
	lfs 0,12(31)
	stfs 0,140(11)
	b .L557
.L552:
	.loc 1 376 0
	mulli 11,3,164
	lis 9,lights@ha
	lfs 13,0(31)
	la 9,lights@l(9)
	add 11,11,9
	stfs 13,112(11)
	.loc 1 377 0
	lfs 0,4(31)
	stfs 0,116(11)
	.loc 1 378 0
	lfs 13,8(31)
	stfs 13,120(11)
	.loc 1 379 0
	lfs 0,12(31)
	stfs 0,124(11)
	b .L557
.L551:
	.loc 1 382 0
	mulli 11,3,164
	lis 9,lights@ha
	lfs 13,0(31)
	la 9,lights@l(9)
	add 11,11,9
	stfs 13,96(11)
	.loc 1 383 0
	lfs 0,4(31)
	stfs 0,100(11)
	.loc 1 384 0
	lfs 13,8(31)
	stfs 13,104(11)
	.loc 1 385 0
	lfs 0,12(31)
	stfs 0,108(11)
	b .L557
.LFE100:
	.size	glLightfv, .-glLightfv
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
	.comm	_alphatest_func,4,4
	.comm	_alphatest_ref,4,4
	.comm	_alphatest_enabled,1,1
	.comm	_alphatest_dirty,1,1
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
	.type	C.42.14143, @object
	.size	C.42.14143, 12
C.42.14143:
	.zero	12
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1065353216
.LC2:
	.4byte	1501560832
.LC3:
	.4byte	1132396544
.LC8:
	.4byte	1325400064
.LC18:
	.4byte	0
.LC21:
	.4byte	1501560836
.LC27:
	.4byte	1082130432
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC9:
	.4byte	1075195458
	.4byte	-17155559
.LC23:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC6:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl.c"
	.zero	2
.LC30:
	.string	"glDisable invalind enum, 0x%X\n"
	.zero	1
.LC31:
	.string	"glEnable invalind enum, 0x%X\n"
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
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.byte	0x4
	.4byte	.LCFI0-.LFB90
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.byte	0x4
	.4byte	.LCFI1-.LFB91
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
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
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
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
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI2-.LFB112
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI3-.LFB113
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI4-.LFB111
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.align 2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x4
	.4byte	.LCFI5-.LFB106
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.align 2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.align 2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.byte	0x4
	.4byte	.LCFI7-.LFB102
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.align 2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.byte	0x4
	.4byte	.LCFI11-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.byte	0x4
	.4byte	.LCFI14-.LFB99
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xbf
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI17-.LCFI15
	.byte	0x9f
	.uleb128 0x3
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.align 2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x4
	.4byte	.LCFI18-.LFB84
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x9f
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI25-.LCFI19
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
	.align 2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.align 2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.align 2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.align 2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x4
	.4byte	.LCFI26-.LFB80
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.align 2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.align 2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.align 2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.align 2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.align 2
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI28-.LFB74
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.align 2
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.align 2
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.align 2
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.align 2
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.align 2
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.align 2
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.align 2
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.byte	0x4
	.4byte	.LCFI32-.LFB129
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.align 2
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.byte	0x4
	.4byte	.LCFI35-.LFB125
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.byte	0x4
	.4byte	.LCFI39-.LFB124
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI42-.LFB121
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE110:
.LSFDE112:
	.4byte	.LEFDE112-.LASFDE112
.LASFDE112:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI46-.LFB120
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE112:
.LSFDE114:
	.4byte	.LEFDE114-.LASFDE114
.LASFDE114:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI49-.LFB117
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI51-.LCFI49
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE114:
.LSFDE116:
	.4byte	.LEFDE116-.LASFDE116
.LASFDE116:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI53-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI55-.LCFI53
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE116:
.LSFDE118:
	.4byte	.LEFDE118-.LASFDE118
.LASFDE118:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI57-.LFB116
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE118:
.LSFDE120:
	.4byte	.LEFDE120-.LASFDE120
.LASFDE120:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI60-.LFB109
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE120:
.LSFDE122:
	.4byte	.LEFDE122-.LASFDE122
.LASFDE122:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI63-.LFB108
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE122:
.LSFDE124:
	.4byte	.LEFDE124-.LASFDE124
.LASFDE124:
	.4byte	.Lframe0
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.byte	0x4
	.4byte	.LCFI66-.LFB100
	.byte	0xe
	.uleb128 0x60
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI69-.LCFI67
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI71-.LCFI69
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9b
	.uleb128 0x5
	.align 2
.LEFDE124:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB90-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB91-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE91-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LFB106-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE106-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL75-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LFB102-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL98-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL102-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LFB98-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LFB99-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LFB84-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST88:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST90:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST91:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST92:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST93:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0x0
	.4byte	0x0
.LLST95:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST97:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST98:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST99:
	.4byte	.LFB80-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST100:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST101:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST103:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST104:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST105:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST106:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST108:
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST109:
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST111:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST113:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL176-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST115:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST116:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST117:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST118:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST119:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST120:
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL203-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST121:
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL196-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST123:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST124:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST126:
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST127:
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST129:
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST131:
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST132:
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST134:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST135:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST137:
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST138:
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST140:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST141:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST142:
	.4byte	.LFB129-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE129-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST143:
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST145:
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST146:
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST147:
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST148:
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST149:
	.4byte	.LFB125-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE125-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST150:
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST151:
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL274-.Ltext0
	.4byte	.LFE125-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST152:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0x0
	.4byte	0x0
.LLST153:
	.4byte	.LFB124-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE124-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST154:
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST155:
	.4byte	.LFB121-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI42-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST156:
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL299-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST157:
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL299-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST158:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0x0
	.4byte	0x0
.LLST159:
	.4byte	.LFB120-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI46-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST160:
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST161:
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST162:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI49-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST163:
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL321-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST164:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST165:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI53-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST166:
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST167:
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST168:
	.4byte	.LFB116-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI57-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST169:
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL359-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL361-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL363-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL372-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST170:
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL373-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST171:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI60-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST172:
	.4byte	.LVL375-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL377-.Ltext0
	.4byte	.LVL378-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST173:
	.4byte	.LFB108-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI63-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST174:
	.4byte	.LFB100-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI66-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	0x0
	.4byte	0x0
.LLST175:
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL388-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST176:
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL382-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL392-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL394-.Ltext0
	.4byte	.LVL396-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL397-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST177:
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL382-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL387-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST178:
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL389-.Ltext0
	.4byte	.LVL390-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL391-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL394-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL397-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 3 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
	.file 4 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 7 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/glint.h"
	.file 8 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0x1c27
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF265
	.byte	0x1
	.4byte	.LASF266
	.4byte	.LASF267
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
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
	.byte	0x3
	.byte	0x93
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x94
	.4byte	0x3a
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x95
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x99
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x9a
	.4byte	0x3a
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x3
	.byte	0x9d
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x3
	.byte	0x9e
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x3
	.byte	0x9f
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x3
	.byte	0xa0
	.4byte	0x8d
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x3
	.byte	0xa1
	.4byte	0x8d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x121
	.uleb128 0x8
	.4byte	0xef
	.uleb128 0x7
	.byte	0x4
	.4byte	0xef
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x7
	.byte	0x4
	.4byte	0x138
	.uleb128 0x8
	.4byte	0x105
	.uleb128 0x7
	.byte	0x4
	.4byte	0x105
	.uleb128 0x9
	.string	"u8"
	.byte	0x4
	.byte	0xf
	.4byte	0x3a
	.uleb128 0x9
	.string	"u32"
	.byte	0x4
	.byte	0x11
	.4byte	0x30
	.uleb128 0x9
	.string	"f32"
	.byte	0x4
	.byte	0x29
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x4
	.byte	0x35
	.4byte	0x143
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.byte	0x36
	.4byte	0x183
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
	.byte	0x5
	.byte	0x27
	.4byte	0x1b4
	.uleb128 0xd
	.string	"x"
	.byte	0x5
	.byte	0x28
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"y"
	.byte	0x5
	.byte	0x28
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"z"
	.byte	0x5
	.byte	0x28
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x5
	.byte	0x29
	.4byte	0x183
	.uleb128 0x9
	.string	"Mtx"
	.byte	0x5
	.byte	0x2f
	.4byte	0x1ca
	.uleb128 0xe
	.4byte	0x158
	.4byte	0x1e0
	.uleb128 0xf
	.4byte	0x37
	.byte	0x2
	.uleb128 0xf
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x5
	.byte	0x35
	.4byte	0x1eb
	.uleb128 0xe
	.4byte	0x158
	.4byte	0x201
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
	.byte	0x6
	.2byte	0x3b8
	.4byte	0x243
	.uleb128 0x11
	.string	"r"
	.byte	0x6
	.2byte	0x3b9
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"g"
	.byte	0x6
	.2byte	0x3ba
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"b"
	.byte	0x6
	.2byte	0x3bb
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"a"
	.byte	0x6
	.2byte	0x3bc
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x3bd
	.4byte	0x201
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x40
	.byte	0x6
	.2byte	0x3d6
	.4byte	0x26c
	.uleb128 0x11
	.string	"val"
	.byte	0x6
	.2byte	0x3d7
	.4byte	0x26c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xe
	.4byte	0x14d
	.4byte	0x27c
	.uleb128 0xf
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x3d8
	.4byte	0x24f
	.uleb128 0x7
	.byte	0x4
	.4byte	0x28e
	.uleb128 0x13
	.uleb128 0x14
	.byte	0x10
	.byte	0x7
	.byte	0x15
	.4byte	0x2b0
	.uleb128 0xd
	.string	"v"
	.byte	0x7
	.byte	0x16
	.4byte	0x1b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"w"
	.byte	0x7
	.byte	0x17
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x7
	.byte	0x18
	.4byte	0x28f
	.uleb128 0x14
	.byte	0x8
	.byte	0x7
	.byte	0x1b
	.4byte	0x2dc
	.uleb128 0xd
	.string	"s"
	.byte	0x7
	.byte	0x1c
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"t"
	.byte	0x7
	.byte	0x1d
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x7
	.byte	0x1e
	.4byte	0x2bb
	.uleb128 0x14
	.byte	0x10
	.byte	0x7
	.byte	0x21
	.4byte	0x320
	.uleb128 0xd
	.string	"r"
	.byte	0x7
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"g"
	.byte	0x7
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"b"
	.byte	0x7
	.byte	0x24
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"a"
	.byte	0x7
	.byte	0x25
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x7
	.byte	0x26
	.4byte	0x2e7
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x14
	.byte	0x7
	.byte	0x42
	.4byte	0x37c
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x7
	.byte	0x43
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"p"
	.byte	0x7
	.byte	0x44
	.4byte	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x7
	.byte	0x45
	.4byte	0x143
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
	.4byte	0x32b
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x4c
	.byte	0x7
	.byte	0x70
	.4byte	0x3cc
	.uleb128 0xd
	.string	"mat"
	.byte	0x7
	.byte	0x71
	.4byte	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x7
	.byte	0x72
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x7
	.byte	0x73
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x7
	.byte	0x74
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x7
	.byte	0x75
	.4byte	0x387
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x41c
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
	.4byte	0x3d7
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0xa4
	.byte	0x7
	.byte	0x83
	.4byte	0x4e2
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x7
	.byte	0x84
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"obj"
	.byte	0x7
	.byte	0x86
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"pos"
	.byte	0x7
	.byte	0x88
	.4byte	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x7
	.byte	0x8a
	.4byte	0x1b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x7
	.byte	0x8c
	.4byte	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x7
	.byte	0x8d
	.4byte	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x7
	.byte	0x8e
	.4byte	0x320
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x7
	.byte	0x90
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x7
	.byte	0x91
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x7
	.byte	0x92
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x7
	.byte	0x93
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.byte	0x94
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x7
	.byte	0x95
	.4byte	0x427
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x44
	.byte	0x7
	.byte	0xa0
	.4byte	0x540
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.byte	0xa1
	.4byte	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x7
	.byte	0xa2
	.4byte	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x7
	.byte	0xa3
	.4byte	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa4
	.4byte	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.byte	0xa5
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x7
	.byte	0xa6
	.4byte	0x4ed
	.uleb128 0x16
	.4byte	.LASF268
	.byte	0x4
	.byte	0x7
	.byte	0xbf
	.4byte	0x56a
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
	.byte	0xc3
	.4byte	0x54b
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x10
	.byte	0x7
	.byte	0xe8
	.4byte	0x5b6
	.uleb128 0xd
	.string	"x"
	.byte	0x7
	.byte	0xe9
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"y"
	.byte	0x7
	.byte	0xea
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.byte	0xeb
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.byte	0xec
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x7
	.byte	0xed
	.4byte	0x575
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x14
	.byte	0x7
	.byte	0xfb
	.4byte	0x624
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.byte	0xfc
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.byte	0xfd
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.byte	0xfe
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.byte	0xff
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x100
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x101
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x102
	.4byte	0x5c1
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x8
	.byte	0x7
	.2byte	0x117
	.4byte	0x65c
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x118
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x119
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x11a
	.4byte	0x630
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x6c
	.byte	0x7
	.2byte	0x127
	.4byte	0x7c0
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x7
	.2byte	0x128
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x12a
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x12b
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x12c
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x12d
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x12e
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x12f
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x130
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x131
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x132
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x133
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x135
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x137
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x138
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x13a
	.4byte	0x7c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x13b
	.4byte	0x7c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x13c
	.4byte	0x7c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x13d
	.4byte	0x7c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.string	"tex"
	.byte	0x7
	.2byte	0x13f
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x141
	.4byte	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x143
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x144
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0xe
	.4byte	0xa2
	.4byte	0x7d0
	.uleb128 0xf
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x145
	.4byte	0x668
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF112
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x1
	.byte	0x51
	.4byte	0x81b
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x1
	.byte	0x1d
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0x1
	.byte	0x1d
	.4byte	0xa2
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0x1
	.byte	0x1d
	.4byte	0xc3
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF113
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.byte	0x1
	.byte	0x51
	.4byte	0x857
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.byte	0xcd
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x1a
	.string	"y"
	.byte	0x1
	.byte	0xcd
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x1a
	.string	"z"
	.byte	0x1
	.byte	0xcd
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF114
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.4byte	.LFB86
	.4byte	.LFE86
	.byte	0x1
	.byte	0x51
	.4byte	0x87c
	.uleb128 0x1b
	.string	"v"
	.byte	0x1
	.byte	0xd3
	.4byte	0x11b
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF115
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.4byte	.LFB88
	.4byte	.LFE88
	.byte	0x1
	.byte	0x51
	.4byte	0x8c4
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.byte	0xdb
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x1a
	.string	"g"
	.byte	0x1
	.byte	0xdb
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x1a
	.string	"b"
	.byte	0x1
	.byte	0xdb
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x1a
	.string	"a"
	.byte	0x1
	.byte	0xdb
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.byte	0x1
	.byte	0x51
	.4byte	0x903
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.byte	0xd7
	.4byte	0xef
	.4byte	.LLST6
	.uleb128 0x1b
	.string	"g"
	.byte	0x1
	.byte	0xd7
	.4byte	0xef
	.4byte	.LLST7
	.uleb128 0x1b
	.string	"b"
	.byte	0x1
	.byte	0xd7
	.4byte	0xef
	.4byte	.LLST8
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF117
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.4byte	.LFB89
	.4byte	.LFE89
	.byte	0x1
	.byte	0x51
	.4byte	0x928
	.uleb128 0x1b
	.string	"v"
	.byte	0x1
	.byte	0xf1
	.4byte	0x11b
	.4byte	.LLST10
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LLST11
	.4byte	0x96f
	.uleb128 0x1b
	.string	"red"
	.byte	0x1
	.byte	0xf5
	.4byte	0xce
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0x1
	.byte	0xf6
	.4byte	0xce
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x1
	.byte	0xf7
	.4byte	0xce
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x100
	.byte	0x1
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	.LLST15
	.4byte	0x9c6
	.uleb128 0x1b
	.string	"red"
	.byte	0x1
	.byte	0xfc
	.4byte	0xce
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0x1
	.byte	0xfd
	.4byte	0xce
	.4byte	.LLST17
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x1
	.byte	0xfe
	.4byte	0xce
	.4byte	.LLST18
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0x1
	.byte	0xff
	.4byte	0xce
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x105
	.byte	0x1
	.4byte	.LFB92
	.4byte	.LFE92
	.byte	0x1
	.byte	0x51
	.4byte	0x9ed
	.uleb128 0x20
	.string	"v"
	.byte	0x1
	.2byte	0x104
	.4byte	0x11b
	.4byte	.LLST21
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x10a
	.byte	0x1
	.4byte	.LFB93
	.4byte	.LFE93
	.byte	0x1
	.byte	0x51
	.4byte	0xa20
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x21
	.string	"t"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x10f
	.byte	0x1
	.4byte	.LFB94
	.4byte	.LFE94
	.byte	0x1
	.byte	0x51
	.4byte	0xa60
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.2byte	0x10f
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x21
	.string	"t"
	.byte	0x1
	.2byte	0x10f
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x21
	.string	"u"
	.byte	0x1
	.2byte	0x10f
	.4byte	0xef
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x115
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.byte	0x1
	.byte	0x51
	.4byte	0xa86
	.uleb128 0x21
	.string	"st"
	.byte	0x1
	.2byte	0x115
	.4byte	0x11b
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x11b
	.byte	0x1
	.4byte	.LFB96
	.4byte	.LFE96
	.byte	0x1
	.byte	0x51
	.4byte	0xaad
	.uleb128 0x21
	.string	"stu"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x11b
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x4f8
	.byte	0x1
	.4byte	.LFB128
	.4byte	.LFE128
	.byte	0x1
	.byte	0x51
	.4byte	0xaee
	.uleb128 0x21
	.string	"e"
	.byte	0x1
	.2byte	0x4f7
	.4byte	0xa2
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x4f7
	.4byte	0x7b
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x4f7
	.4byte	0x58
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x4ec
	.byte	0x1
	.4byte	.LFB127
	.4byte	.LFE127
	.byte	0x1
	.byte	0x51
	.4byte	0xb17
	.uleb128 0x23
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x4eb
	.4byte	0xef
	.4byte	.LLST28
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x4e5
	.byte	0x1
	.4byte	.LFB126
	.4byte	.LFE126
	.byte	0x1
	.byte	0x51
	.4byte	0xb40
	.uleb128 0x23
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x4e4
	.4byte	0xef
	.4byte	.LLST30
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x466
	.byte	0x1
	.4byte	.LFB123
	.4byte	.LFE123
	.byte	0x1
	.byte	0x51
	.4byte	0xb69
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x465
	.4byte	0xa2
	.4byte	.LLST32
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x458
	.byte	0x1
	.4byte	.LFB122
	.4byte	.LFE122
	.byte	0x1
	.byte	0x51
	.4byte	0xbba
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x457
	.4byte	0xa2
	.4byte	.LLST34
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.2byte	0x457
	.4byte	0xef
	.4byte	.LLST35
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.2byte	0x457
	.4byte	0xef
	.4byte	.LLST36
	.uleb128 0x24
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x460
	.4byte	0x58
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x3e4
	.byte	0x1
	.4byte	.LFB119
	.4byte	.LFE119
	.byte	0x1
	.byte	0x51
	.4byte	0xbf3
	.uleb128 0x23
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x3e4
	.4byte	0xa2
	.4byte	.LLST38
	.uleb128 0x20
	.string	"ref"
	.byte	0x1
	.2byte	0x3e4
	.4byte	0xfa
	.4byte	.LLST39
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x3cf
	.byte	0x1
	.4byte	.LFB118
	.4byte	.LFE118
	.byte	0x1
	.byte	0x51
	.4byte	0xc1c
	.uleb128 0x23
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x3cf
	.4byte	0xa2
	.4byte	.LLST41
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x302
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.byte	0x1
	.byte	0x51
	.4byte	0xc45
	.uleb128 0x23
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x301
	.4byte	0xad
	.4byte	.LLST43
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x2b6
	.byte	0x1
	.4byte	0xef
	.byte	0x1
	.4byte	0xc62
	.uleb128 0x26
	.string	"d"
	.byte	0x1
	.2byte	0x2b5
	.4byte	0xef
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x2c5
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST44
	.4byte	0xc9d
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x2c4
	.4byte	0xa2
	.4byte	.LLST45
	.uleb128 0x23
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x2c4
	.4byte	0xef
	.4byte	.LLST46
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x2f0
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST47
	.4byte	0xcd8
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x2ef
	.4byte	0xa2
	.4byte	.LLST48
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x2ef
	.4byte	0x11b
	.4byte	.LLST49
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x2c0
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST50
	.4byte	0xd13
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x2bf
	.4byte	0xa2
	.4byte	.LLST51
	.uleb128 0x23
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x2bf
	.4byte	0xc3
	.4byte	.LLST52
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x284
	.byte	0x1
	.4byte	.LFB107
	.4byte	.LFE107
	.byte	0x1
	.byte	0x51
	.4byte	0xd3c
	.uleb128 0x23
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x284
	.4byte	0x110
	.4byte	.LLST54
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x27a
	.byte	0x1
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LLST55
	.4byte	0xd97
	.uleb128 0x20
	.string	"red"
	.byte	0x1
	.2byte	0x277
	.4byte	0xfa
	.4byte	.LLST56
	.uleb128 0x23
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x278
	.4byte	0xfa
	.4byte	.LLST57
	.uleb128 0x23
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x279
	.4byte	0xfa
	.4byte	.LLST58
	.uleb128 0x23
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x27a
	.4byte	0xfa
	.4byte	.LLST59
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB105
	.4byte	.LFE105
	.byte	0x1
	.byte	0x51
	.4byte	0xdc0
	.uleb128 0x23
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x240
	.4byte	0xb8
	.4byte	.LLST61
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1d5
	.byte	0x1
	.4byte	.LFB103
	.4byte	.LFE103
	.byte	0x1
	.byte	0x51
	.4byte	0xe1f
	.uleb128 0x23
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xa2
	.4byte	.LLST63
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xa2
	.4byte	.LLST64
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x126
	.4byte	.LLST65
	.uleb128 0x24
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x58
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x320
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x1aa
	.byte	0x1
	.4byte	.LFB102
	.4byte	.LFE102
	.4byte	.LLST66
	.4byte	0xe6a
	.uleb128 0x23
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xa2
	.4byte	.LLST67
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xa2
	.4byte	.LLST68
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x11b
	.4byte	.LLST69
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x19f
	.byte	0x1
	.4byte	.LFB101
	.4byte	.LFE101
	.byte	0x1
	.byte	0x51
	.4byte	0xeb3
	.uleb128 0x23
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x19f
	.4byte	0xa2
	.4byte	.LLST71
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x19f
	.4byte	0xa2
	.4byte	.LLST72
	.uleb128 0x23
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x19f
	.4byte	0xef
	.4byte	.LLST73
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x136
	.byte	0x1
	.4byte	0x58
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LLST74
	.4byte	0xef2
	.uleb128 0x23
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x135
	.4byte	0xa2
	.4byte	.LLST75
	.uleb128 0x29
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x137
	.4byte	0x58
	.4byte	.LLST76
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x14a
	.byte	0x1
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LLST77
	.4byte	0xf4d
	.uleb128 0x23
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x14a
	.4byte	0xa2
	.4byte	.LLST78
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x14a
	.4byte	0xa2
	.4byte	.LLST79
	.uleb128 0x23
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x14a
	.4byte	0xef
	.4byte	.LLST80
	.uleb128 0x29
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x14d
	.4byte	0x58
	.4byte	.LLST81
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x124
	.byte	0x1
	.4byte	.LFB97
	.4byte	.LFE97
	.byte	0x1
	.byte	0x51
	.4byte	0xf86
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x124
	.4byte	0xa2
	.4byte	.LLST83
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x124
	.4byte	0x11b
	.4byte	.LLST84
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LLST85
	.4byte	0xfd0
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0xb4
	.4byte	0xef
	.4byte	.LLST86
	.uleb128 0x1b
	.string	"y"
	.byte	0x1
	.byte	0xb4
	.4byte	0xef
	.4byte	.LLST87
	.uleb128 0x1b
	.string	"z"
	.byte	0x1
	.byte	0xb4
	.4byte	0xef
	.4byte	.LLST88
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.4byte	0x58
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF160
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x1
	.byte	0x51
	.4byte	0x101c
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0xb0
	.4byte	0xef
	.4byte	.LLST90
	.uleb128 0x1b
	.string	"y"
	.byte	0x1
	.byte	0xb0
	.4byte	0xef
	.4byte	.LLST91
	.uleb128 0x1b
	.string	"z"
	.byte	0x1
	.byte	0xb0
	.4byte	0xef
	.4byte	.LLST92
	.uleb128 0x1b
	.string	"w"
	.byte	0x1
	.byte	0xb0
	.4byte	0xef
	.4byte	.LLST93
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF161
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.byte	0x1
	.byte	0x51
	.4byte	0x1041
	.uleb128 0x1b
	.string	"v"
	.byte	0x1
	.byte	0xab
	.4byte	0x11b
	.4byte	.LLST95
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF162
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.byte	0x1
	.byte	0x51
	.4byte	0x1073
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0xa7
	.4byte	0xef
	.4byte	.LLST97
	.uleb128 0x1b
	.string	"y"
	.byte	0x1
	.byte	0xa7
	.4byte	0xef
	.4byte	.LLST98
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF163
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST99
	.4byte	0x10a7
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0xa3
	.4byte	0xc3
	.4byte	.LLST100
	.uleb128 0x1b
	.string	"y"
	.byte	0x1
	.byte	0xa3
	.4byte	0xc3
	.4byte	.LLST101
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF164
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.byte	0x1
	.byte	0x51
	.4byte	0x10f7
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0x98
	.4byte	0xc3
	.4byte	.LLST103
	.uleb128 0x1b
	.string	"y"
	.byte	0x1
	.byte	0x99
	.4byte	0xc3
	.4byte	.LLST104
	.uleb128 0x1d
	.4byte	.LASF74
	.byte	0x1
	.byte	0x9a
	.4byte	0xe4
	.4byte	.LLST105
	.uleb128 0x1d
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9b
	.4byte	0xe4
	.4byte	.LLST106
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF165
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.4byte	.LFB78
	.4byte	.LFE78
	.byte	0x1
	.byte	0x51
	.4byte	0x112d
	.uleb128 0x1d
	.4byte	.LASF166
	.byte	0x1
	.byte	0x90
	.4byte	0x110
	.4byte	.LLST108
	.uleb128 0x1d
	.4byte	.LASF167
	.byte	0x1
	.byte	0x90
	.4byte	0x110
	.4byte	.LLST109
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF168
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.byte	0x1
	.byte	0x51
	.4byte	0x1154
	.uleb128 0x1d
	.4byte	.LASF45
	.byte	0x1
	.byte	0x7d
	.4byte	0xa2
	.4byte	.LLST111
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF169
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	.LFB76
	.4byte	.LFE76
	.byte	0x1
	.byte	0x51
	.4byte	0x117b
	.uleb128 0x1d
	.4byte	.LASF45
	.byte	0x1
	.byte	0x68
	.4byte	0xa2
	.4byte	.LLST113
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF170
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.byte	0x1
	.byte	0x51
	.4byte	0x11cb
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0x58
	.4byte	0xc3
	.4byte	.LLST115
	.uleb128 0x1b
	.string	"y"
	.byte	0x1
	.byte	0x58
	.4byte	0xc3
	.4byte	.LLST116
	.uleb128 0x1d
	.4byte	.LASF74
	.byte	0x1
	.byte	0x58
	.4byte	0xe4
	.4byte	.LLST117
	.uleb128 0x1d
	.4byte	.LASF75
	.byte	0x1
	.byte	0x58
	.4byte	0xe4
	.4byte	.LLST118
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF171
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST119
	.4byte	0x1203
	.uleb128 0x1d
	.4byte	.LASF172
	.byte	0x1
	.byte	0x38
	.4byte	0xa2
	.4byte	.LLST120
	.uleb128 0x1d
	.4byte	.LASF173
	.byte	0x1
	.byte	0x38
	.4byte	0xa2
	.4byte	.LLST121
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF174
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.byte	0x1
	.byte	0x51
	.4byte	0x1239
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x1
	.byte	0x29
	.4byte	0xa2
	.4byte	.LLST123
	.uleb128 0x1d
	.4byte	.LASF45
	.byte	0x1
	.byte	0x29
	.4byte	0xa2
	.4byte	.LLST124
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF175
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.byte	0x1
	.byte	0x51
	.4byte	0x126f
	.uleb128 0x1d
	.4byte	.LASF176
	.byte	0x1
	.byte	0x25
	.4byte	0xa2
	.4byte	.LLST126
	.uleb128 0x1d
	.4byte	.LASF177
	.byte	0x1
	.byte	0x25
	.4byte	0x132
	.4byte	.LLST127
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF178
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.byte	0x1
	.byte	0x51
	.4byte	0x1296
	.uleb128 0x1d
	.4byte	.LASF45
	.byte	0x1
	.byte	0x23
	.4byte	0xa2
	.4byte	.LLST129
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF179
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.byte	0x1
	.byte	0x51
	.4byte	0x12cc
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x1
	.byte	0x1f
	.4byte	0xa2
	.4byte	.LLST131
	.uleb128 0x1d
	.4byte	.LASF45
	.byte	0x1
	.byte	0x1f
	.4byte	0xa2
	.4byte	.LLST132
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF180
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.byte	0x1
	.byte	0x51
	.4byte	0x1302
	.uleb128 0x1d
	.4byte	.LASF110
	.byte	0x1
	.byte	0x19
	.4byte	0xa2
	.4byte	.LLST134
	.uleb128 0x1d
	.4byte	.LASF111
	.byte	0x1
	.byte	0x19
	.4byte	0xc3
	.4byte	.LLST135
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF181
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x1
	.byte	0x51
	.4byte	0x1338
	.uleb128 0x1d
	.4byte	.LASF182
	.byte	0x1
	.byte	0x17
	.4byte	0xef
	.4byte	.LLST137
	.uleb128 0x1d
	.4byte	.LASF183
	.byte	0x1
	.byte	0x17
	.4byte	0xef
	.4byte	.LLST138
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF184
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x1
	.byte	0x51
	.4byte	0x136e
	.uleb128 0x1d
	.4byte	.LASF185
	.byte	0x1
	.byte	0x15
	.4byte	0xa2
	.4byte	.LLST140
	.uleb128 0x1d
	.4byte	.LASF45
	.byte	0x1
	.byte	0x15
	.4byte	0xa2
	.4byte	.LLST141
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x4fe
	.byte	0x1
	.4byte	0xa2
	.4byte	.LFB129
	.4byte	.LFE129
	.4byte	.LLST142
	.4byte	0x139b
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.2byte	0x501
	.4byte	0xa2
	.4byte	.LLST143
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x50a
	.byte	0x1
	.4byte	.LFB130
	.4byte	.LFE130
	.byte	0x1
	.byte	0x51
	.4byte	0x13f4
	.uleb128 0x20
	.string	"red"
	.byte	0x1
	.2byte	0x506
	.4byte	0xad
	.4byte	.LLST145
	.uleb128 0x23
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x507
	.4byte	0xad
	.4byte	.LLST146
	.uleb128 0x23
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x508
	.4byte	0xad
	.4byte	.LLST147
	.uleb128 0x23
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x509
	.4byte	0xad
	.4byte	.LLST148
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x480
	.byte	0x1
	.4byte	.LFB125
	.4byte	.LFE125
	.4byte	.LLST149
	.4byte	0x1449
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x480
	.4byte	0xa2
	.4byte	.LLST150
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x480
	.4byte	0x12c
	.4byte	.LLST151
	.uleb128 0x2c
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x2b
	.string	"val"
	.byte	0x1
	.2byte	0x4d2
	.4byte	0x94
	.4byte	.LLST152
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x471
	.byte	0x1
	.4byte	.LFB124
	.4byte	.LFE124
	.4byte	.LLST153
	.4byte	0x1474
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x470
	.4byte	0xa2
	.4byte	.LLST154
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x40e
	.byte	0x1
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST155
	.4byte	0x14c9
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x40d
	.4byte	0xa2
	.4byte	.LLST156
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x40d
	.4byte	0x126
	.4byte	.LLST157
	.uleb128 0x2c
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x2b
	.string	"val"
	.byte	0x1
	.2byte	0x44d
	.4byte	0x58
	.4byte	.LLST158
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x400
	.byte	0x1
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST159
	.4byte	0x1504
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x400
	.4byte	0xa2
	.4byte	.LLST160
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x400
	.4byte	0x13d
	.4byte	.LLST161
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x38a
	.byte	0x1
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST162
	.4byte	0x1547
	.uleb128 0x23
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x38a
	.4byte	0xa2
	.4byte	.LLST163
	.uleb128 0x2c
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.2byte	0x39d
	.4byte	0x58
	.4byte	.LLST164
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x311
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST165
	.4byte	0x1586
	.uleb128 0x23
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x310
	.4byte	0xa2
	.4byte	.LLST166
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.2byte	0x324
	.4byte	0x58
	.4byte	.LLST167
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x339
	.byte	0x1
	.4byte	0xad
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST168
	.4byte	0x15c9
	.uleb128 0x20
	.string	"cap"
	.byte	0x1
	.2byte	0x338
	.4byte	0xa2
	.4byte	.LLST169
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.2byte	0x358
	.4byte	0x58
	.4byte	.LLST170
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x2a2
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST171
	.4byte	0x15f1
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x15f1
	.4byte	.LLST172
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3cc
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x296
	.byte	0x1
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST173
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x15f
	.byte	0x1
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	.LLST174
	.4byte	0x168e
	.uleb128 0x23
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x15f
	.4byte	0xa2
	.4byte	.LLST175
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x15f
	.4byte	0xa2
	.4byte	.LLST176
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x15f
	.4byte	0x11b
	.4byte	.LLST177
	.uleb128 0x29
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x162
	.4byte	0x58
	.4byte	.LLST178
	.uleb128 0x30
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x167
	.4byte	0x1b4
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x31
	.string	"mvi"
	.byte	0x1
	.2byte	0x191
	.4byte	0x1bf
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF198
	.byte	0x7
	.byte	0x3c
	.4byte	0x320
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x32
	.4byte	.LASF199
	.byte	0x7
	.byte	0x3d
	.4byte	0x1b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xe
	.4byte	0x2dc
	.4byte	0x16c2
	.uleb128 0xf
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF200
	.byte	0x7
	.byte	0x3e
	.4byte	0x16b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x32
	.4byte	.LASF201
	.byte	0x7
	.byte	0x4a
	.4byte	0x37c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x32
	.4byte	.LASF202
	.byte	0x7
	.byte	0x4b
	.4byte	0x37c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xe
	.4byte	0x37c
	.4byte	0x1708
	.uleb128 0xf
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x33
	.string	"tex"
	.byte	0x7
	.byte	0x4c
	.4byte	0x16f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x32
	.4byte	.LASF105
	.byte	0x7
	.byte	0x4d
	.4byte	0x37c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xe
	.4byte	0x1b4
	.4byte	0x173d
	.uleb128 0x34
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF203
	.byte	0x7
	.byte	0x4f
	.4byte	0x172c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x32
	.4byte	.LASF204
	.byte	0x7
	.byte	0x50
	.4byte	0x172c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xe
	.4byte	0x2dc
	.4byte	0x1778
	.uleb128 0xf
	.4byte	0x37
	.byte	0x7
	.uleb128 0x34
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF205
	.byte	0x7
	.byte	0x51
	.4byte	0x1761
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xe
	.4byte	0x320
	.4byte	0x179b
	.uleb128 0x34
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF206
	.byte	0x7
	.byte	0x52
	.4byte	0x178a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x32
	.4byte	.LASF207
	.byte	0x7
	.byte	0x5c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x32
	.4byte	.LASF208
	.byte	0x7
	.byte	0x5d
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x32
	.4byte	.LASF209
	.byte	0x7
	.byte	0x5e
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x32
	.4byte	.LASF210
	.byte	0x7
	.byte	0x60
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x32
	.4byte	.LASF211
	.byte	0x7
	.byte	0x61
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x32
	.4byte	.LASF212
	.byte	0x1
	.byte	0xd
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_alphatest_func
	.uleb128 0x32
	.4byte	.LASF213
	.byte	0x1
	.byte	0xe
	.4byte	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_alphatest_ref
	.uleb128 0x32
	.4byte	.LASF214
	.byte	0x1
	.byte	0xb
	.4byte	0x163
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_alphatest_enabled
	.uleb128 0x32
	.4byte	.LASF215
	.byte	0x1
	.byte	0xc
	.4byte	0x163
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_alphatest_dirty
	.uleb128 0x32
	.4byte	.LASF216
	.byte	0x7
	.byte	0x6a
	.4byte	0x143
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x32
	.4byte	.LASF217
	.byte	0x7
	.byte	0x6b
	.4byte	0x143
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x32
	.4byte	.LASF218
	.byte	0x7
	.byte	0x6c
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x32
	.4byte	.LASF219
	.byte	0x7
	.byte	0x6d
	.4byte	0x94
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x32
	.4byte	.LASF220
	.byte	0x7
	.byte	0x79
	.4byte	0x41c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x32
	.4byte	.LASF221
	.byte	0x7
	.byte	0x7a
	.4byte	0x41c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xe
	.4byte	0x41c
	.4byte	0x18cb
	.uleb128 0xf
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF222
	.byte	0x7
	.byte	0x7b
	.4byte	0x18bb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x32
	.4byte	.LASF223
	.byte	0x7
	.byte	0x7c
	.4byte	0x18ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x7
	.byte	0x4
	.4byte	0x41c
	.uleb128 0x32
	.4byte	.LASF224
	.byte	0x7
	.byte	0x7d
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xe
	.4byte	0x4e2
	.4byte	0x1917
	.uleb128 0xf
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF225
	.byte	0x7
	.byte	0x98
	.4byte	0x1907
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x32
	.4byte	.LASF226
	.byte	0x7
	.byte	0x9b
	.4byte	0x320
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x32
	.4byte	.LASF227
	.byte	0x7
	.byte	0xa8
	.4byte	0x540
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x32
	.4byte	.LASF228
	.byte	0x7
	.byte	0xab
	.4byte	0x163
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x32
	.4byte	.LASF229
	.byte	0x7
	.byte	0xac
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x32
	.4byte	.LASF230
	.byte	0x7
	.byte	0xb0
	.4byte	0x163
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x32
	.4byte	.LASF231
	.byte	0x7
	.byte	0xb7
	.4byte	0x143
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x32
	.4byte	.LASF232
	.byte	0x7
	.byte	0xb8
	.4byte	0x143
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x32
	.4byte	.LASF233
	.byte	0x7
	.byte	0xb9
	.4byte	0x143
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x32
	.4byte	.LASF234
	.byte	0x7
	.byte	0xba
	.4byte	0x143
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x32
	.4byte	.LASF235
	.byte	0x7
	.byte	0xbc
	.4byte	0x143
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x32
	.4byte	.LASF236
	.byte	0x7
	.byte	0xc5
	.4byte	0x56a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x32
	.4byte	.LASF237
	.byte	0x7
	.byte	0xef
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x32
	.4byte	.LASF238
	.byte	0x7
	.byte	0xf0
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x32
	.4byte	.LASF239
	.byte	0x7
	.byte	0xf1
	.4byte	0xad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x32
	.4byte	.LASF240
	.byte	0x7
	.byte	0xf2
	.4byte	0x5b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x32
	.4byte	.LASF241
	.byte	0x7
	.byte	0xf3
	.4byte	0x5b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x32
	.4byte	.LASF242
	.byte	0x7
	.byte	0xf4
	.4byte	0x158
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x32
	.4byte	.LASF243
	.byte	0x7
	.byte	0xf5
	.4byte	0x158
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x32
	.4byte	.LASF244
	.byte	0x7
	.byte	0xf7
	.4byte	0x158
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x32
	.4byte	.LASF245
	.byte	0x7
	.byte	0xf8
	.4byte	0x158
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x7
	.2byte	0x104
	.4byte	0x624
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x35
	.4byte	.LASF247
	.byte	0x7
	.2byte	0x105
	.4byte	0x624
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xe
	.4byte	0x163
	.4byte	0x1ac7
	.uleb128 0xf
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF248
	.byte	0x7
	.2byte	0x106
	.4byte	0x1ab7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x35
	.4byte	.LASF249
	.byte	0x7
	.2byte	0x10c
	.4byte	0x163
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x35
	.4byte	.LASF250
	.byte	0x7
	.2byte	0x10d
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x35
	.4byte	.LASF251
	.byte	0x7
	.2byte	0x110
	.4byte	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xe
	.4byte	0x65c
	.4byte	0x1b23
	.uleb128 0xf
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF252
	.byte	0x7
	.2byte	0x124
	.4byte	0x1b13
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x35
	.4byte	.LASF253
	.byte	0x7
	.2byte	0x149
	.4byte	0x163
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x35
	.4byte	.LASF254
	.byte	0x7
	.2byte	0x14a
	.4byte	0x143
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x35
	.4byte	.LASF255
	.byte	0x7
	.2byte	0x14b
	.4byte	0x158
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x35
	.4byte	.LASF256
	.byte	0x7
	.2byte	0x14c
	.4byte	0x158
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x35
	.4byte	.LASF257
	.byte	0x7
	.2byte	0x14d
	.4byte	0x158
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x35
	.4byte	.LASF258
	.byte	0x7
	.2byte	0x14e
	.4byte	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xe
	.4byte	0x7d0
	.4byte	0x1bb8
	.uleb128 0xf
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF259
	.byte	0x7
	.2byte	0x150
	.4byte	0x1ba8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x35
	.4byte	.LASF260
	.byte	0x7
	.2byte	0x155
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x35
	.4byte	.LASF261
	.byte	0x7
	.2byte	0x158
	.4byte	0xd9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x35
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x4f3
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glErrCode
	.uleb128 0x35
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x4f4
	.4byte	0x7b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glErrFile
	.uleb128 0x35
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x4f5
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x24
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.4byte	0x832
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1c2b
	.4byte	0x7dc
	.string	"glTexGeni"
	.4byte	0x81b
	.string	"glNormal3f"
	.4byte	0x857
	.string	"glNormal3fv"
	.4byte	0x87c
	.string	"glColor4f"
	.4byte	0x8c4
	.string	"glColor3f"
	.4byte	0x903
	.string	"glColor4fv"
	.4byte	0x928
	.string	"glColor3ub"
	.4byte	0x96f
	.string	"glColor4ub"
	.4byte	0x9c6
	.string	"glColor3fv"
	.4byte	0x9ed
	.string	"glTexCoord2f"
	.4byte	0xa20
	.string	"glTexCoord3f"
	.4byte	0xa60
	.string	"glTexCoord2fv"
	.4byte	0xa86
	.string	"glTexCoord3fv"
	.4byte	0xaad
	.string	"_glSetErrorEx"
	.4byte	0xaee
	.string	"glPointSize"
	.4byte	0xb17
	.string	"glLineWidth"
	.4byte	0xb40
	.string	"glClientActiveTextureARB"
	.4byte	0xb69
	.string	"glMultiTexCoord2fARB"
	.4byte	0xbba
	.string	"glAlphaFunc"
	.4byte	0xbf3
	.string	"glDepthFunc"
	.4byte	0xc1c
	.string	"glDepthMask"
	.4byte	0xc62
	.string	"glFogf"
	.4byte	0xc9d
	.string	"glFogfv"
	.4byte	0xcd8
	.string	"glFogi"
	.4byte	0xd13
	.string	"glClearDepth"
	.4byte	0xd3c
	.string	"glClearColor"
	.4byte	0xd97
	.string	"glClear"
	.4byte	0xdc0
	.string	"glGetMaterialfv"
	.4byte	0xe1f
	.string	"glMaterialfv"
	.4byte	0xe6a
	.string	"glMaterialf"
	.4byte	0xeb3
	.string	"glLightN"
	.4byte	0xef2
	.string	"glLightf"
	.4byte	0xf4d
	.string	"glLightModelfv"
	.4byte	0xf86
	.string	"glVertex3f"
	.4byte	0xfd0
	.string	"glVertex4f"
	.4byte	0x101c
	.string	"glVertex3fv"
	.4byte	0x1041
	.string	"glVertex2f"
	.4byte	0x1073
	.string	"glVertex2i"
	.4byte	0x10a7
	.string	"glViewport"
	.4byte	0x10f7
	.string	"glDepthRange"
	.4byte	0x112d
	.string	"glFrontFace"
	.4byte	0x1154
	.string	"glCullFace"
	.4byte	0x117b
	.string	"glScissor"
	.4byte	0x11cb
	.string	"glBlendFunc"
	.4byte	0x1203
	.string	"glColorMaterial"
	.4byte	0x1239
	.string	"glClipPlane"
	.4byte	0x126f
	.string	"glShadeModel"
	.4byte	0x1296
	.string	"glPolygonMode"
	.4byte	0x12cc
	.string	"glLightModeli"
	.4byte	0x1302
	.string	"glPolygonOffset"
	.4byte	0x1338
	.string	"glHint"
	.4byte	0x136e
	.string	"glGetError"
	.4byte	0x139b
	.string	"glColorMask"
	.4byte	0x13f4
	.string	"glGetIntegerv"
	.4byte	0x1449
	.string	"glActiveTextureARB"
	.4byte	0x1474
	.string	"glGetFloatv"
	.4byte	0x14c9
	.string	"gxgl_glGetDoublev"
	.4byte	0x1504
	.string	"glDisable"
	.4byte	0x1547
	.string	"glEnable"
	.4byte	0x1586
	.string	"glIsEnabled"
	.4byte	0x15c9
	.string	"updateFog"
	.4byte	0x15f7
	.string	"glFlush"
	.4byte	0x160d
	.string	"glLightfv"
	.4byte	0x168e
	.string	"_tempcolorelement"
	.4byte	0x16a0
	.string	"_tempnormalelement"
	.4byte	0x16c2
	.string	"_temptexcoordelement"
	.4byte	0x16d4
	.string	"norm"
	.4byte	0x16e6
	.string	"vert"
	.4byte	0x1708
	.string	"tex"
	.4byte	0x171a
	.string	"color"
	.4byte	0x173d
	.string	"_normalelements"
	.4byte	0x174f
	.string	"_vertexelements"
	.4byte	0x1778
	.string	"_texcoordelements"
	.4byte	0x179b
	.string	"_colorelements"
	.4byte	0x17ad
	.string	"vert_i"
	.4byte	0x17bf
	.string	"_type"
	.4byte	0x17d1
	.string	"_GLtype"
	.4byte	0x17e3
	.string	"cur_tex"
	.4byte	0x17f5
	.string	"cur_tex_client"
	.4byte	0x1807
	.string	"_alphatest_func"
	.4byte	0x1819
	.string	"_alphatest_ref"
	.4byte	0x182b
	.string	"_alphatest_enabled"
	.4byte	0x183d
	.string	"_alphatest_dirty"
	.4byte	0x184f
	.string	"depthtestenabled"
	.4byte	0x1861
	.string	"depthupdate"
	.4byte	0x1873
	.string	"depthfunction"
	.4byte	0x1885
	.string	"_cleardepth"
	.4byte	0x1897
	.string	"model_stack"
	.4byte	0x18a9
	.string	"projection_stack"
	.4byte	0x18cb
	.string	"texture_stack"
	.4byte	0x18dd
	.string	"curmtx"
	.4byte	0x18f5
	.string	"cur_mode"
	.4byte	0x1917
	.string	"lights"
	.4byte	0x1929
	.string	"globAmbient"
	.4byte	0x193b
	.string	"curmat"
	.4byte	0x194d
	.string	"gxcullfaceanabled"
	.4byte	0x195f
	.string	"gxwinding"
	.4byte	0x1971
	.string	"lighting"
	.4byte	0x1983
	.string	"blend_type"
	.4byte	0x1995
	.string	"blend_src"
	.4byte	0x19a7
	.string	"blend_dst"
	.4byte	0x19b9
	.string	"blend_op"
	.4byte	0x19cb
	.string	"cull_mode"
	.4byte	0x19dd
	.string	"cur_state"
	.4byte	0x19ef
	.string	"fb_max_height"
	.4byte	0x1a01
	.string	"fb_max_width"
	.4byte	0x1a13
	.string	"scissor_test"
	.4byte	0x1a25
	.string	"scissorInfo"
	.4byte	0x1a37
	.string	"viewPort"
	.4byte	0x1a49
	.string	"normNear"
	.4byte	0x1a5b
	.string	"normFar"
	.4byte	0x1a6d
	.string	"line_width"
	.4byte	0x1a7f
	.string	"point_size"
	.4byte	0x1a91
	.string	"pack"
	.4byte	0x1aa4
	.string	"unpack"
	.4byte	0x1ac7
	.string	"color_write_mask"
	.4byte	0x1ada
	.string	"copy_mat_enabled"
	.4byte	0x1aed
	.string	"copy_material"
	.4byte	0x1b00
	.string	"_clearcolor"
	.4byte	0x1b23
	.string	"Trans"
	.4byte	0x1b36
	.string	"fog_enable"
	.4byte	0x1b49
	.string	"fog_mode"
	.4byte	0x1b5c
	.string	"fog_startz"
	.4byte	0x1b6f
	.string	"fog_endz"
	.4byte	0x1b82
	.string	"fog_density"
	.4byte	0x1b95
	.string	"fog_color"
	.4byte	0x1bb8
	.string	"glTexEnvs"
	.4byte	0x1bcb
	.string	"read_mode"
	.4byte	0x1bde
	.string	"call_offset"
	.4byte	0x1bf1
	.string	"glErrCode"
	.4byte	0x1c04
	.string	"glErrFile"
	.4byte	0x1c17
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
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF126:
	.string	"glTexCoord2fv"
.LASF162:
	.string	"glVertex2f"
.LASF176:
	.string	"plane"
.LASF143:
	.string	"params"
.LASF163:
	.string	"glVertex2i"
.LASF52:
	.string	"Stack"
.LASF8:
	.string	"char"
.LASF212:
	.string	"_alphatest_func"
.LASF150:
	.string	"glGetMaterialfv"
.LASF17:
	.string	"GLint"
.LASF63:
	.string	"quad_t"
.LASF73:
	.string	"boxInfo"
.LASF267:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF18:
	.string	"GLubyte"
.LASF226:
	.string	"globAmbient"
.LASF222:
	.string	"texture_stack"
.LASF215:
	.string	"_alphatest_dirty"
.LASF236:
	.string	"cur_state"
.LASF189:
	.string	"glGetIntegerv"
.LASF237:
	.string	"fb_max_height"
.LASF57:
	.string	"diffuse"
.LASF0:
	.string	"unsigned int"
.LASF159:
	.string	"glVertex3f"
.LASF203:
	.string	"_normalelements"
.LASF65:
	.string	"_mat"
.LASF172:
	.string	"sfactor"
.LASF109:
	.string	"coord"
.LASF58:
	.string	"specular"
.LASF130:
	.string	"line"
.LASF120:
	.string	"blue"
.LASF205:
	.string	"_texcoordelements"
.LASF181:
	.string	"glPolygonOffset"
.LASF84:
	.string	"_trans"
.LASF60:
	.string	"spotCutoff"
.LASF88:
	.string	"_tex_env"
.LASF137:
	.string	"func"
.LASF227:
	.string	"curmat"
.LASF45:
	.string	"mode"
.LASF216:
	.string	"depthtestenabled"
.LASF251:
	.string	"_clearcolor"
.LASF160:
	.string	"glVertex4f"
.LASF94:
	.string	"maxlod"
.LASF69:
	.string	"GL_STATE_NONE"
.LASF108:
	.string	"glTexEnvSet"
.LASF33:
	.string	"_gx_litobj"
.LASF194:
	.string	"glEnable"
.LASF224:
	.string	"cur_mode"
.LASF204:
	.string	"_vertexelements"
.LASF37:
	.string	"GXColorf"
.LASF102:
	.string	"CargOp"
.LASF219:
	.string	"_cleardepth"
.LASF193:
	.string	"glDisable"
.LASF153:
	.string	"glMaterialfv"
.LASF199:
	.string	"_tempnormalelement"
.LASF211:
	.string	"cur_tex_client"
.LASF202:
	.string	"vert"
.LASF147:
	.string	"glClearColor"
.LASF254:
	.string	"fog_mode"
.LASF136:
	.string	"glAlphaFunc"
.LASF128:
	.string	"_glSetErrorEx"
.LASF256:
	.string	"fog_endz"
.LASF208:
	.string	"_type"
.LASF11:
	.string	"float"
.LASF151:
	.string	"face"
.LASF86:
	.string	"bias"
.LASF32:
	.string	"GXColor"
.LASF47:
	.string	"farZclip"
.LASF244:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF129:
	.string	"file"
.LASF24:
	.string	"GLclampd"
.LASF252:
	.string	"Trans"
.LASF246:
	.string	"pack"
.LASF66:
	.string	"emissive"
.LASF241:
	.string	"viewPort"
.LASF266:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl.c"
.LASF89:
	.string	"min_filter"
.LASF220:
	.string	"model_stack"
.LASF248:
	.string	"color_write_mask"
.LASF101:
	.string	"Carg"
.LASF39:
	.string	"enable"
.LASF259:
	.string	"glTexEnvs"
.LASF231:
	.string	"blend_type"
.LASF214:
	.string	"_alphatest_enabled"
.LASF131:
	.string	"glPointSize"
.LASF271:
	.string	"glFlush"
.LASF191:
	.string	"glGetFloatv"
.LASF154:
	.string	"glMaterialf"
.LASF188:
	.string	"glColorMask"
.LASF258:
	.string	"fog_color"
.LASF264:
	.string	"glErrLine"
.LASF263:
	.string	"glErrFile"
.LASF185:
	.string	"target"
.LASF74:
	.string	"width"
.LASF249:
	.string	"copy_mat_enabled"
.LASF210:
	.string	"cur_tex"
.LASF54:
	.string	"enabled"
.LASF164:
	.string	"glViewport"
.LASF112:
	.string	"glTexGeni"
.LASF100:
	.string	"comAlpha"
.LASF209:
	.string	"_GLtype"
.LASF138:
	.string	"glDepthFunc"
.LASF245:
	.string	"point_size"
.LASF67:
	.string	"shininess"
.LASF243:
	.string	"normFar"
.LASF21:
	.string	"GLfloat"
.LASF27:
	.string	"true"
.LASF250:
	.string	"copy_material"
.LASF174:
	.string	"glColorMaterial"
.LASF134:
	.string	"texture"
.LASF118:
	.string	"glColor3ub"
.LASF71:
	.string	"GL_STATE_NEWLIST"
.LASF223:
	.string	"curmtx"
.LASF169:
	.string	"glCullFace"
.LASF187:
	.string	"glGetError"
.LASF240:
	.string	"scissorInfo"
.LASF114:
	.string	"glNormal3fv"
.LASF197:
	.string	"lightPos"
.LASF127:
	.string	"glTexCoord3fv"
.LASF167:
	.string	"far_val"
.LASF229:
	.string	"gxwinding"
.LASF123:
	.string	"glColor3fv"
.LASF34:
	.string	"GXLightObj"
.LASF87:
	.string	"ColorTrans"
.LASF232:
	.string	"blend_src"
.LASF68:
	.string	"Material"
.LASF135:
	.string	"glMultiTexCoord2fARB"
.LASF218:
	.string	"depthfunction"
.LASF168:
	.string	"glFrontFace"
.LASF239:
	.string	"scissor_test"
.LASF221:
	.string	"projection_stack"
.LASF116:
	.string	"glColor3f"
.LASF206:
	.string	"_colorelements"
.LASF270:
	.string	"updateFog"
.LASF77:
	.string	"swap"
.LASF56:
	.string	"ambient"
.LASF5:
	.string	"long long int"
.LASF43:
	.string	"VertexArray"
.LASF133:
	.string	"glClientActiveTextureARB"
.LASF19:
	.string	"GLuint"
.LASF70:
	.string	"GL_STATE_BEGIN"
.LASF146:
	.string	"depth"
.LASF260:
	.string	"read_mode"
.LASF51:
	.string	"elem_size"
.LASF72:
	.string	"glState"
.LASF61:
	.string	"constant"
.LASF141:
	.string	"glFogf"
.LASF144:
	.string	"glFogi"
.LASF253:
	.string	"fog_enable"
.LASF16:
	.string	"GLbitfield"
.LASF25:
	.string	"bool"
.LASF152:
	.string	"mytex"
.LASF115:
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
.LASF217:
	.string	"depthupdate"
.LASF41:
	.string	"size"
.LASF64:
	.string	"LightObj"
.LASF111:
	.string	"param"
.LASF91:
	.string	"wrap_s"
.LASF92:
	.string	"wrap_t"
.LASF62:
	.string	"linear"
.LASF149:
	.string	"mask"
.LASF233:
	.string	"blend_dst"
.LASF75:
	.string	"height"
.LASF200:
	.string	"_temptexcoordelement"
.LASF46:
	.string	"nearZclip"
.LASF125:
	.string	"glTexCoord3f"
.LASF119:
	.string	"green"
.LASF12:
	.string	"long double"
.LASF48:
	.string	"PrjMtx"
.LASF132:
	.string	"glLineWidth"
.LASF23:
	.string	"GLdouble"
.LASF13:
	.string	"size_t"
.LASF142:
	.string	"glFogfv"
.LASF175:
	.string	"glClipPlane"
.LASF201:
	.string	"norm"
.LASF247:
	.string	"unpack"
.LASF55:
	.string	"spotDir"
.LASF38:
	.string	"_array"
.LASF59:
	.string	"spotExponent"
.LASF95:
	.string	"lodbias"
.LASF225:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF196:
	.string	"glLightfv"
.LASF93:
	.string	"minlod"
.LASF90:
	.string	"max_filter"
.LASF155:
	.string	"light"
.LASF9:
	.string	"long int"
.LASF195:
	.string	"glIsEnabled"
.LASF14:
	.string	"GLenum"
.LASF186:
	.string	"glLightN"
.LASF190:
	.string	"glActiveTextureARB"
.LASF53:
	.string	"_light"
.LASF140:
	.string	"flag"
.LASF105:
	.string	"color"
.LASF20:
	.string	"GLsizei"
.LASF261:
	.string	"call_offset"
.LASF198:
	.string	"_tempcolorelement"
.LASF173:
	.string	"dfactor"
.LASF170:
	.string	"glScissor"
.LASF81:
	.string	"skip_pixels"
.LASF103:
	.string	"Aarg"
.LASF98:
	.string	"maxaniso"
.LASF124:
	.string	"glTexCoord2f"
.LASF184:
	.string	"glHint"
.LASF180:
	.string	"glLightModeli"
.LASF257:
	.string	"fog_density"
.LASF40:
	.string	"stride"
.LASF230:
	.string	"lighting"
.LASF121:
	.string	"glColor4ub"
.LASF139:
	.string	"glDepthMask"
.LASF7:
	.string	"long unsigned int"
.LASF122:
	.string	"alpha"
.LASF234:
	.string	"blend_op"
.LASF255:
	.string	"fog_startz"
.LASF83:
	.string	"pixelStore"
.LASF113:
	.string	"glNormal3f"
.LASF117:
	.string	"glColor4fv"
.LASF166:
	.string	"near_val"
.LASF265:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF42:
	.string	"type"
.LASF148:
	.string	"glClear"
.LASF1:
	.string	"unsigned char"
.LASF29:
	.string	"Mtx44"
.LASF80:
	.string	"skip_rows"
.LASF161:
	.string	"glVertex3fv"
.LASF262:
	.string	"glErrCode"
.LASF26:
	.string	"false"
.LASF207:
	.string	"vert_i"
.LASF78:
	.string	"lsb_first"
.LASF107:
	.string	"alpha_scale"
.LASF171:
	.string	"glBlendFunc"
.LASF28:
	.string	"Vector"
.LASF99:
	.string	"comRGB"
.LASF238:
	.string	"fb_max_width"
.LASF242:
	.string	"normNear"
.LASF178:
	.string	"glShadeModel"
.LASF31:
	.string	"_gx_color"
.LASF97:
	.string	"edgelod"
.LASF228:
	.string	"gxcullfaceanabled"
.LASF179:
	.string	"glPolygonMode"
.LASF183:
	.string	"units"
.LASF49:
	.string	"_stack"
.LASF3:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF156:
	.string	"glLightf"
.LASF50:
	.string	"begin"
.LASF269:
	.string	"calc_density"
.LASF165:
	.string	"glDepthRange"
.LASF10:
	.string	"double"
.LASF82:
	.string	"alignment"
.LASF158:
	.string	"glLightModelfv"
.LASF36:
	.string	"TexCoordElement"
.LASF44:
	.string	"_prj_mat"
.LASF213:
	.string	"_alphatest_ref"
.LASF182:
	.string	"factor"
.LASF15:
	.string	"GLboolean"
.LASF106:
	.string	"rgb_scale"
.LASF268:
	.string	"_glState"
.LASF76:
	.string	"_pixelStore"
.LASF110:
	.string	"pname"
.LASF145:
	.string	"glClearDepth"
.LASF235:
	.string	"cull_mode"
.LASF192:
	.string	"gxgl_glGetDoublev"
.LASF104:
	.string	"AargOp"
.LASF157:
	.string	"lightNum"
.LASF177:
	.string	"equation"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
