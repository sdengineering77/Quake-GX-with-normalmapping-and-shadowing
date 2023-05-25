	.file	"gl_stacks.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.type	pushAccum, @function
pushAccum:
.LFB66:
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/gl_stacks.c"
	.loc 1 18 0
.LVL0:
	.loc 1 21 0
	lwz 9,0(3)
	li 0,0
	addi 9,9,16
	cmplw 7,9,4
	bgt- 7,.L4
	.loc 1 23 0
	stw 9,0(3)
	li 0,1
.L4:
	.loc 1 26 0
	mr 3,0
.LVL1:
	blr
.LFE66:
	.size	pushAccum, .-pushAccum
	.align 2
	.type	popAccum, @function
popAccum:
.LFB67:
	.loc 1 29 0
.LVL2:
	.loc 1 32 0
	lwz 9,0(3)
	addi 9,9,-16
	stw 9,0(3)
	.loc 1 33 0
	blr
.LFE67:
	.size	popAccum, .-popAccum
	.align 2
	.type	pushColorBuffer, @function
pushColorBuffer:
.LFB68:
	.loc 1 77 0
.LVL3:
	.loc 1 80 0
	lwz 11,0(3)
	li 6,0
	addi 0,11,44
	cmplw 7,0,4
	bgt- 7,.L12
	.loc 1 82 0
	lis 9,blend_type@ha
	.loc 1 88 0
	lis 8,color_write_mask@ha
	.loc 1 82 0
	lbz 0,blend_type@l(9)
	.loc 1 83 0
	lis 9,blend_src@ha
	.loc 1 88 0
	la 7,color_write_mask@l(8)
	.loc 1 91 0
	li 6,1
	.loc 1 82 0
	stb 0,16(11)
	.loc 1 83 0
	lbz 0,blend_src@l(9)
	.loc 1 84 0
	lis 9,blend_dst@ha
	.loc 1 83 0
	lwz 11,0(3)
	stb 0,17(11)
	.loc 1 84 0
	lbz 0,blend_dst@l(9)
	.loc 1 85 0
	lis 9,blend_op@ha
	.loc 1 84 0
	lwz 11,0(3)
	stb 0,18(11)
	.loc 1 85 0
	lbz 0,blend_op@l(9)
	.loc 1 87 0
	lis 9,_clearcolor@ha
	.loc 1 85 0
	lwz 11,0(3)
	stb 0,19(11)
	.loc 1 87 0
	lwz 10,_clearcolor@l(9)
	lwz 11,0(3)
	stw 10,40(11)
	.loc 1 88 0
	lbz 0,color_write_mask@l(8)
	lwz 11,0(3)
	xori 0,0,1
	lwz 9,0(11)
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 9,0,27,4,4
	stw 9,0(11)
	.loc 1 89 0
	lbz 0,1(7)
	lwz 11,0(3)
	xori 0,0,1
	lwz 9,0(11)
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 9,0,26,5,5
	stw 9,0(11)
	.loc 1 90 0
	lbz 0,2(7)
	lwz 11,0(3)
	xori 0,0,1
	lwz 9,0(11)
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 9,0,25,6,6
	stw 9,0(11)
	.loc 1 91 0
	lbz 0,3(7)
	lwz 11,0(3)
	xori 0,0,1
	lwz 9,0(11)
	cntlzw 0,0
	srwi 0,0,5
	addi 10,11,44
	rlwimi 9,0,24,7,7
	stw 9,0(11)
	stw 10,0(3)
.L12:
	.loc 1 94 0
	mr 3,6
.LVL4:
	blr
.LFE68:
	.size	pushColorBuffer, .-pushColorBuffer
	.align 2
	.type	popColorBuffer, @function
popColorBuffer:
.LFB69:
	.loc 1 97 0
.LVL5:
	.loc 1 100 0
	lwz 9,0(3)
	.loc 1 102 0
	lis 11,blend_type@ha
	.loc 1 108 0
	lis 8,color_write_mask@ha
	.loc 1 100 0
	addi 9,9,-44
	.loc 1 108 0
	la 10,color_write_mask@l(8)
	.loc 1 100 0
	stw 9,0(3)
	.loc 1 102 0
	lbz 0,16(9)
	stb 0,blend_type@l(11)
	.loc 1 104 0
	lis 11,blend_dst@ha
	.loc 1 103 0
	lwz 9,0(3)
	lbz 0,17(9)
	lis 9,blend_src@ha
	stb 0,blend_src@l(9)
	.loc 1 104 0
	lwz 9,0(3)
	lbz 0,18(9)
	stb 0,blend_dst@l(11)
	.loc 1 105 0
	lis 11,blend_op@ha
	lwz 9,0(3)
	lbz 0,19(9)
	stb 0,blend_op@l(11)
	.loc 1 107 0
	lis 11,_clearcolor@ha
	lwz 9,0(3)
	lwz 0,40(9)
	stw 0,_clearcolor@l(11)
	.loc 1 108 0
	lwz 9,0(3)
	lwz 0,0(9)
	rlwinm 0,0,5,31,31
	stb 0,color_write_mask@l(8)
	.loc 1 109 0
	lwz 9,0(3)
	lwz 0,0(9)
	rlwinm 0,0,6,31,31
	stb 0,1(10)
	.loc 1 110 0
	lwz 9,0(3)
	lwz 0,0(9)
	rlwinm 0,0,7,31,31
	stb 0,2(10)
	.loc 1 111 0
	lwz 9,0(3)
	lbz 0,0(9)
	rlwinm 0,0,0,31,31
	stb 0,3(10)
	.loc 1 112 0
	blr
.LFE69:
	.size	popColorBuffer, .-popColorBuffer
	.align 2
	.type	pushCurrent, @function
pushCurrent:
.LFB70:
	.loc 1 142 0
.LVL6:
	stwu 1,-16(1)
.LCFI0:
	.loc 1 145 0
	lwz 12,0(3)
	.loc 1 142 0
	stw 31,12(1)
.LCFI1:
	.loc 1 142 0
	mr 31,3
	.loc 1 145 0
	addi 0,12,200
	li 3,0
.LVL7:
	cmplw 7,0,4
	bgt- 7,.L19
	.loc 1 147 0
	lis 11,_tempcolorelement@ha
	.loc 1 148 0
	lis 10,_tempnormalelement@ha
	.loc 1 147 0
	la 9,_tempcolorelement@l(11)
	.loc 1 148 0
	la 8,_tempnormalelement@l(10)
	.loc 1 147 0
	lwz 0,4(9)
	lwz 7,_tempcolorelement@l(11)
	lwz 6,12(9)
	lwz 11,8(9)
	.loc 1 148 0
	lis 9,_temptexcoordelement+4@ha
	lwz 5,_tempnormalelement@l(10)
	lwz 4,8(8)
.LVL8:
	lwz 10,4(8)
	.loc 1 147 0
	stw 0,12(12)
	.loc 1 153 0
	li 0,7
	.loc 1 147 0
	stw 11,16(12)
	.loc 1 148 0
	la 11,_temptexcoordelement+4@l(9)
	stw 10,28(12)
	.loc 1 153 0
	mtctr 0
	.loc 1 147 0
	stw 7,8(12)
	.loc 1 153 0
	li 10,1
.LVL9:
	.loc 1 147 0
	stw 6,20(12)
	.loc 1 148 0
	stw 5,24(12)
	stw 4,32(12)
	.loc 1 153 0
	lfs 13,-4(11)
	addi 11,11,8
	lfs 0,_temptexcoordelement+4@l(9)
	stfs 13,36(12)
	stfs 0,40(12)
.L20:
	lfs 0,-4(11)
	slwi 9,10,3
	lfs 13,0(11)
	add 9,9,12
	stfs 0,36(9)
	.loc 1 151 0
	addi 10,10,1
	.loc 1 153 0
	stfs 13,40(9)
	.loc 1 151 0
	addi 11,11,8
	bdnz .L20
	.loc 1 156 0
	addi 0,12,200
	li 3,1
	stw 0,0(31)
.LVL10:
.L19:
	.loc 1 159 0
	lwz 31,12(1)
.LVL11:
	addi 1,1,16
	blr
.LFE70:
	.size	pushCurrent, .-pushCurrent
	.align 2
	.type	popCurrent, @function
popCurrent:
.LFB71:
	.loc 1 162 0
.LVL12:
	.loc 1 165 0
	lwz 11,0(3)
	.loc 1 168 0
	lis 10,_tempnormalelement@ha
	.loc 1 162 0
	stwu 1,-32(1)
.LCFI2:
	.loc 1 167 0
	lis 7,_tempcolorelement@ha
	.loc 1 165 0
	addi 11,11,-200
	.loc 1 168 0
	la 8,_tempnormalelement@l(10)
	lwz 0,32(11)
	.loc 1 167 0
	la 9,_tempcolorelement@l(7)
	lwz 4,8(11)
	lwz 6,20(11)
	.loc 1 168 0
	lwz 5,24(11)
	.loc 1 162 0
	stw 27,12(1)
.LCFI3:
	stw 28,16(1)
.LCFI4:
	.loc 1 167 0
	lwz 27,16(11)
	lwz 28,12(11)
	.loc 1 162 0
	stw 29,20(1)
.LCFI5:
	.loc 1 168 0
	lwz 29,28(11)
	stw 0,8(8)
	li 0,8
	.loc 1 167 0
	stw 6,12(9)
	mtctr 0
	stw 28,4(9)
	stw 27,8(9)
	.loc 1 168 0
	lis 9,_temptexcoordelement+4@ha
	.loc 1 167 0
	stw 4,_tempcolorelement@l(7)
	.loc 1 168 0
	la 9,_temptexcoordelement+4@l(9)
	stw 5,_tempnormalelement@l(10)
	.loc 1 165 0
	stw 11,0(3)
	.loc 1 168 0
	stw 29,4(8)
.L26:
	.loc 1 173 0
	lfs 0,36(11)
	lfs 13,40(11)
	addi 11,11,8
	stfs 0,-4(9)
	stfs 13,0(9)
	addi 9,9,8
	.loc 1 171 0
	bdnz .L26
	.loc 1 175 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	addi 1,1,32
	blr
.LFE71:
	.size	popCurrent, .-popCurrent
	.align 2
	.type	pushDepthBuffer, @function
pushDepthBuffer:
.LFB72:
	.loc 1 191 0
.LVL13:
	.loc 1 194 0
	lwz 10,0(3)
	li 8,0
	addi 0,10,8
	cmplw 7,0,4
	bgt- 7,.L34
	.loc 1 196 0
	lis 9,depthtestenabled@ha
	lwz 11,0(10)
	lbz 0,depthtestenabled@l(9)
	.loc 1 197 0
	lis 9,depthupdate@ha
	.loc 1 199 0
	li 8,1
	.loc 1 196 0
	xori 0,0,1
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 11,0,31,0,0
	.loc 1 197 0
	lbz 0,depthupdate@l(9)
	.loc 1 196 0
	stw 11,0(10)
	.loc 1 198 0
	lis 11,depthfunction@ha
	.loc 1 197 0
	xori 0,0,1
	lwz 10,0(3)
	cntlzw 0,0
	srwi 0,0,5
	lwz 9,0(10)
	rlwimi 9,0,30,1,1
	.loc 1 198 0
	lwz 0,depthfunction@l(11)
	.loc 1 197 0
	stw 9,0(10)
	.loc 1 198 0
	lwz 9,0(3)
	stb 0,1(9)
	.loc 1 199 0
	lis 9,_cleardepth@ha
	lwz 11,0(3)
	lfs 0,_cleardepth@l(9)
	addi 0,11,8
	stw 0,0(3)
	stfs 0,4(11)
.L34:
	.loc 1 202 0
	mr 3,8
.LVL14:
	blr
.LFE72:
	.size	pushDepthBuffer, .-pushDepthBuffer
	.align 2
	.type	popDepthBuffer, @function
popDepthBuffer:
.LFB73:
	.loc 1 205 0
.LVL15:
	.loc 1 208 0
	lwz 11,0(3)
	addi 9,11,-8
	stw 9,0(3)
	.loc 1 210 0
	lis 9,depthtestenabled@ha
	lwz 0,-8(11)
	srwi 0,0,31
	stb 0,depthtestenabled@l(9)
	.loc 1 211 0
	lis 9,depthupdate@ha
	lwz 11,0(3)
	lwz 0,0(11)
	rlwinm 0,0,2,31,31
	stb 0,depthupdate@l(9)
	.loc 1 213 0
	lis 9,_cleardepth@ha
	.loc 1 212 0
	lwz 11,0(3)
	lbz 0,1(11)
	.loc 1 213 0
	lfs 0,4(11)
	.loc 1 212 0
	lis 11,depthfunction@ha
	stw 0,depthfunction@l(11)
	.loc 1 213 0
	stfs 0,_cleardepth@l(9)
	.loc 1 214 0
	blr
.LFE73:
	.size	popDepthBuffer, .-popDepthBuffer
	.align 2
	.type	pushEval, @function
pushEval:
.LFB76:
	.loc 1 343 0
.LVL16:
	.loc 1 346 0
	lwz 0,0(3)
	li 9,0
	cmplw 7,0,4
	bgt- 7,.L41
	.loc 1 348 0
	li 9,1
.L41:
	.loc 1 351 0
	mr 3,9
.LVL17:
	blr
.LFE76:
	.size	pushEval, .-pushEval
	.align 2
	.type	popEval, @function
popEval:
.LFB77:
	.loc 1 354 0
.LVL18:
	.loc 1 358 0
	blr
.LFE77:
	.size	popEval, .-popEval
	.align 2
	.type	pushFog, @function
pushFog:
.LFB78:
	.loc 1 386 0
.LVL19:
	.loc 1 389 0
	lwz 10,0(3)
	li 9,0
	addi 0,10,24
	cmplw 7,0,4
	bgt- 7,.L48
	.loc 1 391 0
	lis 9,fog_enable@ha
	lwz 11,0(10)
	lbz 0,fog_enable@l(9)
	.loc 1 392 0
	lis 9,fog_mode@ha
	.loc 1 391 0
	xori 0,0,1
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 11,0,31,0,0
	.loc 1 392 0
	lbz 0,fog_mode@l(9)
	.loc 1 391 0
	stw 11,0(10)
	.loc 1 394 0
	lis 9,fog_startz@ha
	.loc 1 392 0
	lwz 11,0(3)
	stb 0,1(11)
	.loc 1 395 0
	lis 11,fog_endz@ha
	.loc 1 394 0
	lwz 10,0(3)
	lfs 13,fog_startz@l(9)
	.loc 1 397 0
	lis 9,fog_color@ha
	.loc 1 395 0
	lfs 0,fog_endz@l(11)
	.loc 1 397 0
	addi 11,10,24
	.loc 1 394 0
	stfs 13,8(10)
	.loc 1 395 0
	stfs 0,12(10)
	.loc 1 397 0
	lwz 0,fog_color@l(9)
	li 9,1
	stw 0,20(10)
	stw 11,0(3)
.L48:
	.loc 1 400 0
	mr 3,9
.LVL20:
	blr
.LFE78:
	.size	pushFog, .-pushFog
	.align 2
	.type	popFog, @function
popFog:
.LFB79:
	.loc 1 403 0
.LVL21:
	.loc 1 406 0
	lwz 11,0(3)
	.loc 1 409 0
	lis 10,fog_mode@ha
	.loc 1 406 0
	addi 9,11,-24
	stw 9,0(3)
	.loc 1 408 0
	lis 9,fog_enable@ha
	lwz 0,-24(11)
	srwi 0,0,31
	stb 0,fog_enable@l(9)
	.loc 1 409 0
	lwz 11,0(3)
	lbz 0,1(11)
	.loc 1 411 0
	lis 11,fog_startz@ha
	.loc 1 409 0
	stb 0,fog_mode@l(10)
	.loc 1 411 0
	lwz 9,0(3)
	lfs 0,8(9)
	.loc 1 414 0
	lwz 0,20(9)
	.loc 1 412 0
	lfs 13,12(9)
	lis 9,fog_endz@ha
	.loc 1 411 0
	stfs 0,fog_startz@l(11)
	.loc 1 414 0
	lis 11,fog_color@ha
	.loc 1 412 0
	stfs 13,fog_endz@l(9)
	.loc 1 414 0
	stw 0,fog_color@l(11)
	.loc 1 415 0
	blr
.LFE79:
	.size	popFog, .-popFog
	.align 2
	.type	pushHint, @function
pushHint:
.LFB80:
	.loc 1 427 0
.LVL22:
	.loc 1 430 0
	lwz 0,0(3)
	li 9,0
	cmplw 7,0,4
	bgt- 7,.L55
	.loc 1 432 0
	li 9,1
.L55:
	.loc 1 435 0
	mr 3,9
.LVL23:
	blr
.LFE80:
	.size	pushHint, .-pushHint
	.align 2
	.type	popHint, @function
popHint:
.LFB81:
	.loc 1 438 0
.LVL24:
	.loc 1 442 0
	blr
.LFE81:
	.size	popHint, .-popHint
	.align 2
	.type	pushLighting, @function
pushLighting:
.LFB82:
	.loc 1 474 0
.LVL25:
	mflr 0
.LCFI6:
	stwu 1,-24(1)
.LCFI7:
	stw 30,16(1)
.LCFI8:
	mr 30,3
	stw 0,28(1)
.LCFI9:
	stw 29,12(1)
.LCFI10:
	.loc 1 477 0
	lwz 10,0(3)
	li 3,0
.LVL26:
	.loc 1 474 0
	stw 31,20(1)
.LCFI11:
	.loc 1 477 0
	addi 0,10,1412
	cmplw 7,0,4
	bgt- 7,.L62
	.loc 1 479 0
	lis 9,copy_mat_enabled@ha
	lwz 11,0(10)
	lbz 0,copy_mat_enabled@l(9)
	.loc 1 480 0
	lis 9,lighting@ha
	.loc 1 482 0
	lis 29,lights@ha
	.loc 1 488 0
	li 5,164
	.loc 1 479 0
	xori 0,0,1
	.loc 1 482 0
	la 29,lights@l(29)
	.loc 1 479 0
	cntlzw 0,0
	.loc 1 488 0
	mr 4,29
.LVL27:
	.loc 1 479 0
	srwi 0,0,5
	.loc 1 488 0
	addi 29,29,164
	.loc 1 479 0
	rlwimi 11,0,31,0,0
	.loc 1 480 0
	lbz 0,lighting@l(9)
	.loc 1 479 0
	stw 11,0(10)
	.loc 1 482 0
	lis 11,globAmbient@ha
	.loc 1 480 0
	xori 0,0,1
	.loc 1 488 0
	li 31,1
