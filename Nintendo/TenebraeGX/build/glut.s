	.file	"glut.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl glutThread
	.type	glutThread, @function
glutThread:
.LFB82:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut.c"
	.loc 1 523 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 525 0
	lis 9,displayfunc@ha
	.loc 1 523 0
	stw 29,12(1)
	stw 0,28(1)
	.loc 1 525 0
	lwz 0,displayfunc@l(9)
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.loc 1 523 0
	stw 30,16(1)
	.loc 1 525 0
	cmpwi 7,0,0
	.loc 1 523 0
	stw 31,20(1)
	.loc 1 525 0
	beq- 7,.L8
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.loc 1 525 0 is_stmt 0 discriminator 1
	mtctr 0
	bctrl
.LVL1:
.L8:
	lis 31,count@ha
	lis 30,idlefunc@ha
	la 31,count@l(31)
	la 30,idlefunc@l(30)
	.loc 1 528 0 is_stmt 1 discriminator 1
	li 29,0
.L7:
	.loc 1 529 0
	lwz 0,0(30)
	.loc 1 528 0
	stb 29,0(31)
	.loc 1 529 0
	cmpwi 7,0,0
	beq- 7,.L3
	.loc 1 529 0 is_stmt 0 discriminator 1
	mtctr 0
	bctrl
.L3:
	.loc 1 530 0 is_stmt 1
	bl LWP_YieldThread
	.loc 1 531 0
	b .L7
	.cfi_endproc
.LFE82:
	.size	glutThread, .-glutThread
	.align 2
	.globl timercallback
	.type	timercallback, @function
timercallback:
.LFB80:
	.loc 1 501 0
	.cfi_startproc
.LVL2:
	stwu 1,-16(1)
.LCFI1:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 502 0
	lis 31,count@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	lbz 9,count@l(31)
	.loc 1 501 0
	stw 0,20(1)
	.loc 1 502 0
	addi 0,9,1
	.cfi_offset 65, 4
	rlwinm 0,0,0,0xff
	stb 0,count@l(31)
	.loc 1 503 0
	lbz 0,count@l(31)
	cmplwi 7,0,2
	bgt- 7,.L13
.LVL3:
.L11:
	.loc 1 509 0
	lbz 0,count@l(31)
	cmplwi 7,0,10
	ble- 7,.L12
	.loc 1 511 0
	li 0,1
	lis 9,kill@ha
	stb 0,kill@l(9)
.L12:
	.loc 1 514 0
	lis 9,incFPS@ha
	lis 11,FPS@ha
	lbz 0,incFPS@l(9)
	.loc 1 516 0
	lwz 31,12(1)
	.loc 1 514 0
	stb 0,FPS@l(11)
	.loc 1 515 0
	li 0,0
	stb 0,incFPS@l(9)
	.loc 1 516 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI2:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	mtlr 0
	blr
.LVL4:
.L13:
.LCFI3:
	.cfi_restore_state
	.loc 1 505 0
	lbz 4,count@l(31)
.LVL5:
	lis 3,.LC3@ha
.LVL6:
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl printf
	.loc 1 506 0
	bl GX_AbortFrame
	b .L11
	.cfi_endproc
.LFE80:
	.size	timercallback, .-timercallback
	.align 2
	.globl glutInit
	.type	glutInit, @function
glutInit:
.LFB64:
	.loc 1 67 0
	.cfi_startproc
.LVL7:
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 77 0
	lis 9,.LC4@ha
	.loc 1 67 0
	stw 0,12(1)
	.loc 1 77 0
	la 0,.LC4@l(9)
	.cfi_offset 65, 4
	lis 9,__glutProgramName@ha
	stw 0,__glutProgramName@l(9)
	.loc 1 79 0
	bl initTextures
.LVL8:
	.loc 1 80 0
	bl initCalllist
	.loc 1 81 0
	bl initTextureSlots
	.loc 1 83 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE64:
	.size	glutInit, .-glutInit
	.align 2
	.globl initGlutData
	.type	initGlutData, @function
initGlutData:
.LFB65:
	.loc 1 86 0
	.cfi_startproc
	stwu 1,-80(1)
.LCFI6:
	.cfi_def_cfa_offset 80
	mflr 0
	stw 27,52(1)
	.loc 1 89 0
	lis 27,.LC5@ha
	.cfi_offset 27, -28
	.cfi_register 65, 0
	.loc 1 86 0
	stfd 31,72(1)
	.loc 1 89 0
	lfs 31,.LC5@l(27)
	.cfi_offset 63, -8
	.loc 1 86 0
	stw 0,84(1)
	.loc 1 89 0
	fmr 3,31
	.loc 1 86 0
	stw 18,16(1)
	.loc 1 89 0
	fmr 1,31
	.loc 1 86 0
	stw 19,20(1)
	.loc 1 89 0
	fmr 2,31
	.loc 1 86 0
	stw 20,24(1)
	stw 21,28(1)
	stw 22,32(1)
	stw 23,36(1)
	stw 24,40(1)
	stw 25,44(1)
	stw 26,48(1)
	stw 28,56(1)
	stw 29,60(1)
	stw 30,64(1)
	stw 31,68(1)
	.loc 1 89 0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 22, -48
	.cfi_offset 21, -52
	.cfi_offset 20, -56
	.cfi_offset 19, -60
	.cfi_offset 18, -64
	.cfi_offset 65, 4
	bl glColor3f
	.loc 1 90 0
	lis 9,.LC9@ha
	lfs 1,.LC9@l(9)
	fmr 2,1
	bl glTexCoord2f
	.loc 1 91 0
	lis 11,.LC9@ha
	lfs 1,.LC9@l(11)
	fmr 3,31
	fmr 2,1
	bl glNormal3f
.LVL9:
	.loc 1 103 0
	lis 9,.LC6@ha
	lwz 3,.LC6@l(9)
	.loc 1 105 0
	lis 9,.LC7@ha
	.loc 1 95 0
	stfs 31,8(1)
	.loc 1 91 0
	lis 8,lights@ha
	.loc 1 105 0
	lwz 4,.LC7@l(9)
	.loc 1 91 0
	li 9,8
	la 8,lights@l(8)
	.loc 1 95 0
	lwz 0,8(1)
	.loc 1 105 0
	mtctr 9
	.loc 1 91 0
	mr 7,8
	.loc 1 95 0
	li 6,0
	.loc 1 98 0
	li 5,0
.LVL10:
.L16:
	.loc 1 95 0 discriminator 2
	stw 6,68(7)
	li 11,0
	stw 6,72(7)
	.loc 1 98 0 discriminator 2
	li 10,0
	.loc 1 95 0 discriminator 2
	stw 0,76(7)
	.loc 1 109 0 discriminator 2
	addi 9,9,-1
	.loc 1 96 0 discriminator 2
	stw 6,80(7)
	.loc 1 98 0 discriminator 2
	stb 5,0(7)
	.loc 1 99 0 discriminator 2
	stw 6,96(7)
	stw 6,100(7)
	stw 6,104(7)
	stw 0,108(7)
	.loc 1 100 0 discriminator 2
	stw 6,112(7)
	stw 6,116(7)
	stw 6,120(7)
	stw 0,124(7)
	.loc 1 101 0 discriminator 2
	stw 6,128(7)
	stw 6,132(7)
	stw 6,136(7)
	stw 0,140(7)
	.loc 1 103 0 discriminator 2
	stw 3,148(7)
	.loc 1 104 0 discriminator 2
	stw 6,144(7)
	.loc 1 105 0 discriminator 2
	stw 6,84(7)
	stw 6,88(7)
	stw 4,92(7)
	.loc 1 107 0 discriminator 2
	stw 0,152(7)
	.loc 1 108 0 discriminator 2
	stw 6,156(7)
	.loc 1 109 0 discriminator 2
	stw 6,160(7)
	addi 7,7,164
	.loc 1 94 0 discriminator 2
	bdnz .L16
	.loc 1 112 0
	lis 6,.LANCHOR0@ha
	.loc 1 118 0
	lis 12,curmat@ha
	.loc 1 112 0
	la 7,.LANCHOR0@l(6)
	lwz 22,.LANCHOR0@l(6)
	.loc 1 115 0
	lwz 5,24(7)
	lis 26,globAmbient@ha
	lwz 6,28(7)
	.loc 1 118 0
	la 30,curmat@l(12)
	.loc 1 115 0
	lwz 31,20(7)
	.loc 1 130 0
	lis 28,model_stack@ha
	.loc 1 112 0
	lwz 23,4(7)
	.loc 1 130 0
	la 28,model_stack@l(28)
	.loc 1 112 0
	lwz 24,8(7)
	.loc 1 130 0
	li 4,32
	.loc 1 112 0
	lwz 25,12(7)
	.loc 1 130 0
	mr 3,28
	.loc 1 115 0
	lwz 29,16(7)
	.loc 1 120 0
	lwz 18,32(7)
	lwz 19,36(7)
	lwz 20,40(7)
	lwz 21,44(7)
	.loc 1 115 0
	la 7,globAmbient@l(26)
	stw 31,4(7)
	.loc 1 118 0
	stw 11,curmat@l(12)
	.loc 1 112 0
	stw 22,112(8)
	stw 23,116(8)
	stw 24,120(8)
	stw 25,124(8)
	.loc 1 113 0
	stw 22,128(8)
	stw 23,132(8)
	stw 24,136(8)
	stw 25,140(8)
	.loc 1 115 0
	stw 5,8(7)
	stw 6,12(7)
	.loc 1 119 0
	stw 5,24(30)
	stw 6,28(30)
	.loc 1 115 0
	stw 29,globAmbient@l(26)
	.loc 1 118 0
	stw 11,4(30)
	stw 11,8(30)
	stw 0,12(30)
	.loc 1 119 0
	stw 29,16(30)
	lis 29,texture_stack@ha
	stw 31,20(30)
	la 29,texture_stack@l(29)
	.loc 1 120 0
	stw 18,32(30)
	.loc 1 138 0
	li 31,0
	.loc 1 120 0
	stw 19,36(30)
	.loc 1 121 0
	stw 11,48(30)
	stw 11,52(30)
	stw 11,56(30)
	.loc 1 123 0
	lis 11,blend_type@ha
	stb 9,blend_type@l(11)
	.loc 1 124 0
	lis 9,blend_src@ha
	.loc 1 121 0
	stw 0,60(30)
	.loc 1 124 0
	li 0,1
	stb 0,blend_src@l(9)
	.loc 1 125 0
	lis 9,blend_dst@ha
	stb 10,blend_dst@l(9)
	.loc 1 126 0
	lis 9,blend_op@ha
	stb 10,blend_op@l(9)
	.loc 1 128 0
	li 0,2
	lis 9,cull_mode@ha
	.loc 1 120 0
	stw 20,40(30)
	.loc 1 128 0
	stb 0,cull_mode@l(9)
	.loc 1 120 0
	stw 21,44(30)
	.loc 1 130 0
	bl InitStackMtx
	.loc 1 131 0
	li 3,5888
	bl glMatrixMode
	.loc 1 132 0
	bl glLoadIdentity
	.loc 1 134 0
	lis 3,projection_stack@ha
	li 4,2
	la 3,projection_stack@l(3)
	bl InitStackPrjMtx
	.loc 1 135 0
	li 3,5889
	bl glMatrixMode
	.loc 1 136 0
	bl glLoadIdentity
