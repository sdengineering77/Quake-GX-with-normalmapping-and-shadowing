	.file	"gl_render.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	UploadVertexPT0_Array, @function
UploadVertexPT0_Array:
.LFB82:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_render.c"
	.loc 1 570 0
	.cfi_startproc
.LVL0:
.LBB4327:
.LBB4328:
	.file 2 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4328:
.LBE4327:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL1:
.LBB4331:
.LBB4329:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4329:
.LBE4331:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
.LBB4332:
.LBB4330:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL2:
.LBE4330:
.LBE4332:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL3:
.LBB4333:
.LBB4334:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LBE4334:
.LBE4333:
	.loc 1 570 0
	addi 1,1,24
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE82:
	.size	UploadVertexPT0_Array, .-UploadVertexPT0_Array
	.align 2
	.type	UploadVertexPT1_Array, @function
UploadVertexPT1_Array:
.LFB83:
	.loc 1 570 0
	.cfi_startproc
.LVL4:
.LBB4335:
.LBB4336:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4336:
.LBE4335:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL5:
.LBB4339:
.LBB4337:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4337:
.LBE4339:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI2:
	.cfi_def_cfa_offset 24
.LBB4340:
.LBB4338:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL6:
.LBE4338:
.LBE4340:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL7:
.LBB4341:
.LBB4342:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL8:
.LBE4342:
.LBE4341:
.LBB4343:
.LBB4344:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4344:
.LBE4343:
	.loc 1 570 0
	addi 1,1,24
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE83:
	.size	UploadVertexPT1_Array, .-UploadVertexPT1_Array
	.section	.text.unlikely,"ax",@progbits
	.align 2
	.type	UploadVertexPT2_Array, @function
UploadVertexPT2_Array:
.LFB84:
	.loc 1 570 0
	.cfi_startproc
.LVL9:
.LBB4345:
.LBB4346:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4346:
.LBE4345:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL10:
.LBB4349:
.LBB4347:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4347:
.LBE4349:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI4:
	.cfi_def_cfa_offset 24
.LBB4350:
.LBB4348:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL11:
.LBE4348:
.LBE4350:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL12:
.LBB4351:
.LBB4352:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL13:
.LBE4352:
.LBE4351:
.LBB4353:
.LBB4354:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL14:
.LBE4354:
.LBE4353:
.LBB4355:
.LBB4356:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4356:
.LBE4355:
	.loc 1 570 0
	addi 1,1,24
.LCFI5:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE84:
	.size	UploadVertexPT2_Array, .-UploadVertexPT2_Array
	.align 2
	.type	UploadVertexPT3_Array, @function
UploadVertexPT3_Array:
.LFB85:
	.loc 1 570 0
	.cfi_startproc
.LVL15:
.LBB4357:
.LBB4358:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4358:
.LBE4357:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL16:
.LBB4361:
.LBB4359:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4359:
.LBE4361:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI6:
	.cfi_def_cfa_offset 24
.LBB4362:
.LBB4360:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL17:
.LBE4360:
.LBE4362:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL18:
.LBB4363:
.LBB4364:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL19:
.LBE4364:
.LBE4363:
.LBB4365:
.LBB4366:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL20:
.LBE4366:
.LBE4365:
.LBB4367:
.LBB4368:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL21:
.LBE4368:
.LBE4367:
.LBB4369:
.LBB4370:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4370:
.LBE4369:
	.loc 1 570 0
	addi 1,1,24
.LCFI7:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE85:
	.size	UploadVertexPT3_Array, .-UploadVertexPT3_Array
	.align 2
	.type	UploadVertexPT4_Array, @function
UploadVertexPT4_Array:
.LFB86:
	.loc 1 570 0
	.cfi_startproc
.LVL22:
.LBB4371:
.LBB4372:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4372:
.LBE4371:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL23:
.LBB4375:
.LBB4373:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4373:
.LBE4375:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI8:
	.cfi_def_cfa_offset 24
.LBB4376:
.LBB4374:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL24:
.LBE4374:
.LBE4376:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL25:
.LBB4377:
.LBB4378:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL26:
.LBE4378:
.LBE4377:
.LBB4379:
.LBB4380:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL27:
.LBE4380:
.LBE4379:
.LBB4381:
.LBB4382:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL28:
.LBE4382:
.LBE4381:
.LBB4383:
.LBB4384:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL29:
.LBE4384:
.LBE4383:
.LBB4385:
.LBB4386:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4386:
.LBE4385:
	.loc 1 570 0
	addi 1,1,24
.LCFI9:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE86:
	.size	UploadVertexPT4_Array, .-UploadVertexPT4_Array
	.align 2
	.type	UploadVertexPT5_Array, @function
UploadVertexPT5_Array:
.LFB87:
	.loc 1 570 0
	.cfi_startproc
.LVL30:
.LBB4387:
.LBB4388:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4388:
.LBE4387:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL31:
.LBB4391:
.LBB4389:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4389:
.LBE4391:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI10:
	.cfi_def_cfa_offset 24
.LBB4392:
.LBB4390:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL32:
.LBE4390:
.LBE4392:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL33:
.LBB4393:
.LBB4394:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL34:
.LBE4394:
.LBE4393:
.LBB4395:
.LBB4396:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL35:
.LBE4396:
.LBE4395:
.LBB4397:
.LBB4398:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL36:
.LBE4398:
.LBE4397:
.LBB4399:
.LBB4400:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL37:
.LBE4400:
.LBE4399:
.LBB4401:
.LBB4402:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL38:
.LBE4402:
.LBE4401:
.LBB4403:
.LBB4404:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4404:
.LBE4403:
	.loc 1 570 0
	addi 1,1,24
.LCFI11:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE87:
	.size	UploadVertexPT5_Array, .-UploadVertexPT5_Array
	.align 2
	.type	UploadVertexPT6_Array, @function
UploadVertexPT6_Array:
.LFB88:
	.loc 1 570 0
	.cfi_startproc
.LVL39:
.LBB4405:
.LBB4406:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4406:
.LBE4405:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL40:
.LBB4409:
.LBB4407:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4407:
.LBE4409:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI12:
	.cfi_def_cfa_offset 24
.LBB4410:
.LBB4408:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL41:
.LBE4408:
.LBE4410:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL42:
.LBB4411:
.LBB4412:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL43:
.LBE4412:
.LBE4411:
.LBB4413:
.LBB4414:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL44:
.LBE4414:
.LBE4413:
.LBB4415:
.LBB4416:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL45:
.LBE4416:
.LBE4415:
.LBB4417:
.LBB4418:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL46:
.LBE4418:
.LBE4417:
.LBB4419:
.LBB4420:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL47:
.LBE4420:
.LBE4419:
.LBB4421:
.LBB4422:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL48:
.LBE4422:
.LBE4421:
.LBB4423:
.LBB4424:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4424:
.LBE4423:
	.loc 1 570 0
	addi 1,1,24
.LCFI13:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE88:
	.size	UploadVertexPT6_Array, .-UploadVertexPT6_Array
	.align 2
	.type	UploadVertexPT7_Array, @function
UploadVertexPT7_Array:
.LFB89:
	.loc 1 570 0
	.cfi_startproc
.LVL49:
.LBB4425:
.LBB4426:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4426:
.LBE4425:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL50:
.LBB4429:
.LBB4427:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4427:
.LBE4429:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI14:
	.cfi_def_cfa_offset 24
.LBB4430:
.LBB4428:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL51:
.LBE4428:
.LBE4430:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL52:
.LBB4431:
.LBB4432:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL53:
.LBE4432:
.LBE4431:
.LBB4433:
.LBB4434:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL54:
.LBE4434:
.LBE4433:
.LBB4435:
.LBB4436:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL55:
.LBE4436:
.LBE4435:
.LBB4437:
.LBB4438:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL56:
.LBE4438:
.LBE4437:
.LBB4439:
.LBB4440:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL57:
.LBE4440:
.LBE4439:
.LBB4441:
.LBB4442:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL58:
.LBE4442:
.LBE4441:
.LBB4443:
.LBB4444:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL59:
.LBE4444:
.LBE4443:
.LBB4445:
.LBB4446:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4446:
.LBE4445:
	.loc 1 570 0
	addi 1,1,24
.LCFI15:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE89:
	.size	UploadVertexPT7_Array, .-UploadVertexPT7_Array
	.section	".text"
	.align 2
	.type	UploadVertexPNT0_Array, @function
UploadVertexPNT0_Array:
.LFB90:
	.loc 1 570 0
	.cfi_startproc
.LVL60:
.LBB4453:
.LBB4454:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4454:
.LBE4453:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL61:
.LBB4457:
.LBB4455:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4455:
.LBE4457:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI16:
	.cfi_def_cfa_offset 24
.LBB4458:
.LBB4456:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL62:
.LBE4456:
.LBE4458:
.LBB4459:
.LBB4460:
	.loc 2 2261 0
	sth 3,0(9)
	.loc 2 2262 0
.LVL63:
.LBE4460:
.LBE4459:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL64:
.LBB4461:
.LBB4462:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LBE4462:
.LBE4461:
	.loc 1 570 0
	addi 1,1,24
.LCFI17:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE90:
	.size	UploadVertexPNT0_Array, .-UploadVertexPNT0_Array
	.section	.text.unlikely
	.align 2
	.type	UploadVertexPNT1_Array, @function
UploadVertexPNT1_Array:
.LFB91:
	.loc 1 570 0
	.cfi_startproc
.LVL65:
.LBB4463:
.LBB4464:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4464:
.LBE4463:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL66:
.LBB4467:
.LBB4465:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4465:
.LBE4467:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI18:
	.cfi_def_cfa_offset 24
.LBB4468:
.LBB4466:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL67:
.LBE4466:
.LBE4468:
.LBB4469:
.LBB4470:
	.loc 2 2261 0
	sth 3,0(9)
	.loc 2 2262 0
.LVL68:
.LBE4470:
.LBE4469:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL69:
.LBB4471:
.LBB4472:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL70:
.LBE4472:
.LBE4471:
.LBB4473:
.LBB4474:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4474:
.LBE4473:
	.loc 1 570 0
	addi 1,1,24
.LCFI19:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE91:
	.size	UploadVertexPNT1_Array, .-UploadVertexPNT1_Array
	.align 2
	.type	UploadVertexPNT2_Array, @function
UploadVertexPNT2_Array:
.LFB92:
	.loc 1 570 0
	.cfi_startproc
.LVL71:
.LBB4475:
.LBB4476:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4476:
.LBE4475:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL72:
.LBB4479:
.LBB4477:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4477:
.LBE4479:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI20:
	.cfi_def_cfa_offset 24
.LBB4480:
.LBB4478:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL73:
.LBE4478:
.LBE4480:
.LBB4481:
.LBB4482:
	.loc 2 2261 0
	sth 3,0(9)
	.loc 2 2262 0
.LVL74:
.LBE4482:
.LBE4481:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL75:
.LBB4483:
.LBB4484:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL76:
.LBE4484:
.LBE4483:
.LBB4485:
.LBB4486:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL77:
.LBE4486:
.LBE4485:
.LBB4487:
.LBB4488:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4488:
.LBE4487:
	.loc 1 570 0
	addi 1,1,24
.LCFI21:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE92:
	.size	UploadVertexPNT2_Array, .-UploadVertexPNT2_Array
	.align 2
	.type	UploadVertexPNT3_Array, @function
UploadVertexPNT3_Array:
.LFB93:
	.loc 1 570 0
	.cfi_startproc
.LVL78:
.LBB4489:
.LBB4490:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4490:
.LBE4489:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL79:
.LBB4493:
.LBB4491:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4491:
.LBE4493:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI22:
	.cfi_def_cfa_offset 24
.LBB4494:
.LBB4492:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL80:
.LBE4492:
.LBE4494:
.LBB4495:
.LBB4496:
	.loc 2 2261 0
	sth 3,0(9)
	.loc 2 2262 0
.LVL81:
.LBE4496:
.LBE4495:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL82:
.LBB4497:
.LBB4498:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL83:
.LBE4498:
.LBE4497:
.LBB4499:
.LBB4500:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL84:
.LBE4500:
.LBE4499:
.LBB4501:
.LBB4502:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL85:
.LBE4502:
.LBE4501:
.LBB4503:
.LBB4504:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4504:
.LBE4503:
	.loc 1 570 0
	addi 1,1,24
.LCFI23:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE93:
	.size	UploadVertexPNT3_Array, .-UploadVertexPNT3_Array
	.align 2
	.type	UploadVertexPNT4_Array, @function
UploadVertexPNT4_Array:
.LFB94:
	.loc 1 570 0
	.cfi_startproc
.LVL86:
.LBB4505:
.LBB4506:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4506:
.LBE4505:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL87:
.LBB4509:
.LBB4507:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4507:
.LBE4509:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI24:
	.cfi_def_cfa_offset 24
.LBB4510:
.LBB4508:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL88:
.LBE4508:
.LBE4510:
.LBB4511:
.LBB4512:
	.loc 2 2261 0
	sth 3,0(9)
	.loc 2 2262 0
.LVL89:
.LBE4512:
.LBE4511:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL90:
.LBB4513:
.LBB4514:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL91:
.LBE4514:
.LBE4513:
.LBB4515:
.LBB4516:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL92:
.LBE4516:
.LBE4515:
.LBB4517:
.LBB4518:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL93:
.LBE4518:
.LBE4517:
.LBB4519:
.LBB4520:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL94:
.LBE4520:
.LBE4519:
.LBB4521:
.LBB4522:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4522:
.LBE4521:
	.loc 1 570 0
	addi 1,1,24
.LCFI25:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE94:
	.size	UploadVertexPNT4_Array, .-UploadVertexPNT4_Array
	.align 2
	.type	UploadVertexPNT5_Array, @function
UploadVertexPNT5_Array:
.LFB95:
	.loc 1 570 0
	.cfi_startproc
.LVL95:
.LBB4523:
.LBB4524:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4524:
.LBE4523:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL96:
.LBB4527:
.LBB4525:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4525:
.LBE4527:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI26:
	.cfi_def_cfa_offset 24
.LBB4528:
.LBB4526:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL97:
.LBE4526:
.LBE4528:
.LBB4529:
.LBB4530:
	.loc 2 2261 0
	sth 3,0(9)
	.loc 2 2262 0
.LVL98:
.LBE4530:
.LBE4529:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL99:
.LBB4531:
.LBB4532:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL100:
.LBE4532:
.LBE4531:
.LBB4533:
.LBB4534:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL101:
.LBE4534:
.LBE4533:
.LBB4535:
.LBB4536:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL102:
.LBE4536:
.LBE4535:
.LBB4537:
.LBB4538:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL103:
.LBE4538:
.LBE4537:
.LBB4539:
.LBB4540:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL104:
.LBE4540:
.LBE4539:
.LBB4541:
.LBB4542:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4542:
.LBE4541:
	.loc 1 570 0
	addi 1,1,24
.LCFI27:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE95:
	.size	UploadVertexPNT5_Array, .-UploadVertexPNT5_Array
	.align 2
	.type	UploadVertexPNT6_Array, @function
UploadVertexPNT6_Array:
.LFB96:
	.loc 1 570 0
	.cfi_startproc
.LVL105:
.LBB4543:
.LBB4544:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4544:
.LBE4543:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL106:
.LBB4547:
.LBB4545:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4545:
.LBE4547:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI28:
	.cfi_def_cfa_offset 24
.LBB4548:
.LBB4546:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL107:
.LBE4546:
.LBE4548:
.LBB4549:
.LBB4550:
	.loc 2 2261 0
	sth 3,0(9)
	.loc 2 2262 0
.LVL108:
.LBE4550:
.LBE4549:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL109:
.LBB4551:
.LBB4552:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL110:
.LBE4552:
.LBE4551:
.LBB4553:
.LBB4554:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL111:
.LBE4554:
.LBE4553:
.LBB4555:
.LBB4556:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL112:
.LBE4556:
.LBE4555:
.LBB4557:
.LBB4558:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL113:
.LBE4558:
.LBE4557:
.LBB4559:
.LBB4560:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL114:
.LBE4560:
.LBE4559:
.LBB4561:
.LBB4562:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL115:
.LBE4562:
.LBE4561:
.LBB4563:
.LBB4564:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4564:
.LBE4563:
	.loc 1 570 0
	addi 1,1,24
.LCFI29:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE96:
	.size	UploadVertexPNT6_Array, .-UploadVertexPNT6_Array
	.align 2
	.type	UploadVertexPNT7_Array, @function
UploadVertexPNT7_Array:
.LFB97:
	.loc 1 570 0
	.cfi_startproc
.LVL116:
.LBB4565:
.LBB4566:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4566:
.LBE4565:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL117:
.LBB4569:
.LBB4567:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
.LBE4567:
.LBE4569:
	.loc 1 570 0
	stwu 1,-24(1)
.LCFI30:
	.cfi_def_cfa_offset 24
.LBB4570:
.LBB4568:
	.loc 2 2219 0
	sth 3,0(9)
	.loc 2 2220 0
.LVL118:
.LBE4568:
.LBE4570:
.LBB4571:
.LBB4572:
	.loc 2 2261 0
	sth 3,0(9)
	.loc 2 2262 0
.LVL119:
.LBE4572:
.LBE4571:
	.loc 1 570 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL120:
.LBB4573:
.LBB4574:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LVL121:
.LBE4574:
.LBE4573:
.LBB4575:
.LBB4576:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL122:
.LBE4576:
.LBE4575:
.LBB4577:
.LBB4578:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL123:
.LBE4578:
.LBE4577:
.LBB4579:
.LBB4580:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL124:
.LBE4580:
.LBE4579:
.LBB4581:
.LBB4582:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL125:
.LBE4582:
.LBE4581:
.LBB4583:
.LBB4584:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL126:
.LBE4584:
.LBE4583:
.LBB4585:
.LBB4586:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL127:
.LBE4586:
.LBE4585:
.LBB4587:
.LBB4588:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4588:
.LBE4587:
	.loc 1 570 0
	addi 1,1,24
.LCFI31:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE97:
	.size	UploadVertexPNT7_Array, .-UploadVertexPNT7_Array
	.align 2
	.type	UploadVertexPCT5_Array, @function
UploadVertexPCT5_Array:
.LFB103:
	.loc 1 570 0
	.cfi_startproc
.LVL128:
.LBB4589:
.LBB4590:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4590:
.LBE4589:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL129:
.LBB4592:
.LBB4591:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
	sth 3,0(9)
	.loc 2 2220 0
.LVL130:
.LBE4591:
.LBE4592:
.LBB4593:
.LBB4594:
	.loc 2 2317 0
	sth 3,0(9)
	.loc 2 2318 0
.LVL131:
.LBE4594:
.LBE4593:
.LBB4595:
.LBB4596:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL132:
.LBE4596:
.LBE4595:
.LBB4597:
.LBB4598:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL133:
.LBE4598:
.LBE4597:
.LBB4599:
.LBB4600:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL134:
.LBE4600:
.LBE4599:
.LBB4601:
.LBB4602:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL135:
.LBE4602:
.LBE4601:
.LBB4603:
.LBB4604:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4604:
.LBE4603:
	.loc 1 570 0
	blr
	.cfi_endproc
.LFE103:
	.size	UploadVertexPCT5_Array, .-UploadVertexPCT5_Array
	.align 2
	.type	UploadVertexPCT6_Array, @function
UploadVertexPCT6_Array:
.LFB104:
	.loc 1 570 0
	.cfi_startproc
.LVL136:
.LBB4605:
.LBB4606:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4606:
.LBE4605:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL137:
.LBB4608:
.LBB4607:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
	sth 3,0(9)
	.loc 2 2220 0
.LVL138:
.LBE4607:
.LBE4608:
.LBB4609:
.LBB4610:
	.loc 2 2317 0
	sth 3,0(9)
	.loc 2 2318 0
.LVL139:
.LBE4610:
.LBE4609:
.LBB4611:
.LBB4612:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL140:
.LBE4612:
.LBE4611:
.LBB4613:
.LBB4614:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL141:
.LBE4614:
.LBE4613:
.LBB4615:
.LBB4616:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL142:
.LBE4616:
.LBE4615:
.LBB4617:
.LBB4618:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL143:
.LBE4618:
.LBE4617:
.LBB4619:
.LBB4620:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL144:
.LBE4620:
.LBE4619:
.LBB4621:
.LBB4622:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4622:
.LBE4621:
	.loc 1 570 0
	blr
	.cfi_endproc
.LFE104:
	.size	UploadVertexPCT6_Array, .-UploadVertexPCT6_Array
	.align 2
	.type	UploadVertexPCT7_Array, @function
UploadVertexPCT7_Array:
.LFB105:
	.loc 1 570 0
	.cfi_startproc
.LVL145:
.LBB4623:
.LBB4624:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4624:
.LBE4623:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL146:
.LBB4626:
.LBB4625:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
	sth 3,0(9)
	.loc 2 2220 0
.LVL147:
.LBE4625:
.LBE4626:
.LBB4627:
.LBB4628:
	.loc 2 2317 0
	sth 3,0(9)
	.loc 2 2318 0
.LVL148:
.LBE4628:
.LBE4627:
.LBB4629:
.LBB4630:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL149:
.LBE4630:
.LBE4629:
.LBB4631:
.LBB4632:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL150:
.LBE4632:
.LBE4631:
.LBB4633:
.LBB4634:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL151:
.LBE4634:
.LBE4633:
.LBB4635:
.LBB4636:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL152:
.LBE4636:
.LBE4635:
.LBB4637:
.LBB4638:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL153:
.LBE4638:
.LBE4637:
.LBB4639:
.LBB4640:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL154:
.LBE4640:
.LBE4639:
.LBB4641:
.LBB4642:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4642:
.LBE4641:
	.loc 1 570 0
	blr
	.cfi_endproc
.LFE105:
	.size	UploadVertexPCT7_Array, .-UploadVertexPCT7_Array
	.align 2
	.type	UploadVertexPNCT4_Array, @function
UploadVertexPNCT4_Array:
.LFB110:
	.loc 1 570 0
	.cfi_startproc
.LVL155:
.LBB4643:
.LBB4644:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4644:
.LBE4643:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL156:
.LBB4646:
.LBB4645:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
	sth 3,0(9)
	.loc 2 2220 0
.LVL157:
.LBE4645:
.LBE4646:
.LBB4647:
.LBB4648:
	.loc 2 2261 0
	sth 3,0(9)
	.loc 2 2262 0
.LVL158:
.LBE4648:
.LBE4647:
.LBB4649:
.LBB4650:
	.loc 2 2317 0
	sth 3,0(9)
	.loc 2 2318 0
.LVL159:
.LBE4650:
.LBE4649:
.LBB4651:
.LBB4652:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL160:
.LBE4652:
.LBE4651:
.LBB4653:
.LBB4654:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL161:
.LBE4654:
.LBE4653:
.LBB4655:
.LBB4656:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL162:
.LBE4656:
.LBE4655:
.LBB4657:
.LBB4658:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4658:
.LBE4657:
	.loc 1 570 0
	blr
	.cfi_endproc
.LFE110:
	.size	UploadVertexPNCT4_Array, .-UploadVertexPNCT4_Array
	.align 2
	.type	UploadVertexPNCT5_Array, @function
UploadVertexPNCT5_Array:
.LFB111:
	.loc 1 570 0
	.cfi_startproc
.LVL163:
.LBB4659:
.LBB4660:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4660:
.LBE4659:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL164:
.LBB4662:
.LBB4661:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
	sth 3,0(9)
	.loc 2 2220 0
.LVL165:
.LBE4661:
.LBE4662:
.LBB4663:
.LBB4664:
	.loc 2 2261 0
	sth 3,0(9)
	.loc 2 2262 0
.LVL166:
.LBE4664:
.LBE4663:
.LBB4665:
.LBB4666:
	.loc 2 2317 0
	sth 3,0(9)
	.loc 2 2318 0
.LVL167:
.LBE4666:
.LBE4665:
.LBB4667:
.LBB4668:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL168:
.LBE4668:
.LBE4667:
.LBB4669:
.LBB4670:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL169:
.LBE4670:
.LBE4669:
.LBB4671:
.LBB4672:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL170:
.LBE4672:
.LBE4671:
.LBB4673:
.LBB4674:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL171:
.LBE4674:
.LBE4673:
.LBB4675:
.LBB4676:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4676:
.LBE4675:
	.loc 1 570 0
	blr
	.cfi_endproc
.LFE111:
	.size	UploadVertexPNCT5_Array, .-UploadVertexPNCT5_Array
	.align 2
	.type	UploadVertexPNCT6_Array, @function
UploadVertexPNCT6_Array:
.LFB112:
	.loc 1 570 0
	.cfi_startproc
.LVL172:
.LBB4677:
.LBB4678:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4678:
.LBE4677:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL173:
.LBB4680:
.LBB4679:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
	sth 3,0(9)
	.loc 2 2220 0
.LVL174:
.LBE4679:
.LBE4680:
.LBB4681:
.LBB4682:
	.loc 2 2261 0
	sth 3,0(9)
	.loc 2 2262 0
.LVL175:
.LBE4682:
.LBE4681:
.LBB4683:
.LBB4684:
	.loc 2 2317 0
	sth 3,0(9)
	.loc 2 2318 0
.LVL176:
.LBE4684:
.LBE4683:
.LBB4685:
.LBB4686:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL177:
.LBE4686:
.LBE4685:
.LBB4687:
.LBB4688:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL178:
.LBE4688:
.LBE4687:
.LBB4689:
.LBB4690:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL179:
.LBE4690:
.LBE4689:
.LBB4691:
.LBB4692:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL180:
.LBE4692:
.LBE4691:
.LBB4693:
.LBB4694:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL181:
.LBE4694:
.LBE4693:
.LBB4695:
.LBB4696:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4696:
.LBE4695:
	.loc 1 570 0
	blr
	.cfi_endproc
.LFE112:
	.size	UploadVertexPNCT6_Array, .-UploadVertexPNCT6_Array
	.align 2
	.type	UploadVertexPNCT7_Array, @function
UploadVertexPNCT7_Array:
.LFB113:
	.loc 1 570 0
	.cfi_startproc
.LVL182:
.LBB4697:
.LBB4698:
	.loc 2 2219 0
	lis 9,wgPipe@ha
.LBE4698:
.LBE4697:
	.loc 1 570 0
	rlwinm 3,3,0,0xffff
.LVL183:
.LBB4700:
.LBB4699:
	.loc 2 2219 0
	lwz 9,wgPipe@l(9)
	sth 3,0(9)
	.loc 2 2220 0
.LVL184:
.LBE4699:
.LBE4700:
.LBB4701:
.LBB4702:
	.loc 2 2261 0
	sth 3,0(9)
	.loc 2 2262 0
.LVL185:
.LBE4702:
.LBE4701:
.LBB4703:
.LBB4704:
	.loc 2 2317 0
	sth 3,0(9)
	.loc 2 2318 0
.LVL186:
.LBE4704:
.LBE4703:
.LBB4705:
.LBB4706:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL187:
.LBE4706:
.LBE4705:
.LBB4707:
.LBB4708:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL188:
.LBE4708:
.LBE4707:
.LBB4709:
.LBB4710:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL189:
.LBE4710:
.LBE4709:
.LBB4711:
.LBB4712:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL190:
.LBE4712:
.LBE4711:
.LBB4713:
.LBB4714:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL191:
.LBE4714:
.LBE4713:
.LBB4715:
.LBB4716:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LVL192:
.LBE4716:
.LBE4715:
.LBB4717:
.LBB4718:
	.loc 2 2399 0
	sth 3,0(9)
	.loc 2 2400 0
.LBE4718:
.LBE4717:
	.loc 1 570 0
	blr
	.cfi_endproc
.LFE113:
	.size	UploadVertexPNCT7_Array, .-UploadVertexPNCT7_Array
	.align 2
	.type	UploadVertexPT0_ElemGLubyte, @function
UploadVertexPT0_ElemGLubyte:
.LFB114:
	.loc 1 575 0
	.cfi_startproc
.LVL193:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI32:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4719:
.LBB4720:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4720:
.LBE4719:
	.loc 1 575 0
	lbzx 0,3,0
.LVL194:
.LBB4722:
.LBB4721:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL195:
.LBE4721:
.LBE4722:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL196:
.LBB4723:
.LBB4724:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LBE4724:
.LBE4723:
	.loc 1 575 0
	addi 1,1,24
.LCFI33:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE114:
	.size	UploadVertexPT0_ElemGLubyte, .-UploadVertexPT0_ElemGLubyte
	.align 2
	.type	UploadVertexPT1_ElemGLubyte, @function
UploadVertexPT1_ElemGLubyte:
.LFB115:
	.loc 1 575 0
	.cfi_startproc
.LVL197:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI34:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4725:
.LBB4726:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4726:
.LBE4725:
	.loc 1 575 0
	lbzx 0,3,0
.LVL198:
.LBB4728:
.LBB4727:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL199:
.LBE4727:
.LBE4728:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL200:
.LBB4729:
.LBB4730:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL201:
.LBE4730:
.LBE4729:
.LBB4731:
.LBB4732:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4732:
.LBE4731:
	.loc 1 575 0
	addi 1,1,24
.LCFI35:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE115:
	.size	UploadVertexPT1_ElemGLubyte, .-UploadVertexPT1_ElemGLubyte
	.align 2
	.type	UploadVertexPT2_ElemGLubyte, @function
UploadVertexPT2_ElemGLubyte:
.LFB116:
	.loc 1 575 0
	.cfi_startproc
.LVL202:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI36:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4733:
.LBB4734:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4734:
.LBE4733:
	.loc 1 575 0
	lbzx 0,3,0
.LVL203:
.LBB4736:
.LBB4735:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL204:
.LBE4735:
.LBE4736:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL205:
.LBB4737:
.LBB4738:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL206:
.LBE4738:
.LBE4737:
.LBB4739:
.LBB4740:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL207:
.LBE4740:
.LBE4739:
.LBB4741:
.LBB4742:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4742:
.LBE4741:
	.loc 1 575 0
	addi 1,1,24
.LCFI37:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE116:
	.size	UploadVertexPT2_ElemGLubyte, .-UploadVertexPT2_ElemGLubyte
	.align 2
	.type	UploadVertexPT3_ElemGLubyte, @function
UploadVertexPT3_ElemGLubyte:
.LFB117:
	.loc 1 575 0
	.cfi_startproc
.LVL208:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI38:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4743:
.LBB4744:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4744:
.LBE4743:
	.loc 1 575 0
	lbzx 0,3,0
.LVL209:
.LBB4746:
.LBB4745:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL210:
.LBE4745:
.LBE4746:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL211:
.LBB4747:
.LBB4748:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL212:
.LBE4748:
.LBE4747:
.LBB4749:
.LBB4750:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL213:
.LBE4750:
.LBE4749:
.LBB4751:
.LBB4752:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL214:
.LBE4752:
.LBE4751:
.LBB4753:
.LBB4754:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4754:
.LBE4753:
	.loc 1 575 0
	addi 1,1,24
.LCFI39:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE117:
	.size	UploadVertexPT3_ElemGLubyte, .-UploadVertexPT3_ElemGLubyte
	.align 2
	.type	UploadVertexPT4_ElemGLubyte, @function
UploadVertexPT4_ElemGLubyte:
.LFB118:
	.loc 1 575 0
	.cfi_startproc
.LVL215:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI40:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4755:
.LBB4756:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4756:
.LBE4755:
	.loc 1 575 0
	lbzx 0,3,0
.LVL216:
.LBB4758:
.LBB4757:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL217:
.LBE4757:
.LBE4758:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL218:
.LBB4759:
.LBB4760:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL219:
.LBE4760:
.LBE4759:
.LBB4761:
.LBB4762:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL220:
.LBE4762:
.LBE4761:
.LBB4763:
.LBB4764:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL221:
.LBE4764:
.LBE4763:
.LBB4765:
.LBB4766:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL222:
.LBE4766:
.LBE4765:
.LBB4767:
.LBB4768:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4768:
.LBE4767:
	.loc 1 575 0
	addi 1,1,24
.LCFI41:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE118:
	.size	UploadVertexPT4_ElemGLubyte, .-UploadVertexPT4_ElemGLubyte
	.align 2
	.type	UploadVertexPT5_ElemGLubyte, @function
UploadVertexPT5_ElemGLubyte:
.LFB119:
	.loc 1 575 0
	.cfi_startproc
.LVL223:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI42:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4769:
.LBB4770:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4770:
.LBE4769:
	.loc 1 575 0
	lbzx 0,3,0
.LVL224:
.LBB4772:
.LBB4771:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL225:
.LBE4771:
.LBE4772:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL226:
.LBB4773:
.LBB4774:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL227:
.LBE4774:
.LBE4773:
.LBB4775:
.LBB4776:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL228:
.LBE4776:
.LBE4775:
.LBB4777:
.LBB4778:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL229:
.LBE4778:
.LBE4777:
.LBB4779:
.LBB4780:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL230:
.LBE4780:
.LBE4779:
.LBB4781:
.LBB4782:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL231:
.LBE4782:
.LBE4781:
.LBB4783:
.LBB4784:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4784:
.LBE4783:
	.loc 1 575 0
	addi 1,1,24
.LCFI43:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE119:
	.size	UploadVertexPT5_ElemGLubyte, .-UploadVertexPT5_ElemGLubyte
	.align 2
	.type	UploadVertexPT6_ElemGLubyte, @function
UploadVertexPT6_ElemGLubyte:
.LFB120:
	.loc 1 575 0
	.cfi_startproc
.LVL232:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI44:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4785:
.LBB4786:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4786:
.LBE4785:
	.loc 1 575 0
	lbzx 0,3,0
.LVL233:
.LBB4788:
.LBB4787:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL234:
.LBE4787:
.LBE4788:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL235:
.LBB4789:
.LBB4790:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL236:
.LBE4790:
.LBE4789:
.LBB4791:
.LBB4792:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL237:
.LBE4792:
.LBE4791:
.LBB4793:
.LBB4794:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL238:
.LBE4794:
.LBE4793:
.LBB4795:
.LBB4796:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL239:
.LBE4796:
.LBE4795:
.LBB4797:
.LBB4798:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL240:
.LBE4798:
.LBE4797:
.LBB4799:
.LBB4800:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL241:
.LBE4800:
.LBE4799:
.LBB4801:
.LBB4802:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4802:
.LBE4801:
	.loc 1 575 0
	addi 1,1,24
.LCFI45:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE120:
	.size	UploadVertexPT6_ElemGLubyte, .-UploadVertexPT6_ElemGLubyte
	.align 2
	.type	UploadVertexPT7_ElemGLubyte, @function
UploadVertexPT7_ElemGLubyte:
.LFB121:
	.loc 1 575 0
	.cfi_startproc
.LVL242:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI46:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4803:
.LBB4804:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4804:
.LBE4803:
	.loc 1 575 0
	lbzx 0,3,0
.LVL243:
.LBB4806:
.LBB4805:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL244:
.LBE4805:
.LBE4806:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL245:
.LBB4807:
.LBB4808:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL246:
.LBE4808:
.LBE4807:
.LBB4809:
.LBB4810:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL247:
.LBE4810:
.LBE4809:
.LBB4811:
.LBB4812:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL248:
.LBE4812:
.LBE4811:
.LBB4813:
.LBB4814:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL249:
.LBE4814:
.LBE4813:
.LBB4815:
.LBB4816:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL250:
.LBE4816:
.LBE4815:
.LBB4817:
.LBB4818:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL251:
.LBE4818:
.LBE4817:
.LBB4819:
.LBB4820:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL252:
.LBE4820:
.LBE4819:
.LBB4821:
.LBB4822:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4822:
.LBE4821:
	.loc 1 575 0
	addi 1,1,24
.LCFI47:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE121:
	.size	UploadVertexPT7_ElemGLubyte, .-UploadVertexPT7_ElemGLubyte
	.align 2
	.type	UploadVertexPNT0_ElemGLubyte, @function
UploadVertexPNT0_ElemGLubyte:
.LFB122:
	.loc 1 575 0
	.cfi_startproc
.LVL253:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI48:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4823:
.LBB4824:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4824:
.LBE4823:
	.loc 1 575 0
	lbzx 0,3,0
.LVL254:
.LBB4826:
.LBB4825:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL255:
.LBE4825:
.LBE4826:
.LBB4827:
.LBB4828:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL256:
.LBE4828:
.LBE4827:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL257:
.LBB4829:
.LBB4830:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LBE4830:
.LBE4829:
	.loc 1 575 0
	addi 1,1,24
.LCFI49:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE122:
	.size	UploadVertexPNT0_ElemGLubyte, .-UploadVertexPNT0_ElemGLubyte
	.align 2
	.type	UploadVertexPNT1_ElemGLubyte, @function
UploadVertexPNT1_ElemGLubyte:
.LFB123:
	.loc 1 575 0
	.cfi_startproc
.LVL258:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI50:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4831:
.LBB4832:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4832:
.LBE4831:
	.loc 1 575 0
	lbzx 0,3,0
.LVL259:
.LBB4834:
.LBB4833:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL260:
.LBE4833:
.LBE4834:
.LBB4835:
.LBB4836:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL261:
.LBE4836:
.LBE4835:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL262:
.LBB4837:
.LBB4838:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL263:
.LBE4838:
.LBE4837:
.LBB4839:
.LBB4840:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4840:
.LBE4839:
	.loc 1 575 0
	addi 1,1,24
.LCFI51:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE123:
	.size	UploadVertexPNT1_ElemGLubyte, .-UploadVertexPNT1_ElemGLubyte
	.align 2
	.type	UploadVertexPNT2_ElemGLubyte, @function
UploadVertexPNT2_ElemGLubyte:
.LFB124:
	.loc 1 575 0
	.cfi_startproc
.LVL264:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI52:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4841:
.LBB4842:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4842:
.LBE4841:
	.loc 1 575 0
	lbzx 0,3,0
.LVL265:
.LBB4844:
.LBB4843:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL266:
.LBE4843:
.LBE4844:
.LBB4845:
.LBB4846:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL267:
.LBE4846:
.LBE4845:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL268:
.LBB4847:
.LBB4848:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL269:
.LBE4848:
.LBE4847:
.LBB4849:
.LBB4850:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL270:
.LBE4850:
.LBE4849:
.LBB4851:
.LBB4852:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4852:
.LBE4851:
	.loc 1 575 0
	addi 1,1,24
.LCFI53:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE124:
	.size	UploadVertexPNT2_ElemGLubyte, .-UploadVertexPNT2_ElemGLubyte
	.align 2
	.type	UploadVertexPNT3_ElemGLubyte, @function
UploadVertexPNT3_ElemGLubyte:
.LFB125:
	.loc 1 575 0
	.cfi_startproc
.LVL271:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI54:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4853:
.LBB4854:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4854:
.LBE4853:
	.loc 1 575 0
	lbzx 0,3,0
.LVL272:
.LBB4856:
.LBB4855:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL273:
.LBE4855:
.LBE4856:
.LBB4857:
.LBB4858:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL274:
.LBE4858:
.LBE4857:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL275:
.LBB4859:
.LBB4860:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL276:
.LBE4860:
.LBE4859:
.LBB4861:
.LBB4862:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL277:
.LBE4862:
.LBE4861:
.LBB4863:
.LBB4864:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL278:
.LBE4864:
.LBE4863:
.LBB4865:
.LBB4866:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4866:
.LBE4865:
	.loc 1 575 0
	addi 1,1,24
.LCFI55:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE125:
	.size	UploadVertexPNT3_ElemGLubyte, .-UploadVertexPNT3_ElemGLubyte
	.align 2
	.type	UploadVertexPNT4_ElemGLubyte, @function
UploadVertexPNT4_ElemGLubyte:
.LFB126:
	.loc 1 575 0
	.cfi_startproc
.LVL279:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI56:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4867:
.LBB4868:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4868:
.LBE4867:
	.loc 1 575 0
	lbzx 0,3,0
.LVL280:
.LBB4870:
.LBB4869:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL281:
.LBE4869:
.LBE4870:
.LBB4871:
.LBB4872:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL282:
.LBE4872:
.LBE4871:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL283:
.LBB4873:
.LBB4874:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL284:
.LBE4874:
.LBE4873:
.LBB4875:
.LBB4876:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL285:
.LBE4876:
.LBE4875:
.LBB4877:
.LBB4878:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL286:
.LBE4878:
.LBE4877:
.LBB4879:
.LBB4880:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL287:
.LBE4880:
.LBE4879:
.LBB4881:
.LBB4882:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4882:
.LBE4881:
	.loc 1 575 0
	addi 1,1,24
.LCFI57:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE126:
	.size	UploadVertexPNT4_ElemGLubyte, .-UploadVertexPNT4_ElemGLubyte
	.align 2
	.type	UploadVertexPNT5_ElemGLubyte, @function
UploadVertexPNT5_ElemGLubyte:
.LFB127:
	.loc 1 575 0
	.cfi_startproc
.LVL288:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI58:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4883:
.LBB4884:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4884:
.LBE4883:
	.loc 1 575 0
	lbzx 0,3,0
.LVL289:
.LBB4886:
.LBB4885:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL290:
.LBE4885:
.LBE4886:
.LBB4887:
.LBB4888:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL291:
.LBE4888:
.LBE4887:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL292:
.LBB4889:
.LBB4890:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL293:
.LBE4890:
.LBE4889:
.LBB4891:
.LBB4892:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL294:
.LBE4892:
.LBE4891:
.LBB4893:
.LBB4894:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL295:
.LBE4894:
.LBE4893:
.LBB4895:
.LBB4896:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL296:
.LBE4896:
.LBE4895:
.LBB4897:
.LBB4898:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL297:
.LBE4898:
.LBE4897:
.LBB4899:
.LBB4900:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4900:
.LBE4899:
	.loc 1 575 0
	addi 1,1,24
.LCFI59:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE127:
	.size	UploadVertexPNT5_ElemGLubyte, .-UploadVertexPNT5_ElemGLubyte
	.align 2
	.type	UploadVertexPNT6_ElemGLubyte, @function
UploadVertexPNT6_ElemGLubyte:
.LFB128:
	.loc 1 575 0
	.cfi_startproc
.LVL298:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI60:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4901:
.LBB4902:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4902:
.LBE4901:
	.loc 1 575 0
	lbzx 0,3,0
.LVL299:
.LBB4904:
.LBB4903:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL300:
.LBE4903:
.LBE4904:
.LBB4905:
.LBB4906:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL301:
.LBE4906:
.LBE4905:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL302:
.LBB4907:
.LBB4908:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL303:
.LBE4908:
.LBE4907:
.LBB4909:
.LBB4910:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL304:
.LBE4910:
.LBE4909:
.LBB4911:
.LBB4912:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL305:
.LBE4912:
.LBE4911:
.LBB4913:
.LBB4914:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL306:
.LBE4914:
.LBE4913:
.LBB4915:
.LBB4916:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL307:
.LBE4916:
.LBE4915:
.LBB4917:
.LBB4918:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL308:
.LBE4918:
.LBE4917:
.LBB4919:
.LBB4920:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4920:
.LBE4919:
	.loc 1 575 0
	addi 1,1,24
.LCFI61:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE128:
	.size	UploadVertexPNT6_ElemGLubyte, .-UploadVertexPNT6_ElemGLubyte
	.align 2
	.type	UploadVertexPNT7_ElemGLubyte, @function
UploadVertexPNT7_ElemGLubyte:
.LFB129:
	.loc 1 575 0
	.cfi_startproc
.LVL309:
	lis 9,.LANCHOR0@ha
	stwu 1,-24(1)
.LCFI62:
	.cfi_def_cfa_offset 24
	.loc 1 575 0
	lwz 0,.LANCHOR0@l(9)
.LBB4921:
.LBB4922:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4922:
.LBE4921:
	.loc 1 575 0
	lbzx 0,3,0
.LVL310:
.LBB4924:
.LBB4923:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL311:
.LBE4923:
.LBE4924:
.LBB4925:
.LBB4926:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL312:
.LBE4926:
.LBE4925:
	.loc 1 575 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL313:
.LBB4927:
.LBB4928:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL314:
.LBE4928:
.LBE4927:
.LBB4929:
.LBB4930:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL315:
.LBE4930:
.LBE4929:
.LBB4931:
.LBB4932:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL316:
.LBE4932:
.LBE4931:
.LBB4933:
.LBB4934:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL317:
.LBE4934:
.LBE4933:
.LBB4935:
.LBB4936:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL318:
.LBE4936:
.LBE4935:
.LBB4937:
.LBB4938:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL319:
.LBE4938:
.LBE4937:
.LBB4939:
.LBB4940:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL320:
.LBE4940:
.LBE4939:
.LBB4941:
.LBB4942:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4942:
.LBE4941:
	.loc 1 575 0
	addi 1,1,24
.LCFI63:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE129:
	.size	UploadVertexPNT7_ElemGLubyte, .-UploadVertexPNT7_ElemGLubyte
	.align 2
	.type	UploadVertexPCT3_ElemGLubyte, @function
UploadVertexPCT3_ElemGLubyte:
.LFB133:
	.loc 1 575 0
	.cfi_startproc
.LVL321:
	.loc 1 575 0
	lis 9,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(9)
.LBB4943:
.LBB4944:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4944:
.LBE4943:
	.loc 1 575 0
	lbzx 0,3,0
.LVL322:
.LBB4946:
.LBB4945:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL323:
.LBE4945:
.LBE4946:
.LBB4947:
.LBB4948:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL324:
.LBE4948:
.LBE4947:
.LBB4949:
.LBB4950:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL325:
.LBE4950:
.LBE4949:
.LBB4951:
.LBB4952:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL326:
.LBE4952:
.LBE4951:
.LBB4953:
.LBB4954:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4954:
.LBE4953:
	.loc 1 575 0
	blr
	.cfi_endproc
.LFE133:
	.size	UploadVertexPCT3_ElemGLubyte, .-UploadVertexPCT3_ElemGLubyte
	.align 2
	.type	UploadVertexPCT4_ElemGLubyte, @function
UploadVertexPCT4_ElemGLubyte:
.LFB134:
	.loc 1 575 0
	.cfi_startproc
.LVL327:
	.loc 1 575 0
	lis 9,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(9)
.LBB4955:
.LBB4956:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4956:
.LBE4955:
	.loc 1 575 0
	lbzx 0,3,0
.LVL328:
.LBB4958:
.LBB4957:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL329:
.LBE4957:
.LBE4958:
.LBB4959:
.LBB4960:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL330:
.LBE4960:
.LBE4959:
.LBB4961:
.LBB4962:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL331:
.LBE4962:
.LBE4961:
.LBB4963:
.LBB4964:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL332:
.LBE4964:
.LBE4963:
.LBB4965:
.LBB4966:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL333:
.LBE4966:
.LBE4965:
.LBB4967:
.LBB4968:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4968:
.LBE4967:
	.loc 1 575 0
	blr
	.cfi_endproc
.LFE134:
	.size	UploadVertexPCT4_ElemGLubyte, .-UploadVertexPCT4_ElemGLubyte
	.align 2
	.type	UploadVertexPCT5_ElemGLubyte, @function
UploadVertexPCT5_ElemGLubyte:
.LFB135:
	.loc 1 575 0
	.cfi_startproc
.LVL334:
	.loc 1 575 0
	lis 9,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(9)
.LBB4969:
.LBB4970:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4970:
.LBE4969:
	.loc 1 575 0
	lbzx 0,3,0
.LVL335:
.LBB4972:
.LBB4971:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL336:
.LBE4971:
.LBE4972:
.LBB4973:
.LBB4974:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL337:
.LBE4974:
.LBE4973:
.LBB4975:
.LBB4976:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL338:
.LBE4976:
.LBE4975:
.LBB4977:
.LBB4978:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL339:
.LBE4978:
.LBE4977:
.LBB4979:
.LBB4980:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL340:
.LBE4980:
.LBE4979:
.LBB4981:
.LBB4982:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL341:
.LBE4982:
.LBE4981:
.LBB4983:
.LBB4984:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE4984:
.LBE4983:
	.loc 1 575 0
	blr
	.cfi_endproc
.LFE135:
	.size	UploadVertexPCT5_ElemGLubyte, .-UploadVertexPCT5_ElemGLubyte
	.align 2
	.type	UploadVertexPCT6_ElemGLubyte, @function
UploadVertexPCT6_ElemGLubyte:
.LFB136:
	.loc 1 575 0
	.cfi_startproc
.LVL342:
	.loc 1 575 0
	lis 9,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(9)
.LBB4985:
.LBB4986:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE4986:
.LBE4985:
	.loc 1 575 0
	lbzx 0,3,0
.LVL343:
.LBB4988:
.LBB4987:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL344:
.LBE4987:
.LBE4988:
.LBB4989:
.LBB4990:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL345:
.LBE4990:
.LBE4989:
.LBB4991:
.LBB4992:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL346:
.LBE4992:
.LBE4991:
.LBB4993:
.LBB4994:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL347:
.LBE4994:
.LBE4993:
.LBB4995:
.LBB4996:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL348:
.LBE4996:
.LBE4995:
.LBB4997:
.LBB4998:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL349:
.LBE4998:
.LBE4997:
.LBB4999:
.LBB5000:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL350:
.LBE5000:
.LBE4999:
.LBB5001:
.LBB5002:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5002:
.LBE5001:
	.loc 1 575 0
	blr
	.cfi_endproc
.LFE136:
	.size	UploadVertexPCT6_ElemGLubyte, .-UploadVertexPCT6_ElemGLubyte
	.align 2
	.type	UploadVertexPCT7_ElemGLubyte, @function
UploadVertexPCT7_ElemGLubyte:
.LFB137:
	.loc 1 575 0
	.cfi_startproc
.LVL351:
	.loc 1 575 0
	lis 9,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(9)
.LBB5003:
.LBB5004:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5004:
.LBE5003:
	.loc 1 575 0
	lbzx 0,3,0
.LVL352:
.LBB5006:
.LBB5005:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL353:
.LBE5005:
.LBE5006:
.LBB5007:
.LBB5008:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL354:
.LBE5008:
.LBE5007:
.LBB5009:
.LBB5010:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL355:
.LBE5010:
.LBE5009:
.LBB5011:
.LBB5012:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL356:
.LBE5012:
.LBE5011:
.LBB5013:
.LBB5014:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL357:
.LBE5014:
.LBE5013:
.LBB5015:
.LBB5016:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL358:
.LBE5016:
.LBE5015:
.LBB5017:
.LBB5018:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL359:
.LBE5018:
.LBE5017:
.LBB5019:
.LBB5020:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL360:
.LBE5020:
.LBE5019:
.LBB5021:
.LBB5022:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5022:
.LBE5021:
	.loc 1 575 0
	blr
	.cfi_endproc
.LFE137:
	.size	UploadVertexPCT7_ElemGLubyte, .-UploadVertexPCT7_ElemGLubyte
	.align 2
	.type	UploadVertexPNCT2_ElemGLubyte, @function
UploadVertexPNCT2_ElemGLubyte:
.LFB140:
	.loc 1 575 0
	.cfi_startproc
.LVL361:
	.loc 1 575 0
	lis 9,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(9)
.LBB5023:
.LBB5024:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5024:
.LBE5023:
	.loc 1 575 0
	lbzx 0,3,0
.LVL362:
.LBB5026:
.LBB5025:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL363:
.LBE5025:
.LBE5026:
.LBB5027:
.LBB5028:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL364:
.LBE5028:
.LBE5027:
.LBB5029:
.LBB5030:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL365:
.LBE5030:
.LBE5029:
.LBB5031:
.LBB5032:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL366:
.LBE5032:
.LBE5031:
.LBB5033:
.LBB5034:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5034:
.LBE5033:
	.loc 1 575 0
	blr
	.cfi_endproc
.LFE140:
	.size	UploadVertexPNCT2_ElemGLubyte, .-UploadVertexPNCT2_ElemGLubyte
	.align 2
	.type	UploadVertexPNCT3_ElemGLubyte, @function
UploadVertexPNCT3_ElemGLubyte:
.LFB141:
	.loc 1 575 0
	.cfi_startproc
.LVL367:
	.loc 1 575 0
	lis 9,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(9)
.LBB5035:
.LBB5036:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5036:
.LBE5035:
	.loc 1 575 0
	lbzx 0,3,0
.LVL368:
.LBB5038:
.LBB5037:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL369:
.LBE5037:
.LBE5038:
.LBB5039:
.LBB5040:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL370:
.LBE5040:
.LBE5039:
.LBB5041:
.LBB5042:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL371:
.LBE5042:
.LBE5041:
.LBB5043:
.LBB5044:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL372:
.LBE5044:
.LBE5043:
.LBB5045:
.LBB5046:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL373:
.LBE5046:
.LBE5045:
.LBB5047:
.LBB5048:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5048:
.LBE5047:
	.loc 1 575 0
	blr
	.cfi_endproc
.LFE141:
	.size	UploadVertexPNCT3_ElemGLubyte, .-UploadVertexPNCT3_ElemGLubyte
	.align 2
	.type	UploadVertexPNCT4_ElemGLubyte, @function
UploadVertexPNCT4_ElemGLubyte:
.LFB142:
	.loc 1 575 0
	.cfi_startproc
.LVL374:
	.loc 1 575 0
	lis 9,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(9)
.LBB5049:
.LBB5050:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5050:
.LBE5049:
	.loc 1 575 0
	lbzx 0,3,0
.LVL375:
.LBB5052:
.LBB5051:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL376:
.LBE5051:
.LBE5052:
.LBB5053:
.LBB5054:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL377:
.LBE5054:
.LBE5053:
.LBB5055:
.LBB5056:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL378:
.LBE5056:
.LBE5055:
.LBB5057:
.LBB5058:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL379:
.LBE5058:
.LBE5057:
.LBB5059:
.LBB5060:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL380:
.LBE5060:
.LBE5059:
.LBB5061:
.LBB5062:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL381:
.LBE5062:
.LBE5061:
.LBB5063:
.LBB5064:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5064:
.LBE5063:
	.loc 1 575 0
	blr
	.cfi_endproc
.LFE142:
	.size	UploadVertexPNCT4_ElemGLubyte, .-UploadVertexPNCT4_ElemGLubyte
	.align 2
	.type	UploadVertexPNCT5_ElemGLubyte, @function
UploadVertexPNCT5_ElemGLubyte:
.LFB143:
	.loc 1 575 0
	.cfi_startproc
.LVL382:
	.loc 1 575 0
	lis 9,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(9)
.LBB5065:
.LBB5066:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5066:
.LBE5065:
	.loc 1 575 0
	lbzx 0,3,0
.LVL383:
.LBB5068:
.LBB5067:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL384:
.LBE5067:
.LBE5068:
.LBB5069:
.LBB5070:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL385:
.LBE5070:
.LBE5069:
.LBB5071:
.LBB5072:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL386:
.LBE5072:
.LBE5071:
.LBB5073:
.LBB5074:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL387:
.LBE5074:
.LBE5073:
.LBB5075:
.LBB5076:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL388:
.LBE5076:
.LBE5075:
.LBB5077:
.LBB5078:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL389:
.LBE5078:
.LBE5077:
.LBB5079:
.LBB5080:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL390:
.LBE5080:
.LBE5079:
.LBB5081:
.LBB5082:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5082:
.LBE5081:
	.loc 1 575 0
	blr
	.cfi_endproc
.LFE143:
	.size	UploadVertexPNCT5_ElemGLubyte, .-UploadVertexPNCT5_ElemGLubyte
	.align 2
	.type	UploadVertexPNCT6_ElemGLubyte, @function
UploadVertexPNCT6_ElemGLubyte:
.LFB144:
	.loc 1 575 0
	.cfi_startproc
.LVL391:
	.loc 1 575 0
	lis 9,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(9)
.LBB5083:
.LBB5084:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5084:
.LBE5083:
	.loc 1 575 0
	lbzx 0,3,0
.LVL392:
.LBB5086:
.LBB5085:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL393:
.LBE5085:
.LBE5086:
.LBB5087:
.LBB5088:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL394:
.LBE5088:
.LBE5087:
.LBB5089:
.LBB5090:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL395:
.LBE5090:
.LBE5089:
.LBB5091:
.LBB5092:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL396:
.LBE5092:
.LBE5091:
.LBB5093:
.LBB5094:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL397:
.LBE5094:
.LBE5093:
.LBB5095:
.LBB5096:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL398:
.LBE5096:
.LBE5095:
.LBB5097:
.LBB5098:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL399:
.LBE5098:
.LBE5097:
.LBB5099:
.LBB5100:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL400:
.LBE5100:
.LBE5099:
.LBB5101:
.LBB5102:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5102:
.LBE5101:
	.loc 1 575 0
	blr
	.cfi_endproc
.LFE144:
	.size	UploadVertexPNCT6_ElemGLubyte, .-UploadVertexPNCT6_ElemGLubyte
	.align 2
	.type	UploadVertexPNCT7_ElemGLubyte, @function
UploadVertexPNCT7_ElemGLubyte:
.LFB145:
	.loc 1 575 0
	.cfi_startproc
.LVL401:
	.loc 1 575 0
	lis 9,.LANCHOR0@ha
	lwz 0,.LANCHOR0@l(9)
.LBB5103:
.LBB5104:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5104:
.LBE5103:
	.loc 1 575 0
	lbzx 0,3,0
.LVL402:
.LBB5106:
.LBB5105:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL403:
.LBE5105:
.LBE5106:
.LBB5107:
.LBB5108:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL404:
.LBE5108:
.LBE5107:
.LBB5109:
.LBB5110:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL405:
.LBE5110:
.LBE5109:
.LBB5111:
.LBB5112:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL406:
.LBE5112:
.LBE5111:
.LBB5113:
.LBB5114:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL407:
.LBE5114:
.LBE5113:
.LBB5115:
.LBB5116:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL408:
.LBE5116:
.LBE5115:
.LBB5117:
.LBB5118:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL409:
.LBE5118:
.LBE5117:
.LBB5119:
.LBB5120:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL410:
.LBE5120:
.LBE5119:
.LBB5121:
.LBB5122:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL411:
.LBE5122:
.LBE5121:
.LBB5123:
.LBB5124:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5124:
.LBE5123:
	.loc 1 575 0
	blr
	.cfi_endproc
.LFE145:
	.size	UploadVertexPNCT7_ElemGLubyte, .-UploadVertexPNCT7_ElemGLubyte
	.align 2
	.type	UploadVertexPT0_ElemGLushort, @function
UploadVertexPT0_ElemGLushort:
.LFB146:
	.loc 1 576 0
	.cfi_startproc
.LVL412:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL413:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI64:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL414:
.LBB5125:
.LBB5126:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL415:
.LBE5126:
.LBE5125:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL416:
.LBB5127:
.LBB5128:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LBE5128:
.LBE5127:
	.loc 1 576 0
	addi 1,1,24
.LCFI65:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE146:
	.size	UploadVertexPT0_ElemGLushort, .-UploadVertexPT0_ElemGLushort
	.align 2
	.type	UploadVertexPT1_ElemGLushort, @function
UploadVertexPT1_ElemGLushort:
.LFB147:
	.loc 1 576 0
	.cfi_startproc
.LVL417:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL418:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI66:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL419:
.LBB5129:
.LBB5130:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL420:
.LBE5130:
.LBE5129:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL421:
.LBB5131:
.LBB5132:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL422:
.LBE5132:
.LBE5131:
.LBB5133:
.LBB5134:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5134:
.LBE5133:
	.loc 1 576 0
	addi 1,1,24
.LCFI67:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE147:
	.size	UploadVertexPT1_ElemGLushort, .-UploadVertexPT1_ElemGLushort
	.align 2
	.type	UploadVertexPT2_ElemGLushort, @function
UploadVertexPT2_ElemGLushort:
.LFB148:
	.loc 1 576 0
	.cfi_startproc
.LVL423:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL424:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI68:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL425:
.LBB5135:
.LBB5136:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL426:
.LBE5136:
.LBE5135:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL427:
.LBB5137:
.LBB5138:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL428:
.LBE5138:
.LBE5137:
.LBB5139:
.LBB5140:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL429:
.LBE5140:
.LBE5139:
.LBB5141:
.LBB5142:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5142:
.LBE5141:
	.loc 1 576 0
	addi 1,1,24
.LCFI69:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE148:
	.size	UploadVertexPT2_ElemGLushort, .-UploadVertexPT2_ElemGLushort
	.align 2
	.type	UploadVertexPT3_ElemGLushort, @function
UploadVertexPT3_ElemGLushort:
.LFB149:
	.loc 1 576 0
	.cfi_startproc
.LVL430:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL431:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI70:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL432:
.LBB5143:
.LBB5144:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL433:
.LBE5144:
.LBE5143:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL434:
.LBB5145:
.LBB5146:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL435:
.LBE5146:
.LBE5145:
.LBB5147:
.LBB5148:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL436:
.LBE5148:
.LBE5147:
.LBB5149:
.LBB5150:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL437:
.LBE5150:
.LBE5149:
.LBB5151:
.LBB5152:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5152:
.LBE5151:
	.loc 1 576 0
	addi 1,1,24
.LCFI71:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE149:
	.size	UploadVertexPT3_ElemGLushort, .-UploadVertexPT3_ElemGLushort
	.align 2
	.type	UploadVertexPT4_ElemGLushort, @function
UploadVertexPT4_ElemGLushort:
.LFB150:
	.loc 1 576 0
	.cfi_startproc
.LVL438:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL439:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI72:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL440:
.LBB5153:
.LBB5154:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL441:
.LBE5154:
.LBE5153:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL442:
.LBB5155:
.LBB5156:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL443:
.LBE5156:
.LBE5155:
.LBB5157:
.LBB5158:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL444:
.LBE5158:
.LBE5157:
.LBB5159:
.LBB5160:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL445:
.LBE5160:
.LBE5159:
.LBB5161:
.LBB5162:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL446:
.LBE5162:
.LBE5161:
.LBB5163:
.LBB5164:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5164:
.LBE5163:
	.loc 1 576 0
	addi 1,1,24
.LCFI73:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE150:
	.size	UploadVertexPT4_ElemGLushort, .-UploadVertexPT4_ElemGLushort
	.align 2
	.type	UploadVertexPT5_ElemGLushort, @function
UploadVertexPT5_ElemGLushort:
.LFB151:
	.loc 1 576 0
	.cfi_startproc
.LVL447:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL448:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI74:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL449:
.LBB5165:
.LBB5166:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL450:
.LBE5166:
.LBE5165:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL451:
.LBB5167:
.LBB5168:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL452:
.LBE5168:
.LBE5167:
.LBB5169:
.LBB5170:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL453:
.LBE5170:
.LBE5169:
.LBB5171:
.LBB5172:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL454:
.LBE5172:
.LBE5171:
.LBB5173:
.LBB5174:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL455:
.LBE5174:
.LBE5173:
.LBB5175:
.LBB5176:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL456:
.LBE5176:
.LBE5175:
.LBB5177:
.LBB5178:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5178:
.LBE5177:
	.loc 1 576 0
	addi 1,1,24
.LCFI75:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE151:
	.size	UploadVertexPT5_ElemGLushort, .-UploadVertexPT5_ElemGLushort
	.align 2
	.type	UploadVertexPT6_ElemGLushort, @function
UploadVertexPT6_ElemGLushort:
.LFB152:
	.loc 1 576 0
	.cfi_startproc
.LVL457:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL458:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI76:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL459:
.LBB5179:
.LBB5180:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL460:
.LBE5180:
.LBE5179:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL461:
.LBB5181:
.LBB5182:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL462:
.LBE5182:
.LBE5181:
.LBB5183:
.LBB5184:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL463:
.LBE5184:
.LBE5183:
.LBB5185:
.LBB5186:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL464:
.LBE5186:
.LBE5185:
.LBB5187:
.LBB5188:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL465:
.LBE5188:
.LBE5187:
.LBB5189:
.LBB5190:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL466:
.LBE5190:
.LBE5189:
.LBB5191:
.LBB5192:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL467:
.LBE5192:
.LBE5191:
.LBB5193:
.LBB5194:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5194:
.LBE5193:
	.loc 1 576 0
	addi 1,1,24
.LCFI77:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE152:
	.size	UploadVertexPT6_ElemGLushort, .-UploadVertexPT6_ElemGLushort
	.align 2
	.type	UploadVertexPT7_ElemGLushort, @function
UploadVertexPT7_ElemGLushort:
.LFB153:
	.loc 1 576 0
	.cfi_startproc
.LVL468:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL469:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI78:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL470:
.LBB5195:
.LBB5196:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL471:
.LBE5196:
.LBE5195:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL472:
.LBB5197:
.LBB5198:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL473:
.LBE5198:
.LBE5197:
.LBB5199:
.LBB5200:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL474:
.LBE5200:
.LBE5199:
.LBB5201:
.LBB5202:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL475:
.LBE5202:
.LBE5201:
.LBB5203:
.LBB5204:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL476:
.LBE5204:
.LBE5203:
.LBB5205:
.LBB5206:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL477:
.LBE5206:
.LBE5205:
.LBB5207:
.LBB5208:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL478:
.LBE5208:
.LBE5207:
.LBB5209:
.LBB5210:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL479:
.LBE5210:
.LBE5209:
.LBB5211:
.LBB5212:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5212:
.LBE5211:
	.loc 1 576 0
	addi 1,1,24
.LCFI79:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE153:
	.size	UploadVertexPT7_ElemGLushort, .-UploadVertexPT7_ElemGLushort
	.align 2
	.type	UploadVertexPNT0_ElemGLushort, @function
UploadVertexPNT0_ElemGLushort:
.LFB154:
	.loc 1 576 0
	.cfi_startproc
.LVL480:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL481:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI80:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL482:
.LBB5213:
.LBB5214:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL483:
.LBE5214:
.LBE5213:
.LBB5215:
.LBB5216:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL484:
.LBE5216:
.LBE5215:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL485:
.LBB5217:
.LBB5218:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LBE5218:
.LBE5217:
	.loc 1 576 0
	addi 1,1,24
.LCFI81:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE154:
	.size	UploadVertexPNT0_ElemGLushort, .-UploadVertexPNT0_ElemGLushort
	.align 2
	.type	UploadVertexPNT1_ElemGLushort, @function
UploadVertexPNT1_ElemGLushort:
.LFB155:
	.loc 1 576 0
	.cfi_startproc
.LVL486:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL487:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI82:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL488:
.LBB5219:
.LBB5220:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL489:
.LBE5220:
.LBE5219:
.LBB5221:
.LBB5222:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL490:
.LBE5222:
.LBE5221:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL491:
.LBB5223:
.LBB5224:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL492:
.LBE5224:
.LBE5223:
.LBB5225:
.LBB5226:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5226:
.LBE5225:
	.loc 1 576 0
	addi 1,1,24
.LCFI83:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE155:
	.size	UploadVertexPNT1_ElemGLushort, .-UploadVertexPNT1_ElemGLushort
	.align 2
	.type	UploadVertexPNT2_ElemGLushort, @function
UploadVertexPNT2_ElemGLushort:
.LFB156:
	.loc 1 576 0
	.cfi_startproc
.LVL493:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL494:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI84:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL495:
.LBB5227:
.LBB5228:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL496:
.LBE5228:
.LBE5227:
.LBB5229:
.LBB5230:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL497:
.LBE5230:
.LBE5229:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL498:
.LBB5231:
.LBB5232:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL499:
.LBE5232:
.LBE5231:
.LBB5233:
.LBB5234:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL500:
.LBE5234:
.LBE5233:
.LBB5235:
.LBB5236:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5236:
.LBE5235:
	.loc 1 576 0
	addi 1,1,24
.LCFI85:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE156:
	.size	UploadVertexPNT2_ElemGLushort, .-UploadVertexPNT2_ElemGLushort
	.align 2
	.type	UploadVertexPNT3_ElemGLushort, @function
UploadVertexPNT3_ElemGLushort:
.LFB157:
	.loc 1 576 0
	.cfi_startproc
.LVL501:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL502:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI86:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL503:
.LBB5237:
.LBB5238:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL504:
.LBE5238:
.LBE5237:
.LBB5239:
.LBB5240:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL505:
.LBE5240:
.LBE5239:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL506:
.LBB5241:
.LBB5242:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL507:
.LBE5242:
.LBE5241:
.LBB5243:
.LBB5244:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL508:
.LBE5244:
.LBE5243:
.LBB5245:
.LBB5246:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL509:
.LBE5246:
.LBE5245:
.LBB5247:
.LBB5248:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5248:
.LBE5247:
	.loc 1 576 0
	addi 1,1,24
.LCFI87:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE157:
	.size	UploadVertexPNT3_ElemGLushort, .-UploadVertexPNT3_ElemGLushort
	.align 2
	.type	UploadVertexPNT4_ElemGLushort, @function
UploadVertexPNT4_ElemGLushort:
.LFB158:
	.loc 1 576 0
	.cfi_startproc
.LVL510:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL511:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI88:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL512:
.LBB5249:
.LBB5250:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL513:
.LBE5250:
.LBE5249:
.LBB5251:
.LBB5252:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL514:
.LBE5252:
.LBE5251:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL515:
.LBB5253:
.LBB5254:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL516:
.LBE5254:
.LBE5253:
.LBB5255:
.LBB5256:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL517:
.LBE5256:
.LBE5255:
.LBB5257:
.LBB5258:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL518:
.LBE5258:
.LBE5257:
.LBB5259:
.LBB5260:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL519:
.LBE5260:
.LBE5259:
.LBB5261:
.LBB5262:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5262:
.LBE5261:
	.loc 1 576 0
	addi 1,1,24
.LCFI89:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE158:
	.size	UploadVertexPNT4_ElemGLushort, .-UploadVertexPNT4_ElemGLushort
	.align 2
	.type	UploadVertexPNT5_ElemGLushort, @function
UploadVertexPNT5_ElemGLushort:
.LFB159:
	.loc 1 576 0
	.cfi_startproc
.LVL520:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL521:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI90:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL522:
.LBB5263:
.LBB5264:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL523:
.LBE5264:
.LBE5263:
.LBB5265:
.LBB5266:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL524:
.LBE5266:
.LBE5265:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL525:
.LBB5267:
.LBB5268:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL526:
.LBE5268:
.LBE5267:
.LBB5269:
.LBB5270:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL527:
.LBE5270:
.LBE5269:
.LBB5271:
.LBB5272:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL528:
.LBE5272:
.LBE5271:
.LBB5273:
.LBB5274:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL529:
.LBE5274:
.LBE5273:
.LBB5275:
.LBB5276:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL530:
.LBE5276:
.LBE5275:
.LBB5277:
.LBB5278:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5278:
.LBE5277:
	.loc 1 576 0
	addi 1,1,24
.LCFI91:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE159:
	.size	UploadVertexPNT5_ElemGLushort, .-UploadVertexPNT5_ElemGLushort
	.align 2
	.type	UploadVertexPNT6_ElemGLushort, @function
UploadVertexPNT6_ElemGLushort:
.LFB160:
	.loc 1 576 0
	.cfi_startproc
.LVL531:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL532:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI92:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL533:
.LBB5279:
.LBB5280:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL534:
.LBE5280:
.LBE5279:
.LBB5281:
.LBB5282:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL535:
.LBE5282:
.LBE5281:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL536:
.LBB5283:
.LBB5284:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL537:
.LBE5284:
.LBE5283:
.LBB5285:
.LBB5286:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL538:
.LBE5286:
.LBE5285:
.LBB5287:
.LBB5288:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL539:
.LBE5288:
.LBE5287:
.LBB5289:
.LBB5290:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL540:
.LBE5290:
.LBE5289:
.LBB5291:
.LBB5292:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL541:
.LBE5292:
.LBE5291:
.LBB5293:
.LBB5294:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL542:
.LBE5294:
.LBE5293:
.LBB5295:
.LBB5296:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5296:
.LBE5295:
	.loc 1 576 0
	addi 1,1,24
.LCFI93:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE160:
	.size	UploadVertexPNT6_ElemGLushort, .-UploadVertexPNT6_ElemGLushort
	.align 2
	.type	UploadVertexPNT7_ElemGLushort, @function
UploadVertexPNT7_ElemGLushort:
.LFB161:
	.loc 1 576 0
	.cfi_startproc
.LVL543:
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL544:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI94:
	.cfi_def_cfa_offset 24
	.loc 1 576 0
	lhzx 0,9,3
.LVL545:
.LBB5297:
.LBB5298:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL546:
.LBE5298:
.LBE5297:
.LBB5299:
.LBB5300:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL547:
.LBE5300:
.LBE5299:
	.loc 1 576 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL548:
.LBB5301:
.LBB5302:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL549:
.LBE5302:
.LBE5301:
.LBB5303:
.LBB5304:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL550:
.LBE5304:
.LBE5303:
.LBB5305:
.LBB5306:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL551:
.LBE5306:
.LBE5305:
.LBB5307:
.LBB5308:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL552:
.LBE5308:
.LBE5307:
.LBB5309:
.LBB5310:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL553:
.LBE5310:
.LBE5309:
.LBB5311:
.LBB5312:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL554:
.LBE5312:
.LBE5311:
.LBB5313:
.LBB5314:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL555:
.LBE5314:
.LBE5313:
.LBB5315:
.LBB5316:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5316:
.LBE5315:
	.loc 1 576 0
	addi 1,1,24
.LCFI95:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE161:
	.size	UploadVertexPNT7_ElemGLushort, .-UploadVertexPNT7_ElemGLushort
	.align 2
	.type	UploadVertexPCT3_ElemGLushort, @function
UploadVertexPCT3_ElemGLushort:
.LFB165:
	.loc 1 576 0
	.cfi_startproc
.LVL556:
	.loc 1 576 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL557:
	lwz 9,.LANCHOR0@l(9)
	lhzx 0,9,3
.LVL558:
.LBB5317:
.LBB5318:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL559:
.LBE5318:
.LBE5317:
.LBB5319:
.LBB5320:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL560:
.LBE5320:
.LBE5319:
.LBB5321:
.LBB5322:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL561:
.LBE5322:
.LBE5321:
.LBB5323:
.LBB5324:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL562:
.LBE5324:
.LBE5323:
.LBB5325:
.LBB5326:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5326:
.LBE5325:
	.loc 1 576 0
	blr
	.cfi_endproc
.LFE165:
	.size	UploadVertexPCT3_ElemGLushort, .-UploadVertexPCT3_ElemGLushort
	.align 2
	.type	UploadVertexPCT4_ElemGLushort, @function
UploadVertexPCT4_ElemGLushort:
.LFB166:
	.loc 1 576 0
	.cfi_startproc
.LVL563:
	.loc 1 576 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL564:
	lwz 9,.LANCHOR0@l(9)
	lhzx 0,9,3
.LVL565:
.LBB5327:
.LBB5328:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL566:
.LBE5328:
.LBE5327:
.LBB5329:
.LBB5330:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL567:
.LBE5330:
.LBE5329:
.LBB5331:
.LBB5332:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL568:
.LBE5332:
.LBE5331:
.LBB5333:
.LBB5334:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL569:
.LBE5334:
.LBE5333:
.LBB5335:
.LBB5336:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL570:
.LBE5336:
.LBE5335:
.LBB5337:
.LBB5338:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5338:
.LBE5337:
	.loc 1 576 0
	blr
	.cfi_endproc
.LFE166:
	.size	UploadVertexPCT4_ElemGLushort, .-UploadVertexPCT4_ElemGLushort
	.align 2
	.type	UploadVertexPCT5_ElemGLushort, @function
UploadVertexPCT5_ElemGLushort:
.LFB167:
	.loc 1 576 0
	.cfi_startproc
.LVL571:
	.loc 1 576 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL572:
	lwz 9,.LANCHOR0@l(9)
	lhzx 0,9,3
.LVL573:
.LBB5339:
.LBB5340:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL574:
.LBE5340:
.LBE5339:
.LBB5341:
.LBB5342:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL575:
.LBE5342:
.LBE5341:
.LBB5343:
.LBB5344:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL576:
.LBE5344:
.LBE5343:
.LBB5345:
.LBB5346:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL577:
.LBE5346:
.LBE5345:
.LBB5347:
.LBB5348:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL578:
.LBE5348:
.LBE5347:
.LBB5349:
.LBB5350:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL579:
.LBE5350:
.LBE5349:
.LBB5351:
.LBB5352:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5352:
.LBE5351:
	.loc 1 576 0
	blr
	.cfi_endproc
.LFE167:
	.size	UploadVertexPCT5_ElemGLushort, .-UploadVertexPCT5_ElemGLushort
	.align 2
	.type	UploadVertexPCT6_ElemGLushort, @function
UploadVertexPCT6_ElemGLushort:
.LFB168:
	.loc 1 576 0
	.cfi_startproc
.LVL580:
	.loc 1 576 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL581:
	lwz 9,.LANCHOR0@l(9)
	lhzx 0,9,3
.LVL582:
.LBB5353:
.LBB5354:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL583:
.LBE5354:
.LBE5353:
.LBB5355:
.LBB5356:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL584:
.LBE5356:
.LBE5355:
.LBB5357:
.LBB5358:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL585:
.LBE5358:
.LBE5357:
.LBB5359:
.LBB5360:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL586:
.LBE5360:
.LBE5359:
.LBB5361:
.LBB5362:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL587:
.LBE5362:
.LBE5361:
.LBB5363:
.LBB5364:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL588:
.LBE5364:
.LBE5363:
.LBB5365:
.LBB5366:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL589:
.LBE5366:
.LBE5365:
.LBB5367:
.LBB5368:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5368:
.LBE5367:
	.loc 1 576 0
	blr
	.cfi_endproc
.LFE168:
	.size	UploadVertexPCT6_ElemGLushort, .-UploadVertexPCT6_ElemGLushort
	.align 2
	.type	UploadVertexPCT7_ElemGLushort, @function
UploadVertexPCT7_ElemGLushort:
.LFB169:
	.loc 1 576 0
	.cfi_startproc
.LVL590:
	.loc 1 576 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL591:
	lwz 9,.LANCHOR0@l(9)
	lhzx 0,9,3
.LVL592:
.LBB5369:
.LBB5370:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL593:
.LBE5370:
.LBE5369:
.LBB5371:
.LBB5372:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL594:
.LBE5372:
.LBE5371:
.LBB5373:
.LBB5374:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL595:
.LBE5374:
.LBE5373:
.LBB5375:
.LBB5376:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL596:
.LBE5376:
.LBE5375:
.LBB5377:
.LBB5378:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL597:
.LBE5378:
.LBE5377:
.LBB5379:
.LBB5380:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL598:
.LBE5380:
.LBE5379:
.LBB5381:
.LBB5382:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL599:
.LBE5382:
.LBE5381:
.LBB5383:
.LBB5384:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL600:
.LBE5384:
.LBE5383:
.LBB5385:
.LBB5386:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5386:
.LBE5385:
	.loc 1 576 0
	blr
	.cfi_endproc
.LFE169:
	.size	UploadVertexPCT7_ElemGLushort, .-UploadVertexPCT7_ElemGLushort
	.align 2
	.type	UploadVertexPNCT2_ElemGLushort, @function
UploadVertexPNCT2_ElemGLushort:
.LFB172:
	.loc 1 576 0
	.cfi_startproc
.LVL601:
	.loc 1 576 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL602:
	lwz 9,.LANCHOR0@l(9)
	lhzx 0,9,3
.LVL603:
.LBB5387:
.LBB5388:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL604:
.LBE5388:
.LBE5387:
.LBB5389:
.LBB5390:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL605:
.LBE5390:
.LBE5389:
.LBB5391:
.LBB5392:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL606:
.LBE5392:
.LBE5391:
.LBB5393:
.LBB5394:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL607:
.LBE5394:
.LBE5393:
.LBB5395:
.LBB5396:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5396:
.LBE5395:
	.loc 1 576 0
	blr
	.cfi_endproc
.LFE172:
	.size	UploadVertexPNCT2_ElemGLushort, .-UploadVertexPNCT2_ElemGLushort
	.align 2
	.type	UploadVertexPNCT3_ElemGLushort, @function
UploadVertexPNCT3_ElemGLushort:
.LFB173:
	.loc 1 576 0
	.cfi_startproc
.LVL608:
	.loc 1 576 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL609:
	lwz 9,.LANCHOR0@l(9)
	lhzx 0,9,3
.LVL610:
.LBB5397:
.LBB5398:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL611:
.LBE5398:
.LBE5397:
.LBB5399:
.LBB5400:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL612:
.LBE5400:
.LBE5399:
.LBB5401:
.LBB5402:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL613:
.LBE5402:
.LBE5401:
.LBB5403:
.LBB5404:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL614:
.LBE5404:
.LBE5403:
.LBB5405:
.LBB5406:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL615:
.LBE5406:
.LBE5405:
.LBB5407:
.LBB5408:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5408:
.LBE5407:
	.loc 1 576 0
	blr
	.cfi_endproc
.LFE173:
	.size	UploadVertexPNCT3_ElemGLushort, .-UploadVertexPNCT3_ElemGLushort
	.align 2
	.type	UploadVertexPNCT4_ElemGLushort, @function
UploadVertexPNCT4_ElemGLushort:
.LFB174:
	.loc 1 576 0
	.cfi_startproc
.LVL616:
	.loc 1 576 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL617:
	lwz 9,.LANCHOR0@l(9)
	lhzx 0,9,3
.LVL618:
.LBB5409:
.LBB5410:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL619:
.LBE5410:
.LBE5409:
.LBB5411:
.LBB5412:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL620:
.LBE5412:
.LBE5411:
.LBB5413:
.LBB5414:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL621:
.LBE5414:
.LBE5413:
.LBB5415:
.LBB5416:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL622:
.LBE5416:
.LBE5415:
.LBB5417:
.LBB5418:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL623:
.LBE5418:
.LBE5417:
.LBB5419:
.LBB5420:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL624:
.LBE5420:
.LBE5419:
.LBB5421:
.LBB5422:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5422:
.LBE5421:
	.loc 1 576 0
	blr
	.cfi_endproc
.LFE174:
	.size	UploadVertexPNCT4_ElemGLushort, .-UploadVertexPNCT4_ElemGLushort
	.align 2
	.type	UploadVertexPNCT5_ElemGLushort, @function
UploadVertexPNCT5_ElemGLushort:
.LFB175:
	.loc 1 576 0
	.cfi_startproc
.LVL625:
	.loc 1 576 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL626:
	lwz 9,.LANCHOR0@l(9)
	lhzx 0,9,3
.LVL627:
.LBB5423:
.LBB5424:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL628:
.LBE5424:
.LBE5423:
.LBB5425:
.LBB5426:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL629:
.LBE5426:
.LBE5425:
.LBB5427:
.LBB5428:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL630:
.LBE5428:
.LBE5427:
.LBB5429:
.LBB5430:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL631:
.LBE5430:
.LBE5429:
.LBB5431:
.LBB5432:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL632:
.LBE5432:
.LBE5431:
.LBB5433:
.LBB5434:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL633:
.LBE5434:
.LBE5433:
.LBB5435:
.LBB5436:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL634:
.LBE5436:
.LBE5435:
.LBB5437:
.LBB5438:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5438:
.LBE5437:
	.loc 1 576 0
	blr
	.cfi_endproc
.LFE175:
	.size	UploadVertexPNCT5_ElemGLushort, .-UploadVertexPNCT5_ElemGLushort
	.align 2
	.type	UploadVertexPNCT6_ElemGLushort, @function
UploadVertexPNCT6_ElemGLushort:
.LFB176:
	.loc 1 576 0
	.cfi_startproc
.LVL635:
	.loc 1 576 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL636:
	lwz 9,.LANCHOR0@l(9)
	lhzx 0,9,3
.LVL637:
.LBB5439:
.LBB5440:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL638:
.LBE5440:
.LBE5439:
.LBB5441:
.LBB5442:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL639:
.LBE5442:
.LBE5441:
.LBB5443:
.LBB5444:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL640:
.LBE5444:
.LBE5443:
.LBB5445:
.LBB5446:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL641:
.LBE5446:
.LBE5445:
.LBB5447:
.LBB5448:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL642:
.LBE5448:
.LBE5447:
.LBB5449:
.LBB5450:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL643:
.LBE5450:
.LBE5449:
.LBB5451:
.LBB5452:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL644:
.LBE5452:
.LBE5451:
.LBB5453:
.LBB5454:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL645:
.LBE5454:
.LBE5453:
.LBB5455:
.LBB5456:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5456:
.LBE5455:
	.loc 1 576 0
	blr
	.cfi_endproc
.LFE176:
	.size	UploadVertexPNCT6_ElemGLushort, .-UploadVertexPNCT6_ElemGLushort
	.align 2
	.type	UploadVertexPNCT7_ElemGLushort, @function
UploadVertexPNCT7_ElemGLushort:
.LFB177:
	.loc 1 576 0
	.cfi_startproc
.LVL646:
	.loc 1 576 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,1
.LVL647:
	lwz 9,.LANCHOR0@l(9)
	lhzx 0,9,3
.LVL648:
.LBB5457:
.LBB5458:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL649:
.LBE5458:
.LBE5457:
.LBB5459:
.LBB5460:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL650:
.LBE5460:
.LBE5459:
.LBB5461:
.LBB5462:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL651:
.LBE5462:
.LBE5461:
.LBB5463:
.LBB5464:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL652:
.LBE5464:
.LBE5463:
.LBB5465:
.LBB5466:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL653:
.LBE5466:
.LBE5465:
.LBB5467:
.LBB5468:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL654:
.LBE5468:
.LBE5467:
.LBB5469:
.LBB5470:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL655:
.LBE5470:
.LBE5469:
.LBB5471:
.LBB5472:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL656:
.LBE5472:
.LBE5471:
.LBB5473:
.LBB5474:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL657:
.LBE5474:
.LBE5473:
.LBB5475:
.LBB5476:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5476:
.LBE5475:
	.loc 1 576 0
	blr
	.cfi_endproc
.LFE177:
	.size	UploadVertexPNCT7_ElemGLushort, .-UploadVertexPNCT7_ElemGLushort
	.align 2
	.type	UploadVertexPT0_ElemGLuint, @function
UploadVertexPT0_ElemGLuint:
.LFB178:
	.loc 1 577 0
	.cfi_startproc
.LVL658:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL659:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI96:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5477:
.LBB5478:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5478:
.LBE5477:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL660:
.LBB5480:
.LBB5479:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL661:
.LBE5479:
.LBE5480:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL662:
.LBB5481:
.LBB5482:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LBE5482:
.LBE5481:
	.loc 1 577 0
	addi 1,1,24
.LCFI97:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE178:
	.size	UploadVertexPT0_ElemGLuint, .-UploadVertexPT0_ElemGLuint
	.align 2
	.type	UploadVertexPT1_ElemGLuint, @function
UploadVertexPT1_ElemGLuint:
.LFB179:
	.loc 1 577 0
	.cfi_startproc
.LVL663:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL664:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI98:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5483:
.LBB5484:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5484:
.LBE5483:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL665:
.LBB5486:
.LBB5485:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL666:
.LBE5485:
.LBE5486:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL667:
.LBB5487:
.LBB5488:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL668:
.LBE5488:
.LBE5487:
.LBB5489:
.LBB5490:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5490:
.LBE5489:
	.loc 1 577 0
	addi 1,1,24
.LCFI99:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE179:
	.size	UploadVertexPT1_ElemGLuint, .-UploadVertexPT1_ElemGLuint
	.align 2
	.type	UploadVertexPT2_ElemGLuint, @function
UploadVertexPT2_ElemGLuint:
.LFB180:
	.loc 1 577 0
	.cfi_startproc
.LVL669:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL670:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI100:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5491:
.LBB5492:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5492:
.LBE5491:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL671:
.LBB5494:
.LBB5493:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL672:
.LBE5493:
.LBE5494:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL673:
.LBB5495:
.LBB5496:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL674:
.LBE5496:
.LBE5495:
.LBB5497:
.LBB5498:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL675:
.LBE5498:
.LBE5497:
.LBB5499:
.LBB5500:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5500:
.LBE5499:
	.loc 1 577 0
	addi 1,1,24
.LCFI101:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE180:
	.size	UploadVertexPT2_ElemGLuint, .-UploadVertexPT2_ElemGLuint
	.align 2
	.type	UploadVertexPT3_ElemGLuint, @function
UploadVertexPT3_ElemGLuint:
.LFB181:
	.loc 1 577 0
	.cfi_startproc
.LVL676:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL677:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI102:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5501:
.LBB5502:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5502:
.LBE5501:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL678:
.LBB5504:
.LBB5503:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL679:
.LBE5503:
.LBE5504:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL680:
.LBB5505:
.LBB5506:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL681:
.LBE5506:
.LBE5505:
.LBB5507:
.LBB5508:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL682:
.LBE5508:
.LBE5507:
.LBB5509:
.LBB5510:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL683:
.LBE5510:
.LBE5509:
.LBB5511:
.LBB5512:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5512:
.LBE5511:
	.loc 1 577 0
	addi 1,1,24
.LCFI103:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE181:
	.size	UploadVertexPT3_ElemGLuint, .-UploadVertexPT3_ElemGLuint
	.align 2
	.type	UploadVertexPT4_ElemGLuint, @function
UploadVertexPT4_ElemGLuint:
.LFB182:
	.loc 1 577 0
	.cfi_startproc
.LVL684:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL685:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI104:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5513:
.LBB5514:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5514:
.LBE5513:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL686:
.LBB5516:
.LBB5515:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL687:
.LBE5515:
.LBE5516:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL688:
.LBB5517:
.LBB5518:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL689:
.LBE5518:
.LBE5517:
.LBB5519:
.LBB5520:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL690:
.LBE5520:
.LBE5519:
.LBB5521:
.LBB5522:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL691:
.LBE5522:
.LBE5521:
.LBB5523:
.LBB5524:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL692:
.LBE5524:
.LBE5523:
.LBB5525:
.LBB5526:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5526:
.LBE5525:
	.loc 1 577 0
	addi 1,1,24
.LCFI105:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE182:
	.size	UploadVertexPT4_ElemGLuint, .-UploadVertexPT4_ElemGLuint
	.align 2
	.type	UploadVertexPT5_ElemGLuint, @function
UploadVertexPT5_ElemGLuint:
.LFB183:
	.loc 1 577 0
	.cfi_startproc
.LVL693:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL694:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI106:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5527:
.LBB5528:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5528:
.LBE5527:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL695:
.LBB5530:
.LBB5529:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL696:
.LBE5529:
.LBE5530:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL697:
.LBB5531:
.LBB5532:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL698:
.LBE5532:
.LBE5531:
.LBB5533:
.LBB5534:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL699:
.LBE5534:
.LBE5533:
.LBB5535:
.LBB5536:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL700:
.LBE5536:
.LBE5535:
.LBB5537:
.LBB5538:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL701:
.LBE5538:
.LBE5537:
.LBB5539:
.LBB5540:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL702:
.LBE5540:
.LBE5539:
.LBB5541:
.LBB5542:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5542:
.LBE5541:
	.loc 1 577 0
	addi 1,1,24
.LCFI107:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE183:
	.size	UploadVertexPT5_ElemGLuint, .-UploadVertexPT5_ElemGLuint
	.align 2
	.type	UploadVertexPT6_ElemGLuint, @function
UploadVertexPT6_ElemGLuint:
.LFB184:
	.loc 1 577 0
	.cfi_startproc
.LVL703:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL704:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI108:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5543:
.LBB5544:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5544:
.LBE5543:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL705:
.LBB5546:
.LBB5545:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL706:
.LBE5545:
.LBE5546:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL707:
.LBB5547:
.LBB5548:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL708:
.LBE5548:
.LBE5547:
.LBB5549:
.LBB5550:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL709:
.LBE5550:
.LBE5549:
.LBB5551:
.LBB5552:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL710:
.LBE5552:
.LBE5551:
.LBB5553:
.LBB5554:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL711:
.LBE5554:
.LBE5553:
.LBB5555:
.LBB5556:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL712:
.LBE5556:
.LBE5555:
.LBB5557:
.LBB5558:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL713:
.LBE5558:
.LBE5557:
.LBB5559:
.LBB5560:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5560:
.LBE5559:
	.loc 1 577 0
	addi 1,1,24
.LCFI109:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE184:
	.size	UploadVertexPT6_ElemGLuint, .-UploadVertexPT6_ElemGLuint
	.align 2
	.type	UploadVertexPT7_ElemGLuint, @function
UploadVertexPT7_ElemGLuint:
.LFB185:
	.loc 1 577 0
	.cfi_startproc
.LVL714:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL715:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI110:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5561:
.LBB5562:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5562:
.LBE5561:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL716:
.LBB5564:
.LBB5563:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL717:
.LBE5563:
.LBE5564:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL718:
.LBB5565:
.LBB5566:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL719:
.LBE5566:
.LBE5565:
.LBB5567:
.LBB5568:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL720:
.LBE5568:
.LBE5567:
.LBB5569:
.LBB5570:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL721:
.LBE5570:
.LBE5569:
.LBB5571:
.LBB5572:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL722:
.LBE5572:
.LBE5571:
.LBB5573:
.LBB5574:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL723:
.LBE5574:
.LBE5573:
.LBB5575:
.LBB5576:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL724:
.LBE5576:
.LBE5575:
.LBB5577:
.LBB5578:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL725:
.LBE5578:
.LBE5577:
.LBB5579:
.LBB5580:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5580:
.LBE5579:
	.loc 1 577 0
	addi 1,1,24
.LCFI111:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE185:
	.size	UploadVertexPT7_ElemGLuint, .-UploadVertexPT7_ElemGLuint
	.align 2
	.type	UploadVertexPNT0_ElemGLuint, @function
UploadVertexPNT0_ElemGLuint:
.LFB186:
	.loc 1 577 0
	.cfi_startproc
.LVL726:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL727:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI112:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5581:
.LBB5582:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5582:
.LBE5581:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL728:
.LBB5584:
.LBB5583:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL729:
.LBE5583:
.LBE5584:
.LBB5585:
.LBB5586:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL730:
.LBE5586:
.LBE5585:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 8,8(1)
	lwz 10,12(1)
	lwz 11,16(1)
	lwz 0,20(1)
.LVL731:
.LBB5587:
.LBB5588:
	.loc 2 2267 0
	stb 8,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 11,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(9)
	.loc 2 2274 0
.LBE5588:
.LBE5587:
	.loc 1 577 0
	addi 1,1,24
.LCFI113:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE186:
	.size	UploadVertexPNT0_ElemGLuint, .-UploadVertexPNT0_ElemGLuint
	.align 2
	.type	UploadVertexPNT1_ElemGLuint, @function
UploadVertexPNT1_ElemGLuint:
.LFB187:
	.loc 1 577 0
	.cfi_startproc
.LVL732:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL733:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI114:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5589:
.LBB5590:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5590:
.LBE5589:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL734:
.LBB5592:
.LBB5591:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL735:
.LBE5591:
.LBE5592:
.LBB5593:
.LBB5594:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL736:
.LBE5594:
.LBE5593:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL737:
.LBB5595:
.LBB5596:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL738:
.LBE5596:
.LBE5595:
.LBB5597:
.LBB5598:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5598:
.LBE5597:
	.loc 1 577 0
	addi 1,1,24
.LCFI115:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE187:
	.size	UploadVertexPNT1_ElemGLuint, .-UploadVertexPNT1_ElemGLuint
	.align 2
	.type	UploadVertexPNT2_ElemGLuint, @function
UploadVertexPNT2_ElemGLuint:
.LFB188:
	.loc 1 577 0
	.cfi_startproc
.LVL739:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL740:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI116:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5599:
.LBB5600:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5600:
.LBE5599:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL741:
.LBB5602:
.LBB5601:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL742:
.LBE5601:
.LBE5602:
.LBB5603:
.LBB5604:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL743:
.LBE5604:
.LBE5603:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL744:
.LBB5605:
.LBB5606:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL745:
.LBE5606:
.LBE5605:
.LBB5607:
.LBB5608:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL746:
.LBE5608:
.LBE5607:
.LBB5609:
.LBB5610:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5610:
.LBE5609:
	.loc 1 577 0
	addi 1,1,24
.LCFI117:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE188:
	.size	UploadVertexPNT2_ElemGLuint, .-UploadVertexPNT2_ElemGLuint
	.align 2
	.type	UploadVertexPNT3_ElemGLuint, @function
UploadVertexPNT3_ElemGLuint:
.LFB189:
	.loc 1 577 0
	.cfi_startproc
.LVL747:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL748:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI118:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5611:
.LBB5612:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5612:
.LBE5611:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL749:
.LBB5614:
.LBB5613:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL750:
.LBE5613:
.LBE5614:
.LBB5615:
.LBB5616:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL751:
.LBE5616:
.LBE5615:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL752:
.LBB5617:
.LBB5618:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL753:
.LBE5618:
.LBE5617:
.LBB5619:
.LBB5620:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL754:
.LBE5620:
.LBE5619:
.LBB5621:
.LBB5622:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL755:
.LBE5622:
.LBE5621:
.LBB5623:
.LBB5624:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5624:
.LBE5623:
	.loc 1 577 0
	addi 1,1,24
.LCFI119:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE189:
	.size	UploadVertexPNT3_ElemGLuint, .-UploadVertexPNT3_ElemGLuint
	.align 2
	.type	UploadVertexPNT4_ElemGLuint, @function
UploadVertexPNT4_ElemGLuint:
.LFB190:
	.loc 1 577 0
	.cfi_startproc
.LVL756:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL757:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI120:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5625:
.LBB5626:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5626:
.LBE5625:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL758:
.LBB5628:
.LBB5627:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL759:
.LBE5627:
.LBE5628:
.LBB5629:
.LBB5630:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL760:
.LBE5630:
.LBE5629:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL761:
.LBB5631:
.LBB5632:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL762:
.LBE5632:
.LBE5631:
.LBB5633:
.LBB5634:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL763:
.LBE5634:
.LBE5633:
.LBB5635:
.LBB5636:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL764:
.LBE5636:
.LBE5635:
.LBB5637:
.LBB5638:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL765:
.LBE5638:
.LBE5637:
.LBB5639:
.LBB5640:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5640:
.LBE5639:
	.loc 1 577 0
	addi 1,1,24
.LCFI121:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE190:
	.size	UploadVertexPNT4_ElemGLuint, .-UploadVertexPNT4_ElemGLuint
	.align 2
	.type	UploadVertexPNT5_ElemGLuint, @function
UploadVertexPNT5_ElemGLuint:
.LFB191:
	.loc 1 577 0
	.cfi_startproc
.LVL766:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL767:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI122:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5641:
.LBB5642:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5642:
.LBE5641:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL768:
.LBB5644:
.LBB5643:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL769:
.LBE5643:
.LBE5644:
.LBB5645:
.LBB5646:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL770:
.LBE5646:
.LBE5645:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL771:
.LBB5647:
.LBB5648:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL772:
.LBE5648:
.LBE5647:
.LBB5649:
.LBB5650:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL773:
.LBE5650:
.LBE5649:
.LBB5651:
.LBB5652:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL774:
.LBE5652:
.LBE5651:
.LBB5653:
.LBB5654:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL775:
.LBE5654:
.LBE5653:
.LBB5655:
.LBB5656:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL776:
.LBE5656:
.LBE5655:
.LBB5657:
.LBB5658:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5658:
.LBE5657:
	.loc 1 577 0
	addi 1,1,24
.LCFI123:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE191:
	.size	UploadVertexPNT5_ElemGLuint, .-UploadVertexPNT5_ElemGLuint
	.align 2
	.type	UploadVertexPNT6_ElemGLuint, @function
UploadVertexPNT6_ElemGLuint:
.LFB192:
	.loc 1 577 0
	.cfi_startproc
.LVL777:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL778:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI124:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5659:
.LBB5660:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5660:
.LBE5659:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL779:
.LBB5662:
.LBB5661:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL780:
.LBE5661:
.LBE5662:
.LBB5663:
.LBB5664:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL781:
.LBE5664:
.LBE5663:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL782:
.LBB5665:
.LBB5666:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL783:
.LBE5666:
.LBE5665:
.LBB5667:
.LBB5668:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL784:
.LBE5668:
.LBE5667:
.LBB5669:
.LBB5670:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL785:
.LBE5670:
.LBE5669:
.LBB5671:
.LBB5672:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL786:
.LBE5672:
.LBE5671:
.LBB5673:
.LBB5674:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL787:
.LBE5674:
.LBE5673:
.LBB5675:
.LBB5676:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL788:
.LBE5676:
.LBE5675:
.LBB5677:
.LBB5678:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5678:
.LBE5677:
	.loc 1 577 0
	addi 1,1,24
.LCFI125:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE192:
	.size	UploadVertexPNT6_ElemGLuint, .-UploadVertexPNT6_ElemGLuint
	.align 2
	.type	UploadVertexPNT7_ElemGLuint, @function
UploadVertexPNT7_ElemGLuint:
.LFB193:
	.loc 1 577 0
	.cfi_startproc
.LVL789:
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL790:
	lwz 9,.LANCHOR0@l(9)
	stwu 1,-24(1)
.LCFI126:
	.cfi_def_cfa_offset 24
	.loc 1 577 0
	lwzx 0,9,3
.LBB5679:
.LBB5680:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5680:
.LBE5679:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL791:
.LBB5682:
.LBB5681:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL792:
.LBE5681:
.LBE5682:
.LBB5683:
.LBB5684:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL793:
.LBE5684:
.LBE5683:
	.loc 1 577 0
	lis 11,_tempcolorelement@ha
	lis 10,.LC0@ha
	lfs 11,_tempcolorelement@l(11)
	la 11,_tempcolorelement@l(11)
	lfs 0,.LC0@l(10)
	lfs 12,4(11)
	lfs 13,8(11)
	fmuls 11,11,0
	lfs 10,12(11)
	fmuls 12,12,0
	fmuls 13,13,0
	addi 11,1,8
	fmuls 0,10,0
	fctiwz 11,11
	fctiwz 12,12
	fctiwz 13,13
	stfiwx 11,0,11
	fctiwz 0,0
	addi 11,1,12
	stfiwx 12,0,11
	addi 11,1,16
	stfiwx 13,0,11
	addi 11,1,20
	stfiwx 0,0,11
	lwz 7,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	lwz 11,20(1)
.LVL794:
.LBB5685:
.LBB5686:
	.loc 2 2267 0
	stb 7,0(9)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 8,0(9)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 10,0(9)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 11,0(9)
	.loc 2 2274 0
.LVL795:
.LBE5686:
.LBE5685:
.LBB5687:
.LBB5688:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL796:
.LBE5688:
.LBE5687:
.LBB5689:
.LBB5690:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL797:
.LBE5690:
.LBE5689:
.LBB5691:
.LBB5692:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL798:
.LBE5692:
.LBE5691:
.LBB5693:
.LBB5694:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL799:
.LBE5694:
.LBE5693:
.LBB5695:
.LBB5696:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL800:
.LBE5696:
.LBE5695:
.LBB5697:
.LBB5698:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL801:
.LBE5698:
.LBE5697:
.LBB5699:
.LBB5700:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5700:
.LBE5699:
	.loc 1 577 0
	addi 1,1,24
.LCFI127:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE193:
	.size	UploadVertexPNT7_ElemGLuint, .-UploadVertexPNT7_ElemGLuint
	.align 2
	.type	UploadVertexPCT3_ElemGLuint, @function
UploadVertexPCT3_ElemGLuint:
.LFB197:
	.loc 1 577 0
	.cfi_startproc
.LVL802:
	.loc 1 577 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL803:
	lwz 9,.LANCHOR0@l(9)
	lwzx 0,9,3
.LVL804:
.LBB5701:
.LBB5702:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5702:
.LBE5701:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL805:
.LBB5704:
.LBB5703:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL806:
.LBE5703:
.LBE5704:
.LBB5705:
.LBB5706:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL807:
.LBE5706:
.LBE5705:
.LBB5707:
.LBB5708:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL808:
.LBE5708:
.LBE5707:
.LBB5709:
.LBB5710:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL809:
.LBE5710:
.LBE5709:
.LBB5711:
.LBB5712:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5712:
.LBE5711:
	.loc 1 577 0
	blr
	.cfi_endproc
.LFE197:
	.size	UploadVertexPCT3_ElemGLuint, .-UploadVertexPCT3_ElemGLuint
	.align 2
	.type	UploadVertexPCT4_ElemGLuint, @function
UploadVertexPCT4_ElemGLuint:
.LFB198:
	.loc 1 577 0
	.cfi_startproc
.LVL810:
	.loc 1 577 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL811:
	lwz 9,.LANCHOR0@l(9)
	lwzx 0,9,3
.LVL812:
.LBB5713:
.LBB5714:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5714:
.LBE5713:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL813:
.LBB5716:
.LBB5715:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL814:
.LBE5715:
.LBE5716:
.LBB5717:
.LBB5718:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL815:
.LBE5718:
.LBE5717:
.LBB5719:
.LBB5720:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL816:
.LBE5720:
.LBE5719:
.LBB5721:
.LBB5722:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL817:
.LBE5722:
.LBE5721:
.LBB5723:
.LBB5724:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL818:
.LBE5724:
.LBE5723:
.LBB5725:
.LBB5726:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5726:
.LBE5725:
	.loc 1 577 0
	blr
	.cfi_endproc
.LFE198:
	.size	UploadVertexPCT4_ElemGLuint, .-UploadVertexPCT4_ElemGLuint
	.align 2
	.type	UploadVertexPCT5_ElemGLuint, @function
UploadVertexPCT5_ElemGLuint:
.LFB199:
	.loc 1 577 0
	.cfi_startproc
.LVL819:
	.loc 1 577 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL820:
	lwz 9,.LANCHOR0@l(9)
	lwzx 0,9,3
.LVL821:
.LBB5727:
.LBB5728:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5728:
.LBE5727:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL822:
.LBB5730:
.LBB5729:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL823:
.LBE5729:
.LBE5730:
.LBB5731:
.LBB5732:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL824:
.LBE5732:
.LBE5731:
.LBB5733:
.LBB5734:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL825:
.LBE5734:
.LBE5733:
.LBB5735:
.LBB5736:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL826:
.LBE5736:
.LBE5735:
.LBB5737:
.LBB5738:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL827:
.LBE5738:
.LBE5737:
.LBB5739:
.LBB5740:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL828:
.LBE5740:
.LBE5739:
.LBB5741:
.LBB5742:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5742:
.LBE5741:
	.loc 1 577 0
	blr
	.cfi_endproc
.LFE199:
	.size	UploadVertexPCT5_ElemGLuint, .-UploadVertexPCT5_ElemGLuint
	.align 2
	.type	UploadVertexPCT6_ElemGLuint, @function
UploadVertexPCT6_ElemGLuint:
.LFB200:
	.loc 1 577 0
	.cfi_startproc
.LVL829:
	.loc 1 577 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL830:
	lwz 9,.LANCHOR0@l(9)
	lwzx 0,9,3
.LVL831:
.LBB5743:
.LBB5744:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5744:
.LBE5743:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL832:
.LBB5746:
.LBB5745:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL833:
.LBE5745:
.LBE5746:
.LBB5747:
.LBB5748:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL834:
.LBE5748:
.LBE5747:
.LBB5749:
.LBB5750:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL835:
.LBE5750:
.LBE5749:
.LBB5751:
.LBB5752:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL836:
.LBE5752:
.LBE5751:
.LBB5753:
.LBB5754:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL837:
.LBE5754:
.LBE5753:
.LBB5755:
.LBB5756:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL838:
.LBE5756:
.LBE5755:
.LBB5757:
.LBB5758:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL839:
.LBE5758:
.LBE5757:
.LBB5759:
.LBB5760:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5760:
.LBE5759:
	.loc 1 577 0
	blr
	.cfi_endproc
.LFE200:
	.size	UploadVertexPCT6_ElemGLuint, .-UploadVertexPCT6_ElemGLuint
	.align 2
	.type	UploadVertexPCT7_ElemGLuint, @function
UploadVertexPCT7_ElemGLuint:
.LFB201:
	.loc 1 577 0
	.cfi_startproc
.LVL840:
	.loc 1 577 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL841:
	lwz 9,.LANCHOR0@l(9)
	lwzx 0,9,3
.LVL842:
.LBB5761:
.LBB5762:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5762:
.LBE5761:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL843:
.LBB5764:
.LBB5763:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL844:
.LBE5763:
.LBE5764:
.LBB5765:
.LBB5766:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL845:
.LBE5766:
.LBE5765:
.LBB5767:
.LBB5768:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL846:
.LBE5768:
.LBE5767:
.LBB5769:
.LBB5770:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL847:
.LBE5770:
.LBE5769:
.LBB5771:
.LBB5772:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL848:
.LBE5772:
.LBE5771:
.LBB5773:
.LBB5774:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL849:
.LBE5774:
.LBE5773:
.LBB5775:
.LBB5776:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL850:
.LBE5776:
.LBE5775:
.LBB5777:
.LBB5778:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL851:
.LBE5778:
.LBE5777:
.LBB5779:
.LBB5780:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5780:
.LBE5779:
	.loc 1 577 0
	blr
	.cfi_endproc
.LFE201:
	.size	UploadVertexPCT7_ElemGLuint, .-UploadVertexPCT7_ElemGLuint
	.align 2
	.type	UploadVertexPNCT2_ElemGLuint, @function
UploadVertexPNCT2_ElemGLuint:
.LFB204:
	.loc 1 577 0
	.cfi_startproc
.LVL852:
	.loc 1 577 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL853:
	lwz 9,.LANCHOR0@l(9)
	lwzx 0,9,3
.LVL854:
.LBB5781:
.LBB5782:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5782:
.LBE5781:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL855:
.LBB5784:
.LBB5783:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL856:
.LBE5783:
.LBE5784:
.LBB5785:
.LBB5786:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL857:
.LBE5786:
.LBE5785:
.LBB5787:
.LBB5788:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL858:
.LBE5788:
.LBE5787:
.LBB5789:
.LBB5790:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL859:
.LBE5790:
.LBE5789:
.LBB5791:
.LBB5792:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5792:
.LBE5791:
	.loc 1 577 0
	blr
	.cfi_endproc
.LFE204:
	.size	UploadVertexPNCT2_ElemGLuint, .-UploadVertexPNCT2_ElemGLuint
	.align 2
	.type	UploadVertexPNCT3_ElemGLuint, @function
UploadVertexPNCT3_ElemGLuint:
.LFB205:
	.loc 1 577 0
	.cfi_startproc
.LVL860:
	.loc 1 577 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL861:
	lwz 9,.LANCHOR0@l(9)
	lwzx 0,9,3
.LVL862:
.LBB5793:
.LBB5794:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5794:
.LBE5793:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL863:
.LBB5796:
.LBB5795:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL864:
.LBE5795:
.LBE5796:
.LBB5797:
.LBB5798:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL865:
.LBE5798:
.LBE5797:
.LBB5799:
.LBB5800:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL866:
.LBE5800:
.LBE5799:
.LBB5801:
.LBB5802:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL867:
.LBE5802:
.LBE5801:
.LBB5803:
.LBB5804:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL868:
.LBE5804:
.LBE5803:
.LBB5805:
.LBB5806:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5806:
.LBE5805:
	.loc 1 577 0
	blr
	.cfi_endproc
.LFE205:
	.size	UploadVertexPNCT3_ElemGLuint, .-UploadVertexPNCT3_ElemGLuint
	.align 2
	.type	UploadVertexPNCT4_ElemGLuint, @function
UploadVertexPNCT4_ElemGLuint:
.LFB206:
	.loc 1 577 0
	.cfi_startproc
.LVL869:
	.loc 1 577 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL870:
	lwz 9,.LANCHOR0@l(9)
	lwzx 0,9,3
.LVL871:
.LBB5807:
.LBB5808:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5808:
.LBE5807:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL872:
.LBB5810:
.LBB5809:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL873:
.LBE5809:
.LBE5810:
.LBB5811:
.LBB5812:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL874:
.LBE5812:
.LBE5811:
.LBB5813:
.LBB5814:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL875:
.LBE5814:
.LBE5813:
.LBB5815:
.LBB5816:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL876:
.LBE5816:
.LBE5815:
.LBB5817:
.LBB5818:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL877:
.LBE5818:
.LBE5817:
.LBB5819:
.LBB5820:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL878:
.LBE5820:
.LBE5819:
.LBB5821:
.LBB5822:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5822:
.LBE5821:
	.loc 1 577 0
	blr
	.cfi_endproc
.LFE206:
	.size	UploadVertexPNCT4_ElemGLuint, .-UploadVertexPNCT4_ElemGLuint
	.align 2
	.type	UploadVertexPNCT5_ElemGLuint, @function
UploadVertexPNCT5_ElemGLuint:
.LFB207:
	.loc 1 577 0
	.cfi_startproc
.LVL879:
	.loc 1 577 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL880:
	lwz 9,.LANCHOR0@l(9)
	lwzx 0,9,3
.LVL881:
.LBB5823:
.LBB5824:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5824:
.LBE5823:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL882:
.LBB5826:
.LBB5825:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL883:
.LBE5825:
.LBE5826:
.LBB5827:
.LBB5828:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL884:
.LBE5828:
.LBE5827:
.LBB5829:
.LBB5830:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL885:
.LBE5830:
.LBE5829:
.LBB5831:
.LBB5832:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL886:
.LBE5832:
.LBE5831:
.LBB5833:
.LBB5834:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL887:
.LBE5834:
.LBE5833:
.LBB5835:
.LBB5836:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL888:
.LBE5836:
.LBE5835:
.LBB5837:
.LBB5838:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL889:
.LBE5838:
.LBE5837:
.LBB5839:
.LBB5840:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5840:
.LBE5839:
	.loc 1 577 0
	blr
	.cfi_endproc
.LFE207:
	.size	UploadVertexPNCT5_ElemGLuint, .-UploadVertexPNCT5_ElemGLuint
	.align 2
	.type	UploadVertexPNCT6_ElemGLuint, @function
UploadVertexPNCT6_ElemGLuint:
.LFB208:
	.loc 1 577 0
	.cfi_startproc
.LVL890:
	.loc 1 577 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL891:
	lwz 9,.LANCHOR0@l(9)
	lwzx 0,9,3
.LVL892:
.LBB5841:
.LBB5842:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5842:
.LBE5841:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL893:
.LBB5844:
.LBB5843:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL894:
.LBE5843:
.LBE5844:
.LBB5845:
.LBB5846:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL895:
.LBE5846:
.LBE5845:
.LBB5847:
.LBB5848:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL896:
.LBE5848:
.LBE5847:
.LBB5849:
.LBB5850:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL897:
.LBE5850:
.LBE5849:
.LBB5851:
.LBB5852:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL898:
.LBE5852:
.LBE5851:
.LBB5853:
.LBB5854:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL899:
.LBE5854:
.LBE5853:
.LBB5855:
.LBB5856:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL900:
.LBE5856:
.LBE5855:
.LBB5857:
.LBB5858:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL901:
.LBE5858:
.LBE5857:
.LBB5859:
.LBB5860:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5860:
.LBE5859:
	.loc 1 577 0
	blr
	.cfi_endproc
.LFE208:
	.size	UploadVertexPNCT6_ElemGLuint, .-UploadVertexPNCT6_ElemGLuint
	.align 2
	.type	UploadVertexPNCT7_ElemGLuint, @function
UploadVertexPNCT7_ElemGLuint:
.LFB209:
	.loc 1 577 0
	.cfi_startproc
.LVL902:
	.loc 1 577 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL903:
	lwz 9,.LANCHOR0@l(9)
	lwzx 0,9,3
.LVL904:
.LBB5861:
.LBB5862:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE5862:
.LBE5861:
	.loc 1 577 0
	rlwinm 0,0,0,0xffff
.LVL905:
.LBB5864:
.LBB5863:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL906:
.LBE5863:
.LBE5864:
.LBB5865:
.LBB5866:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL907:
.LBE5866:
.LBE5865:
.LBB5867:
.LBB5868:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL908:
.LBE5868:
.LBE5867:
.LBB5869:
.LBB5870:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL909:
.LBE5870:
.LBE5869:
.LBB5871:
.LBB5872:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL910:
.LBE5872:
.LBE5871:
.LBB5873:
.LBB5874:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL911:
.LBE5874:
.LBE5873:
.LBB5875:
.LBB5876:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL912:
.LBE5876:
.LBE5875:
.LBB5877:
.LBB5878:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL913:
.LBE5878:
.LBE5877:
.LBB5879:
.LBB5880:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL914:
.LBE5880:
.LBE5879:
.LBB5881:
.LBB5882:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE5882:
.LBE5881:
	.loc 1 577 0
	blr
	.cfi_endproc
.LFE209:
	.size	UploadVertexPNCT7_ElemGLuint, .-UploadVertexPNCT7_ElemGLuint
	.section	".text"
	.align 2
	.type	GX_TestInitSpecularDir, @function
GX_TestInitSpecularDir:
.LFB211:
	.loc 1 638 0
	.cfi_startproc
.LVL915:
	stwu 1,-48(1)
.LCFI128:
	.cfi_def_cfa_offset 48
	.loc 1 644 0
	lis 9,.LC1@ha
	.loc 1 638 0
	mflr 0
	stfd 31,40(1)
	.loc 1 643 0
	fneg 31,2
	.cfi_offset 63, -8
	.cfi_register 65, 0
	.loc 1 638 0
	stfd 30,32(1)
	.loc 1 642 0
	fneg 30,1
	.cfi_offset 62, -16
.LVL916:
	.loc 1 638 0
	stfd 29,24(1)
	.loc 1 645 0
	fmuls 1,31,31
.LVL917:
	.loc 1 644 0
	lfs 29,.LC1@l(9)
	.cfi_offset 61, -24
	.loc 1 638 0
	stfd 28,16(1)
	.loc 1 644 0
	fsubs 28,29,3
	.cfi_offset 60, -32
.LVL918:
	.loc 1 638 0
	stw 0,52(1)
	.loc 1 645 0
	fmadds 1,30,30,1
	.loc 1 638 0
	stw 31,12(1)
	.loc 1 638 0
	mr 31,3
	.cfi_offset 31, -36
	.cfi_offset 65, 4
	.loc 1 645 0
	fmadds 1,28,28,1
	bl sqrtf
.LVL919:
	.loc 1 659 0
	lwz 0,52(1)
	.loc 1 645 0
	fdivs 29,29,1
.LVL920:
	.loc 1 659 0
	mtlr 0
	.loc 1 646 0
	fmuls 30,30,29
.LVL921:
	.loc 1 647 0
	fmuls 31,31,29
.LVL922:
	.loc 1 648 0
	fmuls 29,28,29
.LVL923:
	.loc 1 659 0
	lfd 28,16(1)
	.loc 1 656 0
	stfs 30,52(31)
	.loc 1 657 0
	stfs 31,56(31)
	.loc 1 658 0
	stfs 29,60(31)
	.loc 1 659 0
	lfd 30,32(1)
.LVL924:
	lwz 31,12(1)
.LVL925:
	lfd 29,24(1)
.LVL926:
	lfd 31,40(1)
.LVL927:
	addi 1,1,48
.LCFI129:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE211:
	.size	GX_TestInitSpecularDir, .-GX_TestInitSpecularDir
	.align 2
	.type	confVtx, @function
confVtx:
.LFB234:
	.loc 1 1709 0
	.cfi_startproc
.LVL928:
	stwu 1,-64(1)
.LCFI130:
	.cfi_def_cfa_offset 64
	mflr 0
	stw 30,56(1)
	.loc 1 1712 0
	lis 30,.LANCHOR1@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 1709 0
	stw 0,68(1)
	stw 21,20(1)
	mr 21,3
	.cfi_offset 21, -44
	.cfi_offset 65, 4
	stw 19,12(1)
	stw 20,16(1)
	stw 22,24(1)
	stw 23,28(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 31,60(1)
	.loc 1 1710 0
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	bl GX_ClearVtxDesc
.LVL929:
	.loc 1 1712 0
	lbz 0,.LANCHOR1@l(30)
	cmpwi 7,0,0
	bne- 7,.L135
.L107:
.LVL930:
.LBB5921:
.LBB5922:
	.loc 1 1688 0
	lis 31,vert@ha
	lbz 0,vert@l(31)
	la 31,vert@l(31)
	cmpwi 7,0,0
	beq- 7,.L108
	.loc 1 1690 0
	lwz 0,12(31)
	cmpwi 7,0,3
	beq- 7,.L130
.L132:
	lis 23,.LANCHOR1@ha
	la 23,.LANCHOR1@l(23)
	b .L133
.L108:
	.loc 1 1704 0
	la 23,.LANCHOR1@l(30)
.L133:
	li 0,1
	li 4,1
	stb 0,1(23)
.L110:
.LBE5922:
.LBE5921:
.LBB5941:
.LBB5942:
	.loc 1 1688 0
	lis 31,norm@ha
.LBE5942:
.LBE5941:
	.loc 1 1718 0
	li 3,9
	bl GX_SetVtxDesc
.LVL931:
.LBB5963:
.LBB5960:
	.loc 1 1688 0
	lbz 0,norm@l(31)
	la 29,norm@l(31)
	cmpwi 7,0,0
	beq- 7,.L111
	.loc 1 1690 0
	lwz 0,12(29)
	cmpwi 7,0,3
	beq- 7,.L136
.L112:
	.loc 1 1699 0
	li 0,1
	stb 0,2(23)
.L113:
.LBE5960:
.LBE5963:
	.loc 1 1723 0
	lbz 4,2(23)
.LBB5964:
.LBB5965:
	.loc 1 1688 0
	lis 31,color@ha
.LBE5965:
.LBE5964:
	.loc 1 1723 0
	li 3,10
	bl GX_SetVtxDesc
.LVL932:
.LBB5983:
.LBB5981:
	.loc 1 1688 0
	lbz 0,color@l(31)
	la 31,color@l(31)
	cmpwi 7,0,0
	bne- 7,.L137
.L115:
	.loc 1 1704 0
	li 0,1
	li 4,1
	stb 0,3(23)
.L117:
.LBE5981:
.LBE5983:
	.loc 1 1727 0
	lis 28,tex@ha
	li 3,11
	la 28,tex@l(28)
.LBB5984:
.LBB5985:
	.loc 1 1704 0
	lis 25,.LANCHOR0@ha
.LBE5985:
.LBE5984:
	.loc 1 1727 0
	bl GX_SetVtxDesc
.LVL933:
	mr 29,28
	li 30,255
	.loc 1 1730 0
	li 31,0
	.loc 1 1738 0
	lis 22,.LANCHOR2@ha
.LBB6004:
.LBB6000:
	.loc 1 1704 0
	la 25,.LANCHOR0@l(25)
	li 24,1
.LBB5986:
.LBB5987:
.LBB5988:
	.loc 1 1692 0
	li 20,3
.LVL934:
.L124:
.LBE5988:
.LBE5987:
.LBE5986:
.LBE6000:
.LBE6004:
	.loc 1 1732 0
	mr 3,31
	bl _glGetEnableTex
	cmpwi 7,3,0
	beq- 7,.L118
.LVL935:
	cmplwi 7,30,6
.LBB6005:
	li 3,13
.LBE6005:
	bgt- 7,.L119
	la 9,.LANCHOR2@l(22)
	lbzx 3,9,30
.L119:
	.loc 1 1737 0
	mulli 26,31,20
.LBB6006:
.LBB6001:
	.loc 1 1688 0
	lbzx 0,28,26
.LBE6001:
.LBE6006:
	.loc 1 1737 0
	add 26,28,26
.LVL936:
.LBB6007:
.LBB6002:
	.loc 1 1688 0
	cmpwi 7,0,0
	beq- 7,.L120
	.loc 1 1690 0
	lwz 0,12(26)
	cmpwi 7,0,2
	beq- 7,.L138
.L120:
	.loc 1 1704 0
	addi 27,25,8
	stbx 24,27,31
.LVL937:
.L122:
.LBE6002:
.LBE6007:
	.loc 1 1738 0
	lbz 0,0(29)
	cmpwi 7,0,0
	beq- 7,.L118
.LVL938:
	cmplwi 7,30,6
.LBB6008:
	li 3,13
.LBE6008:
	bgt- 7,.L123
	la 9,.LANCHOR2@l(22)
	lbzx 3,9,30
.L123:
	.loc 1 1740 0
	lbzx 4,27,31
	bl GX_SetVtxDesc
.LVL939:
.L118:
	.loc 1 1730 0
	cmpwi 7,31,7
	addi 30,30,1
	addi 29,29,20
	rlwinm 30,30,0,0xff
	addi 31,31,1
.LVL940:
	bne+ 7,.L124
	.loc 1 1743 0
	lwz 0,68(1)
	lwz 19,12(1)
	mtlr 0
	lwz 20,16(1)
	lwz 21,20(1)
.LVL941:
	lwz 22,24(1)
	lwz 23,28(1)
	lwz 24,32(1)
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
.LVL942:
	addi 1,1,64
	.cfi_remember_state
.LCFI131:
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
	.cfi_restore 20
	.cfi_restore 19
	blr
.LVL943:
.L111:
.LCFI132:
	.cfi_restore_state
.LBB6009:
.LBB5961:
	.loc 1 1704 0
	li 0,1
	stb 0,2(23)
.L114:
.LVL944:
.LBE5961:
.LBE6009:
.LBB6010:
.LBB5982:
	.loc 1 1688 0
	lis 31,color@ha
	lbz 0,color@l(31)
	la 31,color@l(31)
	cmpwi 7,0,0
	beq- 7,.L115
.L137:
	.loc 1 1690 0
	lwz 0,12(31)
	cmpwi 7,0,4
	bne+ 7,.L115
	lwz 0,16(31)
	cmpwi 7,0,5121
	bne+ 7,.L115
	lbz 0,.LANCHOR1@l(30)
	cmpwi 7,0,0
	beq+ 7,.L115
.LVL945:
.LBB5966:
.LBB5967:
.LBB5968:
.LBB5969:
.LBB5970:
	.loc 1 188 0
	lis 9,.LANCHOR0+4@ha
.LBE5970:
.LBE5969:
.LBE5968:
.LBE5967:
	.loc 1 1930 0
	lbz 5,8(31)
.LVL946:
.LBB5980:
.LBB5979:
.LBB5977:
.LBB5975:
	.loc 1 188 0
	lwz 0,.LANCHOR0+4@l(9)
.LBE5975:
.LBE5977:
	.loc 1 1694 0
	li 3,11
.LBB5978:
.LBB5976:
.LBB5971:
.LBB5972:
	.loc 1 97 0
	lwz 30,4(31)
.LBE5972:
.LBE5971:
	.loc 1 188 0
	mullw 0,5,0
.LBB5974:
.LBB5973:
	.loc 1 97 0
	add 30,30,0
.LBE5973:
.LBE5974:
.LBE5976:
.LBE5978:
	.loc 1 1692 0
	li 0,3
	.loc 1 1694 0
	mr 4,30
	.loc 1 1692 0
	stb 0,3(23)
	.loc 1 1694 0
	bl GX_SetArray
.LVL947:
	.loc 1 1695 0
	lbz 4,8(31)
	mr 3,30
	mullw 4,21,4
	bl DCFlushRange
	lbz 4,3(23)
	b .L117
.LVL948:
.L138:
.LBE5979:
.LBE5980:
.LBE5966:
.LBE5982:
.LBE6010:
.LBB6011:
.LBB6003:
	.loc 1 1690 0
	lwz 0,16(26)
	cmpwi 7,0,5126
	bne+ 7,.L120
	lbz 0,0(23)
	cmpwi 7,0,0
	beq+ 7,.L120
.LVL949:
.LBB5999:
	.loc 1 1930 0
	lbz 5,8(26)
.LVL950:
.LBB5998:
.LBB5997:
	.loc 1 1692 0
	addi 27,25,8
.LBB5989:
.LBB5990:
	.loc 1 188 0
	lwz 0,4(25)
.LBB5991:
.LBB5992:
	.loc 1 97 0
	lwz 19,4(26)
.LBE5992:
.LBE5991:
	.loc 1 188 0
	mullw 0,5,0
.LBE5990:
.LBE5989:
	.loc 1 1692 0
	stbx 20,27,31
.LBB5996:
.LBB5995:
.LBB5994:
.LBB5993:
	.loc 1 97 0
	add 19,19,0
.LBE5993:
.LBE5994:
.LBE5995:
.LBE5996:
	.loc 1 1694 0
	mr 4,19
	bl GX_SetArray
.LVL951:
	.loc 1 1695 0
	lbz 4,8(26)
	mr 3,19
	mullw 4,21,4
	bl DCFlushRange
	b .L122
.LVL952:
.L135:
.LBE5997:
.LBE5998:
.LBE5999:
.LBE6003:
.LBE6011:
	.loc 1 1714 0
	bl GX_InvVtxCache
	b .L107
.LVL953:
.L136:
.LBB6012:
.LBB5962:
	.loc 1 1690 0
	lwz 9,16(29)
	cmpwi 7,9,5126
	bne+ 7,.L112
	lbz 9,.LANCHOR1@l(30)
	cmpwi 7,9,0
	beq+ 7,.L112
.LVL954:
.LBB5943:
.LBB5944:
.LBB5945:
.LBB5946:
.LBB5947:
	.loc 1 188 0
	lis 9,.LANCHOR0+4@ha
.LBE5947:
.LBE5946:
.LBE5945:
.LBE5944:
	.loc 1 1930 0
	lbz 5,8(29)
.LVL955:
.LBB5959:
.LBB5958:
.LBB5955:
.LBB5952:
	.loc 1 188 0
	lwz 9,.LANCHOR0+4@l(9)
.LBE5952:
.LBE5955:
	.loc 1 1694 0
	li 3,10
.LBB5956:
.LBB5953:
.LBB5948:
.LBB5949:
	.loc 1 97 0
	lwz 28,4(29)
.LBE5949:
.LBE5948:
	.loc 1 188 0
	mullw 9,5,9
.LBE5953:
.LBE5956:
	.loc 1 1692 0
	stb 0,2(23)
.LBB5957:
.LBB5954:
.LBB5951:
.LBB5950:
	.loc 1 97 0
	add 28,28,9
.LBE5950:
.LBE5951:
.LBE5954:
.LBE5957:
	.loc 1 1694 0
	mr 4,28
	bl GX_SetArray
.LVL956:
	.loc 1 1695 0
	lbz 4,8(29)
	mr 3,28
	mullw 4,21,4
	bl DCFlushRange
.LBE5958:
.LBE5959:
.LBE5943:
.LBE5962:
.LBE6012:
	.loc 1 1721 0
	lbz 0,norm@l(31)
	cmpwi 7,0,0
	beq+ 7,.L114
	b .L113
.LVL957:
.L130:
.LBB6013:
.LBB5940:
	.loc 1 1690 0
	lwz 9,16(31)
	cmpwi 7,9,5126
	bne+ 7,.L132
	lbz 9,.LANCHOR1@l(30)
	la 23,.LANCHOR1@l(30)
	cmpwi 7,9,0
	beq+ 7,.L133
.LVL958:
.LBB5923:
.LBB5924:
.LBB5925:
.LBB5926:
.LBB5927:
	.loc 1 188 0
	lis 9,.LANCHOR0+4@ha
.LBE5927:
.LBE5926:
.LBE5925:
.LBE5924:
	.loc 1 1930 0
	lbz 5,8(31)
.LVL959:
.LBB5939:
.LBB5938:
.LBB5935:
.LBB5932:
	.loc 1 188 0
	lwz 9,.LANCHOR0+4@l(9)
.LBE5932:
.LBE5935:
	.loc 1 1694 0
	li 3,9
.LBB5936:
.LBB5933:
.LBB5928:
.LBB5929:
	.loc 1 97 0
	lwz 29,4(31)
.LBE5929:
.LBE5928:
	.loc 1 188 0
	mullw 9,5,9
.LBE5933:
.LBE5936:
	.loc 1 1692 0
	stb 0,1(23)
.LBB5937:
.LBB5934:
.LBB5931:
.LBB5930:
	.loc 1 97 0
	add 29,29,9
.LBE5930:
.LBE5931:
.LBE5934:
.LBE5937:
	.loc 1 1694 0
	mr 4,29
	bl GX_SetArray
.LVL960:
	.loc 1 1695 0
	lbz 4,8(31)
	mr 3,29
	mullw 4,21,4
	bl DCFlushRange
	lbz 4,1(23)
	b .L110
.LBE5938:
.LBE5939:
.LBE5923:
.LBE5940:
.LBE6013:
	.cfi_endproc
.LFE234:
	.size	confVtx, .-confVtx
	.align 2
	.type	UploadVertex, @function
UploadVertex:
.LFB81:
	.loc 1 376 0
	.cfi_startproc
.LVL961:
	mflr 0
	stwu 1,-1240(1)
.LCFI133:
	.cfi_def_cfa_offset 1240
	.cfi_register 65, 0
	.loc 1 378 0
	lis 9,.LANCHOR1@ha
	.loc 1 376 0
	stw 27,1220(1)
	.loc 1 378 0
	la 9,.LANCHOR1@l(9)
	.loc 1 376 0
	stw 0,1244(1)
	mr 27,3
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	stw 17,1180(1)
	stw 18,1184(1)
	stw 19,1188(1)
	stw 20,1192(1)
	stw 21,1196(1)
	stw 22,1200(1)
	stw 23,1204(1)
	stw 24,1208(1)
	stw 25,1212(1)
	stw 26,1216(1)
	stw 28,1224(1)
	stw 29,1228(1)
	stw 30,1232(1)
	stw 31,1236(1)
	.loc 1 378 0
	lbz 0,1(9)
	cmpwi 7,0,3
	beq- 7,.L604
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
.LVL962:
.LBB6678:
	.loc 1 386 0
	lis 10,.LANCHOR0@ha
	la 11,.LANCHOR0@l(10)
	lwz 0,64(11)
	cmpwi 7,0,1
	beq- 7,.L152
	cmplwi 7,0,1
	bge- 7,.L605
	.loc 1 389 0
	mulli 10,3,12
	lis 11,_vertexelements@ha
	la 0,_vertexelements@l(11)
	slwi 22,3,1
	add 10,10,0
.LVL963:
	slwi 21,3,2
.LVL964:
.L150:
	.loc 1 398 0
	cmpwi 7,10,0
	beq- 7,.L141
.LVL965:
.L586:
.LBB6679:
.LBB6680:
	.loc 2 2123 0
	lis 11,wgPipe@ha
.LBE6680:
.LBE6679:
	.loc 1 399 0
	lwz 7,0(10)
.LBB6683:
.LBB6681:
	.loc 2 2123 0
	lwz 11,wgPipe@l(11)
.LBE6681:
.LBE6683:
	.loc 1 399 0
	lwz 8,4(10)
	lwz 0,8(10)
.LVL966:
.LBB6684:
.LBB6682:
	.loc 2 2123 0
	stw 7,0(11)
	.loc 2 2124 0
	.loc 2 2125 0
	stw 8,0(11)
	.loc 2 2126 0
	.loc 2 2127 0
	stw 0,0(11)
	.loc 2 2128 0
.LVL967:
.L141:
.LBE6682:
.LBE6684:
.LBE6678:
	.loc 1 402 0
	lbz 0,2(9)
	cmpwi 7,0,3
	beq- 7,.L606
.LVL968:
.LBB6960:
	.loc 1 412 0
	lis 10,.LANCHOR0@ha
	la 11,.LANCHOR0@l(10)
	lwz 0,64(11)
	cmpwi 7,0,1
	beq- 7,.L234
	cmplwi 7,0,1
	bge- 7,.L607
	.loc 1 415 0
	mulli 10,27,12
	lis 11,_normalelements@ha
	la 0,_normalelements@l(11)
	add 10,10,0
.LVL969:
.L232:
	.loc 1 424 0
	cmpwi 7,10,0
	beq- 7,.L223
.LVL970:
.L589:
.LBB6961:
.LBB6962:
	.loc 2 2225 0
	lis 11,wgPipe@ha
.LBE6962:
.LBE6961:
	.loc 1 425 0
	lwz 7,0(10)
.LBB6965:
.LBB6963:
	.loc 2 2225 0
	lwz 11,wgPipe@l(11)
.LBE6963:
.LBE6965:
	.loc 1 425 0
	lwz 8,4(10)
	lwz 0,8(10)
.LVL971:
.LBB6966:
.LBB6964:
	.loc 2 2225 0
	stw 7,0(11)
	.loc 2 2226 0
	.loc 2 2227 0
	stw 8,0(11)
	.loc 2 2228 0
	.loc 2 2229 0
	stw 0,0(11)
	.loc 2 2230 0
.LVL972:
.L223:
.LBE6964:
.LBE6966:
.LBE6960:
	.loc 1 428 0
	lbz 0,3(9)
	cmpwi 7,0,3
	beq- 7,.L608
.LVL973:
.LBB7210:
	.loc 1 438 0
	lis 9,.LANCHOR0@ha
	la 11,.LANCHOR0@l(9)
	lwz 0,64(11)
	cmpwi 7,0,1
	beq- 7,.L315
	cmplwi 7,0,1
	bge- 7,.L609
	.loc 1 441 0
	lis 11,_colorelements@ha
	slwi 9,27,4
	la 0,_colorelements@l(11)
	add 9,9,0
.LVL974:
.L313:
	.loc 1 451 0
	cmpwi 7,9,0
	beq- 7,.L303
	lis 10,.LC0@ha
.LVL975:
.L592:
	.loc 1 452 0
	lfs 13,0(9)
	addi 7,1,1160
	lfs 0,.LC0@l(10)
	addi 10,1,1164
.LBB7211:
.LBB7212:
	.loc 2 2267 0
	lis 11,wgPipe@ha
.LBE7212:
.LBE7211:
	.loc 1 452 0
	fmuls 13,13,0
.LBB7215:
.LBB7213:
	.loc 2 2267 0
	lwz 11,wgPipe@l(11)
.LBE7213:
.LBE7215:
	.loc 1 452 0
	fctiwz 13,13
	stfiwx 13,0,7
	addi 7,1,1168
	lfs 13,4(9)
	lwz 8,1160(1)
	fmuls 13,13,0
	fctiwz 13,13
	stfiwx 13,0,10
	lfs 13,8(9)
	lwz 10,1164(1)
	fmuls 13,13,0
	fctiwz 13,13
	stfiwx 13,0,7
	addi 7,1,1172
	lfs 13,12(9)
	lwz 9,1168(1)
	fmuls 0,13,0
	fctiwz 0,0
	stfiwx 0,0,7
	lwz 0,1172(1)
.LVL976:
.LBB7216:
.LBB7214:
	.loc 2 2267 0
	stb 8,0(11)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 10,0(11)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 9,0(11)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(11)
	.loc 2 2274 0
.LVL977:
.L303:
.LBE7214:
.LBE7216:
.LBE7210:
.LBB7540:
.LBB7541:
.LBB7542:
.LBB7543:
.LBB7544:
.LBB7545:
.LBB7546:
	.loc 1 350 0 discriminator 1
	lis 25,tex@ha
	.loc 1 375 0 discriminator 1
	lis 29,_texcoordelements@ha
	slwi 0,27,3
	.loc 1 350 0 discriminator 1
	la 25,tex@l(25)
	.loc 1 375 0 discriminator 1
	la 29,_texcoordelements@l(29)
.LBE7546:
.LBE7545:
.LBE7544:
.LBE7543:
.LBE7542:
.LBE7541:
.LBE7540:
	.loc 1 462 0 discriminator 1
	lis 28,.LANCHOR0@ha
.LBB7575:
.LBB7576:
.LBB7577:
.LBB7578:
.LBB7579:
.LBB7580:
	.loc 1 125 0 discriminator 1
	lis 17,.L447@ha
.LBE7580:
.LBE7579:
.LBB7596:
.LBB7597:
	lis 19,.L437@ha
.LBE7597:
.LBE7596:
.LBE7578:
.LBE7577:
.LBE7576:
.LBB7662:
.LBB7663:
.LBB7664:
.LBB7665:
.LBB7666:
	lis 18,.L473@ha
.LBE7666:
.LBE7665:
.LBB7681:
.LBB7682:
	lis 20,.L464@ha
.LBE7682:
.LBE7681:
.LBE7664:
.LBE7663:
.LBE7662:
.LBE7575:
.LBB7774:
.LBB7569:
.LBB7565:
.LBB7561:
.LBB7556:
.LBB7551:
.LBB7547:
	.loc 1 375 0 discriminator 1
	add 29,0,29
	.loc 1 350 0 discriminator 1
	mr 30,25
.LBE7547:
.LBE7551:
.LBE7556:
.LBE7561:
.LBE7565:
.LBE7569:
.LBE7774:
.LBB7775:
	.loc 1 375 0 discriminator 1
	li 31,0
.LBE7775:
	.loc 1 462 0 discriminator 1
	la 28,.LANCHOR0@l(28)
.LBB7776:
.LBB7742:
.LBB7743:
	.loc 2 2323 0 discriminator 1
	lis 26,wgPipe@ha
.LBE7743:
.LBE7742:
.LBB7746:
.LBB7653:
.LBB7634:
.LBB7617:
.LBB7593:
	.loc 1 125 0 discriminator 1
	la 17,.L447@l(17)
.LBB7581:
	.loc 1 166 0 discriminator 1
	lis 23,.LC5@ha
.LBE7581:
.LBB7582:
	.loc 1 159 0 discriminator 1
	lis 24,.LC3@ha
.LBE7582:
.LBE7593:
.LBE7617:
.LBB7618:
.LBB7609:
	.loc 1 125 0 discriminator 1
	la 19,.L437@l(19)
.LBE7609:
.LBE7618:
.LBE7634:
.LBE7653:
.LBE7746:
.LBB7747:
.LBB7735:
.LBB7717:
.LBB7698:
.LBB7677:
	la 18,.L473@l(18)
.LBE7677:
.LBE7698:
.LBB7699:
.LBB7693:
	la 20,.L464@l(20)
	b .L312
.LVL978:
.L412:
.LBE7693:
.LBE7699:
.LBE7717:
.LBE7735:
.LBE7747:
	.loc 1 472 0
	lwz 0,64(28)
	cmpwi 7,0,1
	beq- 7,.L423
	cmplwi 7,0,1
	.loc 1 475 0
	mr 9,29
	.loc 1 472 0
	blt- 7,.L421
	cmpwi 7,0,2
	beq- 7,.L610
.LVL979:
.L411:
.LBE7776:
	.loc 1 457 0
	cmpwi 7,31,7
	addi 29,29,8000
	addi 30,30,20
	addi 31,31,1
.LVL980:
	beq- 7,.L611
.LVL981:
.L312:
	.loc 1 459 0
	mr 3,31
	bl _glGetEnableTex
	cmpwi 7,3,0
	beq- 7,.L411
	.loc 1 462 0
	addi 9,28,8
	lbzx 0,9,31
	cmpwi 7,0,3
	bne+ 7,.L412
	.loc 1 464 0
	lbz 0,0(30)
	cmpwi 7,0,0
	beq- 7,.L411
.LBB7777:
.LBB7570:
	.loc 1 359 0
	lwz 0,64(28)
	cmpwi 7,0,1
	beq- 7,.L414
	cmpwi 7,0,2
	beq- 7,.L415
	lwz 0,4(28)
	.loc 1 363 0
	mr 9,27
.LBE7570:
.LBE7777:
	.loc 1 466 0
	add 0,0,9
.LBB7778:
.LBB7779:
	.loc 2 2399 0
	lwz 9,wgPipe@l(26)
.LBE7779:
.LBE7778:
	.loc 1 466 0
	rlwinm 0,0,0,0xffff
.LVL982:
.LBB7785:
.LBB7780:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL983:
.L622:
.LBE7780:
.LBE7785:
	.loc 1 457 0
	cmpwi 7,31,7
	addi 29,29,8000
	addi 30,30,20
	addi 31,31,1
.LVL984:
	bne+ 7,.L312
.L611:
	.loc 1 488 0
	lwz 0,1244(1)
	lwz 17,1180(1)
	mtlr 0
	lwz 18,1184(1)
	lwz 19,1188(1)
	lwz 20,1192(1)
	lwz 21,1196(1)
	lwz 22,1200(1)
	lwz 23,1204(1)
	lwz 24,1208(1)
	lwz 25,1212(1)
	lwz 26,1216(1)
	lwz 27,1220(1)
.LVL985:
	lwz 28,1224(1)
	lwz 29,1228(1)
	lwz 30,1232(1)
	lwz 31,1236(1)
.LVL986:
	addi 1,1,1240
	.cfi_remember_state
.LCFI134:
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
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	blr
.LVL987:
.L605:
.LCFI135:
	.cfi_restore_state
.LBB7786:
	.loc 1 386 0
	cmpwi 7,0,2
	slwi 22,3,1
	slwi 21,3,2
	bne+ 7,.L141
.LBB6685:
.LBB6686:
	.loc 1 335 0
	lwz 0,68(11)
.LBE6686:
.LBE6685:
	.loc 1 395 0
	lwz 10,.LANCHOR0@l(10)
.LVL988:
.LBB6692:
.LBB6690:
	.loc 1 335 0
	cmpwi 7,0,5123
	beq- 7,.L188
	cmpwi 7,0,5125
	beq- 7,.L189
	cmpwi 7,0,5121
	beq- 7,.L612
	li 7,0
	slwi 22,3,1
	slwi 21,3,2
.L186:
.LVL989:
.LBE6690:
.LBE6692:
.LBB6693:
.LBB6694:
	.loc 1 203 0
	lis 10,vert@ha
	lbz 0,vert@l(10)
	la 10,vert@l(10)
	cmpwi 7,0,0
	beq- 7,.L141
	.loc 1 205 0
	lwz 8,16(10)
	cmpwi 7,8,5126
	bne- 7,.L191
	lwz 0,12(10)
	cmpwi 7,0,3
.LBB6695:
.LBB6696:
.LBB6697:
	.loc 1 188 0
	lbz 0,8(10)
.LBB6698:
.LBB6699:
	.loc 1 97 0
	lwz 10,4(10)
.LBE6699:
.LBE6698:
	.loc 1 188 0
	mullw 7,7,0
.LVL990:
.LBE6697:
.LBE6696:
.LBE6695:
	.loc 1 205 0
	beq- 7,.L597
.LVL991:
	li 8,6
.LBB6704:
.LBB6705:
.LBB6706:
.LBB6707:
.LBB6708:
.LBB6709:
	.loc 1 97 0
	add 10,10,7
.LVL992:
.L200:
.LBE6709:
.LBE6708:
.LBE6707:
.LBE6706:
.LBB6716:
.LBB6717:
.LBB6718:
	.loc 1 173 0
	lwz 0,0(10)
	addi 10,10,4
.LVL993:
	stw 0,16(11)
.LVL994:
.L193:
.LBE6718:
.LBE6717:
.LBE6716:
.LBB6737:
.LBB6738:
	.loc 1 125 0
	cmplwi 7,8,10
	bgt- 7,.L210
	lis 7,.L212@ha
	slwi 0,8,2
	la 7,.L212@l(7)
	lwzx 0,7,0
	add 7,0,7
	mtctr 7
	bctr
	.section	.rodata
	.align 2
	.align 2
.L212:
	.long .L522-.L212
	.long .L523-.L212
	.long .L524-.L212
	.long .L525-.L212
	.long .L526-.L212
	.long .L527-.L212
	.long .L211-.L212
	.long .L210-.L212
	.long .L210-.L212
	.long .L210-.L212
	.long .L209-.L212
	.section	".text"
.LVL995:
.L613:
.LBE6738:
.LBE6737:
.LBE6705:
.LBE6704:
.LBE6694:
.LBE6693:
.LBE7786:
.LBB7787:
.LBB7748:
.LBB7736:
.LBB7718:
.LBB7719:
.LBB7720:
.LBB7721:
	.loc 1 188 0
	mullw 10,0,10
.LVL996:
.LBB7722:
.LBB7723:
	.loc 1 97 0
	lwz 9,4(9)
.LVL997:
	add 9,9,10
.LVL998:
.L421:
.LBE7723:
.LBE7722:
.LBE7721:
.LBE7720:
.LBE7719:
.LBE7718:
.LBE7736:
.LBE7748:
	.loc 1 484 0
	cmpwi 7,9,0
	beq- 7,.L411
.LVL999:
.L582:
	.loc 1 485 0
	lwz 10,0(9)
.LBB7749:
.LBB7744:
	.loc 2 2323 0
	lwz 11,wgPipe@l(26)
.LBE7744:
.LBE7749:
	.loc 1 485 0
	lwz 0,4(9)
.LVL1000:
.LBB7750:
.LBB7745:
	.loc 2 2323 0
	stw 10,0(11)
	.loc 2 2324 0
	.loc 2 2325 0
	stw 0,0(11)
	.loc 2 2326 0
	b .L411
.LVL1001:
.L610:
.LBE7745:
.LBE7750:
.LBB7751:
.LBB7752:
	.loc 1 335 0
	lwz 0,68(28)
.LBE7752:
.LBE7751:
	.loc 1 481 0
	lwz 9,0(28)
.LVL1002:
.LBB7758:
.LBB7755:
	.loc 1 335 0
	cmpwi 7,0,5123
	beq- 7,.L450
	cmpwi 7,0,5125
	beq- 7,.L451
	cmpwi 7,0,5121
	li 10,0
	bne+ 7,.L448
.LVL1003:
.LBB7753:
	.loc 1 340 0
	lbzx 10,9,27
.LVL1004:
.L448:
.LBE7753:
.LBE7755:
.LBE7758:
.LBB7759:
.LBB7737:
	.loc 1 298 0
	lbz 0,0(30)
	cmpwi 7,0,0
	beq- 7,.L411
	.loc 1 300 0
	lwz 9,16(30)
	cmpwi 7,9,5126
	bne- 7,.L453
	lwz 0,12(30)
.LBB7728:
.LBB7726:
	.loc 1 302 0
	mulli 9,31,20
.LBE7726:
.LBE7728:
	.loc 1 300 0
	cmpwi 7,0,2
.LBB7729:
.LBB7727:
	.loc 1 302 0
	add 9,25,9
.LBB7725:
.LBB7724:
	.loc 1 188 0
	lbz 0,8(9)
.LBE7724:
.LBE7725:
.LBE7727:
.LBE7729:
	.loc 1 300 0
	beq- 7,.L613
.LVL1005:
.LBB7730:
.LBB7700:
.LBB7701:
	.loc 1 188 0
	mullw 10,0,10
.LVL1006:
.LBB7702:
.LBB7703:
	.loc 1 97 0
	lwz 11,4(9)
	add 11,11,10
.LVL1007:
.L462:
.LBE7703:
.LBE7702:
.LBE7701:
.LBE7700:
.LBB7709:
.LBB7694:
.LBB7683:
	.loc 1 173 0
	lwz 0,0(11)
	addi 11,11,4
.LVL1008:
	stw 0,56(28)
.LVL1009:
.L455:
.LBE7683:
.LBE7694:
.LBE7709:
	.loc 1 309 0
	lwz 0,12(30)
	.loc 1 314 0
	addi 9,28,56
	.loc 1 309 0
	cmpwi 7,0,2
	ble+ 7,.L582
.LVL1010:
.LBB7710:
.LBB7678:
	.loc 1 125 0
	lwz 9,16(30)
	addi 0,9,-5120
	cmplwi 7,0,10
	ble- 7,.L614
.LVL1011:
.L508:
	.loc 1 314 0
	addi 9,28,56
.LVL1012:
.LBE7678:
.LBE7710:
.LBE7730:
.LBE7737:
.LBE7759:
	.loc 1 482 0
	b .L582
.LVL1013:
.L423:
.LBB7760:
.LBB7654:
	.loc 1 298 0
	lbz 0,0(30)
.LBE7654:
.LBE7760:
	.loc 1 478 0
	lwz 9,4(28)
.LVL1014:
.LBB7761:
.LBB7655:
	.loc 1 298 0
	cmpwi 7,0,0
	beq- 7,.L411
	.loc 1 300 0
	lwz 11,16(30)
.LBE7655:
.LBE7761:
	.loc 1 478 0
	add 9,27,9
.LBB7762:
.LBB7656:
	.loc 1 300 0
	cmpwi 7,11,5126
	bne- 7,.L426
.LBB7635:
.LBB7636:
	.loc 1 302 0
	mulli 11,31,20
.LBE7636:
.LBE7635:
	.loc 1 300 0
	lwz 0,12(30)
.LBB7645:
.LBB7643:
	.loc 1 302 0
	add 11,25,11
.LVL1015:
.LBE7643:
.LBE7645:
	.loc 1 300 0
	cmpwi 7,0,2
.LBB7646:
.LBB7644:
.LBB7637:
.LBB7638:
	.loc 1 188 0
	lbz 10,8(11)
.LBB7639:
.LBB7640:
	.loc 1 97 0
	lwz 0,4(11)
.LBE7640:
.LBE7639:
	.loc 1 188 0
	mullw 9,9,10
.LVL1016:
.LBB7642:
.LBB7641:
	.loc 1 97 0
	add 9,0,9
.LVL1017:
.LBE7641:
.LBE7642:
.LBE7638:
.LBE7637:
.LBE7644:
.LBE7646:
	.loc 1 300 0
	beq- 7,.L421
.LVL1018:
.L474:
.LBB7647:
.LBB7619:
.LBB7610:
.LBB7598:
	.loc 1 173 0
	lwz 0,0(9)
	addi 9,9,4
.LVL1019:
	stw 0,56(28)
.LVL1020:
.L438:
.LBE7598:
.LBE7610:
.LBE7619:
	.loc 1 309 0
	ble+ 7,.L508
.LVL1021:
.LBB7620:
.LBB7594:
	.loc 1 125 0
	lwz 11,16(30)
	addi 0,11,-5120
	cmplwi 7,0,10
	bgt- 7,.L508
	slwi 0,0,2
	lwzx 0,17,0
	add 0,0,17
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L447:
	.long .L439-.L447
	.long .L440-.L447
	.long .L441-.L447
	.long .L442-.L447
	.long .L443-.L447
	.long .L444-.L447
	.long .L445-.L447
	.long .L508-.L447
	.long .L508-.L447
	.long .L508-.L447
	.long .L446-.L447
	.section	".text"
.LVL1022:
.L426:
.LBE7594:
.LBE7620:
	.loc 1 306 0
	mulli 10,31,20
.LBB7621:
.LBB7611:
	.loc 1 125 0
	addi 11,11,-5120
	cmplwi 7,11,10
.LBE7611:
.LBE7621:
	.loc 1 306 0
	add 10,25,10
.LVL1023:
.LBB7622:
.LBB7623:
	.loc 1 188 0
	lbz 0,8(10)
.LBB7624:
.LBB7625:
	.loc 1 97 0
	lwz 10,4(10)
.LVL1024:
.LBE7625:
.LBE7624:
	.loc 1 188 0
	mullw 0,9,0
.LVL1025:
.LBB7627:
.LBB7626:
	.loc 1 97 0
	add 9,10,0
.LVL1026:
.LBE7626:
.LBE7627:
.LBE7623:
.LBE7622:
.LBB7628:
.LBB7612:
	.loc 1 125 0
	ble- 7,.L615
.L428:
	lwz 0,12(30)
.LVL1027:
	cmpwi 7,0,2
	b .L438
.LVL1028:
.L453:
.LBE7612:
.LBE7628:
.LBE7647:
.LBE7656:
.LBE7762:
.LBB7763:
.LBB7738:
.LBB7731:
	.loc 1 306 0
	mulli 11,31,20
.LBB7711:
.LBB7695:
	.loc 1 125 0
	addi 9,9,-5120
	cmplwi 7,9,10
.LBE7695:
.LBE7711:
	.loc 1 306 0
	add 11,25,11
.LVL1029:
.LBB7712:
.LBB7708:
	.loc 1 188 0
	lbz 0,8(11)
.LBB7706:
.LBB7704:
	.loc 1 97 0
	lwz 8,4(11)
.LBE7704:
.LBE7706:
	.loc 1 188 0
	mullw 10,0,10
.LVL1030:
.LBB7707:
.LBB7705:
	.loc 1 97 0
	add 11,8,10
.LVL1031:
.LBE7705:
.LBE7707:
.LBE7708:
.LBE7712:
.LBB7713:
.LBB7696:
	.loc 1 125 0
	bgt- 7,.L455
	slwi 9,9,2
	lwzx 0,20,9
	add 0,0,20
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L464:
	.long .L456-.L464
	.long .L457-.L464
	.long .L458-.L464
	.long .L459-.L464
	.long .L460-.L464
	.long .L461-.L464
	.long .L462-.L464
	.long .L455-.L464
	.long .L455-.L464
	.long .L455-.L464
	.long .L463-.L464
	.section	".text"
.LVL1032:
.L608:
.LBE7696:
.LBE7713:
.LBE7731:
.LBE7738:
.LBE7763:
.LBE7787:
	.loc 1 430 0
	lis 9,color@ha
	lbz 0,color@l(9)
	cmpwi 7,0,0
	beq- 7,.L303
.LVL1033:
.LBB7788:
.LBB7789:
	.loc 1 359 0
	lis 9,.LANCHOR0@ha
	la 11,.LANCHOR0@l(9)
	lwz 0,64(11)
	cmpwi 7,0,1
	beq- 7,.L305
	cmpwi 7,0,2
	beq- 7,.L306
	lwz 0,4(11)
	.loc 1 363 0
	mr 9,27
.L307:
.LBE7789:
.LBE7788:
	.loc 1 432 0
	add 0,0,9
.LBB7810:
.LBB7811:
	.loc 2 2317 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
.LBE7811:
.LBE7810:
	.loc 1 432 0
	rlwinm 0,0,0,0xffff
.LVL1034:
.LBB7813:
.LBB7812:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
	b .L303
.LVL1035:
.L606:
.LBE7812:
.LBE7813:
	.loc 1 404 0
	lis 11,norm@ha
	lbz 0,norm@l(11)
	cmpwi 7,0,0
	beq- 7,.L223
.LVL1036:
.LBB7814:
.LBB7815:
	.loc 1 359 0
	lis 10,.LANCHOR0@ha
	la 11,.LANCHOR0@l(10)
	lwz 0,64(11)
	cmpwi 7,0,1
	beq- 7,.L225
	cmpwi 7,0,2
	beq- 7,.L226
	lwz 0,4(11)
	.loc 1 363 0
	mr 11,27
.L227:
.LBE7815:
.LBE7814:
	.loc 1 406 0
	add 0,0,11
.LBB7836:
.LBB7837:
	.loc 2 2261 0
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
.LBE7837:
.LBE7836:
	.loc 1 406 0
	rlwinm 0,0,0,0xffff
.LVL1037:
.LBB7839:
.LBB7838:
	.loc 2 2261 0
	sth 0,0(11)
	.loc 2 2262 0
	b .L223
.LVL1038:
.L604:
.LBE7838:
.LBE7839:
	.loc 1 380 0
	lis 11,vert@ha
	slwi 22,3,1
	lbz 0,vert@l(11)
	slwi 21,3,2
	cmpwi 7,0,0
	beq- 7,.L141
.LVL1039:
.LBB7840:
.LBB7841:
	.loc 1 359 0
	lis 10,.LANCHOR0@ha
	la 11,.LANCHOR0@l(10)
	lwz 0,64(11)
	cmpwi 7,0,1
	beq- 7,.L143
	cmpwi 7,0,2
	beq- 7,.L144
	lwz 0,4(11)
	.loc 1 363 0
	mr 11,3
.L145:
.LBE7841:
.LBE7840:
	.loc 1 381 0
	add 0,0,11
.LBB7857:
.LBB7858:
	.loc 2 2219 0
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
.LBE7858:
.LBE7857:
	.loc 1 381 0
	rlwinm 0,0,0,0xffff
.LVL1040:
.LBB7860:
.LBB7859:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
	b .L141
.LVL1041:
.L607:
.LBE7859:
.LBE7860:
.LBB7861:
	.loc 1 412 0
	cmpwi 7,0,2
	bne+ 7,.L223
.LBB6967:
.LBB6968:
	.loc 1 335 0
	lwz 0,68(11)
.LBE6968:
.LBE6967:
	.loc 1 421 0
	lwz 10,.LANCHOR0@l(10)
.LVL1042:
.LBB6974:
.LBB6971:
	.loc 1 335 0
	cmpwi 7,0,5123
	beq- 7,.L269
	cmpwi 7,0,5125
	beq- 7,.L270
	cmpwi 7,0,5121
	li 7,0
	bne+ 7,.L267
.LVL1043:
.LBB6969:
	.loc 1 340 0
	lbzx 7,10,27
.LVL1044:
.L267:
.LBE6969:
.LBE6971:
.LBE6974:
.LBB6975:
.LBB6976:
	.loc 1 223 0
	lis 10,norm@ha
	lbz 0,norm@l(10)
	la 10,norm@l(10)
	cmpwi 7,0,0
	beq- 7,.L223
	.loc 1 225 0
	lwz 8,16(10)
.LBB6977:
.LBB6978:
.LBB6979:
	.loc 1 188 0
	lbz 0,8(10)
.LBE6979:
.LBE6978:
.LBE6977:
	.loc 1 225 0
	cmpwi 7,8,5126
	beq- 7,.L599
.LVL1045:
.LBB6984:
.LBB6985:
.LBB6986:
.LBB6987:
	.loc 1 125 0
	addi 8,8,-5120
.LBE6987:
.LBE6986:
.LBB7009:
.LBB7010:
	.loc 1 188 0
	mullw 7,7,0
.LVL1046:
.LBE7010:
.LBE7009:
.LBB7014:
.LBB6998:
	.loc 1 125 0
	cmplwi 7,8,10
.LBE6998:
.LBE7014:
.LBB7015:
.LBB7013:
.LBB7011:
.LBB7012:
	.loc 1 97 0
	lwz 6,4(10)
	add 10,6,7
.LVL1047:
.LBE7012:
.LBE7011:
.LBE7013:
.LBE7015:
.LBB7016:
.LBB6999:
	.loc 1 125 0
	ble- 7,.L616
.L273:
.LVL1048:
.LBE6999:
.LBE7016:
.LBB7017:
.LBB7018:
	cmplwi 7,8,10
	ble- 7,.L617
.L291:
.LVL1049:
.LBE7018:
.LBE7017:
.LBB7038:
.LBB7039:
	cmplwi 7,8,10
	bgt- 7,.L488
	lis 7,.L301@ha
	slwi 8,8,2
	la 7,.L301@l(7)
	lwzx 0,7,8
	add 7,0,7
	mtctr 7
	bctr
	.section	.rodata
	.align 2
	.align 2
.L301:
	.long .L552-.L301
	.long .L553-.L301
	.long .L554-.L301
	.long .L555-.L301
	.long .L556-.L301
	.long .L557-.L301
	.long .L299-.L301
	.long .L488-.L301
	.long .L488-.L301
	.long .L488-.L301
	.long .L300-.L301
	.section	".text"
.LVL1050:
.L609:
.LBE7039:
.LBE7038:
.LBE6985:
.LBE6984:
.LBE6976:
.LBE6975:
.LBE7861:
.LBB7862:
	.loc 1 438 0
	cmpwi 7,0,2
	bne+ 7,.L303
.LBB7217:
.LBB7218:
	.loc 1 335 0
	lwz 0,68(11)
.LBE7218:
.LBE7217:
	.loc 1 447 0
	lwz 9,.LANCHOR0@l(9)
.LVL1051:
.LBB7224:
.LBB7221:
	.loc 1 335 0
	cmpwi 7,0,5123
	beq- 7,.L364
	cmpwi 7,0,5125
	beq- 7,.L365
	cmpwi 7,0,5121
	li 8,0
	bne+ 7,.L362
.LVL1052:
.LBB7219:
	.loc 1 340 0
	lbzx 8,9,27
.LVL1053:
.L362:
.LBE7219:
.LBE7221:
.LBE7224:
.LBB7225:
.LBB7226:
	.loc 1 259 0
	lis 9,color@ha
	lbz 0,color@l(9)
	la 9,color@l(9)
	cmpwi 7,0,0
	beq- 7,.L496
	.loc 1 261 0
	lwz 10,16(9)
	cmpwi 7,10,5126
	beq- 7,.L618
.LVL1054:
.LBB7227:
.LBB7228:
.LBB7229:
.LBB7230:
.LBB7231:
	.loc 1 97 0
	addi 0,10,-5120
	cmplwi 7,0,10
	mr 10,0
	ble- 7,.L368
.LBE7231:
.LBE7230:
.LBE7229:
.LBE7228:
.LBE7227:
.LBB7242:
.LBB7243:
	lis 10,.LC0@ha
	lfs 0,.LC0@l(10)
.LVL1055:
.L369:
.LBE7243:
.LBB7244:
.LBB7245:
	.loc 1 188 0
	lbz 7,8(9)
.LBE7245:
.LBE7244:
.LBB7251:
.LBB7252:
	.loc 1 125 0
	cmplwi 7,0,10
.LBE7252:
.LBE7251:
.LBB7273:
.LBB7250:
.LBB7246:
.LBB7247:
	.loc 1 97 0
	lwz 6,4(9)
.LBE7247:
.LBE7246:
	.loc 1 188 0
	mullw 8,7,8
.LVL1056:
.LBB7249:
.LBB7248:
	.loc 1 97 0
	add 7,6,8
.LVL1057:
.LBE7248:
.LBE7249:
.LBE7250:
.LBE7273:
.LBB7274:
.LBB7263:
	.loc 1 125 0
	ble- 7,.L619
.L370:
.LVL1058:
.LBE7263:
.LBE7274:
.LBB7275:
.LBB7276:
	cmplwi 7,0,10
	ble- 7,.L620
.L388:
.LVL1059:
.LBE7276:
.LBE7275:
.LBB7296:
.LBB7297:
	cmplwi 7,0,10
	bgt- 7,.L398
	lis 8,.L399@ha
	slwi 0,0,2
	la 8,.L399@l(8)
	lwzx 0,8,0
	add 8,0,8
	mtctr 8
	bctr
	.section	.rodata
	.align 2
	.align 2
.L399:
	.long .L576-.L399
	.long .L577-.L399
	.long .L578-.L399
	.long .L579-.L399
	.long .L580-.L399
	.long .L581-.L399
	.long .L396-.L399
	.long .L398-.L399
	.long .L398-.L399
	.long .L398-.L399
	.long .L397-.L399
	.section	".text"
.LVL1060:
.L615:
.LBE7297:
.LBE7296:
.LBE7242:
.LBE7226:
.LBE7225:
.LBE7862:
.LBB7863:
.LBB7764:
.LBB7657:
.LBB7648:
.LBB7629:
.LBB7613:
	slwi 11,11,2
	lwzx 11,19,11
	add 11,11,19
	mtctr 11
	bctr
	.section	.rodata
	.align 2
	.align 2
.L437:
	.long .L429-.L437
	.long .L430-.L437
	.long .L431-.L437
	.long .L432-.L437
	.long .L433-.L437
	.long .L434-.L437
	.long .L435-.L437
	.long .L428-.L437
	.long .L428-.L437
	.long .L428-.L437
	.long .L436-.L437
	.section	".text"
.LVL1061:
.L614:
.LBE7613:
.LBE7629:
.LBE7648:
.LBE7657:
.LBE7764:
.LBB7765:
.LBB7739:
.LBB7732:
.LBB7714:
.LBB7679:
	slwi 0,0,2
	lwzx 0,18,0
	add 0,0,18
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L473:
	.long .L465-.L473
	.long .L466-.L473
	.long .L467-.L473
	.long .L468-.L473
	.long .L469-.L473
	.long .L470-.L473
	.long .L471-.L473
	.long .L508-.L473
	.long .L508-.L473
	.long .L508-.L473
	.long .L472-.L473
	.section	".text"
.LVL1062:
.L434:
.LBE7679:
.LBE7714:
.LBE7732:
.LBE7739:
.LBE7765:
.LBB7766:
.LBB7658:
.LBB7649:
.LBB7630:
.LBB7614:
.LBB7599:
	.loc 1 159 0
	lwzx 0,10,0
.LVL1063:
	lfs 0,.LC3@l(24)
	stw 0,1004(1)
	lis 0,0x4330
	stw 0,1000(1)
	lwz 0,12(30)
	lfd 13,1000(1)
.LVL1064:
.L602:
.LBE7599:
.LBB7600:
	.loc 1 166 0
	fsub 0,13,0
	addi 9,9,4
.LVL1065:
	cmpwi 7,0,2
	frsp 0,0
	stfs 0,56(28)
	b .L438
.LVL1066:
.L433:
	lwzx 0,10,0
.LVL1067:
	lfs 0,.LC5@l(23)
	xoris 0,0,0x8000
	stw 0,1012(1)
	lis 0,0x4330
	stw 0,1008(1)
	lwz 0,12(30)
	lfd 13,1008(1)
	b .L602
.LVL1068:
.L432:
.LBE7600:
.LBB7601:
	.loc 1 145 0
	lhzx 0,10,0
.LVL1069:
	lfs 0,.LC3@l(24)
	stw 0,988(1)
	lis 0,0x4330
	stw 0,984(1)
	lwz 0,12(30)
	lfd 13,984(1)
.LVL1070:
.L603:
.LBE7601:
.LBB7602:
	.loc 1 152 0
	fsub 0,13,0
	addi 9,9,2
.LVL1071:
	cmpwi 7,0,2
	frsp 0,0
	stfs 0,56(28)
	b .L438
.LVL1072:
.L431:
	lhax 0,10,0
.LVL1073:
	lfs 0,.LC5@l(23)
	xoris 0,0,0x8000
	stw 0,996(1)
	lis 0,0x4330
	stw 0,992(1)
	lwz 0,12(30)
	lfd 13,992(1)
	b .L603
.LVL1074:
.L430:
.LBE7602:
.LBB7603:
	.loc 1 131 0
	lbzx 0,10,0
.LVL1075:
	lfs 0,.LC3@l(24)
	stw 0,972(1)
	lis 0,0x4330
	stw 0,968(1)
	lwz 0,12(30)
	lfd 13,968(1)
.LVL1076:
.L601:
.LBE7603:
.LBB7604:
.LBB7605:
.LBB7606:
	.loc 1 138 0
	fsub 0,13,0
	addi 9,9,1
.LVL1077:
	cmpwi 7,0,2
	frsp 0,0
	stfs 0,56(28)
	b .L438
.LVL1078:
.L429:
	lbzx 0,10,0
.LVL1079:
	lfs 0,.LC5@l(23)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,980(1)
	lis 0,0x4330
	stw 0,976(1)
	lwz 0,12(30)
	lfd 13,976(1)
	b .L601
.LVL1080:
.L463:
.LBE7606:
.LBE7605:
.LBE7604:
.LBE7614:
.LBE7630:
.LBE7649:
.LBE7658:
.LBE7766:
.LBB7767:
.LBB7740:
.LBB7733:
.LBB7715:
.LBB7697:
.LBB7684:
	.loc 1 180 0
	lfdx 0,8,10
	addi 11,11,8
.LVL1081:
	frsp 0,0
	stfs 0,56(28)
	b .L455
.LVL1082:
.L461:
.LBE7684:
.LBB7685:
	.loc 1 159 0
	lwzx 0,8,10
	addi 11,11,4
.LVL1083:
	lfs 0,.LC3@l(24)
	stw 0,1100(1)
	lis 0,0x4330
	stw 0,1096(1)
	lfd 13,1096(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,56(28)
	b .L455
.LVL1084:
.L460:
.LBE7685:
.LBB7686:
	.loc 1 166 0
	lwzx 0,8,10
	addi 11,11,4
.LVL1085:
	lfs 0,.LC5@l(23)
	xoris 0,0,0x8000
	stw 0,1108(1)
	lis 0,0x4330
	stw 0,1104(1)
	lfd 13,1104(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,56(28)
	b .L455
.LVL1086:
.L459:
.LBE7686:
.LBB7687:
	.loc 1 145 0
	lhzx 0,8,10
	addi 11,11,2
.LVL1087:
	lfs 0,.LC3@l(24)
	stw 0,1084(1)
	lis 0,0x4330
	stw 0,1080(1)
	lfd 13,1080(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,56(28)
	b .L455
.LVL1088:
.L458:
.LBE7687:
.LBB7688:
	.loc 1 152 0
	lhax 0,8,10
	addi 11,11,2
.LVL1089:
	lfs 0,.LC5@l(23)
	xoris 0,0,0x8000
	stw 0,1092(1)
	lis 0,0x4330
	stw 0,1088(1)
	lfd 13,1088(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,56(28)
	b .L455
.LVL1090:
.L457:
.LBE7688:
.LBB7689:
	.loc 1 131 0
	lbzx 0,8,10
	addi 11,11,1
.LVL1091:
	lfs 0,.LC3@l(24)
	stw 0,1068(1)
	lis 0,0x4330
	stw 0,1064(1)
	lfd 13,1064(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,56(28)
	b .L455
.LVL1092:
.L456:
.LBE7689:
.LBB7690:
.LBB7691:
.LBB7692:
	.loc 1 138 0
	lbzx 0,8,10
	addi 11,11,1
.LVL1093:
	lfs 0,.LC5@l(23)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,1076(1)
	lis 0,0x4330
	stw 0,1072(1)
	lfd 13,1072(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,56(28)
	b .L455
.LVL1094:
.L436:
.LBE7692:
.LBE7691:
.LBE7690:
.LBE7697:
.LBE7715:
.LBE7733:
.LBE7740:
.LBE7767:
.LBB7768:
.LBB7659:
.LBB7650:
.LBB7631:
.LBB7615:
.LBB7607:
	.loc 1 180 0
	lfdx 0,10,0
	addi 9,9,8
.LVL1095:
	lwz 0,12(30)
.LVL1096:
	frsp 0,0
	cmpwi 7,0,2
	stfs 0,56(28)
	b .L438
.LVL1097:
.L415:
.LBE7607:
.LBE7615:
.LBE7631:
.LBE7650:
.LBE7659:
.LBE7768:
.LBE7863:
.LBB7864:
.LBB7571:
.LBB7566:
.LBB7562:
.LBB7557:
.LBB7552:
	.loc 1 335 0
	lwz 0,68(28)
.LBE7552:
.LBE7557:
	.loc 1 367 0
	lwz 9,0(28)
.LVL1098:
.LBB7558:
.LBB7553:
	.loc 1 335 0
	cmpwi 7,0,5123
	beq- 7,.L419
	cmpwi 7,0,5125
	beq- 7,.L420
	cmpwi 7,0,5121
	beq- 7,.L621
	.loc 1 353 0
	li 9,0
.L417:
.LBE7553:
.LBE7558:
	.loc 1 367 0
	lwz 0,4(28)
	subf 9,0,9
.LBE7562:
.LBE7566:
.LBE7571:
.LBE7864:
	.loc 1 466 0
	add 0,0,9
.LBB7865:
.LBB7781:
	.loc 2 2399 0
	lwz 9,wgPipe@l(26)
.LBE7781:
.LBE7865:
	.loc 1 466 0
	rlwinm 0,0,0,0xffff
.LVL1099:
.LBB7866:
.LBB7782:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L622
.LVL1100:
.L414:
.LBE7782:
.LBE7866:
.LBB7867:
.LBB7572:
	.loc 1 365 0
	lwz 0,4(28)
	subf 9,0,27
.LBE7572:
.LBE7867:
	.loc 1 466 0
	add 0,0,9
.LBB7868:
.LBB7783:
	.loc 2 2399 0
	lwz 9,wgPipe@l(26)
.LBE7783:
.LBE7868:
	.loc 1 466 0
	rlwinm 0,0,0,0xffff
.LVL1101:
.LBB7869:
.LBB7784:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L622
.LVL1102:
.L451:
.LBE7784:
.LBE7869:
.LBB7870:
.LBB7769:
.LBB7756:
	.loc 1 335 0
	lwzx 10,9,21
	b .L448
.LVL1103:
.L234:
.LBE7756:
.LBE7769:
.LBE7870:
.LBB7871:
.LBB7100:
.LBB7101:
	.loc 1 223 0
	lis 10,norm@ha
.LBE7101:
.LBE7100:
	.loc 1 418 0
	lwz 7,4(11)
.LVL1104:
.LBB7198:
.LBB7193:
	.loc 1 223 0
	lbz 0,norm@l(10)
	la 10,norm@l(10)
	cmpwi 7,0,0
	beq- 7,.L223
	.loc 1 225 0
	lwz 8,16(10)
.LBE7193:
.LBE7198:
	.loc 1 418 0
	add 7,27,7
.LBB7199:
.LBB7194:
.LBB7102:
.LBB7103:
.LBB7104:
	.loc 1 188 0
	lbz 0,8(10)
.LBE7104:
.LBE7103:
.LBE7102:
	.loc 1 225 0
	cmpwi 7,8,5126
	beq- 7,.L599
.LVL1105:
.LBB7105:
.LBB7106:
.LBB7107:
.LBB7108:
	.loc 1 125 0
	addi 8,8,-5120
.LBE7108:
.LBE7107:
.LBB7126:
.LBB7127:
	.loc 1 188 0
	mullw 7,7,0
.LBE7127:
.LBE7126:
.LBB7131:
.LBB7117:
	.loc 1 125 0
	cmplwi 7,8,10
.LBE7117:
.LBE7131:
.LBB7132:
.LBB7130:
.LBB7128:
.LBB7129:
	.loc 1 97 0
	lwz 6,4(10)
	add 10,6,7
.LVL1106:
.LBE7129:
.LBE7128:
.LBE7130:
.LBE7132:
.LBB7133:
.LBB7118:
	.loc 1 125 0
	ble- 7,.L623
.L238:
.LVL1107:
.LBE7118:
.LBE7133:
.LBB7134:
.LBB7135:
	cmplwi 7,8,10
	ble- 7,.L624
.L256:
.LVL1108:
.LBE7135:
.LBE7134:
.LBB7151:
.LBB7152:
	cmplwi 7,8,10
	bgt- 7,.L488
	lis 7,.L266@ha
	slwi 8,8,2
	la 7,.L266@l(7)
	lwzx 0,7,8
	add 7,0,7
	mtctr 7
	bctr
	.section	.rodata
	.align 2
	.align 2
.L266:
	.long .L540-.L266
	.long .L541-.L266
	.long .L542-.L266
	.long .L543-.L266
	.long .L544-.L266
	.long .L545-.L266
	.long .L299-.L266
	.long .L488-.L266
	.long .L488-.L266
	.long .L488-.L266
	.long .L300-.L266
	.section	".text"
.LVL1109:
.L315:
.LBE7152:
.LBE7151:
.LBE7106:
.LBE7105:
.LBE7194:
.LBE7199:
.LBE7871:
.LBB7872:
.LBB7378:
.LBB7379:
	.loc 1 259 0
	lis 9,color@ha
.LBE7379:
.LBE7378:
	.loc 1 444 0
	lwz 8,4(11)
.LVL1110:
.LBB7519:
.LBB7510:
	.loc 1 259 0
	lbz 0,color@l(9)
	la 9,color@l(9)
	cmpwi 7,0,0
	beq- 7,.L496
	.loc 1 261 0
	lwz 10,16(9)
.LBE7510:
.LBE7519:
	.loc 1 444 0
	add 8,27,8
.LBB7520:
.LBB7511:
	.loc 1 261 0
	cmpwi 7,10,5126
	beq- 7,.L625
.LVL1111:
.LBB7380:
.LBB7381:
.LBB7382:
.LBB7383:
.LBB7384:
	.loc 1 97 0
	addi 0,10,-5120
	cmplwi 7,0,10
	mr 10,0
	ble- 7,.L319
.LBE7384:
.LBE7383:
.LBE7382:
.LBE7381:
.LBE7380:
.LBB7389:
.LBB7390:
	lis 10,.LC0@ha
	lfs 0,.LC0@l(10)
.LVL1112:
.L320:
.LBE7390:
.LBB7391:
.LBB7392:
	.loc 1 188 0
	lbz 7,8(9)
.LBE7392:
.LBE7391:
.LBB7398:
.LBB7399:
	.loc 1 125 0
	cmplwi 7,0,10
.LBE7399:
.LBE7398:
.LBB7420:
.LBB7397:
.LBB7393:
.LBB7394:
	.loc 1 97 0
	lwz 6,4(9)
.LBE7394:
.LBE7393:
	.loc 1 188 0
	mullw 8,8,7
.LBB7396:
.LBB7395:
	.loc 1 97 0
	add 7,6,8
.LVL1113:
.LBE7395:
.LBE7396:
.LBE7397:
.LBE7420:
.LBB7421:
.LBB7410:
	.loc 1 125 0
	ble- 7,.L626
.L321:
.LVL1114:
.LBE7410:
.LBE7421:
.LBB7422:
.LBB7423:
	cmplwi 7,0,10
	ble- 7,.L627
.L339:
.LVL1115:
.LBE7423:
.LBE7422:
.LBB7443:
.LBB7444:
	cmplwi 7,0,10
	bgt- 7,.L349
	lis 8,.L350@ha
	slwi 0,0,2
	la 8,.L350@l(8)
	lwzx 0,8,0
	add 8,0,8
	mtctr 8
	bctr
	.section	.rodata
	.align 2
	.align 2
.L350:
	.long .L564-.L350
	.long .L565-.L350
	.long .L566-.L350
	.long .L567-.L350
	.long .L568-.L350
	.long .L569-.L350
	.long .L347-.L350
	.long .L349-.L350
	.long .L349-.L350
	.long .L349-.L350
	.long .L348-.L350
	.section	".text"
.LVL1116:
.L152:
.LBE7444:
.LBE7443:
.LBE7389:
.LBE7511:
.LBE7520:
.LBE7872:
.LBB7873:
.LBB6823:
.LBB6824:
	.loc 1 203 0
	lis 10,vert@ha
.LBE6824:
.LBE6823:
	.loc 1 392 0
	lwz 7,4(11)
.LVL1117:
.LBB6947:
.LBB6941:
	.loc 1 203 0
	lbz 0,vert@l(10)
	slwi 22,3,1
	la 10,vert@l(10)
	slwi 21,3,2
	cmpwi 7,0,0
	beq- 7,.L141
	.loc 1 205 0
	lwz 8,16(10)
.LBE6941:
.LBE6947:
	.loc 1 392 0
	add 7,3,7
.LBB6948:
.LBB6942:
	.loc 1 205 0
	cmpwi 7,8,5126
	bne- 7,.L155
	lwz 0,12(10)
	cmpwi 7,0,3
.LBB6825:
.LBB6826:
.LBB6827:
	.loc 1 188 0
	lbz 0,8(10)
.LBB6828:
.LBB6829:
	.loc 1 97 0
	lwz 10,4(10)
.LBE6829:
.LBE6828:
	.loc 1 188 0
	mullw 7,7,0
.LBE6827:
.LBE6826:
.LBE6825:
	.loc 1 205 0
	beq- 7,.L597
.LVL1118:
	li 8,6
.LBB6830:
.LBB6831:
.LBB6832:
.LBB6833:
.LBB6834:
.LBB6835:
	.loc 1 97 0
	add 10,10,7
.LVL1119:
.L164:
.LBE6835:
.LBE6834:
.LBE6833:
.LBE6832:
.LBB6842:
.LBB6843:
.LBB6844:
	.loc 1 173 0
	lwz 0,0(10)
	addi 10,10,4
.LVL1120:
	stw 0,16(11)
.LVL1121:
.L157:
.LBE6844:
.LBE6843:
.LBE6842:
.LBB6863:
.LBB6864:
	.loc 1 125 0
	cmplwi 7,8,10
	bgt- 7,.L174
	lis 7,.L176@ha
	slwi 0,8,2
	la 7,.L176@l(7)
	lwzx 0,7,0
	add 7,0,7
	mtctr 7
	bctr
	.section	.rodata
	.align 2
	.align 2
.L176:
	.long .L510-.L176
	.long .L511-.L176
	.long .L512-.L176
	.long .L513-.L176
	.long .L514-.L176
	.long .L515-.L176
	.long .L175-.L176
	.long .L174-.L176
	.long .L174-.L176
	.long .L174-.L176
	.long .L173-.L176
	.section	".text"
.LVL1122:
.L450:
.LBE6864:
.LBE6863:
.LBE6831:
.LBE6830:
.LBE6942:
.LBE6948:
.LBE7873:
.LBB7874:
.LBB7770:
.LBB7757:
.LBB7754:
	.loc 1 345 0
	lhzx 10,9,22
	b .L448
.LVL1123:
.L496:
.LBE7754:
.LBE7757:
.LBE7770:
.LBE7874:
.LBB7875:
.LBB7521:
.LBB7368:
	.loc 1 292 0
	lis 9,_tempcolorelement@ha
	lis 10,.LC0@ha
	la 9,_tempcolorelement@l(9)
.LVL1124:
.LBE7368:
.LBE7521:
	.loc 1 448 0
	b .L592
.LVL1125:
.L599:
.LBE7875:
.LBB7876:
.LBB7200:
.LBB7095:
.LBB7090:
.LBB6983:
.LBB6982:
	.loc 1 188 0
	mullw 7,7,0
.LVL1126:
.LBB6980:
.LBB6981:
	.loc 1 97 0
	lwz 10,4(10)
	add 10,10,7
	b .L232
.LVL1127:
.L191:
.LBE6981:
.LBE6980:
.LBE6982:
.LBE6983:
.LBE7090:
.LBE7095:
.LBE7200:
.LBE7876:
.LBB7877:
.LBB6949:
.LBB6817:
.LBB6811:
.LBB6806:
.LBB6757:
.LBB6714:
	.loc 1 188 0
	lbz 0,8(10)
.LBE6714:
.LBE6757:
.LBB6758:
.LBB6728:
	.loc 1 125 0
	addi 8,8,-5120
	cmplwi 7,8,10
.LBE6728:
.LBE6758:
.LBB6759:
.LBB6715:
.LBB6712:
.LBB6710:
	.loc 1 97 0
	lwz 6,4(10)
.LBE6710:
.LBE6712:
	.loc 1 188 0
	mullw 7,7,0
.LVL1128:
.LBB6713:
.LBB6711:
	.loc 1 97 0
	add 10,6,7
.LVL1129:
.LBE6711:
.LBE6713:
.LBE6715:
.LBE6759:
.LBB6760:
.LBB6729:
	.loc 1 125 0
	bgt- 7,.L193
	lis 5,.L202@ha
	slwi 0,8,2
	la 5,.L202@l(5)
	lwzx 0,5,0
	add 5,0,5
	mtctr 5
	bctr
	.section	.rodata
	.align 2
	.align 2
.L202:
	.long .L194-.L202
	.long .L195-.L202
	.long .L196-.L202
	.long .L197-.L202
	.long .L198-.L202
	.long .L199-.L202
	.long .L200-.L202
	.long .L193-.L202
	.long .L193-.L202
	.long .L193-.L202
	.long .L201-.L202
	.section	".text"
.LVL1130:
.L155:
.LBE6729:
.LBE6760:
.LBE6806:
.LBE6811:
.LBE6817:
.LBE6949:
.LBB6950:
.LBB6943:
.LBB6937:
.LBB6933:
.LBB6883:
.LBB6840:
	.loc 1 188 0
	lbz 0,8(10)
.LBE6840:
.LBE6883:
.LBB6884:
.LBB6854:
	.loc 1 125 0
	addi 8,8,-5120
	cmplwi 7,8,10
.LBE6854:
.LBE6884:
.LBB6885:
.LBB6841:
.LBB6838:
.LBB6836:
	.loc 1 97 0
	lwz 6,4(10)
.LBE6836:
.LBE6838:
	.loc 1 188 0
	mullw 7,7,0
.LVL1131:
.LBB6839:
.LBB6837:
	.loc 1 97 0
	add 10,6,7
.LVL1132:
.LBE6837:
.LBE6839:
.LBE6841:
.LBE6885:
.LBB6886:
.LBB6855:
	.loc 1 125 0
	bgt- 7,.L157
	lis 5,.L166@ha
	slwi 0,8,2
	la 5,.L166@l(5)
	lwzx 0,5,0
	add 5,0,5
	mtctr 5
	bctr
	.section	.rodata
	.align 2
	.align 2
.L166:
	.long .L158-.L166
	.long .L159-.L166
	.long .L160-.L166
	.long .L161-.L166
	.long .L162-.L166
	.long .L163-.L166
	.long .L164-.L166
	.long .L157-.L166
	.long .L157-.L166
	.long .L157-.L166
	.long .L165-.L166
	.section	".text"
.LVL1133:
.L618:
.LBE6855:
.LBE6886:
.LBE6933:
.LBE6937:
.LBE6943:
.LBE6950:
.LBE7877:
.LBB7878:
.LBB7522:
.LBB7369:
	.loc 1 261 0
	lwz 0,12(9)
	li 10,6
	cmpwi 7,0,4
	li 0,6
	beq- 7,.L600
.L368:
.LBB7358:
.LBB7240:
.LBB7238:
.LBB7235:
.LBB7232:
	.loc 1 97 0
	lis 7,.LANCHOR2@ha
	slwi 10,10,2
	la 7,.LANCHOR2@l(7)
	add 10,7,10
	lfs 0,8(10)
	lis 10,.LC0@ha
	b .L369
.LVL1134:
.L619:
.LBE7232:
.LBE7235:
.LBE7238:
.LBE7240:
.LBE7358:
.LBB7359:
.LBB7316:
.LBB7264:
	.loc 1 125 0
	lis 5,.L379@ha
	slwi 4,0,2
	la 5,.L379@l(5)
	lwzx 4,5,4
	add 5,4,5
	mtctr 5
	bctr
	.section	.rodata
	.align 2
	.align 2
.L379:
	.long .L371-.L379
	.long .L372-.L379
	.long .L373-.L379
	.long .L374-.L379
	.long .L375-.L379
	.long .L376-.L379
	.long .L377-.L379
	.long .L370-.L379
	.long .L370-.L379
	.long .L370-.L379
	.long .L378-.L379
	.section	".text"
.LVL1135:
.L626:
.LBE7264:
.LBE7316:
.LBE7359:
.LBE7369:
.LBE7522:
.LBB7523:
.LBB7512:
.LBB7503:
.LBB7463:
.LBB7411:
	lis 5,.L330@ha
	slwi 4,0,2
	la 5,.L330@l(5)
	lwzx 4,5,4
	add 5,4,5
	mtctr 5
	bctr
	.section	.rodata
	.align 2
	.align 2
.L330:
	.long .L322-.L330
	.long .L323-.L330
	.long .L324-.L330
	.long .L325-.L330
	.long .L326-.L330
	.long .L327-.L330
	.long .L328-.L330
	.long .L321-.L330
	.long .L321-.L330
	.long .L321-.L330
	.long .L329-.L330
	.section	".text"
.LVL1136:
.L319:
.LBE7411:
.LBE7463:
.LBE7503:
.LBB7504:
.LBB7388:
.LBB7387:
.LBB7386:
.LBB7385:
	.loc 1 97 0
	lis 7,.LANCHOR2@ha
	slwi 10,10,2
	la 7,.LANCHOR2@l(7)
	add 10,7,10
	lfs 0,8(10)
	lis 10,.LC0@ha
	b .L320
.LVL1137:
.L623:
.LBE7385:
.LBE7386:
.LBE7387:
.LBE7388:
.LBE7504:
.LBE7512:
.LBE7523:
.LBE7878:
.LBB7879:
.LBB7201:
.LBB7195:
.LBB7190:
.LBB7187:
.LBB7167:
.LBB7119:
	.loc 1 125 0
	lis 5,.L247@ha
	slwi 0,8,2
	la 5,.L247@l(5)
	lwzx 0,5,0
	add 5,0,5
	mtctr 5
	bctr
	.section	.rodata
	.align 2
	.align 2
.L247:
	.long .L239-.L247
	.long .L240-.L247
	.long .L241-.L247
	.long .L242-.L247
	.long .L243-.L247
	.long .L244-.L247
	.long .L280-.L247
	.long .L238-.L247
	.long .L238-.L247
	.long .L238-.L247
	.long .L281-.L247
	.section	".text"
.LVL1138:
.L616:
.LBE7119:
.LBE7167:
.LBE7187:
.LBE7190:
.LBE7195:
.LBE7201:
.LBB7202:
.LBB7096:
.LBB7091:
.LBB7086:
.LBB7059:
.LBB7000:
	lis 5,.L282@ha
	slwi 0,8,2
	la 5,.L282@l(5)
	lwzx 0,5,0
	add 5,0,5
	mtctr 5
	bctr
	.section	.rodata
	.align 2
	.align 2
.L282:
	.long .L274-.L282
	.long .L275-.L282
	.long .L276-.L282
	.long .L277-.L282
	.long .L278-.L282
	.long .L279-.L282
	.long .L280-.L282
	.long .L273-.L282
	.long .L273-.L282
	.long .L273-.L282
	.long .L281-.L282
	.section	".text"
.LVL1139:
.L435:
.LBE7000:
.LBE7059:
.LBE7086:
.LBE7091:
.LBE7096:
.LBE7202:
.LBE7879:
.LBB7880:
.LBB7771:
.LBB7660:
.LBB7651:
.LBB7632:
.LBB7616:
.LBB7608:
	.loc 1 166 0
	lwz 0,12(30)
.LVL1140:
	cmpwi 7,0,2
	b .L474
.LVL1141:
.L472:
.LBE7608:
.LBE7616:
.LBE7632:
.LBE7651:
.LBE7660:
.LBE7771:
.LBB7772:
.LBB7741:
.LBB7734:
.LBB7716:
.LBB7680:
.LBB7667:
	.loc 1 180 0
	lfd 0,0(11)
	.loc 1 314 0
	addi 9,28,56
.LVL1142:
	.loc 1 180 0
	frsp 0,0
	stfs 0,60(28)
.LVL1143:
	b .L582
.LVL1144:
.L471:
.LBE7667:
.LBB7668:
	.loc 1 173 0
	lwz 0,0(11)
	.loc 1 314 0
	addi 9,28,56
	.loc 1 173 0
	stw 0,60(28)
.LVL1145:
	b .L582
.LVL1146:
.L470:
.LBE7668:
.LBB7669:
	.loc 1 159 0
	lwz 0,0(11)
	.loc 1 314 0
	addi 9,28,56
	.loc 1 159 0
	lfs 0,.LC3@l(24)
	stw 0,1148(1)
	lis 0,0x4330
	stw 0,1144(1)
	lfd 13,1144(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,60(28)
.LVL1147:
	b .L582
.LVL1148:
.L469:
.LBE7669:
.LBB7670:
	.loc 1 166 0
	lwz 0,0(11)
	.loc 1 314 0
	addi 9,28,56
	.loc 1 166 0
	lfs 0,.LC5@l(23)
	xoris 0,0,0x8000
	stw 0,1156(1)
	lis 0,0x4330
	stw 0,1152(1)
	lfd 13,1152(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,60(28)
.LVL1149:
	b .L582
.LVL1150:
.L468:
.LBE7670:
.LBB7671:
	.loc 1 145 0
	lhz 0,0(11)
	.loc 1 314 0
	addi 9,28,56
	.loc 1 145 0
	lfs 0,.LC3@l(24)
	stw 0,1132(1)
	lis 0,0x4330
	stw 0,1128(1)
	lfd 13,1128(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,60(28)
.LVL1151:
	b .L582
.LVL1152:
.L467:
.LBE7671:
.LBB7672:
	.loc 1 152 0
	lha 0,0(11)
	.loc 1 314 0
	addi 9,28,56
	.loc 1 152 0
	lfs 0,.LC5@l(23)
	xoris 0,0,0x8000
	stw 0,1140(1)
	lis 0,0x4330
	stw 0,1136(1)
	lfd 13,1136(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,60(28)
.LVL1153:
	b .L582
.LVL1154:
.L466:
.LBE7672:
.LBB7673:
	.loc 1 131 0
	lbz 0,0(11)
	.loc 1 314 0
	addi 9,28,56
	.loc 1 131 0
	lfs 0,.LC3@l(24)
	stw 0,1116(1)
	lis 0,0x4330
	stw 0,1112(1)
	lfd 13,1112(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,60(28)
.LVL1155:
	b .L582
.LVL1156:
.L465:
.LBE7673:
.LBB7674:
.LBB7675:
.LBB7676:
	.loc 1 138 0
	lbz 0,0(11)
	.loc 1 314 0
	addi 9,28,56
	.loc 1 138 0
	lfs 0,.LC5@l(23)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,1124(1)
	lis 0,0x4330
	stw 0,1120(1)
	lfd 13,1120(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,60(28)
.LVL1157:
	b .L582
.LVL1158:
.L446:
.LBE7676:
.LBE7675:
.LBE7674:
.LBE7680:
.LBE7716:
.LBE7734:
.LBE7741:
.LBE7772:
.LBB7773:
.LBB7661:
.LBB7652:
.LBB7633:
.LBB7595:
.LBB7583:
	.loc 1 180 0
	lfd 0,0(9)
	.loc 1 314 0
	addi 9,28,56
.LVL1159:
	.loc 1 180 0
	frsp 0,0
	stfs 0,60(28)
	b .L582
.LVL1160:
.L445:
.LBE7583:
.LBB7584:
	.loc 1 173 0
	lwz 0,0(9)
	.loc 1 314 0
	addi 9,28,56
.LVL1161:
	.loc 1 173 0
	stw 0,60(28)
	b .L582
.LVL1162:
.L444:
.LBE7584:
.LBB7585:
	.loc 1 159 0
	lwz 0,0(9)
	.loc 1 314 0
	addi 9,28,56
.LVL1163:
	.loc 1 159 0
	lfs 0,.LC3@l(24)
	stw 0,1052(1)
	lis 0,0x4330
	stw 0,1048(1)
	lfd 13,1048(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,60(28)
	b .L582
.LVL1164:
.L443:
.LBE7585:
.LBB7586:
	.loc 1 166 0
	lwz 0,0(9)
	.loc 1 314 0
	addi 9,28,56
.LVL1165:
	.loc 1 166 0
	lfs 0,.LC5@l(23)
	xoris 0,0,0x8000
	stw 0,1060(1)
	lis 0,0x4330
	stw 0,1056(1)
	lfd 13,1056(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,60(28)
	b .L582
.LVL1166:
.L442:
.LBE7586:
.LBB7587:
	.loc 1 145 0
	lhz 0,0(9)
	.loc 1 314 0
	addi 9,28,56
.LVL1167:
	.loc 1 145 0
	lfs 0,.LC3@l(24)
	stw 0,1036(1)
	lis 0,0x4330
	stw 0,1032(1)
	lfd 13,1032(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,60(28)
	b .L582
.LVL1168:
.L441:
.LBE7587:
.LBB7588:
	.loc 1 152 0
	lha 0,0(9)
	.loc 1 314 0
	addi 9,28,56
.LVL1169:
	.loc 1 152 0
	lfs 0,.LC5@l(23)
	xoris 0,0,0x8000
	stw 0,1044(1)
	lis 0,0x4330
	stw 0,1040(1)
	lfd 13,1040(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,60(28)
	b .L582
.LVL1170:
.L440:
.LBE7588:
.LBB7589:
	.loc 1 131 0
	lbz 0,0(9)
	.loc 1 314 0
	addi 9,28,56
.LVL1171:
	.loc 1 131 0
	lfs 0,.LC3@l(24)
	stw 0,1020(1)
	lis 0,0x4330
	stw 0,1016(1)
	lfd 13,1016(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,60(28)
	b .L582
.LVL1172:
.L439:
.LBE7589:
.LBB7590:
.LBB7591:
.LBB7592:
	.loc 1 138 0
	lbz 0,0(9)
	.loc 1 314 0
	addi 9,28,56
.LVL1173:
	.loc 1 138 0
	lfs 0,.LC5@l(23)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,1028(1)
	lis 0,0x4330
	stw 0,1024(1)
	lfd 13,1024(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,60(28)
	b .L582
.LVL1174:
.L624:
.LBE7592:
.LBE7591:
.LBE7590:
.LBE7595:
.LBE7633:
.LBE7652:
.LBE7661:
.LBE7773:
.LBE7880:
.LBB7881:
.LBB7203:
.LBB7196:
.LBB7191:
.LBB7188:
.LBB7168:
.LBB7144:
	.loc 1 125 0
	lis 7,.L257@ha
	slwi 0,8,2
	la 7,.L257@l(7)
	lwzx 0,7,0
	add 7,0,7
	mtctr 7
	bctr
	.section	.rodata
	.align 2
	.align 2
.L257:
	.long .L534-.L257
	.long .L535-.L257
	.long .L536-.L257
	.long .L537-.L257
	.long .L538-.L257
	.long .L539-.L257
	.long .L289-.L257
	.long .L256-.L257
	.long .L256-.L257
	.long .L256-.L257
	.long .L290-.L257
	.section	".text"
.LVL1175:
.L617:
.LBE7144:
.LBE7168:
.LBE7188:
.LBE7191:
.LBE7196:
.LBE7203:
.LBB7204:
.LBB7097:
.LBB7092:
.LBB7087:
.LBB7060:
.LBB7029:
	lis 7,.L292@ha
	slwi 0,8,2
	la 7,.L292@l(7)
	lwzx 0,7,0
	add 7,0,7
	mtctr 7
	bctr
	.section	.rodata
	.align 2
	.align 2
.L292:
	.long .L546-.L292
	.long .L547-.L292
	.long .L548-.L292
	.long .L549-.L292
	.long .L550-.L292
	.long .L551-.L292
	.long .L289-.L292
	.long .L291-.L292
	.long .L291-.L292
	.long .L291-.L292
	.long .L290-.L292
	.section	".text"
.LVL1176:
.L281:
.LBE7029:
.LBE7060:
.LBB7061:
.LBB7001:
.LBB6988:
	.loc 1 180 0
	lfdx 0,6,7
	addi 10,10,8
.LVL1177:
	frsp 0,0
	stfs 0,28(11)
.LVL1178:
.L290:
.LBE6988:
.LBE7001:
.LBE7061:
.LBB7062:
.LBB7030:
.LBB7019:
	lfd 0,0(10)
	addi 10,10,8
.LVL1179:
	frsp 0,0
	stfs 0,32(11)
.LVL1180:
.L300:
.LBE7019:
.LBE7030:
.LBE7062:
.LBB7063:
.LBB7050:
.LBB7040:
	lfd 0,0(10)
	.loc 1 232 0
	addi 10,11,28
	.loc 1 180 0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1181:
.L280:
.LBE7040:
.LBE7050:
.LBE7063:
.LBB7064:
.LBB7002:
.LBB6989:
	.loc 1 173 0
	lwzx 0,6,7
	addi 10,10,4
.LVL1182:
	stw 0,28(11)
.LVL1183:
.L289:
.LBE6989:
.LBE7002:
.LBE7064:
.LBB7065:
.LBB7031:
.LBB7020:
	lwz 0,0(10)
	addi 10,10,4
.LVL1184:
	stw 0,32(11)
.LVL1185:
.L299:
.LBE7020:
.LBE7031:
.LBE7065:
.LBB7066:
.LBB7051:
.LBB7041:
	lwz 0,0(10)
	.loc 1 232 0
	addi 10,11,28
	.loc 1 173 0
	stw 0,36(11)
	b .L589
.LVL1186:
.L371:
.LBE7041:
.LBE7051:
.LBE7066:
.LBE7087:
.LBE7092:
.LBE7097:
.LBE7204:
.LBE7881:
.LBB7882:
.LBB7524:
.LBB7370:
.LBB7360:
.LBB7317:
.LBB7265:
.LBB7253:
.LBB7254:
.LBB7255:
	.loc 1 138 0
	lbzx 0,6,8
	lis 8,.LC5@ha
	lfs 13,.LC5@l(8)
	addi 7,7,1
.LVL1187:
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,788(1)
	lis 0,0x4330
	stw 0,784(1)
	lfd 12,784(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,40(11)
.LVL1188:
.L381:
.LBE7255:
.LBE7254:
.LBE7253:
.LBE7265:
.LBE7317:
.LBB7318:
.LBB7287:
.LBB7277:
.LBB7278:
.LBB7279:
	lbz 0,0(7)
	addi 7,7,1
.LVL1189:
	lfs 13,.LC5@l(8)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,836(1)
	lis 0,0x4330
	stw 0,832(1)
	lfd 12,832(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,44(11)
.LVL1190:
.L391:
.LBE7279:
.LBE7278:
.LBE7277:
.LBE7287:
.LBE7318:
.LBB7319:
.LBB7308:
.LBB7298:
.LBB7299:
.LBB7300:
	lbz 0,0(7)
	addi 7,7,1
.LVL1191:
	lfs 13,.LC5@l(8)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,884(1)
	lis 0,0x4330
	stw 0,880(1)
	lfd 12,880(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,48(11)
.LVL1192:
.L398:
.LBE7300:
.LBE7299:
.LBE7298:
.LBE7308:
.LBE7319:
	.loc 1 273 0
	lwz 0,12(9)
	cmpwi 7,0,4
	beq- 7,.L628
.LVL1193:
.L499:
	lis 9,.LC1@ha
	lfs 13,.LC1@l(9)
.L400:
	.loc 1 282 0
	lfs 10,40(11)
	.loc 1 287 0
	addi 9,11,40
	.loc 1 283 0
	lfs 11,44(11)
	.loc 1 284 0
	lfs 12,48(11)
	.loc 1 282 0
	fdivs 10,10,0
	.loc 1 283 0
	fdivs 11,11,0
	.loc 1 282 0
	stfs 10,40(11)
	.loc 1 284 0
	fdivs 12,12,0
	.loc 1 283 0
	stfs 11,44(11)
	.loc 1 285 0
	fdivs 0,13,0
	.loc 1 284 0
	stfs 12,48(11)
	.loc 1 285 0
	stfs 0,52(11)
	b .L592
.LVL1194:
.L329:
.LBE7360:
.LBE7370:
.LBE7524:
.LBB7525:
.LBB7513:
.LBB7505:
.LBB7464:
.LBB7412:
.LBB7400:
	.loc 1 180 0
	lfdx 13,6,8
	addi 7,7,8
.LVL1195:
	frsp 13,13
	stfs 13,40(11)
.LVL1196:
.L338:
.LBE7400:
.LBE7412:
.LBE7464:
.LBB7465:
.LBB7434:
.LBB7424:
	lfd 13,0(7)
	addi 7,7,8
.LVL1197:
	frsp 13,13
	stfs 13,44(11)
.LVL1198:
.L348:
.LBE7424:
.LBE7434:
.LBE7465:
.LBB7466:
.LBB7455:
.LBB7445:
	lfd 13,0(7)
	addi 7,7,8
.LVL1199:
	frsp 13,13
	stfs 13,48(11)
.LVL1200:
.L349:
.LBE7445:
.LBE7455:
.LBE7466:
	.loc 1 273 0
	lwz 0,12(9)
	cmpwi 7,0,4
	bne+ 7,.L499
.LVL1201:
.LBB7467:
.LBB7468:
	.loc 1 125 0
	lwz 0,16(9)
	addic 0,0,-5120
	cmplwi 7,0,10
	ble- 7,.L629
.LVL1202:
.L401:
.LBE7468:
.LBE7467:
.LBE7505:
.LBE7513:
.LBE7525:
.LBB7526:
.LBB7371:
.LBB7361:
.LBB7320:
.LBB7321:
	lfs 13,52(11)
	b .L400
.LVL1203:
.L629:
.LBE7321:
.LBE7320:
.LBE7361:
.LBE7371:
.LBE7526:
.LBB7527:
.LBB7514:
.LBB7506:
.LBB7479:
.LBB7477:
	lis 9,.L361@ha
	slwi 0,0,2
	la 9,.L361@l(9)
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L361:
	.long .L353-.L361
	.long .L354-.L361
	.long .L355-.L361
	.long .L356-.L361
	.long .L357-.L361
	.long .L358-.L361
	.long .L408-.L361
	.long .L401-.L361
	.long .L401-.L361
	.long .L401-.L361
	.long .L409-.L361
	.section	".text"
.LVL1204:
.L373:
.LBE7477:
.LBE7479:
.LBE7506:
.LBE7514:
.LBE7527:
.LBB7528:
.LBB7372:
.LBB7362:
.LBB7334:
.LBB7266:
.LBB7256:
	.loc 1 152 0
	lhax 0,6,8
	lis 8,.LC5@ha
	lfs 13,.LC5@l(8)
	addi 7,7,2
.LVL1205:
	xoris 0,0,0x8000
	stw 0,804(1)
	lis 0,0x4330
	stw 0,800(1)
	lfd 12,800(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,40(11)
.LVL1206:
.L383:
.LBE7256:
.LBE7266:
.LBE7334:
.LBB7335:
.LBB7288:
.LBB7280:
	lha 0,0(7)
	addi 7,7,2
.LVL1207:
	lfs 13,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,852(1)
	lis 0,0x4330
	stw 0,848(1)
	lfd 12,848(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,44(11)
.LVL1208:
.L393:
.LBE7280:
.LBE7288:
.LBE7335:
.LBB7336:
.LBB7309:
.LBB7301:
	lha 0,0(7)
	addi 7,7,2
.LVL1209:
	lfs 13,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,900(1)
	lis 0,0x4330
	stw 0,896(1)
	lfd 12,896(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,48(11)
	b .L398
.LVL1210:
.L372:
.LBE7301:
.LBE7309:
.LBE7336:
.LBB7337:
.LBB7267:
.LBB7257:
	.loc 1 131 0
	lbzx 0,6,8
	lis 8,.LC3@ha
	lfs 13,.LC3@l(8)
	addi 7,7,1
.LVL1211:
	stw 0,780(1)
	lis 0,0x4330
	stw 0,776(1)
	lfd 12,776(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,40(11)
.LVL1212:
.L380:
.LBE7257:
.LBE7267:
.LBE7337:
.LBB7338:
.LBB7289:
.LBB7281:
	lbz 0,0(7)
	addi 7,7,1
.LVL1213:
	lfs 13,.LC3@l(8)
	stw 0,828(1)
	lis 0,0x4330
	stw 0,824(1)
	lfd 12,824(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,44(11)
.LVL1214:
.L390:
.LBE7281:
.LBE7289:
.LBE7338:
.LBB7339:
.LBB7310:
.LBB7302:
	lbz 0,0(7)
	addi 7,7,1
.LVL1215:
	lfs 13,.LC3@l(8)
	stw 0,876(1)
	lis 0,0x4330
	stw 0,872(1)
	lfd 12,872(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,48(11)
	b .L398
.LVL1216:
.L377:
.LBE7302:
.LBE7310:
.LBE7339:
.LBB7340:
.LBB7268:
.LBB7258:
	.loc 1 173 0
	lwzx 0,6,8
	addi 7,7,4
.LVL1217:
	stw 0,40(11)
.LVL1218:
.L386:
.LBE7258:
.LBE7268:
.LBE7340:
.LBB7341:
.LBB7290:
.LBB7282:
	lwz 0,0(7)
	addi 7,7,4
.LVL1219:
	stw 0,44(11)
.LVL1220:
.L396:
.LBE7282:
.LBE7290:
.LBE7341:
.LBB7342:
.LBB7311:
.LBB7303:
	lwz 0,0(7)
	addi 7,7,4
.LVL1221:
	stw 0,48(11)
	b .L398
.LVL1222:
.L376:
.LBE7303:
.LBE7311:
.LBE7342:
.LBB7343:
.LBB7269:
.LBB7259:
	.loc 1 159 0
	lwzx 0,6,8
	lis 8,.LC3@ha
	lfs 13,.LC3@l(8)
	addi 7,7,4
.LVL1223:
	stw 0,812(1)
	lis 0,0x4330
	stw 0,808(1)
	lfd 12,808(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,40(11)
.LVL1224:
.L384:
.LBE7259:
.LBE7269:
.LBE7343:
.LBB7344:
.LBB7291:
.LBB7283:
	lwz 0,0(7)
	addi 7,7,4
.LVL1225:
	lfs 13,.LC3@l(8)
	stw 0,860(1)
	lis 0,0x4330
	stw 0,856(1)
	lfd 12,856(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,44(11)
.LVL1226:
.L394:
.LBE7283:
.LBE7291:
.LBE7344:
.LBB7345:
.LBB7312:
.LBB7304:
	lwz 0,0(7)
	addi 7,7,4
.LVL1227:
	lfs 13,.LC3@l(8)
	stw 0,908(1)
	lis 0,0x4330
	stw 0,904(1)
	lfd 12,904(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,48(11)
	b .L398
.LVL1228:
.L375:
.LBE7304:
.LBE7312:
.LBE7345:
.LBB7346:
.LBB7270:
.LBB7260:
	.loc 1 166 0
	lwzx 0,6,8
	lis 8,.LC5@ha
	lfs 13,.LC5@l(8)
	addi 7,7,4
.LVL1229:
	xoris 0,0,0x8000
	stw 0,820(1)
	lis 0,0x4330
	stw 0,816(1)
	lfd 12,816(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,40(11)
.LVL1230:
.L385:
.LBE7260:
.LBE7270:
.LBE7346:
.LBB7347:
.LBB7292:
.LBB7284:
	lwz 0,0(7)
	addi 7,7,4
.LVL1231:
	lfs 13,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,868(1)
	lis 0,0x4330
	stw 0,864(1)
	lfd 12,864(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,44(11)
.LVL1232:
.L395:
.LBE7284:
.LBE7292:
.LBE7347:
.LBB7348:
.LBB7313:
.LBB7305:
	lwz 0,0(7)
	addi 7,7,4
.LVL1233:
	lfs 13,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,916(1)
	lis 0,0x4330
	stw 0,912(1)
	lfd 12,912(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,48(11)
	b .L398
.LVL1234:
.L374:
.LBE7305:
.LBE7313:
.LBE7348:
.LBB7349:
.LBB7271:
.LBB7261:
	.loc 1 145 0
	lhzx 0,6,8
	lis 8,.LC3@ha
	lfs 13,.LC3@l(8)
	addi 7,7,2
.LVL1235:
	stw 0,796(1)
	lis 0,0x4330
	stw 0,792(1)
	lfd 12,792(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,40(11)
.LVL1236:
.L382:
.LBE7261:
.LBE7271:
.LBE7349:
.LBB7350:
.LBB7293:
.LBB7285:
	lhz 0,0(7)
	addi 7,7,2
.LVL1237:
	lfs 13,.LC3@l(8)
	stw 0,844(1)
	lis 0,0x4330
	stw 0,840(1)
	lfd 12,840(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,44(11)
.LVL1238:
.L392:
.LBE7285:
.LBE7293:
.LBE7350:
.LBB7351:
.LBB7314:
.LBB7306:
	lhz 0,0(7)
	addi 7,7,2
.LVL1239:
	lfs 13,.LC3@l(8)
	stw 0,892(1)
	lis 0,0x4330
	stw 0,888(1)
	lfd 12,888(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,48(11)
	b .L398
.LVL1240:
.L328:
.LBE7306:
.LBE7314:
.LBE7351:
.LBE7362:
.LBE7372:
.LBE7528:
.LBB7529:
.LBB7515:
.LBB7507:
.LBB7480:
.LBB7413:
.LBB7401:
	.loc 1 173 0
	lwzx 0,6,8
	addi 7,7,4
.LVL1241:
	stw 0,40(11)
.LVL1242:
.L337:
.LBE7401:
.LBE7413:
.LBE7480:
.LBB7481:
.LBB7435:
.LBB7425:
	lwz 0,0(7)
	addi 7,7,4
.LVL1243:
	stw 0,44(11)
.LVL1244:
.L347:
.LBE7425:
.LBE7435:
.LBE7481:
.LBB7482:
.LBB7456:
.LBB7446:
	lwz 0,0(7)
	addi 7,7,4
.LVL1245:
	stw 0,48(11)
	b .L349
.LVL1246:
.L327:
.LBE7446:
.LBE7456:
.LBE7482:
.LBB7483:
.LBB7414:
.LBB7402:
	.loc 1 159 0
	lwzx 0,6,8
	lis 8,.LC3@ha
	lfs 13,.LC3@l(8)
	addi 7,7,4
.LVL1247:
	stw 0,620(1)
	lis 0,0x4330
	stw 0,616(1)
	lfd 12,616(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,40(11)
.LVL1248:
.L335:
.LBE7402:
.LBE7414:
.LBE7483:
.LBB7484:
.LBB7436:
.LBB7426:
	lwz 0,0(7)
	addi 7,7,4
.LVL1249:
	lfs 13,.LC3@l(8)
	stw 0,668(1)
	lis 0,0x4330
	stw 0,664(1)
	lfd 12,664(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,44(11)
.LVL1250:
.L345:
.LBE7426:
.LBE7436:
.LBE7484:
.LBB7485:
.LBB7457:
.LBB7447:
	lwz 0,0(7)
	addi 7,7,4
.LVL1251:
	lfs 13,.LC3@l(8)
	stw 0,716(1)
	lis 0,0x4330
	stw 0,712(1)
	lfd 12,712(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,48(11)
	b .L349
.LVL1252:
.L326:
.LBE7447:
.LBE7457:
.LBE7485:
.LBB7486:
.LBB7415:
.LBB7403:
	.loc 1 166 0
	lwzx 0,6,8
	lis 8,.LC5@ha
	lfs 13,.LC5@l(8)
	addi 7,7,4
.LVL1253:
	xoris 0,0,0x8000
	stw 0,628(1)
	lis 0,0x4330
	stw 0,624(1)
	lfd 12,624(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,40(11)
.LVL1254:
.L336:
.LBE7403:
.LBE7415:
.LBE7486:
.LBB7487:
.LBB7437:
.LBB7427:
	lwz 0,0(7)
	addi 7,7,4
.LVL1255:
	lfs 13,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,676(1)
	lis 0,0x4330
	stw 0,672(1)
	lfd 12,672(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,44(11)
.LVL1256:
.L346:
.LBE7427:
.LBE7437:
.LBE7487:
.LBB7488:
.LBB7458:
.LBB7448:
	lwz 0,0(7)
	addi 7,7,4
.LVL1257:
	lfs 13,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,724(1)
	lis 0,0x4330
	stw 0,720(1)
	lfd 12,720(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,48(11)
	b .L349
.LVL1258:
.L325:
.LBE7448:
.LBE7458:
.LBE7488:
.LBB7489:
.LBB7416:
.LBB7404:
	.loc 1 145 0
	lhzx 0,6,8
	lis 8,.LC3@ha
	lfs 13,.LC3@l(8)
	addi 7,7,2
.LVL1259:
	stw 0,604(1)
	lis 0,0x4330
	stw 0,600(1)
	lfd 12,600(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,40(11)
.LVL1260:
.L333:
.LBE7404:
.LBE7416:
.LBE7489:
.LBB7490:
.LBB7438:
.LBB7428:
	lhz 0,0(7)
	addi 7,7,2
.LVL1261:
	lfs 13,.LC3@l(8)
	stw 0,652(1)
	lis 0,0x4330
	stw 0,648(1)
	lfd 12,648(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,44(11)
.LVL1262:
.L343:
.LBE7428:
.LBE7438:
.LBE7490:
.LBB7491:
.LBB7459:
.LBB7449:
	lhz 0,0(7)
	addi 7,7,2
.LVL1263:
	lfs 13,.LC3@l(8)
	stw 0,700(1)
	lis 0,0x4330
	stw 0,696(1)
	lfd 12,696(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,48(11)
	b .L349
.LVL1264:
.L324:
.LBE7449:
.LBE7459:
.LBE7491:
.LBB7492:
.LBB7417:
.LBB7405:
	.loc 1 152 0
	lhax 0,6,8
	lis 8,.LC5@ha
	lfs 13,.LC5@l(8)
	addi 7,7,2
.LVL1265:
	xoris 0,0,0x8000
	stw 0,612(1)
	lis 0,0x4330
	stw 0,608(1)
	lfd 12,608(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,40(11)
.LVL1266:
.L334:
.LBE7405:
.LBE7417:
.LBE7492:
.LBB7493:
.LBB7439:
.LBB7429:
	lha 0,0(7)
	addi 7,7,2
.LVL1267:
	lfs 13,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,660(1)
	lis 0,0x4330
	stw 0,656(1)
	lfd 12,656(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,44(11)
.LVL1268:
.L344:
.LBE7429:
.LBE7439:
.LBE7493:
.LBB7494:
.LBB7460:
.LBB7450:
	lha 0,0(7)
	addi 7,7,2
.LVL1269:
	lfs 13,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,708(1)
	lis 0,0x4330
	stw 0,704(1)
	lfd 12,704(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,48(11)
	b .L349
.LVL1270:
.L323:
.LBE7450:
.LBE7460:
.LBE7494:
.LBB7495:
.LBB7418:
.LBB7406:
	.loc 1 131 0
	lbzx 0,6,8
	lis 8,.LC3@ha
	lfs 13,.LC3@l(8)
	addi 7,7,1
.LVL1271:
	stw 0,588(1)
	lis 0,0x4330
	stw 0,584(1)
	lfd 12,584(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,40(11)
.LVL1272:
.L331:
.LBE7406:
.LBE7418:
.LBE7495:
.LBB7496:
.LBB7440:
.LBB7430:
	lbz 0,0(7)
	addi 7,7,1
.LVL1273:
	lfs 13,.LC3@l(8)
	stw 0,636(1)
	lis 0,0x4330
	stw 0,632(1)
	lfd 12,632(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,44(11)
.LVL1274:
.L341:
.LBE7430:
.LBE7440:
.LBE7496:
.LBB7497:
.LBB7461:
.LBB7451:
	lbz 0,0(7)
	addi 7,7,1
.LVL1275:
	lfs 13,.LC3@l(8)
	stw 0,684(1)
	lis 0,0x4330
	stw 0,680(1)
	lfd 12,680(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,48(11)
	b .L349
.LVL1276:
.L322:
.LBE7451:
.LBE7461:
.LBE7497:
.LBB7498:
.LBB7419:
.LBB7407:
.LBB7408:
.LBB7409:
	.loc 1 138 0
	lbzx 0,6,8
	lis 8,.LC5@ha
	lfs 13,.LC5@l(8)
	addi 7,7,1
.LVL1277:
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,596(1)
	lis 0,0x4330
	stw 0,592(1)
	lfd 12,592(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,40(11)
.LVL1278:
.L332:
.LBE7409:
.LBE7408:
.LBE7407:
.LBE7419:
.LBE7498:
.LBB7499:
.LBB7441:
.LBB7431:
.LBB7432:
.LBB7433:
	lbz 0,0(7)
	addi 7,7,1
.LVL1279:
	lfs 13,.LC5@l(8)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,644(1)
	lis 0,0x4330
	stw 0,640(1)
	lfd 12,640(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,44(11)
.LVL1280:
.L342:
.LBE7433:
.LBE7432:
.LBE7431:
.LBE7441:
.LBE7499:
.LBB7500:
.LBB7462:
.LBB7452:
.LBB7453:
.LBB7454:
	lbz 0,0(7)
	addi 7,7,1
.LVL1281:
	lfs 13,.LC5@l(8)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,692(1)
	lis 0,0x4330
	stw 0,688(1)
	lfd 12,688(1)
	fsub 13,12,13
	frsp 13,13
	stfs 13,48(11)
	b .L349
.LVL1282:
.L378:
.LBE7454:
.LBE7453:
.LBE7452:
.LBE7462:
.LBE7500:
.LBE7507:
.LBE7515:
.LBE7529:
.LBB7530:
.LBB7373:
.LBB7363:
.LBB7352:
.LBB7272:
.LBB7262:
	.loc 1 180 0
	lfdx 13,6,8
	addi 7,7,8
.LVL1283:
	frsp 13,13
	stfs 13,40(11)
.LVL1284:
.L387:
.LBE7262:
.LBE7272:
.LBE7352:
.LBB7353:
.LBB7294:
.LBB7286:
	lfd 13,0(7)
	addi 7,7,8
.LVL1285:
	frsp 13,13
	stfs 13,44(11)
.LVL1286:
.L397:
.LBE7286:
.LBE7294:
.LBE7353:
.LBB7354:
.LBB7315:
.LBB7307:
	lfd 13,0(7)
	addi 7,7,8
.LVL1287:
	frsp 13,13
	stfs 13,48(11)
	b .L398
.LVL1288:
.L279:
.LBE7307:
.LBE7315:
.LBE7354:
.LBE7363:
.LBE7373:
.LBE7530:
.LBE7882:
.LBB7883:
.LBB7205:
.LBB7098:
.LBB7093:
.LBB7088:
.LBB7067:
.LBB7003:
.LBB6990:
	.loc 1 159 0
	lwzx 0,6,7
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
	addi 10,10,4
.LVL1289:
	stw 0,476(1)
	lis 0,0x4330
	stw 0,472(1)
	lfd 13,472(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,28(11)
.LVL1290:
.L287:
.LBE6990:
.LBE7003:
.LBE7067:
.LBB7068:
.LBB7032:
.LBB7021:
	lwz 0,0(10)
	addi 10,10,4
.LVL1291:
	lfs 0,.LC3@l(8)
	stw 0,524(1)
	lis 0,0x4330
	stw 0,520(1)
	lfd 13,520(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,32(11)
.LVL1292:
.L297:
.LBE7021:
.LBE7032:
.LBE7068:
.LBB7069:
.LBB7052:
.LBB7042:
	lwz 0,0(10)
	.loc 1 232 0
	addi 10,11,28
.LVL1293:
	.loc 1 159 0
	lfs 0,.LC3@l(8)
	stw 0,572(1)
	lis 0,0x4330
	stw 0,568(1)
	lfd 13,568(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1294:
.L278:
.LBE7042:
.LBE7052:
.LBE7069:
.LBB7070:
.LBB7004:
.LBB6991:
	.loc 1 166 0
	lwzx 0,6,7
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
	addi 10,10,4
.LVL1295:
	xoris 0,0,0x8000
	stw 0,484(1)
	lis 0,0x4330
	stw 0,480(1)
	lfd 13,480(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,28(11)
.LVL1296:
.L288:
.LBE6991:
.LBE7004:
.LBE7070:
.LBB7071:
.LBB7033:
.LBB7022:
	lwz 0,0(10)
	addi 10,10,4
.LVL1297:
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,532(1)
	lis 0,0x4330
	stw 0,528(1)
	lfd 13,528(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,32(11)
.LVL1298:
.L298:
.LBE7022:
.LBE7033:
.LBE7071:
.LBB7072:
.LBB7053:
.LBB7043:
	lwz 0,0(10)
	.loc 1 232 0
	addi 10,11,28
.LVL1299:
	.loc 1 166 0
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,580(1)
	lis 0,0x4330
	stw 0,576(1)
	lfd 13,576(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1300:
.L277:
.LBE7043:
.LBE7053:
.LBE7072:
.LBB7073:
.LBB7005:
.LBB6992:
	.loc 1 145 0
	lhzx 0,6,7
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
	addi 10,10,2
.LVL1301:
	stw 0,460(1)
	lis 0,0x4330
	stw 0,456(1)
	lfd 13,456(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,28(11)
.LVL1302:
.L285:
.LBE6992:
.LBE7005:
.LBE7073:
.LBB7074:
.LBB7034:
.LBB7023:
	lhz 0,0(10)
	addi 10,10,2
.LVL1303:
	lfs 0,.LC3@l(8)
	stw 0,508(1)
	lis 0,0x4330
	stw 0,504(1)
	lfd 13,504(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,32(11)
.LVL1304:
.L295:
.LBE7023:
.LBE7034:
.LBE7074:
.LBB7075:
.LBB7054:
.LBB7044:
	lhz 0,0(10)
	.loc 1 232 0
	addi 10,11,28
.LVL1305:
	.loc 1 145 0
	lfs 0,.LC3@l(8)
	stw 0,556(1)
	lis 0,0x4330
	stw 0,552(1)
	lfd 13,552(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1306:
.L274:
.LBE7044:
.LBE7054:
.LBE7075:
.LBB7076:
.LBB7006:
.LBB6993:
.LBB6994:
.LBB6995:
	.loc 1 138 0
	lbzx 0,6,7
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
	addi 10,10,1
.LVL1307:
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,452(1)
	lis 0,0x4330
	stw 0,448(1)
	lfd 13,448(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,28(11)
.LVL1308:
.L284:
.LBE6995:
.LBE6994:
.LBE6993:
.LBE7006:
.LBE7076:
.LBB7077:
.LBB7035:
.LBB7024:
.LBB7025:
.LBB7026:
	lbz 0,0(10)
	addi 10,10,1
.LVL1309:
	lfs 0,.LC5@l(8)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,500(1)
	lis 0,0x4330
	stw 0,496(1)
	lfd 13,496(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,32(11)
.LVL1310:
.L294:
.LBE7026:
.LBE7025:
.LBE7024:
.LBE7035:
.LBE7077:
.LBB7078:
.LBB7055:
.LBB7045:
.LBB7046:
.LBB7047:
	lbz 0,0(10)
	.loc 1 232 0
	addi 10,11,28
.LVL1311:
	.loc 1 138 0
	lfs 0,.LC5@l(8)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,548(1)
	lis 0,0x4330
	stw 0,544(1)
	lfd 13,544(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1312:
.L276:
.LBE7047:
.LBE7046:
.LBE7045:
.LBE7055:
.LBE7078:
.LBB7079:
.LBB7007:
.LBB6996:
	.loc 1 152 0
	lhax 0,6,7
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
	addi 10,10,2
.LVL1313:
	xoris 0,0,0x8000
	stw 0,468(1)
	lis 0,0x4330
	stw 0,464(1)
	lfd 13,464(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,28(11)
.LVL1314:
.L286:
.LBE6996:
.LBE7007:
.LBE7079:
.LBB7080:
.LBB7036:
.LBB7027:
	lha 0,0(10)
	addi 10,10,2
.LVL1315:
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,516(1)
	lis 0,0x4330
	stw 0,512(1)
	lfd 13,512(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,32(11)
.LVL1316:
.L296:
.LBE7027:
.LBE7036:
.LBE7080:
.LBB7081:
.LBB7056:
.LBB7048:
	lha 0,0(10)
	.loc 1 232 0
	addi 10,11,28
.LVL1317:
	.loc 1 152 0
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,564(1)
	lis 0,0x4330
	stw 0,560(1)
	lfd 13,560(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1318:
.L275:
.LBE7048:
.LBE7056:
.LBE7081:
.LBB7082:
.LBB7008:
.LBB6997:
	.loc 1 131 0
	lbzx 0,6,7
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
	addi 10,10,1
.LVL1319:
	stw 0,444(1)
	lis 0,0x4330
	stw 0,440(1)
	lfd 13,440(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,28(11)
.LVL1320:
.L283:
.LBE6997:
.LBE7008:
.LBE7082:
.LBB7083:
.LBB7037:
.LBB7028:
	lbz 0,0(10)
	addi 10,10,1
.LVL1321:
	lfs 0,.LC3@l(8)
	stw 0,492(1)
	lis 0,0x4330
	stw 0,488(1)
	lfd 13,488(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,32(11)
.LVL1322:
.L293:
.LBE7028:
.LBE7037:
.LBE7083:
.LBB7084:
.LBB7057:
.LBB7049:
	lbz 0,0(10)
	.loc 1 232 0
	addi 10,11,28
.LVL1323:
	.loc 1 131 0
	lfs 0,.LC3@l(8)
	stw 0,540(1)
	lis 0,0x4330
	stw 0,536(1)
	lfd 13,536(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1324:
.L244:
.LBE7049:
.LBE7057:
.LBE7084:
.LBE7088:
.LBE7093:
.LBE7098:
.LBE7205:
.LBB7206:
.LBB7197:
.LBB7192:
.LBB7189:
.LBB7169:
.LBB7120:
.LBB7109:
	.loc 1 159 0
	lwzx 0,6,7
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
	addi 10,10,4
.LVL1325:
	stw 0,332(1)
	lis 0,0x4330
	stw 0,328(1)
	lfd 13,328(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,28(11)
.LVL1326:
.L252:
.LBE7109:
.LBE7120:
.LBE7169:
.LBB7170:
.LBB7145:
.LBB7136:
	lwz 0,0(10)
	addi 10,10,4
.LVL1327:
	lfs 0,.LC3@l(8)
	stw 0,380(1)
	lis 0,0x4330
	stw 0,376(1)
	lfd 13,376(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,32(11)
.LVL1328:
.L262:
.LBE7136:
.LBE7145:
.LBE7170:
.LBB7171:
.LBB7161:
.LBB7153:
	lwz 0,0(10)
	.loc 1 232 0
	addi 10,11,28
.LVL1329:
	.loc 1 159 0
	lfs 0,.LC3@l(8)
	stw 0,428(1)
	lis 0,0x4330
	stw 0,424(1)
	lfd 13,424(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1330:
.L243:
.LBE7153:
.LBE7161:
.LBE7171:
.LBB7172:
.LBB7121:
.LBB7110:
	.loc 1 166 0
	lwzx 0,6,7
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
	addi 10,10,4
.LVL1331:
	xoris 0,0,0x8000
	stw 0,340(1)
	lis 0,0x4330
	stw 0,336(1)
	lfd 13,336(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,28(11)
.LVL1332:
.L253:
.LBE7110:
.LBE7121:
.LBE7172:
.LBB7173:
.LBB7146:
.LBB7137:
	lwz 0,0(10)
	addi 10,10,4
.LVL1333:
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,388(1)
	lis 0,0x4330
	stw 0,384(1)
	lfd 13,384(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,32(11)
.LVL1334:
.L263:
.LBE7137:
.LBE7146:
.LBE7173:
.LBB7174:
.LBB7162:
.LBB7154:
	lwz 0,0(10)
	.loc 1 232 0
	addi 10,11,28
.LVL1335:
	.loc 1 166 0
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,436(1)
	lis 0,0x4330
	stw 0,432(1)
	lfd 13,432(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1336:
.L242:
.LBE7154:
.LBE7162:
.LBE7174:
.LBB7175:
.LBB7122:
.LBB7111:
	.loc 1 145 0
	lhzx 0,6,7
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
	addi 10,10,2
.LVL1337:
	stw 0,316(1)
	lis 0,0x4330
	stw 0,312(1)
	lfd 13,312(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,28(11)
.LVL1338:
.L250:
.LBE7111:
.LBE7122:
.LBE7175:
.LBB7176:
.LBB7147:
.LBB7138:
	lhz 0,0(10)
	addi 10,10,2
.LVL1339:
	lfs 0,.LC3@l(8)
	stw 0,364(1)
	lis 0,0x4330
	stw 0,360(1)
	lfd 13,360(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,32(11)
.LVL1340:
.L260:
.LBE7138:
.LBE7147:
.LBE7176:
.LBB7177:
.LBB7163:
.LBB7155:
	lhz 0,0(10)
	.loc 1 232 0
	addi 10,11,28
.LVL1341:
	.loc 1 145 0
	lfs 0,.LC3@l(8)
	stw 0,412(1)
	lis 0,0x4330
	stw 0,408(1)
	lfd 13,408(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1342:
.L241:
.LBE7155:
.LBE7163:
.LBE7177:
.LBB7178:
.LBB7123:
.LBB7112:
	.loc 1 152 0
	lhax 0,6,7
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
	addi 10,10,2
.LVL1343:
	xoris 0,0,0x8000
	stw 0,324(1)
	lis 0,0x4330
	stw 0,320(1)
	lfd 13,320(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,28(11)
.LVL1344:
.L251:
.LBE7112:
.LBE7123:
.LBE7178:
.LBB7179:
.LBB7148:
.LBB7139:
	lha 0,0(10)
	addi 10,10,2
.LVL1345:
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,372(1)
	lis 0,0x4330
	stw 0,368(1)
	lfd 13,368(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,32(11)
.LVL1346:
.L261:
.LBE7139:
.LBE7148:
.LBE7179:
.LBB7180:
.LBB7164:
.LBB7156:
	lha 0,0(10)
	.loc 1 232 0
	addi 10,11,28
.LVL1347:
	.loc 1 152 0
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,420(1)
	lis 0,0x4330
	stw 0,416(1)
	lfd 13,416(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1348:
.L240:
.LBE7156:
.LBE7164:
.LBE7180:
.LBB7181:
.LBB7124:
.LBB7113:
	.loc 1 131 0
	lbzx 0,6,7
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
	addi 10,10,1
.LVL1349:
	stw 0,300(1)
	lis 0,0x4330
	stw 0,296(1)
	lfd 13,296(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,28(11)
.LVL1350:
.L248:
.LBE7113:
.LBE7124:
.LBE7181:
.LBB7182:
.LBB7149:
.LBB7140:
	lbz 0,0(10)
	addi 10,10,1
.LVL1351:
	lfs 0,.LC3@l(8)
	stw 0,348(1)
	lis 0,0x4330
	stw 0,344(1)
	lfd 13,344(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,32(11)
.LVL1352:
.L258:
.LBE7140:
.LBE7149:
.LBE7182:
.LBB7183:
.LBB7165:
.LBB7157:
	lbz 0,0(10)
	.loc 1 232 0
	addi 10,11,28
.LVL1353:
	.loc 1 131 0
	lfs 0,.LC3@l(8)
	stw 0,396(1)
	lis 0,0x4330
	stw 0,392(1)
	lfd 13,392(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1354:
.L239:
.LBE7157:
.LBE7165:
.LBE7183:
.LBB7184:
.LBB7125:
.LBB7114:
.LBB7115:
.LBB7116:
	.loc 1 138 0
	lbzx 0,6,7
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
	addi 10,10,1
.LVL1355:
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,308(1)
	lis 0,0x4330
	stw 0,304(1)
	lfd 13,304(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,28(11)
.LVL1356:
.L249:
.LBE7116:
.LBE7115:
.LBE7114:
.LBE7125:
.LBE7184:
.LBB7185:
.LBB7150:
.LBB7141:
.LBB7142:
.LBB7143:
	lbz 0,0(10)
	addi 10,10,1
.LVL1357:
	lfs 0,.LC5@l(8)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,356(1)
	lis 0,0x4330
	stw 0,352(1)
	lfd 13,352(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,32(11)
.LVL1358:
.L259:
.LBE7143:
.LBE7142:
.LBE7141:
.LBE7150:
.LBE7185:
.LBB7186:
.LBB7166:
.LBB7158:
.LBB7159:
.LBB7160:
	lbz 0,0(10)
	.loc 1 232 0
	addi 10,11,28
.LVL1359:
	.loc 1 138 0
	lfs 0,.LC5@l(8)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,404(1)
	lis 0,0x4330
	stw 0,400(1)
	lfd 13,400(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,36(11)
	b .L589
.LVL1360:
.L627:
.LBE7160:
.LBE7159:
.LBE7158:
.LBE7166:
.LBE7186:
.LBE7189:
.LBE7192:
.LBE7197:
.LBE7206:
.LBE7883:
.LBB7884:
.LBB7531:
.LBB7516:
.LBB7508:
.LBB7501:
.LBB7442:
	.loc 1 125 0
	lis 8,.L340@ha
	slwi 6,0,2
	la 8,.L340@l(8)
	lwzx 6,8,6
	add 8,6,8
	mtctr 8
	bctr
	.section	.rodata
	.align 2
	.align 2
.L340:
	.long .L558-.L340
	.long .L559-.L340
	.long .L560-.L340
	.long .L561-.L340
	.long .L562-.L340
	.long .L563-.L340
	.long .L337-.L340
	.long .L339-.L340
	.long .L339-.L340
	.long .L339-.L340
	.long .L338-.L340
	.section	".text"
.LVL1361:
.L620:
.LBE7442:
.LBE7501:
.LBE7508:
.LBE7516:
.LBE7531:
.LBB7532:
.LBB7374:
.LBB7364:
.LBB7355:
.LBB7295:
	lis 8,.L389@ha
	slwi 6,0,2
	la 8,.L389@l(8)
	lwzx 6,8,6
	add 8,6,8
	mtctr 8
	bctr
	.section	.rodata
	.align 2
	.align 2
.L389:
	.long .L570-.L389
	.long .L571-.L389
	.long .L572-.L389
	.long .L573-.L389
	.long .L574-.L389
	.long .L575-.L389
	.long .L386-.L389
	.long .L388-.L389
	.long .L388-.L389
	.long .L388-.L389
	.long .L387-.L389
	.section	".text"
.LVL1362:
.L201:
.LBE7295:
.LBE7355:
.LBE7364:
.LBE7374:
.LBE7532:
.LBE7884:
.LBB7885:
.LBB6951:
.LBB6818:
.LBB6812:
.LBB6807:
.LBB6761:
.LBB6730:
.LBB6719:
	.loc 1 180 0
	lfdx 0,6,7
	addi 10,10,8
.LVL1363:
	frsp 0,0
	stfs 0,16(11)
.LVL1364:
.L209:
.LBE6719:
.LBE6730:
.LBE6761:
.LBB6762:
.LBB6749:
.LBB6739:
	lfd 0,0(10)
	addi 10,10,8
.LVL1365:
	frsp 0,0
	stfs 0,20(11)
.LVL1366:
.L220:
.LBE6739:
.LBE6749:
.LBE6762:
.LBB6763:
.LBB6764:
.LBB6765:
	lfd 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1367:
	.loc 1 180 0
	frsp 0,0
	stfs 0,24(11)
	b .L586
.LVL1368:
.L197:
.LBE6765:
.LBE6764:
.LBE6763:
.LBB6784:
.LBB6731:
.LBB6720:
	.loc 1 145 0
	lhzx 0,6,7
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
	addi 10,10,2
.LVL1369:
	stw 0,172(1)
	lis 0,0x4330
	stw 0,168(1)
	lfd 13,168(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(11)
.LVL1370:
.L205:
.LBE6720:
.LBE6731:
.LBE6784:
.LBB6785:
.LBB6750:
.LBB6740:
	lhz 0,0(10)
	addi 10,10,2
.LVL1371:
	lfs 0,.LC3@l(8)
	stw 0,220(1)
	lis 0,0x4330
	stw 0,216(1)
	lfd 13,216(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,20(11)
.LVL1372:
.L215:
.LBE6740:
.LBE6750:
.LBE6785:
.LBB6786:
.LBB6775:
.LBB6766:
	lhz 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1373:
	.loc 1 145 0
	lfs 0,.LC3@l(8)
	stw 0,268(1)
	lis 0,0x4330
	stw 0,264(1)
	lfd 13,264(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,24(11)
	b .L586
.LVL1374:
.L196:
.LBE6766:
.LBE6775:
.LBE6786:
.LBB6787:
.LBB6732:
.LBB6721:
	.loc 1 152 0
	lhax 0,6,7
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
	addi 10,10,2
.LVL1375:
	xoris 0,0,0x8000
	stw 0,180(1)
	lis 0,0x4330
	stw 0,176(1)
	lfd 13,176(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(11)
.LVL1376:
.L206:
.LBE6721:
.LBE6732:
.LBE6787:
.LBB6788:
.LBB6751:
.LBB6741:
	lha 0,0(10)
	addi 10,10,2
.LVL1377:
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,228(1)
	lis 0,0x4330
	stw 0,224(1)
	lfd 13,224(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,20(11)
.LVL1378:
.L216:
.LBE6741:
.LBE6751:
.LBE6788:
.LBB6789:
.LBB6776:
.LBB6767:
	lha 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1379:
	.loc 1 152 0
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,276(1)
	lis 0,0x4330
	stw 0,272(1)
	lfd 13,272(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,24(11)
	b .L586
.LVL1380:
.L195:
.LBE6767:
.LBE6776:
.LBE6789:
.LBB6790:
.LBB6733:
.LBB6722:
	.loc 1 131 0
	lbzx 0,6,7
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
	addi 10,10,1
.LVL1381:
	stw 0,156(1)
	lis 0,0x4330
	stw 0,152(1)
	lfd 13,152(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(11)
.LVL1382:
.L203:
.LBE6722:
.LBE6733:
.LBE6790:
.LBB6791:
.LBB6752:
.LBB6742:
	lbz 0,0(10)
	addi 10,10,1
.LVL1383:
	lfs 0,.LC3@l(8)
	stw 0,204(1)
	lis 0,0x4330
	stw 0,200(1)
	lfd 13,200(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,20(11)
.LVL1384:
.L213:
.LBE6742:
.LBE6752:
.LBE6791:
.LBB6792:
.LBB6777:
.LBB6768:
	lbz 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1385:
	.loc 1 131 0
	lfs 0,.LC3@l(8)
	stw 0,252(1)
	lis 0,0x4330
	stw 0,248(1)
	lfd 13,248(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,24(11)
	b .L586
.LVL1386:
.L194:
.LBE6768:
.LBE6777:
.LBE6792:
.LBB6793:
.LBB6734:
.LBB6723:
.LBB6724:
.LBB6725:
	.loc 1 138 0
	lbzx 0,6,7
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
	addi 10,10,1
.LVL1387:
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,164(1)
	lis 0,0x4330
	stw 0,160(1)
	lfd 13,160(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(11)
.LVL1388:
.L204:
.LBE6725:
.LBE6724:
.LBE6723:
.LBE6734:
.LBE6793:
.LBB6794:
.LBB6753:
.LBB6743:
.LBB6744:
.LBB6745:
	lbz 0,0(10)
	addi 10,10,1
.LVL1389:
	lfs 0,.LC5@l(8)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,212(1)
	lis 0,0x4330
	stw 0,208(1)
	lfd 13,208(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,20(11)
.LVL1390:
.L214:
.LBE6745:
.LBE6744:
.LBE6743:
.LBE6753:
.LBE6794:
.LBB6795:
.LBB6778:
.LBB6769:
.LBB6770:
.LBB6771:
	lbz 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1391:
	.loc 1 138 0
	lfs 0,.LC5@l(8)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,260(1)
	lis 0,0x4330
	stw 0,256(1)
	lfd 13,256(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,24(11)
	b .L586
.LVL1392:
.L199:
.LBE6771:
.LBE6770:
.LBE6769:
.LBE6778:
.LBE6795:
.LBB6796:
.LBB6735:
.LBB6726:
	.loc 1 159 0
	lwzx 0,6,7
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
	addi 10,10,4
.LVL1393:
	stw 0,188(1)
	lis 0,0x4330
	stw 0,184(1)
	lfd 13,184(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(11)
.LVL1394:
.L207:
.LBE6726:
.LBE6735:
.LBE6796:
.LBB6797:
.LBB6754:
.LBB6746:
	lwz 0,0(10)
	addi 10,10,4
.LVL1395:
	lfs 0,.LC3@l(8)
	stw 0,236(1)
	lis 0,0x4330
	stw 0,232(1)
	lfd 13,232(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,20(11)
.LVL1396:
.L217:
.LBE6746:
.LBE6754:
.LBE6797:
.LBB6798:
.LBB6779:
.LBB6772:
	lwz 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1397:
	.loc 1 159 0
	lfs 0,.LC3@l(8)
	stw 0,284(1)
	lis 0,0x4330
	stw 0,280(1)
	lfd 13,280(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,24(11)
	b .L586
.LVL1398:
.L198:
.LBE6772:
.LBE6779:
.LBE6798:
.LBB6799:
.LBB6736:
.LBB6727:
	.loc 1 166 0
	lwzx 0,6,7
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
	addi 10,10,4
.LVL1399:
	xoris 0,0,0x8000
	stw 0,196(1)
	lis 0,0x4330
	stw 0,192(1)
	lfd 13,192(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(11)
.LVL1400:
.L208:
.LBE6727:
.LBE6736:
.LBE6799:
.LBB6800:
.LBB6755:
.LBB6747:
	lwz 0,0(10)
	addi 10,10,4
.LVL1401:
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,244(1)
	lis 0,0x4330
	stw 0,240(1)
	lfd 13,240(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,20(11)
.LVL1402:
.L218:
.LBE6747:
.LBE6755:
.LBE6800:
.LBB6801:
.LBB6780:
.LBB6773:
	lwz 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1403:
	.loc 1 166 0
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,292(1)
	lis 0,0x4330
	stw 0,288(1)
	lfd 13,288(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,24(11)
	b .L586
.LVL1404:
.L161:
.LBE6773:
.LBE6780:
.LBE6801:
.LBE6807:
.LBE6812:
.LBE6818:
.LBE6951:
.LBB6952:
.LBB6944:
.LBB6938:
.LBB6934:
.LBB6887:
.LBB6856:
.LBB6845:
	.loc 1 145 0
	lhzx 0,6,7
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
	addi 10,10,2
.LVL1405:
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lfd 13,24(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(11)
.LVL1406:
.L169:
.LBE6845:
.LBE6856:
.LBE6887:
.LBB6888:
.LBB6875:
.LBB6865:
	lhz 0,0(10)
	addi 10,10,2
.LVL1407:
	lfs 0,.LC3@l(8)
	stw 0,76(1)
	lis 0,0x4330
	stw 0,72(1)
	lfd 13,72(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,20(11)
.LVL1408:
.L179:
.LBE6865:
.LBE6875:
.LBE6888:
.LBB6889:
.LBB6890:
.LBB6891:
	lhz 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1409:
	.loc 1 145 0
	lfs 0,.LC3@l(8)
	stw 0,124(1)
	lis 0,0x4330
	stw 0,120(1)
	lfd 13,120(1)
.LVL1410:
.L598:
.LBE6891:
.LBB6892:
	.loc 1 166 0
	fsub 0,13,0
	slwi 22,27,1
	slwi 21,27,2
	frsp 0,0
	stfs 0,24(11)
	b .L586
.LVL1411:
.L160:
.LBE6892:
.LBE6890:
.LBE6889:
.LBB6911:
.LBB6857:
.LBB6846:
	.loc 1 152 0
	lhax 0,6,7
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
	addi 10,10,2
.LVL1412:
	xoris 0,0,0x8000
	stw 0,36(1)
	lis 0,0x4330
	stw 0,32(1)
	lfd 13,32(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(11)
.LVL1413:
.L170:
.LBE6846:
.LBE6857:
.LBE6911:
.LBB6912:
.LBB6876:
.LBB6866:
	lha 0,0(10)
	addi 10,10,2
.LVL1414:
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,84(1)
	lis 0,0x4330
	stw 0,80(1)
	lfd 13,80(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,20(11)
.LVL1415:
.L180:
.LBE6866:
.LBE6876:
.LBE6912:
.LBB6913:
.LBB6902:
.LBB6893:
	lha 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1416:
	.loc 1 152 0
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,132(1)
	lis 0,0x4330
	stw 0,128(1)
	lfd 13,128(1)
	b .L598
.LVL1417:
.L159:
.LBE6893:
.LBE6902:
.LBE6913:
.LBB6914:
.LBB6858:
.LBB6847:
	.loc 1 131 0
	lbzx 0,6,7
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
	addi 10,10,1
.LVL1418:
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfd 13,8(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(11)
.LVL1419:
.L167:
.LBE6847:
.LBE6858:
.LBE6914:
.LBB6915:
.LBB6877:
.LBB6867:
	lbz 0,0(10)
	addi 10,10,1
.LVL1420:
	lfs 0,.LC3@l(8)
	stw 0,60(1)
	lis 0,0x4330
	stw 0,56(1)
	lfd 13,56(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,20(11)
.LVL1421:
.L177:
.LBE6867:
.LBE6877:
.LBE6915:
.LBB6916:
.LBB6903:
.LBB6894:
	lbz 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1422:
	.loc 1 131 0
	lfs 0,.LC3@l(8)
	stw 0,108(1)
	lis 0,0x4330
	stw 0,104(1)
	lfd 13,104(1)
	b .L598
.LVL1423:
.L158:
.LBE6894:
.LBE6903:
.LBE6916:
.LBB6917:
.LBB6859:
.LBB6848:
.LBB6849:
.LBB6850:
	.loc 1 138 0
	lbzx 0,6,7
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
	addi 10,10,1
.LVL1424:
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,20(1)
	lis 0,0x4330
	stw 0,16(1)
	lfd 13,16(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(11)
.LVL1425:
.L168:
.LBE6850:
.LBE6849:
.LBE6848:
.LBE6859:
.LBE6917:
.LBB6918:
.LBB6878:
.LBB6868:
.LBB6869:
.LBB6870:
	lbz 0,0(10)
	addi 10,10,1
.LVL1426:
	lfs 0,.LC5@l(8)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,68(1)
	lis 0,0x4330
	stw 0,64(1)
	lfd 13,64(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,20(11)
.LVL1427:
.L178:
.LBE6870:
.LBE6869:
.LBE6868:
.LBE6878:
.LBE6918:
.LBB6919:
.LBB6904:
.LBB6895:
.LBB6896:
.LBB6897:
	lbz 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1428:
	.loc 1 138 0
	lfs 0,.LC5@l(8)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,116(1)
	lis 0,0x4330
	stw 0,112(1)
	lfd 13,112(1)
	b .L598
.LVL1429:
.L163:
.LBE6897:
.LBE6896:
.LBE6895:
.LBE6904:
.LBE6919:
.LBB6920:
.LBB6860:
.LBB6851:
	.loc 1 159 0
	lwzx 0,6,7
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
	addi 10,10,4
.LVL1430:
	stw 0,44(1)
	lis 0,0x4330
	stw 0,40(1)
	lfd 13,40(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(11)
.LVL1431:
.L171:
.LBE6851:
.LBE6860:
.LBE6920:
.LBB6921:
.LBB6879:
.LBB6871:
	lwz 0,0(10)
	addi 10,10,4
.LVL1432:
	lfs 0,.LC3@l(8)
	stw 0,92(1)
	lis 0,0x4330
	stw 0,88(1)
	lfd 13,88(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,20(11)
.LVL1433:
.L181:
.LBE6871:
.LBE6879:
.LBE6921:
.LBB6922:
.LBB6905:
.LBB6898:
	lwz 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1434:
	.loc 1 159 0
	lfs 0,.LC3@l(8)
	stw 0,140(1)
	lis 0,0x4330
	stw 0,136(1)
	lfd 13,136(1)
	b .L598
.LVL1435:
.L165:
.LBE6898:
.LBE6905:
.LBE6922:
.LBB6923:
.LBB6861:
.LBB6852:
	.loc 1 180 0
	lfdx 0,6,7
	addi 10,10,8
.LVL1436:
	frsp 0,0
	stfs 0,16(11)
.LVL1437:
.L173:
.LBE6852:
.LBE6861:
.LBE6923:
.LBB6924:
.LBB6880:
.LBB6872:
	lfd 0,0(10)
	addi 10,10,8
.LVL1438:
	frsp 0,0
	stfs 0,20(11)
.LVL1439:
.L184:
.LBE6872:
.LBE6880:
.LBE6924:
.LBB6925:
.LBB6906:
.LBB6899:
	lfd 0,0(10)
	slwi 22,27,1
	.loc 1 212 0
	addi 10,11,16
.LVL1440:
	slwi 21,27,2
	.loc 1 180 0
	frsp 0,0
	stfs 0,24(11)
	b .L586
.LVL1441:
.L162:
.LBE6899:
.LBE6906:
.LBE6925:
.LBB6926:
.LBB6862:
.LBB6853:
	.loc 1 166 0
	lwzx 0,6,7
	lis 8,.LC5@ha
	lfs 0,.LC5@l(8)
	addi 10,10,4
.LVL1442:
	xoris 0,0,0x8000
	stw 0,52(1)
	lis 0,0x4330
	stw 0,48(1)
	lfd 13,48(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(11)
.LVL1443:
.L172:
.LBE6853:
.LBE6862:
.LBE6926:
.LBB6927:
.LBB6881:
.LBB6873:
	lwz 0,0(10)
	addi 10,10,4
.LVL1444:
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,100(1)
	lis 0,0x4330
	stw 0,96(1)
	lfd 13,96(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,20(11)
.LVL1445:
.L182:
.LBE6873:
.LBE6881:
.LBE6927:
.LBB6928:
.LBB6907:
.LBB6900:
	lwz 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1446:
	.loc 1 166 0
	lfs 0,.LC5@l(8)
	xoris 0,0,0x8000
	stw 0,148(1)
	lis 0,0x4330
	stw 0,144(1)
	lfd 13,144(1)
	b .L598
.LVL1447:
.L210:
.LBE6900:
.LBE6907:
.LBE6928:
.LBE6934:
.LBE6938:
.LBE6944:
.LBE6952:
.LBB6953:
.LBB6819:
.LBB6813:
.LBB6808:
.LBB6802:
.LBB6781:
	.loc 1 125 0
	cmplwi 7,8,10
	bgt- 7,.L481
	lis 7,.L221@ha
	slwi 8,8,2
	la 7,.L221@l(7)
	lwzx 0,7,8
	add 7,0,7
	mtctr 7
	bctr
	.section	.rodata
	.align 2
	.align 2
.L221:
	.long .L528-.L221
	.long .L529-.L221
	.long .L530-.L221
	.long .L531-.L221
	.long .L532-.L221
	.long .L533-.L221
	.long .L219-.L221
	.long .L481-.L221
	.long .L481-.L221
	.long .L481-.L221
	.long .L220-.L221
	.section	".text"
.LVL1448:
.L174:
.LBE6781:
.LBE6802:
.LBE6808:
.LBE6813:
.LBE6819:
.LBE6953:
.LBB6954:
.LBB6945:
.LBB6939:
.LBB6935:
.LBB6929:
.LBB6908:
	cmplwi 7,8,10
	bgt- 7,.L478
	lis 7,.L185@ha
	slwi 8,8,2
	la 7,.L185@l(7)
	lwzx 0,7,8
	add 7,0,7
	mtctr 7
	bctr
	.section	.rodata
	.align 2
	.align 2
.L185:
	.long .L516-.L185
	.long .L517-.L185
	.long .L518-.L185
	.long .L519-.L185
	.long .L520-.L185
	.long .L521-.L185
	.long .L183-.L185
	.long .L478-.L185
	.long .L478-.L185
	.long .L478-.L185
	.long .L184-.L185
	.section	".text"
.LVL1449:
.L175:
.LBE6908:
.LBE6929:
.LBB6930:
.LBB6882:
.LBB6874:
	.loc 1 173 0
	lwz 0,0(10)
	addi 10,10,4
.LVL1450:
	stw 0,20(11)
.LVL1451:
.L183:
.LBE6874:
.LBE6882:
.LBE6930:
.LBB6931:
.LBB6909:
.LBB6901:
	lwz 0,0(10)
	slwi 22,27,1
	.loc 1 212 0
	addi 10,11,16
.LVL1452:
	slwi 21,27,2
	.loc 1 173 0
	stw 0,24(11)
	b .L586
.LVL1453:
.L211:
.LBE6901:
.LBE6909:
.LBE6931:
.LBE6935:
.LBE6939:
.LBE6945:
.LBE6954:
.LBB6955:
.LBB6820:
.LBB6814:
.LBB6809:
.LBB6803:
.LBB6756:
.LBB6748:
	lwz 0,0(10)
	addi 10,10,4
.LVL1454:
	stw 0,20(11)
.LVL1455:
.L219:
.LBE6748:
.LBE6756:
.LBE6803:
.LBB6804:
.LBB6782:
.LBB6774:
	lwz 0,0(10)
	.loc 1 212 0
	addi 10,11,16
.LVL1456:
	.loc 1 173 0
	stw 0,24(11)
	b .L586
.LVL1457:
.L510:
	lis 8,.LC5@ha
	b .L168
.L515:
	lis 8,.LC3@ha
	b .L171
.L514:
	lis 8,.LC5@ha
	b .L172
.L513:
	lis 8,.LC3@ha
	b .L169
.L512:
	lis 8,.LC5@ha
	b .L170
.L511:
	lis 8,.LC3@ha
	b .L167
.LVL1458:
.L527:
	lis 8,.LC3@ha
	b .L207
.L526:
	lis 8,.LC5@ha
	b .L208
.L525:
	lis 8,.LC3@ha
	b .L205
.L522:
	lis 8,.LC5@ha
	b .L204
.L524:
	lis 8,.LC5@ha
	b .L206
.L523:
	lis 8,.LC3@ha
	b .L203
.LVL1459:
.L488:
.LBE6774:
.LBE6782:
.LBE6804:
.LBE6809:
.LBE6814:
.LBE6820:
.LBE6955:
.LBE7885:
.LBB7886:
.LBB7207:
.LBB7099:
.LBB7094:
.LBB7089:
.LBB7085:
.LBB7058:
	.loc 1 232 0
	addi 10,11,28
.LVL1460:
.LBE7058:
.LBE7085:
.LBE7089:
.LBE7094:
.LBE7099:
.LBE7207:
	.loc 1 422 0
	b .L589
.LVL1461:
.L478:
.LBE7886:
.LBB7887:
.LBB6956:
.LBB6946:
.LBB6940:
.LBB6936:
.LBB6932:
.LBB6910:
	.loc 1 212 0
	addi 10,11,16
.LVL1462:
	slwi 22,27,1
	slwi 21,27,2
.LBE6910:
.LBE6932:
.LBE6936:
.LBE6940:
.LBE6946:
.LBE6956:
	.loc 1 393 0
	b .L586
.LVL1463:
.L481:
.LBB6957:
.LBB6821:
.LBB6815:
.LBB6810:
.LBB6805:
.LBB6783:
	.loc 1 212 0
	addi 10,11,16
.LVL1464:
.LBE6783:
.LBE6805:
.LBE6810:
.LBE6815:
.LBE6821:
.LBE6957:
	.loc 1 396 0
	b .L586
.LVL1465:
.L409:
.LBE7887:
.LBB7888:
.LBB7533:
.LBB7375:
.LBB7365:
.LBB7356:
.LBB7332:
.LBB7322:
	.loc 1 180 0
	lfd 13,0(7)
	frsp 13,13
.LVL1466:
	b .L400
.LVL1467:
.L408:
.LBE7322:
.LBB7323:
	.loc 1 173 0
	lfs 13,0(7)
.LVL1468:
	b .L400
.LVL1469:
.L358:
.LBE7323:
.LBE7332:
.LBE7356:
.LBE7365:
.LBE7375:
.LBE7533:
.LBB7534:
.LBB7517:
.LBB7509:
.LBB7502:
.LBB7478:
.LBB7469:
	.loc 1 159 0
	lwz 0,0(7)
	lis 9,.LC3@ha
	lfs 13,.LC3@l(9)
	stw 0,764(1)
	lis 0,0x4330
	stw 0,760(1)
	lfd 12,760(1)
	fsub 13,12,13
	frsp 13,13
.LVL1470:
	b .L400
.LVL1471:
.L357:
.LBE7469:
.LBB7470:
	.loc 1 166 0
	lwz 0,0(7)
	lis 9,.LC5@ha
	lfs 13,.LC5@l(9)
	xoris 0,0,0x8000
	stw 0,772(1)
	lis 0,0x4330
	stw 0,768(1)
	lfd 12,768(1)
	fsub 13,12,13
	frsp 13,13
.LVL1472:
	b .L400
.LVL1473:
.L356:
.LBE7470:
.LBB7471:
	.loc 1 145 0
	lhz 0,0(7)
	lis 9,.LC3@ha
	lfs 13,.LC3@l(9)
	stw 0,748(1)
	lis 0,0x4330
	stw 0,744(1)
	lfd 12,744(1)
	fsub 13,12,13
	frsp 13,13
.LVL1474:
	b .L400
.LVL1475:
.L355:
.LBE7471:
.LBB7472:
	.loc 1 152 0
	lha 0,0(7)
	lis 9,.LC5@ha
	lfs 13,.LC5@l(9)
	xoris 0,0,0x8000
	stw 0,756(1)
	lis 0,0x4330
	stw 0,752(1)
	lfd 12,752(1)
	fsub 13,12,13
	frsp 13,13
.LVL1476:
	b .L400
.LVL1477:
.L354:
.LBE7472:
.LBB7473:
	.loc 1 131 0
	lbz 0,0(7)
	lis 9,.LC3@ha
	lfs 13,.LC3@l(9)
	stw 0,732(1)
	lis 0,0x4330
	stw 0,728(1)
	lfd 12,728(1)
	fsub 13,12,13
	frsp 13,13
.LVL1478:
	b .L400
.LVL1479:
.L353:
.LBE7473:
.LBB7474:
.LBB7475:
.LBB7476:
	.loc 1 138 0
	lbz 0,0(7)
	lis 9,.LC5@ha
	lfs 13,.LC5@l(9)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,740(1)
	lis 0,0x4330
	stw 0,736(1)
	lfd 12,736(1)
	fsub 13,12,13
	frsp 13,13
.LVL1480:
	b .L400
.LVL1481:
.L544:
	lis 8,.LC5@ha
	b .L263
.L543:
	lis 8,.LC3@ha
	b .L260
.L540:
	lis 8,.LC5@ha
	b .L259
.L542:
	lis 8,.LC5@ha
	b .L261
.L541:
	lis 8,.LC3@ha
	b .L258
.LVL1482:
.L537:
	lis 8,.LC3@ha
	b .L250
.L536:
	lis 8,.LC5@ha
	b .L251
.L535:
	lis 8,.LC3@ha
	b .L248
.L534:
	lis 8,.LC5@ha
	b .L249
.LVL1483:
.L575:
	lis 8,.LC3@ha
	b .L384
.L574:
	lis 8,.LC5@ha
	b .L385
.LVL1484:
.L581:
	lis 8,.LC3@ha
	b .L394
.L580:
	lis 8,.LC5@ha
	b .L395
.L579:
	lis 8,.LC3@ha
	b .L392
.L578:
	lis 8,.LC5@ha
	b .L393
.L577:
	lis 8,.LC3@ha
	b .L390
.L576:
	lis 8,.LC5@ha
	b .L391
.LVL1485:
.L567:
	lis 8,.LC3@ha
	b .L343
.L566:
	lis 8,.LC5@ha
	b .L344
.L565:
	lis 8,.LC3@ha
	b .L341
.L564:
	lis 8,.LC5@ha
	b .L342
.LVL1486:
.L545:
	lis 8,.LC3@ha
	b .L262
.LVL1487:
.L557:
	lis 8,.LC3@ha
	b .L297
.L556:
	lis 8,.LC5@ha
	b .L298
.L555:
	lis 8,.LC3@ha
	b .L295
.L554:
	lis 8,.LC5@ha
	b .L296
.L553:
	lis 8,.LC3@ha
	b .L293
.L552:
	lis 8,.LC5@ha
	b .L294
.LVL1488:
.L516:
	lis 8,.LC5@ha
	b .L178
.LVL1489:
.L528:
	lis 8,.LC5@ha
	b .L214
.L530:
	lis 8,.LC5@ha
	b .L216
.L529:
	lis 8,.LC3@ha
	b .L213
.LVL1490:
.L573:
	lis 8,.LC3@ha
	b .L382
.L572:
	lis 8,.LC5@ha
	b .L383
.L571:
	lis 8,.LC3@ha
	b .L380
.L570:
	lis 8,.LC5@ha
	b .L381
.LVL1491:
.L533:
	lis 8,.LC3@ha
	b .L217
.LVL1492:
.L521:
	lis 8,.LC3@ha
	b .L181
.L518:
	lis 8,.LC5@ha
	b .L180
.L517:
	lis 8,.LC3@ha
	b .L177
.LVL1493:
.L532:
	lis 8,.LC5@ha
	b .L218
.L531:
	lis 8,.LC3@ha
	b .L215
.LVL1494:
.L520:
	lis 8,.LC5@ha
	b .L182
.L519:
	lis 8,.LC3@ha
	b .L179
.LVL1495:
.L539:
	lis 8,.LC3@ha
	b .L252
.L538:
	lis 8,.LC5@ha
	b .L253
.LVL1496:
.L551:
	lis 8,.LC3@ha
	b .L287
.L550:
	lis 8,.LC5@ha
	b .L288
.L549:
	lis 8,.LC3@ha
	b .L285
.L548:
	lis 8,.LC5@ha
	b .L286
.L547:
	lis 8,.LC3@ha
	b .L283
.L546:
	lis 8,.LC5@ha
	b .L284
.LVL1497:
.L569:
	lis 8,.LC3@ha
	b .L345
.L568:
	lis 8,.LC5@ha
	b .L346
.LVL1498:
.L563:
	lis 8,.LC3@ha
	b .L335
.L562:
	lis 8,.LC5@ha
	b .L336
.L561:
	lis 8,.LC3@ha
	b .L333
.L560:
	lis 8,.LC5@ha
	b .L334
.L559:
	lis 8,.LC3@ha
	b .L331
.L558:
	lis 8,.LC5@ha
	b .L332
.LVL1499:
.L419:
.LBE7476:
.LBE7475:
.LBE7474:
.LBE7478:
.LBE7502:
.LBE7509:
.LBE7517:
.LBE7534:
.LBE7888:
.LBB7889:
.LBB7573:
.LBB7567:
.LBB7563:
.LBB7559:
.LBB7554:
.LBB7548:
	.loc 1 345 0
	lhzx 9,9,22
.LVL1500:
	b .L417
.LVL1501:
.L621:
.LBE7548:
.LBB7549:
	.loc 1 340 0
	lbzx 9,9,27
	b .L417
.LVL1502:
.L226:
.LBE7549:
.LBE7554:
.LBE7559:
.LBE7563:
.LBE7567:
.LBE7573:
.LBE7889:
.LBB7890:
.LBB7833:
.LBB7816:
.LBB7817:
.LBB7818:
.LBB7819:
	.loc 1 335 0
	lwz 0,68(11)
.LBE7819:
.LBE7818:
	.loc 1 367 0
	lwz 10,.LANCHOR0@l(10)
.LVL1503:
.LBB7826:
.LBB7823:
	.loc 1 335 0
	cmpwi 7,0,5123
	beq- 7,.L230
	cmpwi 7,0,5125
	beq- 7,.L231
	cmpwi 7,0,5121
	beq- 7,.L630
	.loc 1 353 0
	li 10,0
.L228:
.LBE7823:
.LBE7826:
	.loc 1 367 0
	lwz 0,4(11)
	subf 11,0,10
	b .L227
.LVL1504:
.L225:
.LBE7817:
.LBE7816:
	.loc 1 365 0
	lwz 0,4(11)
	subf 11,0,27
	b .L227
.LVL1505:
.L144:
.LBE7833:
.LBE7890:
.LBB7891:
.LBB7855:
.LBB7842:
.LBB7843:
.LBB7844:
.LBB7845:
	.loc 1 335 0
	lwz 0,68(11)
.LBE7845:
.LBE7844:
	.loc 1 367 0
	lwz 10,.LANCHOR0@l(10)
.LVL1506:
.LBB7851:
.LBB7849:
	.loc 1 335 0
	cmpwi 7,0,5123
	beq- 7,.L148
	cmpwi 7,0,5125
	beq- 7,.L149
	cmpwi 7,0,5121
	beq- 7,.L631
	.loc 1 353 0
	li 10,0
.L146:
.LBE7849:
.LBE7851:
	.loc 1 367 0
	lwz 0,4(11)
	subf 11,0,10
	b .L145
.LVL1507:
.L143:
.LBE7843:
.LBE7842:
	.loc 1 365 0
	lwz 0,4(11)
	subf 11,0,3
	b .L145
.LVL1508:
.L306:
.LBE7855:
.LBE7891:
.LBB7892:
.LBB7807:
.LBB7790:
.LBB7791:
.LBB7792:
.LBB7793:
	.loc 1 335 0
	lwz 0,68(11)
.LBE7793:
.LBE7792:
	.loc 1 367 0
	lwz 9,.LANCHOR0@l(9)
.LVL1509:
.LBB7800:
.LBB7797:
	.loc 1 335 0
	cmpwi 7,0,5123
	beq- 7,.L310
	cmpwi 7,0,5125
	beq- 7,.L311
	cmpwi 7,0,5121
	beq- 7,.L632
	.loc 1 353 0
	li 9,0
.L308:
.LBE7797:
.LBE7800:
	.loc 1 367 0
	lwz 0,4(11)
	subf 9,0,9
	b .L307
.LVL1510:
.L305:
.LBE7791:
.LBE7790:
	.loc 1 365 0
	lwz 0,4(11)
	subf 9,0,27
	b .L307
.LVL1511:
.L420:
.LBE7807:
.LBE7892:
.LBB7893:
.LBB7574:
.LBB7568:
.LBB7564:
.LBB7560:
.LBB7555:
.LBB7550:
	.loc 1 350 0
	lwzx 9,9,21
.LVL1512:
	b .L417
.LVL1513:
.L270:
.LBE7550:
.LBE7555:
.LBE7560:
.LBE7564:
.LBE7568:
.LBE7574:
.LBE7893:
.LBB7894:
.LBB7208:
.LBB6972:
	.loc 1 335 0
	lwzx 7,10,21
	b .L267
.LVL1514:
.L365:
.LBE6972:
.LBE7208:
.LBE7894:
.LBB7895:
.LBB7535:
.LBB7222:
	lwzx 8,9,21
	b .L362
.LVL1515:
.L612:
.LBE7222:
.LBE7535:
.LBE7895:
.LBB7896:
.LBB6958:
.LBB6691:
.LBB6687:
	.loc 1 340 0
	lbzx 7,10,3
	slwi 22,3,1
	slwi 21,3,2
	b .L186
.LVL1516:
.L189:
.LBE6687:
.LBB6688:
	.loc 1 350 0
	slwi 21,3,2
	slwi 22,3,1
.LBE6688:
	.loc 1 335 0
	lwzx 7,10,21
	b .L186
.LVL1517:
.L188:
.LBB6689:
	.loc 1 345 0
	slwi 22,3,1
	slwi 21,3,2
	lhzx 7,10,22
	b .L186
.LVL1518:
.L269:
.LBE6689:
.LBE6691:
.LBE6958:
.LBE7896:
.LBB7897:
.LBB7209:
.LBB6973:
.LBB6970:
	lhzx 7,10,22
	b .L267
.LVL1519:
.L364:
.LBE6970:
.LBE6973:
.LBE7209:
.LBE7897:
.LBB7898:
.LBB7536:
.LBB7223:
.LBB7220:
	lhzx 8,9,22
	b .L362
.LVL1520:
.L625:
.LBE7220:
.LBE7223:
.LBE7536:
.LBB7537:
.LBB7518:
	.loc 1 261 0
	lwz 0,12(9)
	li 10,6
	cmpwi 7,0,4
	li 0,6
	bne+ 7,.L319
.LVL1521:
.L600:
.LBE7518:
.LBE7537:
.LBB7538:
.LBB7376:
.LBB7366:
.LBB7241:
.LBB7239:
	.loc 1 188 0
	lbz 0,8(9)
.LBB7236:
.LBB7233:
	.loc 1 97 0
	lwz 9,4(9)
.LBE7233:
.LBE7236:
	.loc 1 188 0
	mullw 8,0,8
.LVL1522:
.LBB7237:
.LBB7234:
	.loc 1 97 0
	add 9,9,8
	b .L313
.LVL1523:
.L597:
.LBE7234:
.LBE7237:
.LBE7239:
.LBE7241:
.LBE7366:
.LBE7376:
.LBE7538:
.LBE7898:
.LBB7899:
.LBB6959:
.LBB6822:
.LBB6816:
.LBB6703:
.LBB6702:
.LBB6701:
.LBB6700:
	add 10,10,7
	b .L150
.LVL1524:
.L628:
.LBE6700:
.LBE6701:
.LBE6702:
.LBE6703:
.LBE6816:
.LBE6822:
.LBE6959:
.LBE7899:
.LBB7900:
.LBB7539:
.LBB7377:
.LBB7367:
.LBB7357:
.LBB7333:
	.loc 1 125 0
	lwz 0,16(9)
	addic 0,0,-5120
	cmplwi 7,0,10
	bgt- 7,.L401
	lis 9,.L410@ha
	slwi 0,0,2
	la 9,.L410@l(9)
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L410:
	.long .L402-.L410
	.long .L403-.L410
	.long .L404-.L410
	.long .L405-.L410
	.long .L406-.L410
	.long .L407-.L410
	.long .L408-.L410
	.long .L401-.L410
	.long .L401-.L410
	.long .L401-.L410
	.long .L409-.L410
	.section	".text"
.L407:
.LVL1525:
.LBB7324:
	.loc 1 159 0
	lwz 0,0(7)
	lis 9,.LC3@ha
	lfs 13,.LC3@l(9)
	stw 0,956(1)
	lis 0,0x4330
	stw 0,952(1)
	lfd 12,952(1)
	fsub 13,12,13
	frsp 13,13
.LVL1526:
	b .L400
.LVL1527:
.L406:
.LBE7324:
.LBB7325:
	.loc 1 166 0
	lwz 0,0(7)
	lis 9,.LC5@ha
	lfs 13,.LC5@l(9)
	xoris 0,0,0x8000
	stw 0,964(1)
	lis 0,0x4330
	stw 0,960(1)
	lfd 12,960(1)
	fsub 13,12,13
	frsp 13,13
.LVL1528:
	b .L400
.LVL1529:
.L405:
.LBE7325:
.LBB7326:
	.loc 1 145 0
	lhz 0,0(7)
	lis 9,.LC3@ha
	lfs 13,.LC3@l(9)
	stw 0,940(1)
	lis 0,0x4330
	stw 0,936(1)
	lfd 12,936(1)
	fsub 13,12,13
	frsp 13,13
.LVL1530:
	b .L400
.LVL1531:
.L404:
.LBE7326:
.LBB7327:
	.loc 1 152 0
	lha 0,0(7)
	lis 9,.LC5@ha
	lfs 13,.LC5@l(9)
	xoris 0,0,0x8000
	stw 0,948(1)
	lis 0,0x4330
	stw 0,944(1)
	lfd 12,944(1)
	fsub 13,12,13
	frsp 13,13
.LVL1532:
	b .L400
.LVL1533:
.L403:
.LBE7327:
.LBB7328:
	.loc 1 131 0
	lbz 0,0(7)
	lis 9,.LC3@ha
	lfs 13,.LC3@l(9)
	stw 0,924(1)
	lis 0,0x4330
	stw 0,920(1)
	lfd 12,920(1)
	fsub 13,12,13
	frsp 13,13
.LVL1534:
	b .L400
.LVL1535:
.L402:
.LBE7328:
.LBB7329:
.LBB7330:
.LBB7331:
	.loc 1 138 0
	lbz 0,0(7)
	lis 9,.LC5@ha
	lfs 13,.LC5@l(9)
	extsb 0,0
	xoris 0,0,0x8000
	stw 0,932(1)
	lis 0,0x4330
	stw 0,928(1)
	lfd 12,928(1)
	fsub 13,12,13
	frsp 13,13
.LVL1536:
	b .L400
.LVL1537:
.L632:
.LBE7331:
.LBE7330:
.LBE7329:
.LBE7333:
.LBE7357:
.LBE7367:
.LBE7377:
.LBE7539:
.LBE7900:
.LBB7901:
.LBB7808:
.LBB7805:
.LBB7803:
.LBB7801:
.LBB7798:
.LBB7794:
	.loc 1 340 0
	lbzx 9,9,27
.LVL1538:
	b .L308
.LVL1539:
.L630:
.LBE7794:
.LBE7798:
.LBE7801:
.LBE7803:
.LBE7805:
.LBE7808:
.LBE7901:
.LBB7902:
.LBB7834:
.LBB7831:
.LBB7829:
.LBB7827:
.LBB7824:
.LBB7820:
	lbzx 10,10,27
.LVL1540:
	b .L228
.LVL1541:
.L631:
.LBE7820:
.LBE7824:
.LBE7827:
.LBE7829:
.LBE7831:
.LBE7834:
.LBE7902:
.LBB7903:
.LBB7856:
.LBB7854:
.LBB7853:
.LBB7852:
.LBB7850:
.LBB7846:
	lbzx 10,10,3
.LVL1542:
	b .L146
.LVL1543:
.L149:
.LBE7846:
.LBB7847:
	.loc 1 350 0
	lwzx 10,10,21
	b .L146
.LVL1544:
.L148:
.LBE7847:
.LBB7848:
	.loc 1 345 0
	lhzx 10,10,22
	b .L146
.LVL1545:
.L311:
.LBE7848:
.LBE7850:
.LBE7852:
.LBE7853:
.LBE7854:
.LBE7856:
.LBE7903:
.LBB7904:
.LBB7809:
.LBB7806:
.LBB7804:
.LBB7802:
.LBB7799:
.LBB7795:
	.loc 1 350 0
	lwzx 9,9,21
.LVL1546:
	b .L308
.LVL1547:
.L310:
.LBE7795:
.LBB7796:
	.loc 1 345 0
	lhzx 9,9,22
	b .L308
.LVL1548:
.L231:
.LBE7796:
.LBE7799:
.LBE7802:
.LBE7804:
.LBE7806:
.LBE7809:
.LBE7904:
.LBB7905:
.LBB7835:
.LBB7832:
.LBB7830:
.LBB7828:
.LBB7825:
.LBB7821:
	.loc 1 350 0
	lwzx 10,10,21
.LVL1549:
	b .L228
.LVL1550:
.L230:
.LBE7821:
.LBB7822:
	.loc 1 345 0
	lhzx 10,10,22
	b .L228
.LBE7822:
.LBE7825:
.LBE7828:
.LBE7830:
.LBE7832:
.LBE7835:
.LBE7905:
	.cfi_endproc
.LFE81:
	.size	UploadVertex, .-UploadVertex
	.align 2
	.globl glBegin
	.type	glBegin, @function
glBegin:
.LFB68:
	.loc 1 58 0
	.cfi_startproc
.LVL1551:
	stwu 1,-16(1)
.LCFI136:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 60 0
	lis 31,cur_state@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 58 0
	stw 0,20(1)
	.loc 1 60 0
	lwz 0,cur_state@l(31)
	.cfi_offset 65, 4
	andi. 11,0,1
	bne- 0,.L647
	.loc 1 71 0
	cmplwi 7,3,9
	.loc 1 66 0
	lis 10,.LANCHOR0+64@ha
	.loc 1 63 0
	ori 0,0,1
	.loc 1 65 0
	lis 9,_GLtype@ha
	.loc 1 66 0
	stw 11,.LANCHOR0+64@l(10)
	.loc 1 68 0
	lis 10,vert_i@ha
	.loc 1 63 0
	stw 0,cur_state@l(31)
	.loc 1 65 0
	stw 11,_GLtype@l(9)
	.loc 1 68 0
	stw 11,vert_i@l(10)
	.loc 1 71 0
	ble- 7,.L648
	.loc 1 88 0
	lis 4,.LC6@ha
	.loc 1 87 0
	li 0,1280
	.loc 1 88 0
	li 3,1280
.LVL1552:
	la 4,.LC6@l(4)
	li 5,88
	.loc 1 87 0
	stw 0,_GLtype@l(9)
	.loc 1 88 0
	bl _glSetErrorEx
	.loc 1 89 0
	lwz 0,cur_state@l(31)
	rlwinm 0,0,0,0,30
	stw 0,cur_state@l(31)
	.loc 1 90 0
	b .L633
.LVL1553:
.L648:
	.loc 1 71 0
	lis 11,.L646@ha
	slwi 0,3,2
	la 11,.L646@l(11)
	lwzx 0,11,0
	add 11,0,11
	mtctr 11
	bctr
	.section	.rodata
	.align 2
	.align 2
.L646:
	.long .L637-.L646
	.long .L638-.L646
	.long .L639-.L646
	.long .L640-.L646
	.long .L641-.L646
	.long .L642-.L646
	.long .L645-.L646
	.long .L644-.L646
	.long .L639-.L646
	.long .L645-.L646
	.section	".text"
.L647:
	.loc 1 60 0 discriminator 1
	lis 4,.LC6@ha
	li 3,1282
.LVL1554:
	la 4,.LC6@l(4)
	li 5,60
	bl _glSetErrorEx
.L633:
	.loc 1 92 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI137:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL1555:
.L645:
.LCFI138:
	.cfi_restore_state
	.loc 1 80 0
	li 0,160
	lis 9,_type@ha
	stw 0,_type@l(9)
	.loc 1 92 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI139:
	.cfi_def_cfa_offset 0
	blr
.L637:
.LCFI140:
	.cfi_restore_state
	.loc 1 73 0
	li 0,184
	lis 9,_type@ha
	stw 0,_type@l(9)
	b .L633
.L639:
	.loc 1 83 0
	li 0,0
	lis 11,_type@ha
	stw 0,_type@l(11)
	.loc 1 84 0
	stw 3,_GLtype@l(9)
	.loc 1 85 0
	b .L633
.L638:
	.loc 1 74 0
	li 0,168
	lis 9,_type@ha
	stw 0,_type@l(9)
	b .L633
.L644:
	.loc 1 79 0
	li 0,128
	lis 9,_type@ha
	stw 0,_type@l(9)
	b .L633
.L642:
	.loc 1 77 0
	li 0,152
	lis 9,_type@ha
	stw 0,_type@l(9)
	b .L633
.L641:
	.loc 1 76 0
	li 0,144
	lis 9,_type@ha
	stw 0,_type@l(9)
	b .L633
.L640:
	.loc 1 75 0
	li 0,176
	lis 9,_type@ha
	stw 0,_type@l(9)
	b .L633
	.cfi_endproc
.LFE68:
	.size	glBegin, .-glBegin
	.align 2
	.globl ResetArrays
	.type	ResetArrays, @function
ResetArrays:
.LFB210:
	.loc 1 609 0
	.cfi_startproc
.LVL1556:
	.loc 1 613 0
	lis 12,vert_i@ha
	lwz 3,vert_i@l(12)
	cmpwi 7,3,0
	ble- 7,.L650
	.loc 1 621 0
	lis 9,.LC1@ha
	.loc 1 613 0
	lis 8,_colorelements@ha
	lis 10,_texcoordelements@ha
	lis 4,_vertexelements@ha
	lis 5,_normalelements@ha
	.loc 1 608 0
	mulli 3,3,12
	.loc 1 621 0
	lwz 7,.LC1@l(9)
	.loc 1 613 0
	la 8,_colorelements@l(8)
	la 10,_texcoordelements@l(10)
	.loc 1 608 0
	li 6,0
	la 4,_vertexelements@l(4)
	la 5,_normalelements@l(5)
	.loc 1 615 0
	li 0,0
.LVL1557:
.L652:
	.loc 1 619 0
	mr 9,5
	.loc 1 615 0
	mr 11,4
	.loc 1 619 0
	stwux 0,9,6
	.loc 1 615 0
	stwux 0,11,6
	.loc 1 620 0
	stw 0,4(9)
	.loc 1 621 0
	stw 7,8(9)
	.loc 1 628 0
	li 9,8
	.loc 1 623 0
	stw 7,0(8)
	.loc 1 628 0
	mtctr 9
	.loc 1 624 0
	stw 7,4(8)
	.loc 1 625 0
	stw 7,8(8)
	.loc 1 626 0
	stw 7,12(8)
.LVL1558:
	.loc 1 616 0
	stw 0,4(11)
	.loc 1 617 0
	stw 0,8(11)
	.loc 1 626 0
	li 11,0
.LVL1559:
.L651:
	.loc 1 630 0 discriminator 2
	mr 9,10
	stwux 0,9,11
	.loc 1 631 0 discriminator 2
	addi 11,11,8000
	stw 0,4(9)
	.loc 1 628 0 discriminator 2
	bdnz .L651
	.loc 1 628 0 is_stmt 0
	addi 6,6,12
	addi 8,8,16
	.loc 1 613 0 is_stmt 1
	cmpw 7,6,3
	.loc 1 628 0
	addi 10,10,8
	.loc 1 613 0
	bne+ 7,.L652
.L650:
	.loc 1 635 0
	li 0,0
	.loc 1 636 0
	.loc 1 635 0
	stw 0,vert_i@l(12)
	.loc 1 636 0
	blr
	.cfi_endproc
.LFE210:
	.size	ResetArrays, .-ResetArrays
	.align 2
	.globl gxSetupAlphaCompare
	.type	gxSetupAlphaCompare, @function
gxSetupAlphaCompare:
.LFB214:
	.loc 1 827 0
	.cfi_startproc
	mflr 0
	stwu 1,-24(1)
.LCFI141:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 831 0
	lis 9,_alphatest_enabled@ha
	.loc 1 827 0
	stw 30,16(1)
	stw 0,28(1)
	.loc 1 831 0
	lbz 0,_alphatest_enabled@l(9)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.loc 1 827 0
	stw 31,20(1)
	.loc 1 831 0
	cmpwi 7,0,0
	beq- 7,.L656
	.cfi_offset 31, -4
	.loc 1 832 0
	lis 9,_alphatest_dirty@ha
	lbz 0,_alphatest_dirty@l(9)
	cmpwi 7,0,0
	beq- 7,.L655
.LVL1560:
	.loc 1 835 0
	lis 11,_alphatest_func@ha
	lwz 11,_alphatest_func@l(11)
	addi 0,11,-512
	.loc 1 834 0
	li 11,0
	.loc 1 835 0
	cmplwi 7,0,6
	.loc 1 834 0
	stb 11,_alphatest_dirty@l(9)
	.loc 1 835 0
	ble- 7,.L670
.LVL1561:
	lis 30,.LANCHOR0@ha
	.loc 1 867 0
	li 3,1
	.loc 1 866 0
	li 31,7
	la 30,.LANCHOR0@l(30)
.LVL1562:
.L660:
	.loc 1 886 0
	bl GX_SetZCompLoc
.LVL1563:
	.loc 1 887 0
	lis 9,_alphatest_ref@ha
	lfs 0,_alphatest_ref@l(9)
	addi 9,1,8
	mr 3,31
	li 5,0
	fctiwz 0,0
	li 6,7
	li 7,0
	stfiwx 0,0,9
	lwz 4,8(1)
	rlwinm 4,4,0,0xff
	bl GX_SetAlphaCompare
	.loc 1 888 0
	stb 31,72(30)
.LVL1564:
.L655:
	.loc 1 890 0
	lwz 0,28(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI142:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L656:
.LCFI143:
	.cfi_restore_state
	.loc 1 876 0
	lis 30,.LANCHOR0@ha
	.loc 1 878 0
	li 3,1
	.loc 1 876 0
	la 30,.LANCHOR0@l(30)
	.loc 1 877 0
	li 31,7
	.loc 1 876 0
	lbz 0,72(30)
	cmpwi 7,0,7
	beq- 7,.L655
.LVL1565:
	.loc 1 886 0
	bl GX_SetZCompLoc
.LVL1566:
	.loc 1 887 0
	lis 9,_alphatest_ref@ha
	lfs 0,_alphatest_ref@l(9)
	addi 9,1,8
	mr 3,31
	li 5,0
	fctiwz 0,0
	li 6,7
	li 7,0
	stfiwx 0,0,9
	lwz 4,8(1)
	rlwinm 4,4,0,0xff
	bl GX_SetAlphaCompare
	.loc 1 888 0
	stb 31,72(30)
	b .L655
.LVL1567:
.L670:
	.loc 1 835 0
	lis 9,.L666@ha
	slwi 0,0,2
	la 9,.L666@l(9)
	.loc 1 862 0
	li 3,0
	.loc 1 835 0
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L666:
	.long .L659-.L666
	.long .L667-.L666
	.long .L661-.L666
	.long .L662-.L666
	.long .L663-.L666
	.long .L664-.L666
	.long .L665-.L666
	.section	".text"
.L667:
	lis 30,.LANCHOR0@ha
	.loc 1 841 0
	li 31,1
	la 30,.LANCHOR0@l(30)
	b .L660
.L659:
	lis 30,.LANCHOR0@ha
	.loc 1 837 0
	li 31,0
	la 30,.LANCHOR0@l(30)
	b .L660
.L665:
.LVL1568:
	lis 30,.LANCHOR0@ha
	.loc 1 861 0
	li 31,6
	la 30,.LANCHOR0@l(30)
	.loc 1 863 0
	b .L660
.LVL1569:
.L663:
	lis 30,.LANCHOR0@ha
	.loc 1 853 0
	li 31,4
	la 30,.LANCHOR0@l(30)
	.loc 1 855 0
	b .L660
.LVL1570:
.L662:
	lis 30,.LANCHOR0@ha
	.loc 1 849 0
	li 31,3
	la 30,.LANCHOR0@l(30)
	.loc 1 851 0
	b .L660
.LVL1571:
.L664:
	lis 30,.LANCHOR0@ha
	.loc 1 857 0
	li 31,5
	la 30,.LANCHOR0@l(30)
	.loc 1 859 0
	b .L660
.LVL1572:
.L661:
	lis 30,.LANCHOR0@ha
	.loc 1 845 0
	li 31,2
	la 30,.LANCHOR0@l(30)
	.loc 1 847 0
	b .L660
	.cfi_endproc
.LFE214:
	.size	gxSetupAlphaCompare, .-gxSetupAlphaCompare
	.align 2
	.type	glRender, @function
glRender:
.LFB220:
	.loc 1 1164 0
	.cfi_startproc
.LVL1573:
	mflr 0
	stwu 1,-512(1)
.LCFI144:
	.cfi_def_cfa_offset 512
	.cfi_register 65, 0
	.loc 1 1167 0
	lis 9,cur_state@ha
	.loc 1 1164 0
	mfcr 12
	stw 26,456(1)
.LBB10599:
.LBB10600:
	.loc 1 939 0
	lis 26,.LC7@ha
	.cfi_offset 26, -56
	.cfi_register 70, 12
.LBE10600:
.LBE10599:
	.loc 1 1164 0
	stw 0,516(1)
	.loc 1 1167 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 1164 0
	stw 31,476(1)
	mr 31,3
	.cfi_offset 31, -36
	.loc 1 1167 0
	rlwinm 0,0,0,0,30
	.loc 1 1164 0
	stfd 28,480(1)
	.loc 1 1167 0
	stw 0,cur_state@l(9)
	.loc 1 1164 0
	stfd 29,488(1)
	stfd 30,496(1)
	stfd 31,504(1)
	stw 14,408(1)
	stw 15,412(1)
	stw 16,416(1)
	stw 17,420(1)
	stw 18,424(1)
	stw 19,428(1)
	stw 20,432(1)
	stw 21,436(1)
	stw 22,440(1)
	stw 23,444(1)
	stw 24,448(1)
	stw 25,452(1)
	stw 27,460(1)
	stw 28,464(1)
	stw 29,468(1)
	stw 30,472(1)
	stw 12,404(1)
.LBB10789:
.LBB10777:
	.loc 1 937 0
	.cfi_offset 70, -108
	.cfi_offset 30, -40
	.cfi_offset 29, -44
	.cfi_offset 28, -48
	.cfi_offset 27, -52
	.cfi_offset 25, -60
	.cfi_offset 24, -64
	.cfi_offset 23, -68
	.cfi_offset 22, -72
	.cfi_offset 21, -76
	.cfi_offset 20, -80
	.cfi_offset 19, -84
	.cfi_offset 18, -88
	.cfi_offset 17, -92
	.cfi_offset 16, -96
	.cfi_offset 15, -100
	.cfi_offset 14, -104
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	bl GX_SetCurrentGXThread
.LVL1574:
	.loc 1 939 0
	lis 9,point_size@ha
	lfs 13,.LC7@l(26)
	lfs 0,point_size@l(9)
	fcmpu 7,0,13
	bnl- 7,.L2600
	.loc 1 941 0
	fadds 0,0,0
	addi 8,1,364
	li 4,4
	fctiwz 0,0
	stfiwx 0,0,8
	lwz 3,364(1)
	rlwinm 3,3,0,0xff
	bl GX_SetPointSize
.L674:
	.loc 1 948 0
	lis 9,line_width@ha
	lfs 13,.LC7@l(26)
	lfs 0,line_width@l(9)
	fcmpu 7,0,13
	bnl- 7,.L2601
	.loc 1 950 0
	fadds 0,0,0
	addi 10,1,356
	li 4,4
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 3,356(1)
	rlwinm 3,3,0,0xff
	bl GX_SetLineWidth
.L677:
	.loc 1 957 0
	lis 9,depthtestenabled@ha
	li 5,0
	lbz 3,depthtestenabled@l(9)
	lis 9,depthfunction@ha
	lwz 4,depthfunction@l(9)
	cmpwi 7,3,0
	rlwinm 4,4,0,0xff
	beq- 7,.L678
	.loc 1 1164 0
	lis 9,depthupdate@ha
	lbz 5,depthupdate@l(9)
	neg 5,5
	srwi 5,5,31
.L678:
	.loc 1 960 0
	lis 26,color_write_mask@ha
	.loc 1 957 0
	bl GX_SetZMode
	.loc 1 960 0
	lbz 0,color_write_mask@l(26)
	la 26,color_write_mask@l(26)
	cmpwi 7,0,0
	bne- 7,.L679
	lbz 0,1(26)
	cmpwi 7,0,0
	beq- 7,.L2633
.L679:
	.loc 1 966 0
	li 3,1
	bl GX_SetColorUpdate
.L680:
	.loc 1 969 0
	lbz 0,3(26)
	cmpwi 7,0,0
	beq- 7,.L681
	.loc 1 971 0
	li 3,1
	bl GX_SetAlphaUpdate
.L682:
	.loc 1 978 0
	lis 11,viewPort@ha
	lis 0,0x4330
	la 9,viewPort@l(11)
	lwz 8,viewPort@l(11)
	lwz 10,4(9)
	.loc 1 980 0
	lis 26,_GLtype@ha
	.loc 1 978 0
	lwz 11,8(9)
	xoris 8,8,0x8000
	lwz 9,12(9)
	xoris 10,10,0x8000
	xoris 11,11,0x8000
	stw 8,60(1)
	xoris 9,9,0x8000
	stw 0,56(1)
	stw 0,64(1)
	lis 8,.LC5@ha
	stw 0,72(1)
	stw 9,84(1)
	lis 9,normNear@ha
	stw 0,80(1)
	stw 10,68(1)
	stw 11,76(1)
	lfs 0,.LC5@l(8)
	lfd 1,56(1)
	lfd 2,64(1)
	lfd 3,72(1)
	fsub 1,1,0
	lfd 4,80(1)
	fsub 2,2,0
	fsub 3,3,0
	lfs 5,normNear@l(9)
	fsub 4,4,0
	lis 9,normFar@ha
	frsp 1,1
	lfs 6,normFar@l(9)
	frsp 2,2
	frsp 3,3
	frsp 4,4
	bl GX_SetModViewport
	.loc 1 980 0
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,1280
	beq- 7,.L683
	.loc 1 985 0
	lis 9,scissor_test@ha
	lbz 0,scissor_test@l(9)
	cmpwi 7,0,0
	bne- 7,.L2634
	.loc 1 991 0
	bl GX_SetMaxScissor
.L685:
	.loc 1 994 0
	bl updateFog
	.loc 1 996 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopPrjMtx
.LVL1575:
	.loc 1 998 0
	mr. 9,3
	beq- 0,.L686
	.loc 1 999 0
	lbz 4,64(9)
	bl GX_LoadProjectionMtx
.LVL1576:
.L686:
	.loc 1 1001 0
	lis 3,model_stack@ha
	la 3,model_stack@l(3)
	bl TopMtx
	.loc 1 1004 0
	li 4,0
	.loc 1 1001 0
	mr 25,3
.LVL1577:
	.loc 1 1004 0
	bl GX_LoadPosMtxImm
.LVL1578:
	.loc 1 1005 0
	li 4,0
	mr 3,25
	bl GX_LoadNrmMtxImm
	.loc 1 1007 0
	li 3,0
	bl GX_SetCurrentMtx
.LVL1579:
.LBB10601:
.LBB10602:
	.loc 1 676 0
	lis 9,blend_type@ha
	lbz 3,blend_type@l(9)
	lis 9,blend_src@ha
	lbz 4,blend_src@l(9)
	lis 9,blend_dst@ha
	lbz 5,blend_dst@l(9)
	lis 9,blend_op@ha
	lbz 6,blend_op@l(9)
	bl GX_SetBlendMode
	.loc 1 678 0
	lis 9,lighting@ha
	lbz 0,lighting@l(9)
	cmpwi 7,0,0
	beq- 7,.L687
.LBB10603:
	.loc 1 738 0
	li 10,4
.LBE10603:
	.loc 1 678 0
	lis 11,lights@ha
.LBB10604:
	.loc 1 738 0
	mtctr 10
.LBE10604:
	.loc 1 678 0
	la 11,lights@l(11)
	li 25,0
.LVL1580:
	li 24,0
	li 9,0
.LBB10605:
	.loc 1 738 0
	li 0,1
.L689:
	.loc 1 737 0
	lbz 8,0(11)
	.loc 1 1164 0
	addi 10,9,4
	.loc 1 739 0
	slw 10,0,10
	.loc 1 737 0
	cmpwi 7,8,0
	.loc 1 738 0
	slw 8,0,9
	or 8,8,24
	.loc 1 739 0
	or 10,10,25
	.loc 1 737 0
	beq- 7,.L688
	.loc 1 738 0
	rlwinm 24,8,0,0xff
.LVL1581:
	.loc 1 739 0
	rlwinm 25,10,0,0xff
.LVL1582:
.L688:
	.loc 1 736 0
	addi 9,9,1
.LVL1583:
	addi 11,11,164
	bdnz .L689
	.loc 1 745 0
	li 3,2
	bl GX_SetNumChans
.LVL1584:
	.loc 1 748 0
	li 3,4
	li 4,1
	li 5,0
	li 6,0
	mr 7,24
	li 8,2
	li 9,1
	bl GX_SetChanCtrl
	.loc 1 751 0
	li 9,0
	li 8,2
	li 3,5
	li 4,1
	li 5,0
	li 6,0
	mr 7,25
	bl GX_SetChanCtrl
	.loc 1 756 0
	li 3,0
	li 4,4
	li 5,15
	li 6,15
	li 7,2
	bl GX_SetTevColorIn
	.loc 1 757 0
	li 8,0
	li 3,0
	li 4,0
	li 5,0
	li 6,0
	li 7,1
	bl GX_SetTevColorOp
	.loc 1 760 0
	li 3,0
	li 4,2
	li 5,7
	li 6,7
	li 7,1
	bl GX_SetTevAlphaIn
	.loc 1 761 0
	li 8,0
	li 7,1
	li 3,0
	li 4,0
	li 5,0
	li 6,0
	bl GX_SetTevAlphaOp
	.loc 1 764 0
	li 3,0
	li 4,255
	li 5,255
	li 6,4
	bl GX_SetTevOrder
	.loc 1 772 0
	li 3,1
	li 4,0
	li 5,15
	li 6,15
	li 7,10
	bl GX_SetTevColorIn
	.loc 1 773 0
	li 8,0
	li 3,1
	li 4,0
	li 5,0
	li 6,0
	li 7,1
	bl GX_SetTevColorOp
	.loc 1 776 0
	li 3,1
	li 4,0
	li 5,7
	li 6,7
	li 7,11
	bl GX_SetTevAlphaIn
	.loc 1 777 0
	li 8,0
	li 7,1
	li 3,1
	li 4,0
	li 5,0
	li 6,0
	bl GX_SetTevAlphaOp
	.loc 1 780 0
	li 3,1
	li 4,255
	li 5,255
	li 6,4
	bl GX_SetTevOrder
	.loc 1 788 0
	li 3,2
	li 4,15
	li 5,10
	li 6,12
	li 7,0
	bl GX_SetTevColorIn
	.loc 1 789 0
	li 8,0
	li 3,2
	li 4,0
	li 5,0
	li 6,0
	li 7,1
	bl GX_SetTevColorOp
	.loc 1 793 0
	li 3,2
	li 4,7
	li 5,7
	li 6,7
	li 7,0
	bl GX_SetTevAlphaIn
	.loc 1 794 0
	li 3,2
	li 4,0
	li 5,0
	li 6,0
	li 7,1
	li 8,0
	bl GX_SetTevAlphaOp
	.loc 1 796 0
	li 3,2
	li 4,255
	li 5,255
	li 6,5
	bl GX_SetTevOrder
.LVL1585:
	.loc 1 798 0
	li 3,3
.LVL1586:
.L690:
.LBE10605:
	.loc 1 807 0
	bl GX_SetTextures
.LVL1587:
	.loc 1 809 0
	mr. 0,3
	bne+ 0,.L691
	.loc 1 811 0
	li 4,4
	bl GX_SetTevOp
.LVL1588:
	.loc 1 812 0
	li 0,1
.LVL1589:
.L691:
	.loc 1 817 0
	mr 3,0
.LBE10602:
.LBE10601:
.LBB10609:
.LBB10610:
	.loc 1 33 0
	lis 25,curmat@ha
.LBE10610:
.LBE10609:
.LBB10616:
.LBB10606:
	.loc 1 817 0
	bl GX_SetNumTevStages
.LVL1590:
.LBE10606:
.LBE10616:
.LBB10617:
.LBB10611:
	.loc 1 33 0
	la 24,curmat@l(25)
.LBE10611:
.LBE10617:
.LBB10618:
.LBB10607:
	.loc 1 820 0
	bl GX_DrawDone
.LBE10607:
.LBE10618:
	.loc 1 1017 0
	mr 22,1
	.loc 1 1012 0
	bl gxSetupAlphaCompare
.LVL1591:
.LBB10619:
.LBB10612:
	.loc 1 33 0
	lis 11,globAmbient@ha
	la 9,globAmbient@l(11)
	lfs 0,16(24)
	lfs 11,globAmbient@l(11)
	lis 11,.LC0@ha
	.loc 1 34 0
	lfs 12,4(9)
	.loc 1 33 0
	addi 8,1,288
	.loc 1 35 0
	lfs 13,8(9)
	.loc 1 33 0
	fmuls 11,0,11
	.loc 1 34 0
	fmuls 12,0,12
	.loc 1 33 0
	lfs 31,.LC0@l(11)
	.loc 1 36 0
	lfs 10,12(9)
	.loc 1 35 0
	fmuls 13,0,13
	.loc 1 33 0
	fmuls 11,11,31
	.loc 1 34 0
	addi 9,1,292
	fmuls 12,12,31
	.loc 1 33 0
	stw 11,380(1)
	.loc 1 36 0
	fmuls 0,0,10
	.loc 1 35 0
	addi 10,1,296
	fmuls 13,13,31
	.loc 1 36 0
	addi 11,1,300
	.loc 1 33 0
	fctiwz 11,11
	li 0,0
.LVL1592:
	.loc 1 34 0
	fctiwz 12,12
.LBE10612:
.LBE10619:
	.loc 1 1017 0
	li 3,1
.LBB10620:
.LBB10613:
	.loc 1 36 0
	fmuls 0,0,31
.LBE10613:
.LBE10620:
.LBB10621:
.LBB10622:
	.loc 1 44 0
	li 23,1
.LBE10622:
.LBE10621:
.LBB10640:
.LBB10614:
	.loc 1 35 0
	fctiwz 13,13
	.loc 1 33 0
	stfiwx 11,0,8
	.loc 1 34 0
	stfiwx 12,0,9
.LBE10614:
.LBE10640:
.LBB10641:
.LBB10623:
	.loc 1 1164 0
	addi 19,23,-1
.LBE10623:
.LBE10641:
.LBB10642:
.LBB10615:
	.loc 1 36 0
	fctiwz 0,0
	.loc 1 33 0
	lwz 9,288(1)
	.loc 1 35 0
	stfiwx 13,0,10
	.loc 1 33 0
	rlwimi 0,9,24,0,7
.LVL1593:
	.loc 1 34 0
	lwz 10,292(1)
	.loc 1 36 0
	stfiwx 0,0,11
	.loc 1 34 0
	rlwimi 0,10,16,8,15
	.loc 1 35 0
	lwz 11,296(1)
	.loc 1 36 0
	lwz 9,300(1)
	.loc 1 35 0
	rlwimi 0,11,8,16,23
	.loc 1 36 0
	rlwimi 0,9,0,24,31
.LBE10615:
.LBE10642:
	.loc 1 1017 0
	stwu 0,88(22)
	mr 4,22
	bl GX_SetTevColor
.LVL1594:
.LBB10643:
.LBB10644:
	.loc 1 41 0
	lfs 11,curmat@l(25)
	.loc 1 42 0
	lfs 12,4(24)
	.loc 1 41 0
	addi 8,1,304
	.loc 1 43 0
	lfs 13,8(24)
	.loc 1 41 0
	fmuls 11,11,31
	.loc 1 42 0
	fmuls 12,12,31
	.loc 1 44 0
	lfs 0,12(24)
	.loc 1 43 0
	fmuls 13,13,31
	.loc 1 42 0
	addi 9,1,308
	.loc 1 41 0
	fctiwz 11,11
	.loc 1 43 0
	addi 10,1,312
	.loc 1 42 0
	fctiwz 12,12
	.loc 1 41 0
	li 0,0
.LVL1595:
	.loc 1 44 0
	fmuls 0,0,31
.LBE10644:
.LBE10643:
	.loc 1 1021 0
	li 3,2
.LBB10650:
.LBB10645:
	.loc 1 43 0
	fctiwz 13,13
	.loc 1 41 0
	stfiwx 11,0,8
	.loc 1 42 0
	stfiwx 12,0,9
	.loc 1 44 0
	addi 8,1,316
	fctiwz 0,0
.LBE10645:
.LBE10650:
	.loc 1 1021 0
	mr 4,22
.LBB10651:
.LBB10646:
	.loc 1 41 0
	lwz 11,304(1)
.LBE10646:
.LBE10651:
.LBB10652:
.LBB10624:
	.loc 1 44 0
	lis 25,lights+152@ha
.LBE10624:
.LBE10652:
.LBB10653:
.LBB10647:
	.loc 1 43 0
	stfiwx 13,0,10
.LBE10647:
.LBE10653:
.LBB10654:
.LBB10625:
	.loc 1 44 0
	la 25,lights+152@l(25)
.LBE10625:
.LBE10654:
.LBB10655:
.LBB10648:
	.loc 1 41 0
	rlwimi 0,11,24,0,7
.LVL1596:
.LBE10648:
.LBE10655:
.LBB10656:
	.loc 1 1041 0
	addi 21,25,-152
.LBE10656:
.LBB10722:
.LBB10649:
	.loc 1 42 0
	lwz 9,308(1)
	.loc 1 44 0
	stfiwx 0,0,8
	.loc 1 42 0
	rlwimi 0,9,16,8,15
	.loc 1 43 0
	lwz 11,312(1)
	.loc 1 44 0
	lwz 9,316(1)
	.loc 1 43 0
	rlwimi 0,11,8,16,23
	.loc 1 44 0
	rlwimi 0,9,0,24,31
.LBE10649:
.LBE10722:
	.loc 1 1021 0
	stw 0,88(1)
	bl GX_SetTevColor
.LVL1597:
.LBB10723:
.LBB10724:
	.loc 1 41 0
	lfs 8,16(24)
	addi 9,1,320
	.loc 1 42 0
	lfs 9,20(24)
	addi 10,1,324
	.loc 1 43 0
	lfs 10,24(24)
	.loc 1 41 0
	fmuls 8,8,31
	.loc 1 44 0
	lfs 11,28(24)
	.loc 1 42 0
	fmuls 9,9,31
.LBE10724:
.LBE10723:
.LBB10737:
.LBB10626:
	.loc 1 41 0
	lfs 12,48(24)
.LBE10626:
.LBE10737:
.LBB10738:
.LBB10725:
	.loc 1 43 0
	fmuls 10,10,31
.LBE10725:
.LBE10738:
.LBB10739:
.LBB10627:
	.loc 1 42 0
	lfs 13,52(24)
.LBE10627:
.LBE10739:
.LBB10740:
.LBB10726:
	.loc 1 44 0
	fmuls 11,11,31
.LBE10726:
.LBE10740:
.LBB10741:
.LBB10628:
	.loc 1 43 0
	lfs 0,56(24)
	.loc 1 41 0
	fmuls 12,12,31
	.loc 1 44 0
	lfs 7,60(24)
	.loc 1 42 0
	fmuls 13,13,31
	.loc 1 43 0
	fmuls 0,0,31
.LBE10628:
.LBE10741:
.LBB10742:
.LBB10727:
	addi 11,1,328
.LBE10727:
.LBE10742:
.LBB10743:
.LBB10629:
	.loc 1 44 0
	fmuls 31,7,31
.LBE10629:
.LBE10743:
.LBB10744:
.LBB10728:
	addi 8,1,332
	.loc 1 41 0
	fctiwz 8,8
	.loc 1 42 0
	fctiwz 9,9
	.loc 1 43 0
	fctiwz 10,10
	.loc 1 44 0
	fctiwz 11,11
	.loc 1 41 0
	stfiwx 8,0,9
.LBE10728:
.LBE10744:
.LBB10745:
.LBB10630:
	.loc 1 44 0
	fctiwz 31,31
.LBE10630:
.LBE10745:
.LBB10746:
.LBB10729:
	.loc 1 42 0
	stfiwx 9,0,10
.LBE10729:
.LBE10746:
.LBB10747:
.LBB10631:
	.loc 1 41 0
	fctiwz 12,12
.LBE10631:
.LBE10747:
.LBB10748:
.LBB10730:
	.loc 1 43 0
	stfiwx 10,0,11
.LBE10730:
.LBE10748:
.LBB10749:
.LBB10632:
	.loc 1 42 0
	fctiwz 13,13
.LBE10632:
.LBE10749:
.LBB10750:
.LBB10731:
	.loc 1 44 0
	stfiwx 11,0,8
.LBE10731:
.LBE10750:
.LBB10751:
.LBB10633:
	.loc 1 43 0
	fctiwz 0,0
	.loc 1 41 0
	addi 9,1,336
	.loc 1 42 0
	addi 10,1,340
	.loc 1 43 0
	addi 11,1,344
	.loc 1 44 0
	addi 8,1,348
	.loc 1 41 0
	stfiwx 12,0,9
	.loc 1 42 0
	stfiwx 13,0,10
	.loc 1 43 0
	stfiwx 0,0,11
	.loc 1 44 0
	stfiwx 31,0,8
	stw 31,392(1)
.LBE10633:
.LBE10751:
.LBB10752:
.LBB10732:
	lwz 0,332(1)
	.loc 1 43 0
	lwz 9,328(1)
	.loc 1 44 0
	rlwinm 8,0,0,0xff
.LBE10732:
.LBE10752:
	.loc 1 1036 0
	lbz 0,-152(25)
.LBB10753:
.LBB10733:
	.loc 1 41 0
	lwz 10,320(1)
	.loc 1 43 0
	rlwinm 7,9,0,0xff
.LBE10733:
.LBE10753:
	.loc 1 1036 0
	cmpwi 7,0,0
.LBB10754:
.LBB10734:
	.loc 1 42 0
	lwz 11,324(1)
.LBE10734:
.LBE10754:
.LBB10755:
.LBB10634:
	.loc 1 41 0
	lwz 14,336(1)
.LBE10634:
.LBE10755:
.LBB10756:
.LBB10735:
	rlwinm 10,10,0,0xff
.LVL1598:
.LBE10735:
.LBE10756:
.LBB10757:
.LBB10635:
	.loc 1 42 0
	lwz 15,340(1)
.LBE10635:
.LBE10757:
.LBB10758:
.LBB10736:
	rlwinm 6,11,0,0xff
.LVL1599:
.LBE10736:
.LBE10758:
.LBB10759:
.LBB10636:
	.loc 1 43 0
	lwz 16,344(1)
	.loc 1 41 0
	rlwinm 14,14,0,0xff
.LVL1600:
	.loc 1 44 0
	lwz 17,348(1)
	.loc 1 42 0
	rlwinm 15,15,0,0xff
.LVL1601:
	.loc 1 43 0
	rlwinm 16,16,0,0xff
.LVL1602:
.LBE10636:
.LBE10759:
.LBB10760:
	.loc 1 1068 0
	lis 9,.LC17@ha
.LVL1603:
.LBE10760:
.LBB10761:
.LBB10637:
	.loc 1 44 0
	rlwinm 17,17,0,0xff
.LVL1604:
	stw 15,368(1)
	stw 16,372(1)
	mr 31,14
.LVL1605:
	stw 17,376(1)
	mr 15,6
.LVL1606:
.LBE10637:
.LBE10761:
.LBB10762:
	.loc 1 1068 0
	lfs 31,.LC17@l(9)
	mr 16,10
.LVL1607:
	mr 17,7
.LVL1608:
	mr 14,8
.LVL1609:
.LBE10762:
	.loc 1 1036 0
	bne- 7,.L2635
.LVL1610:
.L693:
	.loc 1 1034 0
	cmpwi 7,23,4
	beq- 7,.L2636
.LVL1611:
.L705:
.LBB10763:
.LBB10638:
	.loc 1 44 0
	addi 25,25,164
	addi 23,23,1
.LBE10638:
.LBE10763:
	.loc 1 1036 0
	lbz 0,-152(25)
.LBB10764:
.LBB10639:
	.loc 1 1164 0
	addi 19,23,-1
.LBE10639:
.LBE10764:
	.loc 1 1036 0
	cmpwi 7,0,0
	beq+ 7,.L693
.L2635:
.LBB10765:
.LBB10657:
.LBB10658:
	.loc 1 25 0
	lis 18,0x4330
	xoris 16,16,0x8000
	.loc 1 26 0
	xoris 15,15,0x8000
	.loc 1 25 0
	stw 16,100(1)
	stw 18,96(1)
	.loc 1 27 0
	xoris 17,17,0x8000
	.loc 1 26 0
	stw 15,108(1)
	.loc 1 25 0
	lis 10,.LC5@ha
	.loc 1 26 0
	stw 18,104(1)
.LBE10658:
.LBE10657:
	.loc 1 1041 0
	mulli 20,19,164
.LBB10667:
.LBB10659:
	.loc 1 27 0
	stw 17,116(1)
	.loc 1 28 0
	xoris 14,14,0x8000
	.loc 1 27 0
	stw 18,112(1)
	.loc 1 25 0
	addi 11,1,224
	lfs 29,.LC5@l(10)
.LBE10659:
.LBE10667:
	.loc 1 1041 0
	addi 9,20,96
.LBB10668:
.LBB10660:
	.loc 1 25 0
	lfd 11,96(1)
	.loc 1 26 0
	addi 8,1,228
	lfd 12,104(1)
	.loc 1 28 0
	addi 10,1,236
	stw 14,124(1)
	.loc 1 25 0
	fsub 11,11,29
	.loc 1 28 0
	stw 18,120(1)
	.loc 1 26 0
	fsub 12,12,29
	.loc 1 27 0
	lfd 13,112(1)
.LBE10660:
.LBE10668:
	.loc 1 1042 0
	li 3,4
.LBB10669:
.LBB10661:
	.loc 1 28 0
	lfd 0,120(1)
	.loc 1 25 0
	frsp 11,11
	.loc 1 27 0
	fsub 13,13,29
	.loc 1 25 0
	lfsx 10,9,21
	.loc 1 26 0
	frsp 12,12
.LBE10661:
.LBE10669:
	.loc 1 1041 0
	add 9,9,21
.LVL1612:
.LBB10670:
.LBB10662:
	.loc 1 26 0
	lfs 8,4(9)
	.loc 1 28 0
	fsub 0,0,29
	.loc 1 27 0
	frsp 13,13
	lfs 9,8(9)
	.loc 1 26 0
	fmuls 12,12,8
.LBE10662:
.LBE10670:
	.loc 1 1042 0
	mr 4,22
.LBB10671:
.LBB10663:
	.loc 1 25 0
	fmuls 11,11,10
	.loc 1 28 0
	lfs 10,12(9)
	frsp 0,0
	.loc 1 27 0
	addi 9,1,232
	fmuls 13,13,9
.LBE10663:
.LBE10671:
.LBB10672:
.LBB10673:
	.loc 1 25 0
	xoris 31,31,0x8000
.LBE10673:
.LBE10672:
.LBB10686:
.LBB10664:
	fctiwz 11,11
	.loc 1 26 0
	fctiwz 12,12
	.loc 1 28 0
	fmuls 0,0,10
	.loc 1 27 0
	fctiwz 13,13
	.loc 1 25 0
	stfiwx 11,0,11
	.loc 1 26 0
	stfiwx 12,0,8
	.loc 1 28 0
	fctiwz 0,0
	.loc 1 25 0
	lwz 16,224(1)
	.loc 1 27 0
	stfiwx 13,0,9
	.loc 1 25 0
	rlwinm 16,16,0,0xff
.LVL1613:
	.loc 1 26 0
	lwz 15,228(1)
.LBE10664:
.LBE10686:
.LBE10765:
.LBE10777:
	.loc 1 1042 0
	rlwimi 29,16,24,0,7
.LBB10778:
.LBB10766:
.LBB10687:
.LBB10665:
	.loc 1 28 0
	stfiwx 0,0,10
	.loc 1 26 0
	rlwinm 15,15,0,0xff
.LVL1614:
	.loc 1 27 0
	lwz 17,232(1)
.LBE10665:
.LBE10687:
.LBE10766:
.LBE10778:
	.loc 1 1042 0
	rlwimi 29,15,16,8,15
.LBB10779:
.LBB10767:
.LBB10688:
.LBB10666:
	.loc 1 28 0
	lwz 14,236(1)
	.loc 1 27 0
	rlwinm 17,17,0,0xff
.LVL1615:
	.loc 1 28 0
	rlwinm 14,14,0,0xff
.LVL1616:
.LBE10666:
.LBE10688:
.LBE10767:
.LBE10779:
	.loc 1 1042 0
	rlwimi 29,17,8,16,23
	rlwimi 29,14,0,24,31
.LBB10780:
.LBB10768:
	stw 29,88(1)
	bl GX_SetChanAmbColor
.LVL1617:
.LBB10689:
.LBB10690:
	.loc 1 41 0
	lwz 11,380(1)
	addi 8,1,240
	lfs 11,32(24)
	.loc 1 42 0
	addi 9,1,244
	.loc 1 41 0
	lfs 30,.LC0@l(11)
	.loc 1 43 0
	addi 10,1,248
	.loc 1 42 0
	lfs 12,36(24)
.LBE10690:
.LBE10689:
	.loc 1 1047 0
	li 3,4
.LBB10693:
.LBB10691:
	.loc 1 43 0
	lfs 13,40(24)
	.loc 1 41 0
	fmuls 11,11,30
	.loc 1 42 0
	fmuls 12,12,30
	.loc 1 44 0
	lfs 0,44(24)
	.loc 1 43 0
	fmuls 13,13,30
.LBE10691:
.LBE10693:
	.loc 1 1047 0
	mr 4,22
.LBB10694:
.LBB10692:
	.loc 1 41 0
	fctiwz 11,11
	.loc 1 42 0
	fctiwz 12,12
	.loc 1 44 0
	fmuls 0,0,30
	.loc 1 43 0
	fctiwz 13,13
	.loc 1 41 0
	stfiwx 11,0,8
	.loc 1 42 0
	stfiwx 12,0,9
	.loc 1 44 0
	addi 8,1,252
	fctiwz 0,0
	.loc 1 41 0
	lwz 0,240(1)
	.loc 1 43 0
	stfiwx 13,0,10
	.loc 1 41 0
	rlwimi 27,0,24,0,7
	.loc 1 42 0
	lwz 11,244(1)
	.loc 1 44 0
	stfiwx 0,0,8
	.loc 1 42 0
	rlwimi 27,11,16,8,15
	.loc 1 43 0
	lwz 9,248(1)
	.loc 1 44 0
	lwz 0,252(1)
	.loc 1 43 0
	rlwimi 27,9,8,16,23
	.loc 1 44 0
	rlwimi 27,0,0,24,31
.LBE10692:
.LBE10694:
	.loc 1 1047 0
	stw 27,88(1)
	bl GX_SetChanMatColor
.LBB10695:
.LBB10674:
	.loc 1 26 0
	lwz 9,368(1)
	.loc 1 25 0
	addi 8,1,256
	.loc 1 27 0
	lwz 10,372(1)
.LBE10674:
.LBE10695:
	.loc 1 1052 0
	li 3,5
.LBB10696:
.LBB10675:
	.loc 1 26 0
	xoris 0,9,0x8000
	.loc 1 25 0
	stw 31,132(1)
	stw 18,128(1)
.LBE10675:
.LBE10696:
	.loc 1 1052 0
	mr 4,22
.LBB10697:
.LBB10676:
	.loc 1 26 0
	stw 0,140(1)
	.loc 1 27 0
	xoris 0,10,0x8000
	.loc 1 26 0
	stw 18,136(1)
	.loc 1 27 0
	addi 10,1,264
	.loc 1 28 0
	lwz 11,376(1)
	.loc 1 27 0
	stw 0,148(1)
	stw 18,144(1)
	.loc 1 28 0
	xoris 0,11,0x8000
	.loc 1 25 0
	lfd 11,128(1)
	.loc 1 26 0
	lfd 12,136(1)
	.loc 1 28 0
	stw 0,156(1)
	.loc 1 25 0
	fsub 11,11,29
	.loc 1 28 0
	stw 18,152(1)
	.loc 1 26 0
	fsub 12,12,29
	.loc 1 27 0
	lfd 13,144(1)
.LBE10676:
.LBE10697:
	.loc 1 1051 0
	addi 0,20,128
.LBB10698:
.LBB10677:
	.loc 1 28 0
	lfd 0,152(1)
.LBE10677:
.LBE10698:
	.loc 1 1051 0
	add 9,0,21
.LVL1618:
.LBB10699:
.LBB10678:
	.loc 1 27 0
	fsub 13,13,29
	.loc 1 25 0
	lfsx 10,21,0
	frsp 11,11
	.loc 1 26 0
	lfs 8,4(9)
	frsp 12,12
	.loc 1 27 0
	lfs 9,8(9)
	.loc 1 28 0
	fsub 0,0,29
.LBE10678:
.LBE10699:
	.loc 1 1164 0
	addi 18,23,3
.LBB10700:
.LBB10679:
	.loc 1 27 0
	frsp 13,13
.LBE10679:
.LBE10700:
	.loc 1 1058 0
	mulli 18,18,164
.LBB10701:
.LBB10680:
	.loc 1 26 0
	fmuls 12,12,8
	.loc 1 25 0
	fmuls 11,11,10
	.loc 1 28 0
	lfs 10,12(9)
	frsp 0,0
	.loc 1 26 0
	addi 9,1,260
.LVL1619:
	.loc 1 27 0
	fmuls 13,13,9
.LBE10680:
.LBE10701:
	.loc 1 1058 0
	add 18,18,21
.LBB10702:
.LBB10681:
	.loc 1 25 0
	fctiwz 11,11
.LBE10681:
.LBE10702:
	.loc 1 1058 0
	addi 18,18,4
.LBB10703:
.LBB10682:
	.loc 1 26 0
	fctiwz 12,12
	.loc 1 28 0
	fmuls 0,0,10
	.loc 1 27 0
	fctiwz 13,13
	.loc 1 25 0
	stfiwx 11,0,8
	.loc 1 26 0
	stfiwx 12,0,9
	.loc 1 28 0
	addi 8,1,268
	fctiwz 0,0
	.loc 1 25 0
	lwz 31,256(1)
	.loc 1 27 0
	stfiwx 13,0,10
	.loc 1 25 0
	rlwinm 31,31,0,0xff
.LVL1620:
	.loc 1 26 0
	lwz 11,260(1)
.LBE10682:
.LBE10703:
.LBE10768:
.LBE10780:
	.loc 1 1052 0
	rlwimi 28,31,24,0,7
.LBB10781:
.LBB10769:
.LBB10704:
.LBB10683:
	.loc 1 28 0
	stfiwx 0,0,8
	.loc 1 26 0
	rlwinm 11,11,0,0xff
	.loc 1 27 0
	lwz 9,264(1)
.LBE10683:
.LBE10704:
.LBE10769:
.LBE10781:
	.loc 1 1052 0
	rlwimi 28,11,16,8,15
.LBB10782:
.LBB10770:
.LBB10705:
.LBB10684:
	.loc 1 28 0
	lwz 0,268(1)
	.loc 1 27 0
	rlwinm 9,9,0,0xff
	.loc 1 26 0
	stw 11,368(1)
.LVL1621:
	.loc 1 28 0
	rlwinm 0,0,0,0xff
.LBE10684:
.LBE10705:
.LBE10770:
.LBE10782:
	.loc 1 1052 0
	rlwimi 28,9,8,16,23
	rlwimi 28,0,0,24,31
.LBB10783:
.LBB10771:
.LBB10706:
.LBB10685:
	.loc 1 27 0
	stw 9,372(1)
	.loc 1 28 0
	stw 0,376(1)
.LBE10685:
.LBE10706:
	.loc 1 1052 0
	stw 28,88(1)
	bl GX_SetChanMatColor
.LVL1622:
	.loc 1 1056 0
	addi 0,20,112
.LBB10707:
.LBB10708:
	.loc 1 42 0
	addi 10,1,276
.LBE10708:
.LBE10707:
	.loc 1 1056 0
	add 9,0,21
.LVL1623:
.LBB10714:
.LBB10709:
	.loc 1 41 0
	lfsx 12,21,0
	.loc 1 42 0
	lfs 13,4(9)
	.loc 1 43 0
	addi 11,1,280
	lfs 0,8(9)
	.loc 1 41 0
	fmuls 12,12,30
	.loc 1 42 0
	fmuls 13,13,30
	.loc 1 44 0
	lfs 11,12(9)
	.loc 1 43 0
	fmuls 0,0,30
	.loc 1 41 0
	addi 9,1,272
.LVL1624:
	fctiwz 12,12
	.loc 1 44 0
	addi 8,1,284
	.loc 1 42 0
	fctiwz 13,13
.LBE10709:
.LBE10714:
	.loc 1 1057 0
	add 20,20,21
.LVL1625:
.LBB10715:
.LBB10710:
	.loc 1 44 0
	fmuls 30,11,30
.LBE10710:
.LBE10715:
	.loc 1 1057 0
	addi 20,20,4
.LBB10716:
.LBB10711:
	.loc 1 43 0
	fctiwz 0,0
	.loc 1 41 0
	stfiwx 12,0,9
	.loc 1 42 0
	stfiwx 13,0,10
.LBE10711:
.LBE10716:
	.loc 1 1057 0
	mr 3,20
.LBB10717:
.LBB10712:
	.loc 1 44 0
	fctiwz 30,30
.LBE10712:
.LBE10717:
	.loc 1 1057 0
	mr 4,22
.LBB10718:
.LBB10713:
	.loc 1 41 0
	lwz 0,272(1)
.LVL1626:
	.loc 1 43 0
	stfiwx 0,0,11
	.loc 1 41 0
	rlwimi 30,0,24,0,7
	.loc 1 42 0
	lwz 11,276(1)
	.loc 1 44 0
	stfiwx 30,0,8
	.loc 1 42 0
	rlwimi 30,11,16,8,15
	.loc 1 43 0
	lwz 9,280(1)
	.loc 1 44 0
	lwz 0,284(1)
	.loc 1 43 0
	rlwimi 30,9,8,16,23
	.loc 1 44 0
	rlwimi 30,0,0,24,31
.LBE10713:
.LBE10718:
	.loc 1 1057 0
	stw 30,88(1)
	bl GX_InitLightColor
	.loc 1 1058 0
	mr 4,22
	mr 3,18
	stw 30,88(1)
	bl GX_InitLightColor
	.loc 1 1068 0
	lfs 0,-72(25)
	.loc 1 1065 0
	lwz 11,-84(25)
	.loc 1 1068 0
	fcmpu 7,0,31
	.loc 1 1065 0
	lwz 9,-80(25)
	lwz 0,-76(25)
	stw 11,44(1)
	stw 9,48(1)
	stw 0,52(1)
	.loc 1 1068 0
	beq- 7,.L2602
	lis 9,.LC8@ha
	la 9,.LC8@l(9)
	stw 9,384(1)
.L694:
	.loc 1 1075 0
	lis 8,.LC17@ha
	mr 3,20
	lfs 28,.LC17@l(8)
	fmr 1,28
	fmr 2,28
	fmr 3,28
	bl GX_InitLightPos
	.loc 1 1076 0
	fmr 1,28
	fmr 2,28
	mr 3,18
	fmr 3,28
	bl GX_InitLightPos
	.loc 1 1080 0
	lfs 0,-72(25)
	fcmpu 7,0,31
	bne- 7,.L695
	.loc 1 1081 0
	lwz 9,-80(25)
	lwz 11,-84(25)
	lwz 0,-76(25)
	stw 9,36(1)
	lis 9,.LC9@ha
	la 9,.LC9@l(9)
	stw 11,32(1)
	stw 0,40(1)
	stw 9,388(1)
.L696:
	.loc 1 1096 0
	addi 3,1,32
	bl ps_guVecNormalize
	.loc 1 1098 0
	lfs 1,32(1)
	lfs 2,36(1)
	mr 3,20
	lfs 3,40(1)
	bl GX_InitLightDir
	.loc 1 1099 0
	lfs 1,32(1)
	lfs 2,36(1)
	mr 3,18
	lfs 3,40(1)
	bl GX_InitLightDir
	.loc 1 1102 0
	lwz 9,388(1)
	lfs 13,-4(25)
	lfs 0,0(9)
	fcmpu 7,13,0
	bne- 7,.L2637
.L698:
.LVL1627:
	.loc 1 1126 0
	lwz 10,384(1)
	lis 11,.LC1@ha
	lfs 12,0(25)
	.loc 1 1128 0
	li 4,3
	.loc 1 1126 0
	lfs 0,0(10)
	.loc 1 1128 0
	mr 3,20
	.loc 1 1126 0
	lfs 13,8(25)
	lfs 29,4(25)
	fmuls 13,13,0
	lfs 30,.LC1@l(11)
	fmadds 29,29,0,12
	.loc 1 1128 0
	fmr 2,30
	.loc 1 1126 0
	fmadds 29,13,0,29
	fdivs 29,30,29
.LVL1628:
	.loc 1 1128 0
	fmr 1,29
	bl GX_InitLightDistAttn
	.loc 1 1129 0
	fmr 1,29
	fmr 2,30
	mr 3,18
	li 4,3
	bl GX_InitLightDistAttn
	.loc 1 1133 0
	lfs 1,-4(25)
	mr 3,20
	li 4,5
	bl GX_InitLightSpot
	.loc 1 1135 0
	lfs 0,64(24)
	fcmpu 7,0,31
	bne- 7,.L2638
	.loc 1 1142 0
	cmpwi 7,19,2
	beq- 7,.L702
.L2646:
	cmpwi 7,19,3
	beq- 7,.L703
	cmpwi 7,19,1
	.loc 1 1148 0
	mr 3,20
	.loc 1 1142 0
	beq- 7,.L701
	.loc 1 1144 0
	li 4,1
	bl GX_LoadLightObj
	.loc 1 1145 0
	mr 3,18
	li 4,16
	bl GX_LoadLightObj
.LVL1629:
.LBE10771:
	.loc 1 1034 0
	cmpwi 7,23,4
	bne+ 7,.L705
.LVL1630:
.L2636:
	lwz 31,392(1)
.LVL1631:
.L683:
.LBE10783:
.LBE10789:
	.loc 1 1174 0
	lis 25,_type@ha
	.loc 1 1172 0
	li 30,0
.LVL1632:
	.loc 1 1174 0
	lwz 0,_type@l(25)
	.loc 1 1171 0
	li 27,0
.LVL1633:
	.loc 1 1174 0
	cmpwi 7,0,0
	bne- 7,.L706
	.loc 1 1176 0
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,2
	beq- 7,.L708
	cmpwi 7,0,8
	beq- 7,.L2639
	.loc 1 1180 0
	li 0,168
	.loc 1 1172 0
	mr 30,27
	.loc 1 1180 0
	stw 0,_type@l(25)
.LVL1634:
.L706:
	.loc 1 1187 0
	lis 9,gxcullfaceanabled@ha
	lbz 0,gxcullfaceanabled@l(9)
	cmpwi 7,0,0
	beq- 7,.L710
.LVL1635:
	lis 9,gxwinding@ha
	.loc 1 1190 0
	li 29,0
.LVL1636:
	.loc 1 1187 0
	lwz 9,gxwinding@l(9)
	.loc 1 1190 0
	li 28,0
.LVL1637:
	.loc 1 1187 0
	addi 0,9,-2304
	cmplwi 7,0,1
	ble- 7,.L2640
.L711:
.LVL1638:
	.loc 1 1195 0
	lis 9,cull_mode@ha
	lbz 3,cull_mode@l(9)
	bl GX_SetCullMode
.LVL1639:
.L712:
	.loc 1 1207 0
	cmpwi 4,27,0
	bne- 4,.L713
	.loc 1 1209 0
	cmpwi 7,28,0
	beq- 7,.L714
.LVL1640:
	.loc 1 1214 0
	cmpwi 7,30,0
	mr 27,31
.LVL1641:
	beq- 7,.L714
	.loc 1 1216 0
	addi 27,31,1
.LVL1642:
.L714:
	.loc 1 1220 0
	cmpwi 7,29,0
	bne- 7,.L2641
.LVL1643:
.L715:
	.loc 1 1253 0
	bl GX_DrawDone
	.loc 1 1257 0
	lwz 3,_type@l(25)
	li 4,0
	rlwinm 5,27,0,0xffff
	rlwinm 3,3,0,0xff
	bl GX_Begin
.LVL1644:
	.loc 1 1326 0
	li 10,8
	.loc 1 1257 0
	lis 9,tex@ha
	.loc 1 1326 0
	lis 6,.LANCHOR0@ha
	mtctr 10
	.loc 1 1257 0
	la 9,tex@l(9)
	.loc 1 1319 0
	li 7,1
	.loc 1 1318 0
	li 8,0
	.loc 1 1321 0
	li 11,0
	.loc 1 1326 0
	la 6,.LANCHOR0@l(6)
.LVL1645:
.L718:
	.loc 1 1323 0
	lbz 0,0(9)
	.loc 1 1326 0
	addi 10,6,8
	.loc 1 1321 0
	addi 9,9,20
	.loc 1 1323 0
	cmpwi 7,0,0
	beq- 7,.L717
	.loc 1 1326 0
	lbzx 0,10,11
	.loc 1 1325 0
	addi 8,8,1
.LVL1646:
	.loc 1 1328 0
	xori 0,0,3
	addic 0,0,-1
	subfe 0,0,0
	and 7,7,0
.LVL1647:
.L717:
	.loc 1 1321 0
	addi 11,11,1
.LVL1648:
	bdnz .L718
	.loc 1 1333 0
	lis 9,.LANCHOR1@ha
	la 9,.LANCHOR1@l(9)
	lbz 0,1(9)
	cmpwi 7,0,3
	beq- 7,.L2642
.LVL1649:
.L719:
	.loc 1 1361 0
	bne- 4,.L2251
	.loc 1 1363 0
	cmpwi 7,29,0
	beq- 7,.L2252
.LVL1650:
	.loc 1 1365 0
	addic. 27,31,-1
.LVL1651:
	blt- 0,.L2253
	.loc 1 1365 0 is_stmt 0 discriminator 2
	mr 29,27
.LVL1652:
.L2254:
	.loc 1 1367 0 is_stmt 1 discriminator 2
	mr 3,29
	bl UploadVertex
.LVL1653:
	.loc 1 1365 0 discriminator 2
	cmpwi 7,29,0
	addi 29,29,-1
.LVL1654:
	bne+ 7,.L2254
.LVL1655:
.L2253:
	.loc 1 1370 0
	cmpwi 7,30,0
	bne- 7,.L2643
.L2252:
	.loc 1 1376 0
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1656:
	.loc 1 1379 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L2256
	.loc 1 1379 0 is_stmt 0
	li 29,0
.LVL1657:
.L2257:
	.loc 1 1381 0 is_stmt 1 discriminator 2
	mr 3,29
	.loc 1 1379 0 discriminator 2
	addi 29,29,1
	.loc 1 1381 0 discriminator 2
	bl UploadVertex
.LVL1658:
	.loc 1 1379 0 discriminator 2
	cmpw 7,29,31
	bne+ 7,.L2257
.LVL1659:
.L2256:
	.loc 1 1384 0
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1386 0
	li 3,0
	bl UploadVertex
.LVL1660:
.L2255:
	.loc 1 1426 0
	bl ResetArrays
	.loc 1 1430 0
	bl GX_DrawDone
	.loc 1 1431 0
	lwz 0,516(1)
	lwz 12,404(1)
	mtlr 0
	lwz 14,408(1)
	lwz 15,412(1)
	mtcrf 8,12
	lwz 16,416(1)
	lwz 17,420(1)
	lwz 18,424(1)
	lwz 19,428(1)
	lwz 20,432(1)
	lwz 21,436(1)
	lwz 22,440(1)
	lwz 23,444(1)
	lwz 24,448(1)
	lwz 25,452(1)
	lwz 26,456(1)
	lwz 27,460(1)
	lwz 28,464(1)
	lwz 29,468(1)
	lwz 30,472(1)
	lwz 31,476(1)
	lfd 28,480(1)
	lfd 29,488(1)
	lfd 30,496(1)
	lfd 31,504(1)
	addi 1,1,512
	.cfi_remember_state
.LCFI145:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
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
.LVL1661:
.L713:
.LCFI146:
	.cfi_restore_state
	.loc 1 1233 0
	lwz 0,_GLtype@l(26)
	.loc 1 1202 0
	li 27,0
.LVL1662:
	.loc 1 1233 0
	cmpwi 7,0,8
	bne+ 7,.L715
	.loc 1 1241 0
	cmpwi 7,29,0
	beq- 7,.L716
	.loc 1 1243 0
	srawi 27,31,1
	addze 27,27
	addi 27,27,-1
	slwi 27,27,2
.LVL1663:
.L716:
	.loc 1 1245 0
	cmpwi 7,28,0
	beq- 7,.L715
	.loc 1 1247 0
	srawi 9,31,1
	addze 9,9
	addi 0,9,-1
	slwi 0,0,2
	add 27,27,0
.LVL1664:
	b .L715
.LVL1665:
.L681:
.LBB10790:
.LBB10784:
	.loc 1 975 0
	li 3,0
	bl GX_SetAlphaUpdate
	b .L682
.L2601:
	.loc 1 954 0
	fctiwz 0,0
	addi 11,1,352
	li 4,5
	stfiwx 0,0,11
	lwz 3,352(1)
	rlwinm 3,3,0,0xff
	bl GX_SetLineWidth
	b .L677
.L2600:
	.loc 1 945 0
	fctiwz 0,0
	addi 9,1,360
	li 4,5
	stfiwx 0,0,9
	lwz 3,360(1)
	rlwinm 3,3,0,0xff
	bl GX_SetPointSize
	b .L674
.L2634:
	.loc 1 987 0
	lis 11,scissorInfo@ha
	la 9,scissorInfo@l(11)
	lwz 3,scissorInfo@l(11)
	lwz 4,4(9)
	lwz 5,8(9)
	lwz 6,12(9)
	bl GX_SetModScissor
	b .L685
.LVL1666:
.L2251:
.LBE10784:
.LBE10790:
	.loc 1 1392 0
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1399 0
	cmpwi 7,28,0
	beq- 7,.L2258
.LVL1667:
	.loc 1 1401 0 discriminator 1
	srawi 28,31,1
	addze 28,28
.LVL1668:
	cmpwi 7,28,1
	ble- 7,.L2258
	.loc 1 1164 0
	slwi 28,28,1
	li 30,2
.LVL1669:
.L2259:
	.loc 1 1403 0 discriminator 2
	addi 3,30,-2
	bl UploadVertex
	.loc 1 1404 0 discriminator 2
	addi 3,30,-1
	bl UploadVertex
	.loc 1 1405 0 discriminator 2
	addi 3,30,1
	bl UploadVertex
	.loc 1 1406 0 discriminator 2
	mr 3,30
	addi 30,30,2
	bl UploadVertex
	.loc 1 1401 0 discriminator 2
	cmpw 7,30,28
	bne+ 7,.L2259
.L2258:
	.loc 1 1410 0
	cmpwi 7,29,0
	beq- 7,.L2255
.LVL1670:
	.loc 1 1412 0 discriminator 1
	srawi 31,31,1
	addze 31,31
	cmpwi 7,31,1
	ble- 7,.L2255
	.loc 1 1164 0
	slwi 30,31,1
	li 31,2
.LVL1671:
.L2260:
	.loc 1 1414 0 discriminator 2
	addi 3,31,-2
	bl UploadVertex
	.loc 1 1415 0 discriminator 2
	mr 3,31
	bl UploadVertex
	.loc 1 1416 0 discriminator 2
	addi 3,31,1
	bl UploadVertex
	.loc 1 1417 0 discriminator 2
	addi 3,31,-1
	addi 31,31,2
	bl UploadVertex
	.loc 1 1412 0 discriminator 2
	cmpw 7,31,30
	bne+ 7,.L2260
	b .L2255
.LVL1672:
.L2633:
.LBB10791:
.LBB10785:
	.loc 1 960 0
	lbz 0,2(26)
	cmpwi 7,0,0
	bne+ 7,.L679
	.loc 1 962 0
	li 3,0
	bl GX_SetColorUpdate
	b .L680
.LVL1673:
.L2642:
.LBE10785:
.LBE10791:
	.loc 1 1333 0 discriminator 1
	cmpwi 7,7,0
	beq- 7,.L719
	lbz 0,2(9)
	cmpwi 7,0,3
	beq- 7,.L720
	.loc 1 1334 0
	lis 11,norm@ha
.LVL1674:
	lbz 0,norm@l(11)
	cmpwi 7,0,0
	bne- 7,.L719
.L720:
	.loc 1 1334 0 is_stmt 0 discriminator 1
	lbz 0,3(9)
	cmpwi 7,0,3
	beq- 7,.L721
	.loc 1 1335 0 is_stmt 1
	lis 9,color@ha
	lbz 0,color@l(9)
	cmpwi 7,0,0
	bne- 7,.L719
.L721:
	.loc 1 1337 0
	lis 10,.LANCHOR0@ha
	la 9,.LANCHOR0@l(10)
	lwz 0,64(9)
	cmpwi 7,0,1
	beq- 7,.L2644
	.loc 1 1341 0
	cmpwi 7,0,2
	bne+ 7,.L719
	.loc 1 1343 0
	lwz 0,68(9)
	cmpwi 7,0,5123
	beq- 7,.L1100
	cmpwi 7,0,5125
	beq- 7,.L1101
	cmpwi 7,0,5121
	bne+ 7,.L719
	.loc 1 1346 0
	lis 11,norm@ha
	lbz 0,norm@l(11)
	lis 11,color@ha
	cmpwi 7,0,0
	lbz 0,color@l(11)
	beq- 7,.L2645
	.loc 1 1346 0 is_stmt 0 discriminator 1
	cmpwi 7,0,0
	bne- 7,.L1199
	cmpwi 7,8,0
	beq- 7,$+8
	b .L1200
.LVL1675:
	beq- 4,$+8
	b .L1201
	cmpwi 7,29,0
	beq- 7,.L1202
.LVL1676:
	addic. 27,31,-1
.LVL1677:
	blt- 0,.L1203
	.loc 1 1346 0 discriminator 2
	mr 29,27
.LVL1678:
.L1204:
	mr 3,29
	bl UploadVertexPNT0_ElemGLubyte
.LVL1679:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL1680:
	bne+ 7,.L1204
.LVL1681:
.L1203:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1202
	.loc 1 1346 0 discriminator 1
	mr 3,27
	bl UploadVertexPNT0_ElemGLubyte
.L1202:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1682:
	.loc 1 1346 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L1205
	.loc 1 1346 0
	li 29,0
.LVL1683:
.L1206:
	.loc 1 1346 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPNT0_ElemGLubyte
.LVL1684:
	cmpw 7,29,31
	bne+ 7,.L1206
.LVL1685:
.L1205:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
	bl UploadVertexPNT0_ElemGLubyte
	b .L2255
.LVL1686:
.L2641:
	.loc 1 1225 0 is_stmt 1
	cmpwi 7,30,0
	.loc 1 1223 0
	add 27,27,31
.LVL1687:
	.loc 1 1225 0
	beq- 7,.L715
	.loc 1 1227 0
	addi 27,27,1
.LVL1688:
	b .L715
.LVL1689:
.L695:
.LBB10792:
.LBB10786:
.LBB10772:
	.loc 1 1085 0
	lis 10,.LC9@ha
	lfs 13,-4(25)
	lfs 0,.LC9@l(10)
	la 11,.LC9@l(10)
	stw 11,388(1)
	fcmpu 7,13,0
	beq- 7,.L697
	.loc 1 1087 0
	lwz 11,-68(25)
	lwz 9,-64(25)
	lwz 0,-60(25)
	stw 11,32(1)
	stw 9,36(1)
	stw 0,40(1)
	b .L696
.LVL1690:
.L710:
.LBE10772:
.LBE10786:
.LBE10792:
	.loc 1 1199 0
	li 3,0
	.loc 1 1185 0
	li 29,0
.LVL1691:
	.loc 1 1199 0
	bl GX_SetCullMode
	.loc 1 1184 0
	li 28,1
.LVL1692:
	b .L712
.LVL1693:
.L2602:
.LBB10793:
.LBB10787:
.LBB10773:
	.loc 1 1069 0
	addi 3,1,44
	bl ps_guVecNormalize
	.loc 1 1070 0
	lis 10,.LC8@ha
	lfs 0,.LC8@l(10)
	la 11,.LC8@l(10)
	lfs 12,44(1)
	.loc 1 1071 0
	lfs 13,48(1)
	.loc 1 1072 0
	lfs 11,52(1)
	.loc 1 1070 0
	fmuls 12,12,0
	.loc 1 1071 0
	fmuls 13,13,0
	.loc 1 1070 0
	stw 11,384(1)
	.loc 1 1072 0
	fmuls 0,11,0
	.loc 1 1070 0
	stfs 12,44(1)
	.loc 1 1071 0
	stfs 13,48(1)
	.loc 1 1072 0
	stfs 0,52(1)
	b .L694
.LVL1694:
.L2638:
.LBB10719:
.LBB10720:
	.loc 1 663 0
	lis 8,.LC11@ha
	lis 9,.LC12@ha
	lfs 4,.LC11@l(8)
	.loc 1 664 0
	lis 10,.LC14@ha
	.loc 1 663 0
	lfs 13,.LC12@l(9)
	.loc 1 664 0
	lis 11,.LC17@ha
	.loc 1 663 0
	fmuls 4,0,4
	.loc 1 664 0
	lfs 12,.LC14@l(10)
	fmr 0,30
.LVL1695:
	lfs 2,.LC17@l(11)
	lis 8,.LC13@ha
	fmr 1,30
	.loc 1 663 0
	fmuls 4,4,13
.LVL1696:
	.loc 1 664 0
	lfs 3,.LC13@l(8)
	fmr 13,12
	mr 3,18
	fmr 5,2
	fmr 6,4
	fmuls 4,4,12
.LVL1697:
	.loc 1 1164 0
	fneg 6,6
	.loc 1 664 0
	fmadd 6,6,13,0
	frsp 6,6
	bl GX_InitLightAttn
.LBE10720:
.LBE10719:
	.loc 1 1142 0
	cmpwi 7,19,2
	bne+ 7,.L2646
.LVL1698:
.L702:
	.loc 1 1152 0
	mr 3,20
	li 4,4
	bl GX_LoadLightObj
	.loc 1 1153 0
	mr 3,18
	li 4,64
	bl GX_LoadLightObj
.LVL1699:
	b .L705
.LVL1700:
.L2637:
.LBB10721:
	.loc 1 1106 0
	lwz 0,-68(25)
	.loc 1 1114 0
	addi 4,1,44
	.loc 1 1106 0
	lwz 9,-64(25)
	.loc 1 1114 0
	addi 5,1,8
	.loc 1 1106 0
	lwz 11,-60(25)
	.loc 1 1114 0
	addi 3,1,20
	.loc 1 1106 0
	stw 0,20(1)
	stw 9,24(1)
	stw 11,28(1)
	.loc 1 1114 0
	bl ps_guVecSub
	.loc 1 1116 0
	lfs 1,8(1)
	mr 3,20
	lfs 2,12(1)
	lfs 3,16(1)
	bl GX_TestInitSpecularDir
	.loc 1 1117 0
	lfs 1,8(1)
	lfs 2,12(1)
	mr 3,18
	lfs 3,16(1)
	bl GX_TestInitSpecularDir
	b .L698
.LVL1701:
.L687:
.LBE10721:
.LBE10773:
.LBB10774:
.LBB10608:
	.loc 1 802 0
	li 3,4
	li 4,0
	li 5,0
	li 6,1
	li 7,0
	li 8,0
	li 9,2
	bl GX_SetChanCtrl
	.loc 1 804 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 803 0
	li 3,0
	b .L690
.LVL1702:
.L697:
.LBE10608:
.LBE10774:
.LBB10775:
	.loc 1 1092 0
	lis 8,.LC10@ha
	.loc 1 1090 0
	stfs 31,32(1)
	.loc 1 1092 0
	lwz 0,.LC10@l(8)
	.loc 1 1091 0
	stfs 31,36(1)
	.loc 1 1092 0
	stw 0,40(1)
	b .L696
.LVL1703:
.L708:
.LBE10775:
.LBE10787:
.LBE10793:
	.loc 1 1178 0
	li 0,176
	li 30,1
	stw 0,_type@l(25)
.LVL1704:
	b .L706
.LVL1705:
.L2640:
	.loc 1 1187 0
	lis 9,.LANCHOR3@ha
	la 9,.LANCHOR3@l(9)
	lbzux 28,9,0
	lbz 29,4(9)
	b .L711
.LVL1706:
.L701:
.LBB10794:
.LBB10788:
.LBB10776:
	.loc 1 1148 0
	li 4,2
	bl GX_LoadLightObj
	.loc 1 1149 0
	mr 3,18
	li 4,32
	bl GX_LoadLightObj
	b .L705
.L703:
	.loc 1 1156 0
	mr 3,20
	li 4,8
	lwz 31,392(1)
.LVL1707:
	bl GX_LoadLightObj
	.loc 1 1157 0
	mr 3,18
	li 4,128
	bl GX_LoadLightObj
.LVL1708:
	b .L683
.LVL1709:
.L2639:
.LBE10776:
.LBE10788:
.LBE10794:
	.loc 1 1179 0
	li 0,128
	.loc 1 1172 0
	mr 30,27
	.loc 1 1179 0
	stw 0,_type@l(25)
.LVL1710:
	li 27,1
	b .L706
.LVL1711:
.L2643:
	.loc 1 1372 0
	mr 3,27
	bl UploadVertex
	b .L2252
.LVL1712:
.L2644:
	.loc 1 1339 0
	lis 9,norm@ha
	lbz 0,norm@l(9)
	lis 9,color@ha
	cmpwi 7,0,0
	lbz 0,color@l(9)
	beq- 7,.L2647
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,0,0
	bne- 7,.L819
	cmpwi 7,8,0
	bne- 7,.L820
.LVL1713:
	bne- 4,.L821
	cmpwi 7,29,0
	beq- 7,.L822
.LVL1714:
	addic. 3,31,-1
	blt- 0,.L823
	lis 9,.LC0@ha
	lis 11,wgPipe@ha
	stw 9,380(1)
.LBB10795:
.LBB10796:
	.loc 1 570 0 is_stmt 1
	mtctr 31
	lis 9,_tempcolorelement@ha
.LBB10797:
.LBB10798:
	.loc 2 2219 0
	lwz 11,wgPipe@l(11)
.LBE10798:
.LBE10797:
	.loc 1 570 0
	lwz 10,380(1)
	la 9,_tempcolorelement@l(9)
	lfs 0,.LC0@l(10)
.LBE10796:
.LBE10795:
	.loc 1 1339 0
	mr 10,3
.LVL1715:
.L824:
.LBB10806:
.LBB10805:
	.loc 1 570 0
	rlwinm 0,10,0,0xffff
.LVL1716:
.LBB10800:
.LBB10799:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL1717:
.LBE10799:
.LBE10800:
.LBB10801:
.LBB10802:
	.loc 2 2261 0
	sth 0,0(11)
	.loc 2 2262 0
.LVL1718:
.LBE10802:
.LBE10801:
	.loc 1 570 0
	lfs 10,0(9)
	addi 8,1,176
	lfs 11,4(9)
	lfs 12,8(9)
	fmuls 10,10,0
	lfs 13,12(9)
	fmuls 11,11,0
	fmuls 12,12,0
	fmuls 13,13,0
	fctiwz 10,10
	fctiwz 11,11
	fctiwz 12,12
	stfiwx 10,0,8
	fctiwz 13,13
	addi 8,1,180
	stfiwx 11,0,8
	addi 8,1,184
	stfiwx 12,0,8
	addi 8,1,188
	stfiwx 13,0,8
	lwz 6,176(1)
	lwz 7,180(1)
	lwz 8,184(1)
	lwz 0,188(1)
.LVL1719:
.LBB10803:
.LBB10804:
	.loc 2 2267 0
	stb 6,0(11)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 7,0(11)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 8,0(11)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(11)
	.loc 2 2274 0
.LBE10804:
.LBE10803:
.LBE10805:
.LBE10806:
	.loc 1 1339 0
	addi 10,10,-1
.LVL1720:
	bdnz .L824
.LVL1721:
.L823:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L822
	.loc 1 1339 0 discriminator 1
	bl UploadVertexPNT0_Array
.L822:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1722:
	.loc 1 1339 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L825
	lis 9,.LC0@ha
	lis 11,wgPipe@ha
	stw 9,380(1)
.LBB10807:
.LBB10808:
	.loc 1 570 0 is_stmt 1
	mtctr 31
	lis 9,_tempcolorelement@ha
.LBB10809:
.LBB10810:
	.loc 2 2219 0
	lwz 11,wgPipe@l(11)
.LBE10810:
.LBE10809:
	.loc 1 570 0
	lwz 10,380(1)
	la 9,_tempcolorelement@l(9)
	lfs 0,.LC0@l(10)
.LBE10808:
.LBE10807:
	.loc 1 1339 0
	li 10,0
.LVL1723:
.L826:
.LBB10818:
.LBB10817:
	.loc 1 570 0
	rlwinm 0,10,0,0xffff
.LVL1724:
.LBB10812:
.LBB10811:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL1725:
.LBE10811:
.LBE10812:
.LBB10813:
.LBB10814:
	.loc 2 2261 0
	sth 0,0(11)
	.loc 2 2262 0
.LVL1726:
.LBE10814:
.LBE10813:
	.loc 1 570 0
	lfs 10,0(9)
	addi 8,1,160
	lfs 11,4(9)
	lfs 12,8(9)
	fmuls 10,10,0
	lfs 13,12(9)
	fmuls 11,11,0
	fmuls 12,12,0
	fmuls 13,13,0
	fctiwz 10,10
	fctiwz 11,11
	fctiwz 12,12
	stfiwx 10,0,8
	fctiwz 13,13
	addi 8,1,164
	stfiwx 11,0,8
	addi 8,1,168
	stfiwx 12,0,8
	addi 8,1,172
	stfiwx 13,0,8
	lwz 6,160(1)
	lwz 7,164(1)
	lwz 8,168(1)
	lwz 0,172(1)
.LVL1727:
.LBB10815:
.LBB10816:
	.loc 2 2267 0
	stb 6,0(11)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 7,0(11)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 8,0(11)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(11)
	.loc 2 2274 0
.LBE10816:
.LBE10815:
.LBE10817:
.LBE10818:
	.loc 1 1339 0
	addi 10,10,1
.LVL1728:
	bdnz .L826
.LVL1729:
.L825:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
	bl UploadVertexPNT0_Array
	b .L2255
.LVL1730:
.L2647:
	cmpwi 7,0,0
	bne- 7,.L724
	cmpwi 7,8,0
	bne- 7,.L725
.LVL1731:
	bne- 4,.L726
	cmpwi 7,29,0
	beq- 7,.L727
.LVL1732:
	addic. 3,31,-1
	blt- 0,.L728
	lis 11,.LC0@ha
	lis 9,_tempcolorelement@ha
	stw 11,380(1)
	lis 11,wgPipe@ha
.LBB10819:
.LBB10820:
.LBB10821:
.LBB10822:
	.loc 2 2219 0 is_stmt 1
	lwz 11,wgPipe@l(11)
.LBE10822:
.LBE10821:
	.loc 1 570 0
	mtctr 31
	lwz 8,380(1)
.LVL1733:
.LBE10820:
.LBE10819:
	.loc 1 1339 0
	mr 10,3
	la 9,_tempcolorelement@l(9)
.LBB10828:
.LBB10827:
	.loc 1 570 0
	lfs 0,.LC0@l(8)
.LVL1734:
.L729:
	rlwinm 0,10,0,0xffff
.LVL1735:
.LBB10824:
.LBB10823:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL1736:
.LBE10823:
.LBE10824:
	.loc 1 570 0
	lfs 10,0(9)
	addi 8,1,208
	lfs 11,4(9)
	lfs 12,8(9)
	fmuls 10,10,0
	lfs 13,12(9)
	fmuls 11,11,0
	fmuls 12,12,0
	fmuls 13,13,0
	fctiwz 10,10
	fctiwz 11,11
	fctiwz 12,12
	stfiwx 10,0,8
	fctiwz 13,13
	addi 8,1,212
	stfiwx 11,0,8
	addi 8,1,216
	stfiwx 12,0,8
	addi 8,1,220
	stfiwx 13,0,8
	lwz 6,208(1)
	lwz 7,212(1)
	lwz 8,216(1)
	lwz 0,220(1)
.LVL1737:
.LBB10825:
.LBB10826:
	.loc 2 2267 0
	stb 6,0(11)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 7,0(11)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 8,0(11)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(11)
	.loc 2 2274 0
.LBE10826:
.LBE10825:
.LBE10827:
.LBE10828:
	.loc 1 1339 0
	addi 10,10,-1
.LVL1738:
	bdnz .L729
.LVL1739:
.L728:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,$+8
	b .L2648
.L727:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1740:
	.loc 1 1339 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L731
	lis 9,.LC0@ha
	lis 11,wgPipe@ha
	stw 9,380(1)
.LBB10829:
.LBB10830:
	.loc 1 570 0 is_stmt 1
	mtctr 31
	lis 9,_tempcolorelement@ha
.LBB10831:
.LBB10832:
	.loc 2 2219 0
	lwz 11,wgPipe@l(11)
.LBE10832:
.LBE10831:
	.loc 1 570 0
	lwz 10,380(1)
	la 9,_tempcolorelement@l(9)
	lfs 0,.LC0@l(10)
.LBE10830:
.LBE10829:
	.loc 1 1339 0
	li 10,0
.LVL1741:
.L732:
.LBB10838:
.LBB10837:
	.loc 1 570 0
	rlwinm 0,10,0,0xffff
.LVL1742:
.LBB10834:
.LBB10833:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL1743:
.LBE10833:
.LBE10834:
	.loc 1 570 0
	lfs 10,0(9)
	addi 8,1,192
	lfs 11,4(9)
	lfs 12,8(9)
	fmuls 10,10,0
	lfs 13,12(9)
	fmuls 11,11,0
	fmuls 12,12,0
	fmuls 13,13,0
	fctiwz 10,10
	fctiwz 11,11
	fctiwz 12,12
	stfiwx 10,0,8
	fctiwz 13,13
	addi 8,1,196
	stfiwx 11,0,8
	addi 8,1,200
	stfiwx 12,0,8
	addi 8,1,204
	stfiwx 13,0,8
	lwz 6,192(1)
	lwz 7,196(1)
	lwz 8,200(1)
	lwz 0,204(1)
.LVL1744:
.LBB10835:
.LBB10836:
	.loc 2 2267 0
	stb 6,0(11)
	.loc 2 2268 0
	.loc 2 2269 0
	stb 7,0(11)
	.loc 2 2270 0
	.loc 2 2271 0
	stb 8,0(11)
	.loc 2 2272 0
	.loc 2 2273 0
	stb 0,0(11)
	.loc 2 2274 0
.LBE10836:
.LBE10835:
.LBE10837:
.LBE10838:
	.loc 1 1339 0
	addi 10,10,1
.LVL1745:
	bdnz .L732
.LVL1746:
.L731:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
	bl UploadVertexPT0_Array
	b .L2255
.LVL1747:
.L724:
	cmpwi 7,8,0
	bne- 7,.L913
.LVL1748:
	bne- 4,.L914
	cmpwi 7,29,0
	beq- 7,.L915
.LVL1749:
	addic. 0,31,-1
	blt- 0,.L916
	lis 11,wgPipe@ha
.LBB10839:
.LBB10840:
.LBB10841:
.LBB10842:
	.loc 2 2219 0 is_stmt 1
	mtctr 31
	lwz 11,wgPipe@l(11)
.LBE10842:
.LBE10841:
.LBE10840:
.LBE10839:
	.loc 1 1339 0
	mr 9,0
.LVL1750:
.L917:
.LBB10848:
.LBB10847:
	.loc 1 570 0
	rlwinm 10,9,0,0xffff
.LVL1751:
.LBB10844:
.LBB10843:
	.loc 2 2219 0
	sth 10,0(11)
	.loc 2 2220 0
.LVL1752:
.LBE10843:
.LBE10844:
.LBB10845:
.LBB10846:
	.loc 2 2317 0
	sth 10,0(11)
	.loc 2 2318 0
.LBE10846:
.LBE10845:
.LBE10847:
.LBE10848:
	.loc 1 1339 0
	addi 9,9,-1
.LVL1753:
	bdnz .L917
.LVL1754:
.L916:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L915
.LVL1755:
.LBB10849:
.LBB10850:
.LBB10851:
.LBB10852:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 11,wgPipe@ha
.LBE10852:
.LBE10851:
	.loc 1 570 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL1756:
.LBB10854:
.LBB10853:
	.loc 2 2219 0 discriminator 1
	lwz 9,wgPipe@l(11)
	sth 0,0(9)
	.loc 2 2220 0 discriminator 1
.LVL1757:
.LBE10853:
.LBE10854:
.LBB10855:
.LBB10856:
	.loc 2 2317 0 discriminator 1
	sth 0,0(9)
	.loc 2 2318 0 discriminator 1
.LVL1758:
.L915:
.LBE10856:
.LBE10855:
.LBE10850:
.LBE10849:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1759:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L918
	lis 11,wgPipe@ha
.LBB10857:
.LBB10858:
.LBB10859:
.LBB10860:
	.loc 2 2219 0 is_stmt 1
	mtctr 31
	lwz 11,wgPipe@l(11)
.LBE10860:
.LBE10859:
.LBE10858:
.LBE10857:
	.loc 1 1339 0
	li 9,0
.LVL1760:
.L919:
.LBB10866:
.LBB10865:
	.loc 1 570 0
	rlwinm 0,9,0,0xffff
.LVL1761:
.LBB10862:
.LBB10861:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL1762:
.LBE10861:
.LBE10862:
.LBB10863:
.LBB10864:
	.loc 2 2317 0
	sth 0,0(11)
	.loc 2 2318 0
.LBE10864:
.LBE10863:
.LBE10865:
.LBE10866:
	.loc 1 1339 0
	addi 9,9,1
.LVL1763:
	bdnz .L919
.LVL1764:
.L918:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL1765:
.LBB10867:
.LBB10868:
.LBB10869:
.LBB10870:
	.loc 2 2219 0 is_stmt 1
	lis 9,wgPipe@ha
	li 0,0
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL1766:
.LBE10870:
.LBE10869:
.LBB10871:
.LBB10872:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
	b .L2255
.LVL1767:
.L819:
.LBE10872:
.LBE10871:
.LBE10868:
.LBE10867:
	.loc 1 1339 0 discriminator 1
	cmpwi 7,8,0
	bne- 7,.L1006
.LVL1768:
	beq- 4,$+8
	b .L1007
	cmpwi 7,29,0
	beq- 7,.L1008
.LVL1769:
	addic. 0,31,-1
	blt- 0,.L1009
	lis 11,wgPipe@ha
.LBB10873:
.LBB10874:
.LBB10875:
.LBB10876:
	.loc 2 2219 0
	mtctr 31
	lwz 11,wgPipe@l(11)
.LBE10876:
.LBE10875:
.LBE10874:
.LBE10873:
	.loc 1 1339 0
	mr 9,0
.LVL1770:
.L1010:
.LBB10884:
.LBB10883:
	.loc 1 570 0
	rlwinm 10,9,0,0xffff
.LVL1771:
.LBB10878:
.LBB10877:
	.loc 2 2219 0
	sth 10,0(11)
	.loc 2 2220 0
.LVL1772:
.LBE10877:
.LBE10878:
.LBB10879:
.LBB10880:
	.loc 2 2261 0
	sth 10,0(11)
	.loc 2 2262 0
.LVL1773:
.LBE10880:
.LBE10879:
.LBB10881:
.LBB10882:
	.loc 2 2317 0
	sth 10,0(11)
	.loc 2 2318 0
.LBE10882:
.LBE10881:
.LBE10883:
.LBE10884:
	.loc 1 1339 0
	addi 9,9,-1
.LVL1774:
	bdnz .L1010
.LVL1775:
.L1009:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1008
.LVL1776:
.LBB10885:
.LBB10886:
.LBB10887:
.LBB10888:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 11,wgPipe@ha
.LBE10888:
.LBE10887:
	.loc 1 570 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL1777:
.LBB10890:
.LBB10889:
	.loc 2 2219 0 discriminator 1
	lwz 9,wgPipe@l(11)
	sth 0,0(9)
	.loc 2 2220 0 discriminator 1
.LVL1778:
.LBE10889:
.LBE10890:
.LBB10891:
.LBB10892:
	.loc 2 2261 0 discriminator 1
	sth 0,0(9)
	.loc 2 2262 0 discriminator 1
.LVL1779:
.LBE10892:
.LBE10891:
.LBB10893:
.LBB10894:
	.loc 2 2317 0 discriminator 1
	sth 0,0(9)
	.loc 2 2318 0 discriminator 1
.LVL1780:
.L1008:
.LBE10894:
.LBE10893:
.LBE10886:
.LBE10885:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1781:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L1011
	lis 11,wgPipe@ha
.LBB10895:
.LBB10896:
.LBB10897:
.LBB10898:
	.loc 2 2219 0 is_stmt 1
	mtctr 31
	lwz 11,wgPipe@l(11)
.LBE10898:
.LBE10897:
.LBE10896:
.LBE10895:
	.loc 1 1339 0
	li 9,0
.LVL1782:
.L1012:
.LBB10906:
.LBB10905:
	.loc 1 570 0
	rlwinm 0,9,0,0xffff
.LVL1783:
.LBB10900:
.LBB10899:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL1784:
.LBE10899:
.LBE10900:
.LBB10901:
.LBB10902:
	.loc 2 2261 0
	sth 0,0(11)
	.loc 2 2262 0
.LVL1785:
.LBE10902:
.LBE10901:
.LBB10903:
.LBB10904:
	.loc 2 2317 0
	sth 0,0(11)
	.loc 2 2318 0
.LBE10904:
.LBE10903:
.LBE10905:
.LBE10906:
	.loc 1 1339 0
	addi 9,9,1
.LVL1786:
	bdnz .L1012
.LVL1787:
.L1011:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL1788:
.LBB10907:
.LBB10908:
.LBB10909:
.LBB10910:
	.loc 2 2219 0 is_stmt 1
	lis 9,wgPipe@ha
	li 0,0
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL1789:
.LBE10910:
.LBE10909:
.LBB10911:
.LBB10912:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL1790:
.LBE10912:
.LBE10911:
.LBB10913:
.LBB10914:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
	b .L2255
.LVL1791:
.L1101:
.LBE10914:
.LBE10913:
.LBE10908:
.LBE10907:
	.loc 1 1352 0
	lis 11,norm@ha
	lbz 0,norm@l(11)
	lis 11,color@ha
	cmpwi 7,0,0
	lbz 0,color@l(11)
	beq- 7,.L2649
	.loc 1 1352 0 is_stmt 0 discriminator 1
	cmpwi 7,0,0
	bne- 7,.L1965
	cmpwi 7,8,0
	bne- 7,.L1966
.LVL1792:
	bne- 4,.L1967
	cmpwi 7,29,0
	beq- 7,.L1968
.LVL1793:
	addic. 27,31,-1
.LVL1794:
	blt- 0,.L1969
	.loc 1 1352 0 discriminator 2
	mr 29,27
.LVL1795:
.L1970:
	mr 3,29
	bl UploadVertexPNT0_ElemGLuint
.LVL1796:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL1797:
	bne+ 7,.L1970
.LVL1798:
.L1969:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1968
	.loc 1 1352 0 discriminator 1
	mr 3,27
	bl UploadVertexPNT0_ElemGLuint
.L1968:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1799:
	.loc 1 1352 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L1971
	.loc 1 1352 0
	li 29,0
.LVL1800:
.L1972:
	.loc 1 1352 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPNT0_ElemGLuint
.LVL1801:
	cmpw 7,29,31
	bne+ 7,.L1972
.LVL1802:
.L1971:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
	bl UploadVertexPNT0_ElemGLuint
	b .L2255
.LVL1803:
.L1100:
	.loc 1 1349 0 is_stmt 1
	lis 11,norm@ha
	lbz 0,norm@l(11)
	lis 11,color@ha
	cmpwi 7,0,0
	lbz 0,color@l(11)
	beq- 7,.L2650
	.loc 1 1349 0 is_stmt 0 discriminator 1
	cmpwi 7,0,0
	bne- 7,.L1582
	cmpwi 7,8,0
	beq- 7,$+8
	b .L1583
.LVL1804:
	beq- 4,$+8
	b .L1584
	cmpwi 7,29,0
	beq- 7,.L1585
.LVL1805:
	addic. 27,31,-1
.LVL1806:
	blt- 0,.L1586
	.loc 1 1349 0 discriminator 2
	mr 29,27
.LVL1807:
.L1587:
	mr 3,29
	bl UploadVertexPNT0_ElemGLushort
.LVL1808:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL1809:
	bne+ 7,.L1587
.LVL1810:
.L1586:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1585
	.loc 1 1349 0 discriminator 1
	mr 3,27
	bl UploadVertexPNT0_ElemGLushort
.L1585:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1811:
	.loc 1 1349 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L1588
	.loc 1 1349 0
	li 29,0
.LVL1812:
.L1589:
	.loc 1 1349 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPNT0_ElemGLushort
.LVL1813:
	cmpw 7,29,31
	bne+ 7,.L1589
.LVL1814:
.L1588:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
	bl UploadVertexPNT0_ElemGLushort
	b .L2255
.LVL1815:
.L820:
	.loc 1 1339 0 is_stmt 1 discriminator 2
	cmpwi 7,8,1
	bne+ 7,$+8
	b .L2651
	cmpwi 7,8,2
	bne+ 7,$+8
	b .L2652
	cmpwi 7,8,3
	bne+ 7,$+8
	b .L2653
	cmpwi 7,8,4
	bne+ 7,$+8
	b .L2654
	cmpwi 7,8,5
	beq- 7,.L2655
	cmpwi 7,8,6
	beq- 7,.L2656
	cmpwi 7,8,7
	bne+ 7,.L719
.LVL1816:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	bne- 4,.L902
	cmpwi 7,29,0
	beq- 7,.L903
	addi 27,31,-1
.LVL1817:
	mr 29,27
.LVL1818:
.L904:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL1819:
	blt- 7,.L2657
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT7_Array
.LVL1820:
	b .L904
.LVL1821:
.L2650:
	.loc 1 1349 0 is_stmt 1 discriminator 1
	cmpwi 7,0,0
	bne- 7,.L1486
	cmpwi 7,8,0
	bne- 7,.L1487
.LVL1822:
	bne- 4,.L1488
	cmpwi 7,29,0
	beq- 7,.L1489
.LVL1823:
	addic. 27,31,-1
.LVL1824:
	blt- 0,.L1490
	.loc 1 1349 0 is_stmt 0 discriminator 2
	mr 29,27
.LVL1825:
.L1491:
	mr 3,29
	bl UploadVertexPT0_ElemGLushort
.LVL1826:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL1827:
	bne+ 7,.L1491
.LVL1828:
.L1490:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1489
	.loc 1 1349 0 discriminator 1
	mr 3,27
	bl UploadVertexPT0_ElemGLushort
.L1489:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1829:
	.loc 1 1349 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L1492
	.loc 1 1349 0
	li 29,0
.LVL1830:
.L1493:
	.loc 1 1349 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPT0_ElemGLushort
.LVL1831:
	cmpw 7,29,31
	bne+ 7,.L1493
.LVL1832:
.L1492:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
	bl UploadVertexPT0_ElemGLushort
	b .L2255
.LVL1833:
.L2645:
	.loc 1 1346 0 is_stmt 1 discriminator 1
	cmpwi 7,0,0
	bne- 7,.L1103
	cmpwi 7,8,0
	bne- 7,.L1104
.LVL1834:
	bne- 4,.L1105
	cmpwi 7,29,0
	beq- 7,.L1106
.LVL1835:
	addic. 27,31,-1
.LVL1836:
	blt- 0,.L1107
	.loc 1 1346 0 is_stmt 0 discriminator 2
	mr 29,27
.LVL1837:
.L1108:
	mr 3,29
	bl UploadVertexPT0_ElemGLubyte
.LVL1838:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL1839:
	bne+ 7,.L1108
.LVL1840:
.L1107:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1106
	.loc 1 1346 0 discriminator 1
	mr 3,27
	bl UploadVertexPT0_ElemGLubyte
.L1106:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1841:
	.loc 1 1346 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L1109
	.loc 1 1346 0
	li 29,0
.LVL1842:
.L1110:
	.loc 1 1346 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPT0_ElemGLubyte
.LVL1843:
	cmpw 7,29,31
	bne+ 7,.L1110
.LVL1844:
.L1109:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
	bl UploadVertexPT0_ElemGLubyte
	b .L2255
.LVL1845:
.L2649:
	.loc 1 1352 0 is_stmt 1 discriminator 1
	cmpwi 7,0,0
	bne- 7,.L1869
	cmpwi 7,8,0
	beq- 7,$+8
	b .L1870
.LVL1846:
	beq- 4,$+8
	b .L1871
	cmpwi 7,29,0
	beq- 7,.L1872
.LVL1847:
	addic. 27,31,-1
.LVL1848:
	blt- 0,.L1873
	.loc 1 1352 0 is_stmt 0 discriminator 2
	mr 29,27
.LVL1849:
.L1874:
	mr 3,29
	bl UploadVertexPT0_ElemGLuint
.LVL1850:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL1851:
	bne+ 7,.L1874
.LVL1852:
.L1873:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1872
	.loc 1 1352 0 discriminator 1
	mr 3,27
	bl UploadVertexPT0_ElemGLuint
.L1872:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1853:
	.loc 1 1352 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L1875
	.loc 1 1352 0
	li 29,0
.LVL1854:
.L1876:
	.loc 1 1352 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPT0_ElemGLuint
.LVL1855:
	cmpw 7,29,31
	bne+ 7,.L1876
.LVL1856:
.L1875:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
	bl UploadVertexPT0_ElemGLuint
	b .L2255
.LVL1857:
.L725:
	.loc 1 1339 0 is_stmt 1 discriminator 2
	cmpwi 7,8,1
	beq- 7,.L2658
	cmpwi 7,8,2
	beq- 7,.L2659
	cmpwi 7,8,3
	beq- 7,.L2660
	cmpwi 7,8,4
	beq- 7,.L2661
	cmpwi 7,8,5
	beq- 7,.L2662
	cmpwi 7,8,6
	beq- 7,.L2663
	cmpwi 7,8,7
	bne+ 7,.L719
.LVL1858:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	bne- 4,.L808
	cmpwi 7,29,0
	beq- 7,.L809
	addi 27,31,-1
.LVL1859:
	mr 29,27
.LVL1860:
.L810:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL1861:
	blt- 7,.L2664
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPT7_Array
.LVL1862:
	b .L810
.LVL1863:
.L914:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L920
.LVL1864:
	srawi 10,31,1
	addze 10,10
	cmpwi 7,10,1
	ble- 7,.L920
	lis 11,wgPipe@ha
.LBB10915:
.LBB10916:
.LBB10917:
.LBB10918:
	.loc 2 2219 0 is_stmt 1
	addi 10,10,-1
	lwz 11,wgPipe@l(11)
	mtctr 10
.LBE10918:
.LBE10917:
.LBE10916:
.LBE10915:
	.loc 1 1339 0
	li 9,0
.LVL1865:
.L921:
.LBB10924:
.LBB10923:
.LBB10920:
.LBB10919:
	.loc 2 2219 0 discriminator 2
	sth 9,0(11)
	.loc 2 2220 0 discriminator 2
.LVL1866:
.LBE10919:
.LBE10920:
.LBB10921:
.LBB10922:
	.loc 2 2317 0 discriminator 2
	sth 9,0(11)
	.loc 2 2318 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 0,9,1
	rlwinm 0,0,0,0xffff
.LVL1867:
.LBE10922:
.LBE10921:
.LBE10923:
.LBE10924:
.LBB10925:
.LBB10926:
.LBB10927:
.LBB10928:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL1868:
.LBE10928:
.LBE10927:
.LBB10929:
.LBB10930:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LBE10930:
.LBE10929:
.LBE10926:
.LBE10925:
	.loc 1 1164 0 discriminator 2
	addi 0,9,3
.LVL1869:
	rlwinm 0,0,0,0xffff
.LVL1870:
.LBB10931:
.LBB10932:
.LBB10933:
.LBB10934:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL1871:
.LBE10934:
.LBE10933:
.LBB10935:
.LBB10936:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 9,9,2
.LVL1872:
	rlwinm 9,9,0,0xffff
.LVL1873:
.LBE10936:
.LBE10935:
.LBE10932:
.LBE10931:
.LBB10937:
.LBB10938:
.LBB10939:
.LBB10940:
	.loc 2 2219 0 discriminator 2
	sth 9,0(11)
	.loc 2 2220 0 discriminator 2
.LVL1874:
.LBE10940:
.LBE10939:
.LBB10941:
.LBB10942:
	.loc 2 2317 0 discriminator 2
	sth 9,0(11)
	.loc 2 2318 0 discriminator 2
.LBE10942:
.LBE10941:
.LBE10938:
.LBE10937:
	.loc 1 1339 0 discriminator 2
	bdnz .L921
.LVL1875:
.L920:
	cmpwi 7,29,0
	beq- 7,.L2255
.LVL1876:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	srawi 31,31,1
	addze 31,31
	cmpwi 7,31,1
	ble- 7,.L2255
	lis 11,wgPipe@ha
.LBB10943:
.LBB10944:
.LBB10945:
.LBB10946:
	.loc 2 2219 0 is_stmt 1
	addi 31,31,-1
.LBE10946:
.LBE10945:
.LBE10944:
.LBE10943:
	.loc 1 1339 0
	li 10,0
.LBB10955:
.LBB10953:
.LBB10949:
.LBB10947:
	.loc 2 2219 0
	lwz 9,wgPipe@l(11)
	mtctr 31
	b .L922
.LVL1877:
.L2276:
.LBE10947:
.LBE10949:
.LBE10953:
.LBE10955:
	.loc 1 1339 0
	mr 10,0
.LVL1878:
.L922:
.LBB10956:
.LBB10954:
.LBB10950:
.LBB10948:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL1879:
.LBE10948:
.LBE10950:
.LBB10951:
.LBB10952:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 0,10,2
	rlwinm 0,0,0,0xffff
.LVL1880:
.LBE10952:
.LBE10951:
.LBE10954:
.LBE10956:
.LBB10957:
.LBB10958:
.LBB10959:
.LBB10960:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL1881:
.LBE10960:
.LBE10959:
.LBB10961:
.LBB10962:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LBE10962:
.LBE10961:
.LBE10958:
.LBE10957:
	.loc 1 1164 0 discriminator 2
	addi 11,10,3
	rlwinm 11,11,0,0xffff
.LVL1882:
.LBB10963:
.LBB10964:
.LBB10965:
.LBB10966:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL1883:
.LBE10966:
.LBE10965:
.LBB10967:
.LBB10968:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 11,10,1
.LVL1884:
	rlwinm 11,11,0,0xffff
.LVL1885:
.LBE10968:
.LBE10967:
.LBE10964:
.LBE10963:
.LBB10969:
.LBB10970:
.LBB10971:
.LBB10972:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL1886:
.LBE10972:
.LBE10971:
.LBB10973:
.LBB10974:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LBE10974:
.LBE10973:
.LBE10970:
.LBE10969:
	.loc 1 1339 0 discriminator 2
	bdnz .L2276
	b .L2255
.LVL1887:
.L913:
	cmpwi 7,8,1
	beq- 7,.L2665
	cmpwi 7,8,2
	beq- 7,.L2666
	cmpwi 7,8,3
	beq- 7,.L2667
	cmpwi 7,8,4
	beq- 7,.L2668
	cmpwi 7,8,5
	beq- 7,.L2669
	cmpwi 7,8,6
	beq- 7,.L2670
	cmpwi 7,8,7
	bne+ 7,.L719
.LVL1888:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	bne- 4,.L995
	cmpwi 7,29,0
	beq- 7,.L996
	addi 27,31,-1
.LVL1889:
	mr 29,27
.LVL1890:
.L997:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL1891:
	blt- 7,.L2671
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPCT7_Array
.LVL1892:
	b .L997
.LVL1893:
.L2658:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L737
	cmpwi 7,29,0
	beq- 7,.L738
.LVL1894:
	addic. 27,31,-1
.LVL1895:
	blt- 0,.L739
	.loc 1 1339 0 discriminator 2
	mr 29,27
.LVL1896:
.L740:
	mr 3,29
	bl UploadVertexPT1_Array
.LVL1897:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL1898:
	bne+ 7,.L740
.LVL1899:
.L739:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L738
	.loc 1 1339 0 discriminator 1
	mr 3,27
	bl UploadVertexPT1_Array
.L738:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1900:
	.loc 1 1339 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L741
	.loc 1 1339 0
	li 29,0
.LVL1901:
.L742:
	.loc 1 1339 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPT1_Array
.LVL1902:
	cmpw 7,29,31
	bne+ 7,.L742
.LVL1903:
.L741:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
	bl UploadVertexPT1_Array
	b .L2255
.LVL1904:
.L1965:
	.loc 1 1352 0 is_stmt 1 discriminator 1
	cmpwi 7,8,0
	bne- 7,.L2156
.LVL1905:
	bne- 4,.L2157
	cmpwi 7,29,0
	beq- 7,.L2158
	addi 6,31,-1
.LVL1906:
	slwi 11,31,2
	cmpwi 7,6,-1
.LBB10975:
.LBB10976:
.LBB10977:
.LBB10978:
	.loc 2 2219 0 discriminator 1
	lis 5,wgPipe@ha
	addi 0,31,1
	bge+ 7,.L2159
	li 0,1
.LVL1907:
.L2159:
.LBE10978:
.LBE10977:
.LBE10976:
.LBE10975:
	.loc 1 1352 0 discriminator 1
	addic. 0,0,-1
.LBB10991:
.LBB10989:
.LBB10981:
.LBB10982:
	.loc 2 2318 0 discriminator 1
	addi 11,11,-4
.LBE10982:
.LBE10981:
.LBE10989:
.LBE10991:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2672
.LVL1908:
.LBB10992:
.LBB10990:
	.loc 1 577 0
	lwz 7,0(9)
.LBB10984:
.LBB10979:
	.loc 2 2219 0
	lwz 8,wgPipe@l(5)
.LBE10979:
.LBE10984:
	.loc 1 577 0
	lwzx 7,7,11
	rlwinm 7,7,0,0xffff
.LVL1909:
.LBB10985:
.LBB10980:
	.loc 2 2219 0
	sth 7,0(8)
	.loc 2 2220 0
.LVL1910:
.LBE10980:
.LBE10985:
.LBB10986:
.LBB10987:
	.loc 2 2261 0
	sth 7,0(8)
	.loc 2 2262 0
.LVL1911:
.LBE10987:
.LBE10986:
.LBB10988:
.LBB10983:
	.loc 2 2317 0
	sth 7,0(8)
	.loc 2 2318 0
	b .L2159
.LVL1912:
.L1199:
.LBE10983:
.LBE10988:
.LBE10990:
.LBE10992:
	.loc 1 1346 0 discriminator 1
	cmpwi 7,8,0
	bne- 7,.L1390
.LVL1913:
	bne- 4,.L1391
	cmpwi 7,29,0
	beq- 7,.L1392
	addi 6,31,-1
.LVL1914:
	mr 11,31
	cmpwi 7,6,-1
.LBB10993:
.LBB10994:
.LBB10995:
.LBB10996:
	.loc 2 2219 0 discriminator 1
	lis 5,wgPipe@ha
	addi 0,31,1
	bge+ 7,.L1393
	li 0,1
.LVL1915:
.L1393:
.LBE10996:
.LBE10995:
.LBE10994:
.LBE10993:
	.loc 1 1346 0 discriminator 1
	addic. 0,0,-1
.LBB11009:
.LBB11007:
.LBB10999:
.LBB11000:
	.loc 2 2318 0 discriminator 1
	addi 11,11,-1
.LBE11000:
.LBE10999:
.LBE11007:
.LBE11009:
	.loc 1 1346 0 discriminator 1
	beq- 0,.L2673
.LVL1916:
.LBB11010:
.LBB11008:
	.loc 1 575 0
	lwz 7,0(9)
.LBB11002:
.LBB10997:
	.loc 2 2219 0
	lwz 8,wgPipe@l(5)
.LBE10997:
.LBE11002:
	.loc 1 575 0
	lbzx 7,7,11
.LVL1917:
.LBB11003:
.LBB10998:
	.loc 2 2219 0
	sth 7,0(8)
	.loc 2 2220 0
.LVL1918:
.LBE10998:
.LBE11003:
.LBB11004:
.LBB11005:
	.loc 2 2261 0
	sth 7,0(8)
	.loc 2 2262 0
.LVL1919:
.LBE11005:
.LBE11004:
.LBB11006:
.LBB11001:
	.loc 2 2317 0
	sth 7,0(8)
	.loc 2 2318 0
	b .L1393
.LVL1920:
.L1006:
.LBE11001:
.LBE11006:
.LBE11008:
.LBE11010:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,8,1
	beq- 7,.L2674
	cmpwi 7,8,2
	beq- 7,.L2675
	cmpwi 7,8,3
	beq- 7,.L2676
	cmpwi 7,8,4
	beq- 7,.L2677
	cmpwi 7,8,5
	beq- 7,.L2678
	cmpwi 7,8,6
	beq- 7,.L2679
	cmpwi 7,8,7
	bne+ 7,.L719
.LVL1921:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	bne- 4,.L1088
	cmpwi 7,29,0
	beq- 7,.L1089
	addi 27,31,-1
.LVL1922:
	mr 29,27
.LVL1923:
.L1090:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL1924:
	blt- 7,.L2680
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNCT7_Array
.LVL1925:
	b .L1090
.LVL1926:
.L1103:
	.loc 1 1346 0 is_stmt 1 discriminator 1
	cmpwi 7,8,0
	bne- 7,.L1295
.LVL1927:
	bne- 4,.L1296
	cmpwi 7,29,0
	beq- 7,.L1297
.LVL1928:
	addic. 0,31,-1
	blt- 0,.L1298
	lis 11,wgPipe@ha
.LBB11011:
.LBB11012:
.LBB11013:
.LBB11014:
	.loc 2 2219 0
	mtctr 31
	lwz 8,wgPipe@l(11)
.LVL1929:
.LBE11014:
.LBE11013:
.LBE11012:
.LBE11011:
	.loc 1 1346 0
	mr 11,0
.LVL1930:
.L1299:
.LBB11020:
.LBB11019:
	.loc 1 575 0
	lwz 7,0(9)
	lbzx 7,7,11
.LVL1931:
.LBB11016:
.LBB11015:
	.loc 2 2219 0
	sth 7,0(8)
	.loc 2 2220 0
.LVL1932:
.LBE11015:
.LBE11016:
.LBB11017:
.LBB11018:
	.loc 2 2317 0
	sth 7,0(8)
	.loc 2 2318 0
.LBE11018:
.LBE11017:
.LBE11019:
.LBE11020:
	.loc 1 1346 0
	addi 11,11,-1
.LVL1933:
	bdnz .L1299
.LVL1934:
.L1298:
	.loc 1 1346 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1297
.LVL1935:
.LBB11021:
.LBB11022:
	.loc 1 575 0 is_stmt 1 discriminator 1
	lwz 8,.LANCHOR0@l(10)
.LBB11023:
.LBB11024:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
.LBE11024:
.LBE11023:
	.loc 1 575 0 discriminator 1
	lbzx 0,8,0
.LVL1936:
.LBB11026:
.LBB11025:
	.loc 2 2219 0 discriminator 1
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL1937:
.LBE11025:
.LBE11026:
.LBB11027:
.LBB11028:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL1938:
.L1297:
.LBE11028:
.LBE11027:
.LBE11022:
.LBE11021:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1939:
	.loc 1 1346 0 is_stmt 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L1300
	lis 11,wgPipe@ha
.LBB11029:
.LBB11030:
.LBB11031:
.LBB11032:
	.loc 2 2219 0 is_stmt 1
	mtctr 31
	lwz 8,wgPipe@l(11)
.LBE11032:
.LBE11031:
.LBE11030:
.LBE11029:
	.loc 1 1346 0
	li 11,0
.LVL1940:
.L1301:
.LBB11038:
.LBB11037:
	.loc 1 575 0
	lwz 7,0(9)
	lbzx 0,7,11
.LVL1941:
.LBB11034:
.LBB11033:
	.loc 2 2219 0
	sth 0,0(8)
	.loc 2 2220 0
.LVL1942:
.LBE11033:
.LBE11034:
.LBB11035:
.LBB11036:
	.loc 2 2317 0
	sth 0,0(8)
	.loc 2 2318 0
.LBE11036:
.LBE11035:
.LBE11037:
.LBE11038:
	.loc 1 1346 0
	addi 11,11,1
.LVL1943:
	bdnz .L1301
.LVL1944:
.L1300:
	.loc 1 1346 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL1945:
.LBB11039:
.LBB11040:
	.loc 1 575 0 is_stmt 1
	lwz 9,.LANCHOR0@l(10)
	lbz 0,0(9)
.LVL1946:
.LBB11041:
.LBB11042:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL1947:
.LBE11042:
.LBE11041:
.LBB11043:
.LBB11044:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
	b .L2255
.LVL1948:
.L1486:
.LBE11044:
.LBE11043:
.LBE11040:
.LBE11039:
	.loc 1 1349 0 discriminator 1
	cmpwi 7,8,0
	beq- 7,$+8
	b .L1678
.LVL1949:
	beq- 4,$+8
	b .L1679
	cmpwi 7,29,0
	beq- 7,.L1680
.LVL1950:
	addic. 0,31,-1
	blt- 0,.L1681
	.loc 1 1349 0 is_stmt 0
	slwi 8,0,1
.LVL1951:
	lis 11,wgPipe@ha
.LBB11045:
.LBB11046:
.LBB11047:
.LBB11048:
	.loc 2 2219 0 is_stmt 1
	srwi 7,8,1
.LVL1952:
	lwz 11,wgPipe@l(11)
	addi 7,7,1
	mtctr 7
.LVL1953:
.L1682:
.LBE11048:
.LBE11047:
	.loc 1 576 0
	lwz 7,0(9)
	lhzx 7,7,8
.LVL1954:
.LBB11050:
.LBB11049:
	.loc 2 2219 0
	sth 7,0(11)
	.loc 2 2220 0
.LVL1955:
.LBE11049:
.LBE11050:
.LBB11051:
.LBB11052:
	.loc 2 2317 0
	sth 7,0(11)
	.loc 2 2318 0
	addi 8,8,-2
.LBE11052:
.LBE11051:
.LBE11046:
.LBE11045:
	.loc 1 1349 0
	bdnz .L1682
.LVL1956:
.L1681:
	.loc 1 1349 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1680
.LVL1957:
.LBB11053:
.LBB11054:
	.loc 1 576 0 is_stmt 1 discriminator 1
	lwz 8,.LANCHOR0@l(10)
	slwi 0,0,1
.LBB11055:
.LBB11056:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
.LBE11056:
.LBE11055:
	.loc 1 576 0 discriminator 1
	lhzx 0,8,0
.LVL1958:
.LBB11058:
.LBB11057:
	.loc 2 2219 0 discriminator 1
	lwz 11,wgPipe@l(11)
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL1959:
.LBE11057:
.LBE11058:
.LBB11059:
.LBB11060:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL1960:
.L1680:
.LBE11060:
.LBE11059:
.LBE11054:
.LBE11053:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL1961:
	.loc 1 1349 0 is_stmt 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L1683
	.loc 1 1164 0 is_stmt 1
	slwi 7,31,1
	lis 11,wgPipe@ha
.LBB11061:
.LBB11062:
.LBB11063:
.LBB11064:
	.loc 2 2219 0
	addi 7,7,-2
	lwz 8,wgPipe@l(11)
	srwi 7,7,1
.LBE11064:
.LBE11063:
.LBE11062:
.LBE11061:
	.loc 1 1164 0
	li 11,0
.LBB11072:
.LBB11071:
.LBB11067:
.LBB11065:
	.loc 2 2219 0
	addi 7,7,1
	mtctr 7
.LVL1962:
.L1684:
.LBE11065:
.LBE11067:
	.loc 1 576 0
	lwz 7,0(9)
	lhzx 0,7,11
.LVL1963:
.LBB11068:
.LBB11066:
	.loc 2 2219 0
	sth 0,0(8)
	.loc 2 2220 0
.LVL1964:
.LBE11066:
.LBE11068:
.LBB11069:
.LBB11070:
	.loc 2 2317 0
	sth 0,0(8)
	.loc 2 2318 0
	addi 11,11,2
.LBE11070:
.LBE11069:
.LBE11071:
.LBE11072:
	.loc 1 1349 0
	bdnz .L1684
.LVL1965:
.L1683:
	.loc 1 1349 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL1966:
.LBB11073:
.LBB11074:
	.loc 1 576 0 is_stmt 1
	lwz 9,.LANCHOR0@l(10)
	lhz 0,0(9)
.LVL1967:
.LBB11075:
.LBB11076:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL1968:
.LBE11076:
.LBE11075:
.LBB11077:
.LBB11078:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
	b .L2255
.LVL1969:
.L1582:
.LBE11078:
.LBE11077:
.LBE11074:
.LBE11073:
	.loc 1 1349 0 discriminator 1
	cmpwi 7,8,0
	bne- 7,.L1773
.LVL1970:
	bne- 4,.L1774
	cmpwi 7,29,0
	beq- 7,.L1775
	addi 6,31,-1
.LVL1971:
	slwi 11,31,1
	cmpwi 7,6,-1
.LBB11079:
.LBB11080:
.LBB11081:
.LBB11082:
	.loc 2 2219 0 discriminator 1
	lis 5,wgPipe@ha
	addi 0,31,1
	bge+ 7,.L1776
	li 0,1
.LVL1972:
.L1776:
.LBE11082:
.LBE11081:
.LBE11080:
.LBE11079:
	.loc 1 1349 0 discriminator 1
	addic. 0,0,-1
.LBB11095:
.LBB11093:
.LBB11085:
.LBB11086:
	.loc 2 2318 0 discriminator 1
	addi 11,11,-2
.LBE11086:
.LBE11085:
.LBE11093:
.LBE11095:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L2681
.LBB11096:
.LBB11094:
	.loc 1 576 0
	lwz 7,0(9)
.LBB11088:
.LBB11083:
	.loc 2 2219 0
	lwz 8,wgPipe@l(5)
.LBE11083:
.LBE11088:
	.loc 1 576 0
	lhzx 7,7,11
.LVL1973:
.LBB11089:
.LBB11084:
	.loc 2 2219 0
	sth 7,0(8)
	.loc 2 2220 0
.LVL1974:
.LBE11084:
.LBE11089:
.LBB11090:
.LBB11091:
	.loc 2 2261 0
	sth 7,0(8)
	.loc 2 2262 0
.LVL1975:
.LBE11091:
.LBE11090:
.LBB11092:
.LBB11087:
	.loc 2 2317 0
	sth 7,0(8)
	.loc 2 2318 0
	b .L1776
.LVL1976:
.L821:
.LBE11087:
.LBE11092:
.LBE11094:
.LBE11096:
	.loc 1 1339 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L827
.LVL1977:
	srawi 28,31,1
	addze 28,28
.LVL1978:
	cmpwi 7,28,1
	ble- 7,.L827
	.loc 1 1164 0 is_stmt 1
	slwi 28,28,1
	li 30,2
.LVL1979:
.L828:
	.loc 1 1339 0 discriminator 2
	addi 3,30,-2
	bl UploadVertexPNT0_Array
	addi 3,30,-1
	bl UploadVertexPNT0_Array
	addi 3,30,1
	bl UploadVertexPNT0_Array
	mr 3,30
	addi 30,30,2
	bl UploadVertexPNT0_Array
	cmpw 7,30,28
	bne+ 7,.L828
.L827:
	cmpwi 7,29,0
	beq- 7,.L2255
.LVL1980:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	srawi 31,31,1
	addze 31,31
	cmpwi 7,31,1
	ble- 7,.L2255
	.loc 1 1164 0 is_stmt 1
	slwi 30,31,1
	li 31,2
.LVL1981:
.L829:
	.loc 1 1339 0 discriminator 2
	addi 3,31,-2
	bl UploadVertexPNT0_Array
	mr 3,31
	bl UploadVertexPNT0_Array
	addi 3,31,1
	bl UploadVertexPNT0_Array
	addi 3,31,-1
	addi 31,31,2
	bl UploadVertexPNT0_Array
	cmpw 7,31,30
	bne+ 7,.L829
	b .L2255
.LVL1982:
.L726:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L733
.LVL1983:
	srawi 28,31,1
	addze 28,28
.LVL1984:
	cmpwi 7,28,1
	ble- 7,.L733
	.loc 1 1164 0 is_stmt 1
	slwi 28,28,1
	li 30,2
.LVL1985:
.L734:
	.loc 1 1339 0 discriminator 2
	addi 3,30,-2
	bl UploadVertexPT0_Array
	addi 3,30,-1
	bl UploadVertexPT0_Array
	addi 3,30,1
	bl UploadVertexPT0_Array
	mr 3,30
	addi 30,30,2
	bl UploadVertexPT0_Array
	cmpw 7,30,28
	bne+ 7,.L734
.L733:
	cmpwi 7,29,0
	beq- 7,.L2255
.LVL1986:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	srawi 31,31,1
	addze 31,31
	cmpwi 7,31,1
	ble- 7,.L2255
	.loc 1 1164 0 is_stmt 1
	slwi 30,31,1
	li 31,2
.LVL1987:
.L735:
	.loc 1 1339 0 discriminator 2
	addi 3,31,-2
	bl UploadVertexPT0_Array
	mr 3,31
	bl UploadVertexPT0_Array
	addi 3,31,1
	bl UploadVertexPT0_Array
	addi 3,31,-1
	addi 31,31,2
	bl UploadVertexPT0_Array
	cmpw 7,31,30
	bne+ 7,.L735
	b .L2255
.LVL1988:
.L1869:
	.loc 1 1352 0 discriminator 1
	cmpwi 7,8,0
	bne- 7,.L2061
.LVL1989:
	bne- 4,.L2062
	cmpwi 7,29,0
	beq- 7,.L2063
.LVL1990:
	addic. 8,31,-1
.LVL1991:
	blt- 0,.L2064
.LBB11097:
.LBB11098:
.LBB11099:
.LBB11100:
	.loc 2 2219 0
	addi 0,8,1
	lis 11,wgPipe@ha
	mtctr 0
	lwz 7,wgPipe@l(11)
.LVL1992:
.LBE11100:
.LBE11099:
.LBE11098:
.LBE11097:
	.loc 1 1352 0
	slwi 11,8,2
.LVL1993:
.L2065:
.LBB11106:
.LBB11105:
	.loc 1 577 0
	lwz 6,0(9)
	lwzx 0,6,11
	rlwinm 0,0,0,0xffff
.LVL1994:
.LBB11102:
.LBB11101:
	.loc 2 2219 0
	sth 0,0(7)
	.loc 2 2220 0
.LVL1995:
.LBE11101:
.LBE11102:
.LBB11103:
.LBB11104:
	.loc 2 2317 0
	sth 0,0(7)
	.loc 2 2318 0
.LBE11104:
.LBE11103:
.LBE11105:
.LBE11106:
	.loc 1 1352 0
	addi 11,11,-4
.LVL1996:
	bdnz .L2065
.LVL1997:
.L2064:
	.loc 1 1352 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2063
.LVL1998:
.LBB11107:
.LBB11108:
	.loc 1 577 0 is_stmt 1 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	slwi 8,8,2
	lwzx 0,11,8
.LBB11109:
.LBB11110:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
.LBE11110:
.LBE11109:
	.loc 1 577 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL1999:
.LBB11112:
.LBB11111:
	.loc 2 2219 0 discriminator 1
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL2000:
.LBE11111:
.LBE11112:
.LBB11113:
.LBB11114:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL2001:
.L2063:
.LBE11114:
.LBE11113:
.LBE11108:
.LBE11107:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL2002:
	.loc 1 1352 0 is_stmt 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L2066
	lis 11,wgPipe@ha
.LBB11115:
.LBB11116:
.LBB11117:
.LBB11118:
	.loc 2 2219 0 is_stmt 1
	mtctr 31
	lwz 8,wgPipe@l(11)
.LBE11118:
.LBE11117:
.LBE11116:
.LBE11115:
	.loc 1 1352 0
	li 11,0
.LVL2003:
.L2067:
.LBB11124:
.LBB11123:
	.loc 1 577 0
	lwz 7,0(9)
	slwi 0,11,2
	lwzx 0,7,0
	rlwinm 0,0,0,0xffff
.LVL2004:
.LBB11120:
.LBB11119:
	.loc 2 2219 0
	sth 0,0(8)
	.loc 2 2220 0
.LVL2005:
.LBE11119:
.LBE11120:
.LBB11121:
.LBB11122:
	.loc 2 2317 0
	sth 0,0(8)
	.loc 2 2318 0
.LBE11122:
.LBE11121:
.LBE11123:
.LBE11124:
	.loc 1 1352 0
	addi 11,11,1
.LVL2006:
	bdnz .L2067
.LVL2007:
.L2066:
	.loc 1 1352 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL2008:
.LBB11125:
.LBB11126:
	.loc 1 577 0 is_stmt 1
	lwz 9,.LANCHOR0@l(10)
	lhz 0,2(9)
.LVL2009:
.LBB11127:
.LBB11128:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL2010:
.LBE11128:
.LBE11127:
.LBB11129:
.LBB11130:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
	b .L2255
.LVL2011:
.L2681:
.LBE11130:
.LBE11129:
.LBE11126:
.LBE11125:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1775
.LVL2012:
.LBB11131:
.LBB11132:
	.loc 1 576 0 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	slwi 6,6,1
.LVL2013:
	lhzx 0,11,6
.LVL2014:
.LBB11133:
.LBB11134:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL2015:
.LBE11134:
.LBE11133:
.LBB11135:
.LBB11136:
	.loc 2 2261 0 discriminator 1
	sth 0,0(11)
	.loc 2 2262 0 discriminator 1
.LVL2016:
.LBE11136:
.LBE11135:
.LBB11137:
.LBB11138:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL2017:
.L1775:
.LBE11138:
.LBE11137:
.LBE11132:
.LBE11131:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 11,0
	beq- 7,.L2255
	cmpwi 7,31,0
.LBB11139:
.LBB11140:
.LBB11141:
.LBB11142:
	.loc 2 2219 0 discriminator 1
	lis 7,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2612
	li 31,1
.L2612:
.LVL2018:
.LBE11142:
.LBE11141:
.LBE11140:
.LBE11139:
	.loc 1 1349 0 discriminator 1
	addic. 31,31,-1
.LBB11153:
.LBB11151:
	.loc 1 576 0 discriminator 1
	slwi 0,11,1
.LBE11151:
.LBE11153:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L2682
.LVL2019:
.LBB11154:
.LBB11152:
	.loc 1 576 0
	lwz 6,0(9)
.LBB11145:
.LBB11143:
	.loc 2 2219 0
	lwz 8,wgPipe@l(7)
.LBE11143:
.LBE11145:
	.loc 1 576 0
	lhzx 0,6,0
.LVL2020:
.LBB11146:
.LBB11144:
	.loc 2 2219 0
	sth 0,0(8)
	.loc 2 2220 0
.LVL2021:
.LBE11144:
.LBE11146:
.LBB11147:
.LBB11148:
	.loc 2 2261 0
	sth 0,0(8)
	.loc 2 2262 0
.LVL2022:
.LBE11148:
.LBE11147:
.LBB11149:
.LBB11150:
	.loc 2 2317 0
	sth 0,0(8)
	.loc 2 2318 0
.LBE11150:
.LBE11149:
.LBE11152:
.LBE11154:
	.loc 1 1349 0
	addi 11,11,1
.LVL2023:
	b .L2612
.LVL2024:
.L2682:
	.loc 1 1349 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL2025:
.LBB11155:
.LBB11156:
	.loc 1 576 0 is_stmt 1
	lwz 9,.LANCHOR0@l(10)
	lhz 0,0(9)
.LVL2026:
.LBB11157:
.LBB11158:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL2027:
.LBE11158:
.LBE11157:
.LBB11159:
.LBB11160:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL2028:
.LBE11160:
.LBE11159:
.LBB11161:
.LBB11162:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
	b .L2255
.LVL2029:
.L2157:
.LBE11162:
.LBE11161:
.LBE11156:
.LBE11155:
	.loc 1 1352 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2163
	srawi 0,31,1
	addze. 0,0
	.loc 1 1352 0
	li 10,0
.LBB11163:
.LBB11164:
.LBB11165:
.LBB11166:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L2164
	li 0,1
.LVL2030:
.L2164:
.LBE11166:
.LBE11165:
.LBE11164:
.LBE11163:
	.loc 1 1352 0 discriminator 1
	addic. 0,0,-1
.LBB11176:
.LBB11177:
.LBB11178:
.LBB11179:
	.loc 2 2318 0 discriminator 1
	addi 7,10,8
.LBE11179:
.LBE11178:
.LBE11177:
.LBE11176:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2163
.LVL2031:
.LBB11187:
.LBB11175:
	.loc 1 577 0 discriminator 2
	lwz 8,0(9)
.LBB11169:
.LBB11167:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE11167:
.LBE11169:
	.loc 1 577 0 discriminator 2
	lwzx 8,8,10
	rlwinm 8,8,0,0xffff
.LVL2032:
.LBB11170:
.LBB11168:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2033:
.LBE11168:
.LBE11170:
.LBB11171:
.LBB11172:
	.loc 2 2261 0 discriminator 2
	sth 8,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2034:
.LBE11172:
.LBE11171:
.LBB11173:
.LBB11174:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2035:
.LBE11174:
.LBE11173:
.LBE11175:
.LBE11187:
.LBB11188:
.LBB11189:
	.loc 1 577 0 discriminator 2
	lwz 8,0(9)
.LVL2036:
	add 8,8,10
	lhz 8,6(8)
.LVL2037:
.LBB11190:
.LBB11191:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2038:
.LBE11191:
.LBE11190:
.LBB11192:
.LBB11193:
	.loc 2 2261 0 discriminator 2
	sth 8,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2039:
.LBE11193:
.LBE11192:
.LBB11194:
.LBB11195:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2040:
.LBE11195:
.LBE11194:
.LBE11189:
.LBE11188:
.LBB11196:
.LBB11197:
	.loc 1 577 0 discriminator 2
	lwz 8,0(9)
.LVL2041:
	add 10,8,10
.LVL2042:
	lhz 10,14(10)
.LVL2043:
.LBB11198:
.LBB11199:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2044:
.LBE11199:
.LBE11198:
.LBB11200:
.LBB11201:
	.loc 2 2261 0 discriminator 2
	sth 10,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2045:
.LBE11201:
.LBE11200:
.LBB11202:
.LBB11203:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2046:
.LBE11203:
.LBE11202:
.LBE11197:
.LBE11196:
.LBB11204:
.LBB11186:
	.loc 1 577 0 discriminator 2
	lwz 10,0(9)
.LVL2047:
	lwzx 10,10,7
	rlwinm 10,10,0,0xffff
.LVL2048:
.LBB11181:
.LBB11182:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2049:
.LBE11182:
.LBE11181:
.LBB11183:
.LBB11184:
	.loc 2 2261 0 discriminator 2
	sth 10,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2050:
.LBE11184:
.LBE11183:
.LBB11185:
.LBB11180:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
	mr 10,7
.LVL2051:
	b .L2164
.LVL2052:
.L2163:
.LBE11180:
.LBE11185:
.LBE11186:
.LBE11204:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1352 0 is_stmt 0
	li 10,0
	li 8,1
.LBB11205:
.LBB11206:
.LBB11207:
.LBB11208:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L2166
	li 31,1
.L2166:
.LVL2053:
.LBE11208:
.LBE11207:
.LBE11206:
.LBE11205:
	.loc 1 1352 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2255
.LVL2054:
.LBB11218:
.LBB11217:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
.LBB11211:
.LBB11209:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE11209:
.LBE11211:
	.loc 1 577 0 discriminator 2
	lwzx 0,6,10
	rlwinm 0,0,0,0xffff
.LVL2055:
.LBB11212:
.LBB11210:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2056:
.LBE11210:
.LBE11212:
.LBB11213:
.LBB11214:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2057:
.LBE11214:
.LBE11213:
.LBB11215:
.LBB11216:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2058:
.LBE11216:
.LBE11215:
.LBE11217:
.LBE11218:
.LBB11219:
.LBB11220:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,3
.LVL2059:
	lwzx 0,6,0
	rlwinm 0,0,0,0xffff
.LVL2060:
.LBB11221:
.LBB11222:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2061:
.LBE11222:
.LBE11221:
.LBB11223:
.LBB11224:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2062:
.LBE11224:
.LBE11223:
.LBB11225:
.LBB11226:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LBE11226:
.LBE11225:
.LBE11220:
.LBE11219:
.LBB11227:
.LBB11228:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
.LBE11228:
.LBE11227:
	.loc 1 1352 0 discriminator 2
	addi 8,8,1
.LVL2063:
.LBB11236:
.LBB11235:
	.loc 1 577 0 discriminator 2
	add 6,6,10
	lhz 0,14(6)
.LVL2064:
.LBB11229:
.LBB11230:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2065:
.LBE11230:
.LBE11229:
.LBB11231:
.LBB11232:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2066:
.LBE11232:
.LBE11231:
.LBB11233:
.LBB11234:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2067:
.LBE11234:
.LBE11233:
.LBE11235:
.LBE11236:
.LBB11237:
.LBB11238:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lhz 0,6(6)
.LVL2068:
.LBB11239:
.LBB11240:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2069:
.LBE11240:
.LBE11239:
.LBB11241:
.LBB11242:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2070:
.LBE11242:
.LBE11241:
.LBB11243:
.LBB11244:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2071:
	addi 10,10,8
.LVL2072:
	b .L2166
.LVL2073:
.L2156:
.LBE11244:
.LBE11243:
.LBE11238:
.LBE11237:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,8,1
	beq- 7,.L2683
	cmpwi 7,8,2
	beq- 7,.L2684
	cmpwi 7,8,3
	beq- 7,.L2685
	cmpwi 7,8,4
	beq- 7,.L2686
	cmpwi 7,8,5
	beq- 7,.L2687
	cmpwi 7,8,6
	beq- 7,.L2688
	cmpwi 7,8,7
	bne+ 7,.L719
.LVL2074:
	.loc 1 1352 0 is_stmt 0 discriminator 1
	bne- 4,.L2240
	cmpwi 7,29,0
	beq- 7,.L2241
	addi 27,31,-1
.LVL2075:
	mr 29,27
.LVL2076:
.L2242:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2077:
	blt- 7,.L2689
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT7_ElemGLuint
.LVL2078:
	b .L2242
.LVL2079:
.L1967:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1973
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2080:
	li 30,0
.LVL2081:
	li 28,1
.LVL2082:
.L1974:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2083:
	bge- 7,.L1973
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT0_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNT0_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT0_ElemGLuint
	mr 3,26
	bl UploadVertexPNT0_ElemGLuint
.LVL2084:
	addi 30,30,2
	b .L1974
.LVL2085:
.L1966:
	cmpwi 7,8,1
	beq- 7,.L2690
	cmpwi 7,8,2
	beq- 7,.L2691
	cmpwi 7,8,3
	beq- 7,.L2692
	cmpwi 7,8,4
	beq- 7,.L2693
	cmpwi 7,8,5
	beq- 7,.L2694
	cmpwi 7,8,6
	beq- 7,.L2695
	cmpwi 7,8,7
	bne+ 7,.L719
.LVL2086:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2050
	cmpwi 7,29,0
	beq- 7,.L2051
	addi 27,31,-1
.LVL2087:
	mr 29,27
.LVL2088:
.L2052:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2089:
	blt- 7,.L2696
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT7_ElemGLuint
.LVL2090:
	b .L2052
.LVL2091:
.L2689:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2241
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2092:
	bl UploadVertexPNCT7_ElemGLuint
.LVL2093:
.L2241:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2599:
.LVL2094:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2095:
	bge- 7,.L2697
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT7_ElemGLuint
.LVL2096:
	b .L2599
.LVL2097:
.L2240:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2246
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2098:
	li 30,0
.LVL2099:
	li 28,1
.LVL2100:
.L2247:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2101:
	bge- 7,.L2246
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT7_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNCT7_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNCT7_ElemGLuint
	mr 3,26
	bl UploadVertexPNCT7_ElemGLuint
.LVL2102:
	addi 30,30,2
	b .L2247
.LVL2103:
.L2697:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2104:
	bl UploadVertexPNCT7_ElemGLuint
	b .L2255
.LVL2105:
.L2246:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2106:
.L2249:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT7_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNCT7_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNCT7_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2107:
	bl UploadVertexPNCT7_ElemGLuint
.LVL2108:
	addi 30,30,2
	b .L2249
.LVL2109:
.L2693:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2015
	cmpwi 7,29,0
	beq- 7,.L2016
	addi 27,31,-1
.LVL2110:
	mr 29,27
.LVL2111:
.L2017:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2112:
	blt- 7,.L2698
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT4_ElemGLuint
.LVL2113:
	b .L2017
.LVL2114:
.L2692:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2003
	cmpwi 7,29,0
	beq- 7,.L2004
	addi 27,31,-1
.LVL2115:
	mr 29,27
.LVL2116:
.L2005:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2117:
	blt- 7,.L2699
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT3_ElemGLuint
.LVL2118:
	b .L2005
.LVL2119:
.L2698:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2016
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2120:
	bl UploadVertexPNT4_ElemGLuint
.LVL2121:
.L2016:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2585:
.LVL2122:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2123:
	bge- 7,.L2700
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT4_ElemGLuint
.LVL2124:
	b .L2585
.LVL2125:
.L2699:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2004
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2126:
	bl UploadVertexPNT3_ElemGLuint
.LVL2127:
.L2004:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2584:
.LVL2128:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2129:
	bge- 7,.L2701
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT3_ElemGLuint
.LVL2130:
	b .L2584
.LVL2131:
.L2003:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2009
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2132:
	li 30,0
.LVL2133:
	li 28,1
.LVL2134:
.L2010:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2135:
	bge- 7,.L2009
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT3_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNT3_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT3_ElemGLuint
	mr 3,26
	bl UploadVertexPNT3_ElemGLuint
.LVL2136:
	addi 30,30,2
	b .L2010
.LVL2137:
.L2700:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2138:
	bl UploadVertexPNT4_ElemGLuint
	b .L2255
.LVL2139:
.L2701:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2140:
	bl UploadVertexPNT3_ElemGLuint
	b .L2255
.LVL2141:
.L2009:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2142:
.L2012:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT3_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNT3_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT3_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2143:
	bl UploadVertexPNT3_ElemGLuint
.LVL2144:
	addi 30,30,2
	b .L2012
.LVL2145:
.L2015:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2021
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2146:
	li 30,0
.LVL2147:
	li 28,1
.LVL2148:
.L2022:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2149:
	bge- 7,.L2021
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT4_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNT4_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT4_ElemGLuint
	mr 3,26
	bl UploadVertexPNT4_ElemGLuint
.LVL2150:
	addi 30,30,2
	b .L2022
.LVL2151:
.L2691:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L1991
	cmpwi 7,29,0
	beq- 7,.L1992
	addi 27,31,-1
.LVL2152:
	mr 29,27
.LVL2153:
.L1993:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2154:
	blt- 7,.L2702
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT2_ElemGLuint
.LVL2155:
	b .L1993
.LVL2156:
.L2690:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L1979
	cmpwi 7,29,0
	beq- 7,.L1980
	addi 27,31,-1
.LVL2157:
	mr 29,27
.LVL2158:
.L1981:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2159:
	blt- 7,.L2703
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT1_ElemGLuint
.LVL2160:
	b .L1981
.LVL2161:
.L2021:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2162:
.L2024:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT4_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNT4_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT4_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2163:
	bl UploadVertexPNT4_ElemGLuint
.LVL2164:
	addi 30,30,2
	b .L2024
.LVL2165:
.L2702:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1992
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2166:
	bl UploadVertexPNT2_ElemGLuint
.LVL2167:
.L1992:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2583:
.LVL2168:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2169:
	bge- 7,.L2704
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT2_ElemGLuint
.LVL2170:
	b .L2583
.LVL2171:
.L1991:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1997
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2172:
	li 30,0
.LVL2173:
	li 28,1
.LVL2174:
.L1998:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2175:
	bge- 7,.L1997
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT2_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNT2_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT2_ElemGLuint
	mr 3,26
	bl UploadVertexPNT2_ElemGLuint
.LVL2176:
	addi 30,30,2
	b .L1998
.LVL2177:
.L2704:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2178:
	bl UploadVertexPNT2_ElemGLuint
	b .L2255
.LVL2179:
.L1997:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2180:
.L2000:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT2_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNT2_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT2_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2181:
	bl UploadVertexPNT2_ElemGLuint
.LVL2182:
	addi 30,30,2
	b .L2000
.LVL2183:
.L2703:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1980
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2184:
	bl UploadVertexPNT1_ElemGLuint
.LVL2185:
.L1980:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2582:
.LVL2186:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2187:
	bge- 7,.L2705
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT1_ElemGLuint
.LVL2188:
	b .L2582
.LVL2189:
.L1979:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1985
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2190:
	li 30,0
.LVL2191:
	li 28,1
.LVL2192:
.L1986:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2193:
	bge- 7,.L1985
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT1_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNT1_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT1_ElemGLuint
	mr 3,26
	bl UploadVertexPNT1_ElemGLuint
.LVL2194:
	addi 30,30,2
	b .L1986
.LVL2195:
.L2705:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2196:
	bl UploadVertexPNT1_ElemGLuint
	b .L2255
.LVL2197:
.L1985:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2198:
.L1988:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT1_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNT1_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT1_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2199:
	bl UploadVertexPNT1_ElemGLuint
.LVL2200:
	addi 30,30,2
	b .L1988
.LVL2201:
.L2696:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2051
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2202:
	bl UploadVertexPNT7_ElemGLuint
.LVL2203:
.L2051:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2588:
.LVL2204:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2205:
	bge- 7,.L2706
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT7_ElemGLuint
.LVL2206:
	b .L2588
.LVL2207:
.L2050:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2056
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2208:
	li 30,0
.LVL2209:
	li 28,1
.LVL2210:
.L2057:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2211:
	bge- 7,.L2056
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT7_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNT7_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT7_ElemGLuint
	mr 3,26
	bl UploadVertexPNT7_ElemGLuint
.LVL2212:
	addi 30,30,2
	b .L2057
.LVL2213:
.L2706:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2214:
	bl UploadVertexPNT7_ElemGLuint
	b .L2255
.LVL2215:
.L2056:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2216:
.L2059:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT7_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNT7_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT7_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2217:
	bl UploadVertexPNT7_ElemGLuint
.LVL2218:
	addi 30,30,2
	b .L2059
.LVL2219:
.L2695:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2039
	cmpwi 7,29,0
	beq- 7,.L2040
	addi 27,31,-1
.LVL2220:
	mr 29,27
.LVL2221:
.L2041:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2222:
	blt- 7,.L2707
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT6_ElemGLuint
.LVL2223:
	b .L2041
.LVL2224:
.L2694:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2027
	cmpwi 7,29,0
	beq- 7,.L2028
	addi 27,31,-1
.LVL2225:
	mr 29,27
.LVL2226:
.L2029:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2227:
	blt- 7,.L2708
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT5_ElemGLuint
.LVL2228:
	b .L2029
.LVL2229:
.L2707:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2040
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2230:
	bl UploadVertexPNT6_ElemGLuint
.LVL2231:
.L2040:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2587:
.LVL2232:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2233:
	bge- 7,.L2709
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT6_ElemGLuint
.LVL2234:
	b .L2587
.LVL2235:
.L2708:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2028
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2236:
	bl UploadVertexPNT5_ElemGLuint
.LVL2237:
.L2028:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2586:
.LVL2238:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2239:
	bge- 7,.L2710
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT5_ElemGLuint
.LVL2240:
	b .L2586
.LVL2241:
.L2027:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2033
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2242:
	li 30,0
.LVL2243:
	li 28,1
.LVL2244:
.L2034:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2245:
	bge- 7,.L2033
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT5_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNT5_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT5_ElemGLuint
	mr 3,26
	bl UploadVertexPNT5_ElemGLuint
.LVL2246:
	addi 30,30,2
	b .L2034
.LVL2247:
.L2710:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2248:
	bl UploadVertexPNT5_ElemGLuint
	b .L2255
.LVL2249:
.L2033:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2250:
.L2036:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT5_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNT5_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT5_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2251:
	bl UploadVertexPNT5_ElemGLuint
.LVL2252:
	addi 30,30,2
	b .L2036
.LVL2253:
.L2039:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2045
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2254:
	li 30,0
.LVL2255:
	li 28,1
.LVL2256:
.L2046:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2257:
	bge- 7,.L2045
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT6_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNT6_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT6_ElemGLuint
	mr 3,26
	bl UploadVertexPNT6_ElemGLuint
.LVL2258:
	addi 30,30,2
	b .L2046
.LVL2259:
.L2709:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2260:
	bl UploadVertexPNT6_ElemGLuint
	b .L2255
.LVL2261:
.L2045:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2262:
.L2048:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT6_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNT6_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT6_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2263:
	bl UploadVertexPNT6_ElemGLuint
.LVL2264:
	addi 30,30,2
	b .L2048
.LVL2265:
.L1973:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2266:
.L1976:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNT0_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNT0_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNT0_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2267:
	bl UploadVertexPNT0_ElemGLuint
.LVL2268:
	addi 30,30,2
	b .L1976
.LVL2269:
.L2688:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2229
	cmpwi 7,29,0
	beq- 7,.L2230
	addi 27,31,-1
.LVL2270:
	mr 29,27
.LVL2271:
.L2231:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2272:
	blt- 7,.L2711
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT6_ElemGLuint
.LVL2273:
	b .L2231
.LVL2274:
.L2687:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2217
	cmpwi 7,29,0
	beq- 7,.L2218
	addi 27,31,-1
.LVL2275:
	mr 29,27
.LVL2276:
.L2219:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2277:
	blt- 7,.L2712
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT5_ElemGLuint
.LVL2278:
	b .L2219
.LVL2279:
.L2711:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2230
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2280:
	bl UploadVertexPNCT6_ElemGLuint
.LVL2281:
.L2230:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2598:
.LVL2282:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2283:
	bge- 7,.L2713
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT6_ElemGLuint
.LVL2284:
	b .L2598
.LVL2285:
.L2712:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2218
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2286:
	bl UploadVertexPNCT5_ElemGLuint
.LVL2287:
.L2218:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2597:
.LVL2288:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2289:
	bge- 7,.L2714
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT5_ElemGLuint
.LVL2290:
	b .L2597
.LVL2291:
.L2217:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2223
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2292:
	li 30,0
.LVL2293:
	li 28,1
.LVL2294:
.L2224:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2295:
	bge- 7,.L2223
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT5_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNCT5_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNCT5_ElemGLuint
	mr 3,26
	bl UploadVertexPNCT5_ElemGLuint
.LVL2296:
	addi 30,30,2
	b .L2224
.LVL2297:
.L2713:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2298:
	bl UploadVertexPNCT6_ElemGLuint
	b .L2255
.LVL2299:
.L2223:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2300:
.L2226:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT5_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNCT5_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNCT5_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2301:
	bl UploadVertexPNCT5_ElemGLuint
.LVL2302:
	addi 30,30,2
	b .L2226
.LVL2303:
.L2229:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2235
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2304:
	li 30,0
.LVL2305:
	li 28,1
.LVL2306:
.L2236:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2307:
	bge- 7,.L2235
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT6_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNCT6_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNCT6_ElemGLuint
	mr 3,26
	bl UploadVertexPNCT6_ElemGLuint
.LVL2308:
	addi 30,30,2
	b .L2236
.LVL2309:
.L2714:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2310:
	bl UploadVertexPNCT5_ElemGLuint
	b .L2255
.LVL2311:
.L2235:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2312:
.L2238:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT6_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNCT6_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNCT6_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2313:
	bl UploadVertexPNCT6_ElemGLuint
.LVL2314:
	addi 30,30,2
	b .L2238
.LVL2315:
.L2686:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2205
	cmpwi 7,29,0
	beq- 7,.L2206
	addi 27,31,-1
.LVL2316:
	mr 29,27
.LVL2317:
.L2207:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2318:
	blt- 7,.L2715
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT4_ElemGLuint
.LVL2319:
	b .L2207
.LVL2320:
.L2685:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2193
	cmpwi 7,29,0
	beq- 7,.L2194
	addi 27,31,-1
.LVL2321:
	mr 29,27
.LVL2322:
.L2195:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2323:
	blt- 7,.L2716
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT3_ElemGLuint
.LVL2324:
	b .L2195
.LVL2325:
.L2715:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2206
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2326:
	bl UploadVertexPNCT4_ElemGLuint
.LVL2327:
.L2206:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2596:
.LVL2328:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2329:
	bge- 7,.L2717
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT4_ElemGLuint
.LVL2330:
	b .L2596
.LVL2331:
.L2716:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2194
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2332:
	bl UploadVertexPNCT3_ElemGLuint
.LVL2333:
.L2194:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2595:
.LVL2334:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2335:
	bge- 7,.L2718
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT3_ElemGLuint
.LVL2336:
	b .L2595
.LVL2337:
.L2193:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2199
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2338:
	li 30,0
.LVL2339:
	li 28,1
.LVL2340:
.L2200:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2341:
	bge- 7,.L2199
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT3_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNCT3_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNCT3_ElemGLuint
	mr 3,26
	bl UploadVertexPNCT3_ElemGLuint
.LVL2342:
	addi 30,30,2
	b .L2200
.LVL2343:
.L2717:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2344:
	bl UploadVertexPNCT4_ElemGLuint
	b .L2255
.LVL2345:
.L2718:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2346:
	bl UploadVertexPNCT3_ElemGLuint
	b .L2255
.LVL2347:
.L2199:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2348:
.L2202:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT3_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNCT3_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNCT3_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2349:
	bl UploadVertexPNCT3_ElemGLuint
.LVL2350:
	addi 30,30,2
	b .L2202
.LVL2351:
.L2205:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2211
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2352:
	li 30,0
.LVL2353:
	li 28,1
.LVL2354:
.L2212:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2355:
	bge- 7,.L2211
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT4_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNCT4_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNCT4_ElemGLuint
	mr 3,26
	bl UploadVertexPNCT4_ElemGLuint
.LVL2356:
	addi 30,30,2
	b .L2212
.LVL2357:
.L2684:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2181
	cmpwi 7,29,0
	beq- 7,.L2182
	addi 27,31,-1
.LVL2358:
	mr 29,27
.LVL2359:
.L2183:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2360:
	blt- 7,.L2719
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT2_ElemGLuint
.LVL2361:
	b .L2183
.LVL2362:
.L2683:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2169
	cmpwi 7,29,0
	beq- 7,.L2170
	addi 6,31,-1
.LVL2363:
	slwi 7,31,2
.LVL2364:
	cmpwi 7,6,-1
.LBB11245:
.LBB11246:
.LBB11247:
.LBB11248:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 5,wgPipe@ha
	addi 0,31,1
	bge+ 7,.L2171
	li 0,1
.LVL2365:
.L2171:
.LBE11248:
.LBE11247:
.LBE11246:
.LBE11245:
	.loc 1 1352 0 discriminator 1
	addic. 0,0,-1
.LBB11263:
.LBB11261:
.LBB11251:
.LBB11252:
	.loc 2 2400 0 discriminator 1
	addi 7,7,-4
.LBE11252:
.LBE11251:
.LBE11261:
.LBE11263:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2720
.LVL2366:
.LBB11264:
.LBB11262:
	.loc 1 577 0
	lwz 8,0(9)
.LBB11254:
.LBB11249:
	.loc 2 2219 0
	lwz 11,wgPipe@l(5)
.LBE11249:
.LBE11254:
	.loc 1 577 0
	lwzx 8,8,7
	rlwinm 8,8,0,0xffff
.LVL2367:
.LBB11255:
.LBB11250:
	.loc 2 2219 0
	sth 8,0(11)
	.loc 2 2220 0
.LVL2368:
.LBE11250:
.LBE11255:
.LBB11256:
.LBB11257:
	.loc 2 2261 0
	sth 8,0(11)
	.loc 2 2262 0
.LVL2369:
.LBE11257:
.LBE11256:
.LBB11258:
.LBB11259:
	.loc 2 2317 0
	sth 8,0(11)
	.loc 2 2318 0
.LVL2370:
.LBE11259:
.LBE11258:
.LBB11260:
.LBB11253:
	.loc 2 2399 0
	sth 8,0(11)
	.loc 2 2400 0
	b .L2171
.LVL2371:
.L2720:
.LBE11253:
.LBE11260:
.LBE11262:
.LBE11264:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2170
.LVL2372:
.LBB11265:
.LBB11266:
	.loc 1 577 0 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	slwi 6,6,2
.LVL2373:
	lwzx 0,11,6
.LBB11267:
.LBB11268:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
.LBE11268:
.LBE11267:
	.loc 1 577 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL2374:
.LBB11270:
.LBB11269:
	.loc 2 2219 0 discriminator 1
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL2375:
.LBE11269:
.LBE11270:
.LBB11271:
.LBB11272:
	.loc 2 2261 0 discriminator 1
	sth 0,0(11)
	.loc 2 2262 0 discriminator 1
.LVL2376:
.LBE11272:
.LBE11271:
.LBB11273:
.LBB11274:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL2377:
.LBE11274:
.LBE11273:
.LBB11275:
.LBB11276:
	.loc 2 2399 0 discriminator 1
	sth 0,0(11)
	.loc 2 2400 0 discriminator 1
.LVL2378:
.L2170:
.LBE11276:
.LBE11275:
.LBE11266:
.LBE11265:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 8,0
	beq- 7,.L2255
	cmpwi 7,31,0
.LBB11277:
.LBB11278:
.LBB11279:
.LBB11280:
	.loc 2 2219 0 discriminator 1
	lis 7,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2617
	li 31,1
.L2617:
.LVL2379:
.LBE11280:
.LBE11279:
.LBE11278:
.LBE11277:
	.loc 1 1352 0 discriminator 1
	addic. 31,31,-1
.LBB11293:
.LBB11291:
	.loc 1 577 0 discriminator 1
	slwi 0,8,2
.LBE11291:
.LBE11293:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2721
.LVL2380:
.LBB11294:
.LBB11292:
	.loc 1 577 0
	lwz 6,0(9)
.LBB11283:
.LBB11281:
	.loc 2 2219 0
	lwz 11,wgPipe@l(7)
.LBE11281:
.LBE11283:
	.loc 1 577 0
	lwzx 0,6,0
	rlwinm 0,0,0,0xffff
.LVL2381:
.LBB11284:
.LBB11282:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL2382:
.LBE11282:
.LBE11284:
.LBB11285:
.LBB11286:
	.loc 2 2261 0
	sth 0,0(11)
	.loc 2 2262 0
.LVL2383:
.LBE11286:
.LBE11285:
.LBB11287:
.LBB11288:
	.loc 2 2317 0
	sth 0,0(11)
	.loc 2 2318 0
.LVL2384:
.LBE11288:
.LBE11287:
.LBB11289:
.LBB11290:
	.loc 2 2399 0
	sth 0,0(11)
	.loc 2 2400 0
.LBE11290:
.LBE11289:
.LBE11292:
.LBE11294:
	.loc 1 1352 0
	addi 8,8,1
.LVL2385:
	b .L2617
.LVL2386:
.L2169:
	.loc 1 1352 0 is_stmt 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2175
	srawi 0,31,1
	addze. 0,0
	.loc 1 1352 0
	li 10,0
.LBB11295:
.LBB11296:
.LBB11297:
.LBB11298:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L2176
	li 0,1
.LVL2387:
.L2176:
.LBE11298:
.LBE11297:
.LBE11296:
.LBE11295:
	.loc 1 1352 0 discriminator 1
	addic. 0,0,-1
.LBB11310:
.LBB11311:
.LBB11312:
.LBB11313:
	.loc 2 2400 0 discriminator 1
	addi 7,10,8
.LBE11313:
.LBE11312:
.LBE11311:
.LBE11310:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2175
.LVL2388:
.LBB11323:
.LBB11309:
	.loc 1 577 0 discriminator 2
	lwz 8,0(9)
.LBB11301:
.LBB11299:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE11299:
.LBE11301:
	.loc 1 577 0 discriminator 2
	lwzx 8,8,10
	rlwinm 8,8,0,0xffff
.LVL2389:
.LBB11302:
.LBB11300:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2390:
.LBE11300:
.LBE11302:
.LBB11303:
.LBB11304:
	.loc 2 2261 0 discriminator 2
	sth 8,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2391:
.LBE11304:
.LBE11303:
.LBB11305:
.LBB11306:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2392:
.LBE11306:
.LBE11305:
.LBB11307:
.LBB11308:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2393:
.LBE11308:
.LBE11307:
.LBE11309:
.LBE11323:
.LBB11324:
.LBB11325:
	.loc 1 577 0 discriminator 2
	lwz 8,0(9)
.LVL2394:
	add 8,8,10
	lhz 8,6(8)
.LVL2395:
.LBB11326:
.LBB11327:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2396:
.LBE11327:
.LBE11326:
.LBB11328:
.LBB11329:
	.loc 2 2261 0 discriminator 2
	sth 8,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2397:
.LBE11329:
.LBE11328:
.LBB11330:
.LBB11331:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2398:
.LBE11331:
.LBE11330:
.LBB11332:
.LBB11333:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2399:
.LBE11333:
.LBE11332:
.LBE11325:
.LBE11324:
.LBB11334:
.LBB11335:
	.loc 1 577 0 discriminator 2
	lwz 8,0(9)
.LVL2400:
	add 10,8,10
.LVL2401:
	lhz 10,14(10)
.LVL2402:
.LBB11336:
.LBB11337:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2403:
.LBE11337:
.LBE11336:
.LBB11338:
.LBB11339:
	.loc 2 2261 0 discriminator 2
	sth 10,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2404:
.LBE11339:
.LBE11338:
.LBB11340:
.LBB11341:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2405:
.LBE11341:
.LBE11340:
.LBB11342:
.LBB11343:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2406:
.LBE11343:
.LBE11342:
.LBE11335:
.LBE11334:
.LBB11344:
.LBB11322:
	.loc 1 577 0 discriminator 2
	lwz 10,0(9)
.LVL2407:
	lwzx 10,10,7
	rlwinm 10,10,0,0xffff
.LVL2408:
.LBB11315:
.LBB11316:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2409:
.LBE11316:
.LBE11315:
.LBB11317:
.LBB11318:
	.loc 2 2261 0 discriminator 2
	sth 10,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2410:
.LBE11318:
.LBE11317:
.LBB11319:
.LBB11320:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2411:
.LBE11320:
.LBE11319:
.LBB11321:
.LBB11314:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
	mr 10,7
.LVL2412:
	b .L2176
.LVL2413:
.L2175:
.LBE11314:
.LBE11321:
.LBE11322:
.LBE11344:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1352 0 is_stmt 0
	li 10,0
	li 8,1
.LBB11345:
.LBB11346:
.LBB11347:
.LBB11348:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L2178
	li 31,1
.L2178:
.LVL2414:
.LBE11348:
.LBE11347:
.LBE11346:
.LBE11345:
	.loc 1 1352 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2255
.LVL2415:
.LBB11360:
.LBB11359:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
.LBB11351:
.LBB11349:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE11349:
.LBE11351:
	.loc 1 577 0 discriminator 2
	lwzx 0,6,10
	rlwinm 0,0,0,0xffff
.LVL2416:
.LBB11352:
.LBB11350:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2417:
.LBE11350:
.LBE11352:
.LBB11353:
.LBB11354:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2418:
.LBE11354:
.LBE11353:
.LBB11355:
.LBB11356:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2419:
.LBE11356:
.LBE11355:
.LBB11357:
.LBB11358:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2420:
.LBE11358:
.LBE11357:
.LBE11359:
.LBE11360:
.LBB11361:
.LBB11362:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,3
.LVL2421:
	lwzx 0,6,0
	rlwinm 0,0,0,0xffff
.LVL2422:
.LBB11363:
.LBB11364:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2423:
.LBE11364:
.LBE11363:
.LBB11365:
.LBB11366:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2424:
.LBE11366:
.LBE11365:
.LBB11367:
.LBB11368:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2425:
.LBE11368:
.LBE11367:
.LBB11369:
.LBB11370:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LBE11370:
.LBE11369:
.LBE11362:
.LBE11361:
.LBB11371:
.LBB11372:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
.LBE11372:
.LBE11371:
	.loc 1 1352 0 discriminator 2
	addi 8,8,1
.LVL2426:
.LBB11382:
.LBB11381:
	.loc 1 577 0 discriminator 2
	add 6,6,10
	lhz 0,14(6)
.LVL2427:
.LBB11373:
.LBB11374:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2428:
.LBE11374:
.LBE11373:
.LBB11375:
.LBB11376:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2429:
.LBE11376:
.LBE11375:
.LBB11377:
.LBB11378:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2430:
.LBE11378:
.LBE11377:
.LBB11379:
.LBB11380:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2431:
.LBE11380:
.LBE11379:
.LBE11381:
.LBE11382:
.LBB11383:
.LBB11384:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lhz 0,6(6)
.LVL2432:
.LBB11385:
.LBB11386:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2433:
.LBE11386:
.LBE11385:
.LBB11387:
.LBB11388:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2434:
.LBE11388:
.LBE11387:
.LBB11389:
.LBB11390:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2435:
.LBE11390:
.LBE11389:
.LBB11391:
.LBB11392:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2436:
	addi 10,10,8
.LVL2437:
	b .L2178
.LVL2438:
.L2721:
.LBE11392:
.LBE11391:
.LBE11384:
.LBE11383:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL2439:
.LBB11393:
.LBB11394:
	.loc 1 577 0
	lwz 9,.LANCHOR0@l(10)
	lhz 0,2(9)
.LVL2440:
.LBB11395:
.LBB11396:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL2441:
.LBE11396:
.LBE11395:
.LBB11397:
.LBB11398:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL2442:
.LBE11398:
.LBE11397:
.LBB11399:
.LBB11400:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL2443:
.LBE11400:
.LBE11399:
.LBB11401:
.LBB11402:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL2444:
.L2211:
.LBE11402:
.LBE11401:
.LBE11394:
.LBE11393:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0 is_stmt 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2445:
.L2214:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT4_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNCT4_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNCT4_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2446:
	bl UploadVertexPNCT4_ElemGLuint
.LVL2447:
	addi 30,30,2
	b .L2214
.LVL2448:
.L2719:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2182
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL2449:
	bl UploadVertexPNCT2_ElemGLuint
.LVL2450:
.L2182:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2594:
.LVL2451:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2452:
	bge- 7,.L2722
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT2_ElemGLuint
.LVL2453:
	b .L2594
.LVL2454:
.L2181:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2187
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL2455:
	li 30,0
.LVL2456:
	li 28,1
.LVL2457:
.L2188:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2458:
	bge- 7,.L2187
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT2_ElemGLuint
	addi 3,30,1
	bl UploadVertexPNCT2_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNCT2_ElemGLuint
	mr 3,26
	bl UploadVertexPNCT2_ElemGLuint
.LVL2459:
	addi 30,30,2
	b .L2188
.LVL2460:
.L2722:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL2461:
	bl UploadVertexPNCT2_ElemGLuint
	b .L2255
.LVL2462:
.L2187:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2463:
.L2190:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPNCT2_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPNCT2_ElemGLuint
	addi 3,30,3
	bl UploadVertexPNCT2_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL2464:
	bl UploadVertexPNCT2_ElemGLuint
.LVL2465:
	addi 30,30,2
	b .L2190
.LVL2466:
.L2664:
	.loc 1 1339 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L809
	.loc 1 1339 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL2467:
	bl UploadVertexPT7_Array
.LVL2468:
.L809:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2513:
.LVL2469:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2470:
	bge- 7,.L2723
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPT7_Array
.LVL2471:
	b .L2513
.LVL2472:
.L808:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L814
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL2473:
	li 30,0
.LVL2474:
	li 28,1
.LVL2475:
.L815:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2476:
	bge- 7,.L814
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPT7_Array
	addi 3,30,1
	bl UploadVertexPT7_Array
	addi 3,30,3
	bl UploadVertexPT7_Array
	mr 3,26
	bl UploadVertexPT7_Array
.LVL2477:
	addi 30,30,2
	b .L815
.LVL2478:
.L2723:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL2479:
	bl UploadVertexPT7_Array
	b .L2255
.LVL2480:
.L814:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2481:
.L817:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPT7_Array
	slwi 3,29,1
	bl UploadVertexPT7_Array
	addi 3,30,3
	bl UploadVertexPT7_Array
	addi 3,30,1
	addi 29,29,1
.LVL2482:
	bl UploadVertexPT7_Array
.LVL2483:
	addi 30,30,2
	b .L817
.LVL2484:
.L1488:
	.loc 1 1349 0 is_stmt 1 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1494
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL2485:
	li 30,0
.LVL2486:
	li 28,1
.LVL2487:
.L1495:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2488:
	bge- 7,.L1494
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPT0_ElemGLushort
	addi 3,30,1
	bl UploadVertexPT0_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT0_ElemGLushort
	mr 3,26
	bl UploadVertexPT0_ElemGLushort
.LVL2489:
	addi 30,30,2
	b .L1495
.LVL2490:
.L1494:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2491:
.L1497:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT0_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPT0_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT0_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL2492:
	bl UploadVertexPT0_ElemGLushort
.LVL2493:
	addi 30,30,2
	b .L1497
.LVL2494:
.L1296:
	.loc 1 1346 0 is_stmt 1 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1302
	srawi 0,31,1
	addze. 0,0
	.loc 1 1346 0
	li 10,0
.LBB11403:
.LBB11404:
.LBB11405:
.LBB11406:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L1303
	li 0,1
.LVL2495:
.L1303:
.LBE11406:
.LBE11405:
.LBE11404:
.LBE11403:
	.loc 1 1346 0 discriminator 1
	addic. 0,0,-1
.LBB11414:
.LBB11415:
.LBB11416:
.LBB11417:
	.loc 2 2318 0 discriminator 1
	addi 8,10,2
.LBE11417:
.LBE11416:
.LBE11415:
.LBE11414:
	.loc 1 1346 0 discriminator 1
	beq- 0,.L1302
.LVL2496:
.LBB11423:
.LBB11413:
	.loc 1 575 0 discriminator 2
	lwz 7,0(9)
.LBB11409:
.LBB11407:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE11407:
.LBE11409:
	.loc 1 575 0 discriminator 2
	lbzx 7,7,10
.LVL2497:
.LBB11410:
.LBB11408:
	.loc 2 2219 0 discriminator 2
	sth 7,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2498:
.LBE11408:
.LBE11410:
.LBB11411:
.LBB11412:
	.loc 2 2317 0 discriminator 2
	sth 7,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2499:
.LBE11412:
.LBE11411:
.LBE11413:
.LBE11423:
.LBB11424:
.LBB11425:
	.loc 1 575 0 discriminator 2
	lwz 7,0(9)
	add 7,7,10
	lbz 7,1(7)
.LVL2500:
.LBB11426:
.LBB11427:
	.loc 2 2219 0 discriminator 2
	sth 7,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2501:
.LBE11427:
.LBE11426:
.LBB11428:
.LBB11429:
	.loc 2 2317 0 discriminator 2
	sth 7,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2502:
.LBE11429:
.LBE11428:
.LBE11425:
.LBE11424:
.LBB11430:
.LBB11431:
	.loc 1 575 0 discriminator 2
	lwz 7,0(9)
.LVL2503:
	add 10,7,10
.LVL2504:
	lbz 10,3(10)
.LVL2505:
.LBB11432:
.LBB11433:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2506:
.LBE11433:
.LBE11432:
.LBB11434:
.LBB11435:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2507:
.LBE11435:
.LBE11434:
.LBE11431:
.LBE11430:
.LBB11436:
.LBB11422:
	.loc 1 575 0 discriminator 2
	lwz 10,0(9)
.LVL2508:
	lbzx 10,10,8
.LVL2509:
.LBB11419:
.LBB11420:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2510:
.LBE11420:
.LBE11419:
.LBB11421:
.LBB11418:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
	mr 10,8
	b .L1303
.LVL2511:
.L1302:
.LBE11418:
.LBE11421:
.LBE11422:
.LBE11436:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1346 0 is_stmt 0
	li 10,0
	li 8,1
.LBB11437:
.LBB11438:
.LBB11439:
.LBB11440:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L1305
	li 31,1
.L1305:
.LVL2512:
.LBE11440:
.LBE11439:
.LBE11438:
.LBE11437:
	.loc 1 1346 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2255
.LVL2513:
.LBB11448:
.LBB11447:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
.LBB11443:
.LBB11441:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE11441:
.LBE11443:
	.loc 1 575 0 discriminator 2
	lbzx 0,6,10
.LVL2514:
.LBB11444:
.LBB11442:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2515:
.LBE11442:
.LBE11444:
.LBB11445:
.LBB11446:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2516:
.LBE11446:
.LBE11445:
.LBE11447:
.LBE11448:
.LBB11449:
.LBB11450:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,1
	lbzx 0,6,0
.LVL2517:
.LBB11451:
.LBB11452:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2518:
.LBE11452:
.LBE11451:
.LBB11453:
.LBB11454:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LBE11454:
.LBE11453:
.LBE11450:
.LBE11449:
.LBB11455:
.LBB11456:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
.LBE11456:
.LBE11455:
	.loc 1 1346 0 discriminator 2
	addi 8,8,1
.LVL2519:
.LBB11462:
.LBB11461:
	.loc 1 575 0 discriminator 2
	add 6,6,10
	lbz 0,3(6)
.LVL2520:
.LBB11457:
.LBB11458:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2521:
.LBE11458:
.LBE11457:
.LBB11459:
.LBB11460:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2522:
.LBE11460:
.LBE11459:
.LBE11461:
.LBE11462:
.LBB11463:
.LBB11464:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lbz 0,1(6)
.LVL2523:
.LBB11465:
.LBB11466:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2524:
.LBE11466:
.LBE11465:
.LBB11467:
.LBB11468:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2525:
	addi 10,10,2
.LVL2526:
	b .L1305
.LVL2527:
.L1295:
.LBE11468:
.LBE11467:
.LBE11464:
.LBE11463:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,8,1
	beq- 7,.L2724
	cmpwi 7,8,2
	beq- 7,.L2725
	cmpwi 7,8,3
	beq- 7,.L2726
	cmpwi 7,8,4
	beq- 7,.L2727
	cmpwi 7,8,5
	beq- 7,.L2728
	cmpwi 7,8,6
	beq- 7,.L2729
	cmpwi 7,8,7
	bne+ 7,.L719
.LVL2528:
	.loc 1 1346 0 is_stmt 0 discriminator 1
	bne- 4,.L1379
	cmpwi 7,29,0
	beq- 7,.L1380
	addi 27,31,-1
.LVL2529:
	mr 29,27
.LVL2530:
.L1381:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2531:
	blt- 7,.L2730
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT7_ElemGLubyte
.LVL2532:
	b .L1381
.LVL2533:
.L2730:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1380
	.loc 1 1346 0 discriminator 1
	mr 3,27
	bl UploadVertexPCT7_ElemGLubyte
.LVL2534:
.L1380:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2543:
.LVL2535:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2536:
	bge- 7,.L2731
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT7_ElemGLubyte
.LVL2537:
	b .L2543
.LVL2538:
.L1379:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1385
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL2539:
	li 30,0
.LVL2540:
	li 28,1
.LVL2541:
.L1386:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2542:
	bge- 7,.L1385
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT7_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPCT7_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPCT7_ElemGLubyte
	mr 3,26
	bl UploadVertexPCT7_ElemGLubyte
.LVL2543:
	addi 30,30,2
	b .L1386
.LVL2544:
.L2731:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL2545:
	bl UploadVertexPCT7_ElemGLubyte
	b .L2255
.LVL2546:
.L1385:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2547:
.L1388:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT7_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPCT7_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPCT7_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL2548:
	bl UploadVertexPCT7_ElemGLubyte
.LVL2549:
	addi 30,30,2
	b .L1388
.LVL2550:
.L2729:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1368
	cmpwi 7,29,0
	beq- 7,.L1369
	addi 27,31,-1
.LVL2551:
	mr 29,27
.LVL2552:
.L1370:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2553:
	blt- 7,.L2732
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT6_ElemGLubyte
.LVL2554:
	b .L1370
.LVL2555:
.L2728:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1356
	cmpwi 7,29,0
	beq- 7,.L1357
	addi 27,31,-1
.LVL2556:
	mr 29,27
.LVL2557:
.L1358:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2558:
	blt- 7,.L2733
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT5_ElemGLubyte
.LVL2559:
	b .L1358
.LVL2560:
.L2732:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1369
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL2561:
	bl UploadVertexPCT6_ElemGLubyte
.LVL2562:
.L1369:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2542:
.LVL2563:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2564:
	bge- 7,.L2734
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT6_ElemGLubyte
.LVL2565:
	b .L2542
.LVL2566:
.L2733:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1357
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL2567:
	bl UploadVertexPCT5_ElemGLubyte
.LVL2568:
.L1357:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2541:
.LVL2569:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2570:
	bge- 7,.L2735
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT5_ElemGLubyte
.LVL2571:
	b .L2541
.LVL2572:
.L1356:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1362
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL2573:
	li 30,0
.LVL2574:
	li 28,1
.LVL2575:
.L1363:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2576:
	bge- 7,.L1362
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT5_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPCT5_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPCT5_ElemGLubyte
	mr 3,26
	bl UploadVertexPCT5_ElemGLubyte
.LVL2577:
	addi 30,30,2
	b .L1363
.LVL2578:
.L2735:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL2579:
	bl UploadVertexPCT5_ElemGLubyte
	b .L2255
.LVL2580:
.L1362:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2581:
.L1365:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT5_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPCT5_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPCT5_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL2582:
	bl UploadVertexPCT5_ElemGLubyte
.LVL2583:
	addi 30,30,2
	b .L1365
.LVL2584:
.L1368:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1374
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL2585:
	li 30,0
.LVL2586:
	li 28,1
.LVL2587:
.L1375:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2588:
	bge- 7,.L1374
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT6_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPCT6_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPCT6_ElemGLubyte
	mr 3,26
	bl UploadVertexPCT6_ElemGLubyte
.LVL2589:
	addi 30,30,2
	b .L1375
.LVL2590:
.L2734:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL2591:
	bl UploadVertexPCT6_ElemGLubyte
	b .L2255
.LVL2592:
.L1374:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2593:
.L1377:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT6_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPCT6_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPCT6_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL2594:
	bl UploadVertexPCT6_ElemGLubyte
.LVL2595:
	addi 30,30,2
	b .L1377
.LVL2596:
.L2727:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1344
	cmpwi 7,29,0
	beq- 7,.L1345
	addi 27,31,-1
.LVL2597:
	mr 29,27
.LVL2598:
.L1346:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2599:
	blt- 7,.L2736
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT4_ElemGLubyte
.LVL2600:
	b .L1346
.LVL2601:
.L2726:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1332
	cmpwi 7,29,0
	beq- 7,.L1333
	addi 27,31,-1
.LVL2602:
	mr 29,27
.LVL2603:
.L1334:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2604:
	blt- 7,.L2737
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT3_ElemGLubyte
.LVL2605:
	b .L1334
.LVL2606:
.L2736:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1345
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL2607:
	bl UploadVertexPCT4_ElemGLubyte
.LVL2608:
.L1345:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2540:
.LVL2609:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2610:
	bge- 7,.L2738
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT4_ElemGLubyte
.LVL2611:
	b .L2540
.LVL2612:
.L2737:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1333
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL2613:
	bl UploadVertexPCT3_ElemGLubyte
.LVL2614:
.L1333:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2539:
.LVL2615:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2616:
	bge- 7,.L2739
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT3_ElemGLubyte
.LVL2617:
	b .L2539
.LVL2618:
.L1332:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1338
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL2619:
	li 30,0
.LVL2620:
	li 28,1
.LVL2621:
.L1339:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2622:
	bge- 7,.L1338
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT3_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPCT3_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPCT3_ElemGLubyte
	mr 3,26
	bl UploadVertexPCT3_ElemGLubyte
.LVL2623:
	addi 30,30,2
	b .L1339
.LVL2624:
.L2738:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL2625:
	bl UploadVertexPCT4_ElemGLubyte
	b .L2255
.LVL2626:
.L2739:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL2627:
	bl UploadVertexPCT3_ElemGLubyte
	b .L2255
.LVL2628:
.L1338:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2629:
.L1341:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT3_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPCT3_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPCT3_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL2630:
	bl UploadVertexPCT3_ElemGLubyte
.LVL2631:
	addi 30,30,2
	b .L1341
.LVL2632:
.L1344:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1350
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL2633:
	li 30,0
.LVL2634:
	li 28,1
.LVL2635:
.L1351:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL2636:
	bge- 7,.L1350
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT4_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPCT4_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPCT4_ElemGLubyte
	mr 3,26
	bl UploadVertexPCT4_ElemGLubyte
.LVL2637:
	addi 30,30,2
	b .L1351
.LVL2638:
.L2725:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1320
	cmpwi 7,29,0
	beq- 7,.L1321
	addi 6,31,-1
.LVL2639:
	mr 7,31
.LVL2640:
	cmpwi 7,6,-1
.LBB11469:
.LBB11470:
.LBB11471:
.LBB11472:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 5,wgPipe@ha
	addi 0,31,1
	bge+ 7,.L1322
	li 0,1
.LVL2641:
.L1322:
.LBE11472:
.LBE11471:
.LBE11470:
.LBE11469:
	.loc 1 1346 0 discriminator 1
	addic. 0,0,-1
.LBB11487:
.LBB11485:
.LBB11475:
.LBB11476:
	.loc 2 2400 0 discriminator 1
	addi 7,7,-1
.LBE11476:
.LBE11475:
.LBE11485:
.LBE11487:
	.loc 1 1346 0 discriminator 1
	beq- 0,.L2740
.LVL2642:
.LBB11488:
.LBB11486:
	.loc 1 575 0
	lwz 8,0(9)
.LBB11478:
.LBB11473:
	.loc 2 2219 0
	lwz 11,wgPipe@l(5)
.LBE11473:
.LBE11478:
	.loc 1 575 0
	lbzx 8,8,7
.LVL2643:
.LBB11479:
.LBB11474:
	.loc 2 2219 0
	sth 8,0(11)
	.loc 2 2220 0
.LVL2644:
.LBE11474:
.LBE11479:
.LBB11480:
.LBB11481:
	.loc 2 2317 0
	sth 8,0(11)
	.loc 2 2318 0
.LVL2645:
.LBE11481:
.LBE11480:
.LBB11482:
.LBB11483:
	.loc 2 2399 0
	sth 8,0(11)
	.loc 2 2400 0
.LVL2646:
.LBE11483:
.LBE11482:
.LBB11484:
.LBB11477:
	.loc 2 2399 0
	sth 8,0(11)
	.loc 2 2400 0
	b .L1322
.LVL2647:
.L2740:
.LBE11477:
.LBE11484:
.LBE11486:
.LBE11488:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1321
.LVL2648:
.LBB11489:
.LBB11490:
	.loc 1 575 0 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	lbzx 0,11,6
.LVL2649:
.LBB11491:
.LBB11492:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL2650:
.LBE11492:
.LBE11491:
.LBB11493:
.LBB11494:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL2651:
.LBE11494:
.LBE11493:
.LBB11495:
.LBB11496:
	.loc 2 2399 0 discriminator 1
	sth 0,0(11)
	.loc 2 2400 0 discriminator 1
.LVL2652:
.LBE11496:
.LBE11495:
.LBB11497:
.LBB11498:
	.loc 2 2399 0 discriminator 1
	sth 0,0(11)
	.loc 2 2400 0 discriminator 1
.LVL2653:
.L1321:
.LBE11498:
.LBE11497:
.LBE11490:
.LBE11489:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 8,0
	beq- 7,.L2255
	cmpwi 7,31,0
.LBB11499:
.LBB11500:
.LBB11501:
.LBB11502:
	.loc 2 2219 0 discriminator 1
	lis 7,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2607
	li 31,1
.L2607:
.LVL2654:
.LBE11502:
.LBE11501:
.LBE11500:
.LBE11499:
	.loc 1 1346 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2741
.LVL2655:
.LBB11514:
.LBB11513:
	.loc 1 575 0
	lwz 6,0(9)
.LBB11505:
.LBB11503:
	.loc 2 2219 0
	lwz 11,wgPipe@l(7)
.LBE11503:
.LBE11505:
	.loc 1 575 0
	lbzx 0,6,8
.LVL2656:
.LBB11506:
.LBB11504:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL2657:
.LBE11504:
.LBE11506:
.LBB11507:
.LBB11508:
	.loc 2 2317 0
	sth 0,0(11)
	.loc 2 2318 0
.LVL2658:
.LBE11508:
.LBE11507:
.LBB11509:
.LBB11510:
	.loc 2 2399 0
	sth 0,0(11)
	.loc 2 2400 0
.LVL2659:
.LBE11510:
.LBE11509:
.LBB11511:
.LBB11512:
	.loc 2 2399 0
	sth 0,0(11)
	.loc 2 2400 0
.LBE11512:
.LBE11511:
.LBE11513:
.LBE11514:
	.loc 1 1346 0
	addi 8,8,1
.LVL2660:
	b .L2607
.LVL2661:
.L2724:
	.loc 1 1346 0 is_stmt 0 discriminator 1
	bne- 4,.L1308
	cmpwi 7,29,0
	beq- 7,.L1309
	addi 6,31,-1
.LVL2662:
	mr 11,31
	cmpwi 7,6,-1
.LBB11515:
.LBB11516:
.LBB11517:
.LBB11518:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 5,wgPipe@ha
	addi 0,31,1
	bge+ 7,.L1310
	li 0,1
.LVL2663:
.L1310:
.LBE11518:
.LBE11517:
.LBE11516:
.LBE11515:
	.loc 1 1346 0 discriminator 1
	addic. 0,0,-1
.LBB11531:
.LBB11529:
.LBB11521:
.LBB11522:
	.loc 2 2400 0 discriminator 1
	addi 11,11,-1
.LBE11522:
.LBE11521:
.LBE11529:
.LBE11531:
	.loc 1 1346 0 discriminator 1
	beq- 0,.L2742
.LVL2664:
.LBB11532:
.LBB11530:
	.loc 1 575 0
	lwz 7,0(9)
.LBB11524:
.LBB11519:
	.loc 2 2219 0
	lwz 8,wgPipe@l(5)
.LBE11519:
.LBE11524:
	.loc 1 575 0
	lbzx 7,7,11
.LVL2665:
.LBB11525:
.LBB11520:
	.loc 2 2219 0
	sth 7,0(8)
	.loc 2 2220 0
.LVL2666:
.LBE11520:
.LBE11525:
.LBB11526:
.LBB11527:
	.loc 2 2317 0
	sth 7,0(8)
	.loc 2 2318 0
.LVL2667:
.LBE11527:
.LBE11526:
.LBB11528:
.LBB11523:
	.loc 2 2399 0
	sth 7,0(8)
	.loc 2 2400 0
	b .L1310
.LVL2668:
.L2742:
.LBE11523:
.LBE11528:
.LBE11530:
.LBE11532:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1309
.LVL2669:
.LBB11533:
.LBB11534:
	.loc 1 575 0 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	lbzx 0,11,6
.LVL2670:
.LBB11535:
.LBB11536:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL2671:
.LBE11536:
.LBE11535:
.LBB11537:
.LBB11538:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL2672:
.LBE11538:
.LBE11537:
.LBB11539:
.LBB11540:
	.loc 2 2399 0 discriminator 1
	sth 0,0(11)
	.loc 2 2400 0 discriminator 1
.LVL2673:
.L1309:
.LBE11540:
.LBE11539:
.LBE11534:
.LBE11533:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 11,0
	beq- 7,.L2255
	cmpwi 7,31,0
.LBB11541:
.LBB11542:
.LBB11543:
.LBB11544:
	.loc 2 2219 0 discriminator 1
	lis 7,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2606
	li 31,1
.L2606:
.LVL2674:
.LBE11544:
.LBE11543:
.LBE11542:
.LBE11541:
	.loc 1 1346 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2743
.LVL2675:
.LBB11554:
.LBB11553:
	.loc 1 575 0
	lwz 6,0(9)
.LBB11547:
.LBB11545:
	.loc 2 2219 0
	lwz 8,wgPipe@l(7)
.LBE11545:
.LBE11547:
	.loc 1 575 0
	lbzx 0,6,11
.LVL2676:
.LBB11548:
.LBB11546:
	.loc 2 2219 0
	sth 0,0(8)
	.loc 2 2220 0
.LVL2677:
.LBE11546:
.LBE11548:
.LBB11549:
.LBB11550:
	.loc 2 2317 0
	sth 0,0(8)
	.loc 2 2318 0
.LVL2678:
.LBE11550:
.LBE11549:
.LBB11551:
.LBB11552:
	.loc 2 2399 0
	sth 0,0(8)
	.loc 2 2400 0
.LBE11552:
.LBE11551:
.LBE11553:
.LBE11554:
	.loc 1 1346 0
	addi 11,11,1
.LVL2679:
	b .L2606
.LVL2680:
.L1308:
	.loc 1 1346 0 is_stmt 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1314
	srawi 0,31,1
	addze. 0,0
	.loc 1 1346 0
	li 10,0
.LBB11555:
.LBB11556:
.LBB11557:
.LBB11558:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L1315
	li 0,1
.LVL2681:
.L1315:
.LBE11558:
.LBE11557:
.LBE11556:
.LBE11555:
	.loc 1 1346 0 discriminator 1
	addic. 0,0,-1
.LBB11568:
.LBB11569:
.LBB11570:
.LBB11571:
	.loc 2 2400 0 discriminator 1
	addi 7,10,2
.LBE11571:
.LBE11570:
.LBE11569:
.LBE11568:
	.loc 1 1346 0 discriminator 1
	beq- 0,.L1314
.LVL2682:
.LBB11579:
.LBB11567:
	.loc 1 575 0 discriminator 2
	lwz 8,0(9)
.LBB11561:
.LBB11559:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE11559:
.LBE11561:
	.loc 1 575 0 discriminator 2
	lbzx 8,8,10
.LVL2683:
.LBB11562:
.LBB11560:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2684:
.LBE11560:
.LBE11562:
.LBB11563:
.LBB11564:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2685:
.LBE11564:
.LBE11563:
.LBB11565:
.LBB11566:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2686:
.LBE11566:
.LBE11565:
.LBE11567:
.LBE11579:
.LBB11580:
.LBB11581:
	.loc 1 575 0 discriminator 2
	lwz 8,0(9)
	add 8,8,10
	lbz 8,1(8)
.LVL2687:
.LBB11582:
.LBB11583:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2688:
.LBE11583:
.LBE11582:
.LBB11584:
.LBB11585:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2689:
.LBE11585:
.LBE11584:
.LBB11586:
.LBB11587:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2690:
.LBE11587:
.LBE11586:
.LBE11581:
.LBE11580:
.LBB11588:
.LBB11589:
	.loc 1 575 0 discriminator 2
	lwz 8,0(9)
.LVL2691:
	add 10,8,10
.LVL2692:
	lbz 10,3(10)
.LVL2693:
.LBB11590:
.LBB11591:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2694:
.LBE11591:
.LBE11590:
.LBB11592:
.LBB11593:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2695:
.LBE11593:
.LBE11592:
.LBB11594:
.LBB11595:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2696:
.LBE11595:
.LBE11594:
.LBE11589:
.LBE11588:
.LBB11596:
.LBB11578:
	.loc 1 575 0 discriminator 2
	lwz 10,0(9)
.LVL2697:
	lbzx 10,10,7
.LVL2698:
.LBB11573:
.LBB11574:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2699:
.LBE11574:
.LBE11573:
.LBB11575:
.LBB11576:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2700:
.LBE11576:
.LBE11575:
.LBB11577:
.LBB11572:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
	mr 10,7
	b .L1315
.LVL2701:
.L1314:
.LBE11572:
.LBE11577:
.LBE11578:
.LBE11596:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1346 0 is_stmt 0
	li 10,0
	li 8,1
.LBB11597:
.LBB11598:
.LBB11599:
.LBB11600:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L1317
	li 31,1
.L1317:
.LVL2702:
.LBE11600:
.LBE11599:
.LBE11598:
.LBE11597:
	.loc 1 1346 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2255
.LVL2703:
.LBB11610:
.LBB11609:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
.LBB11603:
.LBB11601:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE11601:
.LBE11603:
	.loc 1 575 0 discriminator 2
	lbzx 0,6,10
.LVL2704:
.LBB11604:
.LBB11602:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2705:
.LBE11602:
.LBE11604:
.LBB11605:
.LBB11606:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2706:
.LBE11606:
.LBE11605:
.LBB11607:
.LBB11608:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2707:
.LBE11608:
.LBE11607:
.LBE11609:
.LBE11610:
.LBB11611:
.LBB11612:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,1
	lbzx 0,6,0
.LVL2708:
.LBB11613:
.LBB11614:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2709:
.LBE11614:
.LBE11613:
.LBB11615:
.LBB11616:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2710:
.LBE11616:
.LBE11615:
.LBB11617:
.LBB11618:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LBE11618:
.LBE11617:
.LBE11612:
.LBE11611:
.LBB11619:
.LBB11620:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
.LBE11620:
.LBE11619:
	.loc 1 1346 0 discriminator 2
	addi 8,8,1
.LVL2711:
.LBB11628:
.LBB11627:
	.loc 1 575 0 discriminator 2
	add 6,6,10
	lbz 0,3(6)
.LVL2712:
.LBB11621:
.LBB11622:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2713:
.LBE11622:
.LBE11621:
.LBB11623:
.LBB11624:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2714:
.LBE11624:
.LBE11623:
.LBB11625:
.LBB11626:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2715:
.LBE11626:
.LBE11625:
.LBE11627:
.LBE11628:
.LBB11629:
.LBB11630:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lbz 0,1(6)
.LVL2716:
.LBB11631:
.LBB11632:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2717:
.LBE11632:
.LBE11631:
.LBB11633:
.LBB11634:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2718:
.LBE11634:
.LBE11633:
.LBB11635:
.LBB11636:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2719:
	addi 10,10,2
.LVL2720:
	b .L1317
.LVL2721:
.L2743:
.LBE11636:
.LBE11635:
.LBE11630:
.LBE11629:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL2722:
.LBB11637:
.LBB11638:
	.loc 1 575 0
	lwz 9,.LANCHOR0@l(10)
	lbz 0,0(9)
.LVL2723:
.LBB11639:
.LBB11640:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL2724:
.LBE11640:
.LBE11639:
.LBB11641:
.LBB11642:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL2725:
.LBE11642:
.LBE11641:
.LBB11643:
.LBB11644:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL2726:
.L1320:
.LBE11644:
.LBE11643:
.LBE11638:
.LBE11637:
	.loc 1 1346 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1326
	srawi 0,31,1
	addze. 0,0
	.loc 1 1346 0
	li 10,0
.LBB11645:
.LBB11646:
.LBB11647:
.LBB11648:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L1327
	li 0,1
.LVL2727:
.L1327:
.LBE11648:
.LBE11647:
.LBE11646:
.LBE11645:
	.loc 1 1346 0 discriminator 1
	addic. 0,0,-1
.LBB11660:
.LBB11661:
.LBB11662:
.LBB11663:
	.loc 2 2400 0 discriminator 1
	addi 7,10,2
.LBE11663:
.LBE11662:
.LBE11661:
.LBE11660:
	.loc 1 1346 0 discriminator 1
	beq- 0,.L1326
.LVL2728:
.LBB11673:
.LBB11659:
	.loc 1 575 0 discriminator 2
	lwz 8,0(9)
.LBB11651:
.LBB11649:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE11649:
.LBE11651:
	.loc 1 575 0 discriminator 2
	lbzx 8,8,10
.LVL2729:
.LBB11652:
.LBB11650:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2730:
.LBE11650:
.LBE11652:
.LBB11653:
.LBB11654:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2731:
.LBE11654:
.LBE11653:
.LBB11655:
.LBB11656:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2732:
.LBE11656:
.LBE11655:
.LBB11657:
.LBB11658:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2733:
.LBE11658:
.LBE11657:
.LBE11659:
.LBE11673:
.LBB11674:
.LBB11675:
	.loc 1 575 0 discriminator 2
	lwz 8,0(9)
	add 8,8,10
	lbz 8,1(8)
.LVL2734:
.LBB11676:
.LBB11677:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2735:
.LBE11677:
.LBE11676:
.LBB11678:
.LBB11679:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2736:
.LBE11679:
.LBE11678:
.LBB11680:
.LBB11681:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2737:
.LBE11681:
.LBE11680:
.LBB11682:
.LBB11683:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2738:
.LBE11683:
.LBE11682:
.LBE11675:
.LBE11674:
.LBB11684:
.LBB11685:
	.loc 1 575 0 discriminator 2
	lwz 8,0(9)
.LVL2739:
	add 10,8,10
.LVL2740:
	lbz 10,3(10)
.LVL2741:
.LBB11686:
.LBB11687:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2742:
.LBE11687:
.LBE11686:
.LBB11688:
.LBB11689:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2743:
.LBE11689:
.LBE11688:
.LBB11690:
.LBB11691:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2744:
.LBE11691:
.LBE11690:
.LBB11692:
.LBB11693:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2745:
.LBE11693:
.LBE11692:
.LBE11685:
.LBE11684:
.LBB11694:
.LBB11672:
	.loc 1 575 0 discriminator 2
	lwz 10,0(9)
.LVL2746:
	lbzx 10,10,7
.LVL2747:
.LBB11665:
.LBB11666:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2748:
.LBE11666:
.LBE11665:
.LBB11667:
.LBB11668:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2749:
.LBE11668:
.LBE11667:
.LBB11669:
.LBB11670:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2750:
.LBE11670:
.LBE11669:
.LBB11671:
.LBB11664:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
	mr 10,7
	b .L1327
.LVL2751:
.L1326:
.LBE11664:
.LBE11671:
.LBE11672:
.LBE11694:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1346 0 is_stmt 0
	li 10,0
	li 8,1
.LBB11695:
.LBB11696:
.LBB11697:
.LBB11698:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L1329
	li 31,1
.L1329:
.LVL2752:
.LBE11698:
.LBE11697:
.LBE11696:
.LBE11695:
	.loc 1 1346 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2255
.LVL2753:
.LBB11710:
.LBB11709:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
.LBB11701:
.LBB11699:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE11699:
.LBE11701:
	.loc 1 575 0 discriminator 2
	lbzx 0,6,10
.LVL2754:
.LBB11702:
.LBB11700:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2755:
.LBE11700:
.LBE11702:
.LBB11703:
.LBB11704:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2756:
.LBE11704:
.LBE11703:
.LBB11705:
.LBB11706:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2757:
.LBE11706:
.LBE11705:
.LBB11707:
.LBB11708:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2758:
.LBE11708:
.LBE11707:
.LBE11709:
.LBE11710:
.LBB11711:
.LBB11712:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,1
	lbzx 0,6,0
.LVL2759:
.LBB11713:
.LBB11714:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2760:
.LBE11714:
.LBE11713:
.LBB11715:
.LBB11716:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2761:
.LBE11716:
.LBE11715:
.LBB11717:
.LBB11718:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2762:
.LBE11718:
.LBE11717:
.LBB11719:
.LBB11720:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LBE11720:
.LBE11719:
.LBE11712:
.LBE11711:
.LBB11721:
.LBB11722:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
.LBE11722:
.LBE11721:
	.loc 1 1346 0 discriminator 2
	addi 8,8,1
.LVL2763:
.LBB11732:
.LBB11731:
	.loc 1 575 0 discriminator 2
	add 6,6,10
	lbz 0,3(6)
.LVL2764:
.LBB11723:
.LBB11724:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2765:
.LBE11724:
.LBE11723:
.LBB11725:
.LBB11726:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2766:
.LBE11726:
.LBE11725:
.LBB11727:
.LBB11728:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2767:
.LBE11728:
.LBE11727:
.LBB11729:
.LBB11730:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2768:
.LBE11730:
.LBE11729:
.LBE11731:
.LBE11732:
.LBB11733:
.LBB11734:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lbz 0,1(6)
.LVL2769:
.LBB11735:
.LBB11736:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2770:
.LBE11736:
.LBE11735:
.LBB11737:
.LBB11738:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2771:
.LBE11738:
.LBE11737:
.LBB11739:
.LBB11740:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2772:
.LBE11740:
.LBE11739:
.LBB11741:
.LBB11742:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL2773:
	addi 10,10,2
.LVL2774:
	b .L1329
.LVL2775:
.L1350:
.LBE11742:
.LBE11741:
.LBE11734:
.LBE11733:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0 is_stmt 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL2776:
.L1353:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPCT4_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPCT4_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPCT4_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL2777:
	bl UploadVertexPCT4_ElemGLubyte
.LVL2778:
	addi 30,30,2
	b .L1353
.LVL2779:
.L2741:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL2780:
.LBB11743:
.LBB11744:
	.loc 1 575 0 is_stmt 1
	lwz 9,.LANCHOR0@l(10)
	lbz 0,0(9)
.LVL2781:
.LBB11745:
.LBB11746:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL2782:
.LBE11746:
.LBE11745:
.LBB11747:
.LBB11748:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL2783:
.LBE11748:
.LBE11747:
.LBB11749:
.LBB11750:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL2784:
.LBE11750:
.LBE11749:
.LBB11751:
.LBB11752:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL2785:
.L2673:
.LBE11752:
.LBE11751:
.LBE11744:
.LBE11743:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1392
.LVL2786:
.LBB11753:
.LBB11754:
	.loc 1 575 0 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	lbzx 0,11,6
.LVL2787:
.LBB11755:
.LBB11756:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL2788:
.LBE11756:
.LBE11755:
.LBB11757:
.LBB11758:
	.loc 2 2261 0 discriminator 1
	sth 0,0(11)
	.loc 2 2262 0 discriminator 1
.LVL2789:
.LBE11758:
.LBE11757:
.LBB11759:
.LBB11760:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL2790:
.L1392:
.LBE11760:
.LBE11759:
.LBE11754:
.LBE11753:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 11,0
	beq- 7,.L2255
	cmpwi 7,31,0
.LBB11761:
.LBB11762:
.LBB11763:
.LBB11764:
	.loc 2 2219 0 discriminator 1
	lis 7,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2608
	li 31,1
.L2608:
.LVL2791:
.LBE11764:
.LBE11763:
.LBE11762:
.LBE11761:
	.loc 1 1346 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2744
.LVL2792:
.LBB11774:
.LBB11773:
	.loc 1 575 0
	lwz 6,0(9)
.LBB11767:
.LBB11765:
	.loc 2 2219 0
	lwz 8,wgPipe@l(7)
.LBE11765:
.LBE11767:
	.loc 1 575 0
	lbzx 0,6,11
.LVL2793:
.LBB11768:
.LBB11766:
	.loc 2 2219 0
	sth 0,0(8)
	.loc 2 2220 0
.LVL2794:
.LBE11766:
.LBE11768:
.LBB11769:
.LBB11770:
	.loc 2 2261 0
	sth 0,0(8)
	.loc 2 2262 0
.LVL2795:
.LBE11770:
.LBE11769:
.LBB11771:
.LBB11772:
	.loc 2 2317 0
	sth 0,0(8)
	.loc 2 2318 0
.LBE11772:
.LBE11771:
.LBE11773:
.LBE11774:
	.loc 1 1346 0
	addi 11,11,1
.LVL2796:
	b .L2608
.LVL2797:
.L1391:
	.loc 1 1346 0 is_stmt 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1397
	srawi 0,31,1
	addze. 0,0
	.loc 1 1346 0
	li 10,0
.LBB11775:
.LBB11776:
.LBB11777:
.LBB11778:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L1398
	li 0,1
.LVL2798:
.L1398:
.LBE11778:
.LBE11777:
.LBE11776:
.LBE11775:
	.loc 1 1346 0 discriminator 1
	addic. 0,0,-1
.LBB11788:
.LBB11789:
.LBB11790:
.LBB11791:
	.loc 2 2318 0 discriminator 1
	addi 7,10,2
.LBE11791:
.LBE11790:
.LBE11789:
.LBE11788:
	.loc 1 1346 0 discriminator 1
	beq- 0,.L1397
.LVL2799:
.LBB11799:
.LBB11787:
	.loc 1 575 0 discriminator 2
	lwz 8,0(9)
.LBB11781:
.LBB11779:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE11779:
.LBE11781:
	.loc 1 575 0 discriminator 2
	lbzx 8,8,10
.LVL2800:
.LBB11782:
.LBB11780:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2801:
.LBE11780:
.LBE11782:
.LBB11783:
.LBB11784:
	.loc 2 2261 0 discriminator 2
	sth 8,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2802:
.LBE11784:
.LBE11783:
.LBB11785:
.LBB11786:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2803:
.LBE11786:
.LBE11785:
.LBE11787:
.LBE11799:
.LBB11800:
.LBB11801:
	.loc 1 575 0 discriminator 2
	lwz 8,0(9)
	add 8,8,10
	lbz 8,1(8)
.LVL2804:
.LBB11802:
.LBB11803:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2805:
.LBE11803:
.LBE11802:
.LBB11804:
.LBB11805:
	.loc 2 2261 0 discriminator 2
	sth 8,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2806:
.LBE11805:
.LBE11804:
.LBB11806:
.LBB11807:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2807:
.LBE11807:
.LBE11806:
.LBE11801:
.LBE11800:
.LBB11808:
.LBB11809:
	.loc 1 575 0 discriminator 2
	lwz 8,0(9)
.LVL2808:
	add 10,8,10
.LVL2809:
	lbz 10,3(10)
.LVL2810:
.LBB11810:
.LBB11811:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2811:
.LBE11811:
.LBE11810:
.LBB11812:
.LBB11813:
	.loc 2 2261 0 discriminator 2
	sth 10,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2812:
.LBE11813:
.LBE11812:
.LBB11814:
.LBB11815:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2813:
.LBE11815:
.LBE11814:
.LBE11809:
.LBE11808:
.LBB11816:
.LBB11798:
	.loc 1 575 0 discriminator 2
	lwz 10,0(9)
.LVL2814:
	lbzx 10,10,7
.LVL2815:
.LBB11793:
.LBB11794:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2816:
.LBE11794:
.LBE11793:
.LBB11795:
.LBB11796:
	.loc 2 2261 0 discriminator 2
	sth 10,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2817:
.LBE11796:
.LBE11795:
.LBB11797:
.LBB11792:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
	mr 10,7
	b .L1398
.LVL2818:
.L1397:
.LBE11792:
.LBE11797:
.LBE11798:
.LBE11816:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1346 0 is_stmt 0
	li 10,0
	li 8,1
.LBB11817:
.LBB11818:
.LBB11819:
.LBB11820:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L1400
	li 31,1
.L1400:
.LVL2819:
.LBE11820:
.LBE11819:
.LBE11818:
.LBE11817:
	.loc 1 1346 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2255
.LVL2820:
.LBB11830:
.LBB11829:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
.LBB11823:
.LBB11821:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE11821:
.LBE11823:
	.loc 1 575 0 discriminator 2
	lbzx 0,6,10
.LVL2821:
.LBB11824:
.LBB11822:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2822:
.LBE11822:
.LBE11824:
.LBB11825:
.LBB11826:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2823:
.LBE11826:
.LBE11825:
.LBB11827:
.LBB11828:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2824:
.LBE11828:
.LBE11827:
.LBE11829:
.LBE11830:
.LBB11831:
.LBB11832:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,1
	lbzx 0,6,0
.LVL2825:
.LBB11833:
.LBB11834:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2826:
.LBE11834:
.LBE11833:
.LBB11835:
.LBB11836:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2827:
.LBE11836:
.LBE11835:
.LBB11837:
.LBB11838:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LBE11838:
.LBE11837:
.LBE11832:
.LBE11831:
.LBB11839:
.LBB11840:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
.LBE11840:
.LBE11839:
	.loc 1 1346 0 discriminator 2
	addi 8,8,1
.LVL2828:
.LBB11848:
.LBB11847:
	.loc 1 575 0 discriminator 2
	add 6,6,10
	lbz 0,3(6)
.LVL2829:
.LBB11841:
.LBB11842:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2830:
.LBE11842:
.LBE11841:
.LBB11843:
.LBB11844:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2831:
.LBE11844:
.LBE11843:
.LBB11845:
.LBB11846:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2832:
.LBE11846:
.LBE11845:
.LBE11847:
.LBE11848:
.LBB11849:
.LBB11850:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lbz 0,1(6)
.LVL2833:
.LBB11851:
.LBB11852:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2834:
.LBE11852:
.LBE11851:
.LBB11853:
.LBB11854:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2835:
.LBE11854:
.LBE11853:
.LBB11855:
.LBB11856:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2836:
	addi 10,10,2
.LVL2837:
	b .L1400
.LVL2838:
.L2744:
.LBE11856:
.LBE11855:
.LBE11850:
.LBE11849:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL2839:
.LBB11857:
.LBB11858:
	.loc 1 575 0
	lwz 9,.LANCHOR0@l(10)
	lbz 0,0(9)
.LVL2840:
.LBB11859:
.LBB11860:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL2841:
.LBE11860:
.LBE11859:
.LBB11861:
.LBB11862:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL2842:
.LBE11862:
.LBE11861:
.LBB11863:
.LBB11864:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
	b .L2255
.LVL2843:
.L1390:
.LBE11864:
.LBE11863:
.LBE11858:
.LBE11857:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,8,1
	beq- 7,.L2745
	cmpwi 7,8,2
	beq- 7,.L2746
	cmpwi 7,8,3
	beq- 7,.L2747
	cmpwi 7,8,4
	beq- 7,.L2748
	cmpwi 7,8,5
	beq- 7,.L2749
	cmpwi 7,8,6
	beq- 7,.L2750
	cmpwi 7,8,7
	bne+ 7,.L719
.LVL2844:
	.loc 1 1346 0 is_stmt 0 discriminator 1
	bne- 4,.L1474
	cmpwi 7,29,0
	beq- 7,.L1475
	addi 27,31,-1
.LVL2845:
	mr 29,27
.LVL2846:
.L1476:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2847:
	blt- 7,.L2751
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT7_ElemGLubyte
.LVL2848:
	b .L1476
.LVL2849:
.L2672:
	.loc 1 1352 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2158
.LVL2850:
.LBB11865:
.LBB11866:
	.loc 1 577 0 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	slwi 6,6,2
.LVL2851:
	lwzx 0,11,6
.LBB11867:
.LBB11868:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
.LBE11868:
.LBE11867:
	.loc 1 577 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL2852:
.LBB11870:
.LBB11869:
	.loc 2 2219 0 discriminator 1
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL2853:
.LBE11869:
.LBE11870:
.LBB11871:
.LBB11872:
	.loc 2 2261 0 discriminator 1
	sth 0,0(11)
	.loc 2 2262 0 discriminator 1
.LVL2854:
.LBE11872:
.LBE11871:
.LBB11873:
.LBB11874:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL2855:
.L2158:
.LBE11874:
.LBE11873:
.LBE11866:
.LBE11865:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 11,0
	beq- 7,.L2255
	cmpwi 7,31,0
.LBB11875:
.LBB11876:
.LBB11877:
.LBB11878:
	.loc 2 2219 0 discriminator 1
	lis 7,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2616
	li 31,1
.L2616:
.LVL2856:
.LBE11878:
.LBE11877:
.LBE11876:
.LBE11875:
	.loc 1 1352 0 discriminator 1
	addic. 31,31,-1
.LBB11889:
.LBB11887:
	.loc 1 577 0 discriminator 1
	slwi 0,11,2
.LBE11887:
.LBE11889:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2752
.LVL2857:
.LBB11890:
.LBB11888:
	.loc 1 577 0
	lwz 6,0(9)
.LBB11881:
.LBB11879:
	.loc 2 2219 0
	lwz 8,wgPipe@l(7)
.LBE11879:
.LBE11881:
	.loc 1 577 0
	lwzx 0,6,0
	rlwinm 0,0,0,0xffff
.LVL2858:
.LBB11882:
.LBB11880:
	.loc 2 2219 0
	sth 0,0(8)
	.loc 2 2220 0
.LVL2859:
.LBE11880:
.LBE11882:
.LBB11883:
.LBB11884:
	.loc 2 2261 0
	sth 0,0(8)
	.loc 2 2262 0
.LVL2860:
.LBE11884:
.LBE11883:
.LBB11885:
.LBB11886:
	.loc 2 2317 0
	sth 0,0(8)
	.loc 2 2318 0
.LBE11886:
.LBE11885:
.LBE11888:
.LBE11890:
	.loc 1 1352 0
	addi 11,11,1
.LVL2861:
	b .L2616
.LVL2862:
.L2751:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1475
	.loc 1 1346 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL2863:
	bl UploadVertexPNCT7_ElemGLubyte
.LVL2864:
.L1475:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2549:
.LVL2865:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2866:
	bge- 7,.L2753
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT7_ElemGLubyte
.LVL2867:
	b .L2549
.LVL2868:
.L2752:
	.loc 1 1352 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL2869:
.LBB11891:
.LBB11892:
	.loc 1 577 0
	lwz 9,.LANCHOR0@l(10)
	lhz 0,2(9)
.LVL2870:
.LBB11893:
.LBB11894:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL2871:
.LBE11894:
.LBE11893:
.LBB11895:
.LBB11896:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL2872:
.LBE11896:
.LBE11895:
.LBB11897:
.LBB11898:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
	b .L2255
.LVL2873:
.L1774:
.LBE11898:
.LBE11897:
.LBE11892:
.LBE11891:
	.loc 1 1349 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1780
	srawi 0,31,1
	addze. 0,0
	.loc 1 1349 0
	li 10,0
.LBB11899:
.LBB11900:
.LBB11901:
.LBB11902:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L1781
	li 0,1
.LVL2874:
.L1781:
.LBE11902:
.LBE11901:
.LBE11900:
.LBE11899:
	.loc 1 1349 0 discriminator 1
	addic. 0,0,-1
.LBB11912:
.LBB11913:
.LBB11914:
.LBB11915:
	.loc 2 2318 0 discriminator 1
	addi 7,10,4
.LBE11915:
.LBE11914:
.LBE11913:
.LBE11912:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L1780
.LBB11923:
.LBB11911:
	.loc 1 576 0 discriminator 2
	lwz 8,0(9)
.LBB11905:
.LBB11903:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE11903:
.LBE11905:
	.loc 1 576 0 discriminator 2
	lhzx 8,8,10
.LVL2875:
.LBB11906:
.LBB11904:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2876:
.LBE11904:
.LBE11906:
.LBB11907:
.LBB11908:
	.loc 2 2261 0 discriminator 2
	sth 8,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2877:
.LBE11908:
.LBE11907:
.LBB11909:
.LBB11910:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LBE11910:
.LBE11909:
.LBE11911:
.LBE11923:
.LBB11924:
.LBB11925:
	.loc 1 576 0 discriminator 2
	lwz 8,0(9)
.LVL2878:
	add 8,8,10
	lhz 8,2(8)
.LVL2879:
.LBB11926:
.LBB11927:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2880:
.LBE11927:
.LBE11926:
.LBB11928:
.LBB11929:
	.loc 2 2261 0 discriminator 2
	sth 8,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2881:
.LBE11929:
.LBE11928:
.LBB11930:
.LBB11931:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LBE11931:
.LBE11930:
.LBE11925:
.LBE11924:
.LBB11932:
.LBB11933:
	.loc 1 576 0 discriminator 2
	lwz 8,0(9)
.LVL2882:
	add 10,8,10
	lhz 10,6(10)
.LVL2883:
.LBB11934:
.LBB11935:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2884:
.LBE11935:
.LBE11934:
.LBB11936:
.LBB11937:
	.loc 2 2261 0 discriminator 2
	sth 10,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2885:
.LBE11937:
.LBE11936:
.LBB11938:
.LBB11939:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LBE11939:
.LBE11938:
.LBE11933:
.LBE11932:
.LBB11940:
.LBB11922:
	.loc 1 576 0 discriminator 2
	lwz 10,0(9)
.LVL2886:
	lhzx 10,10,7
.LVL2887:
.LBB11917:
.LBB11918:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2888:
.LBE11918:
.LBE11917:
.LBB11919:
.LBB11920:
	.loc 2 2261 0 discriminator 2
	sth 10,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2889:
.LBE11920:
.LBE11919:
.LBB11921:
.LBB11916:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
	mr 10,7
.LVL2890:
	b .L1781
.LVL2891:
.L1780:
.LBE11916:
.LBE11921:
.LBE11922:
.LBE11940:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1349 0 is_stmt 0
	li 10,0
	li 8,1
.LBB11941:
.LBB11942:
.LBB11943:
.LBB11944:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L1783
	li 31,1
.L1783:
.LVL2892:
.LBE11944:
.LBE11943:
.LBE11942:
.LBE11941:
	.loc 1 1349 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2255
.LVL2893:
.LBB11954:
.LBB11953:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
.LBB11947:
.LBB11945:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE11945:
.LBE11947:
	.loc 1 576 0 discriminator 2
	lhzx 0,6,10
.LVL2894:
.LBB11948:
.LBB11946:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2895:
.LBE11946:
.LBE11948:
.LBB11949:
.LBB11950:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2896:
.LBE11950:
.LBE11949:
.LBB11951:
.LBB11952:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2897:
.LBE11952:
.LBE11951:
.LBE11953:
.LBE11954:
.LBB11955:
.LBB11956:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,2
.LVL2898:
	lhzx 0,6,0
.LVL2899:
.LBB11957:
.LBB11958:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2900:
.LBE11958:
.LBE11957:
.LBB11959:
.LBB11960:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2901:
.LBE11960:
.LBE11959:
.LBB11961:
.LBB11962:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LBE11962:
.LBE11961:
.LBE11956:
.LBE11955:
.LBB11963:
.LBB11964:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
.LBE11964:
.LBE11963:
	.loc 1 1349 0 discriminator 2
	addi 8,8,1
.LVL2902:
.LBB11972:
.LBB11971:
	.loc 1 576 0 discriminator 2
	add 6,6,10
	lhz 0,6(6)
.LVL2903:
.LBB11965:
.LBB11966:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2904:
.LBE11966:
.LBE11965:
.LBB11967:
.LBB11968:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2905:
.LBE11968:
.LBE11967:
.LBB11969:
.LBB11970:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2906:
.LBE11970:
.LBE11969:
.LBE11971:
.LBE11972:
.LBB11973:
.LBB11974:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lhz 0,2(6)
.LVL2907:
.LBB11975:
.LBB11976:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2908:
.LBE11976:
.LBE11975:
.LBB11977:
.LBB11978:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL2909:
.LBE11978:
.LBE11977:
.LBB11979:
.LBB11980:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2910:
	addi 10,10,4
	b .L1783
.LVL2911:
.L1773:
.LBE11980:
.LBE11979:
.LBE11974:
.LBE11973:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,8,1
	beq- 7,.L2754
	cmpwi 7,8,2
	beq- 7,.L2755
	cmpwi 7,8,3
	beq- 7,.L2756
	cmpwi 7,8,4
	beq- 7,.L2757
	cmpwi 7,8,5
	beq- 7,.L2758
	cmpwi 7,8,6
	beq- 7,.L2759
	cmpwi 7,8,7
	bne+ 7,.L719
.LVL2912:
	.loc 1 1349 0 is_stmt 0 discriminator 1
	bne- 4,.L1857
	cmpwi 7,29,0
	beq- 7,.L1858
	addi 27,31,-1
.LVL2913:
	mr 29,27
.LVL2914:
.L1859:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2915:
	blt- 7,.L2760
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT7_ElemGLushort
.LVL2916:
	b .L1859
.LVL2917:
.L2062:
	.loc 1 1352 0 is_stmt 1 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2068
	srawi 0,31,1
	addze. 0,0
	.loc 1 1352 0
	li 10,0
.LBB11981:
.LBB11982:
.LBB11983:
.LBB11984:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L2069
	li 0,1
.LVL2918:
.L2069:
.LBE11984:
.LBE11983:
.LBE11982:
.LBE11981:
	.loc 1 1352 0 discriminator 1
	addic. 0,0,-1
.LBB11992:
.LBB11993:
.LBB11994:
.LBB11995:
	.loc 2 2318 0 discriminator 1
	addi 8,10,8
.LBE11995:
.LBE11994:
.LBE11993:
.LBE11992:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2068
.LVL2919:
.LBB12001:
.LBB11991:
	.loc 1 577 0 discriminator 2
	lwz 7,0(9)
.LBB11987:
.LBB11985:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE11985:
.LBE11987:
	.loc 1 577 0 discriminator 2
	lwzx 7,7,10
	rlwinm 7,7,0,0xffff
.LVL2920:
.LBB11988:
.LBB11986:
	.loc 2 2219 0 discriminator 2
	sth 7,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2921:
.LBE11986:
.LBE11988:
.LBB11989:
.LBB11990:
	.loc 2 2317 0 discriminator 2
	sth 7,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2922:
.LBE11990:
.LBE11989:
.LBE11991:
.LBE12001:
.LBB12002:
.LBB12003:
	.loc 1 577 0 discriminator 2
	lwz 7,0(9)
.LVL2923:
	add 7,7,10
	lhz 7,6(7)
.LVL2924:
.LBB12004:
.LBB12005:
	.loc 2 2219 0 discriminator 2
	sth 7,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2925:
.LBE12005:
.LBE12004:
.LBB12006:
.LBB12007:
	.loc 2 2317 0 discriminator 2
	sth 7,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2926:
.LBE12007:
.LBE12006:
.LBE12003:
.LBE12002:
.LBB12008:
.LBB12009:
	.loc 1 577 0 discriminator 2
	lwz 7,0(9)
.LVL2927:
	add 10,7,10
.LVL2928:
	lhz 10,14(10)
.LVL2929:
.LBB12010:
.LBB12011:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2930:
.LBE12011:
.LBE12010:
.LBB12012:
.LBB12013:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2931:
.LBE12013:
.LBE12012:
.LBE12009:
.LBE12008:
.LBB12014:
.LBB12000:
	.loc 1 577 0 discriminator 2
	lwz 10,0(9)
.LVL2932:
	lwzx 10,10,8
	rlwinm 10,10,0,0xffff
.LVL2933:
.LBB11997:
.LBB11998:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2934:
.LBE11998:
.LBE11997:
.LBB11999:
.LBB11996:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
	mr 10,8
.LVL2935:
	b .L2069
.LVL2936:
.L2068:
.LBE11996:
.LBE11999:
.LBE12000:
.LBE12014:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1352 0 is_stmt 0
	li 10,0
	li 8,1
.LBB12015:
.LBB12016:
.LBB12017:
.LBB12018:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L2071
	li 31,1
.L2071:
.LVL2937:
.LBE12018:
.LBE12017:
.LBE12016:
.LBE12015:
	.loc 1 1352 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2255
.LVL2938:
.LBB12026:
.LBB12025:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
.LBB12021:
.LBB12019:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE12019:
.LBE12021:
	.loc 1 577 0 discriminator 2
	lwzx 0,6,10
	rlwinm 0,0,0,0xffff
.LVL2939:
.LBB12022:
.LBB12020:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2940:
.LBE12020:
.LBE12022:
.LBB12023:
.LBB12024:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2941:
.LBE12024:
.LBE12023:
.LBE12025:
.LBE12026:
.LBB12027:
.LBB12028:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,3
.LVL2942:
	lwzx 0,6,0
	rlwinm 0,0,0,0xffff
.LVL2943:
.LBB12029:
.LBB12030:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2944:
.LBE12030:
.LBE12029:
.LBB12031:
.LBB12032:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LBE12032:
.LBE12031:
.LBE12028:
.LBE12027:
.LBB12033:
.LBB12034:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
.LBE12034:
.LBE12033:
	.loc 1 1352 0 discriminator 2
	addi 8,8,1
.LVL2945:
.LBB12040:
.LBB12039:
	.loc 1 577 0 discriminator 2
	add 6,6,10
	lhz 0,14(6)
.LVL2946:
.LBB12035:
.LBB12036:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2947:
.LBE12036:
.LBE12035:
.LBB12037:
.LBB12038:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2948:
.LBE12038:
.LBE12037:
.LBE12039:
.LBE12040:
.LBB12041:
.LBB12042:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lhz 0,6(6)
.LVL2949:
.LBB12043:
.LBB12044:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL2950:
.LBE12044:
.LBE12043:
.LBB12045:
.LBB12046:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL2951:
	addi 10,10,8
.LVL2952:
	b .L2071
.LVL2953:
.L2061:
.LBE12046:
.LBE12045:
.LBE12042:
.LBE12041:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,8,1
	beq- 7,.L2761
	cmpwi 7,8,2
	beq- 7,.L2762
	cmpwi 7,8,3
	beq- 7,.L2763
	cmpwi 7,8,4
	beq- 7,.L2764
	cmpwi 7,8,5
	beq- 7,.L2765
	cmpwi 7,8,6
	beq- 7,.L2766
	cmpwi 7,8,7
	bne+ 7,.L719
.LVL2954:
	.loc 1 1352 0 is_stmt 0 discriminator 1
	bne- 4,.L2145
	cmpwi 7,29,0
	beq- 7,.L2146
	addi 27,31,-1
.LVL2955:
	mr 29,27
.LVL2956:
.L2147:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2957:
	blt- 7,.L2767
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT7_ElemGLuint
.LVL2958:
	b .L2147
.LVL2959:
.L2760:
	.loc 1 1349 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1858
	.loc 1 1349 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL2960:
	bl UploadVertexPNCT7_ElemGLushort
.LVL2961:
.L1858:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2574:
.LVL2962:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL2963:
	bge- 7,.L2768
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT7_ElemGLushort
.LVL2964:
	b .L2574
.LVL2965:
.L2764:
	.loc 1 1352 0 is_stmt 1 discriminator 1
	bne- 4,.L2110
	cmpwi 7,29,0
	beq- 7,.L2111
	addi 27,31,-1
.LVL2966:
	mr 29,27
.LVL2967:
.L2112:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2968:
	blt- 7,.L2769
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT4_ElemGLuint
.LVL2969:
	b .L2112
.LVL2970:
.L2762:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2086
	cmpwi 7,29,0
	beq- 7,.L2087
	addi 6,31,-1
.LVL2971:
	slwi 7,31,2
.LVL2972:
	cmpwi 7,6,-1
.LBB12047:
.LBB12048:
.LBB12049:
.LBB12050:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 5,wgPipe@ha
	addi 0,31,1
	bge+ 7,.L2088
	li 0,1
.LVL2973:
.L2088:
.LBE12050:
.LBE12049:
.LBE12048:
.LBE12047:
	.loc 1 1352 0 discriminator 1
	addic. 0,0,-1
.LBB12065:
.LBB12063:
.LBB12053:
.LBB12054:
	.loc 2 2400 0 discriminator 1
	addi 7,7,-4
.LBE12054:
.LBE12053:
.LBE12063:
.LBE12065:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2770
.LVL2974:
.LBB12066:
.LBB12064:
	.loc 1 577 0
	lwz 8,0(9)
.LBB12056:
.LBB12051:
	.loc 2 2219 0
	lwz 11,wgPipe@l(5)
.LBE12051:
.LBE12056:
	.loc 1 577 0
	lwzx 8,8,7
	rlwinm 8,8,0,0xffff
.LVL2975:
.LBB12057:
.LBB12052:
	.loc 2 2219 0
	sth 8,0(11)
	.loc 2 2220 0
.LVL2976:
.LBE12052:
.LBE12057:
.LBB12058:
.LBB12059:
	.loc 2 2317 0
	sth 8,0(11)
	.loc 2 2318 0
.LVL2977:
.LBE12059:
.LBE12058:
.LBB12060:
.LBB12061:
	.loc 2 2399 0
	sth 8,0(11)
	.loc 2 2400 0
.LVL2978:
.LBE12061:
.LBE12060:
.LBB12062:
.LBB12055:
	.loc 2 2399 0
	sth 8,0(11)
	.loc 2 2400 0
	b .L2088
.LVL2979:
.L2770:
.LBE12055:
.LBE12062:
.LBE12064:
.LBE12066:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2087
.LVL2980:
.LBB12067:
.LBB12068:
	.loc 1 577 0 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	slwi 6,6,2
.LVL2981:
	lwzx 0,11,6
.LBB12069:
.LBB12070:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
.LBE12070:
.LBE12069:
	.loc 1 577 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL2982:
.LBB12072:
.LBB12071:
	.loc 2 2219 0 discriminator 1
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL2983:
.LBE12071:
.LBE12072:
.LBB12073:
.LBB12074:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL2984:
.LBE12074:
.LBE12073:
.LBB12075:
.LBB12076:
	.loc 2 2399 0 discriminator 1
	sth 0,0(11)
	.loc 2 2400 0 discriminator 1
.LVL2985:
.LBE12076:
.LBE12075:
.LBB12077:
.LBB12078:
	.loc 2 2399 0 discriminator 1
	sth 0,0(11)
	.loc 2 2400 0 discriminator 1
.LVL2986:
.L2087:
.LBE12078:
.LBE12077:
.LBE12068:
.LBE12067:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 8,0
	beq- 7,.L2255
	cmpwi 7,31,0
.LBB12079:
.LBB12080:
.LBB12081:
.LBB12082:
	.loc 2 2219 0 discriminator 1
	lis 7,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2615
	li 31,1
.L2615:
.LVL2987:
.LBE12082:
.LBE12081:
.LBE12080:
.LBE12079:
	.loc 1 1352 0 discriminator 1
	addic. 31,31,-1
.LBB12095:
.LBB12093:
	.loc 1 577 0 discriminator 1
	slwi 0,8,2
.LBE12093:
.LBE12095:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2771
.LVL2988:
.LBB12096:
.LBB12094:
	.loc 1 577 0
	lwz 6,0(9)
.LBB12085:
.LBB12083:
	.loc 2 2219 0
	lwz 11,wgPipe@l(7)
.LBE12083:
.LBE12085:
	.loc 1 577 0
	lwzx 0,6,0
	rlwinm 0,0,0,0xffff
.LVL2989:
.LBB12086:
.LBB12084:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL2990:
.LBE12084:
.LBE12086:
.LBB12087:
.LBB12088:
	.loc 2 2317 0
	sth 0,0(11)
	.loc 2 2318 0
.LVL2991:
.LBE12088:
.LBE12087:
.LBB12089:
.LBB12090:
	.loc 2 2399 0
	sth 0,0(11)
	.loc 2 2400 0
.LVL2992:
.LBE12090:
.LBE12089:
.LBB12091:
.LBB12092:
	.loc 2 2399 0
	sth 0,0(11)
	.loc 2 2400 0
.LBE12092:
.LBE12091:
.LBE12094:
.LBE12096:
	.loc 1 1352 0
	addi 8,8,1
.LVL2993:
	b .L2615
.LVL2994:
.L2757:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1822
	cmpwi 7,29,0
	beq- 7,.L1823
	addi 27,31,-1
.LVL2995:
	mr 29,27
.LVL2996:
.L1824:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL2997:
	blt- 7,.L2772
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT4_ElemGLushort
.LVL2998:
	b .L1824
.LVL2999:
.L2767:
	.loc 1 1352 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2146
	.loc 1 1352 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL3000:
	bl UploadVertexPCT7_ElemGLuint
.LVL3001:
.L2146:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2593:
.LVL3002:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3003:
	bge- 7,.L2773
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT7_ElemGLuint
.LVL3004:
	b .L2593
.LVL3005:
.L2766:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2134
	cmpwi 7,29,0
	beq- 7,.L2135
	addi 27,31,-1
.LVL3006:
	mr 29,27
.LVL3007:
.L2136:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3008:
	blt- 7,.L2774
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT6_ElemGLuint
.LVL3009:
	b .L2136
.LVL3010:
.L2765:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2122
	cmpwi 7,29,0
	beq- 7,.L2123
	addi 27,31,-1
.LVL3011:
	mr 29,27
.LVL3012:
.L2124:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3013:
	blt- 7,.L2775
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT5_ElemGLuint
.LVL3014:
	b .L2124
.LVL3015:
.L2773:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL3016:
	bl UploadVertexPCT7_ElemGLuint
	b .L2255
.LVL3017:
.L2774:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2135
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL3018:
	bl UploadVertexPCT6_ElemGLuint
.LVL3019:
.L2135:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2592:
.LVL3020:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3021:
	bge- 7,.L2776
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT6_ElemGLuint
.LVL3022:
	b .L2592
.LVL3023:
.L2134:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2140
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL3024:
	li 30,0
.LVL3025:
	li 28,1
.LVL3026:
.L2141:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3027:
	bge- 7,.L2140
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT6_ElemGLuint
	addi 3,30,1
	bl UploadVertexPCT6_ElemGLuint
	addi 3,30,3
	bl UploadVertexPCT6_ElemGLuint
	mr 3,26
	bl UploadVertexPCT6_ElemGLuint
.LVL3028:
	addi 30,30,2
	b .L2141
.LVL3029:
.L2776:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL3030:
	bl UploadVertexPCT6_ElemGLuint
	b .L2255
.LVL3031:
.L2140:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3032:
.L2143:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT6_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPCT6_ElemGLuint
	addi 3,30,3
	bl UploadVertexPCT6_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL3033:
	bl UploadVertexPCT6_ElemGLuint
.LVL3034:
	addi 30,30,2
	b .L2143
.LVL3035:
.L2775:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2123
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL3036:
	bl UploadVertexPCT5_ElemGLuint
.LVL3037:
.L2123:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2591:
.LVL3038:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3039:
	bge- 7,.L2777
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT5_ElemGLuint
.LVL3040:
	b .L2591
.LVL3041:
.L2122:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2128
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL3042:
	li 30,0
.LVL3043:
	li 28,1
.LVL3044:
.L2129:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3045:
	bge- 7,.L2128
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT5_ElemGLuint
	addi 3,30,1
	bl UploadVertexPCT5_ElemGLuint
	addi 3,30,3
	bl UploadVertexPCT5_ElemGLuint
	mr 3,26
	bl UploadVertexPCT5_ElemGLuint
.LVL3046:
	addi 30,30,2
	b .L2129
.LVL3047:
.L2777:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL3048:
	bl UploadVertexPCT5_ElemGLuint
	b .L2255
.LVL3049:
.L2128:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3050:
.L2131:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT5_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPCT5_ElemGLuint
	addi 3,30,3
	bl UploadVertexPCT5_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL3051:
	bl UploadVertexPCT5_ElemGLuint
.LVL3052:
	addi 30,30,2
	b .L2131
.LVL3053:
.L2748:
	.loc 1 1346 0 is_stmt 1 discriminator 1
	bne- 4,.L1439
	cmpwi 7,29,0
	beq- 7,.L1440
	addi 27,31,-1
.LVL3054:
	mr 29,27
.LVL3055:
.L1441:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3056:
	blt- 7,.L2778
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT4_ElemGLubyte
.LVL3057:
	b .L1441
.LVL3058:
.L2747:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1427
	cmpwi 7,29,0
	beq- 7,.L1428
	addi 27,31,-1
.LVL3059:
	mr 29,27
.LVL3060:
.L1429:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3061:
	blt- 7,.L2779
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT3_ElemGLubyte
.LVL3062:
	b .L1429
.LVL3063:
.L2778:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1440
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL3064:
	bl UploadVertexPNCT4_ElemGLubyte
.LVL3065:
.L1440:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2546:
.LVL3066:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3067:
	bge- 7,.L2780
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT4_ElemGLubyte
.LVL3068:
	b .L2546
.LVL3069:
.L2779:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1428
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL3070:
	bl UploadVertexPNCT3_ElemGLubyte
.LVL3071:
.L1428:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2545:
.LVL3072:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3073:
	bge- 7,.L2781
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT3_ElemGLubyte
.LVL3074:
	b .L2545
.LVL3075:
.L1427:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1433
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL3076:
	li 30,0
.LVL3077:
	li 28,1
.LVL3078:
.L1434:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3079:
	bge- 7,.L1433
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT3_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNCT3_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNCT3_ElemGLubyte
	mr 3,26
	bl UploadVertexPNCT3_ElemGLubyte
.LVL3080:
	addi 30,30,2
	b .L1434
.LVL3081:
.L2780:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL3082:
	bl UploadVertexPNCT4_ElemGLubyte
	b .L2255
.LVL3083:
.L2781:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL3084:
	bl UploadVertexPNCT3_ElemGLubyte
	b .L2255
.LVL3085:
.L1433:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3086:
.L1436:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT3_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNCT3_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNCT3_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL3087:
	bl UploadVertexPNCT3_ElemGLubyte
.LVL3088:
	addi 30,30,2
	b .L1436
.LVL3089:
.L1439:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1445
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL3090:
	li 30,0
.LVL3091:
	li 28,1
.LVL3092:
.L1446:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3093:
	bge- 7,.L1445
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT4_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNCT4_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNCT4_ElemGLubyte
	mr 3,26
	bl UploadVertexPNCT4_ElemGLubyte
.LVL3094:
	addi 30,30,2
	b .L1446
.LVL3095:
.L2746:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1415
	cmpwi 7,29,0
	beq- 7,.L1416
	addi 27,31,-1
.LVL3096:
	mr 29,27
.LVL3097:
.L1417:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3098:
	blt- 7,.L2782
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT2_ElemGLubyte
.LVL3099:
	b .L1417
.LVL3100:
.L2745:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1403
	cmpwi 7,29,0
	beq- 7,.L1404
	addi 6,31,-1
.LVL3101:
	mr 7,31
.LVL3102:
	cmpwi 7,6,-1
.LBB12097:
.LBB12098:
.LBB12099:
.LBB12100:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 5,wgPipe@ha
	addi 0,31,1
	bge+ 7,.L1405
	li 0,1
.LVL3103:
.L1405:
.LBE12100:
.LBE12099:
.LBE12098:
.LBE12097:
	.loc 1 1346 0 discriminator 1
	addic. 0,0,-1
.LBB12115:
.LBB12113:
.LBB12103:
.LBB12104:
	.loc 2 2400 0 discriminator 1
	addi 7,7,-1
.LBE12104:
.LBE12103:
.LBE12113:
.LBE12115:
	.loc 1 1346 0 discriminator 1
	beq- 0,.L2783
.LVL3104:
.LBB12116:
.LBB12114:
	.loc 1 575 0
	lwz 8,0(9)
.LBB12106:
.LBB12101:
	.loc 2 2219 0
	lwz 11,wgPipe@l(5)
.LBE12101:
.LBE12106:
	.loc 1 575 0
	lbzx 8,8,7
.LVL3105:
.LBB12107:
.LBB12102:
	.loc 2 2219 0
	sth 8,0(11)
	.loc 2 2220 0
.LVL3106:
.LBE12102:
.LBE12107:
.LBB12108:
.LBB12109:
	.loc 2 2261 0
	sth 8,0(11)
	.loc 2 2262 0
.LVL3107:
.LBE12109:
.LBE12108:
.LBB12110:
.LBB12111:
	.loc 2 2317 0
	sth 8,0(11)
	.loc 2 2318 0
.LVL3108:
.LBE12111:
.LBE12110:
.LBB12112:
.LBB12105:
	.loc 2 2399 0
	sth 8,0(11)
	.loc 2 2400 0
	b .L1405
.LVL3109:
.L2783:
.LBE12105:
.LBE12112:
.LBE12114:
.LBE12116:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1404
.LVL3110:
.LBB12117:
.LBB12118:
	.loc 1 575 0 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	lbzx 0,11,6
.LVL3111:
.LBB12119:
.LBB12120:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL3112:
.LBE12120:
.LBE12119:
.LBB12121:
.LBB12122:
	.loc 2 2261 0 discriminator 1
	sth 0,0(11)
	.loc 2 2262 0 discriminator 1
.LVL3113:
.LBE12122:
.LBE12121:
.LBB12123:
.LBB12124:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL3114:
.LBE12124:
.LBE12123:
.LBB12125:
.LBB12126:
	.loc 2 2399 0 discriminator 1
	sth 0,0(11)
	.loc 2 2400 0 discriminator 1
.LVL3115:
.L1404:
.LBE12126:
.LBE12125:
.LBE12118:
.LBE12117:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 8,0
	beq- 7,.L2255
	cmpwi 7,31,0
.LBB12127:
.LBB12128:
.LBB12129:
.LBB12130:
	.loc 2 2219 0 discriminator 1
	lis 7,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2609
	li 31,1
.L2609:
.LVL3116:
.LBE12130:
.LBE12129:
.LBE12128:
.LBE12127:
	.loc 1 1346 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2784
.LVL3117:
.LBB12142:
.LBB12141:
	.loc 1 575 0
	lwz 6,0(9)
.LBB12133:
.LBB12131:
	.loc 2 2219 0
	lwz 11,wgPipe@l(7)
.LBE12131:
.LBE12133:
	.loc 1 575 0
	lbzx 0,6,8
.LVL3118:
.LBB12134:
.LBB12132:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL3119:
.LBE12132:
.LBE12134:
.LBB12135:
.LBB12136:
	.loc 2 2261 0
	sth 0,0(11)
	.loc 2 2262 0
.LVL3120:
.LBE12136:
.LBE12135:
.LBB12137:
.LBB12138:
	.loc 2 2317 0
	sth 0,0(11)
	.loc 2 2318 0
.LVL3121:
.LBE12138:
.LBE12137:
.LBB12139:
.LBB12140:
	.loc 2 2399 0
	sth 0,0(11)
	.loc 2 2400 0
.LBE12140:
.LBE12139:
.LBE12141:
.LBE12142:
	.loc 1 1346 0
	addi 8,8,1
.LVL3122:
	b .L2609
.LVL3123:
.L1403:
	.loc 1 1346 0 is_stmt 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1409
	srawi 0,31,1
	addze. 0,0
	.loc 1 1346 0
	li 10,0
.LBB12143:
.LBB12144:
.LBB12145:
.LBB12146:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L1410
	li 0,1
.LVL3124:
.L1410:
.LBE12146:
.LBE12145:
.LBE12144:
.LBE12143:
	.loc 1 1346 0 discriminator 1
	addic. 0,0,-1
.LBB12158:
.LBB12159:
.LBB12160:
.LBB12161:
	.loc 2 2400 0 discriminator 1
	addi 7,10,2
.LBE12161:
.LBE12160:
.LBE12159:
.LBE12158:
	.loc 1 1346 0 discriminator 1
	beq- 0,.L1409
.LVL3125:
.LBB12171:
.LBB12157:
	.loc 1 575 0 discriminator 2
	lwz 8,0(9)
.LBB12149:
.LBB12147:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE12147:
.LBE12149:
	.loc 1 575 0 discriminator 2
	lbzx 8,8,10
.LVL3126:
.LBB12150:
.LBB12148:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3127:
.LBE12148:
.LBE12150:
.LBB12151:
.LBB12152:
	.loc 2 2261 0 discriminator 2
	sth 8,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3128:
.LBE12152:
.LBE12151:
.LBB12153:
.LBB12154:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3129:
.LBE12154:
.LBE12153:
.LBB12155:
.LBB12156:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3130:
.LBE12156:
.LBE12155:
.LBE12157:
.LBE12171:
.LBB12172:
.LBB12173:
	.loc 1 575 0 discriminator 2
	lwz 8,0(9)
	add 8,8,10
	lbz 8,1(8)
.LVL3131:
.LBB12174:
.LBB12175:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3132:
.LBE12175:
.LBE12174:
.LBB12176:
.LBB12177:
	.loc 2 2261 0 discriminator 2
	sth 8,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3133:
.LBE12177:
.LBE12176:
.LBB12178:
.LBB12179:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3134:
.LBE12179:
.LBE12178:
.LBB12180:
.LBB12181:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3135:
.LBE12181:
.LBE12180:
.LBE12173:
.LBE12172:
.LBB12182:
.LBB12183:
	.loc 1 575 0 discriminator 2
	lwz 8,0(9)
.LVL3136:
	add 10,8,10
.LVL3137:
	lbz 10,3(10)
.LVL3138:
.LBB12184:
.LBB12185:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3139:
.LBE12185:
.LBE12184:
.LBB12186:
.LBB12187:
	.loc 2 2261 0 discriminator 2
	sth 10,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3140:
.LBE12187:
.LBE12186:
.LBB12188:
.LBB12189:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3141:
.LBE12189:
.LBE12188:
.LBB12190:
.LBB12191:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3142:
.LBE12191:
.LBE12190:
.LBE12183:
.LBE12182:
.LBB12192:
.LBB12170:
	.loc 1 575 0 discriminator 2
	lwz 10,0(9)
.LVL3143:
	lbzx 10,10,7
.LVL3144:
.LBB12163:
.LBB12164:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3145:
.LBE12164:
.LBE12163:
.LBB12165:
.LBB12166:
	.loc 2 2261 0 discriminator 2
	sth 10,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3146:
.LBE12166:
.LBE12165:
.LBB12167:
.LBB12168:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3147:
.LBE12168:
.LBE12167:
.LBB12169:
.LBB12162:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
	mr 10,7
	b .L1410
.LVL3148:
.L1409:
.LBE12162:
.LBE12169:
.LBE12170:
.LBE12192:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1346 0 is_stmt 0
	li 10,0
	li 8,1
.LBB12193:
.LBB12194:
.LBB12195:
.LBB12196:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L1412
	li 31,1
.L1412:
.LVL3149:
.LBE12196:
.LBE12195:
.LBE12194:
.LBE12193:
	.loc 1 1346 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2255
.LVL3150:
.LBB12208:
.LBB12207:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
.LBB12199:
.LBB12197:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE12197:
.LBE12199:
	.loc 1 575 0 discriminator 2
	lbzx 0,6,10
.LVL3151:
.LBB12200:
.LBB12198:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3152:
.LBE12198:
.LBE12200:
.LBB12201:
.LBB12202:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3153:
.LBE12202:
.LBE12201:
.LBB12203:
.LBB12204:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3154:
.LBE12204:
.LBE12203:
.LBB12205:
.LBB12206:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3155:
.LBE12206:
.LBE12205:
.LBE12207:
.LBE12208:
.LBB12209:
.LBB12210:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,1
	lbzx 0,6,0
.LVL3156:
.LBB12211:
.LBB12212:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3157:
.LBE12212:
.LBE12211:
.LBB12213:
.LBB12214:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3158:
.LBE12214:
.LBE12213:
.LBB12215:
.LBB12216:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3159:
.LBE12216:
.LBE12215:
.LBB12217:
.LBB12218:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LBE12218:
.LBE12217:
.LBE12210:
.LBE12209:
.LBB12219:
.LBB12220:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
.LBE12220:
.LBE12219:
	.loc 1 1346 0 discriminator 2
	addi 8,8,1
.LVL3160:
.LBB12230:
.LBB12229:
	.loc 1 575 0 discriminator 2
	add 6,6,10
	lbz 0,3(6)
.LVL3161:
.LBB12221:
.LBB12222:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3162:
.LBE12222:
.LBE12221:
.LBB12223:
.LBB12224:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3163:
.LBE12224:
.LBE12223:
.LBB12225:
.LBB12226:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3164:
.LBE12226:
.LBE12225:
.LBB12227:
.LBB12228:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3165:
.LBE12228:
.LBE12227:
.LBE12229:
.LBE12230:
.LBB12231:
.LBB12232:
	.loc 1 575 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lbz 0,1(6)
.LVL3166:
.LBB12233:
.LBB12234:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3167:
.LBE12234:
.LBE12233:
.LBB12235:
.LBB12236:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3168:
.LBE12236:
.LBE12235:
.LBB12237:
.LBB12238:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3169:
.LBE12238:
.LBE12237:
.LBB12239:
.LBB12240:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3170:
	addi 10,10,2
.LVL3171:
	b .L1412
.LVL3172:
.L2784:
.LBE12240:
.LBE12239:
.LBE12232:
.LBE12231:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL3173:
.LBB12241:
.LBB12242:
	.loc 1 575 0
	lwz 9,.LANCHOR0@l(10)
	lbz 0,0(9)
.LVL3174:
.LBB12243:
.LBB12244:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL3175:
.LBE12244:
.LBE12243:
.LBB12245:
.LBB12246:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL3176:
.LBE12246:
.LBE12245:
.LBB12247:
.LBB12248:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL3177:
.LBE12248:
.LBE12247:
.LBB12249:
.LBB12250:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL3178:
.L1445:
.LBE12250:
.LBE12249:
.LBE12242:
.LBE12241:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0 is_stmt 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3179:
.L1448:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT4_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNCT4_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNCT4_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL3180:
	bl UploadVertexPNCT4_ElemGLubyte
.LVL3181:
	addi 30,30,2
	b .L1448
.LVL3182:
.L2782:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1416
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL3183:
	bl UploadVertexPNCT2_ElemGLubyte
.LVL3184:
.L1416:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2544:
.LVL3185:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3186:
	bge- 7,.L2785
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT2_ElemGLubyte
.LVL3187:
	b .L2544
.LVL3188:
.L1415:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1421
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL3189:
	li 30,0
.LVL3190:
	li 28,1
.LVL3191:
.L1422:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3192:
	bge- 7,.L1421
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT2_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNCT2_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNCT2_ElemGLubyte
	mr 3,26
	bl UploadVertexPNCT2_ElemGLubyte
.LVL3193:
	addi 30,30,2
	b .L1422
.LVL3194:
.L2785:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL3195:
	bl UploadVertexPNCT2_ElemGLubyte
	b .L2255
.LVL3196:
.L1421:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3197:
.L1424:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT2_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNCT2_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNCT2_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL3198:
	bl UploadVertexPNCT2_ElemGLubyte
.LVL3199:
	addi 30,30,2
	b .L1424
.LVL3200:
.L2750:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1463
	cmpwi 7,29,0
	beq- 7,.L1464
	addi 27,31,-1
.LVL3201:
	mr 29,27
.LVL3202:
.L1465:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3203:
	blt- 7,.L2786
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT6_ElemGLubyte
.LVL3204:
	b .L1465
.LVL3205:
.L2749:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1451
	cmpwi 7,29,0
	beq- 7,.L1452
	addi 27,31,-1
.LVL3206:
	mr 29,27
.LVL3207:
.L1453:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3208:
	blt- 7,.L2787
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT5_ElemGLubyte
.LVL3209:
	b .L1453
.LVL3210:
.L2786:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1464
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL3211:
	bl UploadVertexPNCT6_ElemGLubyte
.LVL3212:
.L1464:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2548:
.LVL3213:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3214:
	bge- 7,.L2788
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT6_ElemGLubyte
.LVL3215:
	b .L2548
.LVL3216:
.L2787:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1452
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL3217:
	bl UploadVertexPNCT5_ElemGLubyte
.LVL3218:
.L1452:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2547:
.LVL3219:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3220:
	bge- 7,.L2789
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT5_ElemGLubyte
.LVL3221:
	b .L2547
.LVL3222:
.L1451:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1457
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL3223:
	li 30,0
.LVL3224:
	li 28,1
.LVL3225:
.L1458:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3226:
	bge- 7,.L1457
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT5_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNCT5_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNCT5_ElemGLubyte
	mr 3,26
	bl UploadVertexPNCT5_ElemGLubyte
.LVL3227:
	addi 30,30,2
	b .L1458
.LVL3228:
.L2788:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL3229:
	bl UploadVertexPNCT6_ElemGLubyte
	b .L2255
.LVL3230:
.L2789:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL3231:
	bl UploadVertexPNCT5_ElemGLubyte
	b .L2255
.LVL3232:
.L1457:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3233:
.L1460:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT5_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNCT5_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNCT5_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL3234:
	bl UploadVertexPNCT5_ElemGLubyte
.LVL3235:
	addi 30,30,2
	b .L1460
.LVL3236:
.L1463:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1469
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL3237:
	li 30,0
.LVL3238:
	li 28,1
.LVL3239:
.L1470:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3240:
	bge- 7,.L1469
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT6_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNCT6_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNCT6_ElemGLubyte
	mr 3,26
	bl UploadVertexPNCT6_ElemGLubyte
.LVL3241:
	addi 30,30,2
	b .L1470
.LVL3242:
.L1474:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1480
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL3243:
	li 30,0
.LVL3244:
	li 28,1
.LVL3245:
.L1481:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3246:
	bge- 7,.L1480
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT7_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNCT7_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNCT7_ElemGLubyte
	mr 3,26
	bl UploadVertexPNCT7_ElemGLubyte
.LVL3247:
	addi 30,30,2
	b .L1481
.LVL3248:
.L2753:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL3249:
	bl UploadVertexPNCT7_ElemGLubyte
	b .L2255
.LVL3250:
.L1469:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3251:
.L1472:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT6_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNCT6_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNCT6_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL3252:
	bl UploadVertexPNCT6_ElemGLubyte
.LVL3253:
	addi 30,30,2
	b .L1472
.LVL3254:
.L1480:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3255:
.L1483:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNCT7_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNCT7_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNCT7_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL3256:
	bl UploadVertexPNCT7_ElemGLubyte
.LVL3257:
	addi 30,30,2
	b .L1483
.LVL3258:
.L1487:
	.loc 1 1349 0 is_stmt 1 discriminator 2
	cmpwi 7,8,1
	beq- 7,.L2790
	cmpwi 7,8,2
	beq- 7,.L2791
	cmpwi 7,8,3
	beq- 7,.L2792
	cmpwi 7,8,4
	beq- 7,.L2793
	cmpwi 7,8,5
	beq- 7,.L2794
	cmpwi 7,8,6
	beq- 7,.L2795
	cmpwi 7,8,7
	bne+ 7,.L719
.LVL3259:
	.loc 1 1349 0 is_stmt 0 discriminator 1
	bne- 4,.L1571
	cmpwi 7,29,0
	beq- 7,.L1572
	addi 27,31,-1
.LVL3260:
	mr 29,27
.LVL3261:
.L1573:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3262:
	blt- 7,.L2796
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT7_ElemGLushort
.LVL3263:
	b .L1573
.LVL3264:
.L2657:
	.loc 1 1339 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L903
	.loc 1 1339 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL3265:
	bl UploadVertexPNT7_Array
.LVL3266:
.L903:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2517:
.LVL3267:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3268:
	bge- 7,.L2797
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT7_Array
.LVL3269:
	b .L2517
.LVL3270:
.L2796:
	.loc 1 1349 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1572
	.loc 1 1349 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL3271:
	bl UploadVertexPT7_ElemGLushort
.LVL3272:
.L1572:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2556:
.LVL3273:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3274:
	bge- 7,.L2798
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT7_ElemGLushort
.LVL3275:
	b .L2556
.LVL3276:
.L1571:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1577
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3277:
	li 30,0
.LVL3278:
	li 28,1
.LVL3279:
.L1578:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3280:
	bge- 7,.L1577
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPT7_ElemGLushort
	addi 3,30,1
	bl UploadVertexPT7_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT7_ElemGLushort
	mr 3,26
	bl UploadVertexPT7_ElemGLushort
.LVL3281:
	addi 30,30,2
	b .L1578
.LVL3282:
.L2797:
	.loc 1 1339 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	li 3,0
.LVL3283:
	bl UploadVertexPNT7_Array
	b .L2255
.LVL3284:
.L2798:
	.loc 1 1349 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 is_stmt 0 discriminator 1
	li 3,0
.LVL3285:
	bl UploadVertexPT7_ElemGLushort
	b .L2255
.LVL3286:
.L1577:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3287:
.L1580:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT7_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPT7_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT7_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3288:
	bl UploadVertexPT7_ElemGLushort
.LVL3289:
	addi 30,30,2
	b .L1580
.LVL3290:
.L2795:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1560
	cmpwi 7,29,0
	beq- 7,.L1561
	addi 27,31,-1
.LVL3291:
	mr 29,27
.LVL3292:
.L1562:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3293:
	blt- 7,.L2799
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT6_ElemGLushort
.LVL3294:
	b .L1562
.LVL3295:
.L2794:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1548
	cmpwi 7,29,0
	beq- 7,.L1549
	addi 27,31,-1
.LVL3296:
	mr 29,27
.LVL3297:
.L1550:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3298:
	blt- 7,.L2800
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT5_ElemGLushort
.LVL3299:
	b .L1550
.LVL3300:
.L2799:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1561
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL3301:
	bl UploadVertexPT6_ElemGLushort
.LVL3302:
.L1561:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2555:
.LVL3303:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3304:
	bge- 7,.L2801
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT6_ElemGLushort
.LVL3305:
	b .L2555
.LVL3306:
.L2800:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1549
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL3307:
	bl UploadVertexPT5_ElemGLushort
.LVL3308:
.L1549:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2554:
.LVL3309:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3310:
	bge- 7,.L2802
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT5_ElemGLushort
.LVL3311:
	b .L2554
.LVL3312:
.L1548:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1554
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3313:
	li 30,0
.LVL3314:
	li 28,1
.LVL3315:
.L1555:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3316:
	bge- 7,.L1554
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPT5_ElemGLushort
	addi 3,30,1
	bl UploadVertexPT5_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT5_ElemGLushort
	mr 3,26
	bl UploadVertexPT5_ElemGLushort
.LVL3317:
	addi 30,30,2
	b .L1555
.LVL3318:
.L2801:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL3319:
	bl UploadVertexPT6_ElemGLushort
	b .L2255
.LVL3320:
.L2802:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL3321:
	bl UploadVertexPT5_ElemGLushort
	b .L2255
.LVL3322:
.L1554:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3323:
.L1557:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT5_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPT5_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT5_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3324:
	bl UploadVertexPT5_ElemGLushort
.LVL3325:
	addi 30,30,2
	b .L1557
.LVL3326:
.L1560:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1566
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3327:
	li 30,0
.LVL3328:
	li 28,1
.LVL3329:
.L1567:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3330:
	bge- 7,.L1566
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPT6_ElemGLushort
	addi 3,30,1
	bl UploadVertexPT6_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT6_ElemGLushort
	mr 3,26
	bl UploadVertexPT6_ElemGLushort
.LVL3331:
	addi 30,30,2
	b .L1567
.LVL3332:
.L2793:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1536
	cmpwi 7,29,0
	beq- 7,.L1537
	addi 27,31,-1
.LVL3333:
	mr 29,27
.LVL3334:
.L1538:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3335:
	blt- 7,.L2803
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT4_ElemGLushort
.LVL3336:
	b .L1538
.LVL3337:
.L2792:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1524
	cmpwi 7,29,0
	beq- 7,.L1525
	addi 27,31,-1
.LVL3338:
	mr 29,27
.LVL3339:
.L1526:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3340:
	blt- 7,.L2804
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT3_ElemGLushort
.LVL3341:
	b .L1526
.LVL3342:
.L1566:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3343:
.L1569:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT6_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPT6_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT6_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3344:
	bl UploadVertexPT6_ElemGLushort
.LVL3345:
	addi 30,30,2
	b .L1569
.LVL3346:
.L2803:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1537
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL3347:
	bl UploadVertexPT4_ElemGLushort
.LVL3348:
.L1537:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2553:
.LVL3349:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3350:
	bge- 7,.L2805
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT4_ElemGLushort
.LVL3351:
	b .L2553
.LVL3352:
.L1536:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1542
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3353:
	li 30,0
.LVL3354:
	li 28,1
.LVL3355:
.L1543:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3356:
	bge- 7,.L1542
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPT4_ElemGLushort
	addi 3,30,1
	bl UploadVertexPT4_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT4_ElemGLushort
	mr 3,26
	bl UploadVertexPT4_ElemGLushort
.LVL3357:
	addi 30,30,2
	b .L1543
.LVL3358:
.L2805:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL3359:
	bl UploadVertexPT4_ElemGLushort
	b .L2255
.LVL3360:
.L1542:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3361:
.L1545:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT4_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPT4_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT4_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3362:
	bl UploadVertexPT4_ElemGLushort
.LVL3363:
	addi 30,30,2
	b .L1545
.LVL3364:
.L2804:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1525
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL3365:
	bl UploadVertexPT3_ElemGLushort
.LVL3366:
.L1525:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2552:
.LVL3367:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3368:
	bge- 7,.L2806
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT3_ElemGLushort
.LVL3369:
	b .L2552
.LVL3370:
.L1524:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1530
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3371:
	li 30,0
.LVL3372:
	li 28,1
.LVL3373:
.L1531:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3374:
	bge- 7,.L1530
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPT3_ElemGLushort
	addi 3,30,1
	bl UploadVertexPT3_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT3_ElemGLushort
	mr 3,26
	bl UploadVertexPT3_ElemGLushort
.LVL3375:
	addi 30,30,2
	b .L1531
.LVL3376:
.L2806:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL3377:
	bl UploadVertexPT3_ElemGLushort
	b .L2255
.LVL3378:
.L1530:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3379:
.L1533:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT3_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPT3_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT3_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3380:
	bl UploadVertexPT3_ElemGLushort
.LVL3381:
	addi 30,30,2
	b .L1533
.LVL3382:
.L2791:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1512
	cmpwi 7,29,0
	beq- 7,.L1513
	addi 27,31,-1
.LVL3383:
	mr 29,27
.LVL3384:
.L1514:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3385:
	blt- 7,.L2807
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT2_ElemGLushort
.LVL3386:
	b .L1514
.LVL3387:
.L2790:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1500
	cmpwi 7,29,0
	beq- 7,.L1501
	addi 27,31,-1
.LVL3388:
	mr 29,27
.LVL3389:
.L1502:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3390:
	blt- 7,.L2808
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT1_ElemGLushort
.LVL3391:
	b .L1502
.LVL3392:
.L2807:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1513
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL3393:
	bl UploadVertexPT2_ElemGLushort
.LVL3394:
.L1513:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2551:
.LVL3395:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3396:
	bge- 7,.L2809
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT2_ElemGLushort
.LVL3397:
	b .L2551
.LVL3398:
.L2808:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1501
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL3399:
	bl UploadVertexPT1_ElemGLushort
.LVL3400:
.L1501:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2550:
.LVL3401:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3402:
	bge- 7,.L2810
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT1_ElemGLushort
.LVL3403:
	b .L2550
.LVL3404:
.L1500:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1506
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3405:
	li 30,0
.LVL3406:
	li 28,1
.LVL3407:
.L1507:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3408:
	bge- 7,.L1506
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPT1_ElemGLushort
	addi 3,30,1
	bl UploadVertexPT1_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT1_ElemGLushort
	mr 3,26
	bl UploadVertexPT1_ElemGLushort
.LVL3409:
	addi 30,30,2
	b .L1507
.LVL3410:
.L2809:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL3411:
	bl UploadVertexPT2_ElemGLushort
	b .L2255
.LVL3412:
.L2810:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL3413:
	bl UploadVertexPT1_ElemGLushort
	b .L2255
.LVL3414:
.L1506:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3415:
.L1509:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT1_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPT1_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT1_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3416:
	bl UploadVertexPT1_ElemGLushort
.LVL3417:
	addi 30,30,2
	b .L1509
.LVL3418:
.L1512:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1518
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3419:
	li 30,0
.LVL3420:
	li 28,1
.LVL3421:
.L1519:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3422:
	bge- 7,.L1518
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPT2_ElemGLushort
	addi 3,30,1
	bl UploadVertexPT2_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT2_ElemGLushort
	mr 3,26
	bl UploadVertexPT2_ElemGLushort
.LVL3423:
	addi 30,30,2
	b .L1519
.LVL3424:
.L1518:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3425:
.L1521:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPT2_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPT2_ElemGLushort
	addi 3,30,3
	bl UploadVertexPT2_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3426:
	bl UploadVertexPT2_ElemGLushort
.LVL3427:
	addi 30,30,2
	b .L1521
.LVL3428:
.L2755:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1798
	cmpwi 7,29,0
	beq- 7,.L1799
	addi 27,31,-1
.LVL3429:
	mr 29,27
.LVL3430:
.L1800:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3431:
	blt- 7,.L2811
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT2_ElemGLushort
.LVL3432:
	b .L1800
.LVL3433:
.L2754:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1786
	cmpwi 7,29,0
	beq- 7,.L1787
	addi 6,31,-1
.LVL3434:
	slwi 7,31,1
.LVL3435:
	cmpwi 7,6,-1
.LBB12251:
.LBB12252:
.LBB12253:
.LBB12254:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 5,wgPipe@ha
	addi 0,31,1
	bge+ 7,.L1788
	li 0,1
.LVL3436:
.L1788:
.LBE12254:
.LBE12253:
.LBE12252:
.LBE12251:
	.loc 1 1349 0 discriminator 1
	addic. 0,0,-1
.LBB12269:
.LBB12267:
.LBB12257:
.LBB12258:
	.loc 2 2400 0 discriminator 1
	addi 7,7,-2
.LBE12258:
.LBE12257:
.LBE12267:
.LBE12269:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L2812
.LBB12270:
.LBB12268:
	.loc 1 576 0
	lwz 8,0(9)
.LBB12260:
.LBB12255:
	.loc 2 2219 0
	lwz 11,wgPipe@l(5)
.LBE12255:
.LBE12260:
	.loc 1 576 0
	lhzx 8,8,7
.LVL3437:
.LBB12261:
.LBB12256:
	.loc 2 2219 0
	sth 8,0(11)
	.loc 2 2220 0
.LVL3438:
.LBE12256:
.LBE12261:
.LBB12262:
.LBB12263:
	.loc 2 2261 0
	sth 8,0(11)
	.loc 2 2262 0
.LVL3439:
.LBE12263:
.LBE12262:
.LBB12264:
.LBB12265:
	.loc 2 2317 0
	sth 8,0(11)
	.loc 2 2318 0
.LVL3440:
.LBE12265:
.LBE12264:
.LBB12266:
.LBB12259:
	.loc 2 2399 0
	sth 8,0(11)
	.loc 2 2400 0
	b .L1788
.LVL3441:
.L2812:
.LBE12259:
.LBE12266:
.LBE12268:
.LBE12270:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1787
.LVL3442:
.LBB12271:
.LBB12272:
	.loc 1 576 0 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	slwi 6,6,1
.LVL3443:
	lhzx 0,11,6
.LVL3444:
.LBB12273:
.LBB12274:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL3445:
.LBE12274:
.LBE12273:
.LBB12275:
.LBB12276:
	.loc 2 2261 0 discriminator 1
	sth 0,0(11)
	.loc 2 2262 0 discriminator 1
.LVL3446:
.LBE12276:
.LBE12275:
.LBB12277:
.LBB12278:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL3447:
.LBE12278:
.LBE12277:
.LBB12279:
.LBB12280:
	.loc 2 2399 0 discriminator 1
	sth 0,0(11)
	.loc 2 2400 0 discriminator 1
.LVL3448:
.L1787:
.LBE12280:
.LBE12279:
.LBE12272:
.LBE12271:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 8,0
	beq- 7,.L2255
	cmpwi 7,31,0
.LBB12281:
.LBB12282:
.LBB12283:
.LBB12284:
	.loc 2 2219 0 discriminator 1
	lis 7,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2613
	li 31,1
.L2613:
.LVL3449:
.LBE12284:
.LBE12283:
.LBE12282:
.LBE12281:
	.loc 1 1349 0 discriminator 1
	addic. 31,31,-1
.LBB12297:
.LBB12295:
	.loc 1 576 0 discriminator 1
	slwi 0,8,1
.LBE12295:
.LBE12297:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L2813
.LVL3450:
.LBB12298:
.LBB12296:
	.loc 1 576 0
	lwz 6,0(9)
.LBB12287:
.LBB12285:
	.loc 2 2219 0
	lwz 11,wgPipe@l(7)
.LBE12285:
.LBE12287:
	.loc 1 576 0
	lhzx 0,6,0
.LVL3451:
.LBB12288:
.LBB12286:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL3452:
.LBE12286:
.LBE12288:
.LBB12289:
.LBB12290:
	.loc 2 2261 0
	sth 0,0(11)
	.loc 2 2262 0
.LVL3453:
.LBE12290:
.LBE12289:
.LBB12291:
.LBB12292:
	.loc 2 2317 0
	sth 0,0(11)
	.loc 2 2318 0
.LVL3454:
.LBE12292:
.LBE12291:
.LBB12293:
.LBB12294:
	.loc 2 2399 0
	sth 0,0(11)
	.loc 2 2400 0
.LBE12294:
.LBE12293:
.LBE12296:
.LBE12298:
	.loc 1 1349 0
	addi 8,8,1
.LVL3455:
	b .L2613
.LVL3456:
.L2813:
	.loc 1 1349 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL3457:
.LBB12299:
.LBB12300:
	.loc 1 576 0 is_stmt 1
	lwz 9,.LANCHOR0@l(10)
	lhz 0,0(9)
.LVL3458:
.LBB12301:
.LBB12302:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL3459:
.LBE12302:
.LBE12301:
.LBB12303:
.LBB12304:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL3460:
.LBE12304:
.LBE12303:
.LBB12305:
.LBB12306:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL3461:
.LBE12306:
.LBE12305:
.LBB12307:
.LBB12308:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL3462:
.L1786:
.LBE12308:
.LBE12307:
.LBE12300:
.LBE12299:
	.loc 1 1349 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1792
	srawi 0,31,1
	addze. 0,0
	.loc 1 1349 0
	li 10,0
.LBB12309:
.LBB12310:
.LBB12311:
.LBB12312:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L1793
	li 0,1
.LVL3463:
.L1793:
.LBE12312:
.LBE12311:
.LBE12310:
.LBE12309:
	.loc 1 1349 0 discriminator 1
	addic. 0,0,-1
.LBB12324:
.LBB12325:
.LBB12326:
.LBB12327:
	.loc 2 2400 0 discriminator 1
	addi 7,10,4
.LBE12327:
.LBE12326:
.LBE12325:
.LBE12324:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L1792
.LBB12337:
.LBB12323:
	.loc 1 576 0 discriminator 2
	lwz 8,0(9)
.LBB12315:
.LBB12313:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE12313:
.LBE12315:
	.loc 1 576 0 discriminator 2
	lhzx 8,8,10
.LVL3464:
.LBB12316:
.LBB12314:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3465:
.LBE12314:
.LBE12316:
.LBB12317:
.LBB12318:
	.loc 2 2261 0 discriminator 2
	sth 8,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3466:
.LBE12318:
.LBE12317:
.LBB12319:
.LBB12320:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3467:
.LBE12320:
.LBE12319:
.LBB12321:
.LBB12322:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LBE12322:
.LBE12321:
.LBE12323:
.LBE12337:
.LBB12338:
.LBB12339:
	.loc 1 576 0 discriminator 2
	lwz 8,0(9)
.LVL3468:
	add 8,8,10
	lhz 8,2(8)
.LVL3469:
.LBB12340:
.LBB12341:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3470:
.LBE12341:
.LBE12340:
.LBB12342:
.LBB12343:
	.loc 2 2261 0 discriminator 2
	sth 8,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3471:
.LBE12343:
.LBE12342:
.LBB12344:
.LBB12345:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3472:
.LBE12345:
.LBE12344:
.LBB12346:
.LBB12347:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LBE12347:
.LBE12346:
.LBE12339:
.LBE12338:
.LBB12348:
.LBB12349:
	.loc 1 576 0 discriminator 2
	lwz 8,0(9)
.LVL3473:
	add 10,8,10
	lhz 10,6(10)
.LVL3474:
.LBB12350:
.LBB12351:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3475:
.LBE12351:
.LBE12350:
.LBB12352:
.LBB12353:
	.loc 2 2261 0 discriminator 2
	sth 10,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3476:
.LBE12353:
.LBE12352:
.LBB12354:
.LBB12355:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3477:
.LBE12355:
.LBE12354:
.LBB12356:
.LBB12357:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LBE12357:
.LBE12356:
.LBE12349:
.LBE12348:
.LBB12358:
.LBB12336:
	.loc 1 576 0 discriminator 2
	lwz 10,0(9)
.LVL3478:
	lhzx 10,10,7
.LVL3479:
.LBB12329:
.LBB12330:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3480:
.LBE12330:
.LBE12329:
.LBB12331:
.LBB12332:
	.loc 2 2261 0 discriminator 2
	sth 10,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3481:
.LBE12332:
.LBE12331:
.LBB12333:
.LBB12334:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3482:
.LBE12334:
.LBE12333:
.LBB12335:
.LBB12328:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
	mr 10,7
.LVL3483:
	b .L1793
.LVL3484:
.L1792:
.LBE12328:
.LBE12335:
.LBE12336:
.LBE12358:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1349 0 is_stmt 0
	li 10,0
	li 8,1
.LBB12359:
.LBB12360:
.LBB12361:
.LBB12362:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L1795
	li 31,1
.L1795:
.LVL3485:
.LBE12362:
.LBE12361:
.LBE12360:
.LBE12359:
	.loc 1 1349 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2255
.LVL3486:
.LBB12374:
.LBB12373:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
.LBB12365:
.LBB12363:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE12363:
.LBE12365:
	.loc 1 576 0 discriminator 2
	lhzx 0,6,10
.LVL3487:
.LBB12366:
.LBB12364:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3488:
.LBE12364:
.LBE12366:
.LBB12367:
.LBB12368:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3489:
.LBE12368:
.LBE12367:
.LBB12369:
.LBB12370:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3490:
.LBE12370:
.LBE12369:
.LBB12371:
.LBB12372:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3491:
.LBE12372:
.LBE12371:
.LBE12373:
.LBE12374:
.LBB12375:
.LBB12376:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,2
.LVL3492:
	lhzx 0,6,0
.LVL3493:
.LBB12377:
.LBB12378:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3494:
.LBE12378:
.LBE12377:
.LBB12379:
.LBB12380:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3495:
.LBE12380:
.LBE12379:
.LBB12381:
.LBB12382:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3496:
.LBE12382:
.LBE12381:
.LBB12383:
.LBB12384:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LBE12384:
.LBE12383:
.LBE12376:
.LBE12375:
.LBB12385:
.LBB12386:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
.LBE12386:
.LBE12385:
	.loc 1 1349 0 discriminator 2
	addi 8,8,1
.LVL3497:
.LBB12396:
.LBB12395:
	.loc 1 576 0 discriminator 2
	add 6,6,10
	lhz 0,6(6)
.LVL3498:
.LBB12387:
.LBB12388:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3499:
.LBE12388:
.LBE12387:
.LBB12389:
.LBB12390:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3500:
.LBE12390:
.LBE12389:
.LBB12391:
.LBB12392:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3501:
.LBE12392:
.LBE12391:
.LBB12393:
.LBB12394:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3502:
.LBE12394:
.LBE12393:
.LBE12395:
.LBE12396:
.LBB12397:
.LBB12398:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lhz 0,2(6)
.LVL3503:
.LBB12399:
.LBB12400:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3504:
.LBE12400:
.LBE12399:
.LBB12401:
.LBB12402:
	.loc 2 2261 0 discriminator 2
	sth 0,0(11)
	.loc 2 2262 0 discriminator 2
.LVL3505:
.LBE12402:
.LBE12401:
.LBB12403:
.LBB12404:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3506:
.LBE12404:
.LBE12403:
.LBB12405:
.LBB12406:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3507:
	addi 10,10,4
	b .L1795
.LVL3508:
.L2811:
.LBE12406:
.LBE12405:
.LBE12398:
.LBE12397:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1799
	.loc 1 1349 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL3509:
	bl UploadVertexPNCT2_ElemGLushort
.LVL3510:
.L1799:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2569:
.LVL3511:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3512:
	bge- 7,.L2814
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT2_ElemGLushort
.LVL3513:
	b .L2569
.LVL3514:
.L1798:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1804
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3515:
	li 30,0
.LVL3516:
	li 28,1
.LVL3517:
.L1805:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3518:
	bge- 7,.L1804
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT2_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNCT2_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNCT2_ElemGLushort
	mr 3,26
	bl UploadVertexPNCT2_ElemGLushort
.LVL3519:
	addi 30,30,2
	b .L1805
.LVL3520:
.L2814:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL3521:
	bl UploadVertexPNCT2_ElemGLushort
	b .L2255
.LVL3522:
.L1804:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3523:
.L1807:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT2_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNCT2_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNCT2_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3524:
	bl UploadVertexPNCT2_ElemGLushort
.LVL3525:
	addi 30,30,2
	b .L1807
.LVL3526:
.L2756:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1810
	cmpwi 7,29,0
	beq- 7,.L1811
	addi 27,31,-1
.LVL3527:
	mr 29,27
.LVL3528:
.L1812:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3529:
	blt- 7,.L2815
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT3_ElemGLushort
.LVL3530:
	b .L1812
.LVL3531:
.L2771:
	.loc 1 1352 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL3532:
.LBB12407:
.LBB12408:
	.loc 1 577 0
	lwz 9,.LANCHOR0@l(10)
	lhz 0,2(9)
.LVL3533:
.LBB12409:
.LBB12410:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL3534:
.LBE12410:
.LBE12409:
.LBB12411:
.LBB12412:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL3535:
.LBE12412:
.LBE12411:
.LBB12413:
.LBB12414:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL3536:
.LBE12414:
.LBE12413:
.LBB12415:
.LBB12416:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL3537:
.L2815:
.LBE12416:
.LBE12415:
.LBE12408:
.LBE12407:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1811
	.loc 1 1349 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL3538:
	bl UploadVertexPNCT3_ElemGLushort
.LVL3539:
.L1811:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2570:
.LVL3540:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3541:
	bge- 7,.L2816
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT3_ElemGLushort
.LVL3542:
	b .L2570
.LVL3543:
.L1810:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1816
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3544:
	li 30,0
.LVL3545:
	li 28,1
.LVL3546:
.L1817:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3547:
	bge- 7,.L1816
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT3_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNCT3_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNCT3_ElemGLushort
	mr 3,26
	bl UploadVertexPNCT3_ElemGLushort
.LVL3548:
	addi 30,30,2
	b .L1817
.LVL3549:
.L2816:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL3550:
	bl UploadVertexPNCT3_ElemGLushort
	b .L2255
.LVL3551:
.L1816:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3552:
.L1819:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT3_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNCT3_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNCT3_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3553:
	bl UploadVertexPNCT3_ElemGLushort
.LVL3554:
	addi 30,30,2
	b .L1819
.LVL3555:
.L2761:
	.loc 1 1352 0 is_stmt 1 discriminator 1
	bne- 4,.L2074
	cmpwi 7,29,0
	beq- 7,.L2075
	addi 6,31,-1
.LVL3556:
	slwi 11,31,2
	cmpwi 7,6,-1
.LBB12417:
.LBB12418:
.LBB12419:
.LBB12420:
	.loc 2 2219 0 discriminator 1
	lis 5,wgPipe@ha
	addi 0,31,1
	bge+ 7,.L2076
	li 0,1
.LVL3557:
.L2076:
.LBE12420:
.LBE12419:
.LBE12418:
.LBE12417:
	.loc 1 1352 0 discriminator 1
	addic. 0,0,-1
.LBB12433:
.LBB12431:
.LBB12423:
.LBB12424:
	.loc 2 2400 0 discriminator 1
	addi 11,11,-4
.LBE12424:
.LBE12423:
.LBE12431:
.LBE12433:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2817
.LVL3558:
.LBB12434:
.LBB12432:
	.loc 1 577 0
	lwz 7,0(9)
.LBB12426:
.LBB12421:
	.loc 2 2219 0
	lwz 8,wgPipe@l(5)
.LBE12421:
.LBE12426:
	.loc 1 577 0
	lwzx 7,7,11
	rlwinm 7,7,0,0xffff
.LVL3559:
.LBB12427:
.LBB12422:
	.loc 2 2219 0
	sth 7,0(8)
	.loc 2 2220 0
.LVL3560:
.LBE12422:
.LBE12427:
.LBB12428:
.LBB12429:
	.loc 2 2317 0
	sth 7,0(8)
	.loc 2 2318 0
.LVL3561:
.LBE12429:
.LBE12428:
.LBB12430:
.LBB12425:
	.loc 2 2399 0
	sth 7,0(8)
	.loc 2 2400 0
	b .L2076
.LVL3562:
.L2817:
.LBE12425:
.LBE12430:
.LBE12432:
.LBE12434:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2075
.LVL3563:
.LBB12435:
.LBB12436:
	.loc 1 577 0 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	slwi 6,6,2
.LVL3564:
	lwzx 0,11,6
.LBB12437:
.LBB12438:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
.LBE12438:
.LBE12437:
	.loc 1 577 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL3565:
.LBB12440:
.LBB12439:
	.loc 2 2219 0 discriminator 1
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL3566:
.LBE12439:
.LBE12440:
.LBB12441:
.LBB12442:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL3567:
.LBE12442:
.LBE12441:
.LBB12443:
.LBB12444:
	.loc 2 2399 0 discriminator 1
	sth 0,0(11)
	.loc 2 2400 0 discriminator 1
.LVL3568:
.L2075:
.LBE12444:
.LBE12443:
.LBE12436:
.LBE12435:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 11,0
	beq- 7,.L2255
	cmpwi 7,31,0
.LBB12445:
.LBB12446:
.LBB12447:
.LBB12448:
	.loc 2 2219 0 discriminator 1
	lis 7,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2614
	li 31,1
.L2614:
.LVL3569:
.LBE12448:
.LBE12447:
.LBE12446:
.LBE12445:
	.loc 1 1352 0 discriminator 1
	addic. 31,31,-1
.LBB12459:
.LBB12457:
	.loc 1 577 0 discriminator 1
	slwi 0,11,2
.LBE12457:
.LBE12459:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2818
.LVL3570:
.LBB12460:
.LBB12458:
	.loc 1 577 0
	lwz 6,0(9)
.LBB12451:
.LBB12449:
	.loc 2 2219 0
	lwz 8,wgPipe@l(7)
.LBE12449:
.LBE12451:
	.loc 1 577 0
	lwzx 0,6,0
	rlwinm 0,0,0,0xffff
.LVL3571:
.LBB12452:
.LBB12450:
	.loc 2 2219 0
	sth 0,0(8)
	.loc 2 2220 0
.LVL3572:
.LBE12450:
.LBE12452:
.LBB12453:
.LBB12454:
	.loc 2 2317 0
	sth 0,0(8)
	.loc 2 2318 0
.LVL3573:
.LBE12454:
.LBE12453:
.LBB12455:
.LBB12456:
	.loc 2 2399 0
	sth 0,0(8)
	.loc 2 2400 0
.LBE12456:
.LBE12455:
.LBE12458:
.LBE12460:
	.loc 1 1352 0
	addi 11,11,1
.LVL3574:
	b .L2614
.LVL3575:
.L2818:
	.loc 1 1352 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL3576:
.LBB12461:
.LBB12462:
	.loc 1 577 0 is_stmt 1
	lwz 9,.LANCHOR0@l(10)
	lhz 0,2(9)
.LVL3577:
.LBB12463:
.LBB12464:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL3578:
.LBE12464:
.LBE12463:
.LBB12465:
.LBB12466:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL3579:
.LBE12466:
.LBE12465:
.LBB12467:
.LBB12468:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL3580:
.L2074:
.LBE12468:
.LBE12467:
.LBE12462:
.LBE12461:
	.loc 1 1352 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2080
	srawi 0,31,1
	addze. 0,0
	.loc 1 1352 0
	li 10,0
.LBB12469:
.LBB12470:
.LBB12471:
.LBB12472:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L2081
	li 0,1
.LVL3581:
.L2081:
.LBE12472:
.LBE12471:
.LBE12470:
.LBE12469:
	.loc 1 1352 0 discriminator 1
	addic. 0,0,-1
.LBB12482:
.LBB12483:
.LBB12484:
.LBB12485:
	.loc 2 2400 0 discriminator 1
	addi 7,10,8
.LBE12485:
.LBE12484:
.LBE12483:
.LBE12482:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2080
.LVL3582:
.LBB12493:
.LBB12481:
	.loc 1 577 0 discriminator 2
	lwz 8,0(9)
.LBB12475:
.LBB12473:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE12473:
.LBE12475:
	.loc 1 577 0 discriminator 2
	lwzx 8,8,10
	rlwinm 8,8,0,0xffff
.LVL3583:
.LBB12476:
.LBB12474:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3584:
.LBE12474:
.LBE12476:
.LBB12477:
.LBB12478:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3585:
.LBE12478:
.LBE12477:
.LBB12479:
.LBB12480:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3586:
.LBE12480:
.LBE12479:
.LBE12481:
.LBE12493:
.LBB12494:
.LBB12495:
	.loc 1 577 0 discriminator 2
	lwz 8,0(9)
.LVL3587:
	add 8,8,10
	lhz 8,6(8)
.LVL3588:
.LBB12496:
.LBB12497:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3589:
.LBE12497:
.LBE12496:
.LBB12498:
.LBB12499:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3590:
.LBE12499:
.LBE12498:
.LBB12500:
.LBB12501:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3591:
.LBE12501:
.LBE12500:
.LBE12495:
.LBE12494:
.LBB12502:
.LBB12503:
	.loc 1 577 0 discriminator 2
	lwz 8,0(9)
.LVL3592:
	add 10,8,10
.LVL3593:
	lhz 10,14(10)
.LVL3594:
.LBB12504:
.LBB12505:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3595:
.LBE12505:
.LBE12504:
.LBB12506:
.LBB12507:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3596:
.LBE12507:
.LBE12506:
.LBB12508:
.LBB12509:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3597:
.LBE12509:
.LBE12508:
.LBE12503:
.LBE12502:
.LBB12510:
.LBB12492:
	.loc 1 577 0 discriminator 2
	lwz 10,0(9)
.LVL3598:
	lwzx 10,10,7
	rlwinm 10,10,0,0xffff
.LVL3599:
.LBB12487:
.LBB12488:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3600:
.LBE12488:
.LBE12487:
.LBB12489:
.LBB12490:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3601:
.LBE12490:
.LBE12489:
.LBB12491:
.LBB12486:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
	mr 10,7
.LVL3602:
	b .L2081
.LVL3603:
.L2080:
.LBE12486:
.LBE12491:
.LBE12492:
.LBE12510:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1352 0 is_stmt 0
	li 10,0
	li 8,1
.LBB12511:
.LBB12512:
.LBB12513:
.LBB12514:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L2083
	li 31,1
.L2083:
.LVL3604:
.LBE12514:
.LBE12513:
.LBE12512:
.LBE12511:
	.loc 1 1352 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2255
.LVL3605:
.LBB12524:
.LBB12523:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
.LBB12517:
.LBB12515:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE12515:
.LBE12517:
	.loc 1 577 0 discriminator 2
	lwzx 0,6,10
	rlwinm 0,0,0,0xffff
.LVL3606:
.LBB12518:
.LBB12516:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3607:
.LBE12516:
.LBE12518:
.LBB12519:
.LBB12520:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3608:
.LBE12520:
.LBE12519:
.LBB12521:
.LBB12522:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3609:
.LBE12522:
.LBE12521:
.LBE12523:
.LBE12524:
.LBB12525:
.LBB12526:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,3
.LVL3610:
	lwzx 0,6,0
	rlwinm 0,0,0,0xffff
.LVL3611:
.LBB12527:
.LBB12528:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3612:
.LBE12528:
.LBE12527:
.LBB12529:
.LBB12530:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3613:
.LBE12530:
.LBE12529:
.LBB12531:
.LBB12532:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LBE12532:
.LBE12531:
.LBE12526:
.LBE12525:
.LBB12533:
.LBB12534:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
.LBE12534:
.LBE12533:
	.loc 1 1352 0 discriminator 2
	addi 8,8,1
.LVL3614:
.LBB12542:
.LBB12541:
	.loc 1 577 0 discriminator 2
	add 6,6,10
	lhz 0,14(6)
.LVL3615:
.LBB12535:
.LBB12536:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3616:
.LBE12536:
.LBE12535:
.LBB12537:
.LBB12538:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3617:
.LBE12538:
.LBE12537:
.LBB12539:
.LBB12540:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3618:
.LBE12540:
.LBE12539:
.LBE12541:
.LBE12542:
.LBB12543:
.LBB12544:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lhz 0,6(6)
.LVL3619:
.LBB12545:
.LBB12546:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3620:
.LBE12546:
.LBE12545:
.LBB12547:
.LBB12548:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3621:
.LBE12548:
.LBE12547:
.LBB12549:
.LBB12550:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3622:
	addi 10,10,8
.LVL3623:
	b .L2083
.LVL3624:
.L2769:
.LBE12550:
.LBE12549:
.LBE12544:
.LBE12543:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2111
	.loc 1 1352 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL3625:
	bl UploadVertexPCT4_ElemGLuint
.LVL3626:
.L2111:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2590:
.LVL3627:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3628:
	bge- 7,.L2819
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT4_ElemGLuint
.LVL3629:
	b .L2590
.LVL3630:
.L2110:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2116
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL3631:
	li 30,0
.LVL3632:
	li 28,1
.LVL3633:
.L2117:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3634:
	bge- 7,.L2116
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT4_ElemGLuint
	addi 3,30,1
	bl UploadVertexPCT4_ElemGLuint
	addi 3,30,3
	bl UploadVertexPCT4_ElemGLuint
	mr 3,26
	bl UploadVertexPCT4_ElemGLuint
.LVL3635:
	addi 30,30,2
	b .L2117
.LVL3636:
.L2819:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL3637:
	bl UploadVertexPCT4_ElemGLuint
	b .L2255
.LVL3638:
.L2116:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3639:
.L2119:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT4_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPCT4_ElemGLuint
	addi 3,30,3
	bl UploadVertexPCT4_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL3640:
	bl UploadVertexPCT4_ElemGLuint
.LVL3641:
	addi 30,30,2
	b .L2119
.LVL3642:
.L2763:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L2098
	cmpwi 7,29,0
	beq- 7,.L2099
	addi 27,31,-1
.LVL3643:
	mr 29,27
.LVL3644:
.L2100:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3645:
	blt- 7,.L2820
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT3_ElemGLuint
.LVL3646:
	b .L2100
.LVL3647:
.L2768:
	.loc 1 1349 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 is_stmt 0 discriminator 1
	li 3,0
.LVL3648:
	bl UploadVertexPNCT7_ElemGLushort
	b .L2255
.LVL3649:
.L2820:
	.loc 1 1352 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2099
	.loc 1 1352 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL3650:
	bl UploadVertexPCT3_ElemGLuint
.LVL3651:
.L2099:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2589:
.LVL3652:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3653:
	bge- 7,.L2821
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT3_ElemGLuint
.LVL3654:
	b .L2589
.LVL3655:
.L2098:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2104
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL3656:
	li 30,0
.LVL3657:
	li 28,1
.LVL3658:
.L2105:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3659:
	bge- 7,.L2104
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT3_ElemGLuint
	addi 3,30,1
	bl UploadVertexPCT3_ElemGLuint
	addi 3,30,3
	bl UploadVertexPCT3_ElemGLuint
	mr 3,26
	bl UploadVertexPCT3_ElemGLuint
.LVL3660:
	addi 30,30,2
	b .L2105
.LVL3661:
.L2821:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL3662:
	bl UploadVertexPCT3_ElemGLuint
	b .L2255
.LVL3663:
.L2104:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3664:
.L2107:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT3_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPCT3_ElemGLuint
	addi 3,30,3
	bl UploadVertexPCT3_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL3665:
	bl UploadVertexPCT3_ElemGLuint
.LVL3666:
	addi 30,30,2
	b .L2107
.LVL3667:
.L2086:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2092
	srawi 0,31,1
	addze. 0,0
	.loc 1 1352 0
	li 10,0
.LBB12551:
.LBB12552:
.LBB12553:
.LBB12554:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L2093
	li 0,1
.LVL3668:
.L2093:
.LBE12554:
.LBE12553:
.LBE12552:
.LBE12551:
	.loc 1 1352 0 discriminator 1
	addic. 0,0,-1
.LBB12566:
.LBB12567:
.LBB12568:
.LBB12569:
	.loc 2 2400 0 discriminator 1
	addi 7,10,8
.LBE12569:
.LBE12568:
.LBE12567:
.LBE12566:
	.loc 1 1352 0 discriminator 1
	beq- 0,.L2092
.LVL3669:
.LBB12579:
.LBB12565:
	.loc 1 577 0 discriminator 2
	lwz 8,0(9)
.LBB12557:
.LBB12555:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE12555:
.LBE12557:
	.loc 1 577 0 discriminator 2
	lwzx 8,8,10
	rlwinm 8,8,0,0xffff
.LVL3670:
.LBB12558:
.LBB12556:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3671:
.LBE12556:
.LBE12558:
.LBB12559:
.LBB12560:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3672:
.LBE12560:
.LBE12559:
.LBB12561:
.LBB12562:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3673:
.LBE12562:
.LBE12561:
.LBB12563:
.LBB12564:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3674:
.LBE12564:
.LBE12563:
.LBE12565:
.LBE12579:
.LBB12580:
.LBB12581:
	.loc 1 577 0 discriminator 2
	lwz 8,0(9)
.LVL3675:
	add 8,8,10
	lhz 8,6(8)
.LVL3676:
.LBB12582:
.LBB12583:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3677:
.LBE12583:
.LBE12582:
.LBB12584:
.LBB12585:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3678:
.LBE12585:
.LBE12584:
.LBB12586:
.LBB12587:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3679:
.LBE12587:
.LBE12586:
.LBB12588:
.LBB12589:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3680:
.LBE12589:
.LBE12588:
.LBE12581:
.LBE12580:
.LBB12590:
.LBB12591:
	.loc 1 577 0 discriminator 2
	lwz 8,0(9)
.LVL3681:
	add 10,8,10
.LVL3682:
	lhz 10,14(10)
.LVL3683:
.LBB12592:
.LBB12593:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3684:
.LBE12593:
.LBE12592:
.LBB12594:
.LBB12595:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3685:
.LBE12595:
.LBE12594:
.LBB12596:
.LBB12597:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3686:
.LBE12597:
.LBE12596:
.LBB12598:
.LBB12599:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3687:
.LBE12599:
.LBE12598:
.LBE12591:
.LBE12590:
.LBB12600:
.LBB12578:
	.loc 1 577 0 discriminator 2
	lwz 10,0(9)
.LVL3688:
	lwzx 10,10,7
	rlwinm 10,10,0,0xffff
.LVL3689:
.LBB12571:
.LBB12572:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3690:
.LBE12572:
.LBE12571:
.LBB12573:
.LBB12574:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3691:
.LBE12574:
.LBE12573:
.LBB12575:
.LBB12576:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3692:
.LBE12576:
.LBE12575:
.LBB12577:
.LBB12570:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
	mr 10,7
.LVL3693:
	b .L2093
.LVL3694:
.L2092:
.LBE12570:
.LBE12577:
.LBE12578:
.LBE12600:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1352 0 is_stmt 0
	li 10,0
	li 8,1
.LBB12601:
.LBB12602:
.LBB12603:
.LBB12604:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L2095
	li 31,1
.L2095:
.LVL3695:
.LBE12604:
.LBE12603:
.LBE12602:
.LBE12601:
	.loc 1 1352 0 discriminator 1
	addic. 31,31,-1
	beq- 0,.L2255
.LVL3696:
.LBB12616:
.LBB12615:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
.LBB12607:
.LBB12605:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE12605:
.LBE12607:
	.loc 1 577 0 discriminator 2
	lwzx 0,6,10
	rlwinm 0,0,0,0xffff
.LVL3697:
.LBB12608:
.LBB12606:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3698:
.LBE12606:
.LBE12608:
.LBB12609:
.LBB12610:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3699:
.LBE12610:
.LBE12609:
.LBB12611:
.LBB12612:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3700:
.LBE12612:
.LBE12611:
.LBB12613:
.LBB12614:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3701:
.LBE12614:
.LBE12613:
.LBE12615:
.LBE12616:
.LBB12617:
.LBB12618:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,3
.LVL3702:
	lwzx 0,6,0
	rlwinm 0,0,0,0xffff
.LVL3703:
.LBB12619:
.LBB12620:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3704:
.LBE12620:
.LBE12619:
.LBB12621:
.LBB12622:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3705:
.LBE12622:
.LBE12621:
.LBB12623:
.LBB12624:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3706:
.LBE12624:
.LBE12623:
.LBB12625:
.LBB12626:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LBE12626:
.LBE12625:
.LBE12618:
.LBE12617:
.LBB12627:
.LBB12628:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
.LBE12628:
.LBE12627:
	.loc 1 1352 0 discriminator 2
	addi 8,8,1
.LVL3707:
.LBB12638:
.LBB12637:
	.loc 1 577 0 discriminator 2
	add 6,6,10
	lhz 0,14(6)
.LVL3708:
.LBB12629:
.LBB12630:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3709:
.LBE12630:
.LBE12629:
.LBB12631:
.LBB12632:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3710:
.LBE12632:
.LBE12631:
.LBB12633:
.LBB12634:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3711:
.LBE12634:
.LBE12633:
.LBB12635:
.LBB12636:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3712:
.LBE12636:
.LBE12635:
.LBE12637:
.LBE12638:
.LBB12639:
.LBB12640:
	.loc 1 577 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lhz 0,6(6)
.LVL3713:
.LBB12641:
.LBB12642:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL3714:
.LBE12642:
.LBE12641:
.LBB12643:
.LBB12644:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL3715:
.LBE12644:
.LBE12643:
.LBB12645:
.LBB12646:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3716:
.LBE12646:
.LBE12645:
.LBB12647:
.LBB12648:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL3717:
	addi 10,10,8
.LVL3718:
	b .L2095
.LVL3719:
.L1857:
.LBE12648:
.LBE12647:
.LBE12640:
.LBE12639:
	.loc 1 1349 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1863
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3720:
	li 30,0
.LVL3721:
	li 28,1
.LVL3722:
.L1864:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3723:
	bge- 7,.L1863
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT7_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNCT7_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNCT7_ElemGLushort
	mr 3,26
	bl UploadVertexPNCT7_ElemGLushort
.LVL3724:
	addi 30,30,2
	b .L1864
.LVL3725:
.L2759:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1846
	cmpwi 7,29,0
	beq- 7,.L1847
	addi 27,31,-1
.LVL3726:
	mr 29,27
.LVL3727:
.L1848:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3728:
	blt- 7,.L2822
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT6_ElemGLushort
.LVL3729:
	b .L1848
.LVL3730:
.L2758:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1834
	cmpwi 7,29,0
	beq- 7,.L1835
	addi 27,31,-1
.LVL3731:
	mr 29,27
.LVL3732:
.L1836:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3733:
	blt- 7,.L2823
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT5_ElemGLushort
.LVL3734:
	b .L1836
.LVL3735:
.L1863:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3736:
.L1866:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT7_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNCT7_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNCT7_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3737:
	bl UploadVertexPNCT7_ElemGLushort
.LVL3738:
	addi 30,30,2
	b .L1866
.LVL3739:
.L2822:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1847
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL3740:
	bl UploadVertexPNCT6_ElemGLushort
.LVL3741:
.L1847:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2573:
.LVL3742:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3743:
	bge- 7,.L2824
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT6_ElemGLushort
.LVL3744:
	b .L2573
.LVL3745:
.L1846:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1852
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3746:
	li 30,0
.LVL3747:
	li 28,1
.LVL3748:
.L1853:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3749:
	bge- 7,.L1852
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT6_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNCT6_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNCT6_ElemGLushort
	mr 3,26
	bl UploadVertexPNCT6_ElemGLushort
.LVL3750:
	addi 30,30,2
	b .L1853
.LVL3751:
.L2824:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL3752:
	bl UploadVertexPNCT6_ElemGLushort
	b .L2255
.LVL3753:
.L1852:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3754:
.L1855:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT6_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNCT6_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNCT6_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3755:
	bl UploadVertexPNCT6_ElemGLushort
.LVL3756:
	addi 30,30,2
	b .L1855
.LVL3757:
.L2145:
	.loc 1 1352 0 is_stmt 1 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1352 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L2151
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL3758:
	li 30,0
.LVL3759:
	li 28,1
.LVL3760:
.L2152:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3761:
	bge- 7,.L2151
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT7_ElemGLuint
	addi 3,30,1
	bl UploadVertexPCT7_ElemGLuint
	addi 3,30,3
	bl UploadVertexPCT7_ElemGLuint
	mr 3,26
	bl UploadVertexPCT7_ElemGLuint
.LVL3762:
	addi 30,30,2
	b .L2152
.LVL3763:
.L2772:
	.loc 1 1349 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1823
	.loc 1 1349 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL3764:
	bl UploadVertexPNCT4_ElemGLushort
.LVL3765:
.L1823:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2571:
.LVL3766:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3767:
	bge- 7,.L2825
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT4_ElemGLushort
.LVL3768:
	b .L2571
.LVL3769:
.L2151:
	.loc 1 1352 0 is_stmt 1 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1352 0 is_stmt 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3770:
.L2154:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPCT7_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPCT7_ElemGLuint
	addi 3,30,3
	bl UploadVertexPCT7_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL3771:
	bl UploadVertexPCT7_ElemGLuint
.LVL3772:
	addi 30,30,2
	b .L2154
.LVL3773:
.L1822:
	.loc 1 1349 0 is_stmt 1 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1828
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3774:
	li 30,0
.LVL3775:
	li 28,1
.LVL3776:
.L1829:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3777:
	bge- 7,.L1828
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT4_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNCT4_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNCT4_ElemGLushort
	mr 3,26
	bl UploadVertexPNCT4_ElemGLushort
.LVL3778:
	addi 30,30,2
	b .L1829
.LVL3779:
.L2825:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL3780:
	bl UploadVertexPNCT4_ElemGLushort
	b .L2255
.LVL3781:
.L1828:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3782:
.L1831:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT4_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNCT4_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNCT4_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3783:
	bl UploadVertexPNCT4_ElemGLushort
.LVL3784:
	addi 30,30,2
	b .L1831
.LVL3785:
.L2823:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1835
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL3786:
	bl UploadVertexPNCT5_ElemGLushort
.LVL3787:
.L1835:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2572:
.LVL3788:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3789:
	bge- 7,.L2826
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT5_ElemGLushort
.LVL3790:
	b .L2572
.LVL3791:
.L1834:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1840
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL3792:
	li 30,0
.LVL3793:
	li 28,1
.LVL3794:
.L1841:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3795:
	bge- 7,.L1840
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT5_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNCT5_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNCT5_ElemGLushort
	mr 3,26
	bl UploadVertexPNCT5_ElemGLushort
.LVL3796:
	addi 30,30,2
	b .L1841
.LVL3797:
.L2826:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL3798:
	bl UploadVertexPNCT5_ElemGLushort
	b .L2255
.LVL3799:
.L1840:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3800:
.L1843:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNCT5_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNCT5_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNCT5_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL3801:
	bl UploadVertexPNCT5_ElemGLushort
.LVL3802:
	addi 30,30,2
	b .L1843
.LVL3803:
.L2663:
	.loc 1 1339 0 is_stmt 1 discriminator 1
	bne- 4,.L797
	cmpwi 7,29,0
	beq- 7,.L798
	addi 27,31,-1
.LVL3804:
	mr 29,27
.LVL3805:
.L799:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3806:
	blt- 7,.L2827
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPT6_Array
.LVL3807:
	b .L799
.LVL3808:
.L2662:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L785
	cmpwi 7,29,0
	beq- 7,.L786
	addi 27,31,-1
.LVL3809:
	mr 29,27
.LVL3810:
.L787:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3811:
	blt- 7,.L2828
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPT5_Array
.LVL3812:
	b .L787
.LVL3813:
.L2827:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L798
	.loc 1 1339 0 discriminator 1
	mr 3,27
.LVL3814:
	bl UploadVertexPT6_Array
.LVL3815:
.L798:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2512:
.LVL3816:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3817:
	bge- 7,.L2829
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPT6_Array
.LVL3818:
	b .L2512
.LVL3819:
.L2828:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L786
	.loc 1 1339 0 discriminator 1
	mr 3,27
.LVL3820:
	bl UploadVertexPT5_Array
.LVL3821:
.L786:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2511:
.LVL3822:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3823:
	bge- 7,.L2830
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPT5_Array
.LVL3824:
	b .L2511
.LVL3825:
.L785:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L791
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL3826:
	li 30,0
.LVL3827:
	li 28,1
.LVL3828:
.L792:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3829:
	bge- 7,.L791
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPT5_Array
	addi 3,30,1
	bl UploadVertexPT5_Array
	addi 3,30,3
	bl UploadVertexPT5_Array
	mr 3,26
	bl UploadVertexPT5_Array
.LVL3830:
	addi 30,30,2
	b .L792
.LVL3831:
.L2830:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL3832:
	bl UploadVertexPT5_Array
	b .L2255
.LVL3833:
.L791:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3834:
.L794:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPT5_Array
	slwi 3,29,1
	bl UploadVertexPT5_Array
	addi 3,30,3
	bl UploadVertexPT5_Array
	addi 3,30,1
	addi 29,29,1
.LVL3835:
	bl UploadVertexPT5_Array
.LVL3836:
	addi 30,30,2
	b .L794
.LVL3837:
.L797:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L803
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL3838:
	li 30,0
.LVL3839:
	li 28,1
.LVL3840:
.L804:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3841:
	bge- 7,.L803
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPT6_Array
	addi 3,30,1
	bl UploadVertexPT6_Array
	addi 3,30,3
	bl UploadVertexPT6_Array
	mr 3,26
	bl UploadVertexPT6_Array
.LVL3842:
	addi 30,30,2
	b .L804
.LVL3843:
.L2829:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL3844:
	bl UploadVertexPT6_Array
	b .L2255
.LVL3845:
.L803:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3846:
.L806:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPT6_Array
	slwi 3,29,1
	bl UploadVertexPT6_Array
	addi 3,30,3
	bl UploadVertexPT6_Array
	addi 3,30,1
	addi 29,29,1
.LVL3847:
	bl UploadVertexPT6_Array
.LVL3848:
	addi 30,30,2
	b .L806
.LVL3849:
.L2661:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L773
	cmpwi 7,29,0
	beq- 7,.L774
.LVL3850:
	addic. 27,31,-1
.LVL3851:
	blt- 0,.L775
	.loc 1 1339 0 discriminator 2
	mr 29,27
.LVL3852:
.L776:
	mr 3,29
	bl UploadVertexPT4_Array
.LVL3853:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL3854:
	bne+ 7,.L776
.LVL3855:
.L775:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L774
	.loc 1 1339 0 discriminator 1
	mr 3,27
	bl UploadVertexPT4_Array
.L774:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL3856:
	.loc 1 1339 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L777
	.loc 1 1339 0
	li 29,0
.LVL3857:
.L778:
	.loc 1 1339 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPT4_Array
.LVL3858:
	cmpw 7,29,31
	bne+ 7,.L778
.LVL3859:
.L777:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
	bl UploadVertexPT4_Array
	b .L2255
.LVL3860:
.L2660:
	bne- 4,.L761
	cmpwi 7,29,0
	beq- 7,.L762
.LVL3861:
	addic. 27,31,-1
.LVL3862:
	blt- 0,.L763
	.loc 1 1339 0 discriminator 2
	mr 29,27
.LVL3863:
.L764:
	mr 3,29
	bl UploadVertexPT3_Array
.LVL3864:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL3865:
	bne+ 7,.L764
.LVL3866:
.L763:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L762
	.loc 1 1339 0 discriminator 1
	mr 3,27
	bl UploadVertexPT3_Array
.L762:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL3867:
	.loc 1 1339 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L765
	.loc 1 1339 0
	li 29,0
.LVL3868:
.L766:
	.loc 1 1339 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPT3_Array
.LVL3869:
	cmpw 7,29,31
	bne+ 7,.L766
.LVL3870:
.L765:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
	bl UploadVertexPT3_Array
	b .L2255
.LVL3871:
.L761:
	.loc 1 1339 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L767
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL3872:
	li 30,0
.LVL3873:
	li 28,1
.LVL3874:
.L768:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3875:
	bge- 7,.L767
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPT3_Array
	addi 3,30,1
	bl UploadVertexPT3_Array
	addi 3,30,3
	bl UploadVertexPT3_Array
	mr 3,26
	bl UploadVertexPT3_Array
.LVL3876:
	addi 30,30,2
	b .L768
.LVL3877:
.L767:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3878:
.L770:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPT3_Array
	slwi 3,29,1
	bl UploadVertexPT3_Array
	addi 3,30,3
	bl UploadVertexPT3_Array
	addi 3,30,1
	addi 29,29,1
.LVL3879:
	bl UploadVertexPT3_Array
.LVL3880:
	addi 30,30,2
	b .L770
.LVL3881:
.L773:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L779
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL3882:
	li 30,0
.LVL3883:
	li 28,1
.LVL3884:
.L780:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3885:
	bge- 7,.L779
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPT4_Array
	addi 3,30,1
	bl UploadVertexPT4_Array
	addi 3,30,3
	bl UploadVertexPT4_Array
	mr 3,26
	bl UploadVertexPT4_Array
.LVL3886:
	addi 30,30,2
	b .L780
.LVL3887:
.L2659:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L749
	cmpwi 7,29,0
	beq- 7,.L750
.LVL3888:
	addic. 27,31,-1
.LVL3889:
	blt- 0,.L751
	.loc 1 1339 0 discriminator 2
	mr 29,27
.LVL3890:
.L752:
	mr 3,29
	bl UploadVertexPT2_Array
.LVL3891:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL3892:
	bne+ 7,.L752
.LVL3893:
.L751:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L750
	.loc 1 1339 0 discriminator 1
	mr 3,27
	bl UploadVertexPT2_Array
.L750:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL3894:
	.loc 1 1339 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L753
	.loc 1 1339 0
	li 29,0
.LVL3895:
.L754:
	.loc 1 1339 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPT2_Array
.LVL3896:
	cmpw 7,29,31
	bne+ 7,.L754
.LVL3897:
.L753:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
	bl UploadVertexPT2_Array
	b .L2255
.LVL3898:
.L2671:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L996
	.loc 1 1339 0 discriminator 1
	mr 3,27
.LVL3899:
	bl UploadVertexPCT7_Array
.LVL3900:
.L996:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2520:
.LVL3901:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3902:
	bge- 7,.L2831
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPCT7_Array
.LVL3903:
	b .L2520
.LVL3904:
.L995:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1001
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL3905:
	li 30,0
.LVL3906:
	li 28,1
.LVL3907:
.L1002:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3908:
	bge- 7,.L1001
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT7_Array
	addi 3,30,1
	bl UploadVertexPCT7_Array
	addi 3,30,3
	bl UploadVertexPCT7_Array
	mr 3,26
	bl UploadVertexPCT7_Array
.LVL3909:
	addi 30,30,2
	b .L1002
.LVL3910:
.L2831:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL3911:
	bl UploadVertexPCT7_Array
	b .L2255
.LVL3912:
.L1001:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3913:
.L1004:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPCT7_Array
	slwi 3,29,1
	bl UploadVertexPCT7_Array
	addi 3,30,3
	bl UploadVertexPCT7_Array
	addi 3,30,1
	addi 29,29,1
.LVL3914:
	bl UploadVertexPCT7_Array
.LVL3915:
	addi 30,30,2
	b .L1004
.LVL3916:
.L2670:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L984
	cmpwi 7,29,0
	beq- 7,.L985
	addi 27,31,-1
.LVL3917:
	mr 29,27
.LVL3918:
.L986:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3919:
	blt- 7,.L2832
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPCT6_Array
.LVL3920:
	b .L986
.LVL3921:
.L2669:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L972
	cmpwi 7,29,0
	beq- 7,.L973
	addi 27,31,-1
.LVL3922:
	mr 29,27
.LVL3923:
.L974:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL3924:
	blt- 7,.L2833
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPCT5_Array
.LVL3925:
	b .L974
.LVL3926:
.L2832:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L985
	.loc 1 1339 0 discriminator 1
	mr 3,27
.LVL3927:
	bl UploadVertexPCT6_Array
.LVL3928:
.L985:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2519:
.LVL3929:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3930:
	bge- 7,.L2834
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPCT6_Array
.LVL3931:
	b .L2519
.LVL3932:
.L2833:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L973
	.loc 1 1339 0 discriminator 1
	mr 3,27
.LVL3933:
	bl UploadVertexPCT5_Array
.LVL3934:
.L973:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2518:
.LVL3935:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL3936:
	bge- 7,.L2835
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPCT5_Array
.LVL3937:
	b .L2518
.LVL3938:
.L972:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L978
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL3939:
	li 30,0
.LVL3940:
	li 28,1
.LVL3941:
.L979:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3942:
	bge- 7,.L978
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT5_Array
	addi 3,30,1
	bl UploadVertexPCT5_Array
	addi 3,30,3
	bl UploadVertexPCT5_Array
	mr 3,26
	bl UploadVertexPCT5_Array
.LVL3943:
	addi 30,30,2
	b .L979
.LVL3944:
.L2834:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL3945:
	bl UploadVertexPCT6_Array
	b .L2255
.LVL3946:
.L978:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3947:
.L981:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPCT5_Array
	slwi 3,29,1
	bl UploadVertexPCT5_Array
	addi 3,30,3
	bl UploadVertexPCT5_Array
	addi 3,30,1
	addi 29,29,1
.LVL3948:
	bl UploadVertexPCT5_Array
.LVL3949:
	addi 30,30,2
	b .L981
.LVL3950:
.L984:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L990
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL3951:
	li 30,0
.LVL3952:
	li 28,1
.LVL3953:
.L991:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3954:
	bge- 7,.L990
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT6_Array
	addi 3,30,1
	bl UploadVertexPCT6_Array
	addi 3,30,3
	bl UploadVertexPCT6_Array
	mr 3,26
	bl UploadVertexPCT6_Array
.LVL3955:
	addi 30,30,2
	b .L991
.LVL3956:
.L2835:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL3957:
	bl UploadVertexPCT5_Array
	b .L2255
.LVL3958:
.L990:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3959:
.L993:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPCT6_Array
	slwi 3,29,1
	bl UploadVertexPCT6_Array
	addi 3,30,3
	bl UploadVertexPCT6_Array
	addi 3,30,1
	addi 29,29,1
.LVL3960:
	bl UploadVertexPCT6_Array
.LVL3961:
	addi 30,30,2
	b .L993
.LVL3962:
.L779:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3963:
.L782:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPT4_Array
	slwi 3,29,1
	bl UploadVertexPT4_Array
	addi 3,30,3
	bl UploadVertexPT4_Array
	addi 3,30,1
	addi 29,29,1
.LVL3964:
	bl UploadVertexPT4_Array
.LVL3965:
	addi 30,30,2
	b .L782
.LVL3966:
.L749:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L755
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL3967:
	li 30,0
.LVL3968:
	li 28,1
.LVL3969:
.L756:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL3970:
	bge- 7,.L755
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPT2_Array
	addi 3,30,1
	bl UploadVertexPT2_Array
	addi 3,30,3
	bl UploadVertexPT2_Array
	mr 3,26
	bl UploadVertexPT2_Array
.LVL3971:
	addi 30,30,2
	b .L756
.LVL3972:
.L755:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL3973:
.L758:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPT2_Array
	slwi 3,29,1
	bl UploadVertexPT2_Array
	addi 3,30,3
	bl UploadVertexPT2_Array
	addi 3,30,1
	addi 29,29,1
.LVL3974:
	bl UploadVertexPT2_Array
.LVL3975:
	addi 30,30,2
	b .L758
.LVL3976:
.L2668:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L960
	cmpwi 7,29,0
	beq- 7,.L961
	addi 0,31,-1
.LVL3977:
	mr 8,31
.LVL3978:
	cmpwi 7,0,-1
.LBB12649:
.LBB12650:
.LBB12651:
.LBB12652:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 7,wgPipe@ha
.LVL3979:
	addi 10,31,1
	bge+ 7,.L962
	li 10,1
.LVL3980:
.L962:
.LBE12652:
.LBE12651:
.LBE12650:
.LBE12649:
	.loc 1 1339 0 discriminator 1
	addic. 10,10,-1
.LBB12671:
.LBB12669:
.LBB12655:
.LBB12656:
	.loc 2 2400 0 discriminator 1
	addi 8,8,-1
.LBE12656:
.LBE12655:
.LBE12669:
.LBE12671:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L2836
.LBB12672:
.LBB12670:
.LBB12658:
.LBB12653:
	.loc 2 2219 0
	lwz 9,wgPipe@l(7)
.LBE12653:
.LBE12658:
	.loc 1 570 0
	rlwinm 11,8,0,0xffff
.LVL3981:
.LBB12659:
.LBB12654:
	.loc 2 2219 0
	sth 11,0(9)
	.loc 2 2220 0
.LVL3982:
.LBE12654:
.LBE12659:
.LBB12660:
.LBB12661:
	.loc 2 2317 0
	sth 11,0(9)
	.loc 2 2318 0
.LVL3983:
.LBE12661:
.LBE12660:
.LBB12662:
.LBB12663:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LVL3984:
.LBE12663:
.LBE12662:
.LBB12664:
.LBB12665:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LVL3985:
.LBE12665:
.LBE12664:
.LBB12666:
.LBB12667:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LVL3986:
.LBE12667:
.LBE12666:
.LBB12668:
.LBB12657:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
	b .L962
.LVL3987:
.L2836:
.LBE12657:
.LBE12668:
.LBE12670:
.LBE12672:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L961
.LVL3988:
.LBB12673:
.LBB12674:
.LBB12675:
.LBB12676:
	.loc 2 2219 0 discriminator 1
	lis 9,wgPipe@ha
.LBE12676:
.LBE12675:
	.loc 1 570 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL3989:
.LBB12678:
.LBB12677:
	.loc 2 2219 0 discriminator 1
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0 discriminator 1
.LVL3990:
.LBE12677:
.LBE12678:
.LBB12679:
.LBB12680:
	.loc 2 2317 0 discriminator 1
	sth 0,0(9)
	.loc 2 2318 0 discriminator 1
.LVL3991:
.LBE12680:
.LBE12679:
.LBB12681:
.LBB12682:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL3992:
.LBE12682:
.LBE12681:
.LBB12683:
.LBB12684:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL3993:
.LBE12684:
.LBE12683:
.LBB12685:
.LBB12686:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL3994:
.LBE12686:
.LBE12685:
.LBB12687:
.LBB12688:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL3995:
.L961:
.LBE12688:
.LBE12687:
.LBE12674:
.LBE12673:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 11,0
	beq- 7,.L2255
	cmpwi 7,31,0
.LBB12689:
.LBB12690:
.LBB12691:
.LBB12692:
	.loc 2 2219 0 discriminator 1
	lis 10,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2604
	li 31,1
.L2604:
.LVL3996:
.LBE12692:
.LBE12691:
.LBE12690:
.LBE12689:
	.loc 1 1339 0 discriminator 1
	addic. 31,31,-1
.LBB12707:
.LBB12705:
	.loc 1 570 0 discriminator 1
	rlwinm 0,11,0,0xffff
.LBE12705:
.LBE12707:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L2837
.LVL3997:
.LBB12708:
.LBB12706:
.LBB12694:
.LBB12693:
	.loc 2 2219 0
	lwz 9,wgPipe@l(10)
	sth 0,0(9)
	.loc 2 2220 0
.LVL3998:
.LBE12693:
.LBE12694:
.LBB12695:
.LBB12696:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL3999:
.LBE12696:
.LBE12695:
.LBB12697:
.LBB12698:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4000:
.LBE12698:
.LBE12697:
.LBB12699:
.LBB12700:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4001:
.LBE12700:
.LBE12699:
.LBB12701:
.LBB12702:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4002:
.LBE12702:
.LBE12701:
.LBB12703:
.LBB12704:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE12704:
.LBE12703:
.LBE12706:
.LBE12708:
	.loc 1 1339 0
	addi 11,11,1
.LVL4003:
	b .L2604
.LVL4004:
.L2837:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL4005:
.LBB12709:
.LBB12710:
.LBB12711:
.LBB12712:
	.loc 2 2219 0 is_stmt 1
	lis 9,wgPipe@ha
	li 0,0
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL4006:
.LBE12712:
.LBE12711:
.LBB12713:
.LBB12714:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL4007:
.LBE12714:
.LBE12713:
.LBB12715:
.LBB12716:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4008:
.LBE12716:
.LBE12715:
.LBB12717:
.LBB12718:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4009:
.LBE12718:
.LBE12717:
.LBB12719:
.LBB12720:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4010:
.LBE12720:
.LBE12719:
.LBB12721:
.LBB12722:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL4011:
.L960:
.LBE12722:
.LBE12721:
.LBE12710:
.LBE12709:
	.loc 1 1339 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L966
	srawi 8,31,1
	addze. 8,8
.LVL4012:
	.loc 1 1339 0
	li 11,0
.LBB12723:
.LBB12724:
.LBB12725:
.LBB12726:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
.LVL4013:
	bgt+ 0,.L967
	li 8,1
.L967:
.LBE12726:
.LBE12725:
.LBE12724:
.LBE12723:
	.loc 1 1339 0 discriminator 1
	addic. 8,8,-1
.LBB12740:
.LBB12741:
.LBB12742:
.LBB12743:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE12743:
.LBE12742:
.LBE12741:
.LBE12740:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L966
.LVL4014:
.LBB12757:
.LBB12739:
.LBB12728:
.LBB12727:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(7)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4015:
.LBE12727:
.LBE12728:
.LBB12729:
.LBB12730:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4016:
.LBE12730:
.LBE12729:
.LBB12731:
.LBB12732:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4017:
.LBE12732:
.LBE12731:
.LBB12733:
.LBB12734:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4018:
.LBE12734:
.LBE12733:
.LBB12735:
.LBB12736:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4019:
.LBE12736:
.LBE12735:
.LBB12737:
.LBB12738:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 10,11,1
	rlwinm 10,10,0,0xffff
.LVL4020:
.LBE12738:
.LBE12737:
.LBE12739:
.LBE12757:
.LBB12758:
.LBB12759:
.LBB12760:
.LBB12761:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4021:
.LBE12761:
.LBE12760:
.LBB12762:
.LBB12763:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4022:
.LBE12763:
.LBE12762:
.LBB12764:
.LBB12765:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4023:
.LBE12765:
.LBE12764:
.LBB12766:
.LBB12767:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4024:
.LBE12767:
.LBE12766:
.LBB12768:
.LBB12769:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4025:
.LBE12769:
.LBE12768:
.LBB12770:
.LBB12771:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LBE12771:
.LBE12770:
.LBE12759:
.LBE12758:
	.loc 1 1164 0 discriminator 2
	addi 11,11,3
.LVL4026:
	rlwinm 11,11,0,0xffff
.LVL4027:
.LBB12772:
.LBB12773:
.LBB12774:
.LBB12775:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4028:
.LBE12775:
.LBE12774:
.LBB12776:
.LBB12777:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4029:
.LBE12777:
.LBE12776:
.LBB12778:
.LBB12779:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4030:
.LBE12779:
.LBE12778:
.LBB12780:
.LBB12781:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4031:
.LBE12781:
.LBE12780:
.LBB12782:
.LBB12783:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4032:
.LBE12783:
.LBE12782:
.LBB12784:
.LBB12785:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4033:
.LBE12785:
.LBE12784:
.LBE12773:
.LBE12772:
.LBB12786:
.LBB12756:
.LBB12745:
.LBB12746:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4034:
.LBE12746:
.LBE12745:
.LBB12747:
.LBB12748:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4035:
.LBE12748:
.LBE12747:
.LBB12749:
.LBB12750:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4036:
.LBE12750:
.LBE12749:
.LBB12751:
.LBB12752:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4037:
.LBE12752:
.LBE12751:
.LBB12753:
.LBB12754:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4038:
.LBE12754:
.LBE12753:
.LBB12755:
.LBB12744:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4039:
	b .L967
.LVL4040:
.L966:
.LBE12744:
.LBE12755:
.LBE12756:
.LBE12786:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1339 0 is_stmt 0
	li 11,0
.LBB12787:
.LBB12788:
.LBB12789:
.LBB12790:
	.loc 2 2219 0 is_stmt 1
	lis 8,wgPipe@ha
	bgt+ 0,.L969
	li 31,1
.L969:
.LBE12790:
.LBE12789:
.LBE12788:
.LBE12787:
	.loc 1 1339 0 discriminator 1
	addic. 31,31,-1
.LBB12804:
.LBB12805:
.LBB12806:
.LBB12807:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE12807:
.LBE12806:
.LBE12805:
.LBE12804:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L2255
.LVL4041:
.LBB12821:
.LBB12803:
.LBB12792:
.LBB12791:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(8)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4042:
.LBE12791:
.LBE12792:
.LBB12793:
.LBB12794:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4043:
.LBE12794:
.LBE12793:
.LBB12795:
.LBB12796:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4044:
.LBE12796:
.LBE12795:
.LBB12797:
.LBB12798:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4045:
.LBE12798:
.LBE12797:
.LBB12799:
.LBB12800:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4046:
.LBE12800:
.LBE12799:
.LBB12801:
.LBB12802:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4047:
.LBE12802:
.LBE12801:
.LBE12803:
.LBE12821:
.LBB12822:
.LBB12823:
.LBB12824:
.LBB12825:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4048:
.LBE12825:
.LBE12824:
.LBB12826:
.LBB12827:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4049:
.LBE12827:
.LBE12826:
.LBB12828:
.LBB12829:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4050:
.LBE12829:
.LBE12828:
.LBB12830:
.LBB12831:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4051:
.LBE12831:
.LBE12830:
.LBB12832:
.LBB12833:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4052:
.LBE12833:
.LBE12832:
.LBB12834:
.LBB12835:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LBE12835:
.LBE12834:
.LBE12823:
.LBE12822:
	.loc 1 1164 0 discriminator 2
	addi 10,11,3
	rlwinm 10,10,0,0xffff
.LVL4053:
.LBB12836:
.LBB12837:
.LBB12838:
.LBB12839:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4054:
.LBE12839:
.LBE12838:
.LBB12840:
.LBB12841:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4055:
.LBE12841:
.LBE12840:
.LBB12842:
.LBB12843:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4056:
.LBE12843:
.LBE12842:
.LBB12844:
.LBB12845:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4057:
.LBE12845:
.LBE12844:
.LBB12846:
.LBB12847:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4058:
.LBE12847:
.LBE12846:
.LBB12848:
.LBB12849:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 11,11,1
.LVL4059:
	rlwinm 11,11,0,0xffff
.LVL4060:
.LBE12849:
.LBE12848:
.LBE12837:
.LBE12836:
.LBB12850:
.LBB12820:
.LBB12809:
.LBB12810:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4061:
.LBE12810:
.LBE12809:
.LBB12811:
.LBB12812:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4062:
.LBE12812:
.LBE12811:
.LBB12813:
.LBB12814:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4063:
.LBE12814:
.LBE12813:
.LBB12815:
.LBB12816:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4064:
.LBE12816:
.LBE12815:
.LBB12817:
.LBB12818:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4065:
.LBE12818:
.LBE12817:
.LBB12819:
.LBB12808:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4066:
	b .L969
.LVL4067:
.L2667:
.LBE12808:
.LBE12819:
.LBE12820:
.LBE12850:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L948
	cmpwi 7,29,0
	beq- 7,.L949
.LVL4068:
	addic. 0,31,-1
	blt- 0,.L950
	lis 11,wgPipe@ha
.LBB12851:
.LBB12852:
.LBB12853:
.LBB12854:
	.loc 2 2219 0
	addic 8,0,1
.LVL4069:
	lwz 9,wgPipe@l(11)
	mtctr 8
.LBE12854:
.LBE12853:
.LBE12852:
.LBE12851:
	.loc 1 1339 0
	mr 10,0
.LVL4070:
.L951:
.LBB12866:
.LBB12865:
	.loc 1 570 0
	rlwinm 11,10,0,0xffff
.LVL4071:
.LBB12856:
.LBB12855:
	.loc 2 2219 0
	sth 11,0(9)
	.loc 2 2220 0
.LVL4072:
.LBE12855:
.LBE12856:
.LBB12857:
.LBB12858:
	.loc 2 2317 0
	sth 11,0(9)
	.loc 2 2318 0
.LVL4073:
.LBE12858:
.LBE12857:
.LBB12859:
.LBB12860:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LVL4074:
.LBE12860:
.LBE12859:
.LBB12861:
.LBB12862:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LVL4075:
.LBE12862:
.LBE12861:
.LBB12863:
.LBB12864:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LBE12864:
.LBE12863:
.LBE12865:
.LBE12866:
	.loc 1 1339 0
	addi 10,10,-1
.LVL4076:
	bdnz .L951
.LVL4077:
.L950:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L949
.LVL4078:
.LBB12867:
.LBB12868:
.LBB12869:
.LBB12870:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 11,wgPipe@ha
.LBE12870:
.LBE12869:
	.loc 1 570 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL4079:
.LBB12872:
.LBB12871:
	.loc 2 2219 0 discriminator 1
	lwz 9,wgPipe@l(11)
	sth 0,0(9)
	.loc 2 2220 0 discriminator 1
.LVL4080:
.LBE12871:
.LBE12872:
.LBB12873:
.LBB12874:
	.loc 2 2317 0 discriminator 1
	sth 0,0(9)
	.loc 2 2318 0 discriminator 1
.LVL4081:
.LBE12874:
.LBE12873:
.LBB12875:
.LBB12876:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL4082:
.LBE12876:
.LBE12875:
.LBB12877:
.LBB12878:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL4083:
.LBE12878:
.LBE12877:
.LBB12879:
.LBB12880:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL4084:
.L949:
.LBE12880:
.LBE12879:
.LBE12868:
.LBE12867:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL4085:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L952
	lis 11,wgPipe@ha
.LBB12881:
.LBB12882:
.LBB12883:
.LBB12884:
	.loc 2 2219 0 is_stmt 1
	mtctr 31
	lwz 9,wgPipe@l(11)
.LBE12884:
.LBE12883:
.LBE12882:
.LBE12881:
	.loc 1 1339 0
	li 11,0
.LVL4086:
.L953:
.LBB12896:
.LBB12895:
	.loc 1 570 0
	rlwinm 0,11,0,0xffff
.LVL4087:
.LBB12886:
.LBB12885:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL4088:
.LBE12885:
.LBE12886:
.LBB12887:
.LBB12888:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL4089:
.LBE12888:
.LBE12887:
.LBB12889:
.LBB12890:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4090:
.LBE12890:
.LBE12889:
.LBB12891:
.LBB12892:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4091:
.LBE12892:
.LBE12891:
.LBB12893:
.LBB12894:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE12894:
.LBE12893:
.LBE12895:
.LBE12896:
	.loc 1 1339 0
	addi 11,11,1
.LVL4092:
	bdnz .L953
.LVL4093:
.L952:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL4094:
.LBB12897:
.LBB12898:
.LBB12899:
.LBB12900:
	.loc 2 2219 0 is_stmt 1
	lis 9,wgPipe@ha
	li 0,0
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL4095:
.LBE12900:
.LBE12899:
.LBB12901:
.LBB12902:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL4096:
.LBE12902:
.LBE12901:
.LBB12903:
.LBB12904:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4097:
.LBE12904:
.LBE12903:
.LBB12905:
.LBB12906:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4098:
.LBE12906:
.LBE12905:
.LBB12907:
.LBB12908:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL4099:
.L2666:
.LBE12908:
.LBE12907:
.LBE12898:
.LBE12897:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L936
	cmpwi 7,29,0
	beq- 7,.L937
.LVL4100:
	addic. 0,31,-1
	blt- 0,.L938
	lis 11,wgPipe@ha
.LBB12909:
.LBB12910:
.LBB12911:
.LBB12912:
	.loc 2 2219 0
	mtctr 31
	lwz 9,wgPipe@l(11)
.LBE12912:
.LBE12911:
.LBE12910:
.LBE12909:
	.loc 1 1339 0
	mr 10,0
.LVL4101:
.L939:
.LBB12922:
.LBB12921:
	.loc 1 570 0
	rlwinm 11,10,0,0xffff
.LVL4102:
.LBB12914:
.LBB12913:
	.loc 2 2219 0
	sth 11,0(9)
	.loc 2 2220 0
.LVL4103:
.LBE12913:
.LBE12914:
.LBB12915:
.LBB12916:
	.loc 2 2317 0
	sth 11,0(9)
	.loc 2 2318 0
.LVL4104:
.LBE12916:
.LBE12915:
.LBB12917:
.LBB12918:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LVL4105:
.LBE12918:
.LBE12917:
.LBB12919:
.LBB12920:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LBE12920:
.LBE12919:
.LBE12921:
.LBE12922:
	.loc 1 1339 0
	addi 10,10,-1
.LVL4106:
	bdnz .L939
.LVL4107:
.L938:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L937
.LVL4108:
.LBB12923:
.LBB12924:
.LBB12925:
.LBB12926:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 11,wgPipe@ha
.LBE12926:
.LBE12925:
	.loc 1 570 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL4109:
.LBB12928:
.LBB12927:
	.loc 2 2219 0 discriminator 1
	lwz 9,wgPipe@l(11)
	sth 0,0(9)
	.loc 2 2220 0 discriminator 1
.LVL4110:
.LBE12927:
.LBE12928:
.LBB12929:
.LBB12930:
	.loc 2 2317 0 discriminator 1
	sth 0,0(9)
	.loc 2 2318 0 discriminator 1
.LVL4111:
.LBE12930:
.LBE12929:
.LBB12931:
.LBB12932:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL4112:
.LBE12932:
.LBE12931:
.LBB12933:
.LBB12934:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL4113:
.L937:
.LBE12934:
.LBE12933:
.LBE12924:
.LBE12923:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL4114:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L940
	lis 11,wgPipe@ha
.LBB12935:
.LBB12936:
.LBB12937:
.LBB12938:
	.loc 2 2219 0 is_stmt 1
	mtctr 31
	lwz 9,wgPipe@l(11)
.LBE12938:
.LBE12937:
.LBE12936:
.LBE12935:
	.loc 1 1339 0
	li 11,0
.LVL4115:
.L941:
.LBB12948:
.LBB12947:
	.loc 1 570 0
	rlwinm 0,11,0,0xffff
.LVL4116:
.LBB12940:
.LBB12939:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL4117:
.LBE12939:
.LBE12940:
.LBB12941:
.LBB12942:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL4118:
.LBE12942:
.LBE12941:
.LBB12943:
.LBB12944:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4119:
.LBE12944:
.LBE12943:
.LBB12945:
.LBB12946:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE12946:
.LBE12945:
.LBE12947:
.LBE12948:
	.loc 1 1339 0
	addi 11,11,1
.LVL4120:
	bdnz .L941
.LVL4121:
.L940:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL4122:
.LBB12949:
.LBB12950:
.LBB12951:
.LBB12952:
	.loc 2 2219 0 is_stmt 1
	lis 9,wgPipe@ha
	li 0,0
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL4123:
.LBE12952:
.LBE12951:
.LBB12953:
.LBB12954:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL4124:
.LBE12954:
.LBE12953:
.LBB12955:
.LBB12956:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4125:
.LBE12956:
.LBE12955:
.LBB12957:
.LBB12958:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL4126:
.L2665:
.LBE12958:
.LBE12957:
.LBE12950:
.LBE12949:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L924
	cmpwi 7,29,0
	beq- 7,.L925
.LVL4127:
	addic. 0,31,-1
	blt- 0,.L926
	lis 11,wgPipe@ha
.LBB12959:
.LBB12960:
.LBB12961:
.LBB12962:
	.loc 2 2219 0
	mtctr 31
	lwz 11,wgPipe@l(11)
.LBE12962:
.LBE12961:
.LBE12960:
.LBE12959:
	.loc 1 1339 0
	mr 9,0
.LVL4128:
.L927:
.LBB12970:
.LBB12969:
	.loc 1 570 0
	rlwinm 10,9,0,0xffff
.LVL4129:
.LBB12964:
.LBB12963:
	.loc 2 2219 0
	sth 10,0(11)
	.loc 2 2220 0
.LVL4130:
.LBE12963:
.LBE12964:
.LBB12965:
.LBB12966:
	.loc 2 2317 0
	sth 10,0(11)
	.loc 2 2318 0
.LVL4131:
.LBE12966:
.LBE12965:
.LBB12967:
.LBB12968:
	.loc 2 2399 0
	sth 10,0(11)
	.loc 2 2400 0
.LBE12968:
.LBE12967:
.LBE12969:
.LBE12970:
	.loc 1 1339 0
	addi 9,9,-1
.LVL4132:
	bdnz .L927
.LVL4133:
.L926:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L925
.LVL4134:
.LBB12971:
.LBB12972:
.LBB12973:
.LBB12974:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 11,wgPipe@ha
.LBE12974:
.LBE12973:
	.loc 1 570 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL4135:
.LBB12976:
.LBB12975:
	.loc 2 2219 0 discriminator 1
	lwz 9,wgPipe@l(11)
	sth 0,0(9)
	.loc 2 2220 0 discriminator 1
.LVL4136:
.LBE12975:
.LBE12976:
.LBB12977:
.LBB12978:
	.loc 2 2317 0 discriminator 1
	sth 0,0(9)
	.loc 2 2318 0 discriminator 1
.LVL4137:
.LBE12978:
.LBE12977:
.LBB12979:
.LBB12980:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL4138:
.L925:
.LBE12980:
.LBE12979:
.LBE12972:
.LBE12971:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	beq- 7,.L2255
.LVL4139:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L928
	lis 11,wgPipe@ha
.LBB12981:
.LBB12982:
.LBB12983:
.LBB12984:
	.loc 2 2219 0 is_stmt 1
	mtctr 31
	lwz 11,wgPipe@l(11)
.LBE12984:
.LBE12983:
.LBE12982:
.LBE12981:
	.loc 1 1339 0
	li 9,0
.LVL4140:
.L929:
.LBB12992:
.LBB12991:
	.loc 1 570 0
	rlwinm 0,9,0,0xffff
.LVL4141:
.LBB12986:
.LBB12985:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL4142:
.LBE12985:
.LBE12986:
.LBB12987:
.LBB12988:
	.loc 2 2317 0
	sth 0,0(11)
	.loc 2 2318 0
.LVL4143:
.LBE12988:
.LBE12987:
.LBB12989:
.LBB12990:
	.loc 2 2399 0
	sth 0,0(11)
	.loc 2 2400 0
.LBE12990:
.LBE12989:
.LBE12991:
.LBE12992:
	.loc 1 1339 0
	addi 9,9,1
.LVL4144:
	bdnz .L929
.LVL4145:
.L928:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL4146:
.LBB12993:
.LBB12994:
.LBB12995:
.LBB12996:
	.loc 2 2219 0 is_stmt 1
	lis 9,wgPipe@ha
	li 0,0
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL4147:
.LBE12996:
.LBE12995:
.LBB12997:
.LBB12998:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL4148:
.LBE12998:
.LBE12997:
.LBB12999:
.LBB13000:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL4149:
.L948:
.LBE13000:
.LBE12999:
.LBE12994:
.LBE12993:
	.loc 1 1339 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L954
	srawi 8,31,1
	addze. 8,8
.LVL4150:
	.loc 1 1339 0
	li 11,0
.LBB13001:
.LBB13002:
.LBB13003:
.LBB13004:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
.LVL4151:
	bgt+ 0,.L955
	li 8,1
.L955:
.LBE13004:
.LBE13003:
.LBE13002:
.LBE13001:
	.loc 1 1339 0 discriminator 1
	addic. 8,8,-1
.LBB13016:
.LBB13017:
.LBB13018:
.LBB13019:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE13019:
.LBE13018:
.LBE13017:
.LBE13016:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L954
.LVL4152:
.LBB13031:
.LBB13015:
.LBB13006:
.LBB13005:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(7)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4153:
.LBE13005:
.LBE13006:
.LBB13007:
.LBB13008:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4154:
.LBE13008:
.LBE13007:
.LBB13009:
.LBB13010:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4155:
.LBE13010:
.LBE13009:
.LBB13011:
.LBB13012:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4156:
.LBE13012:
.LBE13011:
.LBB13013:
.LBB13014:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 10,11,1
	rlwinm 10,10,0,0xffff
.LVL4157:
.LBE13014:
.LBE13013:
.LBE13015:
.LBE13031:
.LBB13032:
.LBB13033:
.LBB13034:
.LBB13035:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4158:
.LBE13035:
.LBE13034:
.LBB13036:
.LBB13037:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4159:
.LBE13037:
.LBE13036:
.LBB13038:
.LBB13039:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4160:
.LBE13039:
.LBE13038:
.LBB13040:
.LBB13041:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4161:
.LBE13041:
.LBE13040:
.LBB13042:
.LBB13043:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LBE13043:
.LBE13042:
.LBE13033:
.LBE13032:
	.loc 1 1164 0 discriminator 2
	addi 11,11,3
.LVL4162:
	rlwinm 11,11,0,0xffff
.LVL4163:
.LBB13044:
.LBB13045:
.LBB13046:
.LBB13047:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4164:
.LBE13047:
.LBE13046:
.LBB13048:
.LBB13049:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4165:
.LBE13049:
.LBE13048:
.LBB13050:
.LBB13051:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4166:
.LBE13051:
.LBE13050:
.LBB13052:
.LBB13053:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4167:
.LBE13053:
.LBE13052:
.LBB13054:
.LBB13055:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4168:
.LBE13055:
.LBE13054:
.LBE13045:
.LBE13044:
.LBB13056:
.LBB13030:
.LBB13021:
.LBB13022:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4169:
.LBE13022:
.LBE13021:
.LBB13023:
.LBB13024:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4170:
.LBE13024:
.LBE13023:
.LBB13025:
.LBB13026:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4171:
.LBE13026:
.LBE13025:
.LBB13027:
.LBB13028:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4172:
.LBE13028:
.LBE13027:
.LBB13029:
.LBB13020:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4173:
	b .L955
.LVL4174:
.L954:
.LBE13020:
.LBE13029:
.LBE13030:
.LBE13056:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1339 0 is_stmt 0
	li 11,0
.LBB13057:
.LBB13058:
.LBB13059:
.LBB13060:
	.loc 2 2219 0 is_stmt 1
	lis 8,wgPipe@ha
	bgt+ 0,.L957
	li 31,1
.L957:
.LBE13060:
.LBE13059:
.LBE13058:
.LBE13057:
	.loc 1 1339 0 discriminator 1
	addic. 31,31,-1
.LBB13072:
.LBB13073:
.LBB13074:
.LBB13075:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE13075:
.LBE13074:
.LBE13073:
.LBE13072:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L2255
.LVL4175:
.LBB13087:
.LBB13071:
.LBB13062:
.LBB13061:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(8)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4176:
.LBE13061:
.LBE13062:
.LBB13063:
.LBB13064:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4177:
.LBE13064:
.LBE13063:
.LBB13065:
.LBB13066:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4178:
.LBE13066:
.LBE13065:
.LBB13067:
.LBB13068:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4179:
.LBE13068:
.LBE13067:
.LBB13069:
.LBB13070:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4180:
.LBE13070:
.LBE13069:
.LBE13071:
.LBE13087:
.LBB13088:
.LBB13089:
.LBB13090:
.LBB13091:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4181:
.LBE13091:
.LBE13090:
.LBB13092:
.LBB13093:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4182:
.LBE13093:
.LBE13092:
.LBB13094:
.LBB13095:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4183:
.LBE13095:
.LBE13094:
.LBB13096:
.LBB13097:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4184:
.LBE13097:
.LBE13096:
.LBB13098:
.LBB13099:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LBE13099:
.LBE13098:
.LBE13089:
.LBE13088:
	.loc 1 1164 0 discriminator 2
	addi 10,11,3
	rlwinm 10,10,0,0xffff
.LVL4185:
.LBB13100:
.LBB13101:
.LBB13102:
.LBB13103:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4186:
.LBE13103:
.LBE13102:
.LBB13104:
.LBB13105:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4187:
.LBE13105:
.LBE13104:
.LBB13106:
.LBB13107:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4188:
.LBE13107:
.LBE13106:
.LBB13108:
.LBB13109:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4189:
.LBE13109:
.LBE13108:
.LBB13110:
.LBB13111:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 11,11,1
.LVL4190:
	rlwinm 11,11,0,0xffff
.LVL4191:
.LBE13111:
.LBE13110:
.LBE13101:
.LBE13100:
.LBB13112:
.LBB13086:
.LBB13077:
.LBB13078:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4192:
.LBE13078:
.LBE13077:
.LBB13079:
.LBB13080:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4193:
.LBE13080:
.LBE13079:
.LBB13081:
.LBB13082:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4194:
.LBE13082:
.LBE13081:
.LBB13083:
.LBB13084:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4195:
.LBE13084:
.LBE13083:
.LBB13085:
.LBB13076:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4196:
	b .L957
.LVL4197:
.L936:
.LBE13076:
.LBE13085:
.LBE13086:
.LBE13112:
	.loc 1 1339 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L942
	srawi 10,31,1
	addze. 10,10
	.loc 1 1339 0
	li 11,0
.LBB13113:
.LBB13114:
.LBB13115:
.LBB13116:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
.LVL4198:
	bgt+ 0,.L943
	li 10,1
.LVL4199:
.L943:
.LBE13116:
.LBE13115:
.LBE13114:
.LBE13113:
	.loc 1 1339 0 discriminator 1
	addic. 10,10,-1
.LBB13126:
.LBB13127:
.LBB13128:
.LBB13129:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE13129:
.LBE13128:
.LBE13127:
.LBE13126:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L942
.LVL4200:
.LBB13139:
.LBB13125:
.LBB13118:
.LBB13117:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(7)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4201:
.LBE13117:
.LBE13118:
.LBB13119:
.LBB13120:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4202:
.LBE13120:
.LBE13119:
.LBB13121:
.LBB13122:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4203:
.LBE13122:
.LBE13121:
.LBB13123:
.LBB13124:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 8,11,1
	rlwinm 8,8,0,0xffff
.LVL4204:
.LBE13124:
.LBE13123:
.LBE13125:
.LBE13139:
.LBB13140:
.LBB13141:
.LBB13142:
.LBB13143:
	.loc 2 2219 0 discriminator 2
	sth 8,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4205:
.LBE13143:
.LBE13142:
.LBB13144:
.LBB13145:
	.loc 2 2317 0 discriminator 2
	sth 8,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4206:
.LBE13145:
.LBE13144:
.LBB13146:
.LBB13147:
	.loc 2 2399 0 discriminator 2
	sth 8,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4207:
.LBE13147:
.LBE13146:
.LBB13148:
.LBB13149:
	.loc 2 2399 0 discriminator 2
	sth 8,0(9)
	.loc 2 2400 0 discriminator 2
.LBE13149:
.LBE13148:
.LBE13141:
.LBE13140:
	.loc 1 1164 0 discriminator 2
	addi 11,11,3
.LVL4208:
	rlwinm 11,11,0,0xffff
.LVL4209:
.LBB13150:
.LBB13151:
.LBB13152:
.LBB13153:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4210:
.LBE13153:
.LBE13152:
.LBB13154:
.LBB13155:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4211:
.LBE13155:
.LBE13154:
.LBB13156:
.LBB13157:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4212:
.LBE13157:
.LBE13156:
.LBB13158:
.LBB13159:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4213:
.LBE13159:
.LBE13158:
.LBE13151:
.LBE13150:
.LBB13160:
.LBB13138:
.LBB13131:
.LBB13132:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4214:
.LBE13132:
.LBE13131:
.LBB13133:
.LBB13134:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4215:
.LBE13134:
.LBE13133:
.LBB13135:
.LBB13136:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4216:
.LBE13136:
.LBE13135:
.LBB13137:
.LBB13130:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4217:
	b .L943
.LVL4218:
.L942:
.LBE13130:
.LBE13137:
.LBE13138:
.LBE13160:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1339 0 is_stmt 0
	li 11,0
.LBB13161:
.LBB13162:
.LBB13163:
.LBB13164:
	.loc 2 2219 0 is_stmt 1
	lis 8,wgPipe@ha
	bgt+ 0,.L945
	li 31,1
.L945:
.LBE13164:
.LBE13163:
.LBE13162:
.LBE13161:
	.loc 1 1339 0 discriminator 1
	addic. 31,31,-1
.LBB13174:
.LBB13175:
.LBB13176:
.LBB13177:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE13177:
.LBE13176:
.LBE13175:
.LBE13174:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L2255
.LVL4219:
.LBB13187:
.LBB13173:
.LBB13166:
.LBB13165:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(8)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4220:
.LBE13165:
.LBE13166:
.LBB13167:
.LBB13168:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4221:
.LBE13168:
.LBE13167:
.LBB13169:
.LBB13170:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4222:
.LBE13170:
.LBE13169:
.LBB13171:
.LBB13172:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4223:
.LBE13172:
.LBE13171:
.LBE13173:
.LBE13187:
.LBB13188:
.LBB13189:
.LBB13190:
.LBB13191:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4224:
.LBE13191:
.LBE13190:
.LBB13192:
.LBB13193:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4225:
.LBE13193:
.LBE13192:
.LBB13194:
.LBB13195:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4226:
.LBE13195:
.LBE13194:
.LBB13196:
.LBB13197:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LBE13197:
.LBE13196:
.LBE13189:
.LBE13188:
	.loc 1 1164 0 discriminator 2
	addi 10,11,3
	rlwinm 10,10,0,0xffff
.LVL4227:
.LBB13198:
.LBB13199:
.LBB13200:
.LBB13201:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4228:
.LBE13201:
.LBE13200:
.LBB13202:
.LBB13203:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4229:
.LBE13203:
.LBE13202:
.LBB13204:
.LBB13205:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4230:
.LBE13205:
.LBE13204:
.LBB13206:
.LBB13207:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 11,11,1
.LVL4231:
	rlwinm 11,11,0,0xffff
.LVL4232:
.LBE13207:
.LBE13206:
.LBE13199:
.LBE13198:
.LBB13208:
.LBB13186:
.LBB13179:
.LBB13180:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4233:
.LBE13180:
.LBE13179:
.LBB13181:
.LBB13182:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4234:
.LBE13182:
.LBE13181:
.LBB13183:
.LBB13184:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4235:
.LBE13184:
.LBE13183:
.LBB13185:
.LBB13178:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4236:
	b .L945
.LVL4237:
.L924:
.LBE13178:
.LBE13185:
.LBE13186:
.LBE13208:
	.loc 1 1339 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L930
	srawi 0,31,1
	addze. 0,0
	.loc 1 1339 0
	li 11,0
.LBB13209:
.LBB13210:
.LBB13211:
.LBB13212:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
.LVL4238:
	bgt+ 0,.L931
	li 0,1
.LVL4239:
.L931:
.LBE13212:
.LBE13211:
.LBE13210:
.LBE13209:
	.loc 1 1339 0 discriminator 1
	addic. 0,0,-1
.LBB13220:
.LBB13221:
.LBB13222:
.LBB13223:
	.loc 2 2400 0 discriminator 1
	addi 10,11,2
	rlwinm 10,10,0,0xffff
.LBE13223:
.LBE13222:
.LBE13221:
.LBE13220:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L930
.LVL4240:
.LBB13231:
.LBB13219:
.LBB13214:
.LBB13213:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(7)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4241:
.LBE13213:
.LBE13214:
.LBB13215:
.LBB13216:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4242:
.LBE13216:
.LBE13215:
.LBB13217:
.LBB13218:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 8,11,1
	rlwinm 8,8,0,0xffff
.LVL4243:
.LBE13218:
.LBE13217:
.LBE13219:
.LBE13231:
.LBB13232:
.LBB13233:
.LBB13234:
.LBB13235:
	.loc 2 2219 0 discriminator 2
	sth 8,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4244:
.LBE13235:
.LBE13234:
.LBB13236:
.LBB13237:
	.loc 2 2317 0 discriminator 2
	sth 8,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4245:
.LBE13237:
.LBE13236:
.LBB13238:
.LBB13239:
	.loc 2 2399 0 discriminator 2
	sth 8,0(9)
	.loc 2 2400 0 discriminator 2
.LBE13239:
.LBE13238:
.LBE13233:
.LBE13232:
	.loc 1 1164 0 discriminator 2
	addi 11,11,3
.LVL4246:
	rlwinm 11,11,0,0xffff
.LVL4247:
.LBB13240:
.LBB13241:
.LBB13242:
.LBB13243:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4248:
.LBE13243:
.LBE13242:
.LBB13244:
.LBB13245:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4249:
.LBE13245:
.LBE13244:
.LBB13246:
.LBB13247:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4250:
.LBE13247:
.LBE13246:
.LBE13241:
.LBE13240:
.LBB13248:
.LBB13230:
.LBB13225:
.LBB13226:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4251:
.LBE13226:
.LBE13225:
.LBB13227:
.LBB13228:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4252:
.LBE13228:
.LBE13227:
.LBB13229:
.LBB13224:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,10
.LVL4253:
	b .L931
.LVL4254:
.L930:
.LBE13224:
.LBE13229:
.LBE13230:
.LBE13248:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1339 0 is_stmt 0
	li 11,0
.LBB13249:
.LBB13250:
.LBB13251:
.LBB13252:
	.loc 2 2219 0 is_stmt 1
	lis 8,wgPipe@ha
	bgt+ 0,.L933
	li 31,1
.L933:
.LBE13252:
.LBE13251:
.LBE13250:
.LBE13249:
	.loc 1 1339 0 discriminator 1
	addic. 31,31,-1
.LBB13260:
.LBB13261:
.LBB13262:
.LBB13263:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE13263:
.LBE13262:
.LBE13261:
.LBE13260:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L2255
.LVL4255:
.LBB13271:
.LBB13259:
.LBB13254:
.LBB13253:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(8)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4256:
.LBE13253:
.LBE13254:
.LBB13255:
.LBB13256:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4257:
.LBE13256:
.LBE13255:
.LBB13257:
.LBB13258:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4258:
.LBE13258:
.LBE13257:
.LBE13259:
.LBE13271:
.LBB13272:
.LBB13273:
.LBB13274:
.LBB13275:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4259:
.LBE13275:
.LBE13274:
.LBB13276:
.LBB13277:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4260:
.LBE13277:
.LBE13276:
.LBB13278:
.LBB13279:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LBE13279:
.LBE13278:
.LBE13273:
.LBE13272:
	.loc 1 1164 0 discriminator 2
	addi 10,11,3
	rlwinm 10,10,0,0xffff
.LVL4261:
.LBB13280:
.LBB13281:
.LBB13282:
.LBB13283:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4262:
.LBE13283:
.LBE13282:
.LBB13284:
.LBB13285:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4263:
.LBE13285:
.LBE13284:
.LBB13286:
.LBB13287:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 11,11,1
.LVL4264:
	rlwinm 11,11,0,0xffff
.LVL4265:
.LBE13287:
.LBE13286:
.LBE13281:
.LBE13280:
.LBB13288:
.LBB13270:
.LBB13265:
.LBB13266:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4266:
.LBE13266:
.LBE13265:
.LBB13267:
.LBB13268:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4267:
.LBE13268:
.LBE13267:
.LBB13269:
.LBB13264:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4268:
	b .L933
.LVL4269:
.L737:
.LBE13264:
.LBE13269:
.LBE13270:
.LBE13288:
	.loc 1 1339 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L743
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL4270:
	li 30,0
.LVL4271:
	li 28,1
.LVL4272:
.L744:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4273:
	bge- 7,.L743
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPT1_Array
	addi 3,30,1
	bl UploadVertexPT1_Array
	addi 3,30,3
	bl UploadVertexPT1_Array
	mr 3,26
	bl UploadVertexPT1_Array
.LVL4274:
	addi 30,30,2
	b .L744
.LVL4275:
.L743:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4276:
.L746:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPT1_Array
	slwi 3,29,1
	bl UploadVertexPT1_Array
	addi 3,30,3
	bl UploadVertexPT1_Array
	addi 3,30,1
	addi 29,29,1
.LVL4277:
	bl UploadVertexPT1_Array
.LVL4278:
	addi 30,30,2
	b .L746
.LVL4279:
.L1105:
	.loc 1 1346 0 is_stmt 1 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1111
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4280:
	li 30,0
.LVL4281:
	li 28,1
.LVL4282:
.L1112:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4283:
	bge- 7,.L1111
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPT0_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPT0_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT0_ElemGLubyte
	mr 3,26
	bl UploadVertexPT0_ElemGLubyte
.LVL4284:
	addi 30,30,2
	b .L1112
.LVL4285:
.L1104:
	cmpwi 7,8,1
	beq- 7,.L2838
	cmpwi 7,8,2
	beq- 7,.L2839
	cmpwi 7,8,3
	beq- 7,.L2840
	cmpwi 7,8,4
	beq- 7,.L2841
	cmpwi 7,8,5
	beq- 7,.L2842
	cmpwi 7,8,6
	beq- 7,.L2843
	cmpwi 7,8,7
	bne+ 7,.L719
.LVL4286:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1188
	cmpwi 7,29,0
	beq- 7,.L1189
	addi 27,31,-1
.LVL4287:
	mr 29,27
.LVL4288:
.L1190:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4289:
	blt- 7,.L2844
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT7_ElemGLubyte
.LVL4290:
	b .L1190
.LVL4291:
.L2680:
	.loc 1 1339 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1089
	.loc 1 1339 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL4292:
	bl UploadVertexPNCT7_Array
.LVL4293:
.L1089:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2524:
.LVL4294:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4295:
	bge- 7,.L2845
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNCT7_Array
.LVL4296:
	b .L2524
.LVL4297:
.L1088:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1094
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL4298:
	li 30,0
.LVL4299:
	li 28,1
.LVL4300:
.L1095:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4301:
	bge- 7,.L1094
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT7_Array
	addi 3,30,1
	bl UploadVertexPNCT7_Array
	addi 3,30,3
	bl UploadVertexPNCT7_Array
	mr 3,26
	bl UploadVertexPNCT7_Array
.LVL4302:
	addi 30,30,2
	b .L1095
.LVL4303:
.L2845:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL4304:
	bl UploadVertexPNCT7_Array
	b .L2255
.LVL4305:
.L1094:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4306:
.L1097:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNCT7_Array
	slwi 3,29,1
	bl UploadVertexPNCT7_Array
	addi 3,30,3
	bl UploadVertexPNCT7_Array
	addi 3,30,1
	addi 29,29,1
.LVL4307:
	bl UploadVertexPNCT7_Array
.LVL4308:
	addi 30,30,2
	b .L1097
.LVL4309:
.L2844:
	.loc 1 1346 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1189
	.loc 1 1346 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL4310:
	bl UploadVertexPT7_ElemGLubyte
.LVL4311:
.L1189:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2531:
.LVL4312:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4313:
	bge- 7,.L2846
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT7_ElemGLubyte
.LVL4314:
	b .L2531
.LVL4315:
.L1188:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1194
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4316:
	li 30,0
.LVL4317:
	li 28,1
.LVL4318:
.L1195:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4319:
	bge- 7,.L1194
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPT7_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPT7_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT7_ElemGLubyte
	mr 3,26
	bl UploadVertexPT7_ElemGLubyte
.LVL4320:
	addi 30,30,2
	b .L1195
.LVL4321:
.L2846:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4322:
	bl UploadVertexPT7_ElemGLubyte
	b .L2255
.LVL4323:
.L1194:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4324:
.L1197:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT7_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPT7_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT7_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4325:
	bl UploadVertexPT7_ElemGLubyte
.LVL4326:
	addi 30,30,2
	b .L1197
.LVL4327:
.L2843:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1177
	cmpwi 7,29,0
	beq- 7,.L1178
	addi 27,31,-1
.LVL4328:
	mr 29,27
.LVL4329:
.L1179:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4330:
	blt- 7,.L2847
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT6_ElemGLubyte
.LVL4331:
	b .L1179
.LVL4332:
.L2842:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1165
	cmpwi 7,29,0
	beq- 7,.L1166
	addi 27,31,-1
.LVL4333:
	mr 29,27
.LVL4334:
.L1167:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4335:
	blt- 7,.L2848
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT5_ElemGLubyte
.LVL4336:
	b .L1167
.LVL4337:
.L2847:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1178
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL4338:
	bl UploadVertexPT6_ElemGLubyte
.LVL4339:
.L1178:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2530:
.LVL4340:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4341:
	bge- 7,.L2849
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT6_ElemGLubyte
.LVL4342:
	b .L2530
.LVL4343:
.L2848:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1166
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL4344:
	bl UploadVertexPT5_ElemGLubyte
.LVL4345:
.L1166:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2529:
.LVL4346:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4347:
	bge- 7,.L2850
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT5_ElemGLubyte
.LVL4348:
	b .L2529
.LVL4349:
.L1165:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1171
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4350:
	li 30,0
.LVL4351:
	li 28,1
.LVL4352:
.L1172:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4353:
	bge- 7,.L1171
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPT5_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPT5_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT5_ElemGLubyte
	mr 3,26
	bl UploadVertexPT5_ElemGLubyte
.LVL4354:
	addi 30,30,2
	b .L1172
.LVL4355:
.L2850:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4356:
	bl UploadVertexPT5_ElemGLubyte
	b .L2255
.LVL4357:
.L1171:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4358:
.L1174:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT5_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPT5_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT5_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4359:
	bl UploadVertexPT5_ElemGLubyte
.LVL4360:
	addi 30,30,2
	b .L1174
.LVL4361:
.L1177:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1183
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4362:
	li 30,0
.LVL4363:
	li 28,1
.LVL4364:
.L1184:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4365:
	bge- 7,.L1183
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPT6_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPT6_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT6_ElemGLubyte
	mr 3,26
	bl UploadVertexPT6_ElemGLubyte
.LVL4366:
	addi 30,30,2
	b .L1184
.LVL4367:
.L2849:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4368:
	bl UploadVertexPT6_ElemGLubyte
	b .L2255
.LVL4369:
.L1183:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4370:
.L1186:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT6_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPT6_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT6_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4371:
	bl UploadVertexPT6_ElemGLubyte
.LVL4372:
	addi 30,30,2
	b .L1186
.LVL4373:
.L2841:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1153
	cmpwi 7,29,0
	beq- 7,.L1154
	addi 27,31,-1
.LVL4374:
	mr 29,27
.LVL4375:
.L1155:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4376:
	blt- 7,.L2851
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT4_ElemGLubyte
.LVL4377:
	b .L1155
.LVL4378:
.L2840:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1141
	cmpwi 7,29,0
	beq- 7,.L1142
	addi 27,31,-1
.LVL4379:
	mr 29,27
.LVL4380:
.L1143:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4381:
	blt- 7,.L2852
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT3_ElemGLubyte
.LVL4382:
	b .L1143
.LVL4383:
.L2851:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1154
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL4384:
	bl UploadVertexPT4_ElemGLubyte
.LVL4385:
.L1154:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2528:
.LVL4386:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4387:
	bge- 7,.L2853
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT4_ElemGLubyte
.LVL4388:
	b .L2528
.LVL4389:
.L2852:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1142
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL4390:
	bl UploadVertexPT3_ElemGLubyte
.LVL4391:
.L1142:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2527:
.LVL4392:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4393:
	bge- 7,.L2854
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT3_ElemGLubyte
.LVL4394:
	b .L2527
.LVL4395:
.L1141:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1147
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4396:
	li 30,0
.LVL4397:
	li 28,1
.LVL4398:
.L1148:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4399:
	bge- 7,.L1147
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPT3_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPT3_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT3_ElemGLubyte
	mr 3,26
	bl UploadVertexPT3_ElemGLubyte
.LVL4400:
	addi 30,30,2
	b .L1148
.LVL4401:
.L2853:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4402:
	bl UploadVertexPT4_ElemGLubyte
	b .L2255
.LVL4403:
.L2854:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4404:
	bl UploadVertexPT3_ElemGLubyte
	b .L2255
.LVL4405:
.L1147:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4406:
.L1150:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT3_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPT3_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT3_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4407:
	bl UploadVertexPT3_ElemGLubyte
.LVL4408:
	addi 30,30,2
	b .L1150
.LVL4409:
.L1153:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1159
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4410:
	li 30,0
.LVL4411:
	li 28,1
.LVL4412:
.L1160:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4413:
	bge- 7,.L1159
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPT4_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPT4_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT4_ElemGLubyte
	mr 3,26
	bl UploadVertexPT4_ElemGLubyte
.LVL4414:
	addi 30,30,2
	b .L1160
.LVL4415:
.L2839:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1129
	cmpwi 7,29,0
	beq- 7,.L1130
	addi 27,31,-1
.LVL4416:
	mr 29,27
.LVL4417:
.L1131:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4418:
	blt- 7,.L2855
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT2_ElemGLubyte
.LVL4419:
	b .L1131
.LVL4420:
.L2838:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1117
	cmpwi 7,29,0
	beq- 7,.L1118
	addi 27,31,-1
.LVL4421:
	mr 29,27
.LVL4422:
.L1119:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4423:
	blt- 7,.L2856
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT1_ElemGLubyte
.LVL4424:
	b .L1119
.LVL4425:
.L1159:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4426:
.L1162:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT4_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPT4_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT4_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4427:
	bl UploadVertexPT4_ElemGLubyte
.LVL4428:
	addi 30,30,2
	b .L1162
.LVL4429:
.L2855:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1130
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL4430:
	bl UploadVertexPT2_ElemGLubyte
.LVL4431:
.L1130:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2526:
.LVL4432:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4433:
	bge- 7,.L2857
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT2_ElemGLubyte
.LVL4434:
	b .L2526
.LVL4435:
.L1129:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1135
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4436:
	li 30,0
.LVL4437:
	li 28,1
.LVL4438:
.L1136:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4439:
	bge- 7,.L1135
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPT2_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPT2_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT2_ElemGLubyte
	mr 3,26
	bl UploadVertexPT2_ElemGLubyte
.LVL4440:
	addi 30,30,2
	b .L1136
.LVL4441:
.L2857:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4442:
	bl UploadVertexPT2_ElemGLubyte
	b .L2255
.LVL4443:
.L1135:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4444:
.L1138:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT2_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPT2_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT2_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4445:
	bl UploadVertexPT2_ElemGLubyte
.LVL4446:
	addi 30,30,2
	b .L1138
.LVL4447:
.L2856:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1118
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL4448:
	bl UploadVertexPT1_ElemGLubyte
.LVL4449:
.L1118:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2525:
.LVL4450:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4451:
	bge- 7,.L2858
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT1_ElemGLubyte
.LVL4452:
	b .L2525
.LVL4453:
.L1117:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1123
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4454:
	li 30,0
.LVL4455:
	li 28,1
.LVL4456:
.L1124:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4457:
	bge- 7,.L1123
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPT1_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPT1_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT1_ElemGLubyte
	mr 3,26
	bl UploadVertexPT1_ElemGLubyte
.LVL4458:
	addi 30,30,2
	b .L1124
.LVL4459:
.L2858:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4460:
	bl UploadVertexPT1_ElemGLubyte
	b .L2255
.LVL4461:
.L1123:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4462:
.L1126:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT1_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPT1_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT1_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4463:
	bl UploadVertexPT1_ElemGLubyte
.LVL4464:
	addi 30,30,2
	b .L1126
.LVL4465:
.L1111:
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4466:
.L1114:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPT0_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPT0_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPT0_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4467:
	bl UploadVertexPT0_ElemGLubyte
.LVL4468:
	addi 30,30,2
	b .L1114
.LVL4469:
.L2679:
	.loc 1 1339 0 is_stmt 1 discriminator 1
	bne- 4,.L1077
	cmpwi 7,29,0
	beq- 7,.L1078
	addi 27,31,-1
.LVL4470:
	mr 29,27
.LVL4471:
.L1079:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4472:
	blt- 7,.L2859
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT6_Array
.LVL4473:
	b .L1079
.LVL4474:
.L2678:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L1065
	cmpwi 7,29,0
	beq- 7,.L1066
	addi 27,31,-1
.LVL4475:
	mr 29,27
.LVL4476:
.L1067:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4477:
	blt- 7,.L2860
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNCT5_Array
.LVL4478:
	b .L1067
.LVL4479:
.L2859:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1078
	.loc 1 1339 0 discriminator 1
	mr 3,27
.LVL4480:
	bl UploadVertexPNCT6_Array
.LVL4481:
.L1078:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2523:
.LVL4482:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4483:
	bge- 7,.L2861
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNCT6_Array
.LVL4484:
	b .L2523
.LVL4485:
.L2860:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1066
	.loc 1 1339 0 discriminator 1
	mr 3,27
.LVL4486:
	bl UploadVertexPNCT5_Array
.LVL4487:
.L1066:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2522:
.LVL4488:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4489:
	bge- 7,.L2862
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNCT5_Array
.LVL4490:
	b .L2522
.LVL4491:
.L1065:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1071
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL4492:
	li 30,0
.LVL4493:
	li 28,1
.LVL4494:
.L1072:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4495:
	bge- 7,.L1071
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT5_Array
	addi 3,30,1
	bl UploadVertexPNCT5_Array
	addi 3,30,3
	bl UploadVertexPNCT5_Array
	mr 3,26
	bl UploadVertexPNCT5_Array
.LVL4496:
	addi 30,30,2
	b .L1072
.LVL4497:
.L2862:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL4498:
	bl UploadVertexPNCT5_Array
	b .L2255
.LVL4499:
.L1071:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4500:
.L1074:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNCT5_Array
	slwi 3,29,1
	bl UploadVertexPNCT5_Array
	addi 3,30,3
	bl UploadVertexPNCT5_Array
	addi 3,30,1
	addi 29,29,1
.LVL4501:
	bl UploadVertexPNCT5_Array
.LVL4502:
	addi 30,30,2
	b .L1074
.LVL4503:
.L1077:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1083
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL4504:
	li 30,0
.LVL4505:
	li 28,1
.LVL4506:
.L1084:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4507:
	bge- 7,.L1083
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT6_Array
	addi 3,30,1
	bl UploadVertexPNCT6_Array
	addi 3,30,3
	bl UploadVertexPNCT6_Array
	mr 3,26
	bl UploadVertexPNCT6_Array
.LVL4508:
	addi 30,30,2
	b .L1084
.LVL4509:
.L2861:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL4510:
	bl UploadVertexPNCT6_Array
	b .L2255
.LVL4511:
.L1083:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4512:
.L1086:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	bge- 7,.L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNCT6_Array
	slwi 3,29,1
	bl UploadVertexPNCT6_Array
	addi 3,30,3
	bl UploadVertexPNCT6_Array
	addi 3,30,1
	addi 29,29,1
.LVL4513:
	bl UploadVertexPNCT6_Array
.LVL4514:
	addi 30,30,2
	b .L1086
.LVL4515:
.L2677:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L1053
	cmpwi 7,29,0
	beq- 7,.L1054
	addi 27,31,-1
.LVL4516:
	mr 29,27
.LVL4517:
.L1055:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4518:
	blt- 7,.L2863
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNCT4_Array
.LVL4519:
	b .L1055
.LVL4520:
.L2676:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L1041
	cmpwi 7,29,0
	beq- 7,.L1042
	addi 0,31,-1
.LVL4521:
	mr 8,31
.LVL4522:
	cmpwi 7,0,-1
.LBB13289:
.LBB13290:
.LBB13291:
.LBB13292:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 7,wgPipe@ha
.LVL4523:
	addi 10,31,1
	bge+ 7,.L1043
	li 10,1
.LVL4524:
.L1043:
.LBE13292:
.LBE13291:
.LBE13290:
.LBE13289:
	.loc 1 1339 0 discriminator 1
	addic. 10,10,-1
.LBB13311:
.LBB13309:
.LBB13295:
.LBB13296:
	.loc 2 2400 0 discriminator 1
	addi 8,8,-1
.LBE13296:
.LBE13295:
.LBE13309:
.LBE13311:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L2864
.LBB13312:
.LBB13310:
.LBB13298:
.LBB13293:
	.loc 2 2219 0
	lwz 9,wgPipe@l(7)
.LBE13293:
.LBE13298:
	.loc 1 570 0
	rlwinm 11,8,0,0xffff
.LVL4525:
.LBB13299:
.LBB13294:
	.loc 2 2219 0
	sth 11,0(9)
	.loc 2 2220 0
.LVL4526:
.LBE13294:
.LBE13299:
.LBB13300:
.LBB13301:
	.loc 2 2261 0
	sth 11,0(9)
	.loc 2 2262 0
.LVL4527:
.LBE13301:
.LBE13300:
.LBB13302:
.LBB13303:
	.loc 2 2317 0
	sth 11,0(9)
	.loc 2 2318 0
.LVL4528:
.LBE13303:
.LBE13302:
.LBB13304:
.LBB13305:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LVL4529:
.LBE13305:
.LBE13304:
.LBB13306:
.LBB13307:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LVL4530:
.LBE13307:
.LBE13306:
.LBB13308:
.LBB13297:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
	b .L1043
.LVL4531:
.L2864:
.LBE13297:
.LBE13308:
.LBE13310:
.LBE13312:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1042
.LVL4532:
.LBB13313:
.LBB13314:
.LBB13315:
.LBB13316:
	.loc 2 2219 0 discriminator 1
	lis 9,wgPipe@ha
.LBE13316:
.LBE13315:
	.loc 1 570 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL4533:
.LBB13318:
.LBB13317:
	.loc 2 2219 0 discriminator 1
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0 discriminator 1
.LVL4534:
.LBE13317:
.LBE13318:
.LBB13319:
.LBB13320:
	.loc 2 2261 0 discriminator 1
	sth 0,0(9)
	.loc 2 2262 0 discriminator 1
.LVL4535:
.LBE13320:
.LBE13319:
.LBB13321:
.LBB13322:
	.loc 2 2317 0 discriminator 1
	sth 0,0(9)
	.loc 2 2318 0 discriminator 1
.LVL4536:
.LBE13322:
.LBE13321:
.LBB13323:
.LBB13324:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL4537:
.LBE13324:
.LBE13323:
.LBB13325:
.LBB13326:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL4538:
.LBE13326:
.LBE13325:
.LBB13327:
.LBB13328:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL4539:
.L1042:
.LBE13328:
.LBE13327:
.LBE13314:
.LBE13313:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 11,0
	beq- 7,.L2255
	cmpwi 7,31,0
.LBB13329:
.LBB13330:
.LBB13331:
.LBB13332:
	.loc 2 2219 0 discriminator 1
	lis 10,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2605
	li 31,1
.L2605:
.LVL4540:
.LBE13332:
.LBE13331:
.LBE13330:
.LBE13329:
	.loc 1 1339 0 discriminator 1
	addic. 31,31,-1
.LBB13347:
.LBB13345:
	.loc 1 570 0 discriminator 1
	rlwinm 0,11,0,0xffff
.LBE13345:
.LBE13347:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L2865
.LVL4541:
.LBB13348:
.LBB13346:
.LBB13334:
.LBB13333:
	.loc 2 2219 0
	lwz 9,wgPipe@l(10)
	sth 0,0(9)
	.loc 2 2220 0
.LVL4542:
.LBE13333:
.LBE13334:
.LBB13335:
.LBB13336:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL4543:
.LBE13336:
.LBE13335:
.LBB13337:
.LBB13338:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL4544:
.LBE13338:
.LBE13337:
.LBB13339:
.LBB13340:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4545:
.LBE13340:
.LBE13339:
.LBB13341:
.LBB13342:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4546:
.LBE13342:
.LBE13341:
.LBB13343:
.LBB13344:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE13344:
.LBE13343:
.LBE13346:
.LBE13348:
	.loc 1 1339 0
	addi 11,11,1
.LVL4547:
	b .L2605
.LVL4548:
.L2865:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L2255
.LVL4549:
.LBB13349:
.LBB13350:
.LBB13351:
.LBB13352:
	.loc 2 2219 0 is_stmt 1
	lis 9,wgPipe@ha
	li 0,0
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL4550:
.LBE13352:
.LBE13351:
.LBB13353:
.LBB13354:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL4551:
.LBE13354:
.LBE13353:
.LBB13355:
.LBB13356:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL4552:
.LBE13356:
.LBE13355:
.LBB13357:
.LBB13358:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4553:
.LBE13358:
.LBE13357:
.LBB13359:
.LBB13360:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4554:
.LBE13360:
.LBE13359:
.LBB13361:
.LBB13362:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL4555:
.L1041:
.LBE13362:
.LBE13361:
.LBE13350:
.LBE13349:
	.loc 1 1339 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1047
	srawi 8,31,1
	addze. 8,8
.LVL4556:
	.loc 1 1339 0
	li 11,0
.LBB13363:
.LBB13364:
.LBB13365:
.LBB13366:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
.LVL4557:
	bgt+ 0,.L1048
	li 8,1
.L1048:
.LBE13366:
.LBE13365:
.LBE13364:
.LBE13363:
	.loc 1 1339 0 discriminator 1
	addic. 8,8,-1
.LBB13380:
.LBB13381:
.LBB13382:
.LBB13383:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE13383:
.LBE13382:
.LBE13381:
.LBE13380:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L1047
.LVL4558:
.LBB13397:
.LBB13379:
.LBB13368:
.LBB13367:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(7)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4559:
.LBE13367:
.LBE13368:
.LBB13369:
.LBB13370:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4560:
.LBE13370:
.LBE13369:
.LBB13371:
.LBB13372:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4561:
.LBE13372:
.LBE13371:
.LBB13373:
.LBB13374:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4562:
.LBE13374:
.LBE13373:
.LBB13375:
.LBB13376:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4563:
.LBE13376:
.LBE13375:
.LBB13377:
.LBB13378:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 10,11,1
	rlwinm 10,10,0,0xffff
.LVL4564:
.LBE13378:
.LBE13377:
.LBE13379:
.LBE13397:
.LBB13398:
.LBB13399:
.LBB13400:
.LBB13401:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4565:
.LBE13401:
.LBE13400:
.LBB13402:
.LBB13403:
	.loc 2 2261 0 discriminator 2
	sth 10,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4566:
.LBE13403:
.LBE13402:
.LBB13404:
.LBB13405:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4567:
.LBE13405:
.LBE13404:
.LBB13406:
.LBB13407:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4568:
.LBE13407:
.LBE13406:
.LBB13408:
.LBB13409:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4569:
.LBE13409:
.LBE13408:
.LBB13410:
.LBB13411:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LBE13411:
.LBE13410:
.LBE13399:
.LBE13398:
	.loc 1 1164 0 discriminator 2
	addi 11,11,3
.LVL4570:
	rlwinm 11,11,0,0xffff
.LVL4571:
.LBB13412:
.LBB13413:
.LBB13414:
.LBB13415:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4572:
.LBE13415:
.LBE13414:
.LBB13416:
.LBB13417:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4573:
.LBE13417:
.LBE13416:
.LBB13418:
.LBB13419:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4574:
.LBE13419:
.LBE13418:
.LBB13420:
.LBB13421:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4575:
.LBE13421:
.LBE13420:
.LBB13422:
.LBB13423:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4576:
.LBE13423:
.LBE13422:
.LBB13424:
.LBB13425:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4577:
.LBE13425:
.LBE13424:
.LBE13413:
.LBE13412:
.LBB13426:
.LBB13396:
.LBB13385:
.LBB13386:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4578:
.LBE13386:
.LBE13385:
.LBB13387:
.LBB13388:
	.loc 2 2261 0 discriminator 2
	sth 0,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4579:
.LBE13388:
.LBE13387:
.LBB13389:
.LBB13390:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4580:
.LBE13390:
.LBE13389:
.LBB13391:
.LBB13392:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4581:
.LBE13392:
.LBE13391:
.LBB13393:
.LBB13394:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4582:
.LBE13394:
.LBE13393:
.LBB13395:
.LBB13384:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4583:
	b .L1048
.LVL4584:
.L1047:
.LBE13384:
.LBE13395:
.LBE13396:
.LBE13426:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1339 0 is_stmt 0
	li 11,0
.LBB13427:
.LBB13428:
.LBB13429:
.LBB13430:
	.loc 2 2219 0 is_stmt 1
	lis 8,wgPipe@ha
	bgt+ 0,.L1050
	li 31,1
.L1050:
.LBE13430:
.LBE13429:
.LBE13428:
.LBE13427:
	.loc 1 1339 0 discriminator 1
	addic. 31,31,-1
.LBB13444:
.LBB13445:
.LBB13446:
.LBB13447:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE13447:
.LBE13446:
.LBE13445:
.LBE13444:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L2255
.LVL4585:
.LBB13461:
.LBB13443:
.LBB13432:
.LBB13431:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(8)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4586:
.LBE13431:
.LBE13432:
.LBB13433:
.LBB13434:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4587:
.LBE13434:
.LBE13433:
.LBB13435:
.LBB13436:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4588:
.LBE13436:
.LBE13435:
.LBB13437:
.LBB13438:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4589:
.LBE13438:
.LBE13437:
.LBB13439:
.LBB13440:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4590:
.LBE13440:
.LBE13439:
.LBB13441:
.LBB13442:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4591:
.LBE13442:
.LBE13441:
.LBE13443:
.LBE13461:
.LBB13462:
.LBB13463:
.LBB13464:
.LBB13465:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4592:
.LBE13465:
.LBE13464:
.LBB13466:
.LBB13467:
	.loc 2 2261 0 discriminator 2
	sth 0,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4593:
.LBE13467:
.LBE13466:
.LBB13468:
.LBB13469:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4594:
.LBE13469:
.LBE13468:
.LBB13470:
.LBB13471:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4595:
.LBE13471:
.LBE13470:
.LBB13472:
.LBB13473:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4596:
.LBE13473:
.LBE13472:
.LBB13474:
.LBB13475:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LBE13475:
.LBE13474:
.LBE13463:
.LBE13462:
	.loc 1 1164 0 discriminator 2
	addi 10,11,3
	rlwinm 10,10,0,0xffff
.LVL4597:
.LBB13476:
.LBB13477:
.LBB13478:
.LBB13479:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4598:
.LBE13479:
.LBE13478:
.LBB13480:
.LBB13481:
	.loc 2 2261 0 discriminator 2
	sth 10,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4599:
.LBE13481:
.LBE13480:
.LBB13482:
.LBB13483:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4600:
.LBE13483:
.LBE13482:
.LBB13484:
.LBB13485:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4601:
.LBE13485:
.LBE13484:
.LBB13486:
.LBB13487:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4602:
.LBE13487:
.LBE13486:
.LBB13488:
.LBB13489:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 11,11,1
.LVL4603:
	rlwinm 11,11,0,0xffff
.LVL4604:
.LBE13489:
.LBE13488:
.LBE13477:
.LBE13476:
.LBB13490:
.LBB13460:
.LBB13449:
.LBB13450:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4605:
.LBE13450:
.LBE13449:
.LBB13451:
.LBB13452:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4606:
.LBE13452:
.LBE13451:
.LBB13453:
.LBB13454:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4607:
.LBE13454:
.LBE13453:
.LBB13455:
.LBB13456:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4608:
.LBE13456:
.LBE13455:
.LBB13457:
.LBB13458:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4609:
.LBE13458:
.LBE13457:
.LBB13459:
.LBB13448:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4610:
	b .L1050
.LVL4611:
.L2863:
.LBE13448:
.LBE13459:
.LBE13460:
.LBE13490:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1054
	.loc 1 1339 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL4612:
	bl UploadVertexPNCT4_Array
.LVL4613:
.L1054:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	beq- 7,.L2255
.L2521:
.LVL4614:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4615:
	bge- 7,.L2866
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNCT4_Array
.LVL4616:
	b .L2521
.LVL4617:
.L1053:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	bne+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1059
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL4618:
	li 30,0
.LVL4619:
	li 28,1
.LVL4620:
.L1060:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4621:
	bge- 7,.L1059
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNCT4_Array
	addi 3,30,1
	bl UploadVertexPNCT4_Array
	addi 3,30,3
	bl UploadVertexPNCT4_Array
	mr 3,26
	bl UploadVertexPNCT4_Array
.LVL4622:
	addi 30,30,2
	b .L1060
.LVL4623:
.L2866:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL4624:
	bl UploadVertexPNCT4_Array
	b .L2255
.LVL4625:
.L1059:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	beq- 7,.L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4626:
.L1062:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNCT4_Array
	slwi 3,29,1
	bl UploadVertexPNCT4_Array
	addi 3,30,3
	bl UploadVertexPNCT4_Array
	addi 3,30,1
	addi 29,29,1
.LVL4627:
	bl UploadVertexPNCT4_Array
.LVL4628:
	addi 30,30,2
	b .L1062
.LVL4629:
.L2675:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L1029
	cmpwi 7,29,0
	beq- 7,.L1030
.LVL4630:
	addic. 0,31,-1
	blt- 0,.L1031
	lis 11,wgPipe@ha
.LBB13491:
.LBB13492:
.LBB13493:
.LBB13494:
	.loc 2 2219 0 is_stmt 1
	mtctr 31
	lwz 9,wgPipe@l(11)
.LBE13494:
.LBE13493:
.LBE13492:
.LBE13491:
	.loc 1 1339 0
	mr 10,0
.LVL4631:
.L1032:
.LBB13506:
.LBB13505:
	.loc 1 570 0
	rlwinm 11,10,0,0xffff
.LVL4632:
.LBB13496:
.LBB13495:
	.loc 2 2219 0
	sth 11,0(9)
	.loc 2 2220 0
.LVL4633:
.LBE13495:
.LBE13496:
.LBB13497:
.LBB13498:
	.loc 2 2261 0
	sth 11,0(9)
	.loc 2 2262 0
.LVL4634:
.LBE13498:
.LBE13497:
.LBB13499:
.LBB13500:
	.loc 2 2317 0
	sth 11,0(9)
	.loc 2 2318 0
.LVL4635:
.LBE13500:
.LBE13499:
.LBB13501:
.LBB13502:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LVL4636:
.LBE13502:
.LBE13501:
.LBB13503:
.LBB13504:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LBE13504:
.LBE13503:
.LBE13505:
.LBE13506:
	.loc 1 1339 0
	addi 10,10,-1
.LVL4637:
	bdnz .L1032
.LVL4638:
.L1031:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1030
.LVL4639:
.LBB13507:
.LBB13508:
.LBB13509:
.LBB13510:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 11,wgPipe@ha
.LBE13510:
.LBE13509:
	.loc 1 570 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL4640:
.LBB13512:
.LBB13511:
	.loc 2 2219 0 discriminator 1
	lwz 9,wgPipe@l(11)
	sth 0,0(9)
	.loc 2 2220 0 discriminator 1
.LVL4641:
.LBE13511:
.LBE13512:
.LBB13513:
.LBB13514:
	.loc 2 2261 0 discriminator 1
	sth 0,0(9)
	.loc 2 2262 0 discriminator 1
.LVL4642:
.LBE13514:
.LBE13513:
.LBB13515:
.LBB13516:
	.loc 2 2317 0 discriminator 1
	sth 0,0(9)
	.loc 2 2318 0 discriminator 1
.LVL4643:
.LBE13516:
.LBE13515:
.LBB13517:
.LBB13518:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL4644:
.LBE13518:
.LBE13517:
.LBB13519:
.LBB13520:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL4645:
.L1030:
.LBE13520:
.LBE13519:
.LBE13508:
.LBE13507:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	bne- 7,$+8
	b .L2255
.LVL4646:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L1033
	lis 11,wgPipe@ha
.LBB13521:
.LBB13522:
.LBB13523:
.LBB13524:
	.loc 2 2219 0 is_stmt 1
	mtctr 31
	lwz 9,wgPipe@l(11)
.LBE13524:
.LBE13523:
.LBE13522:
.LBE13521:
	.loc 1 1339 0
	li 11,0
.LVL4647:
.L1034:
.LBB13536:
.LBB13535:
	.loc 1 570 0
	rlwinm 0,11,0,0xffff
.LVL4648:
.LBB13526:
.LBB13525:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL4649:
.LBE13525:
.LBE13526:
.LBB13527:
.LBB13528:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL4650:
.LBE13528:
.LBE13527:
.LBB13529:
.LBB13530:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL4651:
.LBE13530:
.LBE13529:
.LBB13531:
.LBB13532:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4652:
.LBE13532:
.LBE13531:
.LBB13533:
.LBB13534:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE13534:
.LBE13533:
.LBE13535:
.LBE13536:
	.loc 1 1339 0
	addi 11,11,1
.LVL4653:
	bdnz .L1034
.LVL4654:
.L1033:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
.LVL4655:
.LBB13537:
.LBB13538:
.LBB13539:
.LBB13540:
	.loc 2 2219 0 is_stmt 1
	lis 9,wgPipe@ha
	li 0,0
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL4656:
.LBE13540:
.LBE13539:
.LBB13541:
.LBB13542:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL4657:
.LBE13542:
.LBE13541:
.LBB13543:
.LBB13544:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL4658:
.LBE13544:
.LBE13543:
.LBB13545:
.LBB13546:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL4659:
.LBE13546:
.LBE13545:
.LBB13547:
.LBB13548:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL4660:
.L2674:
.LBE13548:
.LBE13547:
.LBE13538:
.LBE13537:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L1017
	cmpwi 7,29,0
	beq- 7,.L1018
.LVL4661:
	addic. 0,31,-1
	blt- 0,.L1019
	lis 11,wgPipe@ha
.LBB13549:
.LBB13550:
.LBB13551:
.LBB13552:
	.loc 2 2219 0
	mtctr 31
	lwz 9,wgPipe@l(11)
.LBE13552:
.LBE13551:
.LBE13550:
.LBE13549:
	.loc 1 1339 0
	mr 10,0
.LVL4662:
.L1020:
.LBB13562:
.LBB13561:
	.loc 1 570 0
	rlwinm 11,10,0,0xffff
.LVL4663:
.LBB13554:
.LBB13553:
	.loc 2 2219 0
	sth 11,0(9)
	.loc 2 2220 0
.LVL4664:
.LBE13553:
.LBE13554:
.LBB13555:
.LBB13556:
	.loc 2 2261 0
	sth 11,0(9)
	.loc 2 2262 0
.LVL4665:
.LBE13556:
.LBE13555:
.LBB13557:
.LBB13558:
	.loc 2 2317 0
	sth 11,0(9)
	.loc 2 2318 0
.LVL4666:
.LBE13558:
.LBE13557:
.LBB13559:
.LBB13560:
	.loc 2 2399 0
	sth 11,0(9)
	.loc 2 2400 0
.LBE13560:
.LBE13559:
.LBE13561:
.LBE13562:
	.loc 1 1339 0
	addi 10,10,-1
.LVL4667:
	bdnz .L1020
.LVL4668:
.L1019:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1018
.LVL4669:
.LBB13563:
.LBB13564:
.LBB13565:
.LBB13566:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 11,wgPipe@ha
.LBE13566:
.LBE13565:
	.loc 1 570 0 discriminator 1
	rlwinm 0,0,0,0xffff
.LVL4670:
.LBB13568:
.LBB13567:
	.loc 2 2219 0 discriminator 1
	lwz 9,wgPipe@l(11)
	sth 0,0(9)
	.loc 2 2220 0 discriminator 1
.LVL4671:
.LBE13567:
.LBE13568:
.LBB13569:
.LBB13570:
	.loc 2 2261 0 discriminator 1
	sth 0,0(9)
	.loc 2 2262 0 discriminator 1
.LVL4672:
.LBE13570:
.LBE13569:
.LBB13571:
.LBB13572:
	.loc 2 2317 0 discriminator 1
	sth 0,0(9)
	.loc 2 2318 0 discriminator 1
.LVL4673:
.LBE13572:
.LBE13571:
.LBB13573:
.LBB13574:
	.loc 2 2399 0 discriminator 1
	sth 0,0(9)
	.loc 2 2400 0 discriminator 1
.LVL4674:
.L1018:
.LBE13574:
.LBE13573:
.LBE13564:
.LBE13563:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	bne- 7,$+8
	b .L2255
.LVL4675:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L1021
	lis 11,wgPipe@ha
.LBB13575:
.LBB13576:
.LBB13577:
.LBB13578:
	.loc 2 2219 0 is_stmt 1
	mtctr 31
	lwz 9,wgPipe@l(11)
.LBE13578:
.LBE13577:
.LBE13576:
.LBE13575:
	.loc 1 1339 0
	li 11,0
.LVL4676:
.L1022:
.LBB13588:
.LBB13587:
	.loc 1 570 0
	rlwinm 0,11,0,0xffff
.LVL4677:
.LBB13580:
.LBB13579:
	.loc 2 2219 0
	sth 0,0(9)
	.loc 2 2220 0
.LVL4678:
.LBE13579:
.LBE13580:
.LBB13581:
.LBB13582:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL4679:
.LBE13582:
.LBE13581:
.LBB13583:
.LBB13584:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL4680:
.LBE13584:
.LBE13583:
.LBB13585:
.LBB13586:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LBE13586:
.LBE13585:
.LBE13587:
.LBE13588:
	.loc 1 1339 0
	addi 11,11,1
.LVL4681:
	bdnz .L1022
.LVL4682:
.L1021:
	.loc 1 1339 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
.LVL4683:
.LBB13589:
.LBB13590:
.LBB13591:
.LBB13592:
	.loc 2 2219 0 is_stmt 1
	lis 9,wgPipe@ha
	li 0,0
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL4684:
.LBE13592:
.LBE13591:
.LBB13593:
.LBB13594:
	.loc 2 2261 0
	sth 0,0(9)
	.loc 2 2262 0
.LVL4685:
.LBE13594:
.LBE13593:
.LBB13595:
.LBB13596:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL4686:
.LBE13596:
.LBE13595:
.LBB13597:
.LBB13598:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL4687:
.L1017:
.LBE13598:
.LBE13597:
.LBE13590:
.LBE13589:
	.loc 1 1339 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1023
	srawi 10,31,1
	addze. 10,10
	.loc 1 1339 0
	li 11,0
.LBB13599:
.LBB13600:
.LBB13601:
.LBB13602:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
.LVL4688:
	bgt+ 0,.L1024
	li 10,1
.LVL4689:
.L1024:
.LBE13602:
.LBE13601:
.LBE13600:
.LBE13599:
	.loc 1 1339 0 discriminator 1
	addic. 10,10,-1
.LBB13612:
.LBB13613:
.LBB13614:
.LBB13615:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE13615:
.LBE13614:
.LBE13613:
.LBE13612:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L1023
.LVL4690:
.LBB13625:
.LBB13611:
.LBB13604:
.LBB13603:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(7)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4691:
.LBE13603:
.LBE13604:
.LBB13605:
.LBB13606:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4692:
.LBE13606:
.LBE13605:
.LBB13607:
.LBB13608:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4693:
.LBE13608:
.LBE13607:
.LBB13609:
.LBB13610:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 8,11,1
	rlwinm 8,8,0,0xffff
.LVL4694:
.LBE13610:
.LBE13609:
.LBE13611:
.LBE13625:
.LBB13626:
.LBB13627:
.LBB13628:
.LBB13629:
	.loc 2 2219 0 discriminator 2
	sth 8,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4695:
.LBE13629:
.LBE13628:
.LBB13630:
.LBB13631:
	.loc 2 2261 0 discriminator 2
	sth 8,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4696:
.LBE13631:
.LBE13630:
.LBB13632:
.LBB13633:
	.loc 2 2317 0 discriminator 2
	sth 8,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4697:
.LBE13633:
.LBE13632:
.LBB13634:
.LBB13635:
	.loc 2 2399 0 discriminator 2
	sth 8,0(9)
	.loc 2 2400 0 discriminator 2
.LBE13635:
.LBE13634:
.LBE13627:
.LBE13626:
	.loc 1 1164 0 discriminator 2
	addi 11,11,3
.LVL4698:
	rlwinm 11,11,0,0xffff
.LVL4699:
.LBB13636:
.LBB13637:
.LBB13638:
.LBB13639:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4700:
.LBE13639:
.LBE13638:
.LBB13640:
.LBB13641:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4701:
.LBE13641:
.LBE13640:
.LBB13642:
.LBB13643:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4702:
.LBE13643:
.LBE13642:
.LBB13644:
.LBB13645:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4703:
.LBE13645:
.LBE13644:
.LBE13637:
.LBE13636:
.LBB13646:
.LBB13624:
.LBB13617:
.LBB13618:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4704:
.LBE13618:
.LBE13617:
.LBB13619:
.LBB13620:
	.loc 2 2261 0 discriminator 2
	sth 0,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4705:
.LBE13620:
.LBE13619:
.LBB13621:
.LBB13622:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4706:
.LBE13622:
.LBE13621:
.LBB13623:
.LBB13616:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4707:
	b .L1024
.LVL4708:
.L1023:
.LBE13616:
.LBE13623:
.LBE13624:
.LBE13646:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1339 0 is_stmt 0
	li 11,0
.LBB13647:
.LBB13648:
.LBB13649:
.LBB13650:
	.loc 2 2219 0 is_stmt 1
	lis 8,wgPipe@ha
	bgt+ 0,.L1026
	li 31,1
.L1026:
.LBE13650:
.LBE13649:
.LBE13648:
.LBE13647:
	.loc 1 1339 0 discriminator 1
	addic. 31,31,-1
.LBB13660:
.LBB13661:
.LBB13662:
.LBB13663:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE13663:
.LBE13662:
.LBE13661:
.LBE13660:
	.loc 1 1339 0 discriminator 1
	bne+ 0,$+8
	b .L2255
.LVL4709:
.LBB13673:
.LBB13659:
.LBB13652:
.LBB13651:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(8)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4710:
.LBE13651:
.LBE13652:
.LBB13653:
.LBB13654:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4711:
.LBE13654:
.LBE13653:
.LBB13655:
.LBB13656:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4712:
.LBE13656:
.LBE13655:
.LBB13657:
.LBB13658:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4713:
.LBE13658:
.LBE13657:
.LBE13659:
.LBE13673:
.LBB13674:
.LBB13675:
.LBB13676:
.LBB13677:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4714:
.LBE13677:
.LBE13676:
.LBB13678:
.LBB13679:
	.loc 2 2261 0 discriminator 2
	sth 0,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4715:
.LBE13679:
.LBE13678:
.LBB13680:
.LBB13681:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4716:
.LBE13681:
.LBE13680:
.LBB13682:
.LBB13683:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LBE13683:
.LBE13682:
.LBE13675:
.LBE13674:
	.loc 1 1164 0 discriminator 2
	addi 10,11,3
	rlwinm 10,10,0,0xffff
.LVL4717:
.LBB13684:
.LBB13685:
.LBB13686:
.LBB13687:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4718:
.LBE13687:
.LBE13686:
.LBB13688:
.LBB13689:
	.loc 2 2261 0 discriminator 2
	sth 10,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4719:
.LBE13689:
.LBE13688:
.LBB13690:
.LBB13691:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4720:
.LBE13691:
.LBE13690:
.LBB13692:
.LBB13693:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 11,11,1
.LVL4721:
	rlwinm 11,11,0,0xffff
.LVL4722:
.LBE13693:
.LBE13692:
.LBE13685:
.LBE13684:
.LBB13694:
.LBB13672:
.LBB13665:
.LBB13666:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4723:
.LBE13666:
.LBE13665:
.LBB13667:
.LBB13668:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4724:
.LBE13668:
.LBE13667:
.LBB13669:
.LBB13670:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4725:
.LBE13670:
.LBE13669:
.LBB13671:
.LBB13664:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4726:
	b .L1026
.LVL4727:
.L1029:
.LBE13664:
.LBE13671:
.LBE13672:
.LBE13694:
	.loc 1 1339 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1035
	srawi 8,31,1
	addze. 8,8
.LVL4728:
	.loc 1 1339 0
	li 11,0
.LBB13695:
.LBB13696:
.LBB13697:
.LBB13698:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
.LVL4729:
	bgt+ 0,.L1036
	li 8,1
.L1036:
.LBE13698:
.LBE13697:
.LBE13696:
.LBE13695:
	.loc 1 1339 0 discriminator 1
	addic. 8,8,-1
.LBB13710:
.LBB13711:
.LBB13712:
.LBB13713:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE13713:
.LBE13712:
.LBE13711:
.LBE13710:
	.loc 1 1339 0 discriminator 1
	beq- 0,.L1035
.LVL4730:
.LBB13725:
.LBB13709:
.LBB13700:
.LBB13699:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(7)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4731:
.LBE13699:
.LBE13700:
.LBB13701:
.LBB13702:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4732:
.LBE13702:
.LBE13701:
.LBB13703:
.LBB13704:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4733:
.LBE13704:
.LBE13703:
.LBB13705:
.LBB13706:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4734:
.LBE13706:
.LBE13705:
.LBB13707:
.LBB13708:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 10,11,1
	rlwinm 10,10,0,0xffff
.LVL4735:
.LBE13708:
.LBE13707:
.LBE13709:
.LBE13725:
.LBB13726:
.LBB13727:
.LBB13728:
.LBB13729:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4736:
.LBE13729:
.LBE13728:
.LBB13730:
.LBB13731:
	.loc 2 2261 0 discriminator 2
	sth 10,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4737:
.LBE13731:
.LBE13730:
.LBB13732:
.LBB13733:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4738:
.LBE13733:
.LBE13732:
.LBB13734:
.LBB13735:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4739:
.LBE13735:
.LBE13734:
.LBB13736:
.LBB13737:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LBE13737:
.LBE13736:
.LBE13727:
.LBE13726:
	.loc 1 1164 0 discriminator 2
	addi 11,11,3
.LVL4740:
	rlwinm 11,11,0,0xffff
.LVL4741:
.LBB13738:
.LBB13739:
.LBB13740:
.LBB13741:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4742:
.LBE13741:
.LBE13740:
.LBB13742:
.LBB13743:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4743:
.LBE13743:
.LBE13742:
.LBB13744:
.LBB13745:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4744:
.LBE13745:
.LBE13744:
.LBB13746:
.LBB13747:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4745:
.LBE13747:
.LBE13746:
.LBB13748:
.LBB13749:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4746:
.LBE13749:
.LBE13748:
.LBE13739:
.LBE13738:
.LBB13750:
.LBB13724:
.LBB13715:
.LBB13716:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4747:
.LBE13716:
.LBE13715:
.LBB13717:
.LBB13718:
	.loc 2 2261 0 discriminator 2
	sth 0,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4748:
.LBE13718:
.LBE13717:
.LBB13719:
.LBB13720:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4749:
.LBE13720:
.LBE13719:
.LBB13721:
.LBB13722:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4750:
.LBE13722:
.LBE13721:
.LBB13723:
.LBB13714:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4751:
	b .L1036
.LVL4752:
.L1035:
.LBE13714:
.LBE13723:
.LBE13724:
.LBE13750:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1339 0 is_stmt 0
	li 11,0
.LBB13751:
.LBB13752:
.LBB13753:
.LBB13754:
	.loc 2 2219 0 is_stmt 1
	lis 8,wgPipe@ha
	bgt+ 0,.L1038
	li 31,1
.L1038:
.LBE13754:
.LBE13753:
.LBE13752:
.LBE13751:
	.loc 1 1339 0 discriminator 1
	addic. 31,31,-1
.LBB13766:
.LBB13767:
.LBB13768:
.LBB13769:
	.loc 2 2400 0 discriminator 1
	addi 0,11,2
	rlwinm 0,0,0,0xffff
.LBE13769:
.LBE13768:
.LBE13767:
.LBE13766:
	.loc 1 1339 0 discriminator 1
	bne+ 0,$+8
	b .L2255
.LVL4753:
.LBB13781:
.LBB13765:
.LBB13756:
.LBB13755:
	.loc 2 2219 0 discriminator 2
	lwz 9,wgPipe@l(8)
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4754:
.LBE13755:
.LBE13756:
.LBB13757:
.LBB13758:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4755:
.LBE13758:
.LBE13757:
.LBB13759:
.LBB13760:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4756:
.LBE13760:
.LBE13759:
.LBB13761:
.LBB13762:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4757:
.LBE13762:
.LBE13761:
.LBB13763:
.LBB13764:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4758:
.LBE13764:
.LBE13763:
.LBE13765:
.LBE13781:
.LBB13782:
.LBB13783:
.LBB13784:
.LBB13785:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4759:
.LBE13785:
.LBE13784:
.LBB13786:
.LBB13787:
	.loc 2 2261 0 discriminator 2
	sth 0,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4760:
.LBE13787:
.LBE13786:
.LBB13788:
.LBB13789:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4761:
.LBE13789:
.LBE13788:
.LBB13790:
.LBB13791:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4762:
.LBE13791:
.LBE13790:
.LBB13792:
.LBB13793:
	.loc 2 2399 0 discriminator 2
	sth 0,0(9)
	.loc 2 2400 0 discriminator 2
.LBE13793:
.LBE13792:
.LBE13783:
.LBE13782:
	.loc 1 1164 0 discriminator 2
	addi 10,11,3
	rlwinm 10,10,0,0xffff
.LVL4763:
.LBB13794:
.LBB13795:
.LBB13796:
.LBB13797:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4764:
.LBE13797:
.LBE13796:
.LBB13798:
.LBB13799:
	.loc 2 2261 0 discriminator 2
	sth 10,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4765:
.LBE13799:
.LBE13798:
.LBB13800:
.LBB13801:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4766:
.LBE13801:
.LBE13800:
.LBB13802:
.LBB13803:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4767:
.LBE13803:
.LBE13802:
.LBB13804:
.LBB13805:
	.loc 2 2399 0 discriminator 2
	sth 10,0(9)
	.loc 2 2400 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 11,11,1
.LVL4768:
	rlwinm 11,11,0,0xffff
.LVL4769:
.LBE13805:
.LBE13804:
.LBE13795:
.LBE13794:
.LBB13806:
.LBB13780:
.LBB13771:
.LBB13772:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL4770:
.LBE13772:
.LBE13771:
.LBB13773:
.LBB13774:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL4771:
.LBE13774:
.LBE13773:
.LBB13775:
.LBB13776:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LVL4772:
.LBE13776:
.LBE13775:
.LBB13777:
.LBB13778:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
.LVL4773:
.LBE13778:
.LBE13777:
.LBB13779:
.LBB13770:
	.loc 2 2399 0 discriminator 2
	sth 11,0(9)
	.loc 2 2400 0 discriminator 2
	mr 11,0
.LVL4774:
	b .L1038
.LVL4775:
.L902:
.LBE13770:
.LBE13779:
.LBE13780:
.LBE13806:
	.loc 1 1339 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L908
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL4776:
	li 30,0
.LVL4777:
	li 28,1
.LVL4778:
.L909:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4779:
	bge- 7,.L908
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT7_Array
	addi 3,30,1
	bl UploadVertexPNT7_Array
	addi 3,30,3
	bl UploadVertexPNT7_Array
	mr 3,26
	bl UploadVertexPNT7_Array
.LVL4780:
	addi 30,30,2
	b .L909
.LVL4781:
.L2656:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L891
	cmpwi 7,29,0
	beq- 7,.L892
	addi 27,31,-1
.LVL4782:
	mr 29,27
.LVL4783:
.L893:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4784:
	blt- 7,.L2867
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT6_Array
.LVL4785:
	b .L893
.LVL4786:
.L2655:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L879
	cmpwi 7,29,0
	beq- 7,.L880
	addi 27,31,-1
.LVL4787:
	mr 29,27
.LVL4788:
.L881:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4789:
	blt- 7,.L2868
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT5_Array
.LVL4790:
	b .L881
.LVL4791:
.L908:
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4792:
.L911:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT7_Array
	slwi 3,29,1
	bl UploadVertexPNT7_Array
	addi 3,30,3
	bl UploadVertexPNT7_Array
	addi 3,30,1
	addi 29,29,1
.LVL4793:
	bl UploadVertexPNT7_Array
.LVL4794:
	addi 30,30,2
	b .L911
.LVL4795:
.L2867:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L892
	.loc 1 1339 0 discriminator 1
	mr 3,27
.LVL4796:
	bl UploadVertexPNT6_Array
.LVL4797:
.L892:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2516:
.LVL4798:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4799:
	bge- 7,.L2869
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT6_Array
.LVL4800:
	b .L2516
.LVL4801:
.L891:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L897
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL4802:
	li 30,0
.LVL4803:
	li 28,1
.LVL4804:
.L898:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4805:
	bge- 7,.L897
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT6_Array
	addi 3,30,1
	bl UploadVertexPNT6_Array
	addi 3,30,3
	bl UploadVertexPNT6_Array
	mr 3,26
	bl UploadVertexPNT6_Array
.LVL4806:
	addi 30,30,2
	b .L898
.LVL4807:
.L2869:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL4808:
	bl UploadVertexPNT6_Array
	b .L2255
.LVL4809:
.L897:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4810:
.L900:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT6_Array
	slwi 3,29,1
	bl UploadVertexPNT6_Array
	addi 3,30,3
	bl UploadVertexPNT6_Array
	addi 3,30,1
	addi 29,29,1
.LVL4811:
	bl UploadVertexPNT6_Array
.LVL4812:
	addi 30,30,2
	b .L900
.LVL4813:
.L1201:
	.loc 1 1346 0 is_stmt 1 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1346 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1207
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4814:
	li 30,0
.LVL4815:
	li 28,1
.LVL4816:
.L1208:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4817:
	bge- 7,.L1207
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT0_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNT0_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT0_ElemGLubyte
	mr 3,26
	bl UploadVertexPNT0_ElemGLubyte
.LVL4818:
	addi 30,30,2
	b .L1208
.LVL4819:
.L1200:
	cmpwi 7,8,1
	beq- 7,.L2870
	cmpwi 7,8,2
	beq- 7,.L2871
	cmpwi 7,8,3
	beq- 7,.L2872
	cmpwi 7,8,4
	beq- 7,.L2873
	cmpwi 7,8,5
	beq- 7,.L2874
	cmpwi 7,8,6
	beq- 7,.L2875
	cmpwi 7,8,7
	beq- 7,$+8
	b .L719
.LVL4820:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1284
	cmpwi 7,29,0
	beq- 7,.L1285
	addi 27,31,-1
.LVL4821:
	mr 29,27
.LVL4822:
.L1286:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4823:
	blt- 7,.L2876
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT7_ElemGLubyte
.LVL4824:
	b .L1286
.LVL4825:
.L1207:
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4826:
.L1210:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT0_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNT0_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT0_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4827:
	bl UploadVertexPNT0_ElemGLubyte
.LVL4828:
	addi 30,30,2
	b .L1210
.LVL4829:
.L2876:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1285
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL4830:
	bl UploadVertexPNT7_ElemGLubyte
.LVL4831:
.L1285:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2538:
.LVL4832:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4833:
	bge- 7,.L2877
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT7_ElemGLubyte
.LVL4834:
	b .L2538
.LVL4835:
.L1284:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1290
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4836:
	li 30,0
.LVL4837:
	li 28,1
.LVL4838:
.L1291:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4839:
	bge- 7,.L1290
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT7_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNT7_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT7_ElemGLubyte
	mr 3,26
	bl UploadVertexPNT7_ElemGLubyte
.LVL4840:
	addi 30,30,2
	b .L1291
.LVL4841:
.L2877:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4842:
	bl UploadVertexPNT7_ElemGLubyte
	b .L2255
.LVL4843:
.L1290:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4844:
.L1293:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT7_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNT7_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT7_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4845:
	bl UploadVertexPNT7_ElemGLubyte
.LVL4846:
	addi 30,30,2
	b .L1293
.LVL4847:
.L2875:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1273
	cmpwi 7,29,0
	beq- 7,.L1274
	addi 27,31,-1
.LVL4848:
	mr 29,27
.LVL4849:
.L1275:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4850:
	blt- 7,.L2878
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT6_ElemGLubyte
.LVL4851:
	b .L1275
.LVL4852:
.L2874:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1261
	cmpwi 7,29,0
	beq- 7,.L1262
	addi 27,31,-1
.LVL4853:
	mr 29,27
.LVL4854:
.L1263:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4855:
	blt- 7,.L2879
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT5_ElemGLubyte
.LVL4856:
	b .L1263
.LVL4857:
.L2878:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1274
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL4858:
	bl UploadVertexPNT6_ElemGLubyte
.LVL4859:
.L1274:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2537:
.LVL4860:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4861:
	bge- 7,.L2880
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT6_ElemGLubyte
.LVL4862:
	b .L2537
.LVL4863:
.L2879:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1262
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL4864:
	bl UploadVertexPNT5_ElemGLubyte
.LVL4865:
.L1262:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2536:
.LVL4866:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4867:
	bge- 7,.L2881
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT5_ElemGLubyte
.LVL4868:
	b .L2536
.LVL4869:
.L1261:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1267
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4870:
	li 30,0
.LVL4871:
	li 28,1
.LVL4872:
.L1268:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4873:
	bge- 7,.L1267
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT5_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNT5_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT5_ElemGLubyte
	mr 3,26
	bl UploadVertexPNT5_ElemGLubyte
.LVL4874:
	addi 30,30,2
	b .L1268
.LVL4875:
.L2880:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4876:
	bl UploadVertexPNT6_ElemGLubyte
	b .L2255
.LVL4877:
.L1267:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4878:
.L1270:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT5_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNT5_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT5_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4879:
	bl UploadVertexPNT5_ElemGLubyte
.LVL4880:
	addi 30,30,2
	b .L1270
.LVL4881:
.L1273:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1279
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4882:
	li 30,0
.LVL4883:
	li 28,1
.LVL4884:
.L1280:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4885:
	bge- 7,.L1279
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT6_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNT6_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT6_ElemGLubyte
	mr 3,26
	bl UploadVertexPNT6_ElemGLubyte
.LVL4886:
	addi 30,30,2
	b .L1280
.LVL4887:
.L2881:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4888:
	bl UploadVertexPNT5_ElemGLubyte
	b .L2255
.LVL4889:
.L1279:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4890:
.L1282:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT6_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNT6_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT6_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4891:
	bl UploadVertexPNT6_ElemGLubyte
.LVL4892:
	addi 30,30,2
	b .L1282
.LVL4893:
.L2873:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1249
	cmpwi 7,29,0
	beq- 7,.L1250
	addi 27,31,-1
.LVL4894:
	mr 29,27
.LVL4895:
.L1251:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4896:
	blt- 7,.L2882
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT4_ElemGLubyte
.LVL4897:
	b .L1251
.LVL4898:
.L2872:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1237
	cmpwi 7,29,0
	beq- 7,.L1238
	addi 27,31,-1
.LVL4899:
	mr 29,27
.LVL4900:
.L1239:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4901:
	blt- 7,.L2883
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT3_ElemGLubyte
.LVL4902:
	b .L1239
.LVL4903:
.L2882:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1250
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL4904:
	bl UploadVertexPNT4_ElemGLubyte
.LVL4905:
.L1250:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2535:
.LVL4906:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4907:
	bge- 7,.L2884
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT4_ElemGLubyte
.LVL4908:
	b .L2535
.LVL4909:
.L2883:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1238
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL4910:
	bl UploadVertexPNT3_ElemGLubyte
.LVL4911:
.L1238:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2534:
.LVL4912:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4913:
	bge- 7,.L2885
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT3_ElemGLubyte
.LVL4914:
	b .L2534
.LVL4915:
.L1237:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1243
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4916:
	li 30,0
.LVL4917:
	li 28,1
.LVL4918:
.L1244:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4919:
	bge- 7,.L1243
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT3_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNT3_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT3_ElemGLubyte
	mr 3,26
	bl UploadVertexPNT3_ElemGLubyte
.LVL4920:
	addi 30,30,2
	b .L1244
.LVL4921:
.L2884:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4922:
	bl UploadVertexPNT4_ElemGLubyte
	b .L2255
.LVL4923:
.L2885:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4924:
	bl UploadVertexPNT3_ElemGLubyte
	b .L2255
.LVL4925:
.L1243:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4926:
.L1246:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT3_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNT3_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT3_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4927:
	bl UploadVertexPNT3_ElemGLubyte
.LVL4928:
	addi 30,30,2
	b .L1246
.LVL4929:
.L1249:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1255
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4930:
	li 30,0
.LVL4931:
	li 28,1
.LVL4932:
.L1256:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4933:
	bge- 7,.L1255
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT4_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNT4_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT4_ElemGLubyte
	mr 3,26
	bl UploadVertexPNT4_ElemGLubyte
.LVL4934:
	addi 30,30,2
	b .L1256
.LVL4935:
.L2871:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1225
	cmpwi 7,29,0
	beq- 7,.L1226
	addi 27,31,-1
.LVL4936:
	mr 29,27
.LVL4937:
.L1227:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4938:
	blt- 7,.L2886
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT2_ElemGLubyte
.LVL4939:
	b .L1227
.LVL4940:
.L2870:
	.loc 1 1346 0 discriminator 1
	bne- 4,.L1213
	cmpwi 7,29,0
	beq- 7,.L1214
	addi 27,31,-1
.LVL4941:
	mr 29,27
.LVL4942:
.L1215:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4943:
	blt- 7,.L2887
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT1_ElemGLubyte
.LVL4944:
	b .L1215
.LVL4945:
.L1255:
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4946:
.L1258:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT4_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNT4_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT4_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4947:
	bl UploadVertexPNT4_ElemGLubyte
.LVL4948:
	addi 30,30,2
	b .L1258
.LVL4949:
.L2886:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1226
	.loc 1 1346 0 discriminator 1
	mr 3,27
.LVL4950:
	bl UploadVertexPNT2_ElemGLubyte
.LVL4951:
.L1226:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2533:
.LVL4952:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4953:
	bge- 7,.L2888
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT2_ElemGLubyte
.LVL4954:
	b .L2533
.LVL4955:
.L1225:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1231
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL4956:
	li 30,0
.LVL4957:
	li 28,1
.LVL4958:
.L1232:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4959:
	bge- 7,.L1231
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT2_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNT2_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT2_ElemGLubyte
	mr 3,26
	bl UploadVertexPNT2_ElemGLubyte
.LVL4960:
	addi 30,30,2
	b .L1232
.LVL4961:
.L2888:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL4962:
	bl UploadVertexPNT2_ElemGLubyte
	b .L2255
.LVL4963:
.L1231:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4964:
.L1234:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT2_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNT2_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT2_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL4965:
	bl UploadVertexPNT2_ElemGLubyte
.LVL4966:
	addi 30,30,2
	b .L1234
.LVL4967:
.L1584:
	.loc 1 1349 0 is_stmt 1 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1590
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL4968:
	li 30,0
.LVL4969:
	li 28,1
.LVL4970:
.L1591:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4971:
	bge- 7,.L1590
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT0_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNT0_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT0_ElemGLushort
	mr 3,26
	bl UploadVertexPNT0_ElemGLushort
.LVL4972:
	addi 30,30,2
	b .L1591
.LVL4973:
.L1583:
	cmpwi 7,8,1
	beq- 7,.L2889
	cmpwi 7,8,2
	beq- 7,.L2890
	cmpwi 7,8,3
	beq- 7,.L2891
	cmpwi 7,8,4
	beq- 7,.L2892
	cmpwi 7,8,5
	beq- 7,.L2893
	cmpwi 7,8,6
	beq- 7,.L2894
	cmpwi 7,8,7
	beq- 7,$+8
	b .L719
.LVL4974:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1667
	cmpwi 7,29,0
	beq- 7,.L1668
	addi 27,31,-1
.LVL4975:
	mr 29,27
.LVL4976:
.L1669:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL4977:
	blt- 7,.L2895
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT7_ElemGLushort
.LVL4978:
	b .L1669
.LVL4979:
.L1590:
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4980:
.L1593:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT0_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNT0_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT0_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL4981:
	bl UploadVertexPNT0_ElemGLushort
.LVL4982:
	addi 30,30,2
	b .L1593
.LVL4983:
.L2895:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1668
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL4984:
	bl UploadVertexPNT7_ElemGLushort
.LVL4985:
.L1668:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2563:
.LVL4986:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL4987:
	bge- 7,.L2896
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT7_ElemGLushort
.LVL4988:
	b .L2563
.LVL4989:
.L1667:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1673
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL4990:
	li 30,0
.LVL4991:
	li 28,1
.LVL4992:
.L1674:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL4993:
	bge- 7,.L1673
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT7_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNT7_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT7_ElemGLushort
	mr 3,26
	bl UploadVertexPNT7_ElemGLushort
.LVL4994:
	addi 30,30,2
	b .L1674
.LVL4995:
.L2896:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL4996:
	bl UploadVertexPNT7_ElemGLushort
	b .L2255
.LVL4997:
.L1673:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL4998:
.L1676:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT7_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNT7_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT7_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL4999:
	bl UploadVertexPNT7_ElemGLushort
.LVL5000:
	addi 30,30,2
	b .L1676
.LVL5001:
.L2894:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1656
	cmpwi 7,29,0
	beq- 7,.L1657
	addi 27,31,-1
.LVL5002:
	mr 29,27
.LVL5003:
.L1658:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5004:
	blt- 7,.L2897
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT6_ElemGLushort
.LVL5005:
	b .L1658
.LVL5006:
.L2893:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1644
	cmpwi 7,29,0
	beq- 7,.L1645
	addi 27,31,-1
.LVL5007:
	mr 29,27
.LVL5008:
.L1646:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5009:
	blt- 7,.L2898
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT5_ElemGLushort
.LVL5010:
	b .L1646
.LVL5011:
.L2897:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1657
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL5012:
	bl UploadVertexPNT6_ElemGLushort
.LVL5013:
.L1657:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2562:
.LVL5014:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5015:
	bge- 7,.L2899
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT6_ElemGLushort
.LVL5016:
	b .L2562
.LVL5017:
.L2898:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1645
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL5018:
	bl UploadVertexPNT5_ElemGLushort
.LVL5019:
.L1645:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2561:
.LVL5020:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5021:
	bge- 7,.L2900
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT5_ElemGLushort
.LVL5022:
	b .L2561
.LVL5023:
.L1644:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1650
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL5024:
	li 30,0
.LVL5025:
	li 28,1
.LVL5026:
.L1651:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5027:
	bge- 7,.L1650
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT5_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNT5_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT5_ElemGLushort
	mr 3,26
	bl UploadVertexPNT5_ElemGLushort
.LVL5028:
	addi 30,30,2
	b .L1651
.LVL5029:
.L2899:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL5030:
	bl UploadVertexPNT6_ElemGLushort
	b .L2255
.LVL5031:
.L1650:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5032:
.L1653:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT5_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNT5_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT5_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL5033:
	bl UploadVertexPNT5_ElemGLushort
.LVL5034:
	addi 30,30,2
	b .L1653
.LVL5035:
.L1656:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1662
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL5036:
	li 30,0
.LVL5037:
	li 28,1
.LVL5038:
.L1663:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5039:
	bge- 7,.L1662
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT6_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNT6_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT6_ElemGLushort
	mr 3,26
	bl UploadVertexPNT6_ElemGLushort
.LVL5040:
	addi 30,30,2
	b .L1663
.LVL5041:
.L2900:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL5042:
	bl UploadVertexPNT5_ElemGLushort
	b .L2255
.LVL5043:
.L1662:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5044:
.L1665:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT6_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNT6_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT6_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL5045:
	bl UploadVertexPNT6_ElemGLushort
.LVL5046:
	addi 30,30,2
	b .L1665
.LVL5047:
.L2892:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1632
	cmpwi 7,29,0
	beq- 7,.L1633
	addi 27,31,-1
.LVL5048:
	mr 29,27
.LVL5049:
.L1634:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5050:
	blt- 7,.L2901
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT4_ElemGLushort
.LVL5051:
	b .L1634
.LVL5052:
.L2891:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1620
	cmpwi 7,29,0
	beq- 7,.L1621
	addi 27,31,-1
.LVL5053:
	mr 29,27
.LVL5054:
.L1622:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5055:
	blt- 7,.L2902
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT3_ElemGLushort
.LVL5056:
	b .L1622
.LVL5057:
.L2901:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1633
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL5058:
	bl UploadVertexPNT4_ElemGLushort
.LVL5059:
.L1633:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2560:
.LVL5060:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5061:
	bge- 7,.L2903
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT4_ElemGLushort
.LVL5062:
	b .L2560
.LVL5063:
.L2902:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1621
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL5064:
	bl UploadVertexPNT3_ElemGLushort
.LVL5065:
.L1621:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2559:
.LVL5066:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5067:
	bge- 7,.L2904
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT3_ElemGLushort
.LVL5068:
	b .L2559
.LVL5069:
.L1620:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1626
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL5070:
	li 30,0
.LVL5071:
	li 28,1
.LVL5072:
.L1627:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5073:
	bge- 7,.L1626
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT3_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNT3_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT3_ElemGLushort
	mr 3,26
	bl UploadVertexPNT3_ElemGLushort
.LVL5074:
	addi 30,30,2
	b .L1627
.LVL5075:
.L2903:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL5076:
	bl UploadVertexPNT4_ElemGLushort
	b .L2255
.LVL5077:
.L2904:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL5078:
	bl UploadVertexPNT3_ElemGLushort
	b .L2255
.LVL5079:
.L1626:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5080:
.L1629:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT3_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNT3_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT3_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL5081:
	bl UploadVertexPNT3_ElemGLushort
.LVL5082:
	addi 30,30,2
	b .L1629
.LVL5083:
.L1632:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1638
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL5084:
	li 30,0
.LVL5085:
	li 28,1
.LVL5086:
.L1639:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5087:
	bge- 7,.L1638
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT4_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNT4_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT4_ElemGLushort
	mr 3,26
	bl UploadVertexPNT4_ElemGLushort
.LVL5088:
	addi 30,30,2
	b .L1639
.LVL5089:
.L2890:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1608
	cmpwi 7,29,0
	beq- 7,.L1609
	addi 27,31,-1
.LVL5090:
	mr 29,27
.LVL5091:
.L1610:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5092:
	blt- 7,.L2905
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT2_ElemGLushort
.LVL5093:
	b .L1610
.LVL5094:
.L2889:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1596
	cmpwi 7,29,0
	beq- 7,.L1597
	addi 27,31,-1
.LVL5095:
	mr 29,27
.LVL5096:
.L1598:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5097:
	blt- 7,.L2906
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT1_ElemGLushort
.LVL5098:
	b .L1598
.LVL5099:
.L1638:
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5100:
.L1641:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT4_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNT4_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT4_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL5101:
	bl UploadVertexPNT4_ElemGLushort
.LVL5102:
	addi 30,30,2
	b .L1641
.LVL5103:
.L2905:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1609
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL5104:
	bl UploadVertexPNT2_ElemGLushort
.LVL5105:
.L1609:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2558:
.LVL5106:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5107:
	bge- 7,.L2907
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT2_ElemGLushort
.LVL5108:
	b .L2558
.LVL5109:
.L1608:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1614
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL5110:
	li 30,0
.LVL5111:
	li 28,1
.LVL5112:
.L1615:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5113:
	bge- 7,.L1614
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT2_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNT2_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT2_ElemGLushort
	mr 3,26
	bl UploadVertexPNT2_ElemGLushort
.LVL5114:
	addi 30,30,2
	b .L1615
.LVL5115:
.L2907:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL5116:
	bl UploadVertexPNT2_ElemGLushort
	b .L2255
.LVL5117:
.L1614:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5118:
.L1617:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT2_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNT2_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT2_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL5119:
	bl UploadVertexPNT2_ElemGLushort
.LVL5120:
	addi 30,30,2
	b .L1617
.LVL5121:
.L2648:
	.loc 1 1339 0 is_stmt 1 discriminator 1
	bl UploadVertexPT0_Array
	b .L727
.LVL5122:
.L1870:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,8,1
	beq- 7,.L2908
	cmpwi 7,8,2
	beq- 7,.L2909
	cmpwi 7,8,3
	beq- 7,.L2910
	cmpwi 7,8,4
	beq- 7,.L2911
	cmpwi 7,8,5
	beq- 7,.L2912
	cmpwi 7,8,6
	beq- 7,.L2913
	cmpwi 7,8,7
	beq- 7,$+8
	b .L719
.LVL5123:
	.loc 1 1352 0 is_stmt 0 discriminator 1
	bne- 4,.L1954
	cmpwi 7,29,0
	beq- 7,.L1955
	addi 27,31,-1
.LVL5124:
	mr 29,27
.LVL5125:
.L1956:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5126:
	blt- 7,.L2914
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT7_ElemGLuint
.LVL5127:
	b .L1956
.LVL5128:
.L2914:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1955
	.loc 1 1352 0 discriminator 1
	mr 3,27
	bl UploadVertexPT7_ElemGLuint
.LVL5129:
.L1955:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2581:
.LVL5130:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5131:
	bge- 7,.L2915
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT7_ElemGLuint
.LVL5132:
	b .L2581
.LVL5133:
.L1954:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1960
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL5134:
	li 30,0
.LVL5135:
	li 28,1
.LVL5136:
.L1961:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5137:
	bge- 7,.L1960
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPT7_ElemGLuint
	addi 3,30,1
	bl UploadVertexPT7_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT7_ElemGLuint
	mr 3,26
	bl UploadVertexPT7_ElemGLuint
.LVL5138:
	addi 30,30,2
	b .L1961
.LVL5139:
.L2915:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL5140:
	bl UploadVertexPT7_ElemGLuint
	b .L2255
.LVL5141:
.L1960:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5142:
.L1963:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT7_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPT7_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT7_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL5143:
	bl UploadVertexPT7_ElemGLuint
.LVL5144:
	addi 30,30,2
	b .L1963
.LVL5145:
.L2913:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L1943
	cmpwi 7,29,0
	beq- 7,.L1944
	addi 27,31,-1
.LVL5146:
	mr 29,27
.LVL5147:
.L1945:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5148:
	blt- 7,.L2916
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT6_ElemGLuint
.LVL5149:
	b .L1945
.LVL5150:
.L2912:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L1931
	cmpwi 7,29,0
	beq- 7,.L1932
	addi 27,31,-1
.LVL5151:
	mr 29,27
.LVL5152:
.L1933:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5153:
	blt- 7,.L2917
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT5_ElemGLuint
.LVL5154:
	b .L1933
.LVL5155:
.L2916:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1944
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL5156:
	bl UploadVertexPT6_ElemGLuint
.LVL5157:
.L1944:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2580:
.LVL5158:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5159:
	bge- 7,.L2918
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT6_ElemGLuint
.LVL5160:
	b .L2580
.LVL5161:
.L2917:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1932
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL5162:
	bl UploadVertexPT5_ElemGLuint
.LVL5163:
.L1932:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2579:
.LVL5164:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5165:
	bge- 7,.L2919
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT5_ElemGLuint
.LVL5166:
	b .L2579
.LVL5167:
.L1931:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1937
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL5168:
	li 30,0
.LVL5169:
	li 28,1
.LVL5170:
.L1938:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5171:
	bge- 7,.L1937
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPT5_ElemGLuint
	addi 3,30,1
	bl UploadVertexPT5_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT5_ElemGLuint
	mr 3,26
	bl UploadVertexPT5_ElemGLuint
.LVL5172:
	addi 30,30,2
	b .L1938
.LVL5173:
.L2918:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL5174:
	bl UploadVertexPT6_ElemGLuint
	b .L2255
.LVL5175:
.L2919:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL5176:
	bl UploadVertexPT5_ElemGLuint
	b .L2255
.LVL5177:
.L1937:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5178:
.L1940:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT5_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPT5_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT5_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL5179:
	bl UploadVertexPT5_ElemGLuint
.LVL5180:
	addi 30,30,2
	b .L1940
.LVL5181:
.L1943:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1949
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL5182:
	li 30,0
.LVL5183:
	li 28,1
.LVL5184:
.L1950:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5185:
	bge- 7,.L1949
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPT6_ElemGLuint
	addi 3,30,1
	bl UploadVertexPT6_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT6_ElemGLuint
	mr 3,26
	bl UploadVertexPT6_ElemGLuint
.LVL5186:
	addi 30,30,2
	b .L1950
.LVL5187:
.L2911:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L1919
	cmpwi 7,29,0
	beq- 7,.L1920
	addi 27,31,-1
.LVL5188:
	mr 29,27
.LVL5189:
.L1921:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5190:
	blt- 7,.L2920
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT4_ElemGLuint
.LVL5191:
	b .L1921
.LVL5192:
.L2910:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L1907
	cmpwi 7,29,0
	beq- 7,.L1908
	addi 27,31,-1
.LVL5193:
	mr 29,27
.LVL5194:
.L1909:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5195:
	blt- 7,.L2921
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT3_ElemGLuint
.LVL5196:
	b .L1909
.LVL5197:
.L1949:
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5198:
.L1952:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT6_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPT6_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT6_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL5199:
	bl UploadVertexPT6_ElemGLuint
.LVL5200:
	addi 30,30,2
	b .L1952
.LVL5201:
.L2920:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1920
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL5202:
	bl UploadVertexPT4_ElemGLuint
.LVL5203:
.L1920:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2578:
.LVL5204:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5205:
	bge- 7,.L2922
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT4_ElemGLuint
.LVL5206:
	b .L2578
.LVL5207:
.L1919:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1925
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL5208:
	li 30,0
.LVL5209:
	li 28,1
.LVL5210:
.L1926:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5211:
	bge- 7,.L1925
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPT4_ElemGLuint
	addi 3,30,1
	bl UploadVertexPT4_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT4_ElemGLuint
	mr 3,26
	bl UploadVertexPT4_ElemGLuint
.LVL5212:
	addi 30,30,2
	b .L1926
.LVL5213:
.L2922:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL5214:
	bl UploadVertexPT4_ElemGLuint
	b .L2255
.LVL5215:
.L1925:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5216:
.L1928:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT4_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPT4_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT4_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL5217:
	bl UploadVertexPT4_ElemGLuint
.LVL5218:
	addi 30,30,2
	b .L1928
.LVL5219:
.L2654:
	.loc 1 1339 0 is_stmt 1 discriminator 1
	bne- 4,.L867
	cmpwi 7,29,0
	beq- 7,.L868
	addi 27,31,-1
.LVL5220:
	mr 29,27
.LVL5221:
.L869:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5222:
	blt- 7,.L2923
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT4_Array
.LVL5223:
	b .L869
.LVL5224:
.L2653:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L855
	cmpwi 7,29,0
	beq- 7,.L856
.LVL5225:
	addic. 27,31,-1
.LVL5226:
	blt- 0,.L857
	.loc 1 1339 0 discriminator 2
	mr 29,27
.LVL5227:
.L858:
	mr 3,29
	bl UploadVertexPNT3_Array
.LVL5228:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL5229:
	bne+ 7,.L858
.LVL5230:
.L857:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L856
	.loc 1 1339 0 discriminator 1
	mr 3,27
	bl UploadVertexPNT3_Array
.L856:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	bne- 7,$+8
	b .L2255
.LVL5231:
	.loc 1 1339 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L859
	.loc 1 1339 0
	li 29,0
.LVL5232:
.L860:
	.loc 1 1339 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPNT3_Array
.LVL5233:
	cmpw 7,29,31
	bne+ 7,.L860
.LVL5234:
.L859:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
	bl UploadVertexPNT3_Array
	b .L2255
.LVL5235:
.L2923:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L868
	.loc 1 1339 0 discriminator 1
	mr 3,27
.LVL5236:
	bl UploadVertexPNT4_Array
.LVL5237:
.L868:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2514:
.LVL5238:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5239:
	bge- 7,.L2924
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT4_Array
.LVL5240:
	b .L2514
.LVL5241:
.L855:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L861
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL5242:
	li 30,0
.LVL5243:
	li 28,1
.LVL5244:
.L862:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5245:
	bge- 7,.L861
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT3_Array
	addi 3,30,1
	bl UploadVertexPNT3_Array
	addi 3,30,3
	bl UploadVertexPNT3_Array
	mr 3,26
	bl UploadVertexPNT3_Array
.LVL5246:
	addi 30,30,2
	b .L862
.LVL5247:
.L2924:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL5248:
	bl UploadVertexPNT4_Array
	b .L2255
.LVL5249:
.L861:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5250:
.L864:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT3_Array
	slwi 3,29,1
	bl UploadVertexPNT3_Array
	addi 3,30,3
	bl UploadVertexPNT3_Array
	addi 3,30,1
	addi 29,29,1
.LVL5251:
	bl UploadVertexPNT3_Array
.LVL5252:
	addi 30,30,2
	b .L864
.LVL5253:
.L867:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L873
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL5254:
	li 30,0
.LVL5255:
	li 28,1
.LVL5256:
.L874:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5257:
	bge- 7,.L873
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT4_Array
	addi 3,30,1
	bl UploadVertexPNT4_Array
	addi 3,30,3
	bl UploadVertexPNT4_Array
	mr 3,26
	bl UploadVertexPNT4_Array
.LVL5258:
	addi 30,30,2
	b .L874
.LVL5259:
.L2652:
	.loc 1 1339 0 discriminator 1
	bne- 4,.L843
	cmpwi 7,29,0
	beq- 7,.L844
.LVL5260:
	addic. 27,31,-1
.LVL5261:
	blt- 0,.L845
	.loc 1 1339 0 discriminator 2
	mr 29,27
.LVL5262:
.L846:
	mr 3,29
	bl UploadVertexPNT2_Array
.LVL5263:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL5264:
	bne+ 7,.L846
.LVL5265:
.L845:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L844
	.loc 1 1339 0 discriminator 1
	mr 3,27
	bl UploadVertexPNT2_Array
.L844:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	bne- 7,$+8
	b .L2255
.LVL5266:
	.loc 1 1339 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L847
	.loc 1 1339 0
	li 29,0
.LVL5267:
.L848:
	.loc 1 1339 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPNT2_Array
.LVL5268:
	cmpw 7,29,31
	bne+ 7,.L848
.LVL5269:
.L847:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
	bl UploadVertexPNT2_Array
	b .L2255
.LVL5270:
.L2651:
	bne- 4,.L831
	cmpwi 7,29,0
	beq- 7,.L832
.LVL5271:
	addic. 27,31,-1
.LVL5272:
	blt- 0,.L833
	.loc 1 1339 0 discriminator 2
	mr 29,27
.LVL5273:
.L834:
	mr 3,29
	bl UploadVertexPNT1_Array
.LVL5274:
	cmpwi 7,29,0
	addi 29,29,-1
.LVL5275:
	bne+ 7,.L834
.LVL5276:
.L833:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L832
	.loc 1 1339 0 discriminator 1
	mr 3,27
	bl UploadVertexPNT1_Array
.L832:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	bne- 7,$+8
	b .L2255
.LVL5277:
	.loc 1 1339 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L835
	.loc 1 1339 0
	li 29,0
.LVL5278:
.L836:
	.loc 1 1339 0 discriminator 2
	mr 3,29
	addi 29,29,1
	bl UploadVertexPNT1_Array
.LVL5279:
	cmpw 7,29,31
	bne+ 7,.L836
.LVL5280:
.L835:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
	bl UploadVertexPNT1_Array
	b .L2255
.LVL5281:
.L873:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5282:
.L876:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT4_Array
	slwi 3,29,1
	bl UploadVertexPNT4_Array
	addi 3,30,3
	bl UploadVertexPNT4_Array
	addi 3,30,1
	addi 29,29,1
.LVL5283:
	bl UploadVertexPNT4_Array
.LVL5284:
	addi 30,30,2
	b .L876
.LVL5285:
.L843:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L849
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL5286:
	li 30,0
.LVL5287:
	li 28,1
.LVL5288:
.L850:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5289:
	bge- 7,.L849
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT2_Array
	addi 3,30,1
	bl UploadVertexPNT2_Array
	addi 3,30,3
	bl UploadVertexPNT2_Array
	mr 3,26
	bl UploadVertexPNT2_Array
.LVL5290:
	addi 30,30,2
	b .L850
.LVL5291:
.L849:
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5292:
.L852:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT2_Array
	slwi 3,29,1
	bl UploadVertexPNT2_Array
	addi 3,30,3
	bl UploadVertexPNT2_Array
	addi 3,30,1
	addi 29,29,1
.LVL5293:
	bl UploadVertexPNT2_Array
.LVL5294:
	addi 30,30,2
	b .L852
.LVL5295:
.L1007:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1013
.LVL5296:
	srawi 10,31,1
	addze 10,10
	cmpwi 7,10,1
	ble- 7,.L1013
.LBB13807:
.LBB13808:
.LBB13809:
.LBB13810:
	.loc 2 2219 0 is_stmt 1
	addi 10,10,-1
	lis 11,wgPipe@ha
	mtctr 10
	lwz 9,wgPipe@l(11)
.LBE13810:
.LBE13809:
.LBE13808:
.LBE13807:
	.loc 1 1339 0
	li 11,0
.LVL5297:
.L1014:
.LBB13818:
.LBB13817:
.LBB13812:
.LBB13811:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL5298:
.LBE13811:
.LBE13812:
.LBB13813:
.LBB13814:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL5299:
.LBE13814:
.LBE13813:
.LBB13815:
.LBB13816:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 0,11,1
	rlwinm 0,0,0,0xffff
.LVL5300:
.LBE13816:
.LBE13815:
.LBE13817:
.LBE13818:
.LBB13819:
.LBB13820:
.LBB13821:
.LBB13822:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL5301:
.LBE13822:
.LBE13821:
.LBB13823:
.LBB13824:
	.loc 2 2261 0 discriminator 2
	sth 0,0(9)
	.loc 2 2262 0 discriminator 2
.LVL5302:
.LBE13824:
.LBE13823:
.LBB13825:
.LBB13826:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LBE13826:
.LBE13825:
.LBE13820:
.LBE13819:
	.loc 1 1164 0 discriminator 2
	addi 0,11,3
.LVL5303:
	rlwinm 0,0,0,0xffff
.LVL5304:
.LBB13827:
.LBB13828:
.LBB13829:
.LBB13830:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL5305:
.LBE13830:
.LBE13829:
.LBB13831:
.LBB13832:
	.loc 2 2261 0 discriminator 2
	sth 0,0(9)
	.loc 2 2262 0 discriminator 2
.LVL5306:
.LBE13832:
.LBE13831:
.LBB13833:
.LBB13834:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 11,11,2
.LVL5307:
	rlwinm 11,11,0,0xffff
.LVL5308:
.LBE13834:
.LBE13833:
.LBE13828:
.LBE13827:
.LBB13835:
.LBB13836:
.LBB13837:
.LBB13838:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL5309:
.LBE13838:
.LBE13837:
.LBB13839:
.LBB13840:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL5310:
.LBE13840:
.LBE13839:
.LBB13841:
.LBB13842:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LBE13842:
.LBE13841:
.LBE13836:
.LBE13835:
	.loc 1 1339 0 discriminator 2
	bdnz .L1014
.LVL5311:
.L1013:
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
.LVL5312:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	srawi 31,31,1
	addze 31,31
	cmpwi 7,31,1
	bgt+ 7,$+8
	b .L2255
	lis 11,wgPipe@ha
.LBB13843:
.LBB13844:
.LBB13845:
.LBB13846:
	.loc 2 2219 0 is_stmt 1
	addi 31,31,-1
.LBE13846:
.LBE13845:
.LBE13844:
.LBE13843:
	.loc 1 1339 0
	li 10,0
.LBB13857:
.LBB13855:
.LBB13849:
.LBB13847:
	.loc 2 2219 0
	lwz 9,wgPipe@l(11)
	mtctr 31
	b .L1015
.LVL5313:
.L2281:
.LBE13847:
.LBE13849:
.LBE13855:
.LBE13857:
	.loc 1 1339 0
	mr 10,0
.LVL5314:
.L1015:
.LBB13858:
.LBB13856:
.LBB13850:
.LBB13848:
	.loc 2 2219 0 discriminator 2
	sth 10,0(9)
	.loc 2 2220 0 discriminator 2
.LVL5315:
.LBE13848:
.LBE13850:
.LBB13851:
.LBB13852:
	.loc 2 2261 0 discriminator 2
	sth 10,0(9)
	.loc 2 2262 0 discriminator 2
.LVL5316:
.LBE13852:
.LBE13851:
.LBB13853:
.LBB13854:
	.loc 2 2317 0 discriminator 2
	sth 10,0(9)
	.loc 2 2318 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 0,10,2
	rlwinm 0,0,0,0xffff
.LVL5317:
.LBE13854:
.LBE13853:
.LBE13856:
.LBE13858:
.LBB13859:
.LBB13860:
.LBB13861:
.LBB13862:
	.loc 2 2219 0 discriminator 2
	sth 0,0(9)
	.loc 2 2220 0 discriminator 2
.LVL5318:
.LBE13862:
.LBE13861:
.LBB13863:
.LBB13864:
	.loc 2 2261 0 discriminator 2
	sth 0,0(9)
	.loc 2 2262 0 discriminator 2
.LVL5319:
.LBE13864:
.LBE13863:
.LBB13865:
.LBB13866:
	.loc 2 2317 0 discriminator 2
	sth 0,0(9)
	.loc 2 2318 0 discriminator 2
.LBE13866:
.LBE13865:
.LBE13860:
.LBE13859:
	.loc 1 1164 0 discriminator 2
	addi 11,10,3
	rlwinm 11,11,0,0xffff
.LVL5320:
.LBB13867:
.LBB13868:
.LBB13869:
.LBB13870:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL5321:
.LBE13870:
.LBE13869:
.LBB13871:
.LBB13872:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL5322:
.LBE13872:
.LBE13871:
.LBB13873:
.LBB13874:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
	.loc 1 1164 0 discriminator 2
	addi 11,10,1
.LVL5323:
	rlwinm 11,11,0,0xffff
.LVL5324:
.LBE13874:
.LBE13873:
.LBE13868:
.LBE13867:
.LBB13875:
.LBB13876:
.LBB13877:
.LBB13878:
	.loc 2 2219 0 discriminator 2
	sth 11,0(9)
	.loc 2 2220 0 discriminator 2
.LVL5325:
.LBE13878:
.LBE13877:
.LBB13879:
.LBB13880:
	.loc 2 2261 0 discriminator 2
	sth 11,0(9)
	.loc 2 2262 0 discriminator 2
.LVL5326:
.LBE13880:
.LBE13879:
.LBB13881:
.LBB13882:
	.loc 2 2317 0 discriminator 2
	sth 11,0(9)
	.loc 2 2318 0 discriminator 2
.LBE13882:
.LBE13881:
.LBE13876:
.LBE13875:
	.loc 1 1339 0 discriminator 2
	bdnz .L2281
	b .L2255
.LVL5327:
.L2887:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1214
	.loc 1 1346 0 is_stmt 0 discriminator 1
	mr 3,27
.LVL5328:
	bl UploadVertexPNT1_ElemGLubyte
.LVL5329:
.L1214:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2532:
.LVL5330:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5331:
	bge- 7,.L2925
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT1_ElemGLubyte
.LVL5332:
	b .L2532
.LVL5333:
.L1213:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1219
	.loc 1 1346 0
	srawi 27,31,1
	addze 27,27
.LVL5334:
	li 30,0
.LVL5335:
	li 28,1
.LVL5336:
.L1220:
	.loc 1 1346 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1346 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5337:
	bge- 7,.L1219
	.loc 1 1346 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT1_ElemGLubyte
	addi 3,30,1
	bl UploadVertexPNT1_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT1_ElemGLubyte
	mr 3,26
	bl UploadVertexPNT1_ElemGLubyte
.LVL5338:
	addi 30,30,2
	b .L1220
.LVL5339:
.L2925:
	.loc 1 1346 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 1
	li 3,0
.LVL5340:
	bl UploadVertexPNT1_ElemGLubyte
	b .L2255
.LVL5341:
.L1219:
	.loc 1 1346 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1346 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5342:
.L1222:
	.loc 1 1346 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1346 0 discriminator 2
	bl UploadVertexPNT1_ElemGLubyte
	slwi 3,29,1
	bl UploadVertexPNT1_ElemGLubyte
	addi 3,30,3
	bl UploadVertexPNT1_ElemGLubyte
	addi 3,30,1
	addi 29,29,1
.LVL5343:
	bl UploadVertexPNT1_ElemGLubyte
.LVL5344:
	addi 30,30,2
	b .L1222
.LVL5345:
.L2909:
	.loc 1 1352 0 is_stmt 1 discriminator 1
	bne- 4,.L1895
	cmpwi 7,29,0
	beq- 7,.L1896
	addi 27,31,-1
.LVL5346:
	mr 29,27
.LVL5347:
.L1897:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5348:
	blt- 7,.L2926
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPT2_ElemGLuint
.LVL5349:
	b .L1897
.LVL5350:
.L2908:
	.loc 1 1352 0 discriminator 1
	bne- 4,.L1883
	cmpwi 7,29,0
	beq- 7,.L1884
	addi 27,31,-1
.LVL5351:
	mr 29,27
.LVL5352:
.L1885:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5353:
	blt- 7,.L2927
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT1_ElemGLuint
.LVL5354:
	b .L1885
.LVL5355:
.L2926:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1896
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL5356:
	bl UploadVertexPT2_ElemGLuint
.LVL5357:
.L1896:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2576:
.LVL5358:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5359:
	bge- 7,.L2928
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT2_ElemGLuint
.LVL5360:
	b .L2576
.LVL5361:
.L2927:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1884
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL5362:
	bl UploadVertexPT1_ElemGLuint
.LVL5363:
.L1884:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2575:
.LVL5364:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5365:
	bge- 7,.L2929
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT1_ElemGLuint
.LVL5366:
	b .L2575
.LVL5367:
.L1883:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1889
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL5368:
	li 30,0
.LVL5369:
	li 28,1
.LVL5370:
.L1890:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5371:
	bge- 7,.L1889
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPT1_ElemGLuint
	addi 3,30,1
	bl UploadVertexPT1_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT1_ElemGLuint
	mr 3,26
	bl UploadVertexPT1_ElemGLuint
.LVL5372:
	addi 30,30,2
	b .L1890
.LVL5373:
.L2928:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL5374:
	bl UploadVertexPT2_ElemGLuint
	b .L2255
.LVL5375:
.L2929:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL5376:
	bl UploadVertexPT1_ElemGLuint
	b .L2255
.LVL5377:
.L1889:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5378:
.L1892:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT1_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPT1_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT1_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL5379:
	bl UploadVertexPT1_ElemGLuint
.LVL5380:
	addi 30,30,2
	b .L1892
.LVL5381:
.L1895:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1901
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL5382:
	li 30,0
.LVL5383:
	li 28,1
.LVL5384:
.L1902:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5385:
	bge- 7,.L1901
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPT2_ElemGLuint
	addi 3,30,1
	bl UploadVertexPT2_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT2_ElemGLuint
	mr 3,26
	bl UploadVertexPT2_ElemGLuint
.LVL5386:
	addi 30,30,2
	b .L1902
.LVL5387:
.L1871:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1877
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL5388:
	li 30,0
.LVL5389:
	li 28,1
.LVL5390:
.L1878:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5391:
	bge- 7,.L1877
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPT0_ElemGLuint
	addi 3,30,1
	bl UploadVertexPT0_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT0_ElemGLuint
	mr 3,26
	bl UploadVertexPT0_ElemGLuint
.LVL5392:
	addi 30,30,2
	b .L1878
.LVL5393:
.L1901:
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5394:
.L1904:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT2_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPT2_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT2_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL5395:
	bl UploadVertexPT2_ElemGLuint
.LVL5396:
	addi 30,30,2
	b .L1904
.LVL5397:
.L1877:
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5398:
.L1880:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT0_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPT0_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT0_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL5399:
	bl UploadVertexPT0_ElemGLuint
.LVL5400:
	addi 30,30,2
	b .L1880
.LVL5401:
.L2921:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1908
	.loc 1 1352 0 discriminator 1
	mr 3,27
.LVL5402:
	bl UploadVertexPT3_ElemGLuint
.LVL5403:
.L1908:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2577:
.LVL5404:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5405:
	bge- 7,.L2930
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT3_ElemGLuint
.LVL5406:
	b .L2577
.LVL5407:
.L1907:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1913
	.loc 1 1352 0
	srawi 27,31,1
	addze 27,27
.LVL5408:
	li 30,0
.LVL5409:
	li 28,1
.LVL5410:
.L1914:
	.loc 1 1352 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1352 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5411:
	bge- 7,.L1913
	.loc 1 1352 0 is_stmt 0 discriminator 2
	bl UploadVertexPT3_ElemGLuint
	addi 3,30,1
	bl UploadVertexPT3_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT3_ElemGLuint
	mr 3,26
	bl UploadVertexPT3_ElemGLuint
.LVL5412:
	addi 30,30,2
	b .L1914
.LVL5413:
.L2930:
	.loc 1 1352 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 1
	li 3,0
.LVL5414:
	bl UploadVertexPT3_ElemGLuint
	b .L2255
.LVL5415:
.L1913:
	.loc 1 1352 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1352 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5416:
.L1916:
	.loc 1 1352 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1352 0 discriminator 2
	bl UploadVertexPT3_ElemGLuint
	slwi 3,29,1
	bl UploadVertexPT3_ElemGLuint
	addi 3,30,3
	bl UploadVertexPT3_ElemGLuint
	addi 3,30,1
	addi 29,29,1
.LVL5417:
	bl UploadVertexPT3_ElemGLuint
.LVL5418:
	addi 30,30,2
	b .L1916
.LVL5419:
.L1679:
	.loc 1 1349 0 is_stmt 1 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1685
	srawi 0,31,1
	addze. 0,0
	.loc 1 1349 0
	li 10,0
.LBB13883:
.LBB13884:
.LBB13885:
.LBB13886:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L1686
	li 0,1
.LVL5420:
.L1686:
.LBE13886:
.LBE13885:
.LBE13884:
.LBE13883:
	.loc 1 1349 0 discriminator 1
	addic. 0,0,-1
.LBB13894:
.LBB13895:
.LBB13896:
.LBB13897:
	.loc 2 2318 0 discriminator 1
	addi 8,10,4
.LBE13897:
.LBE13896:
.LBE13895:
.LBE13894:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L1685
.LBB13903:
.LBB13893:
	.loc 1 576 0 discriminator 2
	lwz 7,0(9)
.LBB13889:
.LBB13887:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE13887:
.LBE13889:
	.loc 1 576 0 discriminator 2
	lhzx 7,7,10
.LVL5421:
.LBB13890:
.LBB13888:
	.loc 2 2219 0 discriminator 2
	sth 7,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5422:
.LBE13888:
.LBE13890:
.LBB13891:
.LBB13892:
	.loc 2 2317 0 discriminator 2
	sth 7,0(11)
	.loc 2 2318 0 discriminator 2
.LBE13892:
.LBE13891:
.LBE13893:
.LBE13903:
.LBB13904:
.LBB13905:
	.loc 1 576 0 discriminator 2
	lwz 7,0(9)
.LVL5423:
	add 7,7,10
	lhz 7,2(7)
.LVL5424:
.LBB13906:
.LBB13907:
	.loc 2 2219 0 discriminator 2
	sth 7,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5425:
.LBE13907:
.LBE13906:
.LBB13908:
.LBB13909:
	.loc 2 2317 0 discriminator 2
	sth 7,0(11)
	.loc 2 2318 0 discriminator 2
.LBE13909:
.LBE13908:
.LBE13905:
.LBE13904:
.LBB13910:
.LBB13911:
	.loc 1 576 0 discriminator 2
	lwz 7,0(9)
.LVL5426:
	add 10,7,10
	lhz 10,6(10)
.LVL5427:
.LBB13912:
.LBB13913:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5428:
.LBE13913:
.LBE13912:
.LBB13914:
.LBB13915:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LBE13915:
.LBE13914:
.LBE13911:
.LBE13910:
.LBB13916:
.LBB13902:
	.loc 1 576 0 discriminator 2
	lwz 10,0(9)
.LVL5429:
	lhzx 10,10,8
.LVL5430:
.LBB13899:
.LBB13900:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5431:
.LBE13900:
.LBE13899:
.LBB13901:
.LBB13898:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
	mr 10,8
.LVL5432:
	b .L1686
.LVL5433:
.L1685:
.LBE13898:
.LBE13901:
.LBE13902:
.LBE13916:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1349 0 is_stmt 0
	li 10,0
	li 8,1
.LBB13917:
.LBB13918:
.LBB13919:
.LBB13920:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L1688
	li 31,1
.L1688:
.LVL5434:
.LBE13920:
.LBE13919:
.LBE13918:
.LBE13917:
	.loc 1 1349 0 discriminator 1
	addic. 31,31,-1
	bne+ 0,$+8
	b .L2255
.LVL5435:
.LBB13928:
.LBB13927:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
.LBB13923:
.LBB13921:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE13921:
.LBE13923:
	.loc 1 576 0 discriminator 2
	lhzx 0,6,10
.LVL5436:
.LBB13924:
.LBB13922:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5437:
.LBE13922:
.LBE13924:
.LBB13925:
.LBB13926:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5438:
.LBE13926:
.LBE13925:
.LBE13927:
.LBE13928:
.LBB13929:
.LBB13930:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,2
.LVL5439:
	lhzx 0,6,0
.LVL5440:
.LBB13931:
.LBB13932:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5441:
.LBE13932:
.LBE13931:
.LBB13933:
.LBB13934:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LBE13934:
.LBE13933:
.LBE13930:
.LBE13929:
.LBB13935:
.LBB13936:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
.LBE13936:
.LBE13935:
	.loc 1 1349 0 discriminator 2
	addi 8,8,1
.LVL5442:
.LBB13942:
.LBB13941:
	.loc 1 576 0 discriminator 2
	add 6,6,10
	lhz 0,6(6)
.LVL5443:
.LBB13937:
.LBB13938:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5444:
.LBE13938:
.LBE13937:
.LBB13939:
.LBB13940:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5445:
.LBE13940:
.LBE13939:
.LBE13941:
.LBE13942:
.LBB13943:
.LBB13944:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lhz 0,2(6)
.LVL5446:
.LBB13945:
.LBB13946:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5447:
.LBE13946:
.LBE13945:
.LBB13947:
.LBB13948:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5448:
	addi 10,10,4
	b .L1688
.LVL5449:
.L1678:
.LBE13948:
.LBE13947:
.LBE13944:
.LBE13943:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,8,1
	beq- 7,.L2931
	cmpwi 7,8,2
	beq- 7,.L2932
	cmpwi 7,8,3
	beq- 7,.L2933
	cmpwi 7,8,4
	beq- 7,.L2934
	cmpwi 7,8,5
	beq- 7,.L2935
	cmpwi 7,8,6
	beq- 7,.L2936
	cmpwi 7,8,7
	beq- 7,$+8
	b .L719
.LVL5450:
	.loc 1 1349 0 is_stmt 0 discriminator 1
	bne- 4,.L1762
	cmpwi 7,29,0
	beq- 7,.L1763
	addi 27,31,-1
.LVL5451:
	mr 29,27
.LVL5452:
.L1764:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5453:
	blt- 7,.L2937
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT7_ElemGLushort
.LVL5454:
	b .L1764
.LVL5455:
.L2937:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1763
	.loc 1 1349 0 discriminator 1
	mr 3,27
	bl UploadVertexPCT7_ElemGLushort
.LVL5456:
.L1763:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2568:
.LVL5457:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5458:
	bge- 7,.L2938
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT7_ElemGLushort
.LVL5459:
	b .L2568
.LVL5460:
.L1762:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1768
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL5461:
	li 30,0
.LVL5462:
	li 28,1
.LVL5463:
.L1769:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5464:
	bge- 7,.L1768
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT7_ElemGLushort
	addi 3,30,1
	bl UploadVertexPCT7_ElemGLushort
	addi 3,30,3
	bl UploadVertexPCT7_ElemGLushort
	mr 3,26
	bl UploadVertexPCT7_ElemGLushort
.LVL5465:
	addi 30,30,2
	b .L1769
.LVL5466:
.L2938:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL5467:
	bl UploadVertexPCT7_ElemGLushort
	b .L2255
.LVL5468:
.L1768:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5469:
.L1771:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT7_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPCT7_ElemGLushort
	addi 3,30,3
	bl UploadVertexPCT7_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL5470:
	bl UploadVertexPCT7_ElemGLushort
.LVL5471:
	addi 30,30,2
	b .L1771
.LVL5472:
.L2936:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1751
	cmpwi 7,29,0
	beq- 7,.L1752
	addi 27,31,-1
.LVL5473:
	mr 29,27
.LVL5474:
.L1753:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5475:
	blt- 7,.L2939
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT6_ElemGLushort
.LVL5476:
	b .L1753
.LVL5477:
.L2935:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1739
	cmpwi 7,29,0
	beq- 7,.L1740
	addi 27,31,-1
.LVL5478:
	mr 29,27
.LVL5479:
.L1741:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5480:
	blt- 7,.L2940
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT5_ElemGLushort
.LVL5481:
	b .L1741
.LVL5482:
.L2939:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1752
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL5483:
	bl UploadVertexPCT6_ElemGLushort
.LVL5484:
.L1752:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2567:
.LVL5485:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5486:
	bge- 7,.L2941
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT6_ElemGLushort
.LVL5487:
	b .L2567
.LVL5488:
.L2940:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1740
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL5489:
	bl UploadVertexPCT5_ElemGLushort
.LVL5490:
.L1740:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2566:
.LVL5491:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5492:
	bge- 7,.L2942
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT5_ElemGLushort
.LVL5493:
	b .L2566
.LVL5494:
.L1739:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1745
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL5495:
	li 30,0
.LVL5496:
	li 28,1
.LVL5497:
.L1746:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5498:
	bge- 7,.L1745
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT5_ElemGLushort
	addi 3,30,1
	bl UploadVertexPCT5_ElemGLushort
	addi 3,30,3
	bl UploadVertexPCT5_ElemGLushort
	mr 3,26
	bl UploadVertexPCT5_ElemGLushort
.LVL5499:
	addi 30,30,2
	b .L1746
.LVL5500:
.L2941:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL5501:
	bl UploadVertexPCT6_ElemGLushort
	b .L2255
.LVL5502:
.L1745:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5503:
.L1748:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT5_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPCT5_ElemGLushort
	addi 3,30,3
	bl UploadVertexPCT5_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL5504:
	bl UploadVertexPCT5_ElemGLushort
.LVL5505:
	addi 30,30,2
	b .L1748
.LVL5506:
.L1751:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1757
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL5507:
	li 30,0
.LVL5508:
	li 28,1
.LVL5509:
.L1758:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5510:
	bge- 7,.L1757
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT6_ElemGLushort
	addi 3,30,1
	bl UploadVertexPCT6_ElemGLushort
	addi 3,30,3
	bl UploadVertexPCT6_ElemGLushort
	mr 3,26
	bl UploadVertexPCT6_ElemGLushort
.LVL5511:
	addi 30,30,2
	b .L1758
.LVL5512:
.L2942:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL5513:
	bl UploadVertexPCT5_ElemGLushort
	b .L2255
.LVL5514:
.L1757:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5515:
.L1760:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT6_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPCT6_ElemGLushort
	addi 3,30,3
	bl UploadVertexPCT6_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL5516:
	bl UploadVertexPCT6_ElemGLushort
.LVL5517:
	addi 30,30,2
	b .L1760
.LVL5518:
.L2934:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1727
	cmpwi 7,29,0
	beq- 7,.L1728
	addi 27,31,-1
.LVL5519:
	mr 29,27
.LVL5520:
.L1729:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5521:
	blt- 7,.L2943
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT4_ElemGLushort
.LVL5522:
	b .L1729
.LVL5523:
.L2933:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1715
	cmpwi 7,29,0
	beq- 7,.L1716
	addi 27,31,-1
.LVL5524:
	mr 29,27
.LVL5525:
.L1717:
	cmpwi 7,29,0
	mr 3,29
	addi 29,29,-1
.LVL5526:
	blt- 7,.L2944
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT3_ElemGLushort
.LVL5527:
	b .L1717
.LVL5528:
.L2943:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1728
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL5529:
	bl UploadVertexPCT4_ElemGLushort
.LVL5530:
.L1728:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2565:
.LVL5531:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5532:
	bge- 7,.L2945
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT4_ElemGLushort
.LVL5533:
	b .L2565
.LVL5534:
.L2944:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1716
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL5535:
	bl UploadVertexPCT3_ElemGLushort
.LVL5536:
.L1716:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2564:
.LVL5537:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5538:
	bge- 7,.L2946
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT3_ElemGLushort
.LVL5539:
	b .L2564
.LVL5540:
.L1715:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1721
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL5541:
	li 30,0
.LVL5542:
	li 28,1
.LVL5543:
.L1722:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5544:
	bge- 7,.L1721
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT3_ElemGLushort
	addi 3,30,1
	bl UploadVertexPCT3_ElemGLushort
	addi 3,30,3
	bl UploadVertexPCT3_ElemGLushort
	mr 3,26
	bl UploadVertexPCT3_ElemGLushort
.LVL5545:
	addi 30,30,2
	b .L1722
.LVL5546:
.L2945:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL5547:
	bl UploadVertexPCT4_ElemGLushort
	b .L2255
.LVL5548:
.L2946:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL5549:
	bl UploadVertexPCT3_ElemGLushort
	b .L2255
.LVL5550:
.L1721:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5551:
.L1724:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT3_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPCT3_ElemGLushort
	addi 3,30,3
	bl UploadVertexPCT3_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL5552:
	bl UploadVertexPCT3_ElemGLushort
.LVL5553:
	addi 30,30,2
	b .L1724
.LVL5554:
.L1727:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1733
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL5555:
	li 30,0
.LVL5556:
	li 28,1
.LVL5557:
.L1734:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5558:
	bge- 7,.L1733
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPCT4_ElemGLushort
	addi 3,30,1
	bl UploadVertexPCT4_ElemGLushort
	addi 3,30,3
	bl UploadVertexPCT4_ElemGLushort
	mr 3,26
	bl UploadVertexPCT4_ElemGLushort
.LVL5559:
	addi 30,30,2
	b .L1734
.LVL5560:
.L2932:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1703
	cmpwi 7,29,0
	beq- 7,.L1704
	addi 6,31,-1
.LVL5561:
	slwi 7,31,1
.LVL5562:
	cmpwi 7,6,-1
.LBB13949:
.LBB13950:
.LBB13951:
.LBB13952:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 5,wgPipe@ha
	addi 0,31,1
	bge+ 7,.L1705
	li 0,1
.LVL5563:
.L1705:
.LBE13952:
.LBE13951:
.LBE13950:
.LBE13949:
	.loc 1 1349 0 discriminator 1
	addic. 0,0,-1
.LBB13967:
.LBB13965:
.LBB13955:
.LBB13956:
	.loc 2 2400 0 discriminator 1
	addi 7,7,-2
.LBE13956:
.LBE13955:
.LBE13965:
.LBE13967:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L2947
.LBB13968:
.LBB13966:
	.loc 1 576 0
	lwz 8,0(9)
.LBB13958:
.LBB13953:
	.loc 2 2219 0
	lwz 11,wgPipe@l(5)
.LBE13953:
.LBE13958:
	.loc 1 576 0
	lhzx 8,8,7
.LVL5564:
.LBB13959:
.LBB13954:
	.loc 2 2219 0
	sth 8,0(11)
	.loc 2 2220 0
.LVL5565:
.LBE13954:
.LBE13959:
.LBB13960:
.LBB13961:
	.loc 2 2317 0
	sth 8,0(11)
	.loc 2 2318 0
.LVL5566:
.LBE13961:
.LBE13960:
.LBB13962:
.LBB13963:
	.loc 2 2399 0
	sth 8,0(11)
	.loc 2 2400 0
.LVL5567:
.LBE13963:
.LBE13962:
.LBB13964:
.LBB13957:
	.loc 2 2399 0
	sth 8,0(11)
	.loc 2 2400 0
	b .L1705
.LVL5568:
.L2947:
.LBE13957:
.LBE13964:
.LBE13966:
.LBE13968:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1704
.LVL5569:
.LBB13969:
.LBB13970:
	.loc 1 576 0 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	slwi 6,6,1
.LVL5570:
	lhzx 0,11,6
.LVL5571:
.LBB13971:
.LBB13972:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL5572:
.LBE13972:
.LBE13971:
.LBB13973:
.LBB13974:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL5573:
.LBE13974:
.LBE13973:
.LBB13975:
.LBB13976:
	.loc 2 2399 0 discriminator 1
	sth 0,0(11)
	.loc 2 2400 0 discriminator 1
.LVL5574:
.LBE13976:
.LBE13975:
.LBB13977:
.LBB13978:
	.loc 2 2399 0 discriminator 1
	sth 0,0(11)
	.loc 2 2400 0 discriminator 1
.LVL5575:
.L1704:
.LBE13978:
.LBE13977:
.LBE13970:
.LBE13969:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 8,0
	bne- 7,$+8
	b .L2255
	cmpwi 7,31,0
.LBB13979:
.LBB13980:
.LBB13981:
.LBB13982:
	.loc 2 2219 0 discriminator 1
	lis 7,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2611
	li 31,1
.L2611:
.LVL5576:
.LBE13982:
.LBE13981:
.LBE13980:
.LBE13979:
	.loc 1 1349 0 discriminator 1
	addic. 31,31,-1
.LBB13995:
.LBB13993:
	.loc 1 576 0 discriminator 1
	slwi 0,8,1
.LBE13993:
.LBE13995:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L2948
.LVL5577:
.LBB13996:
.LBB13994:
	.loc 1 576 0
	lwz 6,0(9)
.LBB13985:
.LBB13983:
	.loc 2 2219 0
	lwz 11,wgPipe@l(7)
.LBE13983:
.LBE13985:
	.loc 1 576 0
	lhzx 0,6,0
.LVL5578:
.LBB13986:
.LBB13984:
	.loc 2 2219 0
	sth 0,0(11)
	.loc 2 2220 0
.LVL5579:
.LBE13984:
.LBE13986:
.LBB13987:
.LBB13988:
	.loc 2 2317 0
	sth 0,0(11)
	.loc 2 2318 0
.LVL5580:
.LBE13988:
.LBE13987:
.LBB13989:
.LBB13990:
	.loc 2 2399 0
	sth 0,0(11)
	.loc 2 2400 0
.LVL5581:
.LBE13990:
.LBE13989:
.LBB13991:
.LBB13992:
	.loc 2 2399 0
	sth 0,0(11)
	.loc 2 2400 0
.LBE13992:
.LBE13991:
.LBE13994:
.LBE13996:
	.loc 1 1349 0
	addi 8,8,1
.LVL5582:
	b .L2611
.LVL5583:
.L2906:
	.loc 1 1349 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L1597
	.loc 1 1349 0 discriminator 1
	mr 3,27
.LVL5584:
	bl UploadVertexPNT1_ElemGLushort
.LVL5585:
.L1597:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2557:
.LVL5586:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5587:
	bge- 7,.L2949
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT1_ElemGLushort
.LVL5588:
	b .L2557
.LVL5589:
.L1596:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1602
	.loc 1 1349 0
	srawi 27,31,1
	addze 27,27
.LVL5590:
	li 30,0
.LVL5591:
	li 28,1
.LVL5592:
.L1603:
	.loc 1 1349 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1349 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5593:
	bge- 7,.L1602
	.loc 1 1349 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT1_ElemGLushort
	addi 3,30,1
	bl UploadVertexPNT1_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT1_ElemGLushort
	mr 3,26
	bl UploadVertexPNT1_ElemGLushort
.LVL5594:
	addi 30,30,2
	b .L1603
.LVL5595:
.L2949:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	li 3,0
.LVL5596:
	bl UploadVertexPNT1_ElemGLushort
	b .L2255
.LVL5597:
.L1602:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5598:
.L1605:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPNT1_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPNT1_ElemGLushort
	addi 3,30,3
	bl UploadVertexPNT1_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL5599:
	bl UploadVertexPNT1_ElemGLushort
.LVL5600:
	addi 30,30,2
	b .L1605
.LVL5601:
.L2931:
	.loc 1 1349 0 discriminator 1
	bne- 4,.L1691
	cmpwi 7,29,0
	beq- 7,.L1692
	addi 6,31,-1
.LVL5602:
	slwi 11,31,1
	cmpwi 7,6,-1
.LBB13997:
.LBB13998:
.LBB13999:
.LBB14000:
	.loc 2 2219 0 is_stmt 1 discriminator 1
	lis 5,wgPipe@ha
	addi 0,31,1
	bge+ 7,.L1693
	li 0,1
.LVL5603:
.L1693:
.LBE14000:
.LBE13999:
.LBE13998:
.LBE13997:
	.loc 1 1349 0 discriminator 1
	addic. 0,0,-1
.LBB14013:
.LBB14011:
.LBB14003:
.LBB14004:
	.loc 2 2400 0 discriminator 1
	addi 11,11,-2
.LBE14004:
.LBE14003:
.LBE14011:
.LBE14013:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L2950
.LBB14014:
.LBB14012:
	.loc 1 576 0
	lwz 7,0(9)
.LBB14006:
.LBB14001:
	.loc 2 2219 0
	lwz 8,wgPipe@l(5)
.LBE14001:
.LBE14006:
	.loc 1 576 0
	lhzx 7,7,11
.LVL5604:
.LBB14007:
.LBB14002:
	.loc 2 2219 0
	sth 7,0(8)
	.loc 2 2220 0
.LVL5605:
.LBE14002:
.LBE14007:
.LBB14008:
.LBB14009:
	.loc 2 2317 0
	sth 7,0(8)
	.loc 2 2318 0
.LVL5606:
.LBE14009:
.LBE14008:
.LBB14010:
.LBB14005:
	.loc 2 2399 0
	sth 7,0(8)
	.loc 2 2400 0
	b .L1693
.LVL5607:
.L2950:
.LBE14005:
.LBE14010:
.LBE14012:
.LBE14014:
	.loc 1 1349 0 discriminator 3
	cmpwi 7,30,0
	beq- 7,.L1692
.LVL5608:
.LBB14015:
.LBB14016:
	.loc 1 576 0 discriminator 1
	lwz 11,.LANCHOR0@l(10)
	slwi 6,6,1
.LVL5609:
	lhzx 0,11,6
.LVL5610:
.LBB14017:
.LBB14018:
	.loc 2 2219 0 discriminator 1
	lis 11,wgPipe@ha
	lwz 11,wgPipe@l(11)
	sth 0,0(11)
	.loc 2 2220 0 discriminator 1
.LVL5611:
.LBE14018:
.LBE14017:
.LBB14019:
.LBB14020:
	.loc 2 2317 0 discriminator 1
	sth 0,0(11)
	.loc 2 2318 0 discriminator 1
.LVL5612:
.LBE14020:
.LBE14019:
.LBB14021:
.LBB14022:
	.loc 2 2399 0 discriminator 1
	sth 0,0(11)
	.loc 2 2400 0 discriminator 1
.LVL5613:
.L1692:
.LBE14022:
.LBE14021:
.LBE14016:
.LBE14015:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,28,0
	li 11,0
	bne- 7,$+8
	b .L2255
	cmpwi 7,31,0
.LBB14023:
.LBB14024:
.LBB14025:
.LBB14026:
	.loc 2 2219 0 discriminator 1
	lis 7,wgPipe@ha
	addi 31,31,1
	bge+ 7,.L2610
	li 31,1
.L2610:
.LVL5614:
.LBE14026:
.LBE14025:
.LBE14024:
.LBE14023:
	.loc 1 1349 0 discriminator 1
	addic. 31,31,-1
.LBB14037:
.LBB14035:
	.loc 1 576 0 discriminator 1
	slwi 0,11,1
.LBE14035:
.LBE14037:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L2951
.LVL5615:
.LBB14038:
.LBB14036:
	.loc 1 576 0
	lwz 6,0(9)
.LBB14029:
.LBB14027:
	.loc 2 2219 0
	lwz 8,wgPipe@l(7)
.LBE14027:
.LBE14029:
	.loc 1 576 0
	lhzx 0,6,0
.LVL5616:
.LBB14030:
.LBB14028:
	.loc 2 2219 0
	sth 0,0(8)
	.loc 2 2220 0
.LVL5617:
.LBE14028:
.LBE14030:
.LBB14031:
.LBB14032:
	.loc 2 2317 0
	sth 0,0(8)
	.loc 2 2318 0
.LVL5618:
.LBE14032:
.LBE14031:
.LBB14033:
.LBB14034:
	.loc 2 2399 0
	sth 0,0(8)
	.loc 2 2400 0
.LBE14034:
.LBE14033:
.LBE14036:
.LBE14038:
	.loc 1 1349 0
	addi 11,11,1
.LVL5619:
	b .L2610
.LVL5620:
.L2951:
	.loc 1 1349 0 is_stmt 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
.LVL5621:
.LBB14039:
.LBB14040:
	.loc 1 576 0 is_stmt 1
	lwz 9,.LANCHOR0@l(10)
	lhz 0,0(9)
.LVL5622:
.LBB14041:
.LBB14042:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL5623:
.LBE14042:
.LBE14041:
.LBB14043:
.LBB14044:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL5624:
.LBE14044:
.LBE14043:
.LBB14045:
.LBB14046:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LVL5625:
.L1691:
.LBE14046:
.LBE14045:
.LBE14040:
.LBE14039:
	.loc 1 1349 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1697
	srawi 0,31,1
	addze. 0,0
	.loc 1 1349 0
	li 10,0
.LBB14047:
.LBB14048:
.LBB14049:
.LBB14050:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L1698
	li 0,1
.LVL5626:
.L1698:
.LBE14050:
.LBE14049:
.LBE14048:
.LBE14047:
	.loc 1 1349 0 discriminator 1
	addic. 0,0,-1
.LBB14060:
.LBB14061:
.LBB14062:
.LBB14063:
	.loc 2 2400 0 discriminator 1
	addi 7,10,4
.LBE14063:
.LBE14062:
.LBE14061:
.LBE14060:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L1697
.LBB14071:
.LBB14059:
	.loc 1 576 0 discriminator 2
	lwz 8,0(9)
.LBB14053:
.LBB14051:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE14051:
.LBE14053:
	.loc 1 576 0 discriminator 2
	lhzx 8,8,10
.LVL5627:
.LBB14054:
.LBB14052:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5628:
.LBE14052:
.LBE14054:
.LBB14055:
.LBB14056:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5629:
.LBE14056:
.LBE14055:
.LBB14057:
.LBB14058:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LBE14058:
.LBE14057:
.LBE14059:
.LBE14071:
.LBB14072:
.LBB14073:
	.loc 1 576 0 discriminator 2
	lwz 8,0(9)
.LVL5630:
	add 8,8,10
	lhz 8,2(8)
.LVL5631:
.LBB14074:
.LBB14075:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5632:
.LBE14075:
.LBE14074:
.LBB14076:
.LBB14077:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5633:
.LBE14077:
.LBE14076:
.LBB14078:
.LBB14079:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LBE14079:
.LBE14078:
.LBE14073:
.LBE14072:
.LBB14080:
.LBB14081:
	.loc 1 576 0 discriminator 2
	lwz 8,0(9)
.LVL5634:
	add 10,8,10
	lhz 10,6(10)
.LVL5635:
.LBB14082:
.LBB14083:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5636:
.LBE14083:
.LBE14082:
.LBB14084:
.LBB14085:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5637:
.LBE14085:
.LBE14084:
.LBB14086:
.LBB14087:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LBE14087:
.LBE14086:
.LBE14081:
.LBE14080:
.LBB14088:
.LBB14070:
	.loc 1 576 0 discriminator 2
	lwz 10,0(9)
.LVL5638:
	lhzx 10,10,7
.LVL5639:
.LBB14065:
.LBB14066:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5640:
.LBE14066:
.LBE14065:
.LBB14067:
.LBB14068:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5641:
.LBE14068:
.LBE14067:
.LBB14069:
.LBB14064:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
	mr 10,7
.LVL5642:
	b .L1698
.LVL5643:
.L1697:
.LBE14064:
.LBE14069:
.LBE14070:
.LBE14088:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1349 0 is_stmt 0
	li 10,0
	li 8,1
.LBB14089:
.LBB14090:
.LBB14091:
.LBB14092:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L1700
	li 31,1
.L1700:
.LVL5644:
.LBE14092:
.LBE14091:
.LBE14090:
.LBE14089:
	.loc 1 1349 0 discriminator 1
	addic. 31,31,-1
	bne+ 0,$+8
	b .L2255
.LVL5645:
.LBB14102:
.LBB14101:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
.LBB14095:
.LBB14093:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE14093:
.LBE14095:
	.loc 1 576 0 discriminator 2
	lhzx 0,6,10
.LVL5646:
.LBB14096:
.LBB14094:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5647:
.LBE14094:
.LBE14096:
.LBB14097:
.LBB14098:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5648:
.LBE14098:
.LBE14097:
.LBB14099:
.LBB14100:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5649:
.LBE14100:
.LBE14099:
.LBE14101:
.LBE14102:
.LBB14103:
.LBB14104:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,2
.LVL5650:
	lhzx 0,6,0
.LVL5651:
.LBB14105:
.LBB14106:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5652:
.LBE14106:
.LBE14105:
.LBB14107:
.LBB14108:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5653:
.LBE14108:
.LBE14107:
.LBB14109:
.LBB14110:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LBE14110:
.LBE14109:
.LBE14104:
.LBE14103:
.LBB14111:
.LBB14112:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
.LBE14112:
.LBE14111:
	.loc 1 1349 0 discriminator 2
	addi 8,8,1
.LVL5654:
.LBB14120:
.LBB14119:
	.loc 1 576 0 discriminator 2
	add 6,6,10
	lhz 0,6(6)
.LVL5655:
.LBB14113:
.LBB14114:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5656:
.LBE14114:
.LBE14113:
.LBB14115:
.LBB14116:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5657:
.LBE14116:
.LBE14115:
.LBB14117:
.LBB14118:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5658:
.LBE14118:
.LBE14117:
.LBE14119:
.LBE14120:
.LBB14121:
.LBB14122:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lhz 0,2(6)
.LVL5659:
.LBB14123:
.LBB14124:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5660:
.LBE14124:
.LBE14123:
.LBB14125:
.LBB14126:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5661:
.LBE14126:
.LBE14125:
.LBB14127:
.LBB14128:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5662:
	addi 10,10,4
	b .L1700
.LVL5663:
.L1733:
.LBE14128:
.LBE14127:
.LBE14122:
.LBE14121:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1349 0 is_stmt 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5664:
.L1736:
	.loc 1 1349 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 2
	bl UploadVertexPCT4_ElemGLushort
	slwi 3,29,1
	bl UploadVertexPCT4_ElemGLushort
	addi 3,30,3
	bl UploadVertexPCT4_ElemGLushort
	addi 3,30,1
	addi 29,29,1
.LVL5665:
	bl UploadVertexPCT4_ElemGLushort
.LVL5666:
	addi 30,30,2
	b .L1736
.LVL5667:
.L1703:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1349 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L1709
	srawi 0,31,1
	addze. 0,0
	.loc 1 1349 0
	li 10,0
.LBB14129:
.LBB14130:
.LBB14131:
.LBB14132:
	.loc 2 2219 0 is_stmt 1
	lis 6,wgPipe@ha
	bgt+ 0,.L1710
	li 0,1
.LVL5668:
.L1710:
.LBE14132:
.LBE14131:
.LBE14130:
.LBE14129:
	.loc 1 1349 0 discriminator 1
	addic. 0,0,-1
.LBB14144:
.LBB14145:
.LBB14146:
.LBB14147:
	.loc 2 2400 0 discriminator 1
	addi 7,10,4
.LBE14147:
.LBE14146:
.LBE14145:
.LBE14144:
	.loc 1 1349 0 discriminator 1
	beq- 0,.L1709
.LBB14157:
.LBB14143:
	.loc 1 576 0 discriminator 2
	lwz 8,0(9)
.LBB14135:
.LBB14133:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(6)
.LBE14133:
.LBE14135:
	.loc 1 576 0 discriminator 2
	lhzx 8,8,10
.LVL5669:
.LBB14136:
.LBB14134:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5670:
.LBE14134:
.LBE14136:
.LBB14137:
.LBB14138:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5671:
.LBE14138:
.LBE14137:
.LBB14139:
.LBB14140:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5672:
.LBE14140:
.LBE14139:
.LBB14141:
.LBB14142:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LBE14142:
.LBE14141:
.LBE14143:
.LBE14157:
.LBB14158:
.LBB14159:
	.loc 1 576 0 discriminator 2
	lwz 8,0(9)
.LVL5673:
	add 8,8,10
	lhz 8,2(8)
.LVL5674:
.LBB14160:
.LBB14161:
	.loc 2 2219 0 discriminator 2
	sth 8,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5675:
.LBE14161:
.LBE14160:
.LBB14162:
.LBB14163:
	.loc 2 2317 0 discriminator 2
	sth 8,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5676:
.LBE14163:
.LBE14162:
.LBB14164:
.LBB14165:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5677:
.LBE14165:
.LBE14164:
.LBB14166:
.LBB14167:
	.loc 2 2399 0 discriminator 2
	sth 8,0(11)
	.loc 2 2400 0 discriminator 2
.LBE14167:
.LBE14166:
.LBE14159:
.LBE14158:
.LBB14168:
.LBB14169:
	.loc 1 576 0 discriminator 2
	lwz 8,0(9)
.LVL5678:
	add 10,8,10
	lhz 10,6(10)
.LVL5679:
.LBB14170:
.LBB14171:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5680:
.LBE14171:
.LBE14170:
.LBB14172:
.LBB14173:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5681:
.LBE14173:
.LBE14172:
.LBB14174:
.LBB14175:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5682:
.LBE14175:
.LBE14174:
.LBB14176:
.LBB14177:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LBE14177:
.LBE14176:
.LBE14169:
.LBE14168:
.LBB14178:
.LBB14156:
	.loc 1 576 0 discriminator 2
	lwz 10,0(9)
.LVL5683:
	lhzx 10,10,7
.LVL5684:
.LBB14149:
.LBB14150:
	.loc 2 2219 0 discriminator 2
	sth 10,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5685:
.LBE14150:
.LBE14149:
.LBB14151:
.LBB14152:
	.loc 2 2317 0 discriminator 2
	sth 10,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5686:
.LBE14152:
.LBE14151:
.LBB14153:
.LBB14154:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5687:
.LBE14154:
.LBE14153:
.LBB14155:
.LBB14148:
	.loc 2 2399 0 discriminator 2
	sth 10,0(11)
	.loc 2 2400 0 discriminator 2
	mr 10,7
.LVL5688:
	b .L1710
.LVL5689:
.L1709:
.LBE14148:
.LBE14155:
.LBE14156:
.LBE14178:
	.loc 1 1349 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	srawi 31,31,1
	addze. 31,31
	.loc 1 1349 0 is_stmt 0
	li 10,0
	li 8,1
.LBB14179:
.LBB14180:
.LBB14181:
.LBB14182:
	.loc 2 2219 0 is_stmt 1
	lis 7,wgPipe@ha
	bgt+ 0,.L1712
	li 31,1
.L1712:
.LVL5690:
.LBE14182:
.LBE14181:
.LBE14180:
.LBE14179:
	.loc 1 1349 0 discriminator 1
	addic. 31,31,-1
	bne+ 0,$+8
	b .L2255
.LVL5691:
.LBB14194:
.LBB14193:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
.LBB14185:
.LBB14183:
	.loc 2 2219 0 discriminator 2
	lwz 11,wgPipe@l(7)
.LBE14183:
.LBE14185:
	.loc 1 576 0 discriminator 2
	lhzx 0,6,10
.LVL5692:
.LBB14186:
.LBB14184:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5693:
.LBE14184:
.LBE14186:
.LBB14187:
.LBB14188:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5694:
.LBE14188:
.LBE14187:
.LBB14189:
.LBB14190:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5695:
.LBE14190:
.LBE14189:
.LBB14191:
.LBB14192:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5696:
.LBE14192:
.LBE14191:
.LBE14193:
.LBE14194:
.LBB14195:
.LBB14196:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
	slwi 0,8,2
.LVL5697:
	lhzx 0,6,0
.LVL5698:
.LBB14197:
.LBB14198:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5699:
.LBE14198:
.LBE14197:
.LBB14199:
.LBB14200:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5700:
.LBE14200:
.LBE14199:
.LBB14201:
.LBB14202:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5701:
.LBE14202:
.LBE14201:
.LBB14203:
.LBB14204:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LBE14204:
.LBE14203:
.LBE14196:
.LBE14195:
.LBB14205:
.LBB14206:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
.LBE14206:
.LBE14205:
	.loc 1 1349 0 discriminator 2
	addi 8,8,1
.LVL5702:
.LBB14216:
.LBB14215:
	.loc 1 576 0 discriminator 2
	add 6,6,10
	lhz 0,6(6)
.LVL5703:
.LBB14207:
.LBB14208:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5704:
.LBE14208:
.LBE14207:
.LBB14209:
.LBB14210:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5705:
.LBE14210:
.LBE14209:
.LBB14211:
.LBB14212:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5706:
.LBE14212:
.LBE14211:
.LBB14213:
.LBB14214:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5707:
.LBE14214:
.LBE14213:
.LBE14215:
.LBE14216:
.LBB14217:
.LBB14218:
	.loc 1 576 0 discriminator 2
	lwz 6,0(9)
	add 6,6,10
	lhz 0,2(6)
.LVL5708:
.LBB14219:
.LBB14220:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL5709:
.LBE14220:
.LBE14219:
.LBB14221:
.LBB14222:
	.loc 2 2317 0 discriminator 2
	sth 0,0(11)
	.loc 2 2318 0 discriminator 2
.LVL5710:
.LBE14222:
.LBE14221:
.LBB14223:
.LBB14224:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5711:
.LBE14224:
.LBE14223:
.LBB14225:
.LBB14226:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LVL5712:
	addi 10,10,4
	b .L1712
.LVL5713:
.L831:
.LBE14226:
.LBE14225:
.LBE14218:
.LBE14217:
	.loc 1 1339 0 discriminator 2
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1339 0 is_stmt 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L837
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL5714:
	li 30,0
.LVL5715:
	li 28,1
.LVL5716:
.L838:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5717:
	bge- 7,.L837
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT1_Array
	addi 3,30,1
	bl UploadVertexPNT1_Array
	addi 3,30,3
	bl UploadVertexPNT1_Array
	mr 3,26
	bl UploadVertexPNT1_Array
.LVL5718:
	addi 30,30,2
	b .L838
.LVL5719:
.L837:
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5720:
.L840:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT1_Array
	slwi 3,29,1
	bl UploadVertexPNT1_Array
	addi 3,30,3
	bl UploadVertexPNT1_Array
	addi 3,30,1
	addi 29,29,1
.LVL5721:
	bl UploadVertexPNT1_Array
.LVL5722:
	addi 30,30,2
	b .L840
.LVL5723:
.L2868:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	beq+ 7,.L880
	.loc 1 1339 0 discriminator 1
	mr 3,27
.LVL5724:
	bl UploadVertexPNT5_Array
.LVL5725:
.L880:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,28,0
	li 29,0
	bne- 7,$+8
	b .L2255
.L2515:
.LVL5726:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,29
	addi 29,29,1
.LVL5727:
	bge- 7,.L2952
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT5_Array
.LVL5728:
	b .L2515
.LVL5729:
.L879:
	lwz 0,_GLtype@l(26)
	cmpwi 7,0,8
	beq- 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L885
	.loc 1 1339 0
	srawi 27,31,1
	addze 27,27
.LVL5730:
	li 30,0
.LVL5731:
	li 28,1
.LVL5732:
.L886:
	.loc 1 1339 0 discriminator 1
	cmpw 7,28,27
	.loc 1 1164 0 is_stmt 1 discriminator 1
	slwi 26,28,1
	.loc 1 1339 0 discriminator 1
	mr 3,30
	addi 28,28,1
.LVL5733:
	bge- 7,.L885
	.loc 1 1339 0 is_stmt 0 discriminator 2
	bl UploadVertexPNT5_Array
	addi 3,30,1
	bl UploadVertexPNT5_Array
	addi 3,30,3
	bl UploadVertexPNT5_Array
	mr 3,26
	bl UploadVertexPNT5_Array
.LVL5734:
	addi 30,30,2
	b .L886
.LVL5735:
.L2952:
	.loc 1 1339 0 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 1
	li 3,0
.LVL5736:
	bl UploadVertexPNT5_Array
	b .L2255
.LVL5737:
.L885:
	.loc 1 1339 0 discriminator 2
	cmpwi 7,29,0
	bne- 7,$+8
	b .L2255
	.loc 1 1339 0
	srawi 31,31,1
	addze 31,31
	li 30,0
	li 29,1
.LVL5738:
.L888:
	.loc 1 1339 0 discriminator 1
	cmpw 7,29,31
	mr 3,30
	blt+ 7,$+8
	b .L2255
	.loc 1 1339 0 discriminator 2
	bl UploadVertexPNT5_Array
	slwi 3,29,1
	bl UploadVertexPNT5_Array
	addi 3,30,3
	bl UploadVertexPNT5_Array
	addi 3,30,1
	addi 29,29,1
.LVL5739:
	bl UploadVertexPNT5_Array
.LVL5740:
	addi 30,30,2
	b .L888
.LVL5741:
.L2948:
	.loc 1 1349 0 is_stmt 1 discriminator 3
	cmpwi 7,30,0
	bne- 7,$+8
	b .L2255
.LVL5742:
.LBB14227:
.LBB14228:
	.loc 1 576 0
	lwz 9,.LANCHOR0@l(10)
	lhz 0,0(9)
.LVL5743:
.LBB14229:
.LBB14230:
	.loc 2 2219 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	sth 0,0(9)
	.loc 2 2220 0
.LVL5744:
.LBE14230:
.LBE14229:
.LBB14231:
.LBB14232:
	.loc 2 2317 0
	sth 0,0(9)
	.loc 2 2318 0
.LVL5745:
.LBE14232:
.LBE14231:
.LBB14233:
.LBB14234:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
.LVL5746:
.LBE14234:
.LBE14233:
.LBB14235:
.LBB14236:
	.loc 2 2399 0
	sth 0,0(9)
	.loc 2 2400 0
	b .L2255
.LBE14236:
.LBE14235:
.LBE14228:
.LBE14227:
	.cfi_endproc
.LFE220:
	.size	glRender, .-glRender
	.align 2
	.globl GX_GetCurrGLPrjMtx
	.type	GX_GetCurrGLPrjMtx, @function
GX_GetCurrGLPrjMtx:
.LFB215:
	.loc 1 909 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI147:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 910 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	.loc 1 909 0
	stw 0,12(1)
	.loc 1 910 0
	.cfi_offset 65, 4
	bl TopMtx44
	.loc 1 911 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI148:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE215:
	.size	GX_GetCurrGLPrjMtx, .-GX_GetCurrGLPrjMtx
	.align 2
	.globl GX_GetCurrGLModelViewMtx
	.type	GX_GetCurrGLModelViewMtx, @function
GX_GetCurrGLModelViewMtx:
.LFB216:
	.loc 1 913 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI149:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 914 0
	lis 3,model_stack@ha
	la 3,model_stack@l(3)
	.loc 1 913 0
	stw 0,12(1)
	.loc 1 914 0
	.cfi_offset 65, 4
	bl TopMtx
	.loc 1 915 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI150:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE216:
	.size	GX_GetCurrGLModelViewMtx, .-GX_GetCurrGLModelViewMtx
	.align 2
	.globl GX_LoadGLProjection
	.type	GX_LoadGLProjection, @function
GX_LoadGLProjection:
.LFB217:
	.loc 1 917 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI151:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 918 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	.loc 1 917 0
	stw 0,12(1)
	.loc 1 918 0
	.cfi_offset 65, 4
	bl TopPrjMtx
.LVL5747:
	.loc 1 920 0
	mr. 9,3
	beq- 0,.L2955
	.loc 1 921 0
	lbz 4,64(9)
	bl GX_LoadProjectionMtx
.LVL5748:
.L2955:
	.loc 1 923 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI152:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE217:
	.size	GX_LoadGLProjection, .-GX_LoadGLProjection
	.align 2
	.globl GX_LoadGLModelView
	.type	GX_LoadGLModelView, @function
GX_LoadGLModelView:
.LFB218:
	.loc 1 925 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI153:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 926 0
	lis 3,model_stack@ha
	la 3,model_stack@l(3)
	.loc 1 925 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 926 0
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl TopMtx
	mr 31,3
.LVL5749:
	.loc 1 929 0
	li 4,0
	bl GX_LoadPosMtxImm
.LVL5750:
	.loc 1 930 0
	mr 3,31
	li 4,0
	bl GX_LoadNrmMtxImm
	.loc 1 932 0
	li 3,0
	bl GX_SetCurrentMtx
	.loc 1 933 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL5751:
	mtlr 0
	addi 1,1,16
.LCFI154:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE218:
	.size	GX_LoadGLModelView, .-GX_LoadGLModelView
	.align 2
	.globl glEnd
	.type	glEnd, @function
glEnd:
.LFB221:
	.loc 1 1434 0
	.cfi_startproc
	mflr 0
	stwu 1,-32(1)
.LCFI155:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 1435 0
	lis 9,cur_state@ha
	.loc 1 1434 0
	stw 27,12(1)
	stw 0,36(1)
	.loc 1 1435 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	.loc 1 1434 0
	stw 28,16(1)
	.loc 1 1435 0
	andi. 9,0,1
	.loc 1 1434 0
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 1435 0
	beq- 0,.L2966
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 1439 0
	lis 31,.LANCHOR1@ha
	li 30,1
	la 31,.LANCHOR1@l(31)
	.loc 1 1438 0
	bl GX_ClearVtxDesc
	.loc 1 1439 0
	stb 30,1(31)
	li 3,9
	li 4,1
	lis 29,.LANCHOR0@ha
	bl GX_SetVtxDesc
	.loc 1 1440 0
	stb 30,2(31)
	li 3,10
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 1441 0
	stb 30,3(31)
	li 3,11
	li 4,1
	bl GX_SetVtxDesc
.LVL5752:
	li 30,255
	.loc 1 1444 0
	li 31,0
	la 29,.LANCHOR0@l(29)
	.loc 1 1451 0
	li 27,1
	lis 28,.LANCHOR2@ha
.LVL5753:
.L2963:
	.loc 1 1446 0
	mr 3,31
	bl _glGetEnableTex
	.loc 1 1451 0
	cmplwi 6,30,6
	.loc 1 1446 0
	cmpwi 7,3,0
	.loc 1 1451 0
	addi 9,29,8
	li 4,1
	.loc 1 1446 0
	beq- 7,.L2961
	.loc 1 1451 0
	la 11,.LANCHOR2@l(28)
.LBB14237:
	li 3,13
.LBE14237:
	stbx 27,31,9
.LVL5754:
	bgt- 6,.L2962
	lbzx 3,11,30
.L2962:
	bl GX_SetVtxDesc
.LVL5755:
.L2961:
	.loc 1 1444 0
	cmpwi 7,31,7
	addi 30,30,1
	rlwinm 30,30,0,0xff
	addi 31,31,1
.LVL5756:
	bne+ 7,.L2963
	.loc 1 1454 0
	li 0,0
	.loc 1 1457 0
	lis 9,vert_i@ha
	.loc 1 1454 0
	stw 0,64(29)
	.loc 1 1458 0
	lwz 0,36(1)
	lwz 27,12(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL5757:
	.loc 1 1457 0
	lwz 3,vert_i@l(9)
	.loc 1 1458 0
	addi 1,1,32
	.cfi_remember_state
.LCFI156:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.loc 1 1457 0
	b glRender
.L2966:
.LCFI157:
	.cfi_restore_state
	.loc 1 1435 0 discriminator 1
	lis 4,.LC6@ha
	li 3,1282
	la 4,.LC6@l(4)
	li 5,1435
	bl _glSetErrorEx
	.loc 1 1458 0 discriminator 1
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI158:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE221:
	.size	glEnd, .-glEnd
	.align 2
	.globl glEnableClientState
	.type	glEnableClientState, @function
glEnableClientState:
.LFB223:
	.loc 1 1476 0
	.cfi_startproc
.LVL5758:
	mflr 0
	stwu 1,-8(1)
.LCFI159:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1477 0
	lis 9,cur_state@ha
	.loc 1 1476 0
	stw 0,12(1)
	.loc 1 1477 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L2976
.LVL5759:
.LBB14242:
.LBB14243:
	.loc 1 1463 0
	xoris 0,3,0xffff
	cmpwi 7,0,-32651
	beq 7,.L2972
	cmplwi 7,3,32885
	li 0,0
	ble- 7,.L2977
	ori 0,0,32886
	cmpw 7,3,0
	beq- 7,.L2973
	xoris 0,3,0xffff
	cmpwi 7,0,-32648
	bne 7,.L2970
	.loc 1 1467 0
	lis 9,cur_tex_client@ha
	li 11,1
	lwz 0,cur_tex_client@l(9)
	lis 9,tex@ha
	la 9,tex@l(9)
	mulli 0,0,20
	stbx 11,9,0
	b .L2967
.LVL5760:
.L2976:
.LBE14243:
.LBE14242:
	.loc 1 1477 0 discriminator 1
	lis 4,.LC6@ha
	li 3,1282
.LVL5761:
	la 4,.LC6@l(4)
	li 5,1477
	bl _glSetErrorEx
.L2967:
	.loc 1 1480 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI160:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL5762:
.L2977:
.LCFI161:
	.cfi_restore_state
.LBB14247:
.LBB14246:
	.loc 1 1463 0
	ori 0,0,32884
	cmpw 7,3,0
	beq- 7,.L2978
.L2970:
.LBB14244:
.LBB14245:
	.loc 1 1471 0
	lis 4,.LC6@ha
	li 3,1280
.LVL5763:
	la 4,.LC6@l(4)
	li 5,1471
	bl _glSetErrorEx
	b .L2967
.LVL5764:
.L2972:
.LBE14245:
.LBE14244:
	.loc 1 1466 0
	li 0,1
	lis 9,norm@ha
	stb 0,norm@l(9)
	b .L2967
.L2978:
	.loc 1 1468 0
	li 0,1
	lis 9,vert@ha
	stb 0,vert@l(9)
	b .L2967
.L2973:
	.loc 1 1465 0
	li 0,1
	lis 9,color@ha
	stb 0,color@l(9)
	b .L2967
.LBE14246:
.LBE14247:
	.cfi_endproc
.LFE223:
	.size	glEnableClientState, .-glEnableClientState
	.align 2
	.globl glDisableClientState
	.type	glDisableClientState, @function
glDisableClientState:
.LFB224:
	.loc 1 1483 0
	.cfi_startproc
.LVL5765:
	mflr 0
	stwu 1,-8(1)
.LCFI162:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1484 0
	lis 9,cur_state@ha
	.loc 1 1483 0
	stw 0,12(1)
	.loc 1 1484 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 0,0,1
	bne- 0,.L2988
.LVL5766:
.LBB14252:
.LBB14253:
	.loc 1 1463 0
	xoris 9,3,0xffff
	cmpwi 7,9,-32651
	beq 7,.L2984
	cmplwi 7,3,32885
	li 9,0
	ble- 7,.L2989
	ori 9,9,32886
	cmpw 7,3,9
	beq- 7,.L2985
	xoris 9,3,0xffff
	cmpwi 7,9,-32648
	bne 7,.L2982
	.loc 1 1467 0
	lis 9,cur_tex_client@ha
	lis 11,tex@ha
	lwz 9,cur_tex_client@l(9)
	la 11,tex@l(11)
	mulli 9,9,20
	stbx 0,11,9
	b .L2979
.LVL5767:
.L2988:
.LBE14253:
.LBE14252:
	.loc 1 1484 0 discriminator 1
	lis 4,.LC6@ha
	li 3,1282
.LVL5768:
	la 4,.LC6@l(4)
	li 5,1484
	bl _glSetErrorEx
.L2979:
	.loc 1 1487 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI163:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL5769:
.L2989:
.LCFI164:
	.cfi_restore_state
.LBB14257:
.LBB14256:
	.loc 1 1463 0
	ori 9,9,32884
	cmpw 7,3,9
	beq- 7,.L2990
.L2982:
.LBB14254:
.LBB14255:
	.loc 1 1471 0
	lis 4,.LC6@ha
	li 3,1280
.LVL5770:
	la 4,.LC6@l(4)
	li 5,1471
	bl _glSetErrorEx
	b .L2979
.LVL5771:
.L2984:
.LBE14255:
.LBE14254:
	.loc 1 1466 0
	lis 9,norm@ha
	stb 0,norm@l(9)
	b .L2979
.L2990:
	.loc 1 1468 0
	lis 9,vert@ha
	stb 0,vert@l(9)
	b .L2979
.L2985:
	.loc 1 1465 0
	lis 9,color@ha
	stb 0,color@l(9)
	b .L2979
.LBE14256:
.LBE14257:
	.cfi_endproc
.LFE224:
	.size	glDisableClientState, .-glDisableClientState
	.align 2
	.globl glTexCoordPointer
	.type	glTexCoordPointer, @function
glTexCoordPointer:
.LFB226:
	.loc 1 1496 0
	.cfi_startproc
.LVL5772:
	mflr 0
	stwu 1,-32(1)
.LCFI165:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 1497 0
	lis 9,cur_state@ha
	.loc 1 1496 0
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,36(1)
	.loc 1 1497 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 1496 0
	stw 30,24(1)
	mr 30,5
	.cfi_offset 30, -8
	.loc 1 1497 0
	andi. 9,0,1
	.loc 1 1496 0
	stw 31,28(1)
	stw 28,16(1)
	.loc 1 1496 0
	mr 31,3
	.cfi_offset 28, -16
	.cfi_offset 31, -4
	.loc 1 1497 0
	bne- 0,.L3001
	.loc 1 1499 0
	addi 0,3,-1
	cmplwi 7,0,3
	bgt- 7,.L3002
	.loc 1 1505 0
	addi 28,4,-5122
	cmplwi 7,28,8
	ble- 7,.L3003
	.loc 1 1511 0
	lis 4,.LC6@ha
.LVL5773:
	li 3,1280
.LVL5774:
	la 4,.LC6@l(4)
	li 5,1511
.LVL5775:
	stw 6,8(1)
	bl _glSetErrorEx
.LVL5776:
	lwz 6,8(1)
.L2996:
	.loc 1 1514 0
	cmpwi 7,30,0
	blt- 7,.L3004
	.loc 1 1520 0
	bne- 7,.L2998
.LVL5777:
	cmplwi 7,28,8
.LBB14258:
.LBB14259:
.LBB14260:
	li 30,1
.LVL5778:
.LBE14260:
.LBE14259:
.LBE14258:
	ble- 7,.L3005
.L2999:
.LBB14262:
.LBB14261:
	.loc 1 1491 0
	mullw 30,30,31
.LVL5779:
.L2998:
.LBE14261:
.LBE14262:
	.loc 1 1525 0
	lis 9,cur_tex_client@ha
	lwz 0,cur_tex_client@l(9)
	lis 9,tex@ha
	la 9,tex@l(9)
	mulli 0,0,20
	add 9,9,0
	stw 31,12(9)
	.loc 1 1526 0
	stw 29,16(9)
	.loc 1 1527 0
	stb 30,8(9)
	.loc 1 1528 0
	stw 6,4(9)
.L2991:
	.loc 1 1530 0
	lwz 0,36(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
.LVL5780:
	lwz 30,24(1)
.LVL5781:
	lwz 31,28(1)
.LVL5782:
	addi 1,1,32
	.cfi_remember_state
.LCFI166:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL5783:
.L3003:
.LCFI167:
	.cfi_restore_state
	.loc 1 1505 0
	li 0,1
	slw 0,0,28
	andi. 9,0,277
	bne- 0,.L2996
	.loc 1 1511 0
	lis 4,.LC6@ha
.LVL5784:
	li 3,1280
.LVL5785:
	la 4,.LC6@l(4)
	li 5,1511
.LVL5786:
	stw 6,8(1)
	bl _glSetErrorEx
.LVL5787:
	lwz 6,8(1)
	b .L2996
.LVL5788:
.L3001:
	.loc 1 1497 0 discriminator 1
	lis 4,.LC6@ha
	li 3,1282
	la 4,.LC6@l(4)
	li 5,1497
	bl _glSetErrorEx
.LVL5789:
	.loc 1 1530 0 discriminator 1
	lwz 0,36(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
.LVL5790:
	lwz 30,24(1)
.LVL5791:
	lwz 31,28(1)
.LVL5792:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI168:
	.cfi_def_cfa_offset 0
	blr
.LVL5793:
.L3005:
.LCFI169:
	.cfi_restore_state
	.loc 1 1520 0
	lis 9,.LANCHOR3@ha
	slwi 28,28,2
	la 0,.LANCHOR3@l(9)
	add 28,0,28
	lwz 30,8(28)
	b .L2999
.LVL5794:
.L3002:
	.loc 1 1501 0
	lis 4,.LC6@ha
	li 3,1281
	la 4,.LC6@l(4)
	li 5,1501
.LVL5795:
	bl _glSetErrorEx
.LVL5796:
	.loc 1 1530 0
	lwz 0,36(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
.LVL5797:
	lwz 30,24(1)
.LVL5798:
	lwz 31,28(1)
.LVL5799:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI170:
	.cfi_def_cfa_offset 0
	blr
.LVL5800:
.L3004:
.LCFI171:
	.cfi_restore_state
	.loc 1 1516 0
	lis 4,.LC6@ha
	li 3,1281
	la 4,.LC6@l(4)
	li 5,1516
	bl _glSetErrorEx
	.loc 1 1517 0
	b .L2991
	.cfi_endproc
.LFE226:
	.size	glTexCoordPointer, .-glTexCoordPointer
	.align 2
	.globl _glIsArrayEnabled
	.type	_glIsArrayEnabled, @function
_glIsArrayEnabled:
.LFB227:
	.loc 1 1534 0
	.cfi_startproc
.LVL5801:
	.loc 1 1535 0
	xoris 0,3,0xffff
	cmpwi 7,0,-32651
	beq 7,.L3009
	cmplwi 7,3,32885
	li 0,0
	ble- 7,.L3014
	ori 0,0,32886
	cmpw 7,3,0
	beq- 7,.L3010
	xoris 0,3,0xffff
	cmpwi 7,0,-32648
	bne 7,.L3013
	.loc 1 1537 0
	lis 9,cur_tex_client@ha
	lwz 0,cur_tex_client@l(9)
	lis 9,tex@ha
	la 9,tex@l(9)
	mulli 0,0,20
	lbzx 3,9,0
.LVL5802:
	blr
.LVL5803:
.L3014:
	.loc 1 1535 0
	ori 0,0,32884
	cmpw 7,3,0
	beq- 7,.L3015
.L3013:
	.loc 1 1544 0
	li 3,0
.LVL5804:
	.loc 1 1546 0
	blr
.LVL5805:
.L3010:
	.loc 1 1539 0
	lis 9,color@ha
	lbz 3,color@l(9)
.LVL5806:
	blr
.LVL5807:
.L3009:
	.loc 1 1540 0
	lis 9,norm@ha
	lbz 3,norm@l(9)
.LVL5808:
	blr
.LVL5809:
.L3015:
	.loc 1 1538 0
	lis 9,vert@ha
	lbz 3,vert@l(9)
.LVL5810:
	blr
	.cfi_endproc
.LFE227:
	.size	_glIsArrayEnabled, .-_glIsArrayEnabled
	.align 2
	.globl glVertexPointer
	.type	glVertexPointer, @function
glVertexPointer:
.LFB228:
	.loc 1 1550 0
	.cfi_startproc
.LVL5811:
	mflr 0
	stwu 1,-32(1)
.LCFI172:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 1551 0
	lis 9,cur_state@ha
	.loc 1 1550 0
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,36(1)
	.loc 1 1551 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 1550 0
	stw 30,24(1)
	mr 30,5
	.cfi_offset 30, -8
	.loc 1 1551 0
	andi. 9,0,1
	.loc 1 1550 0
	stw 31,28(1)
	stw 28,16(1)
	.loc 1 1550 0
	mr 31,3
	.cfi_offset 28, -16
	.cfi_offset 31, -4
	.loc 1 1551 0
	bne- 0,.L3026
	.loc 1 1553 0
	addi 0,3,-2
	cmplwi 7,0,2
	bgt- 7,.L3027
	.loc 1 1559 0
	addi 28,4,-5122
	cmplwi 7,28,8
	ble- 7,.L3028
	.loc 1 1565 0
	lis 4,.LC6@ha
.LVL5812:
	li 3,1280
.LVL5813:
	la 4,.LC6@l(4)
	li 5,1565
.LVL5814:
	stw 6,8(1)
	bl _glSetErrorEx
.LVL5815:
	lwz 6,8(1)
.L3021:
	.loc 1 1568 0
	cmpwi 7,30,0
	blt- 7,.L3029
	.loc 1 1574 0
	bne- 7,.L3023
.LVL5816:
	cmplwi 7,28,8
.LBB14263:
.LBB14264:
.LBB14265:
	li 30,1
.LVL5817:
.LBE14265:
.LBE14264:
.LBE14263:
	ble- 7,.L3030
.L3024:
.LBB14267:
.LBB14266:
	.loc 1 1491 0
	mullw 30,30,31
.LVL5818:
.L3023:
.LBE14266:
.LBE14267:
	.loc 1 1579 0
	lis 9,vert@ha
	la 9,vert@l(9)
	stw 31,12(9)
	.loc 1 1580 0
	stw 29,16(9)
	.loc 1 1581 0
	stb 30,8(9)
	.loc 1 1582 0
	stw 6,4(9)
.L3016:
	.loc 1 1583 0
	lwz 0,36(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
.LVL5819:
	lwz 30,24(1)
.LVL5820:
	lwz 31,28(1)
.LVL5821:
	addi 1,1,32
	.cfi_remember_state
.LCFI173:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL5822:
.L3028:
.LCFI174:
	.cfi_restore_state
	.loc 1 1559 0
	li 0,1
	slw 0,0,28
	andi. 9,0,277
	bne- 0,.L3021
	.loc 1 1565 0
	lis 4,.LC6@ha
.LVL5823:
	li 3,1280
.LVL5824:
	la 4,.LC6@l(4)
	li 5,1565
.LVL5825:
	stw 6,8(1)
	bl _glSetErrorEx
.LVL5826:
	lwz 6,8(1)
	b .L3021
.LVL5827:
.L3026:
	.loc 1 1551 0 discriminator 1
	lis 4,.LC6@ha
	li 3,1282
	la 4,.LC6@l(4)
	li 5,1551
	bl _glSetErrorEx
.LVL5828:
	.loc 1 1583 0 discriminator 1
	lwz 0,36(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
.LVL5829:
	lwz 30,24(1)
.LVL5830:
	lwz 31,28(1)
.LVL5831:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI175:
	.cfi_def_cfa_offset 0
	blr
.LVL5832:
.L3030:
.LCFI176:
	.cfi_restore_state
	.loc 1 1574 0
	lis 9,.LANCHOR3@ha
	slwi 28,28,2
	la 0,.LANCHOR3@l(9)
	add 28,0,28
	lwz 30,8(28)
	b .L3024
.LVL5833:
.L3027:
	.loc 1 1555 0
	lis 4,.LC6@ha
	li 3,1281
	la 4,.LC6@l(4)
	li 5,1555
.LVL5834:
	bl _glSetErrorEx
.LVL5835:
	.loc 1 1583 0
	lwz 0,36(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
.LVL5836:
	lwz 30,24(1)
.LVL5837:
	lwz 31,28(1)
.LVL5838:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI177:
	.cfi_def_cfa_offset 0
	blr
.LVL5839:
.L3029:
.LCFI178:
	.cfi_restore_state
	.loc 1 1570 0
	lis 4,.LC6@ha
	li 3,1281
	la 4,.LC6@l(4)
	li 5,1570
	bl _glSetErrorEx
	.loc 1 1571 0
	b .L3016
	.cfi_endproc
.LFE228:
	.size	glVertexPointer, .-glVertexPointer
	.align 2
	.globl glNormalPointer
	.type	glNormalPointer, @function
glNormalPointer:
.LFB229:
	.loc 1 1587 0
	.cfi_startproc
.LVL5840:
	mflr 0
	stwu 1,-24(1)
.LCFI179:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 1588 0
	lis 9,cur_state@ha
	.loc 1 1587 0
	stw 29,12(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 0,28(1)
	.loc 1 1588 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 1587 0
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	.loc 1 1588 0
	andi. 9,0,1
	.loc 1 1587 0
	stw 31,20(1)
	.loc 1 1587 0
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 1588 0
	bne- 0,.L3042
	.loc 1 1590 0
	addi 0,3,-5120
	cmplwi 7,0,10
	ble- 7,.L3043
.L3034:
	.loc 1 1597 0
	lis 4,.LC6@ha
.LVL5841:
	li 3,1280
.LVL5842:
	la 4,.LC6@l(4)
	li 5,1597
.LVL5843:
	bl _glSetErrorEx
.L3035:
	.loc 1 1600 0
	cmpwi 7,30,0
	blt- 7,.L3044
	.loc 1 1606 0
	bne- 7,.L3041
.LVL5844:
	addi 0,31,-5122
.LBB14268:
.LBB14269:
	li 30,3
.LVL5845:
.LBE14269:
.LBE14268:
	cmplwi 7,0,8
	ble- 7,.L3045
.LVL5846:
.L3038:
	.loc 1 1611 0
	lis 9,norm@ha
	li 0,3
	la 9,norm@l(9)
	stw 0,12(9)
	.loc 1 1612 0
	stw 31,16(9)
	.loc 1 1613 0
	stb 30,8(9)
	.loc 1 1614 0
	stw 29,4(9)
.L3031:
	.loc 1 1615 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL5847:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL5848:
	addi 1,1,24
	.cfi_remember_state
.LCFI180:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL5849:
.L3043:
.LCFI181:
	.cfi_restore_state
	.loc 1 1590 0
	li 9,1
	slw 0,9,0
	andi. 9,0,1109
	bne- 0,.L3035
	b .L3034
.LVL5850:
.L3045:
	.loc 1 1606 0
	lis 9,.LANCHOR3@ha
	slwi 0,0,2
	la 9,.LANCHOR3@l(9)
	add 9,9,0
	lwz 30,8(9)
	mulli 30,30,3
.LVL5851:
.L3041:
	rlwinm 30,30,0,0xff
	b .L3038
.LVL5852:
.L3042:
	.loc 1 1588 0 discriminator 1
	lis 4,.LC6@ha
.LVL5853:
	li 3,1282
	la 4,.LC6@l(4)
	li 5,1588
	bl _glSetErrorEx
	.loc 1 1615 0 discriminator 1
	lwz 0,28(1)
	lwz 29,12(1)
.LVL5854:
	mtlr 0
	lwz 30,16(1)
.LVL5855:
	lwz 31,20(1)
.LVL5856:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI182:
	.cfi_def_cfa_offset 0
	blr
.LVL5857:
.L3044:
.LCFI183:
	.cfi_restore_state
	.loc 1 1602 0
	lis 4,.LC6@ha
	li 3,1281
	la 4,.LC6@l(4)
	li 5,1602
	bl _glSetErrorEx
	.loc 1 1603 0
	b .L3031
	.cfi_endproc
.LFE229:
	.size	glNormalPointer, .-glNormalPointer
	.align 2
	.globl glColorPointer
	.type	glColorPointer, @function
glColorPointer:
.LFB230:
	.loc 1 1621 0
	.cfi_startproc
.LVL5858:
	mflr 0
	stwu 1,-32(1)
.LCFI184:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 1622 0
	lis 9,cur_state@ha
	.loc 1 1621 0
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,36(1)
	.loc 1 1622 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 1621 0
	stw 30,24(1)
	mr 30,5
	.cfi_offset 30, -8
	.loc 1 1622 0
	andi. 9,0,1
	.loc 1 1621 0
	stw 31,28(1)
	.loc 1 1621 0
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 1622 0
	bne- 0,.L3056
	.loc 1 1624 0
	addi 0,3,-3
	cmplwi 7,0,1
	bgt- 7,.L3057
	.loc 1 1630 0
	addi 0,4,-5120
	cmplwi 7,0,10
	ble- 7,.L3058
.L3050:
	.loc 1 1640 0
	lis 4,.LC6@ha
.LVL5859:
	li 3,1280
.LVL5860:
	la 4,.LC6@l(4)
	li 5,1640
.LVL5861:
	stw 6,8(1)
	bl _glSetErrorEx
.LVL5862:
	lwz 6,8(1)
.L3051:
	.loc 1 1643 0
	cmpwi 7,30,0
	blt- 7,.L3059
	.loc 1 1649 0
	bne- 7,.L3053
.LVL5863:
	addi 0,29,-5122
.LBB14270:
.LBB14271:
.LBB14272:
	li 30,1
.LVL5864:
.LBE14272:
.LBE14271:
.LBE14270:
	cmplwi 7,0,8
	ble- 7,.L3060
.L3054:
.LBB14274:
.LBB14273:
	.loc 1 1491 0
	mullw 30,30,31
.LVL5865:
.L3053:
.LBE14273:
.LBE14274:
	.loc 1 1654 0
	lis 9,color@ha
	la 9,color@l(9)
	.loc 1 1656 0
	stb 30,8(9)
	.loc 1 1654 0
	stw 31,12(9)
	.loc 1 1658 0
	lwz 0,36(1)
	.loc 1 1655 0
	stw 29,16(9)
	.loc 1 1658 0
	mtlr 0
	lwz 29,20(1)
.LVL5866:
	lwz 30,24(1)
.LVL5867:
	lwz 31,28(1)
.LVL5868:
	.loc 1 1657 0
	stw 6,4(9)
	.loc 1 1658 0
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI185:
	.cfi_def_cfa_offset 0
	blr
.LVL5869:
.L3057:
.LCFI186:
	.cfi_restore_state
	.loc 1 1626 0
	lis 4,.LC6@ha
.LVL5870:
	li 3,1281
.LVL5871:
	la 4,.LC6@l(4)
	li 5,1626
.LVL5872:
	bl _glSetErrorEx
.LVL5873:
.L3046:
	.loc 1 1658 0
	lwz 0,36(1)
	lwz 29,20(1)
.LVL5874:
	mtlr 0
	lwz 30,24(1)
.LVL5875:
	lwz 31,28(1)
.LVL5876:
	addi 1,1,32
	.cfi_remember_state
.LCFI187:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL5877:
.L3058:
.LCFI188:
	.cfi_restore_state
	.loc 1 1630 0
	li 9,1
	slw 0,9,0
	andi. 9,0,1151
	bne- 0,.L3051
	b .L3050
.L3056:
	.loc 1 1622 0 discriminator 1
	lis 4,.LC6@ha
.LVL5878:
	li 3,1282
.LVL5879:
	la 4,.LC6@l(4)
	li 5,1622
.LVL5880:
	bl _glSetErrorEx
.LVL5881:
	.loc 1 1658 0 discriminator 1
	lwz 0,36(1)
	lwz 29,20(1)
.LVL5882:
	mtlr 0
	lwz 30,24(1)
.LVL5883:
	lwz 31,28(1)
.LVL5884:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI189:
	.cfi_def_cfa_offset 0
	blr
.LVL5885:
.L3060:
.LCFI190:
	.cfi_restore_state
	.loc 1 1649 0
	lis 9,.LANCHOR3@ha
	slwi 0,0,2
	la 9,.LANCHOR3@l(9)
	add 9,9,0
	lwz 30,8(9)
	b .L3054
.LVL5886:
.L3059:
	.loc 1 1645 0
	lis 4,.LC6@ha
	li 3,1281
	la 4,.LC6@l(4)
	li 5,1645
	bl _glSetErrorEx
	.loc 1 1646 0
	b .L3046
	.cfi_endproc
.LFE230:
	.size	glColorPointer, .-glColorPointer
	.align 2
	.globl incTexDesc
	.type	incTexDesc, @function
incTexDesc:
.LFB231:
	.loc 1 1661 0
	.cfi_startproc
.LVL5887:
	.loc 1 1661 0
	addi 0,3,-1
	li 3,13
.LVL5888:
	rlwinm 0,0,0,0xff
	cmplwi 7,0,6
	bgtlr- 7
	lis 9,.LANCHOR2@ha
	la 9,.LANCHOR2@l(9)
	lbzx 3,9,0
	.loc 1 1674 0
	blr
	.cfi_endproc
.LFE231:
	.size	incTexDesc, .-incTexDesc
	.align 2
	.globl set_native
	.type	set_native, @function
set_native:
.LFB232:
	.loc 1 1679 0
	.cfi_startproc
.LVL5889:
	.loc 1 1680 0
	lis 9,.LANCHOR1@ha
	.loc 1 1681 0
	.loc 1 1680 0
	stb 3,.LANCHOR1@l(9)
	.loc 1 1681 0
	blr
	.cfi_endproc
.LFE232:
	.size	set_native, .-set_native
	.align 2
	.globl glDrawArrays
	.type	glDrawArrays, @function
glDrawArrays:
.LFB235:
	.loc 1 1746 0
	.cfi_startproc
.LVL5890:
	stwu 1,-48(1)
.LCFI191:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 23,12(1)
.LBB14275:
	.loc 1 1753 0
	lis 23,.L3076@ha
	.cfi_offset 23, -36
	.cfi_register 65, 0
.LBE14275:
	.loc 1 1746 0
	stw 22,8(1)
.LBB14278:
	.loc 1 1753 0
	la 23,.L3076@l(23)
.LBE14278:
	.loc 1 1746 0
	stw 24,16(1)
.LBB14279:
	.loc 1 1753 0
	slwi 22,3,2
	.cfi_offset 24, -32
	.cfi_offset 22, -40
	lis 24,cur_state@ha
.LBE14279:
	.loc 1 1746 0
	stw 0,52(1)
	stw 26,24(1)
	la 24,cur_state@l(24)
	stw 28,32(1)
.LBB14280:
	.loc 1 1753 0
	add 22,23,22
.LBE14280:
	.loc 1 1746 0
	stw 30,40(1)
	stw 25,20(1)
.LBB14281:
.LBB14276:
	.loc 1 1802 0
	li 25,32000
	.cfi_offset 25, -28
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 65, 4
.LBE14276:
.LBE14281:
	.loc 1 1746 0
	stw 27,28(1)
	mr 27,3
	.cfi_offset 27, -20
	stw 29,36(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 31,44(1)
	.loc 1 1746 0
	mr 31,4
	.cfi_offset 31, -4
.LVL5891:
.L3078:
	.loc 1 1747 0
	lwz 0,0(24)
	andi. 9,0,1
	bne- 0,.L3082
	.loc 1 1749 0
	cmpwi 7,29,32000
	ble- 7,.L3068
.LVL5892:
.LBB14282:
	.loc 1 1753 0
	cmplwi 7,27,7
	ble- 7,.L3083
.L3069:
	.loc 1 1787 0
	lis 4,.LC6@ha
	li 3,1280
	la 4,.LC6@l(4)
	li 5,1787
	bl _glSetErrorEx
.LVL5893:
.L3065:
.LBE14282:
	.loc 1 1829 0
	lwz 0,52(1)
	lwz 22,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
.LVL5894:
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI192:
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
.LVL5895:
.L3068:
.LCFI193:
	.cfi_restore_state
	.loc 1 1810 0
	lis 9,vert@ha
	lbz 0,vert@l(9)
	cmpwi 7,0,0
	beq+ 7,.L3065
	.loc 1 1815 0
	mr 3,27
	bl glBegin
	.loc 1 1817 0
	lis 9,_GLtype@ha
	lwz 0,_GLtype@l(9)
	cmpwi 7,0,1280
	beq- 7,.L3065
	.loc 1 1822 0
	lis 9,.LANCHOR0@ha
	li 0,1
	la 9,.LANCHOR0@l(9)
	.loc 1 1826 0
	mr 3,29
	.loc 1 1822 0
	stw 0,64(9)
	.loc 1 1824 0
	stw 31,4(9)
	.loc 1 1826 0
	bl confVtx
	.loc 1 1829 0
	lwz 0,52(1)
	lwz 22,8(1)
	.loc 1 1828 0
	mr 3,29
	.loc 1 1829 0
	lwz 23,12(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
.LVL5896:
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI194:
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
	.loc 1 1828 0
	b glRender
.LVL5897:
.L3082:
.LCFI195:
	.cfi_restore_state
	.loc 1 1747 0 discriminator 1
	lis 4,.LC6@ha
	li 3,1282
	la 4,.LC6@l(4)
	li 5,1747
	bl _glSetErrorEx
	b .L3065
.LVL5898:
.L3083:
.LBB14283:
	.loc 1 1753 0
	lwz 0,0(22)
	add 0,0,23
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L3076:
	.long .L3070-.L3076
	.long .L3080-.L3076
	.long .L3069-.L3076
	.long .L3072-.L3076
	.long .L3073-.L3076
	.long .L3074-.L3076
	.long .L3069-.L3076
	.long .L3075-.L3076
	.section	".text"
.L3075:
.LVL5899:
	.loc 1 1777 0
	li 26,0
	.loc 1 1776 0
	li 28,4
.LVL5900:
.L3071:
	.loc 1 1792 0
	add 30,29,31
.LVL5901:
	.loc 1 1793 0
	cmpw 7,31,30
	bge- 7,.L3065
.L3079:
	.loc 1 1795 0
	subf 29,31,30
	cmpwi 7,29,31999
	ble- 7,.L3078
.LBB14277:
	.loc 1 1802 0
	divw 29,25,28
	.loc 1 1803 0
	mr 4,31
	mr 3,27
	.loc 1 1802 0
	mullw 29,29,28
.LVL5902:
	.loc 1 1803 0
	mr 5,29
	.loc 1 1804 0
	add 29,29,26
.LVL5903:
	addi 29,29,-1
	.loc 1 1803 0
	bl glDrawArrays
.LVL5904:
	.loc 1 1804 0
	add 31,31,29
.LVL5905:
.LBE14277:
	.loc 1 1793 0
	cmpw 7,30,31
	bgt+ 7,.L3079
	b .L3065
.LVL5906:
.L3074:
	.loc 1 1773 0
	li 26,-1
	.loc 1 1772 0
	li 28,1
	.loc 1 1774 0
	b .L3071
.LVL5907:
.L3073:
	.loc 1 1769 0
	li 26,1
	.loc 1 1768 0
	li 28,3
	.loc 1 1770 0
	b .L3071
.LVL5908:
.L3072:
	.loc 1 1765 0
	li 26,0
	.loc 1 1764 0
	li 28,1
	b .L3071
.L3080:
	.loc 1 1761 0
	li 26,1
	.loc 1 1760 0
	li 28,2
	b .L3071
.L3070:
	.loc 1 1757 0
	li 26,1
	.loc 1 1756 0
	li 28,1
	b .L3071
.LBE14283:
	.cfi_endproc
.LFE235:
	.size	glDrawArrays, .-glDrawArrays
	.align 2
	.globl glDrawRangeElementsEXT
	.type	glDrawRangeElementsEXT, @function
glDrawRangeElementsEXT:
.LFB239:
	.loc 1 1871 0
	.cfi_startproc
.LVL5909:
	mflr 0
	stwu 1,-40(1)
.LCFI196:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 1872 0
	lis 9,cur_state@ha
	.loc 1 1871 0
	stw 26,16(1)
	mr 26,8
	.cfi_offset 26, -24
	stw 0,44(1)
	.loc 1 1872 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 1871 0
	stw 27,20(1)
	mr 27,7
	.cfi_offset 27, -20
	.loc 1 1872 0
	andi. 9,0,1
	.loc 1 1871 0
	stw 28,24(1)
	stw 29,28(1)
	mr 28,6
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	stw 30,32(1)
	mr 29,5
	stw 31,36(1)
	mr 30,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	stw 25,12(1)
	.loc 1 1871 0
	mr 31,4
	.loc 1 1872 0
	bne- 0,.L3091
	.cfi_offset 25, -28
	.loc 1 1874 0
	cmpwi 7,6,32000
	bgt- 7,.L3092
	.loc 1 1888 0
	addi 0,7,-5121
	cmplwi 7,0,4
	ble- 7,.L3093
.L3088:
	.loc 1 1893 0
	lis 4,.LC6@ha
.LVL5910:
	li 3,1280
.LVL5911:
	la 4,.LC6@l(4)
	li 5,1893
.LVL5912:
	bl _glSetErrorEx
.LVL5913:
	.loc 1 1896 0
	lis 9,vert@ha
	lbz 0,vert@l(9)
	cmpwi 7,0,0
	bne- 7,.L3094
.L3084:
	.loc 1 1919 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
.LVL5914:
	lwz 27,20(1)
.LVL5915:
	lwz 28,24(1)
.LVL5916:
	lwz 29,28(1)
.LVL5917:
	lwz 30,32(1)
.LVL5918:
	lwz 31,36(1)
.LVL5919:
	addi 1,1,40
	.cfi_remember_state
.LCFI197:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL5920:
.L3093:
.LCFI198:
	.cfi_restore_state
	.loc 1 1888 0
	li 9,1
	slw 0,9,0
	andi. 9,0,21
	beq- 0,.L3088
	.loc 1 1896 0
	lis 9,vert@ha
	lbz 0,vert@l(9)
	cmpwi 7,0,0
	beq+ 7,.L3084
.LVL5921:
.L3094:
.LBB14286:
.LBB14287:
	.loc 1 1901 0
	mr 3,30
	bl glBegin
	.loc 1 1903 0
	lis 9,_GLtype@ha
	lwz 0,_GLtype@l(9)
	cmpwi 7,0,1280
	beq- 7,.L3084
	.loc 1 1908 0
	lis 25,.LANCHOR0@ha
	li 0,2
	la 30,.LANCHOR0@l(25)
.LVL5922:
	.loc 1 1912 0
	subf 3,31,29
	.loc 1 1908 0
	stw 0,64(30)
	.loc 1 1910 0
	stw 31,4(30)
	.loc 1 1912 0
	bl confVtx
.LBE14287:
.LBE14286:
	.loc 1 1919 0
	lwz 0,44(1)
.LBB14290:
.LBB14288:
	.loc 1 1914 0
	stw 27,68(30)
	.loc 1 1918 0
	mr 3,28
	.loc 1 1916 0
	stw 26,.LANCHOR0@l(25)
.LBE14288:
.LBE14290:
	.loc 1 1919 0
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
.LVL5923:
	lwz 27,20(1)
.LVL5924:
	lwz 28,24(1)
.LVL5925:
	lwz 29,28(1)
.LVL5926:
	lwz 30,32(1)
	lwz 31,36(1)
.LVL5927:
	addi 1,1,40
	.cfi_remember_state
.LCFI199:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
.LBB14291:
.LBB14289:
	.loc 1 1918 0
	b glRender
.LVL5928:
.L3091:
.LCFI200:
	.cfi_restore_state
.LBE14289:
.LBE14291:
	.loc 1 1872 0 discriminator 1
	lis 4,.LC6@ha
.LVL5929:
	li 3,1282
.LVL5930:
	la 4,.LC6@l(4)
	li 5,1872
.LVL5931:
	bl _glSetErrorEx
.LVL5932:
	.loc 1 1919 0 discriminator 1
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
.LVL5933:
	lwz 27,20(1)
.LVL5934:
	lwz 28,24(1)
.LVL5935:
	lwz 29,28(1)
.LVL5936:
	lwz 30,32(1)
.LVL5937:
	lwz 31,36(1)
.LVL5938:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI201:
	.cfi_def_cfa_offset 0
	blr
.LVL5939:
.L3092:
.LCFI202:
	.cfi_restore_state
	.loc 1 1877 0
	lis 4,.LC6@ha
.LVL5940:
	li 3,1280
.LVL5941:
	la 4,.LC6@l(4)
	li 5,1877
.LVL5942:
	bl _glSetErrorEx
.LVL5943:
	.loc 1 1919 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
.LVL5944:
	lwz 27,20(1)
.LVL5945:
	lwz 28,24(1)
.LVL5946:
	lwz 29,28(1)
.LVL5947:
	lwz 30,32(1)
.LVL5948:
	lwz 31,36(1)
.LVL5949:
	addi 1,1,40
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI203:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE239:
	.size	glDrawRangeElementsEXT, .-glDrawRangeElementsEXT
	.align 2
	.globl glDrawRangeElements
	.type	glDrawRangeElements, @function
glDrawRangeElements:
.LFB238:
	.loc 1 1861 0
	.cfi_startproc
.LVL5950:
	.loc 1 1863 0
	.loc 1 1862 0
	b glDrawRangeElementsEXT
.LVL5951:
.LVL5952:
.LVL5953:
.LVL5954:
.LVL5955:
.LVL5956:
	.cfi_endproc
.LFE238:
	.size	glDrawRangeElements, .-glDrawRangeElements
	.align 2
	.globl glDrawElements
	.type	glDrawElements, @function
glDrawElements:
.LFB237:
	.loc 1 1850 0
	.cfi_startproc
.LVL5957:
.LBB14299:
.LBB14300:
	.loc 1 1835 0
	mr. 0,4
.LBE14300:
.LBE14299:
	.loc 1 1850 0
	mr 7,5
.LVL5958:
	mr 8,6
.LVL5959:
.LBB14314:
.LBB14312:
	.loc 1 1835 0
	li 5,0
.LVL5960:
	ble- 0,.L3097
.LVL5961:
	cmpwi 6,7,5123
.LBB14301:
.LBB14302:
	.loc 1 335 0
	cmpwi 1,7,5125
	cmpwi 0,7,5121
	mtctr 0
.LBE14302:
.LBE14301:
	.loc 1 1835 0
	li 9,0
.LVL5962:
.L3103:
.LBB14309:
.LBB14306:
	.loc 1 335 0
	beq- 6,.L3100
	beq- 1,.L3101
	beq- 0,.L3108
	li 11,0
.L3098:
.LVL5963:
	cmpw 7,5,11
.LBE14306:
.LBE14309:
	.loc 1 1835 0
	addi 9,9,1
.LVL5964:
.LBB14310:
.LBB14307:
	.loc 1 335 0
	bge- 7,.L3102
	mr 5,11
.L3102:
.LVL5965:
.LBE14307:
.LBE14310:
	.loc 1 1835 0
	bdnz .L3103
.LVL5966:
.L3097:
.LBE14312:
.LBE14314:
	.loc 1 1851 0
	li 4,0
	mr 6,0
.LVL5967:
	.loc 1 1852 0
	.loc 1 1851 0
	b glDrawRangeElementsEXT
.LVL5968:
.L3108:
.LBB14315:
.LBB14313:
.LBB14311:
.LBB14308:
.LBB14303:
	.loc 1 340 0
	lbzx 11,8,9
	b .L3098
.LVL5969:
.L3100:
.LBE14303:
.LBB14304:
	.loc 1 1846 0
	slwi 11,9,1
	.loc 1 345 0
	lhzx 11,8,11
	b .L3098
.LVL5970:
.L3101:
.LBE14304:
.LBB14305:
	.loc 1 1846 0
	slwi 11,9,2
.LBE14305:
	.loc 1 335 0
	lwzx 11,8,11
	b .L3098
.LBE14308:
.LBE14311:
.LBE14313:
.LBE14315:
	.cfi_endproc
.LFE237:
	.size	glDrawElements, .-glDrawElements
	.align 2
	.globl glDrawBuffer
	.type	glDrawBuffer, @function
glDrawBuffer:
.LFB240:
	.loc 1 1922 0
	.cfi_startproc
.LVL5971:
	.loc 1 1924 0
	blr
	.cfi_endproc
.LFE240:
	.size	glDrawBuffer, .-glDrawBuffer
	.align 2
	.globl glFinish
	.type	glFinish, @function
glFinish:
.LFB241:
	.loc 1 1926 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI204:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 1928 0
	.cfi_offset 65, 4
	bl GX_SetDrawDone
	.loc 1 1929 0
	bl GX_WaitDrawDone
	.loc 1 1930 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI205:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE241:
	.size	glFinish, .-glFinish
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
	.set	.LANCHOR2,. + 0
	.type	CSWTCH.322, @object
	.size	CSWTCH.322, 7
CSWTCH.322:
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.zero	1
	.type	CSWTCH.306, @object
	.size	CSWTCH.306, 44
CSWTCH.306:
	.long	1123942400
	.long	1132396544
	.long	1191181824
	.long	1199570688
	.long	1325400064
	.long	1333788672
	.long	1065353216
	.long	1132396544
	.long	1132396544
	.long	1132396544
	.long	1065353216
	.align 2
	.set	.LANCHOR3,. + 0
	.type	CSWTCH.319, @object
	.size	CSWTCH.319, 2
CSWTCH.319:
	.byte	1
	.byte	0
	.zero	2
	.type	CSWTCH.320, @object
	.size	CSWTCH.320, 2
CSWTCH.320:
	.byte	0
	.byte	1
	.zero	2
	.type	CSWTCH.302, @object
	.size	CSWTCH.302, 36
CSWTCH.302:
	.long	2
	.long	2
	.long	4
	.long	4
	.long	4
	.long	1
	.long	1
	.long	1
	.long	8
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1132396544
.LC1:
	.4byte	1065353216
.LC3:
	.4byte	1501560832
.LC5:
	.4byte	1501560836
.LC7:
	.4byte	1123942400
.LC8:
	.4byte	1233125376
.LC9:
	.4byte	1127481344
.LC10:
	.4byte	-1082130432
.LC11:
	.4byte	1006632960
.LC12:
	.4byte	1132462080
.LC13:
	.4byte	1073741824
.LC14:
	.4byte	1056964608
.LC17:
	.4byte	0
	.section	".data"
	.set	.LANCHOR1,. + 0
	.type	native, @object
	.size	native, 1
native:
	.byte	1
	.type	vert_mode, @object
	.size	vert_mode, 1
vert_mode:
	.byte	1
	.type	norm_mode, @object
	.size	norm_mode, 1
norm_mode:
	.byte	1
	.type	color_mode, @object
	.size	color_mode, 1
color_mode:
	.byte	1
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC6:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_render.c"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	elemIndex, @object
	.size	elemIndex, 4
elemIndex:
	.zero	4
	.type	arrayOffset, @object
	.size	arrayOffset, 4
arrayOffset:
	.zero	4
	.type	tex_mode, @object
	.size	tex_mode, 8
tex_mode:
	.zero	8
	.type	tmpVert, @object
	.size	tmpVert, 12
tmpVert:
	.zero	12
	.type	tmpNorm, @object
	.size	tmpNorm, 12
tmpNorm:
	.zero	12
	.type	tmpColor, @object
	.size	tmpColor, 16
tmpColor:
	.zero	16
	.type	tmpTexCoord, @object
	.size	tmpTexCoord, 8
tmpTexCoord:
	.zero	8
	.type	render_mode, @object
	.size	render_mode, 4
render_mode:
	.zero	4
	.type	elemType, @object
	.size	elemType, 4
elemType:
	.zero	4
	.type	prevGXCompareFunc, @object
	.size	prevGXCompareFunc, 1
prevGXCompareFunc:
	.zero	1
	.section	".text"
.Letext0:
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 5 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/glint.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x16ac4
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF425
	.byte	0x1
	.4byte	.LASF426
	.4byte	.LASF427
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_ranges0+0x5270
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0xd4
	.4byte	0x34
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
	.byte	0x2a
	.4byte	0x3b
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x36
	.4byte	0x42
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x50
	.4byte	0x34
	.uleb128 0x6
	.string	"u8"
	.byte	0x5
	.byte	0x11
	.4byte	0x98
	.uleb128 0x6
	.string	"u16"
	.byte	0x5
	.byte	0x12
	.4byte	0xa3
	.uleb128 0x6
	.string	"u32"
	.byte	0x5
	.byte	0x13
	.4byte	0xae
	.uleb128 0x6
	.string	"f32"
	.byte	0x5
	.byte	0x2b
	.4byte	0x8a
	.uleb128 0x7
	.4byte	0x8a
	.uleb128 0x7
	.4byte	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfb
	.uleb128 0x9
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0xc
	.byte	0x6
	.byte	0x5e
	.4byte	0x12d
	.uleb128 0xb
	.string	"x"
	.byte	0x6
	.byte	0x5f
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"y"
	.byte	0x6
	.byte	0x5f
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"z"
	.byte	0x6
	.byte	0x5f
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x6
	.byte	0x60
	.4byte	0xfc
	.uleb128 0x6
	.string	"Mtx"
	.byte	0x6
	.byte	0x73
	.4byte	0x143
	.uleb128 0xc
	.4byte	0xd9
	.4byte	0x159
	.uleb128 0xd
	.4byte	0x34
	.byte	0x2
	.uleb128 0xd
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0x74
	.4byte	0x164
	.uleb128 0x8
	.byte	0x4
	.4byte	0x16a
	.uleb128 0xc
	.4byte	0xd9
	.4byte	0x17a
	.uleb128 0xd
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x89
	.4byte	0x185
	.uleb128 0xc
	.4byte	0xd9
	.4byte	0x19b
	.uleb128 0xd
	.4byte	0x34
	.byte	0x3
	.uleb128 0xd
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF428
	.byte	0x4
	.byte	0x2
	.2byte	0x490
	.4byte	0x1fb
	.uleb128 0xf
	.string	"U8"
	.byte	0x2
	.2byte	0x492
	.4byte	0x1fb
	.uleb128 0xf
	.string	"S8"
	.byte	0x2
	.2byte	0x493
	.4byte	0x200
	.uleb128 0xf
	.string	"U16"
	.byte	0x2
	.2byte	0x494
	.4byte	0x205
	.uleb128 0xf
	.string	"S16"
	.byte	0x2
	.2byte	0x495
	.4byte	0x20a
	.uleb128 0xf
	.string	"U32"
	.byte	0x2
	.2byte	0x496
	.4byte	0xe9
	.uleb128 0xf
	.string	"S32"
	.byte	0x2
	.2byte	0x497
	.4byte	0x20f
	.uleb128 0xf
	.string	"F32"
	.byte	0x2
	.2byte	0x498
	.4byte	0xe4
	.byte	0
	.uleb128 0x7
	.4byte	0x3b
	.uleb128 0x7
	.4byte	0x4b
	.uleb128 0x7
	.4byte	0x42
	.uleb128 0x7
	.4byte	0x52
	.uleb128 0x7
	.4byte	0x59
	.uleb128 0x10
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x499
	.4byte	0x19b
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2
	.2byte	0x49e
	.4byte	0x262
	.uleb128 0x12
	.string	"r"
	.byte	0x2
	.2byte	0x49f
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"g"
	.byte	0x2
	.2byte	0x4a0
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"b"
	.byte	0x2
	.2byte	0x4a1
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"a"
	.byte	0x2
	.2byte	0x4a2
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x4a3
	.4byte	0x220
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x40
	.byte	0x2
	.2byte	0x4f1
	.4byte	0x28b
	.uleb128 0x12
	.string	"val"
	.byte	0x2
	.2byte	0x4f2
	.4byte	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	0xce
	.4byte	0x29b
	.uleb128 0xd
	.4byte	0x34
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x2
	.2byte	0x4f3
	.4byte	0x26e
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0x93
	.4byte	0x34
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x94
	.4byte	0x3b
	.uleb128 0x13
	.4byte	.LASF429
	.byte	0x7
	.byte	0x96
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x7
	.byte	0x97
	.4byte	0x4b
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7
	.byte	0x98
	.4byte	0x52
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x7
	.byte	0x99
	.4byte	0x59
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x7
	.byte	0x9a
	.4byte	0x3b
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x7
	.byte	0x9b
	.4byte	0x42
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x7
	.byte	0x9c
	.4byte	0x34
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x7
	.byte	0x9d
	.4byte	0x59
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x7
	.byte	0x9e
	.4byte	0x8a
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x7
	.byte	0x9f
	.4byte	0x8a
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x7
	.byte	0xa0
	.4byte	0x83
	.uleb128 0x8
	.byte	0x4
	.4byte	0x33e
	.uleb128 0x14
	.4byte	0x2c3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x317
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2e0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x301
	.uleb128 0x8
	.byte	0x4
	.4byte	0x32d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2eb
	.uleb128 0x15
	.byte	0x10
	.byte	0x8
	.byte	0x15
	.4byte	0x382
	.uleb128 0xb
	.string	"v"
	.byte	0x8
	.byte	0x17
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"w"
	.byte	0x8
	.byte	0x18
	.4byte	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x8
	.byte	0x19
	.4byte	0x361
	.uleb128 0x15
	.byte	0x8
	.byte	0x8
	.byte	0x1b
	.4byte	0x3ae
	.uleb128 0xb
	.string	"s"
	.byte	0x8
	.byte	0x1d
	.4byte	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"t"
	.byte	0x8
	.byte	0x1e
	.4byte	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x8
	.byte	0x1f
	.4byte	0x38d
	.uleb128 0x15
	.byte	0x10
	.byte	0x8
	.byte	0x21
	.4byte	0x3f2
	.uleb128 0xb
	.string	"r"
	.byte	0x8
	.byte	0x23
	.4byte	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"g"
	.byte	0x8
	.byte	0x24
	.4byte	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"b"
	.byte	0x8
	.byte	0x25
	.4byte	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"a"
	.byte	0x8
	.byte	0x26
	.4byte	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x8
	.byte	0x27
	.4byte	0x3b9
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x14
	.byte	0x8
	.byte	0x42
	.4byte	0x44e
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x8
	.byte	0x44
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"p"
	.byte	0x8
	.byte	0x45
	.4byte	0xf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x8
	.byte	0x46
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x8
	.byte	0x47
	.4byte	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x8
	.byte	0x48
	.4byte	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x8
	.byte	0x49
	.4byte	0x3fd
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x4c
	.byte	0x8
	.byte	0x70
	.4byte	0x49e
	.uleb128 0xb
	.string	"mat"
	.byte	0x8
	.byte	0x72
	.4byte	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x8
	.byte	0x73
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x8
	.byte	0x74
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x8
	.byte	0x75
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x8
	.byte	0x76
	.4byte	0x459
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x4ee
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x9
	.byte	0xe
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x9
	.byte	0xf
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x9
	.byte	0x10
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x9
	.byte	0x12
	.4byte	0x4a9
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0xa4
	.byte	0x8
	.byte	0x83
	.4byte	0x5b4
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x8
	.byte	0x85
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"obj"
	.byte	0x8
	.byte	0x87
	.4byte	0x29b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"pos"
	.byte	0x8
	.byte	0x89
	.4byte	0x382
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x8
	.byte	0x8b
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x8
	.byte	0x8d
	.4byte	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x8
	.byte	0x8e
	.4byte	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x8
	.byte	0x8f
	.4byte	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x8
	.byte	0x91
	.4byte	0x8a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x8
	.byte	0x92
	.4byte	0x8a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x8
	.byte	0x93
	.4byte	0x8a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x8
	.byte	0x94
	.4byte	0x8a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x8
	.byte	0x95
	.4byte	0x8a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x8
	.byte	0x96
	.4byte	0x4f9
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x44
	.byte	0x8
	.byte	0xa0
	.4byte	0x612
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x8
	.byte	0xa2
	.4byte	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x8
	.byte	0xa3
	.4byte	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x8
	.byte	0xa4
	.4byte	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x8
	.byte	0xa5
	.4byte	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x8
	.byte	0xa6
	.4byte	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x8
	.byte	0xa7
	.4byte	0x5bf
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x4
	.byte	0x8
	.byte	0xbf
	.4byte	0x63c
	.uleb128 0x18
	.4byte	.LASF73
	.sleb128 0
	.uleb128 0x18
	.4byte	.LASF74
	.sleb128 1
	.uleb128 0x18
	.4byte	.LASF75
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x8
	.byte	0xc4
	.4byte	0x61d
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x10
	.byte	0x8
	.byte	0xe8
	.4byte	0x688
	.uleb128 0xb
	.string	"x"
	.byte	0x8
	.byte	0xea
	.4byte	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"y"
	.byte	0x8
	.byte	0xeb
	.4byte	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x8
	.byte	0xec
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x8
	.byte	0xed
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x8
	.byte	0xee
	.4byte	0x647
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x14
	.byte	0x8
	.byte	0xfb
	.4byte	0x6f7
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x8
	.byte	0xfd
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x8
	.byte	0xfe
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x8
	.byte	0xff
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x100
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x8
	.2byte	0x101
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x102
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x103
	.4byte	0x693
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x8
	.byte	0x8
	.2byte	0x117
	.4byte	0x72f
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x119
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x11a
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x11b
	.4byte	0x703
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0x6c
	.byte	0x8
	.2byte	0x127
	.4byte	0x893
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x129
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x12b
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x12c
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x12d
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x12e
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x12f
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x130
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x131
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x132
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x133
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x134
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x8
	.2byte	0x136
	.4byte	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x138
	.4byte	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x139
	.4byte	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x13b
	.4byte	0x893
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x13c
	.4byte	0x893
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x13d
	.4byte	0x893
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x13e
	.4byte	0x893
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"tex"
	.byte	0x8
	.2byte	0x140
	.4byte	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x142
	.4byte	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x144
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x145
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0
	.uleb128 0xc
	.4byte	0x2ad
	.4byte	0x8a3
	.uleb128 0xd
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x146
	.4byte	0x73b
	.uleb128 0x17
	.4byte	.LASF114
	.byte	0x4
	.byte	0x1
	.byte	0x30
	.4byte	0x8ce
	.uleb128 0x18
	.4byte	.LASF115
	.sleb128 0
	.uleb128 0x18
	.4byte	.LASF116
	.sleb128 1
	.uleb128 0x18
	.4byte	.LASF117
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x1
	.byte	0x35
	.4byte	0x8af
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x1
	.byte	0x79
	.4byte	0xf5
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x174
	.4byte	0x8f0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8f6
	.uleb128 0x14
	.4byte	0x3ae
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.byte	0x3
	.4byte	0x926
	.uleb128 0x1b
	.string	"a"
	.byte	0x1
	.byte	0x1f
	.4byte	0x926
	.uleb128 0x1b
	.string	"b"
	.byte	0x1
	.byte	0x1f
	.4byte	0x926
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x1f
	.4byte	0x931
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x92c
	.uleb128 0x14
	.4byte	0x3f2
	.uleb128 0x8
	.byte	0x4
	.4byte	0x262
	.uleb128 0x1a
	.4byte	.LASF122
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.byte	0x3
	.4byte	0x9e6
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0x7b
	.4byte	0x9e6
	.uleb128 0x1c
	.4byte	.LASF46
	.byte	0x1
	.byte	0x7b
	.4byte	0x2ad
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.byte	0x7b
	.4byte	0x343
	.uleb128 0x1d
	.4byte	0x972
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.byte	0x81
	.4byte	0x9ec
	.byte	0
	.uleb128 0x1d
	.4byte	0x983
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.byte	0x88
	.4byte	0x9f2
	.byte	0
	.uleb128 0x1d
	.4byte	0x994
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.byte	0x8f
	.4byte	0x9fe
	.byte	0
	.uleb128 0x1d
	.4byte	0x9a5
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.byte	0x96
	.4byte	0xa0a
	.byte	0
	.uleb128 0x1d
	.4byte	0x9b6
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.byte	0x9d
	.4byte	0xa16
	.byte	0
	.uleb128 0x1d
	.4byte	0x9c7
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.byte	0xa4
	.4byte	0xa1c
	.byte	0
	.uleb128 0x1d
	.4byte	0x9d8
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.byte	0xab
	.4byte	0xa22
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.byte	0xb2
	.4byte	0xa28
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8d9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x35b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9f8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2ca
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa04
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2f6
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa10
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2d5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x34f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x349
	.uleb128 0x8
	.byte	0x4
	.4byte	0x343
	.uleb128 0x8
	.byte	0x4
	.4byte	0x355
	.uleb128 0x20
	.4byte	.LASF123
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.4byte	0x49
	.byte	0x3
	.4byte	0xa5d
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0x5e
	.4byte	0xf5
	.uleb128 0x1b
	.string	"n"
	.byte	0x1
	.byte	0x5e
	.4byte	0x59
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.byte	0x60
	.4byte	0x2a7
	.byte	0
	.uleb128 0x20
	.4byte	.LASF124
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.4byte	0xf5
	.byte	0x3
	.4byte	0xa83
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0xba
	.4byte	0xa83
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0xba
	.4byte	0x59
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x44e
	.uleb128 0x20
	.4byte	.LASF126
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.4byte	0xaa6
	.byte	0x3
	.4byte	0xaa6
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0xc9
	.4byte	0x59
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xaac
	.uleb128 0x14
	.4byte	0x12d
	.uleb128 0x20
	.4byte	.LASF127
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.4byte	0xaa6
	.byte	0x3
	.4byte	0xace
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0xdd
	.4byte	0x59
	.byte	0
	.uleb128 0x20
	.4byte	.LASF128
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.4byte	0x317
	.byte	0x3
	.4byte	0xaeb
	.uleb128 0x1c
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf1
	.4byte	0x2ad
	.byte	0
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x101
	.byte	0x1
	.4byte	0x926
	.byte	0x3
	.4byte	0xb20
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x101
	.4byte	0x59
	.uleb128 0x1f
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x317
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.2byte	0x10d
	.4byte	0xf5
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x128
	.byte	0x1
	.4byte	0x8f0
	.byte	0x3
	.4byte	0xb55
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x128
	.4byte	0x59
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x128
	.4byte	0xb9
	.uleb128 0x1f
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.2byte	0x132
	.4byte	0xf5
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x165
	.byte	0x1
	.4byte	0x2e0
	.byte	0x3
	.4byte	0xb74
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x165
	.4byte	0x59
	.byte	0
	.uleb128 0x25
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x8a9
	.byte	0x1
	.byte	0x3
	.4byte	0xb8f
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x8a9
	.4byte	0xc3
	.byte	0
	.uleb128 0x25
	.4byte	.LASF133
	.byte	0x2
	.2byte	0x8d9
	.byte	0x1
	.byte	0x3
	.4byte	0xbc6
	.uleb128 0x24
	.string	"r"
	.byte	0x2
	.2byte	0x8d9
	.4byte	0xb9
	.uleb128 0x24
	.string	"g"
	.byte	0x2
	.2byte	0x8d9
	.4byte	0xb9
	.uleb128 0x24
	.string	"b"
	.byte	0x2
	.2byte	0x8d9
	.4byte	0xb9
	.uleb128 0x24
	.string	"a"
	.byte	0x2
	.2byte	0x8d9
	.4byte	0xb9
	.byte	0
	.uleb128 0x25
	.4byte	.LASF134
	.byte	0x2
	.2byte	0x95d
	.byte	0x1
	.byte	0x3
	.4byte	0xbe1
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x95d
	.4byte	0xc3
	.byte	0
	.uleb128 0x25
	.4byte	.LASF135
	.byte	0x2
	.2byte	0x8d3
	.byte	0x1
	.byte	0x3
	.4byte	0xbfc
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x8d3
	.4byte	0xc3
	.byte	0
	.uleb128 0x25
	.4byte	.LASF136
	.byte	0x2
	.2byte	0x90b
	.byte	0x1
	.byte	0x3
	.4byte	0xc17
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x90b
	.4byte	0xc3
	.byte	0
	.uleb128 0x20
	.4byte	.LASF137
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	0x29
	.byte	0x3
	.4byte	0xc34
	.uleb128 0x1c
	.4byte	.LASF46
	.byte	0x1
	.byte	0x69
	.4byte	0x2ad
	.byte	0
	.uleb128 0x25
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x5b4
	.byte	0x1
	.byte	0x3
	.4byte	0xc5b
	.uleb128 0x24
	.string	"cap"
	.byte	0x1
	.2byte	0x5b4
	.4byte	0x2ad
	.uleb128 0x24
	.string	"val"
	.byte	0x1
	.2byte	0x5b4
	.4byte	0xee
	.byte	0
	.uleb128 0x25
	.4byte	.LASF139
	.byte	0x2
	.2byte	0x849
	.byte	0x1
	.byte	0x3
	.4byte	0xc88
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.2byte	0x849
	.4byte	0xd9
	.uleb128 0x24
	.string	"y"
	.byte	0x2
	.2byte	0x849
	.4byte	0xd9
	.uleb128 0x24
	.string	"z"
	.byte	0x2
	.2byte	0x849
	.4byte	0xd9
	.byte	0
	.uleb128 0x25
	.4byte	.LASF140
	.byte	0x2
	.2byte	0x8af
	.byte	0x1
	.byte	0x3
	.4byte	0xcb8
	.uleb128 0x24
	.string	"nx"
	.byte	0x2
	.2byte	0x8af
	.4byte	0xd9
	.uleb128 0x24
	.string	"ny"
	.byte	0x2
	.2byte	0x8af
	.4byte	0xd9
	.uleb128 0x24
	.string	"nz"
	.byte	0x2
	.2byte	0x8af
	.4byte	0xd9
	.byte	0
	.uleb128 0x25
	.4byte	.LASF141
	.byte	0x2
	.2byte	0x911
	.byte	0x1
	.byte	0x3
	.4byte	0xcdb
	.uleb128 0x24
	.string	"s"
	.byte	0x2
	.2byte	0x911
	.4byte	0xd9
	.uleb128 0x24
	.string	"t"
	.byte	0x2
	.2byte	0x911
	.4byte	0xd9
	.byte	0
	.uleb128 0x25
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x696
	.byte	0x1
	.byte	0x3
	.4byte	0xd3e
	.uleb128 0x22
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x696
	.4byte	0xce
	.uleb128 0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x696
	.4byte	0x2a7
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.2byte	0x696
	.4byte	0xa83
	.uleb128 0x22
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x696
	.4byte	0x29
	.uleb128 0x22
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x696
	.4byte	0x29
	.uleb128 0x22
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x696
	.4byte	0x59
	.uleb128 0x1f
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.2byte	0x69d
	.4byte	0xf5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF147
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.byte	0x3
	.4byte	0xd61
	.uleb128 0x1b
	.string	"in"
	.byte	0x1
	.byte	0x27
	.4byte	0x926
	.uleb128 0x1b
	.string	"out"
	.byte	0x1
	.byte	0x27
	.4byte	0x931
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF148
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.byte	0x3
	.4byte	0xd83
	.uleb128 0x1b
	.string	"a"
	.byte	0x1
	.byte	0x17
	.4byte	0x926
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x17
	.4byte	0x931
	.byte	0
	.uleb128 0x25
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x295
	.byte	0x1
	.byte	0x1
	.4byte	0xdaa
	.uleb128 0x22
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x295
	.4byte	0xdaa
	.uleb128 0x22
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x295
	.4byte	0xd9
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x29b
	.uleb128 0x25
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.byte	0x3
	.4byte	0xdd7
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.byte	0x3
	.4byte	0xdfe
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.byte	0x3
	.4byte	0xe25
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.byte	0x3
	.4byte	0xe4c
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.byte	0x3
	.4byte	0xe73
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.byte	0x3
	.4byte	0xe9a
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.byte	0x3
	.4byte	0xec1
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.byte	0x3
	.4byte	0xee8
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.byte	0x3
	.4byte	0xf0f
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.byte	0x3
	.4byte	0xf36
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.byte	0x3
	.4byte	0xf5d
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.byte	0x3
	.4byte	0xf84
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.byte	0x3
	.4byte	0xfab
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.byte	0x3
	.4byte	0xfd2
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.byte	0x3
	.4byte	0xff9
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.byte	0x3
	.4byte	0x1020
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.byte	0x3
	.4byte	0x1047
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.byte	0x3
	.4byte	0x106e
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.byte	0x3
	.4byte	0x1095
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.byte	0x3
	.4byte	0x10bc
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.byte	0x3
	.4byte	0x10e3
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.byte	0x3
	.4byte	0x110a
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.byte	0x3
	.4byte	0x1131
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.byte	0x3
	.4byte	0x1158
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF430
	.byte	0x2
	.2byte	0x845
	.byte	0x3
	.uleb128 0x21
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x5d1
	.byte	0x1
	.4byte	0x30c
	.byte	0x3
	.4byte	0x118c
	.uleb128 0x22
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x5d1
	.4byte	0x2e0
	.uleb128 0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x5d1
	.4byte	0x2ad
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x67c
	.byte	0x1
	.4byte	0xb9
	.byte	0x1
	.4byte	0x11aa
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x67c
	.4byte	0xb9
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF431
	.byte	0x1
	.2byte	0x749
	.byte	0x1
	.byte	0x1
	.4byte	0x1202
	.uleb128 0x22
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x749
	.4byte	0x2ad
	.uleb128 0x22
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x74a
	.4byte	0x301
	.uleb128 0x24
	.string	"end"
	.byte	0x1
	.2byte	0x74b
	.4byte	0x301
	.uleb128 0x22
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x74c
	.4byte	0x30c
	.uleb128 0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x74d
	.4byte	0x2ad
	.uleb128 0x22
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x74e
	.4byte	0x338
	.byte	0
	.uleb128 0x21
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x727
	.byte	0x1
	.4byte	0x301
	.byte	0x3
	.4byte	0x1259
	.uleb128 0x22
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x727
	.4byte	0x30c
	.uleb128 0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x727
	.4byte	0x2ad
	.uleb128 0x22
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x727
	.4byte	0x338
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.2byte	0x729
	.4byte	0x59
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.2byte	0x729
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x72a
	.4byte	0x59
	.byte	0
	.uleb128 0x25
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.byte	0x3
	.4byte	0x128a
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3f2
	.uleb128 0x2a
	.4byte	0x1259
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST0
	.4byte	0x1311
	.uleb128 0x2b
	.4byte	0x1267
	.4byte	.LLST1
	.uleb128 0x2c
	.4byte	0x1273
	.4byte	.LLST1
	.uleb128 0x2d
	.4byte	0x127f
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4327
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x23a
	.4byte	0x12df
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xb8f
	.4byte	.LBB4333
	.4byte	.LBE4333
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LLST3
	.4byte	0x13c5
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST4
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST4
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4335
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1377
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4341
	.4byte	.LBE4341
	.byte	0x1
	.2byte	0x23a
	.4byte	0x13ac
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4343
	.4byte	.LBE4343
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LLST6
	.4byte	0x1495
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST7
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST7
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4345
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0x23a
	.4byte	0x142b
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4351
	.4byte	.LBE4351
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1460
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4353
	.4byte	.LBE4353
	.byte	0x1
	.2byte	0x23a
	.4byte	0x147c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4355
	.4byte	.LBE4355
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LLST9
	.4byte	0x1581
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST10
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST10
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4357
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x23a
	.4byte	0x14fb
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4363
	.4byte	.LBE4363
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1530
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4365
	.4byte	.LBE4365
	.byte	0x1
	.2byte	0x23a
	.4byte	0x154c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4367
	.4byte	.LBE4367
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1568
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4369
	.4byte	.LBE4369
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LLST12
	.4byte	0x1689
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST13
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST13
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4371
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x23a
	.4byte	0x15e7
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4377
	.4byte	.LBE4377
	.byte	0x1
	.2byte	0x23a
	.4byte	0x161c
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4379
	.4byte	.LBE4379
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1638
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4381
	.4byte	.LBE4381
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1654
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4383
	.4byte	.LBE4383
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1670
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4385
	.4byte	.LBE4385
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LLST15
	.4byte	0x17ad
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST16
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST16
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4387
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x23a
	.4byte	0x16ef
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4393
	.4byte	.LBE4393
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1724
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4395
	.4byte	.LBE4395
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1740
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4397
	.4byte	.LBE4397
	.byte	0x1
	.2byte	0x23a
	.4byte	0x175c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4399
	.4byte	.LBE4399
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1778
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4401
	.4byte	.LBE4401
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1794
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4403
	.4byte	.LBE4403
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LLST18
	.4byte	0x18ed
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST19
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST19
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4405
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1813
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4411
	.4byte	.LBE4411
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1848
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4413
	.4byte	.LBE4413
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1864
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4415
	.4byte	.LBE4415
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1880
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4417
	.4byte	.LBE4417
	.byte	0x1
	.2byte	0x23a
	.4byte	0x189c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4419
	.4byte	.LBE4419
	.byte	0x1
	.2byte	0x23a
	.4byte	0x18b8
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4421
	.4byte	.LBE4421
	.byte	0x1
	.2byte	0x23a
	.4byte	0x18d4
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4423
	.4byte	.LBE4423
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LLST21
	.4byte	0x1a49
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST22
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST22
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4425
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1953
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4431
	.4byte	.LBE4431
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1988
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4433
	.4byte	.LBE4433
	.byte	0x1
	.2byte	0x23a
	.4byte	0x19a4
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4435
	.4byte	.LBE4435
	.byte	0x1
	.2byte	0x23a
	.4byte	0x19c0
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4437
	.4byte	.LBE4437
	.byte	0x1
	.2byte	0x23a
	.4byte	0x19dc
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4439
	.4byte	.LBE4439
	.byte	0x1
	.2byte	0x23a
	.4byte	0x19f8
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4441
	.4byte	.LBE4441
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1a14
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4443
	.4byte	.LBE4443
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1a30
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4445
	.4byte	.LBE4445
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.byte	0x3
	.4byte	0x1a7a
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0
	.uleb128 0x2a
	.4byte	0x1a49
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LLST24
	.4byte	0x1b17
	.uleb128 0x2b
	.4byte	0x1a57
	.4byte	.LLST25
	.uleb128 0x2c
	.4byte	0x1a63
	.4byte	.LLST25
	.uleb128 0x2d
	.4byte	0x1a6f
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4453
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1ac9
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4459
	.4byte	.LBE4459
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1ae5
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xb8f
	.4byte	.LBB4461
	.4byte	.LBE4461
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	.LLST27
	.4byte	0x1be7
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST28
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST28
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4463
	.4byte	.Ldebug_ranges0+0x120
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1b7d
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4469
	.4byte	.LBE4469
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1b99
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4471
	.4byte	.LBE4471
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1bce
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4473
	.4byte	.LBE4473
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB92
	.4byte	.LFE92
	.4byte	.LLST30
	.4byte	0x1cd3
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST31
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST31
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4475
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1c4d
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4481
	.4byte	.LBE4481
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1c69
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4483
	.4byte	.LBE4483
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1c9e
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4485
	.4byte	.LBE4485
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1cba
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4487
	.4byte	.LBE4487
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LLST33
	.4byte	0x1ddb
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST34
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST34
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4489
	.4byte	.Ldebug_ranges0+0x160
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1d39
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4495
	.4byte	.LBE4495
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1d55
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4497
	.4byte	.LBE4497
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1d8a
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4499
	.4byte	.LBE4499
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1da6
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4501
	.4byte	.LBE4501
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1dc2
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4503
	.4byte	.LBE4503
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB94
	.4byte	.LFE94
	.4byte	.LLST36
	.4byte	0x1eff
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST37
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST37
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4505
	.4byte	.Ldebug_ranges0+0x180
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1e41
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4511
	.4byte	.LBE4511
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1e5d
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4513
	.4byte	.LBE4513
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1e92
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4515
	.4byte	.LBE4515
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1eae
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4517
	.4byte	.LBE4517
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1eca
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4519
	.4byte	.LBE4519
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1ee6
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4521
	.4byte	.LBE4521
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.4byte	.LLST39
	.4byte	0x203f
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST40
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST40
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4523
	.4byte	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1f65
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4529
	.4byte	.LBE4529
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1f81
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4531
	.4byte	.LBE4531
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1fb6
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4533
	.4byte	.LBE4533
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1fd2
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4535
	.4byte	.LBE4535
	.byte	0x1
	.2byte	0x23a
	.4byte	0x1fee
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4537
	.4byte	.LBE4537
	.byte	0x1
	.2byte	0x23a
	.4byte	0x200a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4539
	.4byte	.LBE4539
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2026
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4541
	.4byte	.LBE4541
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB96
	.4byte	.LFE96
	.4byte	.LLST42
	.4byte	0x219b
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST43
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST43
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4543
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.2byte	0x23a
	.4byte	0x20a5
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4549
	.4byte	.LBE4549
	.byte	0x1
	.2byte	0x23a
	.4byte	0x20c1
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4551
	.4byte	.LBE4551
	.byte	0x1
	.2byte	0x23a
	.4byte	0x20f6
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4553
	.4byte	.LBE4553
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2112
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4555
	.4byte	.LBE4555
	.byte	0x1
	.2byte	0x23a
	.4byte	0x212e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4557
	.4byte	.LBE4557
	.byte	0x1
	.2byte	0x23a
	.4byte	0x214a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4559
	.4byte	.LBE4559
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2166
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4561
	.4byte	.LBE4561
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2182
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4563
	.4byte	.LBE4563
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	.LLST45
	.4byte	0x2313
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST46
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST46
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4565
	.4byte	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2201
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4571
	.4byte	.LBE4571
	.byte	0x1
	.2byte	0x23a
	.4byte	0x221d
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4573
	.4byte	.LBE4573
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2252
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4575
	.4byte	.LBE4575
	.byte	0x1
	.2byte	0x23a
	.4byte	0x226e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4577
	.4byte	.LBE4577
	.byte	0x1
	.2byte	0x23a
	.4byte	0x228a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4579
	.4byte	.LBE4579
	.byte	0x1
	.2byte	0x23a
	.4byte	0x22a6
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4581
	.4byte	.LBE4581
	.byte	0x1
	.2byte	0x23a
	.4byte	0x22c2
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4583
	.4byte	.LBE4583
	.byte	0x1
	.2byte	0x23a
	.4byte	0x22de
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4585
	.4byte	.LBE4585
	.byte	0x1
	.2byte	0x23a
	.4byte	0x22fa
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4587
	.4byte	.LBE4587
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB103
	.4byte	.LFE103
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x240c
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST48
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST48
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4589
	.4byte	.Ldebug_ranges0+0x200
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2367
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB4593
	.4byte	.LBE4593
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2383
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4595
	.4byte	.LBE4595
	.byte	0x1
	.2byte	0x23a
	.4byte	0x239f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4597
	.4byte	.LBE4597
	.byte	0x1
	.2byte	0x23a
	.4byte	0x23bb
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4599
	.4byte	.LBE4599
	.byte	0x1
	.2byte	0x23a
	.4byte	0x23d7
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4601
	.4byte	.LBE4601
	.byte	0x1
	.2byte	0x23a
	.4byte	0x23f3
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4603
	.4byte	.LBE4603
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB104
	.4byte	.LFE104
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2521
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST50
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST50
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4605
	.4byte	.Ldebug_ranges0+0x218
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2460
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB4609
	.4byte	.LBE4609
	.byte	0x1
	.2byte	0x23a
	.4byte	0x247c
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4611
	.4byte	.LBE4611
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2498
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4613
	.4byte	.LBE4613
	.byte	0x1
	.2byte	0x23a
	.4byte	0x24b4
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4615
	.4byte	.LBE4615
	.byte	0x1
	.2byte	0x23a
	.4byte	0x24d0
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4617
	.4byte	.LBE4617
	.byte	0x1
	.2byte	0x23a
	.4byte	0x24ec
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4619
	.4byte	.LBE4619
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2508
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4621
	.4byte	.LBE4621
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB105
	.4byte	.LFE105
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2652
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST52
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST52
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4623
	.4byte	.Ldebug_ranges0+0x230
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2575
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB4627
	.4byte	.LBE4627
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2591
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4629
	.4byte	.LBE4629
	.byte	0x1
	.2byte	0x23a
	.4byte	0x25ad
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4631
	.4byte	.LBE4631
	.byte	0x1
	.2byte	0x23a
	.4byte	0x25c9
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4633
	.4byte	.LBE4633
	.byte	0x1
	.2byte	0x23a
	.4byte	0x25e5
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4635
	.4byte	.LBE4635
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2601
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4637
	.4byte	.LBE4637
	.byte	0x1
	.2byte	0x23a
	.4byte	0x261d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4639
	.4byte	.LBE4639
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2639
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4641
	.4byte	.LBE4641
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x274b
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST54
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST54
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4643
	.4byte	.Ldebug_ranges0+0x248
	.byte	0x1
	.2byte	0x23a
	.4byte	0x26a6
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4647
	.4byte	.LBE4647
	.byte	0x1
	.2byte	0x23a
	.4byte	0x26c2
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB4649
	.4byte	.LBE4649
	.byte	0x1
	.2byte	0x23a
	.4byte	0x26de
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4651
	.4byte	.LBE4651
	.byte	0x1
	.2byte	0x23a
	.4byte	0x26fa
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4653
	.4byte	.LBE4653
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2716
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4655
	.4byte	.LBE4655
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2732
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4657
	.4byte	.LBE4657
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2860
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST56
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST56
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4659
	.4byte	.Ldebug_ranges0+0x260
	.byte	0x1
	.2byte	0x23a
	.4byte	0x279f
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4663
	.4byte	.LBE4663
	.byte	0x1
	.2byte	0x23a
	.4byte	0x27bb
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB4665
	.4byte	.LBE4665
	.byte	0x1
	.2byte	0x23a
	.4byte	0x27d7
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4667
	.4byte	.LBE4667
	.byte	0x1
	.2byte	0x23a
	.4byte	0x27f3
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4669
	.4byte	.LBE4669
	.byte	0x1
	.2byte	0x23a
	.4byte	0x280f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4671
	.4byte	.LBE4671
	.byte	0x1
	.2byte	0x23a
	.4byte	0x282b
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4673
	.4byte	.LBE4673
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2847
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4675
	.4byte	.LBE4675
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2991
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST58
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST58
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4677
	.4byte	.Ldebug_ranges0+0x278
	.byte	0x1
	.2byte	0x23a
	.4byte	0x28b4
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4681
	.4byte	.LBE4681
	.byte	0x1
	.2byte	0x23a
	.4byte	0x28d0
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB4683
	.4byte	.LBE4683
	.byte	0x1
	.2byte	0x23a
	.4byte	0x28ec
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4685
	.4byte	.LBE4685
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2908
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4687
	.4byte	.LBE4687
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2924
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4689
	.4byte	.LBE4689
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2940
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4691
	.4byte	.LBE4691
	.byte	0x1
	.2byte	0x23a
	.4byte	0x295c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4693
	.4byte	.LBE4693
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2978
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4695
	.4byte	.LBE4695
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x23a
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2ade
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23a
	.4byte	0x59
	.4byte	.LLST60
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2e0
	.4byte	.LLST60
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4697
	.4byte	.Ldebug_ranges0+0x290
	.byte	0x1
	.2byte	0x23a
	.4byte	0x29e5
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4701
	.4byte	.LBE4701
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2a01
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB4703
	.4byte	.LBE4703
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2a1d
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4705
	.4byte	.LBE4705
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2a39
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4707
	.4byte	.LBE4707
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2a55
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4709
	.4byte	.LBE4709
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2a71
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4711
	.4byte	.LBE4711
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2a8d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4713
	.4byte	.LBE4713
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2aa9
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4715
	.4byte	.LBE4715
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2ac5
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4717
	.4byte	.LBE4717
	.byte	0x1
	.2byte	0x23a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST62
	.4byte	0x2b83
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4719
	.4byte	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2b51
	.uleb128 0x2b
	.4byte	0xb82
	.4byte	.LLST63
	.byte	0
	.uleb128 0x30
	.4byte	0xb8f
	.4byte	.LBB4723
	.4byte	.LBE4723
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST64
	.4byte	0x2c42
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4725
	.4byte	.Ldebug_ranges0+0x2c0
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2bf4
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4729
	.4byte	.LBE4729
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2c29
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4731
	.4byte	.LBE4731
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST65
	.4byte	0x2d1d
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4733
	.4byte	.Ldebug_ranges0+0x2d8
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2cb3
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4737
	.4byte	.LBE4737
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2ce8
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4739
	.4byte	.LBE4739
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2d04
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4741
	.4byte	.LBE4741
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST66
	.4byte	0x2e14
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4743
	.4byte	.Ldebug_ranges0+0x2f0
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2d8e
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4747
	.4byte	.LBE4747
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2dc3
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4749
	.4byte	.LBE4749
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2ddf
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4751
	.4byte	.LBE4751
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2dfb
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4753
	.4byte	.LBE4753
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST67
	.4byte	0x2f27
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4755
	.4byte	.Ldebug_ranges0+0x308
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e85
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4759
	.4byte	.LBE4759
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2eba
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4761
	.4byte	.LBE4761
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2ed6
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4763
	.4byte	.LBE4763
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2ef2
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4765
	.4byte	.LBE4765
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2f0e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4767
	.4byte	.LBE4767
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST68
	.4byte	0x3056
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4769
	.4byte	.Ldebug_ranges0+0x320
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2f98
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4773
	.4byte	.LBE4773
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2fcd
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4775
	.4byte	.LBE4775
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2fe9
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4777
	.4byte	.LBE4777
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3005
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4779
	.4byte	.LBE4779
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3021
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4781
	.4byte	.LBE4781
	.byte	0x1
	.2byte	0x23f
	.4byte	0x303d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4783
	.4byte	.LBE4783
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST69
	.4byte	0x31a1
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4785
	.4byte	.Ldebug_ranges0+0x338
	.byte	0x1
	.2byte	0x23f
	.4byte	0x30c7
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4789
	.4byte	.LBE4789
	.byte	0x1
	.2byte	0x23f
	.4byte	0x30fc
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4791
	.4byte	.LBE4791
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3118
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4793
	.4byte	.LBE4793
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3134
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4795
	.4byte	.LBE4795
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3150
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4797
	.4byte	.LBE4797
	.byte	0x1
	.2byte	0x23f
	.4byte	0x316c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4799
	.4byte	.LBE4799
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3188
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4801
	.4byte	.LBE4801
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST70
	.4byte	0x3308
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4803
	.4byte	.Ldebug_ranges0+0x350
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3212
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4807
	.4byte	.LBE4807
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3247
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4809
	.4byte	.LBE4809
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3263
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4811
	.4byte	.LBE4811
	.byte	0x1
	.2byte	0x23f
	.4byte	0x327f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4813
	.4byte	.LBE4813
	.byte	0x1
	.2byte	0x23f
	.4byte	0x329b
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4815
	.4byte	.LBE4815
	.byte	0x1
	.2byte	0x23f
	.4byte	0x32b7
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4817
	.4byte	.LBE4817
	.byte	0x1
	.2byte	0x23f
	.4byte	0x32d3
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4819
	.4byte	.LBE4819
	.byte	0x1
	.2byte	0x23f
	.4byte	0x32ef
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4821
	.4byte	.LBE4821
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST71
	.4byte	0x33cb
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4823
	.4byte	.Ldebug_ranges0+0x368
	.byte	0x1
	.2byte	0x23f
	.4byte	0x337b
	.uleb128 0x2b
	.4byte	0xb82
	.4byte	.LLST72
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4827
	.4byte	.LBE4827
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3399
	.uleb128 0x2b
	.4byte	0xbef
	.4byte	.LLST73
	.byte	0
	.uleb128 0x30
	.4byte	0xb8f
	.4byte	.LBB4829
	.4byte	.LBE4829
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB123
	.4byte	.LFE123
	.4byte	.LLST74
	.4byte	0x34a6
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4831
	.4byte	.Ldebug_ranges0+0x380
	.byte	0x1
	.2byte	0x23f
	.4byte	0x343c
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4835
	.4byte	.LBE4835
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3458
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4837
	.4byte	.LBE4837
	.byte	0x1
	.2byte	0x23f
	.4byte	0x348d
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4839
	.4byte	.LBE4839
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB124
	.4byte	.LFE124
	.4byte	.LLST75
	.4byte	0x359d
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4841
	.4byte	.Ldebug_ranges0+0x398
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3517
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4845
	.4byte	.LBE4845
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3533
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4847
	.4byte	.LBE4847
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3568
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4849
	.4byte	.LBE4849
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3584
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4851
	.4byte	.LBE4851
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB125
	.4byte	.LFE125
	.4byte	.LLST76
	.4byte	0x36b0
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4853
	.4byte	.Ldebug_ranges0+0x3b0
	.byte	0x1
	.2byte	0x23f
	.4byte	0x360e
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4857
	.4byte	.LBE4857
	.byte	0x1
	.2byte	0x23f
	.4byte	0x362a
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4859
	.4byte	.LBE4859
	.byte	0x1
	.2byte	0x23f
	.4byte	0x365f
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4861
	.4byte	.LBE4861
	.byte	0x1
	.2byte	0x23f
	.4byte	0x367b
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4863
	.4byte	.LBE4863
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3697
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4865
	.4byte	.LBE4865
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB126
	.4byte	.LFE126
	.4byte	.LLST77
	.4byte	0x37df
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4867
	.4byte	.Ldebug_ranges0+0x3c8
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3721
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4871
	.4byte	.LBE4871
	.byte	0x1
	.2byte	0x23f
	.4byte	0x373d
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4873
	.4byte	.LBE4873
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3772
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4875
	.4byte	.LBE4875
	.byte	0x1
	.2byte	0x23f
	.4byte	0x378e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4877
	.4byte	.LBE4877
	.byte	0x1
	.2byte	0x23f
	.4byte	0x37aa
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4879
	.4byte	.LBE4879
	.byte	0x1
	.2byte	0x23f
	.4byte	0x37c6
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4881
	.4byte	.LBE4881
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB127
	.4byte	.LFE127
	.4byte	.LLST78
	.4byte	0x392a
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4883
	.4byte	.Ldebug_ranges0+0x3e0
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3850
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4887
	.4byte	.LBE4887
	.byte	0x1
	.2byte	0x23f
	.4byte	0x386c
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4889
	.4byte	.LBE4889
	.byte	0x1
	.2byte	0x23f
	.4byte	0x38a1
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4891
	.4byte	.LBE4891
	.byte	0x1
	.2byte	0x23f
	.4byte	0x38bd
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4893
	.4byte	.LBE4893
	.byte	0x1
	.2byte	0x23f
	.4byte	0x38d9
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4895
	.4byte	.LBE4895
	.byte	0x1
	.2byte	0x23f
	.4byte	0x38f5
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4897
	.4byte	.LBE4897
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3911
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4899
	.4byte	.LBE4899
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB128
	.4byte	.LFE128
	.4byte	.LLST79
	.4byte	0x3a91
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4901
	.4byte	.Ldebug_ranges0+0x3f8
	.byte	0x1
	.2byte	0x23f
	.4byte	0x399b
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4905
	.4byte	.LBE4905
	.byte	0x1
	.2byte	0x23f
	.4byte	0x39b7
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4907
	.4byte	.LBE4907
	.byte	0x1
	.2byte	0x23f
	.4byte	0x39ec
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4909
	.4byte	.LBE4909
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3a08
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4911
	.4byte	.LBE4911
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3a24
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4913
	.4byte	.LBE4913
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3a40
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4915
	.4byte	.LBE4915
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3a5c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4917
	.4byte	.LBE4917
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3a78
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4919
	.4byte	.LBE4919
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB129
	.4byte	.LFE129
	.4byte	.LLST80
	.4byte	0x3c14
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4921
	.4byte	.Ldebug_ranges0+0x410
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3b02
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB4925
	.4byte	.LBE4925
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3b1e
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB4927
	.4byte	.LBE4927
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3b53
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4929
	.4byte	.LBE4929
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3b6f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4931
	.4byte	.LBE4931
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3b8b
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4933
	.4byte	.LBE4933
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3ba7
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4935
	.4byte	.LBE4935
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3bc3
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4937
	.4byte	.LBE4937
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3bdf
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4939
	.4byte	.LBE4939
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3bfb
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4941
	.4byte	.LBE4941
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB133
	.4byte	.LFE133
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x3d2b
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4943
	.4byte	.Ldebug_ranges0+0x428
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3c82
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB4947
	.4byte	.LBE4947
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3cad
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4949
	.4byte	.LBE4949
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3cd8
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4951
	.4byte	.LBE4951
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3d03
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4953
	.4byte	.LBE4953
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB134
	.4byte	.LFE134
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x3e6d
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4955
	.4byte	.Ldebug_ranges0+0x440
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3d99
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB4959
	.4byte	.LBE4959
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3dc4
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4961
	.4byte	.LBE4961
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3def
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4963
	.4byte	.LBE4963
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3e1a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4965
	.4byte	.LBE4965
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3e45
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4967
	.4byte	.LBE4967
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB135
	.4byte	.LFE135
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x3fda
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4969
	.4byte	.Ldebug_ranges0+0x458
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3edb
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB4973
	.4byte	.LBE4973
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3f06
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4975
	.4byte	.LBE4975
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3f31
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4977
	.4byte	.LBE4977
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3f5c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4979
	.4byte	.LBE4979
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3f87
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4981
	.4byte	.LBE4981
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3fb2
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB4983
	.4byte	.LBE4983
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB136
	.4byte	.LFE136
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x4172
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB4985
	.4byte	.Ldebug_ranges0+0x470
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4048
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB4989
	.4byte	.LBE4989
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4073
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4991
	.4byte	.LBE4991
	.byte	0x1
	.2byte	0x23f
	.4byte	0x409e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4993
	.4byte	.LBE4993
	.byte	0x1
	.2byte	0x23f
	.4byte	0x40c9
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4995
	.4byte	.LBE4995
	.byte	0x1
	.2byte	0x23f
	.4byte	0x40f4
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4997
	.4byte	.LBE4997
	.byte	0x1
	.2byte	0x23f
	.4byte	0x411f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB4999
	.4byte	.LBE4999
	.byte	0x1
	.2byte	0x23f
	.4byte	0x414a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5001
	.4byte	.LBE5001
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB137
	.4byte	.LFE137
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x4335
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5003
	.4byte	.Ldebug_ranges0+0x488
	.byte	0x1
	.2byte	0x23f
	.4byte	0x41e0
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5007
	.4byte	.LBE5007
	.byte	0x1
	.2byte	0x23f
	.4byte	0x420b
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5009
	.4byte	.LBE5009
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4236
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5011
	.4byte	.LBE5011
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4261
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5013
	.4byte	.LBE5013
	.byte	0x1
	.2byte	0x23f
	.4byte	0x428c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5015
	.4byte	.LBE5015
	.byte	0x1
	.2byte	0x23f
	.4byte	0x42b7
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5017
	.4byte	.LBE5017
	.byte	0x1
	.2byte	0x23f
	.4byte	0x42e2
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5019
	.4byte	.LBE5019
	.byte	0x1
	.2byte	0x23f
	.4byte	0x430d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5021
	.4byte	.LBE5021
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB140
	.4byte	.LFE140
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x444c
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5023
	.4byte	.Ldebug_ranges0+0x4a0
	.byte	0x1
	.2byte	0x23f
	.4byte	0x43a3
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5027
	.4byte	.LBE5027
	.byte	0x1
	.2byte	0x23f
	.4byte	0x43ce
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5029
	.4byte	.LBE5029
	.byte	0x1
	.2byte	0x23f
	.4byte	0x43f9
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5031
	.4byte	.LBE5031
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4424
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5033
	.4byte	.LBE5033
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB141
	.4byte	.LFE141
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x458e
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5035
	.4byte	.Ldebug_ranges0+0x4b8
	.byte	0x1
	.2byte	0x23f
	.4byte	0x44ba
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5039
	.4byte	.LBE5039
	.byte	0x1
	.2byte	0x23f
	.4byte	0x44e5
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5041
	.4byte	.LBE5041
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4510
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5043
	.4byte	.LBE5043
	.byte	0x1
	.2byte	0x23f
	.4byte	0x453b
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5045
	.4byte	.LBE5045
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4566
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5047
	.4byte	.LBE5047
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB142
	.4byte	.LFE142
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x46fb
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5049
	.4byte	.Ldebug_ranges0+0x4d0
	.byte	0x1
	.2byte	0x23f
	.4byte	0x45fc
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5053
	.4byte	.LBE5053
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4627
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5055
	.4byte	.LBE5055
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4652
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5057
	.4byte	.LBE5057
	.byte	0x1
	.2byte	0x23f
	.4byte	0x467d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5059
	.4byte	.LBE5059
	.byte	0x1
	.2byte	0x23f
	.4byte	0x46a8
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5061
	.4byte	.LBE5061
	.byte	0x1
	.2byte	0x23f
	.4byte	0x46d3
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5063
	.4byte	.LBE5063
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB143
	.4byte	.LFE143
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x4893
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5065
	.4byte	.Ldebug_ranges0+0x4e8
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4769
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5069
	.4byte	.LBE5069
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4794
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5071
	.4byte	.LBE5071
	.byte	0x1
	.2byte	0x23f
	.4byte	0x47bf
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5073
	.4byte	.LBE5073
	.byte	0x1
	.2byte	0x23f
	.4byte	0x47ea
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5075
	.4byte	.LBE5075
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4815
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5077
	.4byte	.LBE5077
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4840
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5079
	.4byte	.LBE5079
	.byte	0x1
	.2byte	0x23f
	.4byte	0x486b
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5081
	.4byte	.LBE5081
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB144
	.4byte	.LFE144
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x4a56
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5083
	.4byte	.Ldebug_ranges0+0x500
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4901
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5087
	.4byte	.LBE5087
	.byte	0x1
	.2byte	0x23f
	.4byte	0x492c
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5089
	.4byte	.LBE5089
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4957
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5091
	.4byte	.LBE5091
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4982
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5093
	.4byte	.LBE5093
	.byte	0x1
	.2byte	0x23f
	.4byte	0x49ad
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5095
	.4byte	.LBE5095
	.byte	0x1
	.2byte	0x23f
	.4byte	0x49d8
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5097
	.4byte	.LBE5097
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4a03
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5099
	.4byte	.LBE5099
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4a2e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5101
	.4byte	.LBE5101
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	.LFB145
	.4byte	.LFE145
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x4c44
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x23f
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23f
	.4byte	0x2e0
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5103
	.4byte	.Ldebug_ranges0+0x518
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4ac4
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5107
	.4byte	.LBE5107
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4aef
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5109
	.4byte	.LBE5109
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4b1a
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5111
	.4byte	.LBE5111
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4b45
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5113
	.4byte	.LBE5113
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4b70
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5115
	.4byte	.LBE5115
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4b9b
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5117
	.4byte	.LBE5117
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4bc6
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5119
	.4byte	.LBE5119
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4bf1
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5121
	.4byte	.LBE5121
	.byte	0x1
	.2byte	0x23f
	.4byte	0x4c1c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5123
	.4byte	.LBE5123
	.byte	0x1
	.2byte	0x23f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x10
	.byte	0x3
	.4byte	elemIndex
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB146
	.4byte	.LFE146
	.4byte	.LLST81
	.4byte	0x4cde
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST82
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.4byte	.LLST83
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5125
	.4byte	.LBE5125
	.byte	0x1
	.2byte	0x240
	.4byte	0x4cac
	.uleb128 0x2b
	.4byte	0xb82
	.4byte	.LLST84
	.byte	0
	.uleb128 0x30
	.4byte	0xb8f
	.4byte	.LBB5127
	.4byte	.LBE5127
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB147
	.4byte	.LFE147
	.4byte	.LLST85
	.4byte	0x4d96
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST86
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5129
	.4byte	.LBE5129
	.byte	0x1
	.2byte	0x240
	.4byte	0x4d48
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5131
	.4byte	.LBE5131
	.byte	0x1
	.2byte	0x240
	.4byte	0x4d7d
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5133
	.4byte	.LBE5133
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB148
	.4byte	.LFE148
	.4byte	.LLST87
	.4byte	0x4e6a
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST88
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5135
	.4byte	.LBE5135
	.byte	0x1
	.2byte	0x240
	.4byte	0x4e00
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5137
	.4byte	.LBE5137
	.byte	0x1
	.2byte	0x240
	.4byte	0x4e35
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5139
	.4byte	.LBE5139
	.byte	0x1
	.2byte	0x240
	.4byte	0x4e51
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5141
	.4byte	.LBE5141
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB149
	.4byte	.LFE149
	.4byte	.LLST89
	.4byte	0x4f5a
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST90
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5143
	.4byte	.LBE5143
	.byte	0x1
	.2byte	0x240
	.4byte	0x4ed4
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5145
	.4byte	.LBE5145
	.byte	0x1
	.2byte	0x240
	.4byte	0x4f09
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5147
	.4byte	.LBE5147
	.byte	0x1
	.2byte	0x240
	.4byte	0x4f25
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5149
	.4byte	.LBE5149
	.byte	0x1
	.2byte	0x240
	.4byte	0x4f41
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5151
	.4byte	.LBE5151
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB150
	.4byte	.LFE150
	.4byte	.LLST91
	.4byte	0x5066
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST92
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5153
	.4byte	.LBE5153
	.byte	0x1
	.2byte	0x240
	.4byte	0x4fc4
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5155
	.4byte	.LBE5155
	.byte	0x1
	.2byte	0x240
	.4byte	0x4ff9
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5157
	.4byte	.LBE5157
	.byte	0x1
	.2byte	0x240
	.4byte	0x5015
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5159
	.4byte	.LBE5159
	.byte	0x1
	.2byte	0x240
	.4byte	0x5031
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5161
	.4byte	.LBE5161
	.byte	0x1
	.2byte	0x240
	.4byte	0x504d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5163
	.4byte	.LBE5163
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB151
	.4byte	.LFE151
	.4byte	.LLST93
	.4byte	0x518e
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST94
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5165
	.4byte	.LBE5165
	.byte	0x1
	.2byte	0x240
	.4byte	0x50d0
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5167
	.4byte	.LBE5167
	.byte	0x1
	.2byte	0x240
	.4byte	0x5105
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5169
	.4byte	.LBE5169
	.byte	0x1
	.2byte	0x240
	.4byte	0x5121
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5171
	.4byte	.LBE5171
	.byte	0x1
	.2byte	0x240
	.4byte	0x513d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5173
	.4byte	.LBE5173
	.byte	0x1
	.2byte	0x240
	.4byte	0x5159
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5175
	.4byte	.LBE5175
	.byte	0x1
	.2byte	0x240
	.4byte	0x5175
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5177
	.4byte	.LBE5177
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB152
	.4byte	.LFE152
	.4byte	.LLST95
	.4byte	0x52d2
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST96
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5179
	.4byte	.LBE5179
	.byte	0x1
	.2byte	0x240
	.4byte	0x51f8
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5181
	.4byte	.LBE5181
	.byte	0x1
	.2byte	0x240
	.4byte	0x522d
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5183
	.4byte	.LBE5183
	.byte	0x1
	.2byte	0x240
	.4byte	0x5249
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5185
	.4byte	.LBE5185
	.byte	0x1
	.2byte	0x240
	.4byte	0x5265
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5187
	.4byte	.LBE5187
	.byte	0x1
	.2byte	0x240
	.4byte	0x5281
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5189
	.4byte	.LBE5189
	.byte	0x1
	.2byte	0x240
	.4byte	0x529d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5191
	.4byte	.LBE5191
	.byte	0x1
	.2byte	0x240
	.4byte	0x52b9
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5193
	.4byte	.LBE5193
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB153
	.4byte	.LFE153
	.4byte	.LLST97
	.4byte	0x5432
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST98
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5195
	.4byte	.LBE5195
	.byte	0x1
	.2byte	0x240
	.4byte	0x533c
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5197
	.4byte	.LBE5197
	.byte	0x1
	.2byte	0x240
	.4byte	0x5371
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5199
	.4byte	.LBE5199
	.byte	0x1
	.2byte	0x240
	.4byte	0x538d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5201
	.4byte	.LBE5201
	.byte	0x1
	.2byte	0x240
	.4byte	0x53a9
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5203
	.4byte	.LBE5203
	.byte	0x1
	.2byte	0x240
	.4byte	0x53c5
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5205
	.4byte	.LBE5205
	.byte	0x1
	.2byte	0x240
	.4byte	0x53e1
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5207
	.4byte	.LBE5207
	.byte	0x1
	.2byte	0x240
	.4byte	0x53fd
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5209
	.4byte	.LBE5209
	.byte	0x1
	.2byte	0x240
	.4byte	0x5419
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5211
	.4byte	.LBE5211
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB154
	.4byte	.LFE154
	.4byte	.LLST99
	.4byte	0x54ea
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST100
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.4byte	.LLST101
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5213
	.4byte	.LBE5213
	.byte	0x1
	.2byte	0x240
	.4byte	0x549a
	.uleb128 0x2b
	.4byte	0xb82
	.4byte	.LLST102
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5215
	.4byte	.LBE5215
	.byte	0x1
	.2byte	0x240
	.4byte	0x54b8
	.uleb128 0x2b
	.4byte	0xbef
	.4byte	.LLST103
	.byte	0
	.uleb128 0x30
	.4byte	0xb8f
	.4byte	.LBB5217
	.4byte	.LBE5217
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB155
	.4byte	.LFE155
	.4byte	.LLST104
	.4byte	0x55be
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST105
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5219
	.4byte	.LBE5219
	.byte	0x1
	.2byte	0x240
	.4byte	0x5554
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5221
	.4byte	.LBE5221
	.byte	0x1
	.2byte	0x240
	.4byte	0x5570
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5223
	.4byte	.LBE5223
	.byte	0x1
	.2byte	0x240
	.4byte	0x55a5
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5225
	.4byte	.LBE5225
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB156
	.4byte	.LFE156
	.4byte	.LLST106
	.4byte	0x56ae
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST107
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5227
	.4byte	.LBE5227
	.byte	0x1
	.2byte	0x240
	.4byte	0x5628
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5229
	.4byte	.LBE5229
	.byte	0x1
	.2byte	0x240
	.4byte	0x5644
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5231
	.4byte	.LBE5231
	.byte	0x1
	.2byte	0x240
	.4byte	0x5679
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5233
	.4byte	.LBE5233
	.byte	0x1
	.2byte	0x240
	.4byte	0x5695
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5235
	.4byte	.LBE5235
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB157
	.4byte	.LFE157
	.4byte	.LLST108
	.4byte	0x57ba
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST109
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5237
	.4byte	.LBE5237
	.byte	0x1
	.2byte	0x240
	.4byte	0x5718
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5239
	.4byte	.LBE5239
	.byte	0x1
	.2byte	0x240
	.4byte	0x5734
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5241
	.4byte	.LBE5241
	.byte	0x1
	.2byte	0x240
	.4byte	0x5769
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5243
	.4byte	.LBE5243
	.byte	0x1
	.2byte	0x240
	.4byte	0x5785
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5245
	.4byte	.LBE5245
	.byte	0x1
	.2byte	0x240
	.4byte	0x57a1
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5247
	.4byte	.LBE5247
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB158
	.4byte	.LFE158
	.4byte	.LLST110
	.4byte	0x58e2
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST111
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5249
	.4byte	.LBE5249
	.byte	0x1
	.2byte	0x240
	.4byte	0x5824
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5251
	.4byte	.LBE5251
	.byte	0x1
	.2byte	0x240
	.4byte	0x5840
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5253
	.4byte	.LBE5253
	.byte	0x1
	.2byte	0x240
	.4byte	0x5875
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5255
	.4byte	.LBE5255
	.byte	0x1
	.2byte	0x240
	.4byte	0x5891
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5257
	.4byte	.LBE5257
	.byte	0x1
	.2byte	0x240
	.4byte	0x58ad
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5259
	.4byte	.LBE5259
	.byte	0x1
	.2byte	0x240
	.4byte	0x58c9
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5261
	.4byte	.LBE5261
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB159
	.4byte	.LFE159
	.4byte	.LLST112
	.4byte	0x5a26
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST113
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5263
	.4byte	.LBE5263
	.byte	0x1
	.2byte	0x240
	.4byte	0x594c
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5265
	.4byte	.LBE5265
	.byte	0x1
	.2byte	0x240
	.4byte	0x5968
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5267
	.4byte	.LBE5267
	.byte	0x1
	.2byte	0x240
	.4byte	0x599d
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5269
	.4byte	.LBE5269
	.byte	0x1
	.2byte	0x240
	.4byte	0x59b9
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5271
	.4byte	.LBE5271
	.byte	0x1
	.2byte	0x240
	.4byte	0x59d5
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5273
	.4byte	.LBE5273
	.byte	0x1
	.2byte	0x240
	.4byte	0x59f1
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5275
	.4byte	.LBE5275
	.byte	0x1
	.2byte	0x240
	.4byte	0x5a0d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5277
	.4byte	.LBE5277
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB160
	.4byte	.LFE160
	.4byte	.LLST114
	.4byte	0x5b86
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST115
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5279
	.4byte	.LBE5279
	.byte	0x1
	.2byte	0x240
	.4byte	0x5a90
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5281
	.4byte	.LBE5281
	.byte	0x1
	.2byte	0x240
	.4byte	0x5aac
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5283
	.4byte	.LBE5283
	.byte	0x1
	.2byte	0x240
	.4byte	0x5ae1
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5285
	.4byte	.LBE5285
	.byte	0x1
	.2byte	0x240
	.4byte	0x5afd
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5287
	.4byte	.LBE5287
	.byte	0x1
	.2byte	0x240
	.4byte	0x5b19
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5289
	.4byte	.LBE5289
	.byte	0x1
	.2byte	0x240
	.4byte	0x5b35
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5291
	.4byte	.LBE5291
	.byte	0x1
	.2byte	0x240
	.4byte	0x5b51
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5293
	.4byte	.LBE5293
	.byte	0x1
	.2byte	0x240
	.4byte	0x5b6d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5295
	.4byte	.LBE5295
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB161
	.4byte	.LFE161
	.4byte	.LLST116
	.4byte	0x5d02
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST117
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x240
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5297
	.4byte	.LBE5297
	.byte	0x1
	.2byte	0x240
	.4byte	0x5bf0
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5299
	.4byte	.LBE5299
	.byte	0x1
	.2byte	0x240
	.4byte	0x5c0c
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5301
	.4byte	.LBE5301
	.byte	0x1
	.2byte	0x240
	.4byte	0x5c41
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5303
	.4byte	.LBE5303
	.byte	0x1
	.2byte	0x240
	.4byte	0x5c5d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5305
	.4byte	.LBE5305
	.byte	0x1
	.2byte	0x240
	.4byte	0x5c79
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5307
	.4byte	.LBE5307
	.byte	0x1
	.2byte	0x240
	.4byte	0x5c95
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5309
	.4byte	.LBE5309
	.byte	0x1
	.2byte	0x240
	.4byte	0x5cb1
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5311
	.4byte	.LBE5311
	.byte	0x1
	.2byte	0x240
	.4byte	0x5ccd
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5313
	.4byte	.LBE5313
	.byte	0x1
	.2byte	0x240
	.4byte	0x5ce9
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5315
	.4byte	.LBE5315
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB165
	.4byte	.LFE165
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x5dc7
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST118
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5317
	.4byte	.LBE5317
	.byte	0x1
	.2byte	0x240
	.4byte	0x5d5a
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5319
	.4byte	.LBE5319
	.byte	0x1
	.2byte	0x240
	.4byte	0x5d76
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5321
	.4byte	.LBE5321
	.byte	0x1
	.2byte	0x240
	.4byte	0x5d92
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5323
	.4byte	.LBE5323
	.byte	0x1
	.2byte	0x240
	.4byte	0x5dae
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5325
	.4byte	.LBE5325
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB166
	.4byte	.LFE166
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x5ea8
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST119
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5327
	.4byte	.LBE5327
	.byte	0x1
	.2byte	0x240
	.4byte	0x5e1f
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5329
	.4byte	.LBE5329
	.byte	0x1
	.2byte	0x240
	.4byte	0x5e3b
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5331
	.4byte	.LBE5331
	.byte	0x1
	.2byte	0x240
	.4byte	0x5e57
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5333
	.4byte	.LBE5333
	.byte	0x1
	.2byte	0x240
	.4byte	0x5e73
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5335
	.4byte	.LBE5335
	.byte	0x1
	.2byte	0x240
	.4byte	0x5e8f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5337
	.4byte	.LBE5337
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB167
	.4byte	.LFE167
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x5fa5
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST120
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5339
	.4byte	.LBE5339
	.byte	0x1
	.2byte	0x240
	.4byte	0x5f00
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5341
	.4byte	.LBE5341
	.byte	0x1
	.2byte	0x240
	.4byte	0x5f1c
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5343
	.4byte	.LBE5343
	.byte	0x1
	.2byte	0x240
	.4byte	0x5f38
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5345
	.4byte	.LBE5345
	.byte	0x1
	.2byte	0x240
	.4byte	0x5f54
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5347
	.4byte	.LBE5347
	.byte	0x1
	.2byte	0x240
	.4byte	0x5f70
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5349
	.4byte	.LBE5349
	.byte	0x1
	.2byte	0x240
	.4byte	0x5f8c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5351
	.4byte	.LBE5351
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB168
	.4byte	.LFE168
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x60be
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST121
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5353
	.4byte	.LBE5353
	.byte	0x1
	.2byte	0x240
	.4byte	0x5ffd
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5355
	.4byte	.LBE5355
	.byte	0x1
	.2byte	0x240
	.4byte	0x6019
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5357
	.4byte	.LBE5357
	.byte	0x1
	.2byte	0x240
	.4byte	0x6035
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5359
	.4byte	.LBE5359
	.byte	0x1
	.2byte	0x240
	.4byte	0x6051
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5361
	.4byte	.LBE5361
	.byte	0x1
	.2byte	0x240
	.4byte	0x606d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5363
	.4byte	.LBE5363
	.byte	0x1
	.2byte	0x240
	.4byte	0x6089
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5365
	.4byte	.LBE5365
	.byte	0x1
	.2byte	0x240
	.4byte	0x60a5
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5367
	.4byte	.LBE5367
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB169
	.4byte	.LFE169
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x61f3
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST122
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5369
	.4byte	.LBE5369
	.byte	0x1
	.2byte	0x240
	.4byte	0x6116
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5371
	.4byte	.LBE5371
	.byte	0x1
	.2byte	0x240
	.4byte	0x6132
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5373
	.4byte	.LBE5373
	.byte	0x1
	.2byte	0x240
	.4byte	0x614e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5375
	.4byte	.LBE5375
	.byte	0x1
	.2byte	0x240
	.4byte	0x616a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5377
	.4byte	.LBE5377
	.byte	0x1
	.2byte	0x240
	.4byte	0x6186
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5379
	.4byte	.LBE5379
	.byte	0x1
	.2byte	0x240
	.4byte	0x61a2
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5381
	.4byte	.LBE5381
	.byte	0x1
	.2byte	0x240
	.4byte	0x61be
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5383
	.4byte	.LBE5383
	.byte	0x1
	.2byte	0x240
	.4byte	0x61da
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5385
	.4byte	.LBE5385
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB172
	.4byte	.LFE172
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x62b8
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST123
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5387
	.4byte	.LBE5387
	.byte	0x1
	.2byte	0x240
	.4byte	0x624b
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5389
	.4byte	.LBE5389
	.byte	0x1
	.2byte	0x240
	.4byte	0x6267
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5391
	.4byte	.LBE5391
	.byte	0x1
	.2byte	0x240
	.4byte	0x6283
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5393
	.4byte	.LBE5393
	.byte	0x1
	.2byte	0x240
	.4byte	0x629f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5395
	.4byte	.LBE5395
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB173
	.4byte	.LFE173
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x6399
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST124
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5397
	.4byte	.LBE5397
	.byte	0x1
	.2byte	0x240
	.4byte	0x6310
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5399
	.4byte	.LBE5399
	.byte	0x1
	.2byte	0x240
	.4byte	0x632c
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5401
	.4byte	.LBE5401
	.byte	0x1
	.2byte	0x240
	.4byte	0x6348
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5403
	.4byte	.LBE5403
	.byte	0x1
	.2byte	0x240
	.4byte	0x6364
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5405
	.4byte	.LBE5405
	.byte	0x1
	.2byte	0x240
	.4byte	0x6380
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5407
	.4byte	.LBE5407
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB174
	.4byte	.LFE174
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x6496
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST125
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5409
	.4byte	.LBE5409
	.byte	0x1
	.2byte	0x240
	.4byte	0x63f1
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5411
	.4byte	.LBE5411
	.byte	0x1
	.2byte	0x240
	.4byte	0x640d
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5413
	.4byte	.LBE5413
	.byte	0x1
	.2byte	0x240
	.4byte	0x6429
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5415
	.4byte	.LBE5415
	.byte	0x1
	.2byte	0x240
	.4byte	0x6445
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5417
	.4byte	.LBE5417
	.byte	0x1
	.2byte	0x240
	.4byte	0x6461
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5419
	.4byte	.LBE5419
	.byte	0x1
	.2byte	0x240
	.4byte	0x647d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5421
	.4byte	.LBE5421
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB175
	.4byte	.LFE175
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x65af
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST126
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5423
	.4byte	.LBE5423
	.byte	0x1
	.2byte	0x240
	.4byte	0x64ee
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5425
	.4byte	.LBE5425
	.byte	0x1
	.2byte	0x240
	.4byte	0x650a
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5427
	.4byte	.LBE5427
	.byte	0x1
	.2byte	0x240
	.4byte	0x6526
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5429
	.4byte	.LBE5429
	.byte	0x1
	.2byte	0x240
	.4byte	0x6542
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5431
	.4byte	.LBE5431
	.byte	0x1
	.2byte	0x240
	.4byte	0x655e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5433
	.4byte	.LBE5433
	.byte	0x1
	.2byte	0x240
	.4byte	0x657a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5435
	.4byte	.LBE5435
	.byte	0x1
	.2byte	0x240
	.4byte	0x6596
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5437
	.4byte	.LBE5437
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB176
	.4byte	.LFE176
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x66e4
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST127
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5439
	.4byte	.LBE5439
	.byte	0x1
	.2byte	0x240
	.4byte	0x6607
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5441
	.4byte	.LBE5441
	.byte	0x1
	.2byte	0x240
	.4byte	0x6623
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5443
	.4byte	.LBE5443
	.byte	0x1
	.2byte	0x240
	.4byte	0x663f
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5445
	.4byte	.LBE5445
	.byte	0x1
	.2byte	0x240
	.4byte	0x665b
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5447
	.4byte	.LBE5447
	.byte	0x1
	.2byte	0x240
	.4byte	0x6677
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5449
	.4byte	.LBE5449
	.byte	0x1
	.2byte	0x240
	.4byte	0x6693
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5451
	.4byte	.LBE5451
	.byte	0x1
	.2byte	0x240
	.4byte	0x66af
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5453
	.4byte	.LBE5453
	.byte	0x1
	.2byte	0x240
	.4byte	0x66cb
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5455
	.4byte	.LBE5455
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB177
	.4byte	.LFE177
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x6835
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x240
	.4byte	0x59
	.4byte	.LLST128
	.uleb128 0x38
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x240
	.4byte	0x2e0
	.byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uleb128 0x35
	.4byte	0xb74
	.4byte	.LBB5457
	.4byte	.LBE5457
	.byte	0x1
	.2byte	0x240
	.4byte	0x673c
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5459
	.4byte	.LBE5459
	.byte	0x1
	.2byte	0x240
	.4byte	0x6758
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5461
	.4byte	.LBE5461
	.byte	0x1
	.2byte	0x240
	.4byte	0x6774
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5463
	.4byte	.LBE5463
	.byte	0x1
	.2byte	0x240
	.4byte	0x6790
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5465
	.4byte	.LBE5465
	.byte	0x1
	.2byte	0x240
	.4byte	0x67ac
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5467
	.4byte	.LBE5467
	.byte	0x1
	.2byte	0x240
	.4byte	0x67c8
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5469
	.4byte	.LBE5469
	.byte	0x1
	.2byte	0x240
	.4byte	0x67e4
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5471
	.4byte	.LBE5471
	.byte	0x1
	.2byte	0x240
	.4byte	0x6800
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5473
	.4byte	.LBE5473
	.byte	0x1
	.2byte	0x240
	.4byte	0x681c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5475
	.4byte	.LBE5475
	.byte	0x1
	.2byte	0x240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB178
	.4byte	.LFE178
	.4byte	.LLST129
	.4byte	0x68cf
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST130
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST131
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5477
	.4byte	.Ldebug_ranges0+0x530
	.byte	0x1
	.2byte	0x241
	.4byte	0x689d
	.uleb128 0x2b
	.4byte	0xb82
	.4byte	.LLST132
	.byte	0
	.uleb128 0x30
	.4byte	0xb8f
	.4byte	.LBB5481
	.4byte	.LBE5481
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB179
	.4byte	.LFE179
	.4byte	.LLST133
	.4byte	0x6983
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST134
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST135
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5483
	.4byte	.Ldebug_ranges0+0x548
	.byte	0x1
	.2byte	0x241
	.4byte	0x6935
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5487
	.4byte	.LBE5487
	.byte	0x1
	.2byte	0x241
	.4byte	0x696a
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5489
	.4byte	.LBE5489
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LLST136
	.4byte	0x6a53
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST137
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST138
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5491
	.4byte	.Ldebug_ranges0+0x560
	.byte	0x1
	.2byte	0x241
	.4byte	0x69e9
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5495
	.4byte	.LBE5495
	.byte	0x1
	.2byte	0x241
	.4byte	0x6a1e
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5497
	.4byte	.LBE5497
	.byte	0x1
	.2byte	0x241
	.4byte	0x6a3a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5499
	.4byte	.LBE5499
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB181
	.4byte	.LFE181
	.4byte	.LLST139
	.4byte	0x6b3f
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST140
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST141
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5501
	.4byte	.Ldebug_ranges0+0x578
	.byte	0x1
	.2byte	0x241
	.4byte	0x6ab9
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5505
	.4byte	.LBE5505
	.byte	0x1
	.2byte	0x241
	.4byte	0x6aee
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5507
	.4byte	.LBE5507
	.byte	0x1
	.2byte	0x241
	.4byte	0x6b0a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5509
	.4byte	.LBE5509
	.byte	0x1
	.2byte	0x241
	.4byte	0x6b26
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5511
	.4byte	.LBE5511
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB182
	.4byte	.LFE182
	.4byte	.LLST142
	.4byte	0x6c47
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST143
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST144
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5513
	.4byte	.Ldebug_ranges0+0x590
	.byte	0x1
	.2byte	0x241
	.4byte	0x6ba5
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5517
	.4byte	.LBE5517
	.byte	0x1
	.2byte	0x241
	.4byte	0x6bda
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5519
	.4byte	.LBE5519
	.byte	0x1
	.2byte	0x241
	.4byte	0x6bf6
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5521
	.4byte	.LBE5521
	.byte	0x1
	.2byte	0x241
	.4byte	0x6c12
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5523
	.4byte	.LBE5523
	.byte	0x1
	.2byte	0x241
	.4byte	0x6c2e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5525
	.4byte	.LBE5525
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB183
	.4byte	.LFE183
	.4byte	.LLST145
	.4byte	0x6d6b
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST146
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST147
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5527
	.4byte	.Ldebug_ranges0+0x5a8
	.byte	0x1
	.2byte	0x241
	.4byte	0x6cad
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5531
	.4byte	.LBE5531
	.byte	0x1
	.2byte	0x241
	.4byte	0x6ce2
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5533
	.4byte	.LBE5533
	.byte	0x1
	.2byte	0x241
	.4byte	0x6cfe
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5535
	.4byte	.LBE5535
	.byte	0x1
	.2byte	0x241
	.4byte	0x6d1a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5537
	.4byte	.LBE5537
	.byte	0x1
	.2byte	0x241
	.4byte	0x6d36
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5539
	.4byte	.LBE5539
	.byte	0x1
	.2byte	0x241
	.4byte	0x6d52
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5541
	.4byte	.LBE5541
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB184
	.4byte	.LFE184
	.4byte	.LLST148
	.4byte	0x6eab
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST149
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST150
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5543
	.4byte	.Ldebug_ranges0+0x5c0
	.byte	0x1
	.2byte	0x241
	.4byte	0x6dd1
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5547
	.4byte	.LBE5547
	.byte	0x1
	.2byte	0x241
	.4byte	0x6e06
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5549
	.4byte	.LBE5549
	.byte	0x1
	.2byte	0x241
	.4byte	0x6e22
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5551
	.4byte	.LBE5551
	.byte	0x1
	.2byte	0x241
	.4byte	0x6e3e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5553
	.4byte	.LBE5553
	.byte	0x1
	.2byte	0x241
	.4byte	0x6e5a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5555
	.4byte	.LBE5555
	.byte	0x1
	.2byte	0x241
	.4byte	0x6e76
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5557
	.4byte	.LBE5557
	.byte	0x1
	.2byte	0x241
	.4byte	0x6e92
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5559
	.4byte	.LBE5559
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB185
	.4byte	.LFE185
	.4byte	.LLST151
	.4byte	0x7007
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST152
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST153
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5561
	.4byte	.Ldebug_ranges0+0x5d8
	.byte	0x1
	.2byte	0x241
	.4byte	0x6f11
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5565
	.4byte	.LBE5565
	.byte	0x1
	.2byte	0x241
	.4byte	0x6f46
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5567
	.4byte	.LBE5567
	.byte	0x1
	.2byte	0x241
	.4byte	0x6f62
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5569
	.4byte	.LBE5569
	.byte	0x1
	.2byte	0x241
	.4byte	0x6f7e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5571
	.4byte	.LBE5571
	.byte	0x1
	.2byte	0x241
	.4byte	0x6f9a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5573
	.4byte	.LBE5573
	.byte	0x1
	.2byte	0x241
	.4byte	0x6fb6
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5575
	.4byte	.LBE5575
	.byte	0x1
	.2byte	0x241
	.4byte	0x6fd2
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5577
	.4byte	.LBE5577
	.byte	0x1
	.2byte	0x241
	.4byte	0x6fee
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5579
	.4byte	.LBE5579
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB186
	.4byte	.LFE186
	.4byte	.LLST154
	.4byte	0x70bf
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST155
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST156
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5581
	.4byte	.Ldebug_ranges0+0x5f0
	.byte	0x1
	.2byte	0x241
	.4byte	0x706f
	.uleb128 0x2b
	.4byte	0xb82
	.4byte	.LLST157
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5585
	.4byte	.LBE5585
	.byte	0x1
	.2byte	0x241
	.4byte	0x708d
	.uleb128 0x2b
	.4byte	0xbef
	.4byte	.LLST158
	.byte	0
	.uleb128 0x30
	.4byte	0xb8f
	.4byte	.LBB5587
	.4byte	.LBE5587
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB187
	.4byte	.LFE187
	.4byte	.LLST159
	.4byte	0x718f
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST160
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST161
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5589
	.4byte	.Ldebug_ranges0+0x608
	.byte	0x1
	.2byte	0x241
	.4byte	0x7125
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5593
	.4byte	.LBE5593
	.byte	0x1
	.2byte	0x241
	.4byte	0x7141
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5595
	.4byte	.LBE5595
	.byte	0x1
	.2byte	0x241
	.4byte	0x7176
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5597
	.4byte	.LBE5597
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB188
	.4byte	.LFE188
	.4byte	.LLST162
	.4byte	0x727b
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST163
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST164
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5599
	.4byte	.Ldebug_ranges0+0x620
	.byte	0x1
	.2byte	0x241
	.4byte	0x71f5
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5603
	.4byte	.LBE5603
	.byte	0x1
	.2byte	0x241
	.4byte	0x7211
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5605
	.4byte	.LBE5605
	.byte	0x1
	.2byte	0x241
	.4byte	0x7246
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5607
	.4byte	.LBE5607
	.byte	0x1
	.2byte	0x241
	.4byte	0x7262
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5609
	.4byte	.LBE5609
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB189
	.4byte	.LFE189
	.4byte	.LLST165
	.4byte	0x7383
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST166
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST167
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5611
	.4byte	.Ldebug_ranges0+0x638
	.byte	0x1
	.2byte	0x241
	.4byte	0x72e1
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5615
	.4byte	.LBE5615
	.byte	0x1
	.2byte	0x241
	.4byte	0x72fd
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5617
	.4byte	.LBE5617
	.byte	0x1
	.2byte	0x241
	.4byte	0x7332
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5619
	.4byte	.LBE5619
	.byte	0x1
	.2byte	0x241
	.4byte	0x734e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5621
	.4byte	.LBE5621
	.byte	0x1
	.2byte	0x241
	.4byte	0x736a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5623
	.4byte	.LBE5623
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB190
	.4byte	.LFE190
	.4byte	.LLST168
	.4byte	0x74a7
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST169
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST170
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5625
	.4byte	.Ldebug_ranges0+0x650
	.byte	0x1
	.2byte	0x241
	.4byte	0x73e9
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5629
	.4byte	.LBE5629
	.byte	0x1
	.2byte	0x241
	.4byte	0x7405
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5631
	.4byte	.LBE5631
	.byte	0x1
	.2byte	0x241
	.4byte	0x743a
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5633
	.4byte	.LBE5633
	.byte	0x1
	.2byte	0x241
	.4byte	0x7456
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5635
	.4byte	.LBE5635
	.byte	0x1
	.2byte	0x241
	.4byte	0x7472
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5637
	.4byte	.LBE5637
	.byte	0x1
	.2byte	0x241
	.4byte	0x748e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5639
	.4byte	.LBE5639
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB191
	.4byte	.LFE191
	.4byte	.LLST171
	.4byte	0x75e7
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST172
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST173
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5641
	.4byte	.Ldebug_ranges0+0x668
	.byte	0x1
	.2byte	0x241
	.4byte	0x750d
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5645
	.4byte	.LBE5645
	.byte	0x1
	.2byte	0x241
	.4byte	0x7529
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5647
	.4byte	.LBE5647
	.byte	0x1
	.2byte	0x241
	.4byte	0x755e
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5649
	.4byte	.LBE5649
	.byte	0x1
	.2byte	0x241
	.4byte	0x757a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5651
	.4byte	.LBE5651
	.byte	0x1
	.2byte	0x241
	.4byte	0x7596
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5653
	.4byte	.LBE5653
	.byte	0x1
	.2byte	0x241
	.4byte	0x75b2
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5655
	.4byte	.LBE5655
	.byte	0x1
	.2byte	0x241
	.4byte	0x75ce
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5657
	.4byte	.LBE5657
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB192
	.4byte	.LFE192
	.4byte	.LLST174
	.4byte	0x7743
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST175
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST176
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5659
	.4byte	.Ldebug_ranges0+0x680
	.byte	0x1
	.2byte	0x241
	.4byte	0x764d
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5663
	.4byte	.LBE5663
	.byte	0x1
	.2byte	0x241
	.4byte	0x7669
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5665
	.4byte	.LBE5665
	.byte	0x1
	.2byte	0x241
	.4byte	0x769e
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5667
	.4byte	.LBE5667
	.byte	0x1
	.2byte	0x241
	.4byte	0x76ba
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5669
	.4byte	.LBE5669
	.byte	0x1
	.2byte	0x241
	.4byte	0x76d6
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5671
	.4byte	.LBE5671
	.byte	0x1
	.2byte	0x241
	.4byte	0x76f2
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5673
	.4byte	.LBE5673
	.byte	0x1
	.2byte	0x241
	.4byte	0x770e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5675
	.4byte	.LBE5675
	.byte	0x1
	.2byte	0x241
	.4byte	0x772a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5677
	.4byte	.LBE5677
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB193
	.4byte	.LFE193
	.4byte	.LLST177
	.4byte	0x78bb
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST178
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST179
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.2byte	0x241
	.4byte	0x128a
	.byte	0x6
	.byte	0x3
	.4byte	_tempcolorelement
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5679
	.4byte	.Ldebug_ranges0+0x698
	.byte	0x1
	.2byte	0x241
	.4byte	0x77a9
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5683
	.4byte	.LBE5683
	.byte	0x1
	.2byte	0x241
	.4byte	0x77c5
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xb8f
	.4byte	.LBB5685
	.4byte	.LBE5685
	.byte	0x1
	.2byte	0x241
	.4byte	0x77fa
	.uleb128 0x2f
	.4byte	0xbbb
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.4byte	0xbb1
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2f
	.4byte	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2f
	.4byte	0xb9d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5687
	.4byte	.LBE5687
	.byte	0x1
	.2byte	0x241
	.4byte	0x7816
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5689
	.4byte	.LBE5689
	.byte	0x1
	.2byte	0x241
	.4byte	0x7832
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5691
	.4byte	.LBE5691
	.byte	0x1
	.2byte	0x241
	.4byte	0x784e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5693
	.4byte	.LBE5693
	.byte	0x1
	.2byte	0x241
	.4byte	0x786a
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5695
	.4byte	.LBE5695
	.byte	0x1
	.2byte	0x241
	.4byte	0x7886
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5697
	.4byte	.LBE5697
	.byte	0x1
	.2byte	0x241
	.4byte	0x78a2
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5699
	.4byte	.LBE5699
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB197
	.4byte	.LFE197
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x797c
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST180
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST181
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5701
	.4byte	.Ldebug_ranges0+0x6b0
	.byte	0x1
	.2byte	0x241
	.4byte	0x790f
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5705
	.4byte	.LBE5705
	.byte	0x1
	.2byte	0x241
	.4byte	0x792b
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5707
	.4byte	.LBE5707
	.byte	0x1
	.2byte	0x241
	.4byte	0x7947
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5709
	.4byte	.LBE5709
	.byte	0x1
	.2byte	0x241
	.4byte	0x7963
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5711
	.4byte	.LBE5711
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB198
	.4byte	.LFE198
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x7a59
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST182
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST183
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5713
	.4byte	.Ldebug_ranges0+0x6c8
	.byte	0x1
	.2byte	0x241
	.4byte	0x79d0
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5717
	.4byte	.LBE5717
	.byte	0x1
	.2byte	0x241
	.4byte	0x79ec
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5719
	.4byte	.LBE5719
	.byte	0x1
	.2byte	0x241
	.4byte	0x7a08
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5721
	.4byte	.LBE5721
	.byte	0x1
	.2byte	0x241
	.4byte	0x7a24
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5723
	.4byte	.LBE5723
	.byte	0x1
	.2byte	0x241
	.4byte	0x7a40
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5725
	.4byte	.LBE5725
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB199
	.4byte	.LFE199
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x7b52
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST184
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST185
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5727
	.4byte	.Ldebug_ranges0+0x6e0
	.byte	0x1
	.2byte	0x241
	.4byte	0x7aad
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5731
	.4byte	.LBE5731
	.byte	0x1
	.2byte	0x241
	.4byte	0x7ac9
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5733
	.4byte	.LBE5733
	.byte	0x1
	.2byte	0x241
	.4byte	0x7ae5
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5735
	.4byte	.LBE5735
	.byte	0x1
	.2byte	0x241
	.4byte	0x7b01
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5737
	.4byte	.LBE5737
	.byte	0x1
	.2byte	0x241
	.4byte	0x7b1d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5739
	.4byte	.LBE5739
	.byte	0x1
	.2byte	0x241
	.4byte	0x7b39
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5741
	.4byte	.LBE5741
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB200
	.4byte	.LFE200
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x7c67
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST186
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST187
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5743
	.4byte	.Ldebug_ranges0+0x6f8
	.byte	0x1
	.2byte	0x241
	.4byte	0x7ba6
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5747
	.4byte	.LBE5747
	.byte	0x1
	.2byte	0x241
	.4byte	0x7bc2
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5749
	.4byte	.LBE5749
	.byte	0x1
	.2byte	0x241
	.4byte	0x7bde
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5751
	.4byte	.LBE5751
	.byte	0x1
	.2byte	0x241
	.4byte	0x7bfa
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5753
	.4byte	.LBE5753
	.byte	0x1
	.2byte	0x241
	.4byte	0x7c16
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5755
	.4byte	.LBE5755
	.byte	0x1
	.2byte	0x241
	.4byte	0x7c32
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5757
	.4byte	.LBE5757
	.byte	0x1
	.2byte	0x241
	.4byte	0x7c4e
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5759
	.4byte	.LBE5759
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB201
	.4byte	.LFE201
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x7d98
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST188
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST189
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5761
	.4byte	.Ldebug_ranges0+0x710
	.byte	0x1
	.2byte	0x241
	.4byte	0x7cbb
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5765
	.4byte	.LBE5765
	.byte	0x1
	.2byte	0x241
	.4byte	0x7cd7
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5767
	.4byte	.LBE5767
	.byte	0x1
	.2byte	0x241
	.4byte	0x7cf3
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5769
	.4byte	.LBE5769
	.byte	0x1
	.2byte	0x241
	.4byte	0x7d0f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5771
	.4byte	.LBE5771
	.byte	0x1
	.2byte	0x241
	.4byte	0x7d2b
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5773
	.4byte	.LBE5773
	.byte	0x1
	.2byte	0x241
	.4byte	0x7d47
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5775
	.4byte	.LBE5775
	.byte	0x1
	.2byte	0x241
	.4byte	0x7d63
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5777
	.4byte	.LBE5777
	.byte	0x1
	.2byte	0x241
	.4byte	0x7d7f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5779
	.4byte	.LBE5779
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB204
	.4byte	.LFE204
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x7e59
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST190
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST191
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5781
	.4byte	.Ldebug_ranges0+0x728
	.byte	0x1
	.2byte	0x241
	.4byte	0x7dec
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5785
	.4byte	.LBE5785
	.byte	0x1
	.2byte	0x241
	.4byte	0x7e08
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5787
	.4byte	.LBE5787
	.byte	0x1
	.2byte	0x241
	.4byte	0x7e24
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5789
	.4byte	.LBE5789
	.byte	0x1
	.2byte	0x241
	.4byte	0x7e40
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5791
	.4byte	.LBE5791
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB205
	.4byte	.LFE205
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x7f36
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST192
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST193
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5793
	.4byte	.Ldebug_ranges0+0x740
	.byte	0x1
	.2byte	0x241
	.4byte	0x7ead
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5797
	.4byte	.LBE5797
	.byte	0x1
	.2byte	0x241
	.4byte	0x7ec9
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5799
	.4byte	.LBE5799
	.byte	0x1
	.2byte	0x241
	.4byte	0x7ee5
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5801
	.4byte	.LBE5801
	.byte	0x1
	.2byte	0x241
	.4byte	0x7f01
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5803
	.4byte	.LBE5803
	.byte	0x1
	.2byte	0x241
	.4byte	0x7f1d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5805
	.4byte	.LBE5805
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB206
	.4byte	.LFE206
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x802f
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST194
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST195
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5807
	.4byte	.Ldebug_ranges0+0x758
	.byte	0x1
	.2byte	0x241
	.4byte	0x7f8a
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5811
	.4byte	.LBE5811
	.byte	0x1
	.2byte	0x241
	.4byte	0x7fa6
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5813
	.4byte	.LBE5813
	.byte	0x1
	.2byte	0x241
	.4byte	0x7fc2
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5815
	.4byte	.LBE5815
	.byte	0x1
	.2byte	0x241
	.4byte	0x7fde
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5817
	.4byte	.LBE5817
	.byte	0x1
	.2byte	0x241
	.4byte	0x7ffa
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5819
	.4byte	.LBE5819
	.byte	0x1
	.2byte	0x241
	.4byte	0x8016
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5821
	.4byte	.LBE5821
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB207
	.4byte	.LFE207
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x8144
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST196
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST197
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5823
	.4byte	.Ldebug_ranges0+0x770
	.byte	0x1
	.2byte	0x241
	.4byte	0x8083
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5827
	.4byte	.LBE5827
	.byte	0x1
	.2byte	0x241
	.4byte	0x809f
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5829
	.4byte	.LBE5829
	.byte	0x1
	.2byte	0x241
	.4byte	0x80bb
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5831
	.4byte	.LBE5831
	.byte	0x1
	.2byte	0x241
	.4byte	0x80d7
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5833
	.4byte	.LBE5833
	.byte	0x1
	.2byte	0x241
	.4byte	0x80f3
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5835
	.4byte	.LBE5835
	.byte	0x1
	.2byte	0x241
	.4byte	0x810f
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5837
	.4byte	.LBE5837
	.byte	0x1
	.2byte	0x241
	.4byte	0x812b
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5839
	.4byte	.LBE5839
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB208
	.4byte	.LFE208
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x8275
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST198
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST199
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5841
	.4byte	.Ldebug_ranges0+0x788
	.byte	0x1
	.2byte	0x241
	.4byte	0x8198
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5845
	.4byte	.LBE5845
	.byte	0x1
	.2byte	0x241
	.4byte	0x81b4
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5847
	.4byte	.LBE5847
	.byte	0x1
	.2byte	0x241
	.4byte	0x81d0
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5849
	.4byte	.LBE5849
	.byte	0x1
	.2byte	0x241
	.4byte	0x81ec
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5851
	.4byte	.LBE5851
	.byte	0x1
	.2byte	0x241
	.4byte	0x8208
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5853
	.4byte	.LBE5853
	.byte	0x1
	.2byte	0x241
	.4byte	0x8224
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5855
	.4byte	.LBE5855
	.byte	0x1
	.2byte	0x241
	.4byte	0x8240
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5857
	.4byte	.LBE5857
	.byte	0x1
	.2byte	0x241
	.4byte	0x825c
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5859
	.4byte	.LBE5859
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB209
	.4byte	.LFE209
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x83c2
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x241
	.4byte	0x59
	.4byte	.LLST200
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x241
	.4byte	0x2e0
	.4byte	.LLST201
	.uleb128 0x2e
	.4byte	0xb74
	.4byte	.LBB5861
	.4byte	.Ldebug_ranges0+0x7a0
	.byte	0x1
	.2byte	0x241
	.4byte	0x82c9
	.uleb128 0x2f
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbe1
	.4byte	.LBB5865
	.4byte	.LBE5865
	.byte	0x1
	.2byte	0x241
	.4byte	0x82e5
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LBB5867
	.4byte	.LBE5867
	.byte	0x1
	.2byte	0x241
	.4byte	0x8301
	.uleb128 0x2f
	.4byte	0xc0a
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5869
	.4byte	.LBE5869
	.byte	0x1
	.2byte	0x241
	.4byte	0x831d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5871
	.4byte	.LBE5871
	.byte	0x1
	.2byte	0x241
	.4byte	0x8339
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5873
	.4byte	.LBE5873
	.byte	0x1
	.2byte	0x241
	.4byte	0x8355
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5875
	.4byte	.LBE5875
	.byte	0x1
	.2byte	0x241
	.4byte	0x8371
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5877
	.4byte	.LBE5877
	.byte	0x1
	.2byte	0x241
	.4byte	0x838d
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	0xbc6
	.4byte	.LBB5879
	.4byte	.LBE5879
	.byte	0x1
	.2byte	0x241
	.4byte	0x83a9
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.4byte	0xbc6
	.4byte	.LBB5881
	.4byte	.LBE5881
	.byte	0x1
	.2byte	0x241
	.uleb128 0x2f
	.4byte	0xbd4
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x27e
	.byte	0x1
	.4byte	.LFB211
	.4byte	.LFE211
	.4byte	.LLST202
	.4byte	0x8456
	.uleb128 0x32
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x27e
	.4byte	0xdaa
	.4byte	.LLST203
	.uleb128 0x39
	.string	"nx"
	.byte	0x1
	.2byte	0x27e
	.4byte	0xd9
	.4byte	.LLST204
	.uleb128 0x39
	.string	"ny"
	.byte	0x1
	.2byte	0x27e
	.4byte	0xd9
	.4byte	.LLST205
	.uleb128 0x39
	.string	"nz"
	.byte	0x1
	.2byte	0x27e
	.4byte	0xd9
	.4byte	.LLST206
	.uleb128 0x3a
	.string	"hx"
	.byte	0x1
	.2byte	0x280
	.4byte	0xd9
	.4byte	.LLST207
	.uleb128 0x3a
	.string	"hy"
	.byte	0x1
	.2byte	0x280
	.4byte	0xd9
	.4byte	.LLST208
	.uleb128 0x3a
	.string	"hz"
	.byte	0x1
	.2byte	0x280
	.4byte	0xd9
	.4byte	.LLST209
	.uleb128 0x3a
	.string	"mag"
	.byte	0x1
	.2byte	0x280
	.4byte	0xd9
	.4byte	.LLST210
	.byte	0
	.uleb128 0x31
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x6ac
	.byte	0x1
	.4byte	.LFB234
	.4byte	.LFE234
	.4byte	.LLST211
	.4byte	0x8863
	.uleb128 0x32
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x6ac
	.4byte	0x59
	.4byte	.LLST212
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x6c1
	.4byte	0x59
	.4byte	.LLST213
	.uleb128 0x2e
	.4byte	0xcdb
	.4byte	.LBB5921
	.4byte	.Ldebug_ranges0+0x7b8
	.byte	0x1
	.2byte	0x6b5
	.4byte	0x8576
	.uleb128 0x2b
	.4byte	0xd25
	.4byte	.LLST214
	.uleb128 0x2b
	.4byte	0xd19
	.4byte	.LLST215
	.uleb128 0x2b
	.4byte	0xd0d
	.4byte	.LLST216
	.uleb128 0x2b
	.4byte	0xd01
	.4byte	.LLST217
	.uleb128 0x2b
	.4byte	0xcf5
	.4byte	.LLST218
	.uleb128 0x2b
	.4byte	0xce9
	.4byte	.LLST219
	.uleb128 0x30
	.4byte	0xcdb
	.4byte	.LBB5923
	.4byte	.LBE5923
	.byte	0x1
	.2byte	0x6ac
	.uleb128 0x2f
	.4byte	0xd25
	.byte	0x1
	.byte	0x65
	.uleb128 0x2f
	.4byte	0xd01
	.byte	0x6
	.byte	0x3
	.4byte	vert
	.byte	0x9f
	.uleb128 0x2f
	.4byte	0xcf5
	.byte	0x6
	.byte	0x3
	.4byte	vert_mode
	.byte	0x9f
	.uleb128 0x3b
	.4byte	0xce9
	.byte	0x9