.LVL28:
	.loc 1 480 0
	lwz 10,0(30)
	cntlzw 0,0
	srwi 0,0,5
	lwz 9,0(10)
	rlwimi 9,0,30,1,1
	stw 9,0(10)
	.loc 1 482 0
	la 10,globAmbient@l(11)
	.loc 1 481 0
	lis 9,copy_material@ha
	.loc 1 482 0
	lwz 7,12(10)
	.loc 1 481 0
	lwz 3,0(30)
	.loc 1 482 0
	lwz 8,globAmbient@l(11)
	.loc 1 481 0
	lwz 0,copy_material@l(9)
	.loc 1 482 0
	lwz 11,8(10)
	lwz 9,4(10)
	.loc 1 481 0
	stw 0,8(3)
	.loc 1 482 0
	stw 8,12(3)
	stw 9,16(3)
	stw 11,20(3)
	stw 7,24(3)
	.loc 1 488 0
	addi 3,3,28
	bl memcpy
.L63:
	mulli 3,31,164
	lwz 0,0(30)
	mr 4,29
	li 5,164
	.loc 1 486 0
	addi 29,29,164
	.loc 1 488 0
	add 3,3,0
	addi 3,3,28
	bl memcpy
	.loc 1 486 0
	cmpwi 7,31,7
	addi 31,31,1
	bne+ 7,.L63
	.loc 1 491 0
	lwz 29,0(30)
	lis 4,curmat@ha
	la 4,curmat@l(4)
	li 5,68
	addi 3,29,1340
	addi 29,29,1412
	bl memcpy
	stw 29,0(30)
	li 3,1
.LVL29:
.L62:
	.loc 1 494 0
	lwz 0,28(1)
	lwz 29,12(1)
	lwz 30,16(1)
.LVL30:
	mtlr 0
	lwz 31,20(1)
.LVL31:
	addi 1,1,24
	blr
.LFE82:
	.size	pushLighting, .-pushLighting
	.align 2
	.type	popLighting, @function
popLighting:
.LFB83:
	.loc 1 497 0
.LVL32:
	mflr 0
.LCFI12:
	stwu 1,-24(1)
.LCFI13:
	.loc 1 511 0
	li 5,164
	.loc 1 497 0
	stw 28,8(1)
.LCFI14:
	.loc 1 505 0
	lis 28,globAmbient@ha
	.loc 1 497 0
	stw 0,28(1)
.LCFI15:
	stw 29,12(1)
.LCFI16:
	.loc 1 505 0
	lis 29,lights@ha
	.loc 1 500 0
	lwz 11,0(3)
.LVL33:
	.loc 1 505 0
	la 29,lights@l(29)
	.loc 1 497 0
	stw 31,20(1)
.LCFI17:
	.loc 1 497 0
	mr 31,3
.LVL34:
	.loc 1 500 0
	addi 9,11,-1412
	stw 9,0(3)
	.loc 1 502 0
	lis 9,copy_mat_enabled@ha
	lwz 0,-1412(11)
	.loc 1 505 0
	la 11,globAmbient@l(28)
	.loc 1 502 0
	srwi 0,0,31
	stb 0,copy_mat_enabled@l(9)
	.loc 1 503 0
	lwz 9,0(3)
	lwz 0,0(9)
	lis 9,lighting@ha
	rlwinm 0,0,2,31,31
	stb 0,lighting@l(9)
	.loc 1 504 0
	lis 9,copy_material@ha
	lwz 4,0(3)
	.loc 1 511 0
	mr 3,29
.LVL35:
	addi 29,29,164
	.loc 1 505 0
	lwz 7,16(4)
	lwz 6,20(4)
	lwz 10,24(4)
	lwz 8,12(4)
	.loc 1 504 0
	lwz 0,8(4)
	.loc 1 511 0
	addi 4,4,28
	.loc 1 505 0
	stw 10,12(11)
	stw 7,4(11)
	stw 6,8(11)
	stw 8,globAmbient@l(28)
	.loc 1 511 0
	li 28,1
.LVL36:
	.loc 1 504 0
	stw 0,copy_material@l(9)
	.loc 1 511 0
	bl memcpy
.L69:
	mulli 4,28,164
	lwz 0,0(31)
	mr 3,29
	li 5,164
	.loc 1 509 0
	addi 29,29,164
	.loc 1 511 0
	add 4,4,0
	addi 4,4,28
	bl memcpy
	.loc 1 509 0
	cmpwi 7,28,7
	addi 28,28,1
	bne+ 7,.L69
	.loc 1 514 0
	lwz 4,0(31)
	lis 3,curmat@ha
	la 3,curmat@l(3)
	li 5,68
	addi 4,4,1340
	bl memcpy
	.loc 1 515 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL37:
	lwz 29,12(1)
	mtlr 0
	lwz 31,20(1)
.LVL38:
	addi 1,1,24
	blr
.LFE83:
	.size	popLighting, .-popLighting
	.align 2
	.type	pushLine, @function
pushLine:
.LFB84:
	.loc 1 531 0
.LVL39:
	.loc 1 534 0
	lwz 11,0(3)
	li 9,0
	addi 0,11,16
	cmplw 7,0,4
	bgt- 7,.L77
	.loc 1 536 0
	lis 9,line_width@ha
	stw 0,0(3)
	lfs 0,line_width@l(9)
	li 9,1
	stfs 0,12(11)
.L77:
	.loc 1 539 0
	mr 3,9
.LVL40:
	blr
.LFE84:
	.size	pushLine, .-pushLine
	.align 2
	.type	popLine, @function
popLine:
.LFB85:
	.loc 1 542 0
.LVL41:
	.loc 1 545 0
	lwz 9,0(3)
	.loc 1 547 0
	lis 11,line_width@ha
	.loc 1 545 0
	addi 9,9,-16
	.loc 1 547 0
	lfs 0,12(9)
	.loc 1 545 0
	stw 9,0(3)
	.loc 1 547 0
	stfs 0,line_width@l(11)
	.loc 1 548 0
	blr
.LFE85:
	.size	popLine, .-popLine
	.align 2
	.type	pushListBase, @function
pushListBase:
.LFB86:
	.loc 1 557 0
.LVL42:
	.loc 1 560 0
	lwz 10,0(3)
	li 0,0
	addi 11,10,4
	cmplw 7,11,4
	bgt- 7,.L84
	.loc 1 562 0
	lis 9,call_offset@ha
	stw 11,0(3)
	lwz 0,call_offset@l(9)
	stw 0,0(10)
	li 0,1
.L84:
	.loc 1 565 0
	mr 3,0
.LVL43:
	blr
.LFE86:
	.size	pushListBase, .-pushListBase
	.align 2
	.type	popListBase, @function
popListBase:
.LFB87:
	.loc 1 568 0
.LVL44:
	.loc 1 571 0
	lwz 9,0(3)
	.loc 1 573 0
	lis 11,call_offset@ha
	lwz 0,-4(9)
	.loc 1 571 0
	addi 9,9,-4
	stw 9,0(3)
	.loc 1 573 0
	stw 0,call_offset@l(11)
	.loc 1 574 0
	blr
.LFE87:
	.size	popListBase, .-popListBase
	.align 2
	.type	pushPixelMode, @function
pushPixelMode:
.LFB88:
	.loc 1 605 0
.LVL45:
	.loc 1 608 0
	lwz 10,0(3)
	.loc 1 605 0
	mr 7,3
	.loc 1 608 0
	li 3,0
.LVL46:
	addi 8,10,64
	cmplw 7,8,4
	bgtlr- 7
	.loc 1 610 0
	lis 9,Trans@ha
	.loc 1 614 0
	li 3,1
	.loc 1 610 0
	la 11,Trans@l(9)
	lfs 0,Trans@l(9)
	lfs 13,4(11)
	.loc 1 614 0
	lis 9,read_mode@ha
	.loc 1 610 0
	stfs 0,4(10)
	stfs 13,8(10)
	.loc 1 611 0
	lfs 0,8(11)
	lfs 13,12(11)
	stfs 0,12(10)
	stfs 13,16(10)
	.loc 1 612 0
	lfs 0,16(11)
	lfs 13,20(11)
	stfs 0,20(10)
	stfs 13,24(10)
	.loc 1 614 0
	lwz 0,read_mode@l(9)
	.loc 1 613 0
	lfs 12,28(11)
	lfs 0,24(11)
	.loc 1 614 0
	stw 0,60(10)
	stw 8,0(7)
	.loc 1 613 0
	stfs 12,32(10)
	stfs 0,28(10)
	.loc 1 617 0
	blr
.LFE88:
	.size	pushPixelMode, .-pushPixelMode
	.align 2
	.type	popPixelMode, @function
popPixelMode:
.LFB89:
	.loc 1 620 0
.LVL47:
	.loc 1 623 0
	lwz 11,0(3)
	.loc 1 625 0
	lis 9,Trans@ha
	la 10,Trans@l(9)
	.loc 1 623 0
	addi 11,11,-64
	.loc 1 625 0
	lfs 0,4(11)
	lfs 13,8(11)
	stfs 0,Trans@l(9)
	.loc 1 629 0
	lis 9,read_mode@ha
	.loc 1 625 0
	stfs 13,4(10)
	.loc 1 626 0
	lfs 0,12(11)
	lfs 13,16(11)
	stfs 0,8(10)
	stfs 13,12(10)
	.loc 1 627 0
	lfs 0,20(11)
	lfs 13,24(11)
	stfs 0,16(10)
	stfs 13,20(10)
	.loc 1 629 0
	lwz 0,60(11)
	.loc 1 628 0
	lfs 0,28(11)
	lfs 13,32(11)
	stfs 0,24(10)
	.loc 1 629 0
	stw 0,read_mode@l(9)
	.loc 1 623 0
	stw 11,0(3)
	.loc 1 628 0
	stfs 13,28(10)
	.loc 1 630 0
	blr
.LFE89:
	.size	popPixelMode, .-popPixelMode
	.align 2
	.type	pushPoint, @function
pushPoint:
.LFB90:
	.loc 1 642 0
.LVL48:
	.loc 1 645 0
	lwz 11,0(3)
	li 9,0
	addi 0,11,8
	cmplw 7,0,4
	bgt- 7,.L98
	.loc 1 647 0
	lis 9,point_size@ha
	stw 0,0(3)
	lfs 0,point_size@l(9)
	li 9,1
	stfs 0,4(11)
.L98:
	.loc 1 650 0
	mr 3,9
.LVL49:
	blr
.LFE90:
	.size	pushPoint, .-pushPoint
	.align 2
	.type	popPoint, @function
popPoint:
.LFB91:
	.loc 1 653 0
.LVL50:
	.loc 1 656 0
	lwz 9,0(3)
	.loc 1 658 0
	lis 11,point_size@ha
	.loc 1 656 0
	addi 9,9,-8
	.loc 1 658 0
	lfs 0,4(9)
	.loc 1 656 0
	stw 9,0(3)
	.loc 1 658 0
	stfs 0,point_size@l(11)
	.loc 1 659 0
	blr
.LFE91:
	.size	popPoint, .-popPoint
	.align 2
	.type	pushPolyStipple, @function
pushPolyStipple:
.LFB94:
	.loc 1 735 0
.LVL51:
	.loc 1 738 0
	lwz 9,0(3)
	li 0,0
	addi 9,9,4
	cmplw 7,9,4
	bgt- 7,.L105
	.loc 1 740 0
	stw 9,0(3)
	li 0,1
.L105:
	.loc 1 743 0
	mr 3,0
.LVL52:
	blr
.LFE94:
	.size	pushPolyStipple, .-pushPolyStipple
	.align 2
	.type	popPolyStipple, @function
popPolyStipple:
.LFB95:
	.loc 1 746 0
.LVL53:
	.loc 1 749 0
	lwz 9,0(3)
	addi 9,9,-4
	stw 9,0(3)
	.loc 1 750 0
	blr
.LFE95:
	.size	popPolyStipple, .-popPolyStipple
	.align 2
	.type	pushScissor, @function
pushScissor:
.LFB96:
	.loc 1 761 0
.LVL54:
	.loc 1 764 0
	lwz 10,0(3)
	li 9,0
	addi 0,10,20
	cmplw 7,0,4
	bgt- 7,.L112
	.loc 1 766 0
	lis 9,scissor_test@ha
	lwz 11,0(10)
	lbz 0,scissor_test@l(9)
	xori 0,0,1
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 11,0,31,0,0
	stw 11,0(10)
	.loc 1 767 0
	lis 10,scissorInfo@ha
	la 9,scissorInfo@l(10)
	lwz 11,0(3)
	lwz 7,scissorInfo@l(10)
	lwz 6,12(9)
	addi 0,11,20
	lwz 10,4(9)
	lwz 8,8(9)
	li 9,1
	stw 0,0(3)
	stw 7,4(11)
	stw 10,8(11)
	stw 8,12(11)
	stw 6,16(11)
.L112:
	.loc 1 770 0
	mr 3,9
.LVL55:
	blr
.LFE96:
	.size	pushScissor, .-pushScissor
	.align 2
	.type	popScissor, @function
popScissor:
.LFB97:
	.loc 1 773 0
.LVL56:
	.loc 1 776 0
	lwz 9,0(3)
	.loc 1 778 0
	lis 11,scissor_test@ha
	.loc 1 779 0
	lis 6,scissorInfo@ha
	.loc 1 776 0
	addi 0,9,-20
	.loc 1 779 0
	la 10,scissorInfo@l(6)
	.loc 1 776 0
	stw 0,0(3)
	.loc 1 778 0
	lwz 0,-20(9)
	srwi 0,0,31
	stb 0,scissor_test@l(11)
	.loc 1 779 0
	lwz 9,0(3)
	lwz 7,16(9)
	lwz 0,4(9)
	lwz 11,8(9)
	lwz 8,12(9)
	stw 0,scissorInfo@l(6)
	stw 7,12(10)
	stw 11,4(10)
	stw 8,8(10)
	.loc 1 780 0
	blr
.LFE97:
	.size	popScissor, .-popScissor
	.align 2
	.type	pushStencil, @function
pushStencil:
.LFB98:
	.loc 1 800 0
.LVL57:
	.loc 1 803 0
	lwz 9,0(3)
	li 0,0
	addi 9,9,32
	cmplw 7,9,4
	bgt- 7,.L119
	.loc 1 805 0
	stw 9,0(3)
	li 0,1
.L119:
	.loc 1 808 0
	mr 3,0
.LVL58:
	blr
.LFE98:
	.size	pushStencil, .-pushStencil
	.align 2
	.type	popStencil, @function
popStencil:
.LFB99:
	.loc 1 811 0
.LVL59:
	.loc 1 814 0
	lwz 9,0(3)
	addi 9,9,-32
	stw 9,0(3)
	.loc 1 815 0
	blr
.LFE99:
	.size	popStencil, .-popStencil
	.align 2
	.type	pushTexture, @function
pushTexture:
.LFB100:
	.loc 1 834 0
.LVL60:
	mflr 0
.LCFI18:
	stwu 1,-24(1)
.LCFI19:
	.loc 1 837 0
	li 11,0
	.loc 1 834 0
	stw 30,16(1)
.LCFI20:
	mr 30,3
	stw 0,28(1)
.LCFI21:
	stw 28,8(1)
.LCFI22:
	.loc 1 837 0
	lwz 3,0(3)
.LVL61:
	.loc 1 834 0
	stw 29,12(1)
.LCFI23:
	.loc 1 837 0
	addi 0,3,928
	.loc 1 834 0
	stw 31,20(1)
.LCFI24:
	.loc 1 837 0
	cmplw 7,0,4
	bgt- 7,.L126
	lis 9,_temptexcoordelement+4@ha
	lis 29,glTexEnvs@ha
	la 28,_temptexcoordelement+4@l(9)
	.loc 1 843 0
	lfs 0,_temptexcoordelement+4@l(9)
	lfs 13,-4(28)
	.loc 1 837 0
	la 29,glTexEnvs@l(29)
	.loc 1 843 0
	stfs 0,4(3)
	.loc 1 844 0
	mr 4,29
.LVL62:
	.loc 1 843 0
	stfs 13,0(3)
	.loc 1 844 0
	li 5,108
	addi 3,3,64
	addi 28,28,8
	bl memcpy
	addi 29,29,108
	li 31,1
.LVL63:
.L127:
	lwz 11,0(30)
	.loc 1 843 0
	slwi 10,31,3
	lfs 13,-4(28)
	.loc 1 844 0
	mulli 3,31,108
	.loc 1 843 0
	lfs 0,0(28)
	add 9,10,11
	.loc 1 844 0
	add 3,3,11
	.loc 1 843 0
	stfsx 13,10,11
	stfs 0,4(9)
	.loc 1 844 0
	mr 4,29
	addi 3,3,64
	li 5,108
	bl memcpy
	.loc 1 841 0
	cmpwi 7,31,7
	addi 28,28,8
	addi 29,29,108
	addi 31,31,1
	bne+ 7,.L127
	.loc 1 847 0
	lwz 9,0(30)
	li 11,1
	addi 9,9,928
	stw 9,0(30)