.LVL11:
.L17:
	.loc 1 140 0 discriminator 2
	slwi 3,31,4
	li 4,2
	add 3,29,3
	bl InitStackMtx
	.loc 1 141 0 discriminator 2
	li 3,5890
	bl glMatrixMode
	.loc 1 86 0 discriminator 2
	addis 3,31,0x1
	.loc 1 142 0 discriminator 2
	addi 3,3,-31552
	bl glActiveTextureARB
	.loc 1 143 0 discriminator 2
	bl glLoadIdentity
.LVL12:
	.loc 1 138 0 discriminator 2
	cmpwi 7,31,7
	addi 31,31,1
.LVL13:
	bne+ 7,.L17
	.loc 1 146 0
	li 3,0
	ori 3,3,33984
	bl glActiveTextureARB
	.loc 1 148 0
	lis 5,norm@ha
	li 6,0
	la 11,norm@l(5)
	stb 6,norm@l(5)
	.loc 1 149 0
	lis 5,_normalelements@ha
	.loc 1 154 0
	lis 7,vert@ha
	.loc 1 150 0
	li 8,12
	.loc 1 151 0
	li 0,5126
	.loc 1 152 0
	li 10,3
	.loc 1 149 0
	la 5,_normalelements@l(5)
	.loc 1 154 0
	la 9,vert@l(7)
	.loc 1 150 0
	stb 8,8(11)
	.loc 1 151 0
	stw 0,16(11)
	.loc 1 152 0
	stw 10,12(11)
	.loc 1 149 0
	stw 5,4(11)
	.loc 1 155 0
	lis 11,_vertexelements@ha
	la 11,_vertexelements@l(11)
	.loc 1 158 0
	stw 0,16(9)
.LVL14:
	.loc 1 166 0
	li 0,8
	.loc 1 155 0
	stw 11,4(9)
	.loc 1 156 0
	stb 8,8(9)
	.loc 1 166 0
	mtctr 0
	.loc 1 157 0
	stw 10,12(9)
	.loc 1 158 0
	lis 9,tex+4@ha
	.loc 1 154 0
	stb 6,vert@l(7)
	.loc 1 158 0
	la 9,tex+4@l(9)
	.loc 1 162 0
	li 11,0
	.loc 1 163 0
	li 7,8
	.loc 1 164 0
	li 8,2
	.loc 1 165 0
	li 10,5126
.LVL15:
.L18:
	.loc 1 162 0 discriminator 2
	stw 11,0(9)
	li 0,0
	.loc 1 163 0 discriminator 2
	stb 7,4(9)
	.loc 1 164 0 discriminator 2
	stw 8,8(9)
	.loc 1 165 0 discriminator 2
	stw 10,12(9)
	.loc 1 166 0 discriminator 2
	stb 11,-4(9)
	addi 9,9,20
	.loc 1 160 0 discriminator 2
	bdnz .L18
	.loc 1 172 0
	lis 3,color@ha
	.loc 1 175 0
	li 6,4
	.loc 1 172 0
	la 8,color@l(3)
	stb 0,color@l(3)
	.loc 1 173 0
	lis 3,_colorelements@ha
	.loc 1 175 0
	stw 6,12(8)
	.loc 1 173 0
	la 3,_colorelements@l(3)
	.loc 1 193 0
	li 31,1
	.loc 1 173 0
	stw 3,4(8)
	.loc 1 174 0
	li 3,16
	stb 3,8(8)
	.loc 1 176 0
	li 3,5126
	stw 3,16(8)
	.loc 1 178 0
	lis 8,curmtx@ha
	stw 28,curmtx@l(8)
	.loc 1 179 0
	li 3,5888
	lis 8,cur_mode@ha
	.loc 1 183 0
	li 9,0
	.loc 1 179 0
	stw 3,cur_mode@l(8)
	.loc 1 180 0
	lis 8,cur_tex@ha
	stw 0,cur_tex@l(8)
	.loc 1 181 0
	lis 8,cur_tex_client@ha
	stw 0,cur_tex_client@l(8)
	.loc 1 186 0
	lis 8,lighting@ha
	stb 0,lighting@l(8)
	.loc 1 189 0
	lis 8,gxcullfaceanabled@ha
	stb 0,gxcullfaceanabled@l(8)
	.loc 1 190 0
	li 3,2305
	lis 8,gxwinding@ha
	.loc 1 202 0
	lis 4,_clearcolor@ha
	.loc 1 190 0
	stw 3,gxwinding@l(8)
	.loc 1 192 0
	lis 8,depthtestenabled@ha
	stb 0,depthtestenabled@l(8)
	.loc 1 193 0
	lis 8,depthfunction@ha
	stw 31,depthfunction@l(8)
	.loc 1 194 0
	lis 8,depthupdate@ha
	stb 31,depthupdate@l(8)
	.loc 1 196 0
	lis 8,_alphatest_enabled@ha
	stb 0,_alphatest_enabled@l(8)
	.loc 1 197 0
	li 3,519
	lis 8,_alphatest_func@ha
	.loc 1 203 0
	lwz 11,.LC5@l(27)
	.loc 1 197 0
	stw 3,_alphatest_func@l(8)
	.loc 1 198 0
	lis 8,_alphatest_ref@ha
	stw 9,_alphatest_ref@l(8)
	.loc 1 199 0
	lis 8,_alphatest_dirty@ha
	.loc 1 202 0
	la 7,_clearcolor@l(4)
	.loc 1 199 0
	stb 31,_alphatest_dirty@l(8)
	.loc 1 202 0
	li 8,-1
	.loc 1 212 0
	lis 5,Trans@ha
	.loc 1 202 0
	stb 8,3(7)
	.loc 1 203 0
	lis 8,_cleardepth@ha
	stw 11,_cleardepth@l(8)
	.loc 1 206 0
	lis 8,cur_state@ha
	.loc 1 212 0
	la 10,Trans@l(5)
	.loc 1 206 0
	stw 0,cur_state@l(8)
	.loc 1 208 0
	lis 8,scissor_test@ha
	.loc 1 202 0
	stb 0,1(7)
	stb 0,2(7)
	.loc 1 228 0
	lis 7,fog_color@ha
	.loc 1 208 0
	stb 0,scissor_test@l(8)
.LVL16:
	.loc 1 228 0
	la 8,fog_color@l(7)
	.loc 1 183 0
	stw 9,64(30)
	.loc 1 202 0
	stb 0,_clearcolor@l(4)
	.loc 1 212 0
	stw 11,Trans@l(5)
	.loc 1 218 0
	li 5,1029
	.loc 1 212 0
	stw 9,4(10)
.LVL17:
	stw 11,8(10)
	stw 9,12(10)
.LVL18:
	stw 11,16(10)
	stw 9,20(10)
.LVL19:
	stw 11,24(10)
	stw 9,28(10)
.LVL20:
	.loc 1 215 0
	lis 10,normNear@ha
	stw 9,normNear@l(10)
	.loc 1 216 0
	lis 10,normFar@ha
	stw 11,normFar@l(10)
	.loc 1 218 0
	lis 10,read_mode@ha
	stw 5,read_mode@l(10)
	.loc 1 220 0
	lis 10,copy_mat_enabled@ha
	stb 0,copy_mat_enabled@l(10)
	.loc 1 221 0
	li 5,5634
	lis 10,copy_material@ha
	.loc 1 228 0
	stb 0,1(8)
	.loc 1 221 0
	stw 5,copy_material@l(10)
	.loc 1 223 0
	lis 10,fog_enable@ha
	stb 0,fog_enable@l(10)
	.loc 1 224 0
	lis 10,fog_mode@ha
	stb 6,fog_mode@l(10)
	.loc 1 225 0
	lis 10,fog_startz@ha
	stw 9,fog_startz@l(10)
	.loc 1 226 0
	lis 9,fog_endz@ha
	stw 11,fog_endz@l(9)
	.loc 1 227 0
	lis 9,.LC8@ha
	lwz 11,.LC8@l(9)
	lis 9,fog_density@ha
	.loc 1 228 0
	stb 0,2(8)
	stb 31,3(8)
	.loc 1 227 0
	stw 11,fog_density@l(9)
	.loc 1 228 0
	stb 0,fog_color@l(7)
	.loc 1 230 0
	bl _glInitStacks
.LVL21:
	.loc 1 240 0
	lwz 0,84(1)
	.loc 1 234 0
	lis 11,color_write_mask@ha
	la 9,color_write_mask@l(11)
	.loc 1 240 0
	lwz 18,16(1)
	mtlr 0
	.loc 1 234 0
	stb 31,1(9)
	stb 31,2(9)
	stb 31,3(9)
	.loc 1 240 0
	lwz 19,20(1)
	lwz 20,24(1)
	lwz 21,28(1)
	lwz 22,32(1)
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
	lwz 27,52(1)
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lfd 31,72(1)
	.loc 1 234 0
	stb 31,color_write_mask@l(11)
.LVL22:
	.loc 1 240 0
	lwz 31,68(1)
	addi 1,1,80
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
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
	blr
	.cfi_endproc
.LFE65:
	.size	initGlutData, .-initGlutData
	.align 2
	.globl ShowConsole
	.type	ShowConsole, @function
ShowConsole:
.LFB66:
	.loc 1 247 0
	.cfi_startproc
	.loc 1 248 0
	li 0,1
	lis 9,_console_enabled@ha
	stb 0,_console_enabled@l(9)
	.loc 1 251 0
	blr
	.cfi_endproc
.LFE66:
	.size	ShowConsole, .-ShowConsole
	.align 2
	.globl HideConsole
	.type	HideConsole, @function
HideConsole:
.LFB67:
	.loc 1 254 0
	.cfi_startproc
	.loc 1 257 0
	li 0,0
	lis 9,_console_enabled@ha
	stb 0,_console_enabled@l(9)
	.loc 1 258 0
	blr
	.cfi_endproc
.LFE67:
	.size	HideConsole, .-HideConsole
	.align 2
	.globl getVImode
	.type	getVImode, @function
getVImode:
.LFB68:
	.loc 1 261 0
	.cfi_startproc
.LVL23:
	.loc 1 262 0
	lis 9,rmode@ha
	lwz 9,rmode@l(9)
	lhz 11,14(9)
	.loc 1 263 0
	lhz 0,16(9)
	.loc 1 264 0
	.loc 1 262 0
	stw 11,0(3)
	.loc 1 263 0
	stw 0,0(4)
	.loc 1 264 0
	blr
	.cfi_endproc
.LFE68:
	.size	getVImode, .-getVImode
	.align 2
	.globl glutInitDisplayMode
	.type	glutInitDisplayMode, @function
glutInitDisplayMode:
.LFB69:
	.loc 1 266 0
	.cfi_startproc
.LVL24:
	mflr 0
	stwu 1,-56(1)
.LCFI8:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 29,44(1)
	.loc 1 280 0
	lis 29,.LANCHOR1@ha
	.cfi_offset 29, -12
	.loc 1 266 0
	stw 0,60(1)
	stw 30,48(1)
	.loc 1 280 0
	la 30,.LANCHOR1@l(29)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 266 0
	stw 31,52(1)
	.loc 1 270 0
	lis 31,rmode@ha
	.cfi_offset 31, -4
	.loc 1 266 0
	stw 27,36(1)
	stw 28,40(1)
	.loc 1 268 0
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	bl VIDEO_Init
.LVL25:
	.loc 1 270 0
	li 3,0
	bl VIDEO_GetPreferredMode
	.loc 1 273 0
	lhz 9,10(3)
	.loc 1 270 0
	stw 3,rmode@l(31)
	.loc 1 273 0
	addi 0,9,-10
	.loc 1 272 0
	li 9,660
	.loc 1 273 0
	sth 0,10(3)
	.loc 1 275 0
	li 0,480
	.loc 1 272 0
	sth 9,14(3)
	.loc 1 275 0
	sth 0,6(3)
	.loc 1 277 0
	bl initGlutData
	.loc 1 280 0
	lwz 3,rmode@l(31)
	bl SYS_AllocateFramebuffer
	addis 0,3,0x4000
	.loc 1 281 0
	lwz 3,rmode@l(31)
	.loc 1 280 0
	stw 0,.LANCHOR1@l(29)
	.loc 1 281 0
	bl SYS_AllocateFramebuffer
	.loc 1 282 0
	lwz 9,rmode@l(31)
	.loc 1 281 0
	addis 0,3,0x4000
	.loc 1 282 0
	lwz 3,.LANCHOR1@l(29)
	lhz 6,4(9)
	li 4,20
	lhz 7,8(9)
	li 5,20
	slwi 8,6,1
	.loc 1 281 0
	stw 0,4(30)
	.loc 1 282 0
	bl CON_Init
	.loc 1 284 0
	lwz 4,.LANCHOR1@l(29)
	lwz 3,rmode@l(31)
	li 5,0
	.loc 1 288 0
	lis 29,fb@ha
	.loc 1 284 0
	bl VIDEO_ClearFrameBuffer
	.loc 1 285 0
	lwz 4,4(30)
	lwz 3,rmode@l(31)
	li 5,0
	bl VIDEO_ClearFrameBuffer
	.loc 1 287 0
	lwz 3,rmode@l(31)
	bl VIDEO_Configure
	.loc 1 288 0
	lwz 0,fb@l(29)
	slwi 0,0,2
	lwzx 3,30,0
	bl VIDEO_SetNextFramebuffer
	.loc 1 289 0
	li 3,0
	bl VIDEO_SetBlack
	.loc 1 290 0
	bl VIDEO_Flush
	.loc 1 291 0
	bl VIDEO_WaitVSync
	.loc 1 292 0
	lwz 9,rmode@l(31)
	lwz 0,0(9)
	andi. 9,0,1
	bne- 0,.L33
.L26:
.LVL26:
	.loc 1 309 0
	lis 4,0x8
	li 3,32
	bl memalign
	.loc 1 310 0
	lis 5,0x8
	.loc 1 309 0
	mr 28,3
.LVL27:
	.loc 1 310 0
	li 4,0
	bl memset
.LVL28:
	.loc 1 312 0
	lis 4,0x8
	mr 3,28
	.loc 1 320 0
	lis 27,fb_max_height@ha
	.loc 1 312 0
	bl GX_Init
	.loc 1 315 0
	lwz 9,rmode@l(31)
	lis 0,0x4330
	lhz 11,4(9)
	stw 0,8(1)
	stw 11,12(1)
	lhz 9,6(9)
	stw 0,16(1)
	stw 9,20(1)
	lis 9,.LC11@ha
	lfs 0,.LC11@l(9)
	lis 9,.LC9@ha
	lfd 3,8(1)
	lfd 4,16(1)
	fsub 3,3,0
	lfs 1,.LC9@l(9)
	fsub 4,4,0
	lis 9,.LC5@ha
	fmr 2,1
	lfs 6,.LC5@l(9)
	frsp 3,3
	frsp 4,4
	fmr 5,1
	bl GX_SetViewport
	.loc 1 316 0
	lwz 9,rmode@l(31)
	lhz 4,8(9)
	lhz 3,6(9)
	bl GX_GetYScaleFactor
	.loc 1 317 0
	bl GX_SetDispCopyYScale
	.loc 1 319 0
	lwz 9,rmode@l(31)
	.loc 1 317 0
	mr 28,3
.LVL29:
	.loc 1 319 0
	li 4,0
	lhz 5,4(9)
	li 3,0
.LVL30:
	lhz 6,6(9)
	bl GX_SetScissor
	.loc 1 320 0
	lwz 9,rmode@l(31)
	.loc 1 322 0
	lis 12,scissorInfo@ha
	.loc 1 323 0
	lis 7,viewPort@ha
	.loc 1 320 0
	lhz 0,6(9)
	.loc 1 322 0
	li 11,0
	.loc 1 321 0
	lhz 9,4(9)
	.loc 1 322 0
	la 8,scissorInfo@l(12)
	.loc 1 323 0
	la 10,viewPort@l(7)
	.loc 1 322 0
	stw 0,12(8)
	stw 9,8(8)
	.loc 1 325 0
	mr 6,0
	.loc 1 323 0
	stw 9,8(10)
	.loc 1 325 0
	mr 5,9
	.loc 1 323 0
	stw 0,12(10)
	.loc 1 325 0
	li 3,0
	.loc 1 322 0
	stw 11,4(8)
	.loc 1 325 0
	li 4,0
	.loc 1 323 0
	stw 11,4(10)
	.loc 1 320 0
	stw 0,fb_max_height@l(27)
	.loc 1 321 0
	lis 27,fb_max_width@ha
	.loc 1 322 0
	stw 11,scissorInfo@l(12)
	.loc 1 323 0
	stw 11,viewPort@l(7)
	.loc 1 321 0
	stw 9,fb_max_width@l(27)
	.loc 1 325 0
	bl GX_SetDispCopySrc
	.loc 1 326 0
	lwz 9,rmode@l(31)
	rlwinm 4,28,0,0xffff
	lhz 3,4(9)
	bl GX_SetDispCopyDst
	.loc 1 327 0
	lwz 6,rmode@l(31)
	li 5,1
	lbz 3,25(6)
	addi 4,6,26
	addi 6,6,50
	bl GX_SetCopyFilter
	.loc 1 328 0
	lwz 9,rmode@l(31)
	lhz 0,8(9)
	lhz 4,16(9)
	slwi 0,0,1
	lbz 3,24(9)
	xor 4,4,0
	cntlzw 4,4
	srwi 4,4,5
	bl GX_SetFieldMode
	.loc 1 330 0
	lwz 9,rmode@l(31)
	lbz 0,25(9)
	cmpwi 7,0,0
	beq- 7,.L27
	.loc 1 331 0
	li 3,2
	li 4,0
	bl GX_SetPixelFmt
.L28:
	.loc 1 337 0
	mr 31,1
	.loc 1 335 0
	li 28,0
.LVL31:
	.loc 1 337 0
	stwu 28,24(31)
.LVL32:
	li 4,0
	mr 3,31
	bl GX_SetCopyClear
	.loc 1 338 0
	lwz 0,fb@l(29)
	li 4,1
	slwi 0,0,2
	lwzx 3,30,0
	bl GX_CopyDisp
	.loc 1 339 0
	lis 4,0xff
	mr 3,31
	ori 4,4,65535
	stw 28,24(1)
	bl GX_SetCopyClear
	.loc 1 340 0
	lwz 0,fb@l(29)
	li 4,1
	.loc 1 366 0
	li 31,0
	.loc 1 340 0
	slwi 0,0,2
	lwzx 3,30,0
	bl GX_CopyDisp
	.loc 1 341 0
	lwz 0,fb@l(29)
	li 4,1
	slwi 0,0,2
	lwzx 3,30,0
	bl GX_CopyDisp
	.loc 1 342 0
	li 3,0
	bl GX_SetDispCopyGamma
	.loc 1 351 0
	li 3,0
	li 4,9
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 352 0
	li 3,0
	li 4,10
	li 5,0
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 353 0
	li 5,1
	li 6,5
	li 7,0
	li 3,0
	li 4,11
	bl GX_SetVtxAttrFmt
	.loc 1 358 0
	bl GX_ClearVtxDesc
	.loc 1 359 0
	li 3,9
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 360 0
	li 3,10
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 361 0
	li 3,11
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 362 0
	li 3,13
	li 4,1
	bl GX_SetVtxDesc
.LVL33:
.L29:
	.loc 1 368 0 discriminator 2
	rlwinm 3,31,0,0xff
	bl incTexDesc
	li 5,1
	mr 4,3
	li 6,4
	li 3,0
	li 7,0
	bl GX_SetVtxAttrFmt
.LVL34:
	.loc 1 366 0 discriminator 2
	cmpwi 7,31,7
	addi 31,31,1
.LVL35:
	bne+ 7,.L29
	.loc 1 371 0
	li 3,9
	li 4,0
	li 5,0
	.loc 1 374 0
	li 31,0
.LVL36:
	.loc 1 371 0
	bl GX_SetArray
	.loc 1 372 0
	li 3,10
	li 4,0
	li 5,0
	bl GX_SetArray
	.loc 1 373 0
	li 3,11
	li 4,0
	li 5,0
	bl GX_SetArray
.LVL37:
.L30:
	.loc 1 376 0 discriminator 2
	rlwinm 3,31,0,0xff
	bl incTexDesc
	li 4,0
	li 5,0
	bl GX_SetArray
.LVL38:
	.loc 1 374 0 discriminator 2
	cmpwi 7,31,7
	addi 31,31,1
.LVL39:
	bne+ 7,.L30
	.loc 1 381 0
	li 4,1
	li 5,4
	li 6,60
	li 3,0
	bl GX_SetTexCoordGen
	.loc 1 383 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 385 0
	li 3,1
	bl GX_SetNumTexGens
	.loc 1 386 0
	bl GX_InvalidateTexAll
	.loc 1 388 0
	li 5,255
	li 6,4
	li 3,0
	li 4,255
	bl GX_SetTevOrder
	.loc 1 389 0
	li 4,4
	li 3,0
	bl GX_SetTevOp
	.loc 1 392 0
	li 3,1
	bl GX_SetAlphaUpdate
	.loc 1 394 0
	li 3,0
	bl GX_SetCullMode
	.loc 1 396 0
	bl GX_DrawDone
	.loc 1 399 0
	bl ResetArrays
	.loc 1 401 0
	lwz 0,60(1)
	lwz 27,36(1)
	mtlr 0
	lwz 28,40(1)
.LVL40:
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
.LVL41:
	addi 1,1,56
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL42:
.L27:
.LCFI10:
	.cfi_restore_state
	.loc 1 333 0
	li 3,1
	li 4,0
	bl GX_SetPixelFmt
	b .L28
.LVL43:
.L33:
	.loc 1 292 0 discriminator 1
	bl VIDEO_WaitVSync
	b .L26
	.cfi_endproc
.LFE69:
	.size	glutInitDisplayMode, .-glutInitDisplayMode
	.align 2
	.globl computeFactor
	.type	computeFactor, @function
computeFactor:
.LFB71:
	.loc 1 415 0
	.cfi_startproc
	.loc 1 416 0
	lis 9,rmode@ha
	.loc 1 415 0
	stwu 1,-24(1)
.LCFI11:
	.cfi_def_cfa_offset 24
	.loc 1 416 0
	lwz 11,rmode@l(9)
	lis 9,offset@ha
	lwz 9,offset@l(9)
	lis 0,0x4330
	lhz 11,6(11)
	slwi 9,9,1
	stw 0,8(1)
	stw 11,12(1)
	xoris 9,9,0x8000
	stw 9,20(1)
	lis 9,.LC11@ha
	lfd 13,8(1)
	stw 0,16(1)
	lfs 0,.LC11@l(9)
	lis 9,.LC13@ha
	lfd 1,16(1)
	.loc 1 417 0
	.loc 1 416 0
	fsub 0,13,0
	lfs 13,.LC13@l(9)
	.loc 1 417 0
	addi 1,1,24