.LVL64:
.L126:
	.loc 1 850 0
	lwz 0,28(1)
	mr 3,11
	lwz 28,8(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL65:
	lwz 31,20(1)
.LVL66:
	addi 1,1,24
	blr
.LFE100:
	.size	pushTexture, .-pushTexture
	.align 2
	.type	popTexture, @function
popTexture:
.LFB101:
	.loc 1 853 0
.LVL67:
	mflr 0
.LCFI25:
	stwu 1,-24(1)
.LCFI26:
	.loc 1 856 0
	lis 11,_temptexcoordelement+4@ha
	.loc 1 863 0
	li 5,108
	.loc 1 853 0
	stw 28,8(1)
.LCFI27:
	.loc 1 856 0
	la 28,_temptexcoordelement+4@l(11)
	.loc 1 853 0
	stw 0,28(1)
.LCFI28:
	stw 29,12(1)
.LCFI29:
	.loc 1 856 0
	lis 29,glTexEnvs@ha
	lwz 4,0(3)
.LVL68:
	la 29,glTexEnvs@l(29)
	.loc 1 853 0
	stw 30,16(1)
.LCFI30:
	mr 30,3
.LVL69:
	.loc 1 862 0
	lfs 0,-928(4)
	.loc 1 856 0
	addi 9,4,-928
	.loc 1 862 0
	lfs 13,4(9)
	.loc 1 863 0
	addi 4,4,-864
	.loc 1 856 0
	stw 9,0(3)
	.loc 1 863 0
	mr 3,29
.LVL70:
	.loc 1 862 0
	stfs 0,-4(28)
	.loc 1 863 0
	addi 29,29,108
	.loc 1 853 0
	stw 31,20(1)
.LCFI31:
	.loc 1 863 0
	addi 28,28,8
	.loc 1 862 0
	stfs 13,_temptexcoordelement+4@l(11)
	.loc 1 863 0
	li 31,1
.LVL71:
	bl memcpy
.L133:
	lwz 9,0(30)
	.loc 1 862 0
	slwi 11,31,3
	.loc 1 863 0
	mulli 4,31,108
	mr 3,29
	.loc 1 862 0
	add 10,11,9
	lfsx 13,11,9
	lfs 0,4(10)
	.loc 1 863 0
	add 4,4,9
	.loc 1 862 0
	stfs 13,-4(28)
	.loc 1 863 0
	addi 4,4,64
	.loc 1 862 0
	stfs 0,0(28)
	.loc 1 863 0
	li 5,108
	.loc 1 860 0
	addi 28,28,8
	addi 29,29,108
	.loc 1 863 0
	bl memcpy
	.loc 1 860 0
	cmpwi 7,31,7
	addi 31,31,1
	bne+ 7,.L133
	.loc 1 865 0
	lwz 0,28(1)
	lwz 28,8(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL72:
	lwz 31,20(1)
.LVL73:
	addi 1,1,24
	blr
.LFE101:
	.size	popTexture, .-popTexture
	.align 2
	.type	pushTransform, @function
pushTransform:
.LFB102:
	.loc 1 886 0
.LVL74:
	.loc 1 889 0
	lwz 10,0(3)
	li 0,0
	addi 11,10,104
	cmplw 7,11,4
	bgt- 7,.L141
	.loc 1 891 0
	lis 9,cur_mode@ha
	stw 11,0(3)
	lwz 0,cur_mode@l(9)
	stw 0,100(10)
	li 0,1
.L141:
	.loc 1 894 0
	mr 3,0
.LVL75:
	blr
.LFE102:
	.size	pushTransform, .-pushTransform
	.align 2
	.type	popTransform, @function
popTransform:
.LFB103:
	.loc 1 897 0
.LVL76:
	.loc 1 900 0
	lwz 9,0(3)
	.loc 1 902 0
	lis 11,cur_mode@ha
	.loc 1 900 0
	addi 9,9,-104
	.loc 1 902 0
	lwz 0,100(9)
	.loc 1 900 0
	stw 9,0(3)
	.loc 1 902 0
	stw 0,cur_mode@l(11)
	.loc 1 903 0
	blr
.LFE103:
	.size	popTransform, .-popTransform
	.align 2
	.type	pushViewport, @function
pushViewport:
.LFB104:
	.loc 1 914 0
.LVL77:
	.loc 1 917 0
	lwz 6,0(3)
	.loc 1 914 0
	mr 12,3
	.loc 1 917 0
	li 3,0
.LVL78:
	addi 5,6,24
	cmplw 7,5,4
	bgtlr- 7
	.loc 1 921 0
	lis 9,viewPort@ha
	.loc 1 920 0
	lis 11,normFar@ha
	.loc 1 921 0
	lwz 7,viewPort@l(9)
	la 10,viewPort@l(9)
	.loc 1 919 0
	lis 9,normNear@ha
	.loc 1 921 0
	lwz 8,12(10)
	lwz 0,4(10)
	li 3,1
	.loc 1 919 0
	lfs 13,normNear@l(9)
	.loc 1 920 0
	lfs 0,normFar@l(11)
	.loc 1 921 0
	lwz 9,8(10)
	stw 5,0(12)
	stw 8,20(6)
	.loc 1 919 0
	stfs 13,0(6)
	.loc 1 920 0
	stfs 0,4(6)
	.loc 1 921 0
	stw 7,8(6)
	stw 0,12(6)
	stw 9,16(6)
	.loc 1 924 0
	blr
.LFE104:
	.size	pushViewport, .-pushViewport
	.align 2
	.type	popViewport, @function
popViewport:
.LFB105:
	.loc 1 927 0
.LVL79:
	.loc 1 930 0
	lwz 9,0(3)
	.loc 1 934 0
	lis 7,viewPort@ha
	la 8,viewPort@l(7)
	.loc 1 933 0
	lis 11,normFar@ha
	.loc 1 930 0
	addi 10,9,-24
	.loc 1 932 0
	lfs 13,-24(9)
	.loc 1 934 0
	lwz 4,20(10)
	.loc 1 932 0
	lis 9,normNear@ha
	.loc 1 934 0
	lwz 0,8(10)
	lwz 6,12(10)
	lwz 5,16(10)
	.loc 1 933 0
	lfs 0,4(10)
	.loc 1 934 0
	stw 0,viewPort@l(7)
	.loc 1 932 0
	stfs 13,normNear@l(9)
	.loc 1 933 0
	stfs 0,normFar@l(11)
	.loc 1 934 0
	stw 4,12(8)
	.loc 1 930 0
	stw 10,0(3)
	.loc 1 934 0
	stw 6,4(8)
	stw 5,8(8)
	.loc 1 935 0
	blr
.LFE105:
	.size	popViewport, .-popViewport
	.align 2
	.type	pushPixelStore, @function
pushPixelStore:
.LFB114:
	.loc 1 1127 0
.LVL80:
	.loc 1 1130 0
	lwz 6,0(3)
	li 5,0
	addi 0,6,40
	cmplw 7,0,4
	bgt- 7,.L155
	.loc 1 1132 0
	lis 9,pack@ha
	.loc 1 1133 0
	lis 8,unpack@ha
	.loc 1 1132 0
	la 11,pack@l(9)
	lwz 0,pack@l(9)
	lwz 10,4(11)
	.loc 1 1133 0
	li 5,1
	.loc 1 1132 0
	lwz 9,8(11)
	lwz 7,12(11)
	stw 10,4(6)
	.loc 1 1133 0
	la 10,unpack@l(8)
	.loc 1 1132 0
	stw 0,0(6)
	stw 9,8(6)
	stw 7,12(6)
	lwz 0,16(11)
	stw 0,16(6)
	.loc 1 1133 0
	lwz 7,unpack@l(8)
	lwz 9,0(3)
	lwz 0,4(10)
	lwz 11,8(10)
	lwz 8,12(10)
	stw 11,28(9)
	addi 11,9,40
	stw 7,20(9)
	stw 0,24(9)
	stw 8,32(9)
	lwz 0,16(10)
	stw 0,36(9)
	stw 11,0(3)
.L155:
	.loc 1 1136 0
	mr 3,5
.LVL81:
	blr
.LFE114:
	.size	pushPixelStore, .-pushPixelStore
	.align 2
	.type	popPixelStore, @function
popPixelStore:
.LFB115:
	.loc 1 1139 0
.LVL82:
	.loc 1 1142 0
	lwz 10,0(3)
	.loc 1 1144 0
	lis 6,pack@ha
	la 11,pack@l(6)
	.loc 1 1142 0
	addi 9,10,-40
	stw 9,0(3)
	.loc 1 1144 0
	lwz 8,4(9)
	lwz 7,12(9)
	lwz 0,-40(10)
	lwz 10,8(9)
	stw 0,pack@l(6)
	.loc 1 1145 0
	lis 6,unpack@ha
	.loc 1 1144 0
	stw 10,8(11)
	.loc 1 1145 0
	la 10,unpack@l(6)
	.loc 1 1144 0
	stw 8,4(11)
	stw 7,12(11)
	lwz 0,16(9)
	stw 0,16(11)
	.loc 1 1145 0
	lwz 9,0(3)
	lwz 0,20(9)
	lwz 11,24(9)
	lwz 8,28(9)
	lwz 7,32(9)
	stw 0,unpack@l(6)
	stw 11,4(10)
	stw 8,8(10)
	stw 7,12(10)
	lwz 0,36(9)
	stw 0,16(10)
	.loc 1 1146 0
	blr
.LFE115:
	.size	popPixelStore, .-popPixelStore
	.align 2
	.type	pushVertexArray, @function
pushVertexArray:
.LFB116:
	.loc 1 1158 0
.LVL83:
	.loc 1 1161 0
	lwz 6,0(3)
	li 11,0
	addi 0,6,220
	cmplw 7,0,4
	bgt- 7,.L162
	.loc 1 1163 0
	lis 9,norm@ha
	.loc 1 1164 0
	lis 8,vert@ha
	.loc 1 1163 0
	la 11,norm@l(9)
	lwz 0,norm@l(9)
	lwz 10,4(11)
	.loc 1 1165 0
	lis 5,color@ha
	.loc 1 1163 0
	lwz 9,8(11)
	.loc 1 1165 0
	lis 4,tex@ha
.LVL84:
	.loc 1 1163 0
	lwz 7,12(11)
	stw 10,4(6)
	.loc 1 1164 0
	la 10,vert@l(8)
	.loc 1 1163 0
	stw 0,0(6)
	stw 9,8(6)
	stw 7,12(6)
	lwz 0,16(11)
	stw 0,16(6)
	.loc 1 1164 0
	lwz 7,vert@l(8)
	lwz 0,4(10)
	lwz 11,8(10)
	lwz 8,12(10)
	lwz 9,0(3)
	stw 11,28(9)
	.loc 1 1165 0
	la 11,color@l(5)
	.loc 1 1164 0
	stw 7,20(9)
	stw 0,24(9)
	stw 8,32(9)
	lwz 0,16(10)
	.loc 1 1165 0
	la 10,tex@l(4)
	.loc 1 1164 0
	stw 0,36(9)
	.loc 1 1165 0
	lwz 6,color@l(5)
	.loc 1 1170 0
	li 5,1
.LVL85:
	.loc 1 1165 0
	lwz 0,4(11)
	lwz 8,8(11)
	lwz 7,12(11)
	lwz 9,0(3)
	stw 6,200(9)
	.loc 1 1170 0
	addi 6,10,20
	.loc 1 1165 0
	stw 0,204(9)
	stw 8,208(9)
	stw 7,212(9)
	lwz 0,16(11)
	stw 0,216(9)
	.loc 1 1170 0
	li 0,7
	mtctr 0
	lwz 9,0(3)
	lwz 0,4(10)
	lwz 11,8(10)
	lwz 8,12(10)
	lwz 7,tex@l(4)
	stw 7,40(9)
	stw 0,44(9)
	stw 11,48(9)
	stw 8,52(9)
	lwz 0,16(10)
	stw 0,56(9)
.L163:
	lwz 0,0(3)
	mulli 9,5,20
	lwz 8,0(6)
	.loc 1 1168 0
	addi 5,5,1
	.loc 1 1170 0
	lwz 11,4(6)
	add 9,9,0
	lwz 10,12(6)
	addi 9,9,32
	lwz 0,8(6)
	stw 8,8(9)
	stw 11,12(9)
	stw 0,16(9)
	stw 10,20(9)
	lwz 0,16(6)
	.loc 1 1168 0
	addi 6,6,20
	.loc 1 1170 0
	stw 0,24(9)
	.loc 1 1168 0
	bdnz .L163
	.loc 1 1173 0
	lwz 9,0(3)
	li 11,1
	addi 9,9,220
	stw 9,0(3)
.LVL86:
.L162:
	.loc 1 1176 0
	mr 3,11
.LVL87:
	blr
.LFE116:
	.size	pushVertexArray, .-pushVertexArray
	.align 2
	.type	popVertexArray, @function
popVertexArray:
.LFB117:
	.loc 1 1179 0
.LVL88:
	stwu 1,-16(1)
.LCFI32:
	.loc 1 1184 0
	lis 6,norm@ha
	la 11,norm@l(6)
	.loc 1 1185 0
	lis 5,vert@ha
	.loc 1 1182 0
	lwz 10,0(3)
.LVL89:
	.loc 1 1186 0
	lis 4,color@ha
	.loc 1 1179 0
	stw 31,12(1)
.LCFI33:
	.loc 1 1179 0
	mr 31,3
.LVL90:
	.loc 1 1182 0
	addi 9,10,-220
	stw 9,0(3)
	.loc 1 1184 0
	lwz 8,4(9)
	lwz 7,12(9)
	lwz 0,-220(10)
	lwz 10,8(9)
	stw 0,norm@l(6)
	.loc 1 1186 0
	la 6,color@l(4)
	.loc 1 1184 0
	stw 10,8(11)
	.loc 1 1185 0
	la 10,vert@l(5)
	.loc 1 1184 0
	stw 8,4(11)
	stw 7,12(11)
	lwz 0,16(9)
	stw 0,16(11)
	.loc 1 1185 0
	lwz 9,0(3)
	lwz 0,20(9)
	lwz 11,24(9)
	lwz 8,28(9)
	lwz 7,32(9)
	stw 0,vert@l(5)
	.loc 1 1186 0
	lis 5,tex@ha
	.loc 1 1185 0
	stw 7,12(10)
	.loc 1 1186 0
	la 7,tex@l(5)
	.loc 1 1185 0
	stw 11,4(10)
	.loc 1 1191 0
	addi 12,7,20
	.loc 1 1185 0
	stw 8,8(10)
	lwz 0,36(9)
	stw 0,16(10)
	.loc 1 1186 0
	lwz 9,0(3)
	.loc 1 1191 0
	li 3,1
.LVL91:
	.loc 1 1186 0
	lwz 0,200(9)
	lwz 11,204(9)
	lwz 10,208(9)
	lwz 8,212(9)
	stw 0,color@l(4)
	.loc 1 1191 0
	li 0,7
	.loc 1 1186 0
	stw 11,4(6)
	.loc 1 1191 0
	mtctr 0
	.loc 1 1186 0
	stw 10,8(6)
	stw 8,12(6)
	lwz 0,216(9)
	stw 0,16(6)
	.loc 1 1191 0
	lwz 9,0(31)
	lwz 0,40(9)
	lwz 11,44(9)
	lwz 10,48(9)
	lwz 8,52(9)
	stw 0,tex@l(5)
	stw 11,4(7)
	stw 10,8(7)
	stw 8,12(7)
	lwz 0,56(9)
	stw 0,16(7)
.L169:
	lwz 0,0(31)
	mulli 9,3,20
	.loc 1 1189 0
	addi 3,3,1
	.loc 1 1191 0
	add 9,9,0
	addi 9,9,32
	lwz 0,8(9)
	lwz 11,12(9)
	lwz 10,16(9)
	lwz 8,20(9)
	stw 0,0(12)
	stw 11,4(12)
	stw 10,8(12)
	stw 8,12(12)
	lwz 0,24(9)
	stw 0,16(12)
	.loc 1 1189 0
	addi 12,12,20
	bdnz .L169
	.loc 1 1193 0
	lwz 31,12(1)
.LVL92:
	addi 1,1,16
	blr
.LFE117:
	.size	popVertexArray, .-popVertexArray
	.align 2
	.type	popPolygon, @function
popPolygon:
.LFB93:
	.loc 1 717 0
.LVL93:
	mflr 0
.LCFI34:
	stwu 1,-24(1)
.LCFI35:
	stw 29,12(1)
.LCFI36:
	mr 29,3
	stw 0,28(1)
.LCFI37:
	.loc 1 720 0
	lwz 9,0(3)
	addi 9,9,-24
	stw 9,0(3)
	.loc 1 722 0
	lwz 3,4(9)
.LVL94:
	bl glCullFace
	.loc 1 724 0
	lwz 9,0(29)
	lwz 0,0(9)
	andis. 9,0,16384
	.loc 1 725 0
	srwi 0,0,31
	lis 9,gxcullfaceanabled@ha
	stb 0,gxcullfaceanabled@l(9)
	.loc 1 724 0
	mfcr 11
	rlwinm 11,11,3,1
	lis 9,gxwinding@ha
	.loc 1 726 0
	lwz 0,28(1)
	.loc 1 724 0
	subfic 11,11,2305
	.loc 1 726 0
	lwz 29,12(1)
.LVL95:
	addi 1,1,24
	mtlr 0
	.loc 1 724 0
	stw 11,gxwinding@l(9)
	.loc 1 726 0
	blr
.LFE93:
	.size	popPolygon, .-popPolygon
	.align 2
	.type	pushPolygon, @function
pushPolygon:
.LFB92:
	.loc 1 691 0
.LVL96:
	mflr 0
.LCFI38:
	stwu 1,-8(1)
.LCFI39:
	mr 8,3
	stw 0,12(1)
.LCFI40:
	.loc 1 694 0
	lwz 10,0(3)
	li 3,0
.LVL97:
	addi 0,10,24
	cmplw 7,0,4
	bgt- 7,.L182
	.loc 1 696 0
	lis 9,cull_mode@ha
	lbz 0,cull_mode@l(9)
	cmpwi 7,0,2
	beq- 7,.L185
	cmpwi 7,0,3
	beq- 7,.L186
	cmpwi 7,0,1
	beq- 7,.L189
	.loc 1 708 0
	lis 3,.LC0@ha
	lis 5,.LANCHOR0@ha
	lis 6,.LC1@ha
	la 3,.LC0@l(3)
	la 5,.LANCHOR0@l(5)
	la 6,.LC1@l(6)
	li 4,708
.LVL98:
	bl __assert_func
.LVL99:
.L185:
	.loc 1 702 0
	li 0,1029
	stw 0,4(10)
.L187:
	.loc 1 710 0
	lis 9,gxwinding@ha
	lwz 11,0(10)
	lwz 0,gxwinding@l(9)
	.loc 1 711 0
	lis 9,gxcullfaceanabled@ha
	li 3,1
	.loc 1 710 0
	xori 0,0,2305
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 11,0,30,1,1
	.loc 1 711 0
	lbz 0,gxcullfaceanabled@l(9)
	.loc 1 710 0
	stw 11,0(10)
	.loc 1 711 0
	xori 0,0,1
	lwz 11,0(8)
	cntlzw 0,0
	srwi 0,0,5
	lwz 9,0(11)
	addi 10,11,24
	rlwimi 9,0,31,0,0
	stw 9,0(11)
	stw 10,0(8)
.L182:
	.loc 1 714 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L189:
	.loc 1 699 0
	li 0,1028
	stw 0,4(10)
	b .L187
.L186:
	.loc 1 705 0
	li 0,1032
	stw 0,4(10)
	b .L187
.LFE92:
	.size	pushPolygon, .-pushPolygon
	.align 2
	.type	popEnable, @function
popEnable:
.LFB75:
	.loc 1 305 0
.LVL100:
	mflr 0
.LCFI41:
	stwu 1,-8(1)
.LCFI42:
	.loc 1 317 0
	li 8,0
.LVL101:
	.loc 1 305 0
	stw 0,12(1)
.LCFI43:
	.loc 1 308 0
	lwz 11,0(3)
.LVL102:
	addi 9,11,-8
	stw 9,0(3)
	.loc 1 310 0
	lis 9,blend_type@ha
	lwz 0,-8(11)
	rlwinm 0,0,3,31,31
	stb 0,blend_type@l(9)
	.loc 1 311 0
	lis 9,copy_mat_enabled@ha
	lwz 11,0(3)
	lwz 0,0(11)
	rlwinm 0,0,4,31,31
	stb 0,copy_mat_enabled@l(9)
	.loc 1 317 0
	lis 9,lights@ha
	la 7,lights@l(9)
	.loc 1 312 0
	lis 9,gxcullfaceanabled@ha
	lwz 11,0(3)
	lwz 0,0(11)
	rlwinm 0,0,5,31,31
	stb 0,gxcullfaceanabled@l(9)
	.loc 1 317 0
	li 0,8
	mtctr 0
	.loc 1 313 0
	lwz 9,0(3)
	lwz 0,0(9)
	lis 9,depthtestenabled@ha
	rlwinm 0,0,6,31,31
	stb 0,depthtestenabled@l(9)
	.loc 1 314 0
	lis 9,fog_enable@ha
	lwz 11,0(3)
	lbz 0,0(11)
	rlwinm 0,0,0,31,31
	stb 0,fog_enable@l(9)
	.loc 1 317 0
	li 0,0
	lwz 11,0(3)
	stb 0,2(11)
	lwz 11,0(3)
.L191:
	.loc 1 320 0
	lbz 0,2(11)
	li 10,1
	slw 9,10,8
	.loc 1 318 0
	addi 8,8,1
	.loc 1 320 0
	and. 6,9,0
	beq- 0,.L192
	.loc 1 322 0
	stb 10,0(7)
	lwz 11,0(3)
.L192:
	.loc 1 318 0
	addi 7,7,164
	bdnz .L191
	.loc 1 326 0
	lwz 0,0(11)
	lis 9,lighting@ha
	rlwinm 0,0,25,31,31
	stb 0,lighting@l(9)
	.loc 1 327 0
	lis 9,scissor_test@ha
	lwz 11,0(3)
	lwz 0,4(11)
	rlwinm 0,0,5,31,31
	stb 0,scissor_test@l(9)
	.loc 1 330 0
	lwz 11,0(3)
	lbz 3,4(11)
.LVL103:
	rlwinm 3,3,0,31,31
	bl _glSetEnableTex
.LVL104:
	.loc 1 331 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE75:
	.size	popEnable, .-popEnable
	.align 2
	.type	pushEnable, @function
pushEnable:
.LFB74:
	.loc 1 276 0
.LVL105:
	mflr 0
.LCFI44:
	stwu 1,-24(1)
.LCFI45:
	stw 31,20(1)
.LCFI46:
	mr 31,3
	stw 0,28(1)
.LCFI47:
	stw 29,12(1)
.LCFI48:
	.loc 1 279 0
	lwz 10,0(3)
	li 3,0
.LVL106:
	addi 0,10,8
	cmplw 7,0,4
	bgt- 7,.L201
	.loc 1 281 0
	lis 9,blend_type@ha
	lwz 11,0(10)
	lbz 0,blend_type@l(9)
	.loc 1 282 0
	lis 9,copy_mat_enabled@ha
	.loc 1 281 0
	xori 0,0,1
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 11,0,29,2,2
	.loc 1 282 0
	lbz 0,copy_mat_enabled@l(9)
	.loc 1 281 0
	stw 11,0(10)
	.loc 1 283 0
	lis 11,gxcullfaceanabled@ha
	.loc 1 282 0
	xori 0,0,1
	lwz 10,0(31)
	cntlzw 0,0
	srwi 0,0,5
	lwz 9,0(10)
	rlwimi 9,0,28,3,3
	.loc 1 283 0
	lbz 0,gxcullfaceanabled@l(11)
	.loc 1 282 0
	stw 9,0(10)
	.loc 1 284 0
	lis 11,depthtestenabled@ha
	.loc 1 283 0
	xori 0,0,1
	lwz 10,0(31)
	cntlzw 0,0
	srwi 0,0,5
	lwz 9,0(10)
	rlwimi 9,0,27,4,4
	.loc 1 284 0
	lbz 0,depthtestenabled@l(11)
	.loc 1 283 0
	stw 9,0(10)
	.loc 1 285 0
	lis 11,fog_enable@ha
	.loc 1 284 0
	xori 0,0,1
	lwz 10,0(31)
	cntlzw 0,0
	srwi 0,0,5
	lwz 9,0(10)
	rlwimi 9,0,26,5,5
	.loc 1 285 0
	lbz 0,fog_enable@l(11)
	.loc 1 284 0
	stw 9,0(10)
	.loc 1 285 0
	xori 0,0,1
	lwz 10,0(31)
	cntlzw 0,0
	srwi 0,0,5
	lwz 9,0(10)
	rlwimi 9,0,24,7,7
	.loc 1 288 0
	li 0,0
	.loc 1 285 0
	stw 9,0(10)
	.loc 1 288 0
	lis 9,lights@ha
	la 8,lights@l(9)
	li 10,0
.LVL107:
	lwz 11,0(31)
	stb 0,2(11)
	li 0,8
	mtctr 0
.L202:
	.loc 1 291 0
	lbz 0,0(8)
	.loc 1 293 0
	li 9,1
	slw 11,9,10
	.loc 1 289 0
	addi 8,8,164
	.loc 1 291 0
	cmpwi 7,0,0
	.loc 1 289 0
	addi 10,10,1
	.loc 1 291 0
	beq- 7,.L203
	.loc 1 293 0
	lwz 9,0(31)
	lbz 0,2(9)
	or 0,11,0
	stb 0,2(9)
.L203:
	.loc 1 289 0
	bdnz .L202
	.loc 1 297 0
	lis 9,lighting@ha
	lwz 10,0(31)
.LVL108:
	lbz 0,lighting@l(9)
	.loc 1 298 0
	lis 11,scissor_test@ha
	.loc 1 297 0
	lwz 9,0(10)
	xori 0,0,1
	cntlzw 0,0
	srwi 0,0,5
	rlwimi 9,0,7,24,24
	.loc 1 298 0
	lbz 0,scissor_test@l(11)
	.loc 1 297 0
	stw 9,0(10)
	.loc 1 299 0
	lis 11,cur_tex@ha
	.loc 1 298 0
	xori 0,0,1
	.loc 1 299 0
	lwz 3,cur_tex@l(11)
	.loc 1 298 0
	lwz 10,0(31)
	cntlzw 0,0
	srwi 0,0,5
	lwz 9,4(10)
	rlwimi 9,0,27,4,4
	stw 9,4(10)
	.loc 1 299 0
	lwz 29,0(31)
	bl _glGetEnableTex
.LVL109:
	neg 3,3
	lwz 0,4(29)
	addi 9,29,8
	rlwimi 0,3,25,7,7
	li 3,1
	stw 0,4(29)
	stw 9,0(31)
.LVL110:
.L201:
	.loc 1 302 0
	lwz 0,28(1)
	lwz 29,12(1)
	lwz 31,20(1)
.LVL111:
	mtlr 0
	addi 1,1,24
	blr
.LFE74:
	.size	pushEnable, .-pushEnable
	.align 2
	.type	pop, @function
pop:
.LFB111:
	.loc 1 1077 0
.LVL112:
	mflr 0
.LCFI49:
	stwu 1,-32(1)
.LCFI50:
	stw 29,20(1)
.LCFI51:
	mr 29,3
	stw 0,36(1)
.LCFI52:
	stw 27,12(1)
.LCFI53:
	.loc 1 1080 0
	lwz 9,64(3)
	.loc 1 1077 0
	stw 28,16(1)
.LCFI54:
	.loc 1 1080 0
	cmpwi 7,9,0
	.loc 1 1077 0
	stw 30,24(1)
.LCFI55:
	stw 31,28(1)
.LCFI56:
	.loc 1 1080 0
	beq- 7,.L228
	.loc 1 1090 0
	lwz 10,68(3)
	.loc 1 1086 0
	addi 0,9,-1
	.loc 1 1090 0
	lwz 11,72(3)
	.loc 1 1088 0
	slwi 9,0,2
	.loc 1 1086 0
	stw 0,64(3)
	.loc 1 1090 0
	cmplw 7,10,11
	.loc 1 1088 0
	lwzx 28,9,3
.LVL113:
	.loc 1 1090 0
	bgt- 7,.L229
	.loc 1 1091 0
	lwz 0,76(3)
	add 0,10,0
	cmplw 7,11,0
	bgt- 7,.L230
	.loc 1 1093 0
	addic. 30,5,-1
.LVL114:
	blt- 0,.L225
	mulli 9,5,12
	.loc 1 1097 0
	addi 27,3,72
	.loc 1 1093 0
	addi 9,9,-12
	add 31,9,4
	b .L218
.L219:
	addic. 30,30,-1
	addi 31,31,-12
	blt- 0,.L231
.LVL115:
.L218:
	.loc 1 1095 0
	lwz 0,0(31)
	and 9,28,0
	cmpw 7,0,9
	bne+ 7,.L219
.LVL116:
	.loc 1 1097 0
	lwz 0,8(31)
	mr 3,27
.LVL117:
	.loc 1 1093 0
	addi 31,31,-12
	.loc 1 1097 0
	mtctr 0
	bctrl
.LVL118:
	.loc 1 1093 0
	addic. 30,30,-1
	bge+ 0,.L218
.LVL119:
.L231:
	.loc 1 1101 0
	lwz 9,68(29)
	lwz 11,72(29)
	cmplw 7,9,11
	bgt- 7,.L232
	lwz 0,76(29)
	.loc 1 1102 0
	add 0,9,0
	cmplw 7,11,0
	bgt- 7,.L233
.L225:
	.loc 1 1103 0
	lwz 0,36(1)
	lwz 27,12(1)
	lwz 28,16(1)
.LVL120:
	mtlr 0
	lwz 29,20(1)
.LVL121:
	lwz 30,24(1)
.LVL122:
	lwz 31,28(1)
	addi 1,1,32
	blr
.LVL123:
.L228:
	.loc 1 1082 0
	lis 4,.LC0@ha
.LVL124:
	li 3,1284
.LVL125:
	la 4,.LC0@l(4)
	li 5,1082
.LVL126:
	bl _glSetErrorEx
	.loc 1 1103 0
	lwz 0,36(1)
	lwz 27,12(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
.LVL127:
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	blr
.LVL128:
.L233:
	.loc 1 1102 0
	lis 5,.LANCHOR0@ha
.LVL129:
	lis 3,.LC0@ha
	la 5,.LANCHOR0@l(5)
	lis 6,.LC3@ha
	la 3,.LC0@l(3)
	addi 5,5,12
	la 6,.LC3@l(6)
	li 4,1102
.LVL130:
	bl __assert_func
.LVL131:
.L229:
	.loc 1 1090 0
	lis 5,.LANCHOR0@ha
.LVL132:
	lis 3,.LC0@ha
.LVL133:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC2@ha
	la 3,.LC0@l(3)
	addi 5,5,12
	la 6,.LC2@l(6)
	li 4,1090
.LVL134:
	bl __assert_func
.LVL135:
.L232:
	.loc 1 1101 0
	lis 5,.LANCHOR0@ha
.LVL136:
	lis 3,.LC0@ha
	la 5,.LANCHOR0@l(5)
	lis 6,.LC2@ha
	la 3,.LC0@l(3)
	addi 5,5,12
	la 6,.LC2@l(6)
	li 4,1101
.LVL137:
	bl __assert_func
.LVL138:
.L230:
	.loc 1 1091 0
	lis 5,.LANCHOR0@ha
.LVL139:
	lis 3,.LC0@ha
.LVL140:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC3@ha
	la 3,.LC0@l(3)
	addi 5,5,12
	la 6,.LC3@l(6)
	li 4,1091
.LVL141:
	bl __assert_func
.LFE111:
	.size	pop, .-pop
	.align 2
	.globl glPopClientAttrib
	.type	glPopClientAttrib, @function
glPopClientAttrib:
.LFB119:
	.loc 1 1208 0
	mflr 0
.LCFI57:
	stwu 1,-8(1)
.LCFI58:
	.loc 1 1209 0
	lis 9,cur_state@ha
	.loc 1 1208 0
	stw 0,12(1)
.LCFI59:
	.loc 1 1209 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L235
	lis 4,.LC0@ha
	li 3,1282
	la 4,.LC0@l(4)
	li 5,1209
	bl _glSetErrorEx
	.loc 1 1212 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L235:
	lwz 0,12(1)
	.loc 1 1211 0
	lis 3,.LANCHOR1@ha
	lis 4,.LANCHOR2@ha
	la 3,.LANCHOR1@l(3)
	.loc 1 1212 0
	mtlr 0
	.loc 1 1211 0
	la 4,.LANCHOR2@l(4)
	li 5,2
	.loc 1 1212 0
	addi 1,1,8
	.loc 1 1211 0
	b pop
.LFE119:
	.size	glPopClientAttrib, .-glPopClientAttrib
	.align 2
	.globl glPopAttrib
	.type	glPopAttrib, @function
glPopAttrib:
.LFB113:
	.loc 1 1113 0
	mflr 0
.LCFI60:
	stwu 1,-8(1)
.LCFI61:
	.loc 1 1114 0
	lis 9,cur_state@ha
	.loc 1 1113 0
	stw 0,12(1)
.LCFI62:
	.loc 1 1114 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L240
	lis 4,.LC0@ha
	li 3,1282
	la 4,.LC0@l(4)
	li 5,1114
	bl _glSetErrorEx
	.loc 1 1117 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L240:
	lwz 0,12(1)
	.loc 1 1116 0
	lis 3,.LANCHOR1@ha
	lis 4,.LANCHOR2@ha
	la 3,.LANCHOR1@l(3)
	la 4,.LANCHOR2@l(4)
	.loc 1 1117 0
	mtlr 0
	.loc 1 1116 0
	addi 3,3,80
	addi 4,4,24
	li 5,20
	.loc 1 1117 0
	addi 1,1,8
	.loc 1 1116 0
	b pop
.LFE113:
	.size	glPopAttrib, .-glPopAttrib
	.align 2
	.type	resizeStack, @function
resizeStack:
.LFB107:
	.loc 1 990 0
.LVL142:
	mflr 0
.LCFI63:
	stwu 1,-16(1)
.LCFI64:
	stw 30,8(1)
.LCFI65:
	.loc 1 993 0
	li 30,1024
.LVL143:
	.loc 1 990 0
	stw 0,20(1)
.LCFI66:
	stw 31,12(1)
.LCFI67:
	.loc 1 990 0
	mr 31,3
	.loc 1 993 0
	lwz 0,76(3)
	cmpwi 7,0,0
	beq- 7,.L247
	.loc 1 999 0
	slwi 30,0,1
.L247:
	.loc 1 1002 0
	lwz 3,68(31)
.LVL144:
	li 4,1024
	bl realloc
	.loc 1 1004 0
	li 0,0
	cmpwi 0,3,0
.LVL145:
	beq- 0,.L250
.LBB15:
	.loc 1 1006 0
	lwz 9,68(31)
	lwz 0,72(31)
	.loc 1 1008 0
	stw 30,76(31)
	.loc 1 1011 0
	subf 0,9,0
	.loc 1 1007 0
	stw 3,68(31)
	.loc 1 1011 0
	add 9,0,3
	.loc 1 1012 0
	cmplw 7,9,3
	.loc 1 1011 0
	stw 9,72(31)
	.loc 1 1012 0
	blt- 7,.L256
	.loc 1 1013 0
	add 0,3,30
	cmplw 7,9,0
	li 0,1
	bgt- 7,.L257
.L250:
.LBE15:
	.loc 1 1020 0
	mr 3,0
.LVL146:
	lwz 0,20(1)
	lwz 30,8(1)
.LVL147:
	lwz 31,12(1)
.LVL148:
	mtlr 0
	addi 1,1,16
	blr
.LVL149:
.L256:
.LBB16:
	.loc 1 1012 0
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
.LVL150:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC2@ha
	la 3,.LC0@l(3)
	addi 5,5,16
	la 6,.LC2@l(6)
	li 4,1012
	bl __assert_func
.LVL151:
.L257:
	.loc 1 1013 0
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
.LVL152:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC3@ha
	la 3,.LC0@l(3)
	addi 5,5,16
	la 6,.LC3@l(6)
	li 4,1013
	bl __assert_func
.LBE16:
.LFE107:
	.size	resizeStack, .-resizeStack
	.align 2
	.type	push, @function
push:
.LFB110:
	.loc 1 1038 0
.LVL153:
	mflr 0
.LCFI68:
	stwu 1,-56(1)
.LCFI69:
	stw 25,28(1)
.LCFI70:
	mr 25,6
	stw 0,60(1)
.LCFI71:
	stw 26,32(1)
.LCFI72:
	mr 26,5
	.loc 1 1041 0
	lwz 9,64(3)
	.loc 1 1038 0
	stw 27,36(1)
.LCFI73:
	mr 27,4
	.loc 1 1041 0
	cmpwi 7,9,15
	.loc 1 1038 0
	stw 31,52(1)
.LCFI74:
	stw 24,24(1)
.LCFI75:
	mr 31,3
	stw 28,40(1)
.LCFI76:
	stw 29,44(1)
.LCFI77:
	stw 30,48(1)
.LCFI78:
	.loc 1 1041 0
	bgt- 7,.L283
.LVL154:
	.loc 1 1047 0
	lwz 10,72(3)
	.loc 1 1049 0
	lwz 11,68(3)
	.loc 1 1047 0
	stw 10,8(1)
.LVL155:
	.loc 1 1049 0
	cmplw 7,11,10
	bgt- 7,.L284
.LVL156:
	.loc 1 1050 0
	lwz 0,76(3)
	add 0,11,0
	cmplw 7,10,0
	bgt- 7,.L264
	.loc 1 1052 0
	cmpwi 7,5,0
	beq- 7,.L267
.LVL157:
	.loc 1 1050 0
	li 29,0
.LVL158:
	li 30,0
	addi 24,1,8
	b .L268
.LVL159:
.L270:
	.loc 1 1052 0
	addi 29,29,1
	addi 30,30,12
	cmpw 7,29,26
	beq- 7,.L285
.L268:
	.loc 1 1054 0
	lwzx 0,30,27
	and 9,25,0
	cmpw 7,0,9
	bne+ 7,.L270
.LVL160:
	add 28,27,30
	b .L269
.LVL161:
.L279:
	lwz 11,68(31)
.LVL162:
.L269:
	.loc 1 1056 0
	lwz 4,76(31)
	mr 3,24
	lwz 0,4(28)
	add 4,4,11
	mtctr 0
	bctrl
	cmpwi 7,3,0
	bne- 7,.L286
	.loc 1 1059 0
	mr 3,31
	bl resizeStack
	cmpwi 7,3,0
	bne+ 7,.L279
	.loc 1 1062 0
	lis 4,.LC0@ha
	li 3,1283
	la 4,.LC0@l(4)
	li 5,1062
	bl _glSetErrorEx
	.loc 1 1074 0
	lwz 0,60(1)
	lwz 24,24(1)
	lwz 25,28(1)
.LVL163:
	mtlr 0
	lwz 26,32(1)
.LVL164:
	lwz 27,36(1)
.LVL165:
	lwz 28,40(1)
	lwz 29,44(1)
.LVL166:
	lwz 30,48(1)
	lwz 31,52(1)
.LVL167:
	addi 1,1,56
	blr
.LVL168:
.L283:
	.loc 1 1043 0
	lis 4,.LC0@ha
	li 3,1283
	la 4,.LC0@l(4)
	li 5,1043
	bl _glSetErrorEx
	.loc 1 1074 0
	lwz 0,60(1)
	lwz 24,24(1)
	lwz 25,28(1)
.LVL169:
	mtlr 0
	lwz 26,32(1)
.LVL170:
	lwz 27,36(1)
.LVL171:
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
.LVL172:
	addi 1,1,56
	blr
.LVL173:
.L285:
	.loc 1 1069 0
	lwz 9,72(31)
	cmplw 7,11,9
	bgt- 7,.L287
	lwz 0,76(31)
	.loc 1 1070 0
	add 0,11,0
	cmplw 7,9,0
	bgt- 7,.L288
	lwz 9,64(31)
.L267:
	.loc 1 1073 0
	addi 0,9,1
	slwi 9,9,2
	stwx 25,9,31
	stw 0,64(31)
	.loc 1 1072 0
	lwz 9,8(1)
	.loc 1 1074 0
	lwz 0,60(1)
	.loc 1 1072 0
	stw 9,72(31)
	.loc 1 1074 0
	lwz 24,24(1)
	mtlr 0
	lwz 25,28(1)
.LVL174:
	lwz 26,32(1)
.LVL175:
	lwz 27,36(1)
.LVL176:
	lwz 28,40(1)
	lwz 29,44(1)
.LVL177:
	lwz 30,48(1)
	lwz 31,52(1)
.LVL178:
	addi 1,1,56
	blr
.LVL179:
.L286:
	lwz 11,68(31)
	b .L270
.LVL180:
.L287:
	.loc 1 1069 0
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
	la 5,.LANCHOR0@l(5)
	lis 6,.LC2@ha
	la 3,.LC0@l(3)
	addi 5,5,28
	la 6,.LC2@l(6)
	li 4,1069
	bl __assert_func
.LVL181:
.L284:
	.loc 1 1049 0
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
.LVL182:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC2@ha
	la 3,.LC0@l(3)
	addi 5,5,28
	la 6,.LC2@l(6)
	li 4,1049
	bl __assert_func
.LVL183:
.L264:
	.loc 1 1050 0
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
.LVL184:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC3@ha
	la 3,.LC0@l(3)
	addi 5,5,28
	la 6,.LC3@l(6)
	li 4,1050
	bl __assert_func
.LVL185:
.L288:
	.loc 1 1070 0
	lis 5,.LANCHOR0@ha
	lis 3,.LC0@ha
	la 5,.LANCHOR0@l(5)
	lis 6,.LC3@ha
	la 3,.LC0@l(3)
	addi 5,5,28
	la 6,.LC3@l(6)
	li 4,1070
	bl __assert_func
.LFE110:
	.size	push, .-push
	.align 2
	.globl glPushClientAttrib
	.type	glPushClientAttrib, @function
glPushClientAttrib:
.LFB118:
	.loc 1 1201 0
.LVL186:
	mflr 0
.LCFI79:
	stwu 1,-8(1)
.LCFI80:
	.loc 1 1202 0
	lis 9,cur_state@ha
	.loc 1 1201 0
	mr 6,3
	stw 0,12(1)
.LCFI81:
	.loc 1 1202 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L290
.LVL187:
	lis 4,.LC0@ha
	li 3,1282
	la 4,.LC0@l(4)
	li 5,1202
	bl _glSetErrorEx
.LVL188:
	.loc 1 1205 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL189:
.L290:
	lwz 0,12(1)
	.loc 1 1204 0
	lis 3,.LANCHOR1@ha
	lis 4,.LANCHOR2@ha
	la 3,.LANCHOR1@l(3)
	.loc 1 1205 0
	mtlr 0
	.loc 1 1204 0
	la 4,.LANCHOR2@l(4)
	li 5,2
	.loc 1 1205 0
	addi 1,1,8
	.loc 1 1204 0
	b push
.LVL190:
.LFE118:
	.size	glPushClientAttrib, .-glPushClientAttrib
	.align 2
	.globl glPushAttrib
	.type	glPushAttrib, @function
glPushAttrib:
.LFB112:
	.loc 1 1106 0
.LVL191:
	mflr 0
.LCFI82:
	stwu 1,-8(1)
.LCFI83:
	.loc 1 1107 0
	lis 9,cur_state@ha
	.loc 1 1106 0
	mr 6,3
	stw 0,12(1)
.LCFI84:
	.loc 1 1107 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L295
.LVL192:
	lis 4,.LC0@ha
	li 3,1282
	la 4,.LC0@l(4)
	li 5,1107
	bl _glSetErrorEx
.LVL193:
	.loc 1 1110 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL194:
.L295:
	lwz 0,12(1)
	.loc 1 1109 0
	lis 3,.LANCHOR1@ha
	lis 4,.LANCHOR2@ha
	la 3,.LANCHOR1@l(3)
	la 4,.LANCHOR2@l(4)
	.loc 1 1110 0
	mtlr 0
	.loc 1 1109 0
	addi 3,3,80
	addi 4,4,24
	li 5,20
	.loc 1 1110 0
	addi 1,1,8
	.loc 1 1109 0
	b push
.LVL195:
.LFE112:
	.size	glPushAttrib, .-glPushAttrib
	.align 2
	.type	initStack, @function
initStack:
.LFB108:
	.loc 1 1023 0
.LVL196:
	stwu 1,-104(1)
.LCFI85:
	mflr 0
.LCFI86:
	.loc 1 1024 0
	li 5,80
	li 4,0
	.loc 1 1023 0
	stw 28,88(1)
.LCFI87:
	.loc 1 1024 0
	addi 28,1,8
	.loc 1 1023 0
	stw 29,92(1)
.LCFI88:
	mr 29,3
	.loc 1 1024 0
	mr 3,28
.LVL197:
	.loc 1 1023 0
	stw 0,108(1)
.LCFI89:
	.loc 1 1024 0
	bl memset
	mr 4,28
	mr 3,29
	li 5,80
	bl memcpy
	.loc 1 1025 0
	mr 3,29
	bl resizeStack
	.loc 1 1028 0
	lwz 0,68(29)
	.loc 1 1027 0
	li 9,0
	.loc 1 1029 0
	lwz 28,88(1)
	.loc 1 1028 0
	stw 0,72(29)
	.loc 1 1029 0
	lwz 0,108(1)
	.loc 1 1027 0
	stw 9,64(29)
	.loc 1 1029 0
	mtlr 0
	lwz 29,92(1)
.LVL198:
	addi 1,1,104
	blr
.LFE108:
	.size	initStack, .-initStack
	.align 2
	.globl _glInitStacks
	.type	_glInitStacks, @function
_glInitStacks:
.LFB109:
	.loc 1 1032 0
	stwu 1,-24(1)
.LCFI90:
	mflr 0
.LCFI91:
	stw 29,12(1)
.LCFI92:
	.loc 1 1033 0
	lis 29,.LANCHOR1@ha
	la 29,.LANCHOR1@l(29)
	.loc 1 1032 0
	stw 0,28(1)
.LCFI93:
	.loc 1 1033 0
	addi 3,29,80
	bl initStack
	.loc 1 1035 0
	lwz 0,28(1)
	.loc 1 1034 0
	mr 3,29
	.loc 1 1035 0
	lwz 29,12(1)
	mtlr 0
	addi 1,1,24
	.loc 1 1034 0
	b initStack
.LFE109:
	.size	_glInitStacks, .-_glInitStacks
	.globl attribs
	.globl clientAttribs
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
	.type	__FUNCTION__.14261, @object
	.size	__FUNCTION__.14261, 12
__FUNCTION__.14261:
	.string	"pushPolygon"
	.type	__FUNCTION__.14521, @object
	.size	__FUNCTION__.14521, 4
__FUNCTION__.14521:
	.string	"pop"
	.type	__FUNCTION__.14461, @object
	.size	__FUNCTION__.14461, 12
__FUNCTION__.14461:
	.string	"resizeStack"
	.type	__FUNCTION__.14491, @object
	.size	__FUNCTION__.14491, 5
__FUNCTION__.14491:
	.string	"push"
	.section	".data"
	.align 2
	.set	.LANCHOR2,. + 0
	.type	clientAttribs, @object
	.size	clientAttribs, 24
clientAttribs:
	.long	1
	.long	pushPixelStore
	.long	popPixelStore
	.long	2
	.long	pushVertexArray
	.long	popVertexArray
	.type	attribs, @object
	.size	attribs, 240
attribs:
	.long	512
	.long	pushAccum
	.long	popAccum
	.long	16384
	.long	pushColorBuffer
	.long	popColorBuffer
	.long	1
	.long	pushCurrent
	.long	popCurrent
	.long	256
	.long	pushDepthBuffer
	.long	popDepthBuffer
	.long	8192
	.long	pushEnable
	.long	popEnable
	.long	65536
	.long	pushEval
	.long	popEval
	.long	128
	.long	pushFog
	.long	popFog
	.long	32768
	.long	pushHint
	.long	popHint
	.long	64
	.long	pushLighting
	.long	popLighting
	.long	4
	.long	pushLine
	.long	popLine
	.long	131072
	.long	pushListBase
	.long	popListBase
	.long	32
	.long	pushPixelMode
	.long	popPixelMode
	.long	2
	.long	pushPoint
	.long	popPoint
	.long	8
	.long	pushPolygon
	.long	popPolygon
	.long	16
	.long	pushPolyStipple
	.long	popPolyStipple
	.long	524288
	.long	pushScissor
	.long	popScissor
	.long	1024
	.long	pushStencil
	.long	popStencil
	.long	262144
	.long	pushTexture
	.long	popTexture
	.long	4096
	.long	pushTransform
	.long	popTransform
	.long	2048
	.long	pushViewport
	.long	popViewport
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl_stacks.c"
	.zero	3
.LC1:
	.string	"0"
	.zero	2
.LC2:
	.string	"ptr->begin <= ptr->cur"
	.zero	1
.LC3:
	.string	"ptr->cur <= stackEnd(ptr)"
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	clientAttribStack, @object
	.size	clientAttribStack, 80
clientAttribStack:
	.zero	80
	.type	attribStack, @object
	.size	attribStack, 80
attribStack:
	.zero	80
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
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI0-.LFB70
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x9f
	.uleb128 0x1
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI2-.LFB71
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI4-.LCFI2
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9b
	.uleb128 0x5
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x9d
	.uleb128 0x3
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI7-.LFB82
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI11-.LCFI8
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9d
	.uleb128 0x3
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x4
	.4byte	.LCFI13-.LFB83
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI16-.LCFI14
	.byte	0x9d
	.uleb128 0x3
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x9f
	.uleb128 0x1
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.align 2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.align 2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.align 2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.align 2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.align 2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.align 2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.align 2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.align 2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.align 2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.byte	0x4
	.4byte	.LCFI19-.LFB100
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI23-.LCFI20
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x9f
	.uleb128 0x1
	.align 2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.byte	0x4
	.4byte	.LCFI26-.LFB101
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI29-.LCFI27
	.byte	0x9d
	.uleb128 0x3
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0x9f
	.uleb128 0x1
	.align 2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.align 2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.align 2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.align 2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.align 2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.align 2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.align 2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.align 2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI32-.LFB117
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x9f
	.uleb128 0x1
	.align 2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.byte	0x4
	.4byte	.LCFI35-.LFB93
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.byte	0x4
	.4byte	.LCFI39-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI42-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI45-.LFB74
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI48-.LCFI46
	.byte	0x9d
	.uleb128 0x3
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI50-.LFB111
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI56-.LCFI51
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9b
	.uleb128 0x5
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x4
	.4byte	.LCFI58-.LFB119
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI61-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI64-.LFB107
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI67-.LCFI65
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI69-.LFB110
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0x99
	.uleb128 0x7
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI72-.LCFI70
	.byte	0x9a
	.uleb128 0x6
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0x9b
	.uleb128 0x5
	.byte	0x4
	.4byte	.LCFI75-.LCFI73
	.byte	0x98
	.uleb128 0x8
	.byte	0x9f
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI78-.LCFI75
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.align 2
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x4
	.4byte	.LCFI80-.LFB118
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI83-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI84-.LCFI83
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI85-.LFB108
	.byte	0xe
	.uleb128 0x68
	.byte	0x4
	.4byte	.LCFI87-.LCFI85
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI88-.LCFI87
	.byte	0x9d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI89-.LCFI88
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI90-.LFB109
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI92-.LCFI90
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI93-.LCFI92
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE104:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB82-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LFB83-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LFB100-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LFB101-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL86-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LFB93-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LFB92-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE92-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL99-.Ltext0
	.4byte	.LFE92-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL99-.Ltext0
	.4byte	.LFE92-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LFB75-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI42-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI45-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI50-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST88:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST89:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST90:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST91:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST92:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST93:
	.4byte	.LFB119-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI58-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST94:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI61-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST95:
	.4byte	.LFB107-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI64-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST96:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL149-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST97:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST98:
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL149-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST99:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI69-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST100:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL184-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST101:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST102:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST103:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST104:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL185-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST105:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL173-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0x0
	.4byte	0x0
.LLST106:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI80-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI80-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST107:
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST108:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI83-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI83-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST109:
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST110:
	.4byte	.LFB108-.Ltext0
	.4byte	.LCFI85-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI85-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	0x0
	.4byte	0x0
.LLST111:
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST112:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI90-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI90-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
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
	.4byte	0x26e2
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF338
	.byte	0x1
	.4byte	.LASF339
	.4byte	.LASF340
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
	.byte	0x9b
	.4byte	0x41
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
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x3
	.byte	0x9f
	.4byte	0x89
	.uleb128 0x7
	.string	"u8"
	.byte	0x4
	.byte	0xf
	.4byte	0x3a
	.uleb128 0x7
	.string	"u32"
	.byte	0x4
	.byte	0x11
	.4byte	0x30
	.uleb128 0x7
	.string	"f32"
	.byte	0x4
	.byte	0x29
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.byte	0x35
	.4byte	0xfa
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x36
	.4byte	0x13a
	.uleb128 0x9
	.4byte	.LASF24
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 1
	.byte	0x0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0xc
	.byte	0x5
	.byte	0x27
	.4byte	0x16b
	.uleb128 0xb
	.string	"x"
	.byte	0x5
	.byte	0x28
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"y"
	.byte	0x5
	.byte	0x28
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"z"
	.byte	0x5
	.byte	0x28
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x5
	.byte	0x29
	.4byte	0x13a
	.uleb128 0xc
	.4byte	0x10f
	.4byte	0x186
	.uleb128 0xd
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x4
	.byte	0x6
	.2byte	0x3b8
	.4byte	0x1c8
	.uleb128 0xf
	.string	"r"
	.byte	0x6
	.2byte	0x3b9
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"g"
	.byte	0x6
	.2byte	0x3ba
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.string	"b"
	.byte	0x6
	.2byte	0x3bb
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"a"
	.byte	0x6
	.2byte	0x3bc
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x3bd
	.4byte	0x186
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x40
	.byte	0x6
	.2byte	0x3d6
	.4byte	0x1f1
	.uleb128 0xf
	.string	"val"
	.byte	0x6
	.2byte	0x3d7
	.4byte	0x1f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.4byte	0x104
	.4byte	0x201
	.uleb128 0xd
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x3d8
	.4byte	0x1d4
	.uleb128 0x11
	.byte	0x4
	.4byte	0xfa
	.uleb128 0x11
	.byte	0x4
	.4byte	0x219
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x10
	.byte	0x7
	.byte	0x15
	.4byte	0x23b
	.uleb128 0xb
	.string	"v"
	.byte	0x7
	.byte	0x16
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"w"
	.byte	0x7
	.byte	0x17
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x7
	.byte	0x18
	.4byte	0x21a
	.uleb128 0x13
	.byte	0x8
	.byte	0x7
	.byte	0x1b
	.4byte	0x267
	.uleb128 0xb
	.string	"s"
	.byte	0x7
	.byte	0x1c
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"t"
	.byte	0x7
	.byte	0x1d
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x7
	.byte	0x1e
	.4byte	0x246
	.uleb128 0x13
	.byte	0x10
	.byte	0x7
	.byte	0x21
	.4byte	0x2ab
	.uleb128 0xb
	.string	"r"
	.byte	0x7
	.byte	0x22
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"g"
	.byte	0x7
	.byte	0x23
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"b"
	.byte	0x7
	.byte	0x24
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"a"
	.byte	0x7
	.byte	0x25
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x7
	.byte	0x26
	.4byte	0x272
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x14
	.byte	0x7
	.byte	0x42
	.4byte	0x307
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x7
	.byte	0x43
	.4byte	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"p"
	.byte	0x7
	.byte	0x44
	.4byte	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x7
	.byte	0x45
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x7
	.byte	0x46
	.4byte	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x7
	.byte	0x47
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x7
	.byte	0x48
	.4byte	0x2b6
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x357
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x8
	.byte	0xe
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x8
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x8
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"cur"
	.byte	0x8
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x8
	.byte	0x12
	.4byte	0x312
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0xa4
	.byte	0x7
	.byte	0x83
	.4byte	0x41d
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x7
	.byte	0x84
	.4byte	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"obj"
	.byte	0x7
	.byte	0x86
	.4byte	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"pos"
	.byte	0x7
	.byte	0x88
	.4byte	0x23b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x7
	.byte	0x8a
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x7
	.byte	0x8c
	.4byte	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x7
	.byte	0x8d
	.4byte	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x7
	.byte	0x8e
	.4byte	0x2ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x7
	.byte	0x90
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x7
	.byte	0x91
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x7
	.byte	0x92
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x7
	.byte	0x93
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x7
	.byte	0x94
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x7
	.byte	0x95
	.4byte	0x362
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x44
	.byte	0x7
	.byte	0xa0
	.4byte	0x47b
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa1
	.4byte	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x7
	.byte	0xa2
	.4byte	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x7
	.byte	0xa3
	.4byte	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x7
	.byte	0xa4
	.4byte	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x7
	.byte	0xa5
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x7
	.byte	0xa6
	.4byte	0x428
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x4
	.byte	0x7
	.byte	0xbf
	.4byte	0x4a5
	.uleb128 0x9
	.4byte	.LASF61
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF62
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF63
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x7
	.byte	0xc3
	.4byte	0x486
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x10
	.byte	0x7
	.byte	0xe8
	.4byte	0x4f1
	.uleb128 0xb
	.string	"x"
	.byte	0x7
	.byte	0xe9
	.4byte	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"y"
	.byte	0x7
	.byte	0xea
	.4byte	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x7
	.byte	0xeb
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x7
	.byte	0xec
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x7
	.byte	0xed
	.4byte	0x4b0
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x14
	.byte	0x7
	.byte	0xfb
	.4byte	0x55f
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x7
	.byte	0xfc
	.4byte	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x7
	.byte	0xfd
	.4byte	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x7
	.byte	0xfe
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x7
	.byte	0xff
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x100
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x101
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x102
	.4byte	0x4fc
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x8
	.byte	0x7
	.2byte	0x117
	.4byte	0x597
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x118
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x119
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x11a
	.4byte	0x56b
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x4
	.byte	0x7
	.2byte	0x11d
	.4byte	0x5c9
	.uleb128 0x9
	.4byte	.LASF82
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF83
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF84
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF85
	.sleb128 3
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x6c
	.byte	0x7
	.2byte	0x127
	.4byte	0x721
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x128
	.4byte	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x12a
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x12b
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x12c
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x12d
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x12e
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x12f
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x130
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x131
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x132
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x133
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x135
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x137
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x138
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x13a
	.4byte	0x721
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x13b
	.4byte	0x721
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x13c
	.4byte	0x721
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x13d
	.4byte	0x721
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"tex"
	.byte	0x7
	.2byte	0x13f
	.4byte	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x141
	.4byte	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x143
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x144
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0xc
	.4byte	0x97
	.4byte	0x731
	.uleb128 0xd
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x145
	.4byte	0x5c9
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x10
	.byte	0x1
	.byte	0xd
	.4byte	0x758
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x1
	.byte	0xe
	.4byte	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0x1
	.byte	0xf
	.4byte	0x73d
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x2c
	.byte	0x1
	.byte	0x31
	.4byte	0x884
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x1
	.byte	0x32
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x1
	.byte	0x33
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x1
	.byte	0x34
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x1
	.byte	0x35
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x1
	.byte	0x36
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x1
	.byte	0x37
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x1
	.byte	0x38
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF118
	.byte	0x1
	.byte	0x39
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x1
	.byte	0x3b
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x1
	.byte	0x3d
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x1
	.byte	0x3e
	.4byte	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x1
	.byte	0x41
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x1
	.byte	0x42
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x1
	.byte	0x43
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x1
	.byte	0x44
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0x1
	.byte	0x46
	.4byte	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x1
	.byte	0x47
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.4byte	.LASF128
	.byte	0x1
	.byte	0x49
	.4byte	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x1
	.byte	0x4a
	.4byte	0x763
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0xc8
	.byte	0x1
	.byte	0x7e
	.4byte	0x92f
	.uleb128 0x18
	.4byte	.LASF130
	.byte	0x1
	.byte	0x7f
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF131
	.byte	0x1
	.byte	0x80
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x1
	.byte	0x82
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x1
	.byte	0x83
	.4byte	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF133
	.byte	0x1
	.byte	0x84
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0x1
	.byte	0x85
	.4byte	0x92f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x1
	.byte	0x87
	.4byte	0x23b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0x1
	.byte	0x88
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0x1
	.byte	0x89
	.4byte	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x1
	.byte	0x8a
	.4byte	0x92f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0xc
	.4byte	0x267
	.4byte	0x93f
	.uleb128 0xd
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x1
	.byte	0x8b
	.4byte	0x88f
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0x8
	.byte	0x1
	.byte	0xb6
	.4byte	0x995
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0x1
	.byte	0xb7
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF141
	.byte	0x1
	.byte	0xb8
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF142
	.byte	0x1
	.byte	0xba
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.4byte	.LASF143
	.byte	0x1
	.byte	0xbb
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x1
	.byte	0xbc
	.4byte	0x94a
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x8
	.byte	0x1
	.byte	0xf6
	.4byte	0xb72
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x1
	.byte	0xf7
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF144
	.byte	0x1
	.byte	0xf8
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF145
	.byte	0x1
	.byte	0xf9
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF146
	.byte	0x1
	.byte	0xfa
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF147
	.byte	0x1
	.byte	0xfb
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0x1
	.byte	0xfc
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x1
	.byte	0xfd
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.string	"fog"
	.byte	0x1
	.byte	0xfe
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x1
	.byte	0xff
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x100
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x1a
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x101
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x102
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x103
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x104
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x105
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x106
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x107
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x108
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x109
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x10a
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x10b
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x10c
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x10d
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x10e
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x10f
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x110
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x111
	.4byte	0x9a0
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x0
	.byte	0x1
	.2byte	0x153
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x154
	.4byte	0xb7e
	.uleb128 0x1c
	.string	"fog"
	.byte	0x18
	.byte	0x1
	.2byte	0x173
	.4byte	0xc0d
	.uleb128 0x1a
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x174
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x176
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x178
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x17a
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x17b
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x17d
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x17e
	.4byte	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.string	"fog"
	.byte	0x1
	.2byte	0x17f
	.4byte	0xb93
	.uleb128 0x1b
	.4byte	.LASF172
	.byte	0x0
	.byte	0x1
	.2byte	0x1a7
	.uleb128 0x10
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xc19
	.uleb128 0x1e
	.4byte	.LASF173
	.2byte	0x584
	.byte	0x1
	.2byte	0x1ce
	.4byte	0xcbd
	.uleb128 0x1a
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xcbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"mat"
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x47b
	.byte	0x3
	.byte	0x23
	.uleb128 0x53c
	.uleb128 0x16
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x580
	.byte	0x0
	.uleb128 0xc
	.4byte	0x41d
	.4byte	0xccd
	.uleb128 0xd
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1d7
	.4byte	0xc2e
	.uleb128 0xe
	.4byte	.LASF178
	.byte	0x10
	.byte	0x1
	.2byte	0x20a
	.4byte	0xd38
	.uleb128 0x1a
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x20b
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x20c
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x20d
	.4byte	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x20e
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x20f
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x210
	.4byte	0xcd9
	.uleb128 0xe
	.4byte	.LASF181
	.byte	0x4
	.byte	0x1
	.2byte	0x228
	.4byte	0xd61
	.uleb128 0x16
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x229
	.4byte	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x22a
	.4byte	0xd44
	.uleb128 0xe
	.4byte	.LASF183
	.byte	0x40
	.byte	0x1
	.2byte	0x24a
	.4byte	0xe35
	.uleb128 0x1a
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x24b
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x24c
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"red"
	.byte	0x1
	.2byte	0x24e
	.4byte	0x597
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x24f
	.4byte	0x597
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x250
	.4byte	0x597
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x251
	.4byte	0x597
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x252
	.4byte	0x597
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x254
	.4byte	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x16
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x255
	.4byte	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x257
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x16
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x257
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x16
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x259
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x25a
	.4byte	0xd6d
	.uleb128 0xe
	.4byte	.LASF195
	.byte	0x8
	.byte	0x1
	.2byte	0x27c
	.4byte	0xe70
	.uleb128 0x1a
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x27d
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x27e
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x27f
	.4byte	0xe41
	.uleb128 0xe
	.4byte	.LASF197
	.byte	0x18
	.byte	0x1
	.2byte	0x2a3
	.4byte	0xf41
	.uleb128 0x1a
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x2a6
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x2ab
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x2ac
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x2ad
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x2ae
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x2af
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x2b0
	.4byte	0xe7c
	.uleb128 0xe
	.4byte	.LASF199
	.byte	0x4
	.byte	0x1
	.2byte	0x2da
	.4byte	0xf6d
	.uleb128 0x1a
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x2db
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x2dc
	.4byte	0xf4d
	.uleb128 0xe
	.4byte	.LASF205
	.byte	0x14
	.byte	0x1
	.2byte	0x2f3
	.4byte	0xfa8
	.uleb128 0x1a
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x2f4
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x2f5
	.4byte	0x4f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x2f6
	.4byte	0xf79
	.uleb128 0xe
	.4byte	.LASF207
	.byte	0x20
	.byte	0x1
	.2byte	0x315
	.4byte	0x104f
	.uleb128 0x1a
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x316
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x317
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x318
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"ref"
	.byte	0x1
	.2byte	0x319
	.4byte	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x31a
	.4byte	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x31b
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x31b
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x31b
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x31c
	.4byte	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x31d
	.4byte	0xfb4
	.uleb128 0x1e
	.4byte	.LASF215
	.2byte	0x3a0
	.byte	0x1
	.2byte	0x33c
	.4byte	0x1088
	.uleb128 0x16
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x33d
	.4byte	0x92f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x33e
	.4byte	0x1088
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0xc
	.4byte	0x731
	.4byte	0x1098
	.uleb128 0xd
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x33f
	.4byte	0x105b
	.uleb128 0xe
	.4byte	.LASF217
	.byte	0x10
	.byte	0x1
	.2byte	0x368
	.4byte	0x10c1
	.uleb128 0xf
	.string	"equ"
	.byte	0x1
	.2byte	0x369
	.4byte	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x36a
	.4byte	0x10a4
	.uleb128 0xe
	.4byte	.LASF218
	.byte	0x68
	.byte	0x1
	.2byte	0x36d
	.4byte	0x111a
	.uleb128 0x1a
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x36e
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x36f
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x370
	.4byte	0x111a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x371
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0x0
	.uleb128 0xc
	.4byte	0x10c1
	.4byte	0x112a
	.uleb128 0xd
	.4byte	0x37
	.byte	0x5
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x373
	.4byte	0x10cd
	.uleb128 0xe
	.4byte	.LASF221
	.byte	0x18
	.byte	0x1
	.2byte	0x38c
	.4byte	0x1171
	.uleb128 0x16
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x38d
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"far"
	.byte	0x1
	.2byte	0x38d
	.4byte	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x38e
	.4byte	0x4f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x38f
	.4byte	0x1136
	.uleb128 0x10
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x3a9
	.4byte	0x1189
	.uleb128 0x11
	.byte	0x4
	.4byte	0x118f
	.uleb128 0x1f
	.byte	0x1
	.4byte	0x11a
	.4byte	0x11a4
	.uleb128 0x20
	.4byte	0x11a4
	.uleb128 0x20
	.4byte	0x48
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x48
	.uleb128 0x10
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x3aa
	.4byte	0x11b6
	.uleb128 0x11
	.byte	0x4
	.4byte	0x11bc
	.uleb128 0x21
	.byte	0x1
	.4byte	0x11c8
	.uleb128 0x20
	.4byte	0x11a4
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF226
	.byte	0xc
	.byte	0x1
	.2byte	0x3ad
	.4byte	0x1203
	.uleb128 0x16
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x3ae
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x3af
	.4byte	0x117d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"pop"
	.byte	0x1
	.2byte	0x3b0
	.4byte	0x11aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x11c8
	.uleb128 0xe
	.4byte	.LASF228
	.byte	0x50
	.byte	0x1
	.2byte	0x3cb
	.4byte	0x1268
	.uleb128 0x16
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x3cc
	.4byte	0x1268
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x3cd
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x3ce
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"cur"
	.byte	0x1
	.2byte	0x3cf
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x3d0
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0xc
	.4byte	0x97
	.4byte	0x1278
	.uleb128 0xd
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x3d1
	.4byte	0x120f
	.uleb128 0xe
	.4byte	.LASF231
	.byte	0x28
	.byte	0x1
	.2byte	0x461
	.4byte	0x12b0
	.uleb128 0x16
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x462
	.4byte	0x55f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x463
	.4byte	0x55f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x464
	.4byte	0x1284
	.uleb128 0xe
	.4byte	.LASF234
	.byte	0xdc
	.byte	0x1
	.2byte	0x47e
	.4byte	0x1307
	.uleb128 0x16
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x47f
	.4byte	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x480
	.4byte	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"tex"
	.byte	0x1
	.2byte	0x481
	.4byte	0x1307
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x482
	.4byte	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.byte	0x0
	.uleb128 0xc
	.4byte	0x307
	.4byte	0x1317
	.uleb128 0xd
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x483
	.4byte	0x12bc
	.uleb128 0x22
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x3d8
	.byte	0x1
	.4byte	0x48
	.byte	0x3
	.4byte	0x134c
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.2byte	0x3d7
	.4byte	0x134c
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.2byte	0x3d9
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1278
	.uleb128 0x25
	.4byte	.LASF237
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x1
	.byte	0x51
	.4byte	0x1392
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0x11
	.4byte	0x11a4
	.4byte	.LLST1
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.byte	0x11
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.byte	0x13
	.4byte	0x1392
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1398
	.uleb128 0x11
	.byte	0x4
	.4byte	0x758
	.uleb128 0x29
	.4byte	.LASF239
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x1
	.byte	0x51
	.4byte	0x13cb
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0x1c
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.byte	0x1e
	.4byte	0x1392
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF238
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB68
	.4byte	.LFE68
	.byte	0x1
	.byte	0x51
	.4byte	0x140b
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0x4c
	.4byte	0x11a4
	.4byte	.LLST4
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.byte	0x4c
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.byte	0x4e
	.4byte	0x140b
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1411
	.uleb128 0x11
	.byte	0x4
	.4byte	0x884
	.uleb128 0x29
	.4byte	.LASF240
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x1
	.byte	0x51
	.4byte	0x1444
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0x60
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.byte	0x62
	.4byte	0x140b
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LASF241
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST6
	.4byte	0x1493
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0x8d
	.4byte	0x11a4
	.4byte	.LLST7
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.byte	0x8d
	.4byte	0x48
	.4byte	.LLST8
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.byte	0x8f
	.4byte	0x1493
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0x96
	.4byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1499
	.uleb128 0x11
	.byte	0x4
	.4byte	0x93f
	.uleb128 0x2c
	.4byte	.LASF242
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST9
	.4byte	0x14d7
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0xa1
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.byte	0xa3
	.4byte	0x1493
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.4byte	0x25
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF243
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB72
	.4byte	.LFE72
	.byte	0x1
	.byte	0x51
	.4byte	0x1517
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0xbe
	.4byte	0x11a4
	.4byte	.LLST11
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.byte	0xbe
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.byte	0xc0
	.4byte	0x1517
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x151d
	.uleb128 0x11
	.byte	0x4
	.4byte	0x995
	.uleb128 0x29
	.4byte	.LASF244
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.byte	0x1
	.byte	0x51
	.4byte	0x1550
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0xcc
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.byte	0xce
	.4byte	0x1517
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x157
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB76
	.4byte	.LFE76
	.byte	0x1
	.byte	0x51
	.4byte	0x1594
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x156
	.4byte	0x11a4
	.4byte	.LLST14
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x156
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x158
	.4byte	0x1594
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x159a
	.uleb128 0x11
	.byte	0x4
	.4byte	0xb87
	.uleb128 0x30
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x162
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.byte	0x1
	.byte	0x51
	.4byte	0x15d0
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x161
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x163
	.4byte	0x1594
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x182
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB78
	.4byte	.LFE78
	.byte	0x1
	.byte	0x51
	.4byte	0x1614
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x181
	.4byte	0x11a4
	.4byte	.LLST17
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x181
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x183
	.4byte	0x1614
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x161a
	.uleb128 0x11
	.byte	0x4
	.4byte	0xc0d
	.uleb128 0x30
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x193
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.byte	0x1
	.byte	0x51
	.4byte	0x1650
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x192
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x194
	.4byte	0x1614
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x1ab
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB80
	.4byte	.LFE80
	.byte	0x1
	.byte	0x51
	.4byte	0x1694
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x11a4
	.4byte	.LLST20
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x1694
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x169a
	.uleb128 0x11
	.byte	0x4
	.4byte	0xc22
	.uleb128 0x30
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x1b6
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.byte	0x1
	.byte	0x51
	.4byte	0x16d0
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x1694
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x1da
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST22
	.4byte	0x1726
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x11a4
	.4byte	.LLST23
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x48
	.4byte	.LLST24
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x1db
	.4byte	0x1726
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x25
	.4byte	.LLST25
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x172c
	.uleb128 0x11
	.byte	0x4
	.4byte	0xccd
	.uleb128 0x33
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x1f1
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LLST26
	.4byte	0x1778
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x11a4
	.4byte	.LLST27
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x1726
	.4byte	.LLST28
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x25
	.4byte	.LLST29
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x213
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB84
	.4byte	.LFE84
	.byte	0x1
	.byte	0x51
	.4byte	0x17bc
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x212
	.4byte	0x11a4
	.4byte	.LLST31
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x212
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x214
	.4byte	0x17bc
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x17c2
	.uleb128 0x11
	.byte	0x4
	.4byte	0xd38
	.uleb128 0x30
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x21e
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.byte	0x1
	.byte	0x51
	.4byte	0x17f8
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x21d
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x21f
	.4byte	0x17bc
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x22d
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB86
	.4byte	.LFE86
	.byte	0x1
	.byte	0x51
	.4byte	0x183c
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x22c
	.4byte	0x11a4
	.4byte	.LLST34
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x22c
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x22e
	.4byte	0x183c
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1842
	.uleb128 0x11
	.byte	0x4
	.4byte	0xd61
	.uleb128 0x30
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x238
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.byte	0x1
	.byte	0x51
	.4byte	0x1878
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x237
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x239
	.4byte	0x183c
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x25d
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB88
	.4byte	.LFE88
	.byte	0x1
	.byte	0x51
	.4byte	0x18bc
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x25c
	.4byte	0x11a4
	.4byte	.LLST37
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x25c
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x18bc
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x18c2
	.uleb128 0x11
	.byte	0x4
	.4byte	0xe35
	.uleb128 0x30
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x26c
	.byte	0x1
	.4byte	.LFB89
	.4byte	.LFE89
	.byte	0x1
	.byte	0x51
	.4byte	0x18f8
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x26b
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x26d
	.4byte	0x18bc
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x282
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB90
	.4byte	.LFE90
	.byte	0x1
	.byte	0x51
	.4byte	0x193c
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x281
	.4byte	0x11a4
	.4byte	.LLST40
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x281
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x283
	.4byte	0x193c
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1942
	.uleb128 0x11
	.byte	0x4
	.4byte	0xe70
	.uleb128 0x30
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x28d
	.byte	0x1
	.4byte	.LFB91
	.4byte	.LFE91
	.byte	0x1
	.byte	0x51
	.4byte	0x1978
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x28c
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x28e
	.4byte	0x193c
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x2df
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB94
	.4byte	.LFE94
	.byte	0x1
	.byte	0x51
	.4byte	0x19bc
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x11a4
	.4byte	.LLST43
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x19bc
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x19c2
	.uleb128 0x11
	.byte	0x4
	.4byte	0xf6d
	.uleb128 0x30
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x2ea
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.byte	0x1
	.byte	0x51
	.4byte	0x19f8
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x2e9
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x2eb
	.4byte	0x19bc
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x2f9
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB96
	.4byte	.LFE96
	.byte	0x1
	.byte	0x51
	.4byte	0x1a3c
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x11a4
	.4byte	.LLST46
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x2fa
	.4byte	0x1a3c
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1a42
	.uleb128 0x11
	.byte	0x4
	.4byte	0xfa8
	.uleb128 0x30
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x305
	.byte	0x1
	.4byte	.LFB97
	.4byte	.LFE97
	.byte	0x1
	.byte	0x51
	.4byte	0x1a78
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x304
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x306
	.4byte	0x1a3c
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x320
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB98
	.4byte	.LFE98
	.byte	0x1
	.byte	0x51
	.4byte	0x1abc
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x31f
	.4byte	0x11a4
	.4byte	.LLST49
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x31f
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x321
	.4byte	0x1abc
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1ac2
	.uleb128 0x11
	.byte	0x4
	.4byte	0x104f
	.uleb128 0x30
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x32b
	.byte	0x1
	.4byte	.LFB99
	.4byte	.LFE99
	.byte	0x1
	.byte	0x51
	.4byte	0x1af8
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x32a
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x32c
	.4byte	0x1abc
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x342
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	.LLST51
	.4byte	0x1b4e
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x341
	.4byte	0x11a4
	.4byte	.LLST52
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.2byte	0x341
	.4byte	0x48
	.4byte	.LLST53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x343
	.4byte	0x1b4e
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x347
	.4byte	0x25
	.4byte	.LLST54
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1b54
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1098
	.uleb128 0x33
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x355
	.byte	0x1
	.4byte	.LFB101
	.4byte	.LFE101
	.4byte	.LLST55
	.4byte	0x1ba0
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x354
	.4byte	0x11a4
	.4byte	.LLST56
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.2byte	0x356
	.4byte	0x1b4e
	.4byte	.LLST57
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x35a
	.4byte	0x25
	.4byte	.LLST58
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x376
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB102
	.4byte	.LFE102
	.byte	0x1
	.byte	0x51
	.4byte	0x1be4
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x375
	.4byte	0x11a4
	.4byte	.LLST60
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x375
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x377
	.4byte	0x1be4
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1bea
	.uleb128 0x11
	.byte	0x4
	.4byte	0x112a
	.uleb128 0x30
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x381
	.byte	0x1
	.4byte	.LFB103
	.4byte	.LFE103
	.byte	0x1
	.byte	0x51
	.4byte	0x1c20
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x380
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x382
	.4byte	0x1be4
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x392
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB104
	.4byte	.LFE104
	.byte	0x1
	.byte	0x51
	.4byte	0x1c64
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x391
	.4byte	0x11a4
	.4byte	.LLST63
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x391
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x393
	.4byte	0x1c64
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1c6a
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1171
	.uleb128 0x30
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x39f
	.byte	0x1
	.4byte	.LFB105
	.4byte	.LFE105
	.byte	0x1
	.byte	0x51
	.4byte	0x1ca0
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x39e
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x1c64
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x467
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB114
	.4byte	.LFE114
	.byte	0x1
	.byte	0x51
	.4byte	0x1ce4
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x466
	.4byte	0x11a4
	.4byte	.LLST66
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.2byte	0x466
	.4byte	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x468
	.4byte	0x1ce4
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1cea
	.uleb128 0x11
	.byte	0x4
	.4byte	0x12b0
	.uleb128 0x30
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x473
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.byte	0x1
	.byte	0x51
	.4byte	0x1d20
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x472
	.4byte	0x11a4
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x474
	.4byte	0x1ce4
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x486
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB116
	.4byte	.LFE116
	.byte	0x1
	.byte	0x51
	.4byte	0x1d72
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x485
	.4byte	0x11a4
	.4byte	.LLST69
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.2byte	0x485
	.4byte	0x48
	.4byte	.LLST70
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x487
	.4byte	0x1d72
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.2byte	0x48f
	.4byte	0x25
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1d78
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1317
	.uleb128 0x33
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x49b
	.byte	0x1
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST71
	.4byte	0x1dc2
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x49a
	.4byte	0x11a4
	.4byte	.LLST72
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.2byte	0x49c
	.4byte	0x1d72
	.4byte	.LLST73
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.2byte	0x4a4
	.4byte	0x25
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x2cd
	.byte	0x1
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LLST74
	.4byte	0x1df6
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x2cc
	.4byte	0x11a4
	.4byte	.LLST75
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x1df6
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1dfc
	.uleb128 0x11
	.byte	0x4
	.4byte	0xf41
	.uleb128 0x31
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x2b3
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB92
	.4byte	.LFE92
	.4byte	.LLST76
	.4byte	0x1e5a
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x11a4
	.4byte	.LLST77
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x48
	.4byte	.LLST78
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x1df6
	.uleb128 0x35
	.4byte	.LASF279
	.4byte	0x2188
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.14261
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x131
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST79
	.4byte	0x1eac
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x130
	.4byte	0x11a4
	.4byte	.LLST80
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.2byte	0x132
	.4byte	0x1eac
	.4byte	.LLST81
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x25
	.4byte	.LLST82
	.uleb128 0x36
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x149
	.4byte	0x11a
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1eb2
	.uleb128 0x11
	.byte	0x4
	.4byte	0xb72
	.uleb128 0x31
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x114
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST83
	.4byte	0x1f0e
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x113
	.4byte	0x11a4
	.4byte	.LLST84
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.2byte	0x113
	.4byte	0x48
	.4byte	.LLST85
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x115
	.4byte	0x1eac
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x25
	.4byte	.LLST86
	.byte	0x0
	.uleb128 0x37
	.string	"pop"
	.byte	0x1
	.2byte	0x435
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST87
	.4byte	0x1f86
	.uleb128 0x2e
	.string	"ptr"
	.byte	0x1
	.2byte	0x434
	.4byte	0x134c
	.4byte	.LLST88
	.uleb128 0x38
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x434
	.4byte	0x1f86
	.4byte	.LLST89
	.uleb128 0x38
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x434
	.4byte	0x25
	.4byte	.LLST90
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x436
	.4byte	0x58
	.4byte	.LLST91
	.uleb128 0x39
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x440
	.4byte	0x97
	.4byte	.LLST92
	.uleb128 0x35
	.4byte	.LASF279
	.4byte	0x2183
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.14521
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1203
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x4b8
	.byte	0x1
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST93
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x459
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST94
	.uleb128 0x31
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x3de
	.byte	0x1
	.4byte	0x11a
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST95
	.4byte	0x202c
	.uleb128 0x2e
	.string	"ptr"
	.byte	0x1
	.2byte	0x3dd
	.4byte	0x134c
	.4byte	.LLST96
	.uleb128 0x39
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x3df
	.4byte	0x48
	.4byte	.LLST97
	.uleb128 0x39
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x3e0
	.4byte	0x25
	.4byte	.LLST98
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x0
	.4byte	0x201b
	.uleb128 0x24
	.string	"cur"
	.byte	0x1
	.2byte	0x3ee
	.4byte	0x25
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF279
	.4byte	0x2159
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.14461
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x40e
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST99
	.4byte	0x20b4
	.uleb128 0x2e
	.string	"ptr"
	.byte	0x1
	.2byte	0x40d
	.4byte	0x134c
	.4byte	.LLST100
	.uleb128 0x38
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x40d
	.4byte	0x1f86
	.4byte	.LLST101
	.uleb128 0x38
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x40d
	.4byte	0x25
	.4byte	.LLST102
	.uleb128 0x38
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x40d
	.4byte	0x97
	.4byte	.LLST103
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x40f
	.4byte	0x25
	.4byte	.LLST104
	.uleb128 0x32
	.string	"cur"
	.byte	0x1
	.2byte	0x417
	.4byte	0x48
	.4byte	.LLST105
	.uleb128 0x35
	.4byte	.LASF279
	.4byte	0x216e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.14491
	.byte	0x0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x4b1
	.byte	0x1
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST106
	.4byte	0x20df
	.uleb128 0x38
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x4b0
	.4byte	0xad
	.4byte	.LLST107
	.byte	0x0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x452
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST108
	.4byte	0x210a
	.uleb128 0x38
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x451
	.4byte	0xad
	.4byte	.LLST109
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x3ff
	.byte	0x1
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST110
	.4byte	0x2134
	.uleb128 0x2e
	.string	"ptr"
	.byte	0x1
	.2byte	0x3fe
	.4byte	0x134c
	.4byte	.LLST111
	.byte	0x0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x408
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST112
	.uleb128 0xc
	.4byte	0x74
	.4byte	0x2159
	.uleb128 0xd
	.4byte	0x37
	.byte	0xb
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x2149
	.uleb128 0xc
	.4byte	0x74
	.4byte	0x216e
	.uleb128 0xd
	.4byte	0x37
	.byte	0x4
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x215e
	.uleb128 0xc
	.4byte	0x74
	.4byte	0x2183
	.uleb128 0xd
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x2173
	.uleb128 0x3e
	.4byte	0x2149
	.uleb128 0x3f
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x3d3
	.4byte	0x1278
	.byte	0x5
	.byte	0x3
	.4byte	attribStack
	.uleb128 0x3f
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x3d4
	.4byte	0x1278
	.byte	0x5
	.byte	0x3
	.4byte	clientAttribStack
	.uleb128 0x40
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x3d5
	.4byte	0x21bf
	.2byte	0x400
	.uleb128 0x3e
	.4byte	0x25
	.uleb128 0x41
	.4byte	.LASF295
	.byte	0x7
	.byte	0x3c
	.4byte	0x2ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x41
	.4byte	.LASF296
	.byte	0x7
	.byte	0x3d
	.4byte	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0x41
	.4byte	.LASF297
	.byte	0x7
	.byte	0x3e
	.4byte	0x92f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x41
	.4byte	.LASF235
	.byte	0x7
	.byte	0x4a
	.4byte	0x307
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x41
	.4byte	.LASF236
	.byte	0x7
	.byte	0x4b
	.4byte	0x307
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0x42
	.string	"tex"
	.byte	0x7
	.byte	0x4c
	.4byte	0x1307
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x41
	.4byte	.LASF104
	.byte	0x7
	.byte	0x4d
	.4byte	0x307
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xc
	.4byte	0x16b
	.4byte	0x2253
	.uleb128 0x43
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x41
	.4byte	.LASF298
	.byte	0x7
	.byte	0x4f
	.4byte	0x2242
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x41
	.4byte	.LASF299
	.byte	0x7
	.byte	0x50
	.4byte	0x2242
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xc
	.4byte	0x267
	.4byte	0x228e
	.uleb128 0xd
	.4byte	0x37
	.byte	0x7
	.uleb128 0x43
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x41
	.4byte	.LASF300
	.byte	0x7
	.byte	0x51
	.4byte	0x2277
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xc
	.4byte	0x2ab
	.4byte	0x22b1
	.uleb128 0x43
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x41
	.4byte	.LASF301
	.byte	0x7
	.byte	0x52
	.4byte	0x22a0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x41
	.4byte	.LASF302
	.byte	0x7
	.byte	0x5c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x41
	.4byte	.LASF303
	.byte	0x7
	.byte	0x5d
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x41
	.4byte	.LASF304
	.byte	0x7
	.byte	0x5e
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x41
	.4byte	.LASF305
	.byte	0x7
	.byte	0x60
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x41
	.4byte	.LASF306
	.byte	0x7
	.byte	0x61
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x41
	.4byte	.LASF307
	.byte	0x7
	.byte	0x6a
	.4byte	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x41
	.4byte	.LASF308
	.byte	0x7
	.byte	0x6b
	.4byte	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x41
	.4byte	.LASF309
	.byte	0x7
	.byte	0x6c
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x41
	.4byte	.LASF310
	.byte	0x7
	.byte	0x6d
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x41
	.4byte	.LASF311
	.byte	0x7
	.byte	0x79
	.4byte	0x357
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x41
	.4byte	.LASF312
	.byte	0x7
	.byte	0x7a
	.4byte	0x357
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xc
	.4byte	0x357
	.4byte	0x2399
	.uleb128 0xd
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x41
	.4byte	.LASF313
	.byte	0x7
	.byte	0x7b
	.4byte	0x2389
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x41
	.4byte	.LASF314
	.byte	0x7
	.byte	0x7c
	.4byte	0x23bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x11
	.byte	0x4
	.4byte	0x357
	.uleb128 0x41
	.4byte	.LASF315
	.byte	0x7
	.byte	0x7d
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0x41
	.4byte	.LASF149
	.byte	0x7
	.byte	0x98
	.4byte	0xcbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x41
	.4byte	.LASF316
	.byte	0x7
	.byte	0x9b
	.4byte	0x2ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x41
	.4byte	.LASF317
	.byte	0x7
	.byte	0xa8
	.4byte	0x47b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x41
	.4byte	.LASF318
	.byte	0x7
	.byte	0xab
	.4byte	0x11a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x41
	.4byte	.LASF319
	.byte	0x7
	.byte	0xac
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x41
	.4byte	.LASF150
	.byte	0x7
	.byte	0xb0
	.4byte	0x11a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x41
	.4byte	.LASF122
	.byte	0x7
	.byte	0xb7
	.4byte	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x41
	.4byte	.LASF123
	.byte	0x7
	.byte	0xb8
	.4byte	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x41
	.4byte	.LASF124
	.byte	0x7
	.byte	0xb9
	.4byte	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x41
	.4byte	.LASF125
	.byte	0x7
	.byte	0xba
	.4byte	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x41
	.4byte	.LASF200
	.byte	0x7
	.byte	0xbc
	.4byte	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x41
	.4byte	.LASF320
	.byte	0x7
	.byte	0xc5
	.4byte	0x4a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x41
	.4byte	.LASF321
	.byte	0x7
	.byte	0xef
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x41
	.4byte	.LASF322
	.byte	0x7
	.byte	0xf0
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x41
	.4byte	.LASF160
	.byte	0x7
	.byte	0xf1
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x41
	.4byte	.LASF323
	.byte	0x7
	.byte	0xf2
	.4byte	0x4f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x41
	.4byte	.LASF324
	.byte	0x7
	.byte	0xf3
	.4byte	0x4f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x41
	.4byte	.LASF325
	.byte	0x7
	.byte	0xf4
	.4byte	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x41
	.4byte	.LASF326
	.byte	0x7
	.byte	0xf5
	.4byte	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x41
	.4byte	.LASF327
	.byte	0x7
	.byte	0xf7
	.4byte	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x41
	.4byte	.LASF196
	.byte	0x7
	.byte	0xf8
	.4byte	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x44
	.4byte	.LASF232
	.byte	0x7
	.2byte	0x104
	.4byte	0x55f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x44
	.4byte	.LASF233
	.byte	0x7
	.2byte	0x105
	.4byte	0x55f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xc
	.4byte	0x11a
	.4byte	0x2585
	.uleb128 0xd
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x44
	.4byte	.LASF328
	.byte	0x7
	.2byte	0x106
	.4byte	0x2575
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x44
	.4byte	.LASF329
	.byte	0x7
	.2byte	0x10c
	.4byte	0x11a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x44
	.4byte	.LASF330
	.byte	0x7
	.2byte	0x10d
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x44
	.4byte	.LASF331
	.byte	0x7
	.2byte	0x110
	.4byte	0x1c8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xc
	.4byte	0x597
	.4byte	0x25e1
	.uleb128 0xd
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x44
	.4byte	.LASF332
	.byte	0x7
	.2byte	0x124
	.4byte	0x25d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x44
	.4byte	.LASF165
	.byte	0x7
	.2byte	0x149
	.4byte	0x11a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x44
	.4byte	.LASF166
	.byte	0x7
	.2byte	0x14a
	.4byte	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x44
	.4byte	.LASF168
	.byte	0x7
	.2byte	0x14b
	.4byte	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x44
	.4byte	.LASF169
	.byte	0x7
	.2byte	0x14c
	.4byte	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x44
	.4byte	.LASF167
	.byte	0x7
	.2byte	0x14d
	.4byte	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x44
	.4byte	.LASF171
	.byte	0x7
	.2byte	0x14e
	.4byte	0x1c8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0x44
	.4byte	.LASF333
	.byte	0x7
	.2byte	0x150
	.4byte	0x1088
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x44
	.4byte	.LASF334
	.byte	0x7
	.2byte	0x155
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x44
	.4byte	.LASF335
	.byte	0x7
	.2byte	0x158
	.4byte	0xce
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0xc
	.4byte	0x1203
	.4byte	0x26af
	.uleb128 0xd
	.4byte	0x37
	.byte	0x13
	.byte	0x0
	.uleb128 0x44
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x3b3
	.4byte	0x269f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	attribs
	.uleb128 0xc
	.4byte	0x1203
	.4byte	0x26d2
	.uleb128 0xd
	.4byte	0x37
	.byte	0x1
	.byte	0x0
	.uleb128 0x44
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x4ab
	.4byte	0x26c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	clientAttribs
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x4
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1d
	.uleb128 0x16
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x6
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
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
	.4byte	0x43c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x26e6
	.4byte	0x1f8c
	.string	"glPopClientAttrib"
	.4byte	0x1fa2
	.string	"glPopAttrib"
	.4byte	0x20b4
	.string	"glPushClientAttrib"
	.4byte	0x20df
	.string	"glPushAttrib"
	.4byte	0x2134
	.string	"_glInitStacks"
	.4byte	0x21c4
	.string	"_tempcolorelement"
	.4byte	0x21d6
	.string	"_tempnormalelement"
	.4byte	0x21e8
	.string	"_temptexcoordelement"
	.4byte	0x21fa
	.string	"norm"
	.4byte	0x220c
	.string	"vert"
	.4byte	0x221e
	.string	"tex"
	.4byte	0x2230
	.string	"color"
	.4byte	0x2253
	.string	"_normalelements"
	.4byte	0x2265
	.string	"_vertexelements"
	.4byte	0x228e
	.string	"_texcoordelements"
	.4byte	0x22b1
	.string	"_colorelements"
	.4byte	0x22c3
	.string	"vert_i"
	.4byte	0x22d5
	.string	"_type"
	.4byte	0x22e7
	.string	"_GLtype"
	.4byte	0x22f9
	.string	"cur_tex"
	.4byte	0x230b
	.string	"cur_tex_client"
	.4byte	0x231d
	.string	"depthtestenabled"
	.4byte	0x232f
	.string	"depthupdate"
	.4byte	0x2341
	.string	"depthfunction"
	.4byte	0x2353
	.string	"_cleardepth"
	.4byte	0x2365
	.string	"model_stack"
	.4byte	0x2377
	.string	"projection_stack"
	.4byte	0x2399
	.string	"texture_stack"
	.4byte	0x23ab
	.string	"curmtx"
	.4byte	0x23c3
	.string	"cur_mode"
	.4byte	0x23d5
	.string	"lights"
	.4byte	0x23e7
	.string	"globAmbient"
	.4byte	0x23f9
	.string	"curmat"
	.4byte	0x240b
	.string	"gxcullfaceanabled"
	.4byte	0x241d
	.string	"gxwinding"
	.4byte	0x242f
	.string	"lighting"
	.4byte	0x2441
	.string	"blend_type"
	.4byte	0x2453
	.string	"blend_src"
	.4byte	0x2465
	.string	"blend_dst"
	.4byte	0x2477
	.string	"blend_op"
	.4byte	0x2489
	.string	"cull_mode"
	.4byte	0x249b
	.string	"cur_state"
	.4byte	0x24ad
	.string	"fb_max_height"
	.4byte	0x24bf
	.string	"fb_max_width"
	.4byte	0x24d1
	.string	"scissor_test"
	.4byte	0x24e3
	.string	"scissorInfo"
	.4byte	0x24f5
	.string	"viewPort"
	.4byte	0x2507
	.string	"normNear"
	.4byte	0x2519
	.string	"normFar"
	.4byte	0x252b
	.string	"line_width"
	.4byte	0x253d
	.string	"point_size"
	.4byte	0x254f
	.string	"pack"
	.4byte	0x2562
	.string	"unpack"
	.4byte	0x2585
	.string	"color_write_mask"
	.4byte	0x2598
	.string	"copy_mat_enabled"
	.4byte	0x25ab
	.string	"copy_material"
	.4byte	0x25be
	.string	"_clearcolor"
	.4byte	0x25e1
	.string	"Trans"
	.4byte	0x25f4
	.string	"fog_enable"
	.4byte	0x2607
	.string	"fog_mode"
	.4byte	0x261a
	.string	"fog_startz"
	.4byte	0x262d
	.string	"fog_endz"
	.4byte	0x2640
	.string	"fog_density"
	.4byte	0x2653
	.string	"fog_color"
	.4byte	0x2666
	.string	"glTexEnvs"
	.4byte	0x2679
	.string	"read_mode"
	.4byte	0x268c
	.string	"call_offset"
	.4byte	0x26af
	.string	"attribs"
	.4byte	0x26d2
	.string	"clientAttribs"
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
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF181:
	.string	"list_base"
.LASF271:
	.string	"pushViewport"
.LASF191:
	.string	"index_shift"
.LASF8:
	.string	"char"
.LASF219:
	.string	"planes"
.LASF316:
	.string	"globAmbient"
.LASF17:
	.string	"GLint"
.LASF55:
	.string	"quad_t"
.LASF65:
	.string	"boxInfo"
.LASF262:
	.string	"popPolyStipple"
.LASF279:
	.string	"__FUNCTION__"
.LASF340:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF18:
	.string	"GLushort"
.LASF109:
	.string	"accum_clear"
.LASF313:
	.string	"texture_stack"
.LASF214:
	.string	"clear_val"
.LASF320:
	.string	"cur_state"
.LASF252:
	.string	"popLighting"
.LASF269:
	.string	"pushTransform"
.LASF321:
	.string	"fb_max_height"
.LASF213:
	.string	"zpass"
.LASF0:
	.string	"unsigned int"
.LASF298:
	.string	"_normalelements"
.LASF190:
	.string	"index_offset"
.LASF174:
	.string	"color_material_face"
.LASF57:
	.string	"_mat"
.LASF199:
	.string	"poly_stipple"
.LASF144:
	.string	"auto_normal"
.LASF120:
	.string	"alpha_func"
.LASF50:
	.string	"specular"
.LASF134:
	.string	"tex_coords"
.LASF187:
	.string	"blue"
.LASF164:
	.string	"eval"
.LASF257:
	.string	"pushPixelMode"
.LASF102:
	.string	"Aarg"
.LASF114:
	.string	"index_logic_op"
.LASF198:
	.string	"cull_ccw"
.LASF76:
	.string	"_trans"
.LASF52:
	.string	"spotCutoff"
.LASF71:
	.string	"row_length"
.LASF86:
	.string	"_tex_env"
.LASF317:
	.string	"curmat"
.LASF110:
	.string	"color_buffer"
.LASF278:
	.string	"pushPolygon"
.LASF331:
	.string	"_clearcolor"
.LASF92:
	.string	"maxlod"
.LASF61:
	.string	"GL_STATE_NONE"
.LASF288:
	.string	"new_size"
.LASF127:
	.string	"draw_buffer"
.LASF154:
	.string	"point_smooth"
.LASF246:
	.string	"popEval"
.LASF30:
	.string	"_gx_litobj"
.LASF59:
	.string	"shininess"
.LASF292:
	.string	"attribStack"
.LASF299:
	.string	"_vertexelements"
.LASF34:
	.string	"GXColorf"
.LASF101:
	.string	"CargOp"
.LASF111:
	.string	"alpha_test"
.LASF236:
	.string	"vert"
.LASF293:
	.string	"clientAttribStack"
.LASF310:
	.string	"_cleardepth"
.LASF49:
	.string	"diffuse"
.LASF296:
	.string	"_tempnormalelement"
.LASF306:
	.string	"cur_tex_client"
.LASF244:
	.string	"popDepthBuffer"
.LASF224:
	.string	"pushFun"
.LASF166:
	.string	"fog_mode"
.LASF169:
	.string	"fog_endz"
.LASF303:
	.string	"_type"
.LASF201:
	.string	"front_poly_mode"
.LASF11:
	.string	"float"
.LASF138:
	.string	"raster_tex_coords"
.LASF284:
	.string	"n_opts"
.LASF157:
	.string	"polygon_offset_point"
.LASF182:
	.string	"base"
.LASF132:
	.string	"index"
.LASF78:
	.string	"bias"
.LASF29:
	.string	"GXColor"
.LASF227:
	.string	"push"
.LASF327:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF276:
	.string	"popVertexArray"
.LASF184:
	.string	"map_color"
.LASF332:
	.string	"Trans"
.LASF217:
	.string	"plane_equ"
.LASF232:
	.string	"pack"
.LASF58:
	.string	"emissive"
.LASF226:
	.string	"AttribOpt"
.LASF87:
	.string	"min_filter"
.LASF162:
	.string	"texture_1d"
.LASF311:
	.string	"model_stack"
.LASF237:
	.string	"pushAccum"
.LASF100:
	.string	"Carg"
.LASF188:
	.string	"alpha"
.LASF36:
	.string	"enable"
.LASF333:
	.string	"glTexEnvs"
.LASF126:
	.string	"blend_const_color"
.LASF266:
	.string	"popStencil"
.LASF108:
	.string	"accum_buffer"
.LASF122:
	.string	"blend_type"
.LASF243:
	.string	"pushDepthBuffer"
.LASF261:
	.string	"pushPolyStipple"
.LASF230:
	.string	"typeCur"
.LASF264:
	.string	"popScissor"
.LASF207:
	.string	"stencil"
.LASF171:
	.string	"fog_color"
.LASF192:
	.string	"zoom_x"
.LASF193:
	.string	"zoom_y"
.LASF13:
	.string	"size_t"
.LASF205:
	.string	"scissor"
.LASF66:
	.string	"width"
.LASF234:
	.string	"vertex_array"
.LASF329:
	.string	"copy_mat_enabled"
.LASF239:
	.string	"popAccum"
.LASF240:
	.string	"popColorBuffer"
.LASF209:
	.string	"func"
.LASF305:
	.string	"cur_tex"
.LASF97:
	.string	"mode"
.LASF79:
	.string	"ColorTrans"
.LASF218:
	.string	"transform"
.LASF99:
	.string	"comAlpha"
.LASF304:
	.string	"_GLtype"
.LASF228:
	.string	"attribStack_t"
.LASF163:
	.string	"texture_2d"
.LASF128:
	.string	"clear_color"
.LASF275:
	.string	"pushVertexArray"
.LASF287:
	.string	"resizeStack"
.LASF196:
	.string	"point_size"
.LASF268:
	.string	"popTexture"
.LASF180:
	.string	"stipple_pattern"
.LASF336:
	.string	"attribs"
.LASF326:
	.string	"normFar"
.LASF21:
	.string	"GLfloat"
.LASF25:
	.string	"true"
.LASF330:
	.string	"copy_material"
.LASF215:
	.string	"texture"
.LASF208:
	.string	"stencil_write"
.LASF175:
	.string	"color_material_param"
.LASF63:
	.string	"GL_STATE_NEWLIST"
.LASF258:
	.string	"popPixelMode"
.LASF161:
	.string	"stencil_test"
.LASF286:
	.string	"glPopAttrib"
.LASF248:
	.string	"popFog"
.LASF112:
	.string	"dither"
.LASF48:
	.string	"ambient"
.LASF323:
	.string	"scissorInfo"
.LASF319:
	.string	"gxwinding"
.LASF280:
	.string	"popEnable"
.LASF290:
	.string	"glPushAttrib"
.LASF113:
	.string	"color_logic_op"
.LASF31:
	.string	"GXLightObj"
.LASF256:
	.string	"popListBase"
.LASF251:
	.string	"pushLighting"
.LASF238:
	.string	"pushColorBuffer"
.LASF121:
	.string	"alpha_ref"
.LASF152:
	.string	"line_stipple"
.LASF123:
	.string	"blend_src"
.LASF60:
	.string	"Material"
.LASF309:
	.string	"depthfunction"
.LASF107:
	.string	"glTexEnvSet"
.LASF160:
	.string	"scissor_test"
.LASF137:
	.string	"raster_color"
.LASF312:
	.string	"projection_stack"
.LASF84:
	.string	"TRAN_B"
.LASF301:
	.string	"_colorelements"
.LASF119:
	.string	"logic_op"
.LASF27:
	.string	"_vecf"
.LASF145:
	.string	"blend"
.LASF69:
	.string	"swap"
.LASF5:
	.string	"long long int"
.LASF40:
	.string	"VertexArray"
.LASF19:
	.string	"GLuint"
.LASF277:
	.string	"popPolygon"
.LASF62:
	.string	"GL_STATE_BEGIN"
.LASF189:
	.string	"depth"
.LASF334:
	.string	"read_mode"
.LASF43:
	.string	"elem_size"
.LASF273:
	.string	"pushPixelStore"
.LASF341:
	.string	"stackEnd"
.LASF64:
	.string	"glState"
.LASF143:
	.string	"depth_clear"
.LASF53:
	.string	"constant"
.LASF185:
	.string	"map_stencil"
.LASF165:
	.string	"fog_enable"
.LASF16:
	.string	"GLbitfield"
.LASF23:
	.string	"bool"
.LASF118:
	.string	"alpha_mask"
.LASF32:
	.string	"VertexElement"
.LASF77:
	.string	"scale"
.LASF94:
	.string	"biasclamp"
.LASF85:
	.string	"TRAN_A"
.LASF172:
	.string	"hint"
.LASF272:
	.string	"popViewport"
.LASF241:
	.string	"pushCurrent"
.LASF22:
	.string	"GLclampf"
.LASF83:
	.string	"TRAN_G"
.LASF308:
	.string	"depthupdate"
.LASF176:
	.string	"Ambient"
.LASF38:
	.string	"size"
.LASF82:
	.string	"TRAN_R"
.LASF139:
	.string	"depth_buffer"
.LASF56:
	.string	"LightObj"
.LASF222:
	.string	"near"
.LASF253:
	.string	"pushLine"
.LASF89:
	.string	"wrap_s"
.LASF90:
	.string	"wrap_t"
.LASF54:
	.string	"linear"
.LASF210:
	.string	"mask"
.LASF124:
	.string	"blend_dst"
.LASF115:
	.string	"red_mask"
.LASF300:
	.string	"_texcoordelements"
.LASF67:
	.string	"height"
.LASF289:
	.string	"glPushClientAttrib"
.LASF328:
	.string	"color_write_mask"
.LASF250:
	.string	"popHint"
.LASF151:
	.string	"line_smooth"
.LASF315:
	.string	"cur_mode"
.LASF282:
	.string	"pushEnable"
.LASF314:
	.string	"curmtx"
.LASF342:
	.string	"_glInitStacks"
.LASF297:
	.string	"_temptexcoordelement"
.LASF186:
	.string	"green"
.LASF12:
	.string	"long double"
.LASF270:
	.string	"popTransform"
.LASF212:
	.string	"zfail"
.LASF235:
	.string	"norm"
.LASF233:
	.string	"unpack"
.LASF47:
	.string	"spotDir"
.LASF35:
	.string	"_array"
.LASF231:
	.string	"pixel_store"
.LASF267:
	.string	"pushTexture"
.LASF51:
	.string	"spotExponent"
.LASF337:
	.string	"clientAttribs"
.LASF281:
	.string	"tex2d"
.LASF183:
	.string	"pixel_mode"
.LASF93:
	.string	"lodbias"
.LASF149:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF91:
	.string	"minlod"
.LASF88:
	.string	"max_filter"
.LASF9:
	.string	"long int"
.LASF202:
	.string	"back_poly_mode"
.LASF117:
	.string	"blue_mask"
.LASF142:
	.string	"depth_func"
.LASF285:
	.string	"glPopClientAttrib"
.LASF291:
	.string	"initStack"
.LASF14:
	.string	"GLenum"
.LASF153:
	.string	"normalize"
.LASF45:
	.string	"_light"
.LASF104:
	.string	"color"
.LASF20:
	.string	"GLsizei"
.LASF221:
	.string	"viewport"
.LASF335:
	.string	"call_offset"
.LASF295:
	.string	"_tempcolorelement"
.LASF73:
	.string	"skip_pixels"
.LASF28:
	.string	"_gx_color"
.LASF96:
	.string	"maxaniso"
.LASF147:
	.string	"cull_face"
.LASF283:
	.string	"opts"
.LASF140:
	.string	"depth_test"
.LASF167:
	.string	"fog_density"
.LASF37:
	.string	"stride"
.LASF150:
	.string	"lighting"
.LASF179:
	.string	"stipple_factor"
.LASF158:
	.string	"polygon_smooth"
.LASF159:
	.string	"polygon_stipple"
.LASF194:
	.string	"read_buffer"
.LASF249:
	.string	"pushHint"
.LASF7:
	.string	"long unsigned int"
.LASF225:
	.string	"popFun"
.LASF255:
	.string	"pushListBase"
.LASF135:
	.string	"raster_pos"
.LASF247:
	.string	"pushFog"
.LASF125:
	.string	"blend_op"
.LASF168:
	.string	"fog_startz"
.LASF155:
	.string	"polygon_offset_line"
.LASF75:
	.string	"pixelStore"
.LASF220:
	.string	"mat_mode"
.LASF294:
	.string	"init_size"
.LASF170:
	.string	"fog_index"
.LASF141:
	.string	"depth_write"
.LASF133:
	.string	"normal"
.LASF338:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF39:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF216:
	.string	"glTexEnv"
.LASF46:
	.string	"enabled"
.LASF72:
	.string	"skip_rows"
.LASF178:
	.string	"line"
.LASF245:
	.string	"pushEval"
.LASF24:
	.string	"false"
.LASF302:
	.string	"vert_i"
.LASF70:
	.string	"lsb_first"
.LASF106:
	.string	"alpha_scale"
.LASF197:
	.string	"polygon"
.LASF81:
	.string	"transfer_enum"
.LASF148:
	.string	"clip_planes"
.LASF26:
	.string	"Vector"
.LASF339:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl_stacks.c"
.LASF98:
	.string	"comRGB"
.LASF322:
	.string	"fb_max_width"
.LASF211:
	.string	"fail"
.LASF325:
	.string	"normNear"
.LASF254:
	.string	"popLine"
.LASF307:
	.string	"depthtestenabled"
.LASF116:
	.string	"green_mask"
.LASF95:
	.string	"edgelod"
.LASF318:
	.string	"gxcullfaceanabled"
.LASF259:
	.string	"pushPoint"
.LASF204:
	.string	"units"
.LASF41:
	.string	"_stack"
.LASF223:
	.string	"viewBox"
.LASF3:
	.string	"signed char"
.LASF44:
	.string	"Stack"
.LASF242:
	.string	"popCurrent"
.LASF2:
	.string	"short unsigned int"
.LASF42:
	.string	"begin"
.LASF156:
	.string	"polygon_offset_fill"
.LASF265:
	.string	"pushStencil"
.LASF206:
	.string	"scissor_box"
.LASF129:
	.string	"current"
.LASF195:
	.string	"point"
.LASF263:
	.string	"pushScissor"
.LASF10:
	.string	"double"
.LASF74:
	.string	"alignment"
.LASF260:
	.string	"popPoint"
.LASF274:
	.string	"popPixelStore"
.LASF33:
	.string	"TexCoordElement"
.LASF203:
	.string	"factor"
.LASF15:
	.string	"GLboolean"
.LASF105:
	.string	"rgb_scale"
.LASF136:
	.string	"raster_index"
.LASF80:
	.string	"_glState"
.LASF177:
	.string	"shade_model"
.LASF146:
	.string	"color_material"
.LASF68:
	.string	"_pixelStore"
.LASF229:
	.string	"typeStack"
.LASF131:
	.string	"edge_flag"
.LASF324:
	.string	"viewPort"
.LASF130:
	.string	"raster_valid"
.LASF200:
	.string	"cull_mode"
.LASF173:
	.string	"lighting_stuff"
.LASF103:
	.string	"AargOp"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