.LCFI12:
	.cfi_def_cfa_offset 0
	.loc 1 416 0
	fsub 1,1,13
	frsp 0,0
	frsp 1,1
	fsubs 1,0,1
	.loc 1 417 0
	fdivs 1,1,0
	blr
	.cfi_endproc
.LFE71:
	.size	computeFactor, .-computeFactor
	.align 2
	.globl GX_SetModViewport
	.type	GX_SetModViewport, @function
GX_SetModViewport:
.LFB72:
	.loc 1 420 0
	.cfi_startproc
.LVL44:
	mflr 0
	stwu 1,-32(1)
.LCFI13:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
.LBB8:
.LBB9:
	.loc 1 416 0
	lis 9,offset@ha
	lis 11,rmode@ha
	lwz 9,offset@l(9)
.LBE9:
.LBE8:
	.loc 1 423 0
	fadds 2,2,4
.LVL45:
	.loc 1 420 0
	stw 0,36(1)
.LBB16:
.LBB10:
	.loc 1 416 0
	lis 0,0x4330
	.cfi_offset 65, 4
	lwz 11,rmode@l(11)
	slwi 10,9,1
	xoris 10,10,0x8000
.LBE10:
.LBE16:
	.loc 1 419 0
	fneg 2,2
.LBB17:
.LBB11:
	.loc 1 416 0
	lhz 11,6(11)
	stw 0,8(1)
	stw 10,20(1)
	lis 10,.LC13@ha
	stw 11,12(1)
.LBE11:
.LBE17:
	.loc 1 423 0
	subf 9,9,11
.LBB18:
.LBB12:
	.loc 1 416 0
	lfs 13,.LC13@l(10)
	lis 10,.LC11@ha
	stw 0,16(1)
.LBE12:
.LBE18:
	.loc 1 423 0
	xoris 9,9,0x8000
.LBB19:
.LBB13:
	.loc 1 416 0
	lfd 12,8(1)
	lfs 0,.LC11@l(10)
.LBE13:
.LBE19:
	.loc 1 423 0
	stw 0,24(1)
.LBB20:
.LBB14:
	.loc 1 416 0
	fsub 12,12,0
	lfd 0,16(1)
.LBE14:
.LBE20:
	.loc 1 423 0
	stw 9,28(1)
.LBB21:
.LBB15:
	.loc 1 416 0
	fsub 0,0,13
	frsp 12,12
	frsp 0,0
	fsubs 0,12,0
	fdivs 0,0,12
.LBE15:
.LBE21:
	.loc 1 423 0
	lfd 12,24(1)
	fsub 13,12,13
	fmuls 4,4,0
.LVL46:
	frsp 13,13
	fmadds 2,2,0,13
	bl GX_SetViewport
.LVL47:
	.loc 1 424 0
	lwz 0,36(1)
	addi 1,1,32
.LCFI14:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE72:
	.size	GX_SetModViewport, .-GX_SetModViewport
	.align 2
	.globl glutCreateWindow
	.type	glutCreateWindow, @function
glutCreateWindow:
.LFB70:
	.loc 1 403 0
	.cfi_startproc
.LVL48:
	mflr 0
	stwu 1,-40(1)
.LCFI15:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 404 0
	lis 9,rmode@ha
	lwz 9,rmode@l(9)
	.loc 1 403 0
	stw 0,44(1)
	.loc 1 404 0
	lis 0,0x4330
	.cfi_offset 65, 4
	.loc 1 403 0
	stfd 31,32(1)
	.loc 1 404 0
	lhz 11,4(9)
	stw 0,16(1)
	stw 11,20(1)
	lhz 9,6(9)
	stw 0,24(1)
	stw 9,28(1)
	lis 9,.LC11@ha
	lfs 0,.LC11@l(9)
	lis 9,.LC9@ha
	lfd 3,16(1)
	lfd 4,24(1)
	lfs 1,.LC9@l(9)
	fsub 3,3,0
	fsub 4,4,0
	lis 9,.LC5@ha
	lfs 31,.LC5@l(9)
	.cfi_offset 63, -8
	fmr 2,1
	fmr 5,1
	fmr 6,31
	frsp 3,3
	frsp 4,4
	bl GX_SetModViewport
.LVL49:
	.loc 1 406 0
	li 3,5888
	bl glMatrixMode
	.loc 1 407 0
	bl glLoadIdentity
	.loc 1 408 0
	lis 9,.LC14@ha
	lfd 0,.LC14@l(9)
	fmr 8,31
	lis 9,.LC7@ha
	fmr 1,0
	lfs 6,.LC7@l(9)
	fmr 2,0
	stfd 0,8(1)
	fmr 3,0
	fmr 4,0
	fmr 5,0
	fmr 7,0
	bl gluLookAt
	.loc 1 410 0
	lwz 0,44(1)
	lfd 31,32(1)
	li 3,0
	mtlr 0
	addi 1,1,40
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	blr
	.cfi_endproc
.LFE70:
	.size	glutCreateWindow, .-glutCreateWindow
	.align 2
	.globl GX_SetModScissor
	.type	GX_SetModScissor, @function
GX_SetModScissor:
.LFB73:
	.loc 1 427 0
	.cfi_startproc
.LVL50:
	mflr 0
	stwu 1,-64(1)
.LCFI17:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
.LBB22:
.LBB23:
	.loc 1 416 0
	lis 9,offset@ha
	lis 8,.LC13@ha
	lwz 11,offset@l(9)
	lis 9,rmode@ha
.LBE23:
.LBE22:
	.loc 1 427 0
	stw 0,68(1)
.LBB33:
.LBB24:
	.loc 1 416 0
	lis 0,0x4330
	.cfi_offset 65, 4
	lwz 10,rmode@l(9)
	slwi 9,11,1
	xoris 9,9,0x8000
	lfs 12,.LC13@l(8)
	lhz 10,6(10)
.LBE24:
.LBE33:
	.loc 1 430 0
	add 4,6,4
.LVL51:
.LBB34:
.LBB25:
	.loc 1 416 0
	stw 9,20(1)
	lis 9,.LC11@ha
	stw 10,12(1)
.LBE25:
.LBE34:
	.loc 1 430 0
	subf 11,11,10
.LBB35:
.LBB26:
	.loc 1 416 0
	stw 0,8(1)
.LBE26:
.LBE35:
	.loc 1 430 0
	xoris 11,11,0x8000
.LBB36:
.LBB27:
	.loc 1 416 0
	stw 0,16(1)
	lfs 11,.LC11@l(9)
	lfd 10,8(1)
	lfd 13,16(1)
	fsub 10,10,11
.LBE27:
.LBE36:
	.loc 1 430 0
	stw 4,28(1)
.LBB37:
.LBB28:
	.loc 1 416 0
	fsub 13,13,12
.LBE28:
.LBE37:
	.loc 1 430 0
	stw 0,24(1)
	stw 11,36(1)
	lis 11,.LC17@ha
.LBB38:
.LBB29:
	.loc 1 416 0
	frsp 10,10
.LBE29:
.LBE38:
	.loc 1 430 0
	lfd 0,24(1)
.LBB39:
.LBB30:
	.loc 1 416 0
	frsp 13,13
.LBE30:
.LBE39:
	.loc 1 430 0
	stw 0,32(1)
	fsub 0,0,11
	lfd 11,32(1)
.LBB40:
.LBB31:
	.loc 1 416 0
	fsubs 13,10,13
.LBE31:
.LBE40:
	.loc 1 430 0
	fsub 12,11,12
	frsp 0,0
.LBB41:
.LBB32:
	.loc 1 416 0
	fdivs 13,13,10
.LBE32:
.LBE41:
	.loc 1 430 0
	lfs 10,.LC17@l(11)
	frsp 12,12
	.loc 1 426 0
	fneg 0,0
	.loc 1 430 0
	fmadds 0,0,13,12
	fcmpu 7,0,10
	cror 30,29,30
	beq- 7,.L38
	fctiwz 0,0
	addi 10,1,60
	lis 0,0x4330
	lfs 12,.LC17@l(11)
	stfiwx 0,0,10
	stw 6,44(1)
	stw 0,40(1)
	lfs 0,.LC11@l(9)
	lfd 11,40(1)
	lwz 4,60(1)
	fsub 0,11,0
	frsp 0,0
	fmuls 0,0,13
	fcmpu 7,0,12
	cror 30,29,30
	beq- 7,.L40
.L42:
	fctiwz 0,0
	addi 9,1,52
	stfiwx 0,0,9
	lwz 6,52(1)
.LVL52:
	bl GX_SetScissor
.LVL53:
	.loc 1 431 0
	lwz 0,68(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI18:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL54:
.L38:
.LCFI19:
	.cfi_restore_state
	.loc 1 430 0
	fsubs 0,0,10
	addi 10,1,56
	lis 0,0x4330
	lfs 12,.LC17@l(11)
	fctiwz 0,0
	stfiwx 0,0,10
	stw 6,44(1)
	stw 0,40(1)
	lfs 0,.LC11@l(9)
	lfd 11,40(1)
	lwz 4,56(1)
	fsub 0,11,0
	addis 4,4,0x8000
	frsp 0,0
	fmuls 0,0,13
	fcmpu 7,0,12
	cror 30,29,30
	bne+ 7,.L42
.L40:
	fsubs 0,0,12
	addi 10,1,48
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 6,48(1)
.LVL55:
	addis 6,6,0x8000
	bl GX_SetScissor
.LVL56:
	.loc 1 431 0
	lwz 0,68(1)
	addi 1,1,64
.LCFI20:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE73:
	.size	GX_SetModScissor, .-GX_SetModScissor
	.align 2
	.globl GX_SetMaxScissor
	.type	GX_SetMaxScissor, @function
GX_SetMaxScissor:
.LFB74:
	.loc 1 434 0
	.cfi_startproc
	.loc 1 435 0
	lis 9,rmode@ha
	li 3,0
	lwz 9,rmode@l(9)
	li 4,0
	lhz 5,4(9)
	lhz 6,6(9)
	.loc 1 436 0
	.loc 1 435 0
	b GX_SetModScissor
	.cfi_endproc
.LFE74:
	.size	GX_SetMaxScissor, .-GX_SetMaxScissor
	.align 2
	.globl glutSwapBuffers
	.type	glutSwapBuffers, @function
glutSwapBuffers:
.LFB75:
	.loc 1 441 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI21:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 444 0
	lis 31,fb@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 441 0
	stw 0,20(1)
	stw 30,8(1)
	.loc 1 442 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl glFlush
	.loc 1 444 0
	lwz 0,fb@l(31)
	.loc 1 446 0
	li 5,1
	li 4,7
	li 3,1
	.loc 1 444 0
	xori 0,0,1
	.loc 1 449 0
	lis 30,.LANCHOR1@ha
	.loc 1 444 0
	stw 0,fb@l(31)
	.loc 1 446 0
	bl GX_SetZMode
	.loc 1 447 0
	li 3,1
	.loc 1 449 0
	la 30,.LANCHOR1@l(30)
	.loc 1 447 0
	bl GX_SetColorUpdate
	.loc 1 448 0
	li 3,1
	bl GX_SetAlphaUpdate
	.loc 1 449 0
	lwz 0,fb@l(31)
	li 4,1
	slwi 0,0,2
	lwzx 3,30,0
	bl GX_CopyDisp
	.loc 1 451 0
	bl GX_DrawDone
	.loc 1 452 0
	lis 9,incFPS@ha
	.loc 1 460 0
	lwz 11,fb@l(31)
	.loc 1 452 0
	lbz 10,incFPS@l(9)
	.loc 1 460 0
	slwi 11,11,2
	.loc 1 452 0
	addi 0,10,1
	.loc 1 460 0
	lwzx 3,30,11
	.loc 1 452 0
	rlwinm 0,0,0,0xff
	stb 0,incFPS@l(9)
	.loc 1 460 0
	bl VIDEO_SetNextFramebuffer
	.loc 1 463 0
	bl VIDEO_Flush
	.loc 1 466 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI22:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE75:
	.size	glutSwapBuffers, .-glutSwapBuffers
	.align 2
	.globl glutInitWindowSize
	.type	glutInitWindowSize, @function
glutInitWindowSize:
.LFB76:
	.loc 1 468 0
	.cfi_startproc
.LVL57:
	stwu 1,-24(1)
.LCFI23:
	.cfi_def_cfa_offset 24
	.loc 1 469 0
	lis 0,0x4330
	xoris 3,3,0x8000
.LVL58:
	xoris 4,4,0x8000
.LVL59:
	stw 3,12(1)
	lis 9,.LC13@ha
	stw 0,8(1)
	stw 4,20(1)
	stw 0,16(1)
	lfs 0,.LC13@l(9)
	lis 9,.LC9@ha
	lfd 3,8(1)
	lfd 4,16(1)
	.loc 1 470 0
	.loc 1 469 0
	fsub 3,3,0
	lfs 1,.LC9@l(9)
	fsub 4,4,0
	lis 9,.LC5@ha
	fmr 2,1
	lfs 6,.LC5@l(9)
	frsp 3,3
	.loc 1 470 0
	addi 1,1,24
.LCFI24:
	.cfi_def_cfa_offset 0
	.loc 1 469 0
	frsp 4,4
	fmr 5,1
	b GX_SetModViewport
.LVL60:
.LVL61:
	.cfi_endproc
.LFE76:
	.size	glutInitWindowSize, .-glutInitWindowSize
	.align 2
	.globl glutGet
	.type	glutGet, @function
glutGet:
.LFB77:
	.loc 1 472 0
	.cfi_startproc
.LVL62:
	.loc 1 474 0
	cmpwi 7,3,201
	.loc 1 477 0
	li 0,480
	.loc 1 474 0
	beq- 7,.L48
	cmpwi 7,3,504
	.loc 1 478 0
	li 0,18
	.loc 1 474 0
	beq- 7,.L48
	.loc 1 473 0
	xori 0,3,200
	addic 0,0,-1
	subfe 0,0,0
	andi. 0,0,640
.L48:
.LVL63:
	.loc 1 481 0
	mr 3,0
.LVL64:
	blr
	.cfi_endproc
.LFE77:
	.size	glutGet, .-glutGet
	.align 2
	.globl glutDisplayFunc
	.type	glutDisplayFunc, @function
glutDisplayFunc:
.LFB78:
	.loc 1 485 0
	.cfi_startproc
.LVL65:
	.loc 1 486 0
	lis 9,displayfunc@ha
	.loc 1 487 0
	.loc 1 486 0
	stw 3,displayfunc@l(9)
	.loc 1 487 0
	blr
	.cfi_endproc
.LFE78:
	.size	glutDisplayFunc, .-glutDisplayFunc
	.align 2
	.globl glutIdleFunc
	.type	glutIdleFunc, @function
glutIdleFunc:
.LFB79:
	.loc 1 491 0
	.cfi_startproc
.LVL66:
	.loc 1 492 0
	lis 9,idlefunc@ha
	.loc 1 493 0
	.loc 1 492 0
	stw 3,idlefunc@l(9)
	.loc 1 493 0
	blr
	.cfi_endproc
.LFE79:
	.size	glutIdleFunc, .-glutIdleFunc
	.align 2
	.globl getFPS
	.type	getFPS, @function
getFPS:
.LFB81:
	.loc 1 519 0
	.cfi_startproc
	.loc 1 520 0
	lis 9,FPS@ha
	.loc 1 521 0
	lbz 3,FPS@l(9)
	blr
	.cfi_endproc
.LFE81:
	.size	getFPS, .-getFPS
	.align 2
	.globl glutMainLoop
	.type	glutMainLoop, @function
glutMainLoop:
.LFB83:
	.loc 1 535 0
	.cfi_startproc
.LVL67:
	stwu 1,-48(1)
.LCFI25:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 31,44(1)
	.loc 1 540 0
	lis 31,watchdog@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	la 3,watchdog@l(31)
	.loc 1 535 0
	stw 0,52(1)
	.loc 1 540 0
	.cfi_offset 65, 4
	bl SYS_CreateAlarm
.LVL68:
	.loc 1 542 0
	lis 11,kill@ha
	.loc 1 550 0
	mr. 0,3
	.loc 1 542 0
	li 10,0
	.loc 1 544 0
	li 9,0
	.loc 1 542 0
	stb 10,kill@l(11)
	.loc 1 547 0
	li 11,1
	.loc 1 544 0
	stw 9,20(1)
	.loc 1 545 0
	stw 9,24(1)
	.loc 1 547 0
	stw 11,12(1)
	.loc 1 548 0
	stw 9,16(1)
	.loc 1 550 0
	bne+ 0,.L56
	.loc 1 554 0
	lis 6,timercallback@ha
	lwz 3,watchdog@l(31)
.LVL69:
	.loc 1 552 0
	lis 9,count@ha
	.loc 1 554 0
	addi 4,1,20
	addi 5,1,12
	la 6,timercallback@l(6)
	li 7,0
	.loc 1 552 0
	stb 0,count@l(9)
	.loc 1 554 0
	bl SYS_SetPeriodicAlarm
.LVL70:
.L56:
	.loc 1 559 0
	lis 4,glutThread@ha
	addi 3,1,8
	la 4,glutThread@l(4)
	li 5,0
	li 6,0
	li 7,0
	li 8,67
	lis 31,kill@ha
	bl LWP_CreateThread
	la 31,kill@l(31)
.L62:
	.loc 1 563 0
	addi 3,1,12
	bl nanosleep
	.loc 1 564 0
	lbz 0,0(31)
	cmpwi 7,0,0
	beq+ 7,.L62
	.loc 1 566 0
	bl do_reset
	b .L62
	.cfi_endproc
.LFE83:
	.size	glutMainLoop, .-glutMainLoop
	.align 2
	.globl getFrontFramebuffer
	.type	getFrontFramebuffer, @function
getFrontFramebuffer:
.LFB84:
	.loc 1 573 0
	.cfi_startproc
	.loc 1 574 0
	lis 9,fb@ha
	lwz 0,fb@l(9)
	.loc 1 575 0
	lis 9,.LANCHOR1@ha
	la 9,.LANCHOR1@l(9)
	.loc 1 574 0
	slwi 0,0,2
	.loc 1 575 0
	lwzx 3,9,0
	blr
	.cfi_endproc
.LFE84:
	.size	getFrontFramebuffer, .-getFrontFramebuffer
	.align 2
	.globl getBackFramebuffer
	.type	getBackFramebuffer, @function
getBackFramebuffer:
.LFB85:
	.loc 1 578 0
	.cfi_startproc
	.loc 1 579 0
	lis 9,fb@ha
	lwz 0,fb@l(9)
	.loc 1 580 0
	lis 9,.LANCHOR1@ha
	la 9,.LANCHOR1@l(9)
	.loc 1 579 0
	xori 0,0,1
	slwi 0,0,2
	.loc 1 580 0
	lwzx 3,9,0
	blr
	.cfi_endproc
.LFE85:
	.size	getBackFramebuffer, .-getBackFramebuffer
	.align 2
	.globl power_off
	.type	power_off, @function
power_off:
.LFB86:
	.loc 1 583 0
	.cfi_startproc
.LVL71:
	.loc 1 584 0
	li 0,1
	lis 9,kill@ha
	stb 0,kill@l(9)
	.loc 1 585 0
	blr
	.cfi_endproc
.LFE86:
	.size	power_off, .-power_off
	.comm	kill,1,1
	.comm	count,1,1
	.globl idlefunc
	.globl displayfunc
	.globl incFPS
	.globl FPS
	.globl offset
	.globl _console_inited
	.globl _console_enabled
	.globl fb
	.comm	watchdog,4,4
	.comm	rmode,4,4
	.globl __glutProgramName
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
.LC0:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
.LC1:
	.long	1045220557
	.long	1045220557
	.long	1045220557
	.long	1065353216
.LC2:
	.long	1061997773
	.long	1061997773
	.long	1061997773
	.long	1065353216
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC5:
	.4byte	1065353216
.LC6:
	.4byte	1127481344
.LC7:
	.4byte	-1082130432
.LC8:
	.4byte	1085370904
.LC9:
	.4byte	0
.LC11:
	.4byte	1501560832
.LC13:
	.4byte	1501560836
.LC17:
	.4byte	1325400064
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC14:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC3:
	.string	"%d\n"
.LC4:
	.string	"test"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	idlefunc, @object
	.size	idlefunc, 4
idlefunc:
	.zero	4
	.type	displayfunc, @object
	.size	displayfunc, 4
displayfunc:
	.zero	4
	.type	incFPS, @object
	.size	incFPS, 1
incFPS:
	.zero	1
	.type	FPS, @object
	.size	FPS, 1
FPS:
	.zero	1
	.zero	2
	.type	offset, @object
	.size	offset, 4
offset:
	.zero	4
	.type	_console_inited, @object
	.size	_console_inited, 1
_console_inited:
	.zero	1
	.type	_console_enabled, @object
	.size	_console_enabled, 1
_console_enabled:
	.zero	1
	.zero	2
	.type	fb, @object
	.size	fb, 4
fb:
	.zero	4
	.type	__glutProgramName, @object
	.size	__glutProgramName, 4
__glutProgramName:
	.zero	4
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	frameBuffer, @object
	.size	frameBuffer, 8
frameBuffer:
	.zero	8
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/types.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 5 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gx_struct.h"
	.file 7 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 8 "c:/utils/devkitPro/libogc/include/ogc/lwp.h"
	.file 9 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 10 "c:/utils/devkitPro/libogc/include/ogc/system.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/glint.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x142b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF238
	.byte	0x1
	.4byte	.LASF239
	.4byte	.LASF240
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF10
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
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x71
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x8
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x6e
	.4byte	0x91
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.4byte	0xcc
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x3
	.byte	0x74
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x3
	.byte	0x75
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2a
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x36
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4f
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0x50
	.4byte	0x30
	.uleb128 0xb
	.string	"u8"
	.byte	0x5
	.byte	0x11
	.4byte	0xe1
	.uleb128 0xb
	.string	"u16"
	.byte	0x5
	.byte	0x12
	.4byte	0xec
	.uleb128 0xb
	.string	"u32"
	.byte	0x5
	.byte	0x13
	.4byte	0x102
	.uleb128 0xb
	.string	"s32"
	.byte	0x5
	.byte	0x18
	.4byte	0xf7
	.uleb128 0xb
	.string	"f32"
	.byte	0x5
	.byte	0x2b
	.4byte	0xd3
	.uleb128 0xc
	.4byte	0xd3
	.uleb128 0x7
	.byte	0x4
	.4byte	0x79
	.uleb128 0xc
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x3c
	.byte	0x6
	.byte	0x3a
	.4byte	0x21c
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x6
	.byte	0x3b
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x6
	.byte	0x3c
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x6
	.byte	0x3d
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3e
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3f
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x6
	.byte	0x40
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x6
	.byte	0x41
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x6
	.byte	0x42
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0x43
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0x44
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"aa"
	.byte	0x6
	.byte	0x45
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0x46
	.4byte	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0x47
	.4byte	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0xe
	.4byte	0x10d
	.4byte	0x232
	.uleb128 0xf
	.4byte	0x30
	.byte	0xb
	.uleb128 0xf
	.4byte	0x30
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	0x10d
	.4byte	0x242
	.uleb128 0xf
	.4byte	0x30
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x6
	.byte	0x48
	.4byte	0x15a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x253
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xc
	.byte	0x7
	.byte	0x5e
	.4byte	0x285
	.uleb128 0xd
	.string	"x"
	.byte	0x7
	.byte	0x5f
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"y"
	.byte	0x7
	.byte	0x5f
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"z"
	.byte	0x7
	.byte	0x5f
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x7
	.byte	0x60
	.4byte	0x254
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x8
	.byte	0x3e
	.4byte	0x122
	.uleb128 0x11
	.4byte	.LASF241
	.byte	0x4
	.byte	0x9
	.2byte	0x490
	.4byte	0x2fb
	.uleb128 0x12
	.string	"U8"
	.byte	0x9
	.2byte	0x492
	.4byte	0x2fb
	.uleb128 0x12
	.string	"S8"
	.byte	0x9
	.2byte	0x493
	.4byte	0x300
	.uleb128 0x12
	.string	"U16"
	.byte	0x9
	.2byte	0x494
	.4byte	0x305
	.uleb128 0x12
	.string	"S16"
	.byte	0x9
	.2byte	0x495
	.4byte	0x30a
	.uleb128 0x12
	.string	"U32"
	.byte	0x9
	.2byte	0x496
	.4byte	0x14e
	.uleb128 0x12
	.string	"S32"
	.byte	0x9
	.2byte	0x497
	.4byte	0x30f
	.uleb128 0x12
	.string	"F32"
	.byte	0x9
	.2byte	0x498
	.4byte	0x143
	.byte	0
	.uleb128 0xc
	.4byte	0x37
	.uleb128 0xc
	.4byte	0x47
	.uleb128 0xc
	.4byte	0x3e
	.uleb128 0xc
	.4byte	0x4e
	.uleb128 0xc
	.4byte	0x55
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x9
	.2byte	0x499
	.4byte	0x29b
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x4
	.byte	0x9
	.2byte	0x49e
	.4byte	0x362
	.uleb128 0x15
	.string	"r"
	.byte	0x9
	.2byte	0x49f
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"g"
	.byte	0x9
	.2byte	0x4a0
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.string	"b"
	.byte	0x9
	.2byte	0x4a1
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.string	"a"
	.byte	0x9
	.2byte	0x4a2
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x9
	.2byte	0x4a3
	.4byte	0x320
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x40
	.byte	0x9
	.2byte	0x4f1
	.4byte	0x38b
	.uleb128 0x15
	.string	"val"
	.byte	0x9
	.2byte	0x4f2
	.4byte	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	0x122
	.4byte	0x39b
	.uleb128 0xf
	.4byte	0x30
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x9
	.2byte	0x4f3
	.4byte	0x36e
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xa
	.byte	0x8a
	.4byte	0x122
	.uleb128 0x7
	.byte	0x4
	.4byte	0x122
	.uleb128 0x7
	.byte	0x4
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xb
	.byte	0x93
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xb
	.byte	0x94
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xb
	.byte	0x99
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xb
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xb
	.byte	0x9d
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xb
	.byte	0x9f
	.4byte	0xd3
	.uleb128 0x16
	.byte	0x10
	.byte	0xc
	.byte	0x15
	.4byte	0x421
	.uleb128 0xd
	.string	"v"
	.byte	0xc
	.byte	0x17
	.4byte	0x285
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"w"
	.byte	0xc
	.byte	0x18
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xc
	.byte	0x19
	.4byte	0x400
	.uleb128 0x16
	.byte	0x8
	.byte	0xc
	.byte	0x1b
	.4byte	0x44d
	.uleb128 0xd
	.string	"s"
	.byte	0xc
	.byte	0x1d
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"t"
	.byte	0xc
	.byte	0x1e
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xc
	.byte	0x1f
	.4byte	0x42c
	.uleb128 0x16
	.byte	0x10
	.byte	0xc
	.byte	0x21
	.4byte	0x491
	.uleb128 0xd
	.string	"r"
	.byte	0xc
	.byte	0x23
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"g"
	.byte	0xc
	.byte	0x24
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"b"
	.byte	0xc
	.byte	0x25
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"a"
	.byte	0xc
	.byte	0x26
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xc
	.byte	0x27
	.4byte	0x458
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x14
	.byte	0xc
	.byte	0x42
	.4byte	0x4ed
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0xc
	.byte	0x44
	.4byte	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"p"
	.byte	0xc
	.byte	0x45
	.4byte	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0xc
	.byte	0x46
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0xc
	.byte	0x47
	.4byte	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0xc
	.byte	0x48
	.4byte	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xc
	.byte	0x49
	.4byte	0x49c
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x10
	.byte	0xd
	.byte	0xc
	.4byte	0x53d
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0xd
	.byte	0xe
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0xd
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0xd
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"cur"
	.byte	0xd
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0xd
	.byte	0x12
	.4byte	0x4f8
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xa4
	.byte	0xc
	.byte	0x83
	.4byte	0x603
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xc
	.byte	0x85
	.4byte	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"obj"
	.byte	0xc
	.byte	0x87
	.4byte	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"pos"
	.byte	0xc
	.byte	0x89
	.4byte	0x421
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xc
	.byte	0x8b
	.4byte	0x285
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xc
	.byte	0x8d
	.4byte	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0xc
	.byte	0x8e
	.4byte	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xc
	.byte	0x8f
	.4byte	0x491
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xc
	.byte	0x91
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0xc
	.byte	0x92
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xc
	.byte	0x93
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xc
	.byte	0x94
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0xc
	.byte	0x95
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0xc
	.byte	0x96
	.4byte	0x548
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x44
	.byte	0xc
	.byte	0xa0
	.4byte	0x661
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xc
	.byte	0xa2
	.4byte	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xc
	.byte	0xa3
	.4byte	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0xc
	.byte	0xa4
	.4byte	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xc
	.byte	0xa5
	.4byte	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0xc
	.byte	0xa6
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xc
	.byte	0xa7
	.4byte	0x60e
	.uleb128 0x17
	.4byte	.LASF242
	.byte	0x4
	.byte	0xc
	.byte	0xbf
	.4byte	0x68b
	.uleb128 0x18
	.4byte	.LASF81
	.sleb128 0
	.uleb128 0x18
	.4byte	.LASF82
	.sleb128 1
	.uleb128 0x18
	.4byte	.LASF83
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xc
	.byte	0xc4
	.4byte	0x66c
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x10
	.byte	0xc
	.byte	0xe8
	.4byte	0x6d7
	.uleb128 0xd
	.string	"x"
	.byte	0xc
	.byte	0xea
	.4byte	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"y"
	.byte	0xc
	.byte	0xeb
	.4byte	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0xc
	.byte	0xec
	.4byte	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xc
	.byte	0xed
	.4byte	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xc
	.byte	0xee
	.4byte	0x696
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x14
	.byte	0xc
	.byte	0xfb
	.4byte	0x746
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0xc
	.byte	0xfd
	.4byte	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0xc
	.byte	0xfe
	.4byte	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0xc
	.byte	0xff
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0xc
	.2byte	0x100
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0xc
	.2byte	0x101
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0xc
	.2byte	0x102
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0xc
	.2byte	0x103
	.4byte	0x6e2
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x8
	.byte	0xc
	.2byte	0x117
	.4byte	0x77e
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0xc
	.2byte	0x119
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0xc
	.2byte	0x11a
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0xc
	.2byte	0x11b
	.4byte	0x752
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x6c
	.byte	0xc
	.2byte	0x127
	.4byte	0x8e2
	.uleb128 0x19
	.4byte	.LASF66
	.byte	0xc
	.2byte	0x129
	.4byte	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0xc
	.2byte	0x12b
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0xc
	.2byte	0x12c
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0xc
	.2byte	0x12d
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0xc
	.2byte	0x12e
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0xc
	.2byte	0x12f
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0xc
	.2byte	0x130
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0xc
	.2byte	0x131
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0xc
	.2byte	0x132
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0xc
	.2byte	0x133
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0xc
	.2byte	0x134
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0xc
	.2byte	0x136
	.4byte	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0xc
	.2byte	0x138
	.4byte	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0xc
	.2byte	0x139
	.4byte	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0xc
	.2byte	0x13b
	.4byte	0x8e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0xc
	.2byte	0x13c
	.4byte	0x8e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0xc
	.2byte	0x13d
	.4byte	0x8e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0xc
	.2byte	0x13e
	.4byte	0x8e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.string	"tex"
	.byte	0xc
	.2byte	0x140
	.4byte	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x19
	.4byte	.LASF118
	.byte	0xc
	.2byte	0x142
	.4byte	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x19
	.4byte	.LASF119
	.byte	0xc
	.2byte	0x144
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0xc
	.2byte	0x145
	.4byte	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0
	.uleb128 0xe
	.4byte	0x3be
	.4byte	0x8f2
	.uleb128 0xf
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0xc
	.2byte	0x146
	.4byte	0x78a
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF243
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x19e
	.4byte	0xd3
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x20b
	.byte	0x1
	.4byte	0x45
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST0
	.4byte	0x942
	.uleb128 0x1d
	.string	"a"
	.byte	0x1
	.2byte	0x20b
	.4byte	0x45
	.4byte	.LLST1
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1f4
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST2
	.4byte	0x97c
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x3a7
	.4byte	.LLST3
	.uleb128 0x1d
	.string	"cb"
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x45
	.4byte	.LLST4
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST5
	.4byte	0x9b4
	.uleb128 0x21
	.4byte	.LASF125
	.byte	0x1
	.byte	0x43
	.4byte	0x3b8
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LASF126
	.byte	0x1
	.byte	0x43
	.4byte	0x148
	.4byte	.LLST7
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST8
	.4byte	0x9db
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.4byte	0x55
	.4byte	.LLST9
	.byte	0
	.uleb128 0x23
	.4byte	0x8fe
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF142
	.byte	0x1
	.byte	0xfd
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x104
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa30
	.uleb128 0x26
	.string	"w"
	.byte	0x1
	.2byte	0x104
	.4byte	0x3b2
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.string	"h"
	.byte	0x1
	.2byte	0x104
	.4byte	0x3b2
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x10a
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST10
	.4byte	0xaa3
	.uleb128 0x1f
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x10a
	.4byte	0x30
	.4byte	.LLST11
	.uleb128 0x27
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x12f
	.4byte	0x138
	.uleb128 0x28
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x131
	.4byte	0x122
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x134
	.4byte	0x45
	.4byte	.LLST13
	.uleb128 0x29
	.string	"c"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x362
	.4byte	.LLST14
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.2byte	0x16d
	.4byte	0x55
	.4byte	.LLST15
	.byte	0
	.uleb128 0x2a
	.4byte	0x907
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST16
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x1a3
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST17
	.4byte	0xb4a
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x138
	.4byte	.LLST18
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x138
	.4byte	.LLST19
	.uleb128 0x1d
	.string	"wd"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x138
	.4byte	.LLST20
	.uleb128 0x1d
	.string	"ht"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x138
	.4byte	.LLST21
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x138
	.4byte	.LLST22
	.uleb128 0x1f
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x138
	.4byte	.LLST23
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xd3
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x2c
	.4byte	0x907
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x1a5
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x193
	.byte	0x1
	.4byte	0x55
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST24
	.4byte	0xb79
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x193
	.4byte	0x86
	.4byte	.LLST25
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1aa
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST26
	.4byte	0xbef
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x122
	.4byte	.LLST27
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x122
	.4byte	.LLST28
	.uleb128 0x1d
	.string	"wd"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x122
	.4byte	.LLST29
	.uleb128 0x1d
	.string	"ht"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x122
	.4byte	.LLST30
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xd3
	.byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.uleb128 0x2c
	.4byte	0x907
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0x1ac
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1b1
	.4byte	.LFB74
	.4byte	.LFE74
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1b9
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST31
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x1d4
	.byte	0x1
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST32
	.4byte	0xc54
	.uleb128 0x1f
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x55
	.4byte	.LLST33
	.uleb128 0x1f
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x55
	.4byte	.LLST34
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1d8
	.byte	0x1
	.4byte	0x55
	.4byte	.LFB77
	.4byte	.LFE77
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xc92
	.uleb128 0x1f
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x3be
	.4byte	.LLST35
	.uleb128 0x28
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x55
	.4byte	.LLST36
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1e5
	.byte	0x1
	.4byte	.LFB78
	.4byte	.LFE78
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xcba
	.uleb128 0x30
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x73
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x1eb
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xce2
	.uleb128 0x30
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x73
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x206
	.4byte	0x37
	.4byte	.LFB81
	.4byte	.LFE81
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x217
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LLST37
	.4byte	0xd52
	.uleb128 0x32
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x218
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x219
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x21a
	.4byte	0x55
	.4byte	.LLST38
	.uleb128 0x32
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x22d
	.4byte	0x290
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x23c
	.4byte	0x45
	.4byte	.LFB84
	.4byte	.LFE84
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x241
	.4byte	0x45
	.4byte	.LFB85
	.4byte	.LFE85
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x246
	.byte	0x1
	.4byte	.LFB86
	.4byte	.LFE86
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xdaa
	.uleb128 0x30
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x246
	.4byte	0x12d
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0xe
	.4byte	0x45
	.4byte	0xdba
	.uleb128 0xf
	.4byte	0x30
	.byte	0x1
	.byte	0
	.uleb128 0x33
	.4byte	.LASF161
	.byte	0x1
	.byte	0x14
	.4byte	0xdaa
	.byte	0x5
	.byte	0x3
	.4byte	frameBuffer
	.uleb128 0x34
	.4byte	.LASF162
	.byte	0x9
	.2byte	0x548
	.4byte	0xdd9
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	0xdde
	.uleb128 0x7
	.byte	0x4
	.4byte	0x314
	.uleb128 0x35
	.4byte	.LASF163
	.byte	0xc
	.byte	0x3d
	.4byte	0x491
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x35
	.4byte	.LASF164
	.byte	0xc
	.byte	0x3e
	.4byte	0x285
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xe
	.4byte	0x44d
	.4byte	0xe18
	.uleb128 0xf
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x35
	.4byte	.LASF165
	.byte	0xc
	.byte	0x3f
	.4byte	0xe08
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x35
	.4byte	.LASF166
	.byte	0xc
	.byte	0x4b
	.4byte	0x4ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x35
	.4byte	.LASF167
	.byte	0xc
	.byte	0x4c
	.4byte	0x4ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xe
	.4byte	0x4ed
	.4byte	0xe5e
	.uleb128 0xf
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x36
	.string	"tex"
	.byte	0xc
	.byte	0x4d
	.4byte	0xe4e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x35
	.4byte	.LASF118
	.byte	0xc
	.byte	0x4e
	.4byte	0x4ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xe
	.4byte	0x285
	.4byte	0xe93
	.uleb128 0x37
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x35
	.4byte	.LASF168
	.byte	0xc
	.byte	0x50
	.4byte	0xe82
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x35
	.4byte	.LASF169
	.byte	0xc
	.byte	0x51
	.4byte	0xe82
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xe
	.4byte	0x44d
	.4byte	0xece
	.uleb128 0xf
	.4byte	0x30
	.byte	0x7
	.uleb128 0x37
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x35
	.4byte	.LASF170
	.byte	0xc
	.byte	0x52
	.4byte	0xeb7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xe
	.4byte	0x491
	.4byte	0xef1
	.uleb128 0x37
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x35
	.4byte	.LASF171
	.byte	0xc
	.byte	0x53
	.4byte	0xee0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x35
	.4byte	.LASF172
	.byte	0xc
	.byte	0x5d
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x35
	.4byte	.LASF173
	.byte	0xc
	.byte	0x5e
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x35
	.4byte	.LASF174
	.byte	0xc
	.byte	0x5f
	.4byte	0x3be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x35
	.4byte	.LASF175
	.byte	0xc
	.byte	0x61
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x35
	.4byte	.LASF176
	.byte	0xc
	.byte	0x62
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x38
	.4byte	.LASF177
	.byte	0xc
	.byte	0x66
	.4byte	0x3be
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.4byte	.LASF178
	.byte	0xc
	.byte	0x67
	.4byte	0x3f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.4byte	.LASF179
	.byte	0xc
	.byte	0x68
	.4byte	0x153
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.4byte	.LASF180
	.byte	0xc
	.byte	0x69
	.4byte	0x153
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.4byte	.LASF181
	.byte	0xc
	.byte	0x6b
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x35
	.4byte	.LASF182
	.byte	0xc
	.byte	0x6c
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x35
	.4byte	.LASF183
	.byte	0xc
	.byte	0x6d
	.4byte	0x3be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x35
	.4byte	.LASF184
	.byte	0xc
	.byte	0x6e
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x35
	.4byte	.LASF185
	.byte	0xc
	.byte	0x7a
	.4byte	0x53d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x35
	.4byte	.LASF186
	.byte	0xc
	.byte	0x7b
	.4byte	0x53d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xe
	.4byte	0x53d
	.4byte	0x100d
	.uleb128 0xf
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x35
	.4byte	.LASF187
	.byte	0xc
	.byte	0x7c
	.4byte	0xffd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x35
	.4byte	.LASF188
	.byte	0xc
	.byte	0x7d
	.4byte	0x1031
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x7
	.byte	0x4
	.4byte	0x53d
	.uleb128 0x35
	.4byte	.LASF189
	.byte	0xc
	.byte	0x7e
	.4byte	0x3be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xe
	.4byte	0x603
	.4byte	0x1059
	.uleb128 0xf
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x35
	.4byte	.LASF190
	.byte	0xc
	.byte	0x99
	.4byte	0x1049
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x35
	.4byte	.LASF191
	.byte	0xc
	.byte	0x9c
	.4byte	0x491
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x35
	.4byte	.LASF192
	.byte	0xc
	.byte	0xa9
	.4byte	0x661
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x35
	.4byte	.LASF193
	.byte	0xc
	.byte	0xac
	.4byte	0x153
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x35
	.4byte	.LASF194
	.byte	0xc
	.byte	0xad
	.4byte	0x3be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x35
	.4byte	.LASF195
	.byte	0xc
	.byte	0xb1
	.4byte	0x153
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x35
	.4byte	.LASF196
	.byte	0xc
	.byte	0xb8
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x35
	.4byte	.LASF197
	.byte	0xc
	.byte	0xb9
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x35
	.4byte	.LASF198
	.byte	0xc
	.byte	0xba
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x35
	.4byte	.LASF199
	.byte	0xc
	.byte	0xbb
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x35
	.4byte	.LASF200
	.byte	0xc
	.byte	0xbd
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x35
	.4byte	.LASF201
	.byte	0xc
	.byte	0xc6
	.4byte	0x68b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x35
	.4byte	.LASF202
	.byte	0xc
	.byte	0xf0
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x35
	.4byte	.LASF203
	.byte	0xc
	.byte	0xf1
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x35
	.4byte	.LASF204
	.byte	0xc
	.byte	0xf2
	.4byte	0x3c9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x35
	.4byte	.LASF205
	.byte	0xc
	.byte	0xf3
	.4byte	0x6d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x35
	.4byte	.LASF206
	.byte	0xc
	.byte	0xf4
	.4byte	0x6d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x35
	.4byte	.LASF207
	.byte	0xc
	.byte	0xf5
	.4byte	0x138
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x35
	.4byte	.LASF208
	.byte	0xc
	.byte	0xf6
	.4byte	0x138
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x35
	.4byte	.LASF209
	.byte	0xc
	.byte	0xf8
	.4byte	0x138
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x35
	.4byte	.LASF210
	.byte	0xc
	.byte	0xf9
	.4byte	0x138
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x39
	.4byte	.LASF211
	.byte	0xc
	.2byte	0x105
	.4byte	0x746
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x39
	.4byte	.LASF212
	.byte	0xc
	.2byte	0x106
	.4byte	0x746
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xe
	.4byte	0x153
	.4byte	0x1209
	.uleb128 0xf
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x39
	.4byte	.LASF213
	.byte	0xc
	.2byte	0x107
	.4byte	0x11f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x39
	.4byte	.LASF214
	.byte	0xc
	.2byte	0x10d
	.4byte	0x153
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x39
	.4byte	.LASF215
	.byte	0xc
	.2byte	0x10e
	.4byte	0x3be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x39
	.4byte	.LASF216
	.byte	0xc
	.2byte	0x111
	.4byte	0x362
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xe
	.4byte	0x77e
	.4byte	0x1265
	.uleb128 0xf
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x39
	.4byte	.LASF217
	.byte	0xc
	.2byte	0x125
	.4byte	0x1255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x39
	.4byte	.LASF218
	.byte	0xc
	.2byte	0x14a
	.4byte	0x153
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x39
	.4byte	.LASF219
	.byte	0xc
	.2byte	0x14b
	.4byte	0x10d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x39
	.4byte	.LASF220
	.byte	0xc
	.2byte	0x14c
	.4byte	0x138
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x39
	.4byte	.LASF221
	.byte	0xc
	.2byte	0x14d
	.4byte	0x138
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x39
	.4byte	.LASF222
	.byte	0xc
	.2byte	0x14e
	.4byte	0x138
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x39
	.4byte	.LASF223
	.byte	0xc
	.2byte	0x14f
	.4byte	0x362
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xe
	.4byte	0x8f2
	.4byte	0x12fa
	.uleb128 0xf
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x39
	.4byte	.LASF224
	.byte	0xc
	.2byte	0x151
	.4byte	0x12ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x39
	.4byte	.LASF225
	.byte	0xc
	.2byte	0x156
	.4byte	0x3be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x39
	.4byte	.LASF226
	.byte	0xc
	.2byte	0x159
	.4byte	0x3df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x35
	.4byte	.LASF227
	.byte	0x1
	.byte	0x13
	.4byte	0x79
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__glutProgramName
	.uleb128 0x35
	.4byte	.LASF228
	.byte	0x1
	.byte	0x15
	.4byte	0x1357
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rmode
	.uleb128 0x7
	.byte	0x4
	.4byte	0x242
	.uleb128 0x35
	.4byte	.LASF229
	.byte	0x1
	.byte	0x16
	.4byte	0x3a7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	watchdog
	.uleb128 0x36
	.string	"fb"
	.byte	0x1
	.byte	0x18
	.4byte	0x122
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb
	.uleb128 0x35
	.4byte	.LASF230
	.byte	0x1
	.byte	0xf3
	.4byte	0x153
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_console_enabled
	.uleb128 0x35
	.4byte	.LASF231
	.byte	0x1
	.byte	0xf4
	.4byte	0x153
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_console_inited
	.uleb128 0x39
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x19c
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	offset
	.uleb128 0x3a
	.string	"FPS"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x13ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	FPS
	.uleb128 0xc
	.4byte	0x7f
	.uleb128 0x39
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x13ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	incFPS
	.uleb128 0x39
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	displayfunc
	.uleb128 0x39
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	idlefunc
	.uleb128 0x39
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x2fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	count
	.uleb128 0x39
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x2fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	kill
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
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
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0xa
	.byte	0
	.byte	0
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x2d
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.4byte	.LFB82-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB80-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB65-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28-1-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB70-.Ltext0
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
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI18-.Ltext0
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
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL53-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL53-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-1-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LFB75-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LFB76-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL61-1-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-1-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LFB83-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x29
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
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF129:
	.string	"glutInitDisplayMode"
.LASF154:
	.string	"interval"
.LASF64:
	.string	"Stack"
.LASF8:
	.string	"char"
.LASF177:
	.string	"_alphatest_func"
.LASF48:
	.string	"GLint"
.LASF85:
	.string	"boxInfo"
.LASF196:
	.string	"blend_type"
.LASF191:
	.string	"globAmbient"
.LASF187:
	.string	"texture_stack"
.LASF137:
	.string	"glutCreateWindow"
.LASF180:
	.string	"_alphatest_dirty"
.LASF201:
	.string	"cur_state"
.LASF202:
	.string	"fb_max_height"
.LASF168:
	.string	"_normalelements"
.LASF77:
	.string	"_mat"
.LASF227:
	.string	"__glutProgramName"
.LASF70:
	.string	"specular"
.LASF235:
	.string	"idlefunc"
.LASF147:
	.string	"glutDisplayFunc"
.LASF128:
	.string	"getVImode"
.LASF170:
	.string	"_texcoordelements"
.LASF161:
	.string	"frameBuffer"
.LASF96:
	.string	"_trans"
.LASF72:
	.string	"spotCutoff"
.LASF100:
	.string	"_tex_env"
.LASF148:
	.string	"func"
.LASF192:
	.string	"curmat"
.LASF237:
	.string	"kill"
.LASF111:
	.string	"mode"
.LASF216:
	.string	"_clearcolor"
.LASF106:
	.string	"maxlod"
.LASF81:
	.string	"GL_STATE_NONE"
.LASF32:
	.string	"xfbMode"
.LASF43:
	.string	"_gx_litobj"
.LASF79:
	.string	"shininess"
.LASF189:
	.string	"cur_mode"
.LASF169:
	.string	"_vertexelements"
.LASF54:
	.string	"GXColorf"
.LASF115:
	.string	"CargOp"
.LASF184:
	.string	"_cleardepth"
.LASF69:
	.string	"diffuse"
.LASF164:
	.string	"_tempnormalelement"
.LASF138:
	.string	"title"
.LASF176:
	.string	"cur_tex_client"
.LASF167:
	.string	"vert"
.LASF20:
	.string	"uint32_t"
.LASF219:
	.string	"fog_mode"
.LASF239:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut.c"
.LASF29:
	.string	"viYOrigin"
.LASF221:
	.string	"fog_endz"
.LASF173:
	.string	"_type"
.LASF15:
	.string	"float"
.LASF101:
	.string	"min_filter"
.LASF234:
	.string	"displayfunc"
.LASF236:
	.string	"count"
.LASF98:
	.string	"bias"
.LASF42:
	.string	"GXColor"
.LASF209:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF217:
	.string	"Trans"
.LASF124:
	.string	"glutInit"
.LASF211:
	.string	"pack"
.LASF78:
	.string	"emissive"
.LASF206:
	.string	"viewPort"
.LASF131:
	.string	"GX_SetModViewport"
.LASF185:
	.string	"model_stack"
.LASF213:
	.string	"color_write_mask"
.LASF114:
	.string	"Carg"
.LASF56:
	.string	"enable"
.LASF224:
	.string	"glTexEnvs"
.LASF22:
	.string	"timespec"
.LASF179:
	.string	"_alphatest_enabled"
.LASF223:
	.string	"fog_color"
.LASF13:
	.string	"tv_nsec"
.LASF10:
	.string	"size_t"
.LASF155:
	.string	"watchdog_conf"
.LASF86:
	.string	"width"
.LASF232:
	.string	"offset"
.LASF214:
	.string	"copy_mat_enabled"
.LASF25:
	.string	"fbWidth"
.LASF175:
	.string	"cur_tex"
.LASF14:
	.string	"double"
.LASF241:
	.string	"_wgpipe"
.LASF113:
	.string	"comAlpha"
.LASF21:
	.string	"_Bool"
.LASF204:
	.string	"scissor_test"
.LASF119:
	.string	"rgb_scale"
.LASF62:
	.string	"begin"
.LASF210:
	.string	"point_size"
.LASF150:
	.string	"glutSwapBuffers"
.LASF145:
	.string	"glutGet"
.LASF125:
	.string	"argcp"
.LASF215:
	.string	"copy_material"
.LASF83:
	.string	"GL_STATE_NEWLIST"
.LASF188:
	.string	"curmtx"
.LASF40:
	.string	"WGPipe"
.LASF68:
	.string	"ambient"
.LASF205:
	.string	"scissorInfo"
.LASF160:
	.string	"chan"
.LASF194:
	.string	"gxwinding"
.LASF149:
	.string	"glutIdleFunc"
.LASF44:
	.string	"GXLightObj"
.LASF245:
	.string	"yscale"
.LASF99:
	.string	"ColorTrans"
.LASF144:
	.string	"glutInitWindowSize"
.LASF197:
	.string	"blend_src"
.LASF80:
	.string	"Material"
.LASF183:
	.string	"depthfunction"
.LASF121:
	.string	"glTexEnvSet"
.LASF17:
	.string	"uint8_t"
.LASF45:
	.string	"syswd_t"
.LASF133:
	.string	"yOrig"
.LASF11:
	.string	"time_t"
.LASF186:
	.string	"projection_stack"
.LASF171:
	.string	"_colorelements"
.LASF146:
	.string	"retval"
.LASF89:
	.string	"swap"
.LASF38:
	.string	"guVector"
.LASF26:
	.string	"efbHeight"
.LASF5:
	.string	"long long int"
.LASF60:
	.string	"VertexArray"
.LASF208:
	.string	"normFar"
.LASF49:
	.string	"GLuint"
.LASF141:
	.string	"yOrigin"
.LASF225:
	.string	"read_mode"
.LASF63:
	.string	"elem_size"
.LASF30:
	.string	"viWidth"
.LASF84:
	.string	"glState"
.LASF73:
	.string	"constant"
.LASF122:
	.string	"alarm"
.LASF218:
	.string	"fog_enable"
.LASF34:
	.string	"sample_pattern"
.LASF35:
	.string	"vfilter"
.LASF229:
	.string	"watchdog"
.LASF52:
	.string	"VertexElement"
.LASF231:
	.string	"_console_inited"
.LASF108:
	.string	"biasclamp"
.LASF91:
	.string	"row_length"
.LASF51:
	.string	"GLclampf"
.LASF182:
	.string	"depthupdate"
.LASF142:
	.string	"HideConsole"
.LASF58:
	.string	"size"
.LASF76:
	.string	"LightObj"
.LASF31:
	.string	"viHeight"
.LASF103:
	.string	"wrap_s"
.LASF104:
	.string	"wrap_t"
.LASF74:
	.string	"linear"
.LASF37:
	.string	"_vecf"
.LASF198:
	.string	"blend_dst"
.LASF87:
	.string	"height"
.LASF165:
	.string	"_temptexcoordelement"
.LASF230:
	.string	"_console_enabled"
.LASF28:
	.string	"viXOrigin"
.LASF126:
	.string	"argv"
.LASF36:
	.string	"GXRModeObj"
.LASF16:
	.string	"long double"
.LASF18:
	.string	"uint16_t"
.LASF139:
	.string	"GX_SetModScissor"
.LASF123:
	.string	"timercallback"
.LASF158:
	.string	"getBackFramebuffer"
.LASF212:
	.string	"unpack"
.LASF159:
	.string	"power_off"
.LASF67:
	.string	"spotDir"
.LASF55:
	.string	"_array"
.LASF71:
	.string	"spotExponent"
.LASF75:
	.string	"quad_t"
.LASF107:
	.string	"lodbias"
.LASF190:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF105:
	.string	"minlod"
.LASF102:
	.string	"max_filter"
.LASF9:
	.string	"long int"
.LASF23:
	.string	"_gx_rmodeobj"
.LASF228:
	.string	"rmode"
.LASF151:
	.string	"getFPS"
.LASF136:
	.string	"glutThread"
.LASF46:
	.string	"GLenum"
.LASF65:
	.string	"_light"
.LASF118:
	.string	"color"
.LASF157:
	.string	"getFrontFramebuffer"
.LASF50:
	.string	"GLsizei"
.LASF226:
	.string	"call_offset"
.LASF163:
	.string	"_tempcolorelement"
.LASF39:
	.string	"lwp_t"
.LASF93:
	.string	"skip_pixels"
.LASF116:
	.string	"Aarg"
.LASF110:
	.string	"maxaniso"
.LASF153:
	.string	"start"
.LASF0:
	.string	"unsigned int"
.LASF222:
	.string	"fog_density"
.LASF57:
	.string	"stride"
.LASF195:
	.string	"lighting"
.LASF12:
	.string	"tv_sec"
.LASF7:
	.string	"long unsigned int"
.LASF156:
	.string	"draw_thread"
.LASF199:
	.string	"blend_op"
.LASF135:
	.string	"farZ"
.LASF19:
	.string	"int32_t"
.LASF95:
	.string	"pixelStore"
.LASF240:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF132:
	.string	"xOrig"
.LASF82:
	.string	"GL_STATE_BEGIN"
.LASF238:
	.string	"GNU C 4.6.3"
.LASF59:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF66:
	.string	"enabled"
.LASF92:
	.string	"skip_rows"
.LASF172:
	.string	"vert_i"
.LASF90:
	.string	"lsb_first"
.LASF120:
	.string	"alpha_scale"
.LASF220:
	.string	"fog_startz"
.LASF112:
	.string	"comRGB"
.LASF203:
	.string	"fb_max_width"
.LASF97:
	.string	"scale"
.LASF207:
	.string	"normNear"
.LASF174:
	.string	"_GLtype"
.LASF181:
	.string	"depthtestenabled"
.LASF24:
	.string	"viTVMode"
.LASF41:
	.string	"_gx_color"
.LASF109:
	.string	"edgelod"
.LASF193:
	.string	"gxcullfaceanabled"
.LASF61:
	.string	"_stack"
.LASF143:
	.string	"GX_SetMaxScissor"
.LASF3:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF166:
	.string	"norm"
.LASF162:
	.string	"wgPipe"
.LASF134:
	.string	"nearZ"
.LASF233:
	.string	"incFPS"
.LASF152:
	.string	"glutMainLoop"
.LASF33:
	.string	"field_rendering"
.LASF140:
	.string	"xOrigin"
.LASF27:
	.string	"xfbHeight"
.LASF94:
	.string	"alignment"
.LASF53:
	.string	"TexCoordElement"
.LASF178:
	.string	"_alphatest_ref"
.LASF47:
	.string	"GLboolean"
.LASF130:
	.string	"gp_fifo"
.LASF243:
	.string	"ShowConsole"
.LASF242:
	.string	"_glState"
.LASF88:
	.string	"_pixelStore"
.LASF244:
	.string	"computeFactor"
.LASF200:
	.string	"cull_mode"
.LASF117:
	.string	"AargOp"
.LASF127:
	.string	"initGlutData"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
