	.file	"main.cpp"
	.section	".text"
.Ltext0:
	.align 2
	.globl _Z21Sys_AcceptLogTerminalv
	.type	_Z21Sys_AcceptLogTerminalv, @function
_Z21Sys_AcceptLogTerminalv:
.LFB72:
	.file 1 "d:/Data/Nintendo/DoomGXSchratch/src/main.cpp"
	.loc 1 66 0
	.cfi_startproc
	stwu 1,-88(1)
.LCFI0:
	.cfi_def_cfa_offset 88
	mflr 0
	stw 30,80(1)
.LBB2:
	.loc 1 68 0
	lis 30,initialized@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBE2:
	.loc 1 66 0
	stw 31,84(1)
.LBB3:
	.loc 1 68 0
	lwz 31,initialized@l(30)
	.cfi_offset 31, -4
.LBE3:
	.loc 1 66 0
	stw 0,92(1)
.LBB4:
	.loc 1 68 0
	cmpwi 7,31,0
.LBE4:
	.loc 1 66 0
	stw 28,72(1)
	stw 29,76(1)
.LBB5:
	.loc 1 68 0
	bne+ 7,.L1
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.loc 1 79 0
	li 6,1
	.loc 1 71 0
	li 0,16
	.loc 1 79 0
	addi 4,1,12
	addi 5,1,28
	addi 3,1,44
	.loc 1 71 0
	stw 0,8(1)
.LVL0:
	.loc 1 73 0
	stw 31,44(1)
	.loc 1 80 0
	lis 28,sock@ha
	.loc 1 73 0
	stw 31,48(1)
	stw 31,52(1)
	stw 31,56(1)
	.loc 1 74 0
	stw 31,28(1)
	stw 31,32(1)
	stw 31,36(1)
	stw 31,40(1)
	.loc 1 75 0
	stw 31,12(1)
	stw 31,16(1)
	stw 31,20(1)
	stw 31,24(1)
	.loc 1 79 0
	bl if_config
	.loc 1 80 0
	li 4,1
	li 5,0
	li 3,2
	bl net_socket
	.loc 1 82 0
	lis 11,.LANCHOR0@ha
	la 9,.LANCHOR0@l(11)
	.loc 1 85 0
	li 0,2
	.loc 1 82 0
	stw 31,.LANCHOR0@l(11)
	.loc 1 88 0
	mr 4,9
	.loc 1 85 0
	stb 0,1(9)
	.loc 1 86 0
	li 0,80
	sth 0,2(9)
	.loc 1 88 0
	li 5,16
	.loc 1 82 0
	stw 31,4(9)
	.loc 1 83 0
	addi 29,9,16
	.loc 1 82 0
	stw 31,8(9)
	stw 31,12(9)
	.loc 1 83 0
	stw 31,16(9)
	stw 31,20(9)
	stw 31,24(9)
	stw 31,28(9)
	.loc 1 80 0
	stw 3,sock@l(28)
	.loc 1 88 0
	bl net_bind
	.loc 1 89 0
	lwz 3,sock@l(28)
	li 4,5
	bl net_listen
	.loc 1 91 0
	lwz 3,sock@l(28)
	mr 4,29
	addi 5,1,8
	bl net_accept
	lis 9,csock@ha
	.loc 1 97 0
	li 0,1
	.loc 1 91 0
	stw 3,csock@l(9)
	.loc 1 97 0
	stw 0,initialized@l(30)
.L1:
.LBE5:
	.loc 1 98 0
	lwz 0,92(1)
	lwz 28,72(1)
	mtlr 0
	lwz 29,76(1)
	lwz 30,80(1)
	lwz 31,84(1)
	addi 1,1,88
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE72:
	.size	_Z21Sys_AcceptLogTerminalv, .-_Z21Sys_AcceptLogTerminalv
	.align 2
	.globl _Z20Sys_CloseLogTerminalv
	.type	_Z20Sys_CloseLogTerminalv, @function
_Z20Sys_CloseLogTerminalv:
.LFB73:
	.loc 1 101 0
	.cfi_startproc
	mflr 0
	.loc 1 102 0
	lis 9,csock@ha
	.loc 1 101 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 102 0
	lwz 3,csock@l(9)
	.loc 1 101 0
	stw 0,12(1)
	.loc 1 102 0
	.cfi_offset 65, 4
	bl net_close
	.loc 1 103 0
	lis 9,sock@ha
	lwz 3,sock@l(9)
	bl net_close
	.loc 1 104 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE73:
	.size	_Z20Sys_CloseLogTerminalv, .-_Z20Sys_CloseLogTerminalv
	.align 2
	.globl _Z15Sys_WriteSocketPc
	.type	_Z15Sys_WriteSocketPc, @function
_Z15Sys_WriteSocketPc:
.LFB74:
	.loc 1 107 0
	.cfi_startproc
.LVL1:
	mflr 0
	stwu 1,-16(1)
.LCFI4:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 108 0
	lis 9,initialized@ha
	.loc 1 107 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	.loc 1 108 0
	lwz 0,initialized@l(9)
	.cfi_offset 65, 4
	.loc 1 107 0
	stw 31,12(1)
	.loc 1 108 0
	cmpwi 7,0,0
	beq+ 7,.L5
	.cfi_offset 31, -4
	.loc 1 111 0
	bl strlen
.LVL2:
	lis 31,csock@ha
	mr 5,3
	lwz 3,csock@l(31)
	mr 4,30
	li 6,0
	bl net_send
	.loc 1 112 0
	lis 4,.LC0@ha
	lwz 3,csock@l(31)
	la 4,.LC0@l(4)
	li 5,1
	li 6,0
	bl net_send
.L5:
	.loc 1 113 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL3:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE74:
	.size	_Z15Sys_WriteSocketPc, .-_Z15Sys_WriteSocketPc
	.align 2
	.globl _Z8Sys_Quitv
	.type	_Z8Sys_Quitv, @function
_Z8Sys_Quitv:
.LFB75:
	.loc 1 115 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 116 0
	li 3,0
	.loc 1 115 0
	stw 0,12(1)
	.loc 1 116 0
	.cfi_offset 65, 4
	bl exit
	.cfi_endproc
.LFE75:
	.size	_Z8Sys_Quitv, .-_Z8Sys_Quitv
	.align 2
	.globl _Z10Sys_PrintfPKcz
	.type	_Z10Sys_PrintfPKcz, @function
_Z10Sys_PrintfPKcz:
.LFB76:
	.loc 1 125 0
	.cfi_startproc
.LVL4:
	mflr 0
	stwu 1,-4224(1)
.LCFI7:
	.cfi_def_cfa_offset 4224
	.cfi_register 65, 0
	stw 31,4220(1)
	stw 0,4228(1)
	stw 4,4124(1)
	stw 5,4128(1)
	stw 6,4132(1)
	stw 7,4136(1)
	stw 8,4140(1)
	stw 9,4144(1)
	stw 10,4148(1)
	bne- 1,.L9
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 1 125 0
	stfd 1,4152(1)
	stfd 2,4160(1)
	stfd 3,4168(1)
	stfd 4,4176(1)
	stfd 5,4184(1)
	stfd 6,4192(1)
	stfd 7,4200(1)
	stfd 8,4208(1)
.L9:
.LBB6:
	.loc 1 130 0
	li 0,1
.LBE6:
	.loc 1 125 0
	mr 5,3
.LBB7:
	.loc 1 130 0
	stb 0,8(1)
	addi 0,1,4232
	li 31,0
	.loc 1 131 0
	addi 6,1,8
	.loc 1 130 0
	stw 0,12(1)
	.loc 1 131 0
	addi 3,1,20
.LVL5:
	.loc 1 130 0
	addi 0,1,4120
	.loc 1 131 0
	li 4,4095
	.loc 1 130 0
	stw 0,16(1)
	stb 31,9(1)
	.loc 1 131 0
	bl vsnprintf
.LVL6:
	.loc 1 137 0
	addi 3,1,20
	.loc 1 132 0
	stb 31,4115(1)
	.loc 1 137 0
	crxor 6,6,6
	bl printf
.LBE7:
	.loc 1 141 0
	lwz 0,4228(1)
	lwz 31,4220(1)
	mtlr 0
	addi 1,1,4224
.LCFI8:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE76:
	.size	_Z10Sys_PrintfPKcz, .-_Z10Sys_PrintfPKcz
	.align 2
	.globl _Z15Sys_DebugPrintfPKcz
	.type	_Z15Sys_DebugPrintfPKcz, @function
_Z15Sys_DebugPrintfPKcz:
.LFB77:
	.loc 1 149 0
	.cfi_startproc
.LVL7:
	mflr 0
	stwu 1,-4224(1)
.LCFI9:
	.cfi_def_cfa_offset 4224
	.cfi_register 65, 0
	stw 31,4220(1)
	stw 0,4228(1)
	stw 4,4124(1)
	stw 5,4128(1)
	stw 6,4132(1)
	stw 7,4136(1)
	stw 8,4140(1)
	stw 9,4144(1)
	stw 10,4148(1)
	bne- 1,.L11
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 1 149 0
	stfd 1,4152(1)
	stfd 2,4160(1)
	stfd 3,4168(1)
	stfd 4,4176(1)
	stfd 5,4184(1)
	stfd 6,4192(1)
	stfd 7,4200(1)
	stfd 8,4208(1)
.L11:
.LBB8:
	.loc 1 153 0
	li 0,1
.LBE8:
	.loc 1 149 0
	mr 5,3
.LBB9:
	.loc 1 153 0
	stb 0,8(1)
	li 0,0
	stb 0,9(1)
	addi 0,1,4232
	.loc 1 154 0
	addi 6,1,8
	li 4,4095
	.loc 1 153 0
	stw 0,12(1)
	.loc 1 154 0
	addi 3,1,20
.LVL8:
	.loc 1 153 0
	addi 0,1,4120
	stw 0,16(1)
	.loc 1 154 0
	bl vsnprintf
.LVL9:
	.loc 1 157 0
	addi 3,1,20
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 1 158 0
	bl SYS_GetArena1Hi
	mr 31,3
	bl SYS_GetArena1Lo
.LVL10:
	subf 4,3,31
	.loc 1 159 0
	lis 3,.LC1@ha
.LVL11:
	la 3,.LC1@l(3)
	srwi 4,4,10
.LVL12:
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LBE9:
	.loc 1 162 0
	lwz 0,4228(1)
	lwz 31,4220(1)
	mtlr 0
	addi 1,1,4224
.LCFI10:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE77:
	.size	_Z15Sys_DebugPrintfPKcz, .-_Z15Sys_DebugPrintfPKcz
	.align 2
	.globl _Z9Sys_ErrorPKcz
	.type	_Z9Sys_ErrorPKcz, @function
_Z9Sys_ErrorPKcz:
.LFB78:
	.loc 1 164 0
	.cfi_startproc
.LVL13:
	mflr 0
	stwu 1,-4216(1)
.LCFI11:
	.cfi_def_cfa_offset 4216
	.cfi_register 65, 0
	stw 4,4124(1)
	stw 0,4220(1)
	stw 5,4128(1)
	stw 6,4132(1)
	stw 7,4136(1)
	stw 8,4140(1)
	stw 9,4144(1)
	stw 10,4148(1)
	bne- 1,.L13
	.cfi_offset 65, 4
	.loc 1 164 0
	stfd 1,4152(1)
	stfd 2,4160(1)
	stfd 3,4168(1)
	stfd 4,4176(1)
	stfd 5,4184(1)
	stfd 6,4192(1)
	stfd 7,4200(1)
	stfd 8,4208(1)
.L13:
.LBB10:
	.loc 1 168 0
	li 0,1
.LBE10:
	.loc 1 164 0
	mr 5,3
.LBB11:
	.loc 1 168 0
	stb 0,8(1)
	li 0,0
	stb 0,9(1)
	addi 0,1,4224
	.loc 1 169 0
	li 4,4095
	addi 6,1,8
	.loc 1 168 0
	stw 0,12(1)
	.loc 1 169 0
	addi 3,1,20
.LVL14:
	.loc 1 168 0
	addi 0,1,4120
	stw 0,16(1)
	.loc 1 169 0
	bl vsnprintf
.LVL15:
	.loc 1 171 0
	addi 3,1,20
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 1 172 0
	bl _Z8Sys_Quitv
.LBE11:
	.cfi_endproc
.LFE78:
	.size	_Z9Sys_ErrorPKcz, .-_Z9Sys_ErrorPKcz
	.align 2
	.globl _Z13Sys_WaitPressv
	.type	_Z13Sys_WaitPressv, @function
_Z13Sys_WaitPressv:
.LFB79:
	.loc 1 181 0
	.cfi_startproc
.LVL16:
	stwu 1,-24(1)
.LCFI12:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 29,12(1)
.LBB12:
.LBB13:
	.loc 1 191 0
	lis 29,.LC2@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
.LBE13:
.LBE12:
	.loc 1 181 0
	stw 28,8(1)
.LBB16:
.LBB14:
	.loc 1 191 0
	la 29,.LC2@l(29)
.LBE14:
.LBE16:
	.loc 1 181 0
	stw 0,28(1)
	.loc 1 182 0
	li 28,500
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.loc 1 181 0
	stw 30,16(1)
	stw 31,20(1)
	b .L18
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.LVL17:
.L16:
.LBB17:
.LBB15:
	.loc 1 194 0
	or. 0,30,31
	bne- 0,.L14
.L19:
	.loc 1 195 0
	bl VIDEO_WaitVSync
.LVL18:
.L18:
	.loc 1 185 0
	bl PAD_ScanPads
	.loc 1 186 0
	bl WPAD_ScanPads
	.loc 1 188 0
	li 3,0
	bl PAD_ButtonsDown
	mr 30,3
	li 3,1
	bl PAD_ButtonsDown
	or 30,3,30
	li 3,2
	bl PAD_ButtonsDown
	rlwinm 30,30,0,0xffff
	or 30,30,3
	li 3,3
	bl PAD_ButtonsDown
	rlwinm 30,30,0,0xffff
	or 30,30,3
	.loc 1 189 0
	li 3,0
	bl WPAD_ButtonsDown
	.loc 1 188 0
	rlwinm 30,30,0,0xffff
.LVL19:
	.loc 1 189 0
	mr 31,3
	li 3,1
	bl WPAD_ButtonsDown
	or 31,3,31
	li 3,2
	bl WPAD_ButtonsDown
	or 31,31,3
	li 3,3
	bl WPAD_ButtonsDown
	.loc 1 190 0
	cmpwi 7,28,501
	.loc 1 189 0
	or 31,31,3
.LVL20:
	.loc 1 190 0
	addi 28,28,1
.LVL21:
	bne+ 7,.L16
	.loc 1 191 0
	mr 3,29
	mr 4,30
	mr 5,31
	.loc 1 192 0
	li 28,0
.LVL22:
	.loc 1 191 0
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL23:
	.loc 1 194 0
	or. 0,30,31
	beq+ 0,.L19
.L14:
.LBE15:
.LBE17:
	.loc 1 197 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL24:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL25:
	lwz 31,20(1)
.LVL26:
	addi 1,1,24
.LCFI13:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE79:
	.size	_Z13Sys_WaitPressv, .-_Z13Sys_WaitPressv
	.globl __floatdidf
	.align 2
	.globl _Z16Sys_Millisecondsv
	.type	_Z16Sys_Millisecondsv, @function
_Z16Sys_Millisecondsv:
.LFB80:
	.loc 1 199 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI14:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 0,20(1)
.LBB18:
	.loc 1 200 0
	.cfi_offset 65, 4
	bl gettime
	.loc 1 201 0
	bl __floatdidf
	lis 9,.LC3@ha
	lfd 0,.LC3@l(9)
.LBE18:
	.loc 1 203 0
	addi 9,1,8
.LBB19:
	.loc 1 201 0
	fmul 0,1,0
.LBE19:
	.loc 1 203 0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,20(1)
	lwz 3,8(1)
	mtlr 0
	addi 1,1,16
.LCFI15:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE80:
	.size	_Z16Sys_Millisecondsv, .-_Z16Sys_Millisecondsv
	.align 2
	.globl _Z17Sys_GetClockTicksv
	.type	_Z17Sys_GetClockTicksv, @function
_Z17Sys_GetClockTicksv:
.LFB81:
	.loc 1 205 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI16:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB20:
	.loc 1 206 0
	.cfi_offset 65, 4
	bl gettime
	.loc 1 207 0
	bl __floatdidf
.LBE20:
	.loc 1 209 0
	lwz 0,12(1)
.LBB21:
	.loc 1 207 0
	lis 9,.LC5@ha
.LBE21:
	.loc 1 209 0
	mtlr 0
.LBB22:
	.loc 1 207 0
	lfs 0,.LC5@l(9)
.LBE22:
	.loc 1 209 0
	addi 1,1,8
.LCFI17:
	.cfi_def_cfa_offset 0
	fmul 1,1,0
	blr
	.cfi_endproc
.LFE81:
	.size	_Z17Sys_GetClockTicksv, .-_Z17Sys_GetClockTicksv
	.align 2
	.globl _Z23Sys_ClockTicksPerSecondv
	.type	_Z23Sys_ClockTicksPerSecondv, @function
_Z23Sys_ClockTicksPerSecondv:
.LFB82:
	.loc 1 211 0
	.cfi_startproc
	.loc 1 212 0
	lis 9,.LC7@ha
	.loc 1 213 0
	lfs 1,.LC7@l(9)
	blr
	.cfi_endproc
.LFE82:
	.size	_Z23Sys_ClockTicksPerSecondv, .-_Z23Sys_ClockTicksPerSecondv
	.align 2
	.globl _Z17Sys_SetFatalErrorPKc
	.type	_Z17Sys_SetFatalErrorPKc, @function
_Z17Sys_SetFatalErrorPKc:
.LFB83:
	.loc 1 215 0
	.cfi_startproc
.LVL27:
	.loc 1 215 0
	mr 4,3
	.loc 1 216 0
	lis 3,.LC8@ha
.LVL28:
	la 3,.LC8@l(3)
	.loc 1 217 0
	.loc 1 216 0
	crxor 6,6,6
	b _Z10Sys_PrintfPKcz
.LVL29:
	.cfi_endproc
.LFE83:
	.size	_Z17Sys_SetFatalErrorPKc, .-_Z17Sys_SetFatalErrorPKc
	.globl server
	.globl client
	.globl initialized
	.globl csock
	.globl sock
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC5:
	.4byte	1094713344
.LC7:
	.4byte	1311624865
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC3:
	.4byte	1045540029
	.4byte	1020022141
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"\r"
	.zero	2
.LC1:
	.string	"Arena 1 free: %dkB\r\n"
	.zero	3
.LC2:
	.string	"Press button %d %d \n"
	.zero	3
.LC8:
	.string	"FatalError: %s\r\n"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	initialized, @object
	.size	initialized, 4
initialized:
	.zero	4
	.type	csock, @object
	.size	csock, 4
csock:
	.zero	4
	.type	sock, @object
	.size	sock, 4
sock:
	.zero	4
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	server, @object
	.size	server, 16
server:
	.zero	16
	.type	client, @object
	.size	client, 16
client:
	.zero	16
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 3 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 4 "c:/utils/devkitPro/libogc/include/ogc/lwp.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 6 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 7 "c:/utils/devkitPro/libogc/include/network.h"
	.file 8 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stdarg.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x74f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x4
	.4byte	.LASF97
	.4byte	.LASF98
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2a
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x35
	.4byte	0x54
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x36
	.4byte	0x66
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.4byte	0x78
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x50
	.4byte	0x8a
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
	.byte	0x3
	.byte	0x11
	.4byte	0x37
	.uleb128 0x5
	.string	"u16"
	.byte	0x3
	.byte	0x12
	.4byte	0x5b
	.uleb128 0x5
	.string	"u32"
	.byte	0x3
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x5
	.string	"s8"
	.byte	0x3
	.byte	0x16
	.4byte	0x25
	.uleb128 0x5
	.string	"s16"
	.byte	0x3
	.byte	0x17
	.4byte	0x49
	.uleb128 0x5
	.string	"s32"
	.byte	0x3
	.byte	0x18
	.4byte	0x6d
	.uleb128 0x5
	.string	"vu8"
	.byte	0x3
	.byte	0x1b
	.4byte	0xea
	.uleb128 0x6
	.4byte	0x9f
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1c
	.4byte	0xfa
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x1d
	.4byte	0x10a
	.uleb128 0x6
	.4byte	0xb4
	.uleb128 0x5
	.string	"vs8"
	.byte	0x3
	.byte	0x20
	.4byte	0x11a
	.uleb128 0x6
	.4byte	0xbf
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x12a
	.uleb128 0x6
	.4byte	0xc9
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x22
	.4byte	0x13a
	.uleb128 0x6
	.4byte	0xd4
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
	.byte	0x3
	.byte	0x2e
	.4byte	0x158
	.uleb128 0x6
	.4byte	0x13f
	.uleb128 0x7
	.byte	0x4
	.4byte	0x163
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x7
	.byte	0x4
	.4byte	0x15d
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3e
	.4byte	0xb4
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x4
	.byte	0x5
	.2byte	0x490
	.4byte	0x1eb
	.uleb128 0xa
	.string	"U8"
	.byte	0x5
	.2byte	0x492
	.4byte	0xdf
	.uleb128 0xa
	.string	"S8"
	.byte	0x5
	.2byte	0x493
	.4byte	0x10f
	.uleb128 0xa
	.string	"U16"
	.byte	0x5
	.2byte	0x494
	.4byte	0xef
	.uleb128 0xa
	.string	"S16"
	.byte	0x5
	.2byte	0x495
	.4byte	0x11f
	.uleb128 0xa
	.string	"U32"
	.byte	0x5
	.2byte	0x496
	.4byte	0xff
	.uleb128 0xa
	.string	"S32"
	.byte	0x5
	.2byte	0x497
	.4byte	0x12f
	.uleb128 0xa
	.string	"F32"
	.byte	0x5
	.2byte	0x498
	.4byte	0x14d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x499
	.4byte	0x18b
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1fd
	.uleb128 0xc
	.4byte	0x163
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0xd4
	.4byte	0x8a
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF26
	.uleb128 0xc
	.4byte	0x78
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x4
	.byte	0x7
	.byte	0xd3
	.4byte	0x234
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x7
	.byte	0xd4
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x10
	.byte	0x7
	.byte	0xd8
	.4byte	0x287
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x7
	.byte	0xd9
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x7
	.byte	0xda
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x7
	.byte	0xdb
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x7
	.byte	0xdc
	.4byte	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x7
	.byte	0xdd
	.4byte	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.4byte	0x30
	.4byte	0x297
	.uleb128 0x10
	.4byte	0x8a
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x10
	.byte	0x7
	.byte	0xe0
	.4byte	0x2ce
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x7
	.byte	0xe1
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x7
	.byte	0xe2
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x7
	.byte	0xe3
	.4byte	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.4byte	0x30
	.4byte	0x2de
	.uleb128 0x10
	.4byte	0x8a
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x8
	.byte	0x28
	.4byte	0x2e9
	.uleb128 0xf
	.4byte	0x2f9
	.4byte	0x2f9
	.uleb128 0x10
	.4byte	0x8a
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0xc
	.byte	0x9
	.byte	0
	.4byte	0x34c
	.uleb128 0x11
	.string	"gpr"
	.byte	0x9
	.byte	0
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"fpr"
	.byte	0x9
	.byte	0
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x9
	.byte	0
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x9
	.byte	0
	.4byte	0x170
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x9
	.byte	0
	.4byte	0x170
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x8
	.byte	0x66
	.4byte	0x2de
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF49
	.byte	0x1
	.byte	0x42
	.4byte	.LASF51
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST0
	.4byte	0x3b4
	.uleb128 0x13
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x47
	.4byte	0xb4
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0x49
	.4byte	0x3b4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.byte	0x4a
	.4byte	0x3b4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4b
	.4byte	0x3b4
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x163
	.4byte	0x3c4
	.uleb128 0x10
	.4byte	0x8a
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF53
	.byte	0x1
	.byte	0x65
	.4byte	.LASF55
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0x6b
	.4byte	.LASF52
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST2
	.4byte	0x408
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x1
	.byte	0x6b
	.4byte	0x15d
	.4byte	.LLST3
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0x73
	.4byte	.LASF56
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST4
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0x7d
	.4byte	.LASF58
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST5
	.4byte	0x471
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.byte	0x7d
	.4byte	0x1f7
	.4byte	.LLST6
	.uleb128 0x18
	.uleb128 0x13
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0x7f
	.4byte	0x34c
	.byte	0x3
	.byte	0x91
	.sleb128 -4216
	.uleb128 0x19
	.string	"msg"
	.byte	0x1
	.byte	0x80
	.4byte	0x471
	.byte	0x3
	.byte	0x91
	.sleb128 -4204
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x163
	.4byte	0x482
	.uleb128 0x1a
	.4byte	0x8a
	.2byte	0xfff
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0x95
	.4byte	.LASF62
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST7
	.4byte	0x4e2
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.byte	0x95
	.4byte	0x1f7
	.4byte	.LLST8
	.uleb128 0x18
	.uleb128 0x13
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0x96
	.4byte	0x34c
	.byte	0x3
	.byte	0x91
	.sleb128 -4216
	.uleb128 0x19
	.string	"msg"
	.byte	0x1
	.byte	0x97
	.4byte	0x471
	.byte	0x3
	.byte	0x91
	.sleb128 -4204
	.uleb128 0x1b
	.4byte	.LASF63
	.byte	0x1
	.byte	0x9e
	.4byte	0x8a
	.4byte	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.byte	0xa4
	.4byte	.LASF65
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LLST10
	.4byte	0x533
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0xa4
	.4byte	0x1f7
	.4byte	.LLST11
	.uleb128 0x18
	.uleb128 0x13
	.4byte	.Ldebug_ranges0+0x58
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa5
	.4byte	0x34c
	.byte	0x3
	.byte	0x91
	.sleb128 -4208
	.uleb128 0x19
	.string	"msg"
	.byte	0x1
	.byte	0xa6
	.4byte	0x471
	.byte	0x3
	.byte	0x91
	.sleb128 -4196
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.byte	0xb5
	.4byte	.LASF68
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST12
	.4byte	0x589
	.uleb128 0x13
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0x1c
	.string	"cnt"
	.byte	0x1
	.byte	0xb6
	.4byte	0x78
	.4byte	.LLST13
	.uleb128 0x13
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x1b
	.4byte	.LASF69
	.byte	0x1
	.byte	0xb8
	.4byte	0xb4
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x1
	.byte	0xb8
	.4byte	0xb4
	.4byte	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.byte	0xc7
	.4byte	.LASF75
	.4byte	0x78
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST16
	.4byte	0x5c6
	.uleb128 0x13
	.4byte	.Ldebug_ranges0+0xb0
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.byte	0xc8
	.4byte	0x91
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.byte	0xc9
	.4byte	0x146
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.byte	0xcd
	.4byte	.LASF76
	.4byte	0x146
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST17
	.4byte	0x603
	.uleb128 0x13
	.4byte	.Ldebug_ranges0+0xc8
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.byte	0xce
	.4byte	0x91
	.uleb128 0x1e
	.4byte	.LASF72
	.byte	0x1
	.byte	0xcf
	.4byte	0x146
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF100
	.byte	0x1
	.byte	0xd3
	.4byte	.LASF101
	.4byte	0x146
	.4byte	.LFB82
	.4byte	.LFE82
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF77
	.byte	0x1
	.byte	0xd7
	.4byte	.LASF78
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x649
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0xd7
	.4byte	0x1f7
	.4byte	.LLST18
	.byte	0
	.uleb128 0x21
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x548
	.4byte	0x657
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x65c
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1eb
	.uleb128 0x1e
	.4byte	.LASF79
	.byte	0x1
	.byte	0x24
	.4byte	0x78
	.uleb128 0x22
	.4byte	.LASF80
	.byte	0x1
	.byte	0x27
	.4byte	0x681
	.byte	0x8
	.4byte	0x3e51acbd
	.4byte	0x3ccc4d7d
	.uleb128 0xc
	.4byte	0x146
	.uleb128 0x23
	.4byte	.LASF81
	.byte	0x1
	.byte	0x28
	.4byte	0x214
	.4byte	0x200000
	.uleb128 0x23
	.4byte	.LASF82
	.byte	0x1
	.byte	0x29
	.4byte	0x6a4
	.4byte	0x1800000
	.uleb128 0xc
	.4byte	0x202
	.uleb128 0x24
	.4byte	.LASF83
	.byte	0x1
	.byte	0x2a
	.4byte	0x214
	.2byte	0x1000
	.uleb128 0x1e
	.4byte	.LASF84
	.byte	0x1
	.byte	0x2e
	.4byte	0x78
	.uleb128 0x1e
	.4byte	.LASF85
	.byte	0x1
	.byte	0x2f
	.4byte	0x78
	.uleb128 0x1e
	.4byte	.LASF86
	.byte	0x1
	.byte	0x30
	.4byte	0x180
	.uleb128 0x1e
	.4byte	.LASF87
	.byte	0x1
	.byte	0x31
	.4byte	0x170
	.uleb128 0x1e
	.4byte	.LASF88
	.byte	0x1
	.byte	0x33
	.4byte	0x78
	.uleb128 0x1e
	.4byte	.LASF89
	.byte	0x1
	.byte	0x34
	.4byte	0x16a
	.uleb128 0x25
	.4byte	.LASF91
	.byte	0x1
	.byte	0x3d
	.4byte	0xd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sock
	.uleb128 0x25
	.4byte	.LASF92
	.byte	0x1
	.byte	0x3d
	.4byte	0xd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	csock
	.uleb128 0x25
	.4byte	.LASF93
	.byte	0x1
	.byte	0x3d
	.4byte	0xd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	initialized
	.uleb128 0x25
	.4byte	.LASF94
	.byte	0x1
	.byte	0x3e
	.4byte	0x234
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	client
	.uleb128 0x25
	.4byte	.LASF95
	.byte	0x1
	.byte	0x3f
	.4byte	0x234
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	server
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x1c
	.uleb128 0x5
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
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB74-.Ltext0
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
	.4byte	.LFE74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB75-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB76-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 4224
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB77-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 4224
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB78-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 4216
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB79-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x1f4
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB80-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB81-.Ltext0
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
	.4byte	.LFE81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF90:
	.string	"wgPipe"
.LASF24:
	.string	"WGPipe"
.LASF99:
	.string	"_wgpipe"
.LASF59:
	.string	"text"
.LASF21:
	.string	"bool"
.LASF0:
	.string	"int8_t"
.LASF36:
	.string	"sa_len"
.LASF5:
	.string	"short int"
.LASF25:
	.string	"size_t"
.LASF45:
	.string	"clientlen"
.LASF96:
	.string	"GNU C++ 4.6.3"
.LASF4:
	.string	"int16_t"
.LASF97:
	.string	"d:/Data/Nintendo/DoomGXSchratch/src/main.cpp"
.LASF100:
	.string	"Sys_ClockTicksPerSecond"
.LASF56:
	.string	"_Z8Sys_Quitv"
.LASF84:
	.string	"arena1Size"
.LASF87:
	.string	"stack"
.LASF98:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGXSchratch\\\\build"
.LASF67:
	.string	"Sys_WaitPress"
.LASF62:
	.string	"_Z15Sys_DebugPrintfPKcz"
.LASF44:
	.string	"va_list"
.LASF81:
	.string	"stacksize"
.LASF1:
	.string	"uint8_t"
.LASF76:
	.string	"_Z17Sys_GetClockTicksv"
.LASF58:
	.string	"_Z10Sys_PrintfPKcz"
.LASF95:
	.string	"server"
.LASF31:
	.string	"sin_family"
.LASF101:
	.string	"_Z23Sys_ClockTicksPerSecondv"
.LASF30:
	.string	"sin_len"
.LASF17:
	.string	"float"
.LASF54:
	.string	"Sys_Quit"
.LASF11:
	.string	"long long int"
.LASF16:
	.string	"vs32"
.LASF82:
	.string	"heap_size"
.LASF26:
	.string	"long int"
.LASF92:
	.string	"csock"
.LASF33:
	.string	"sin_addr"
.LASF3:
	.string	"unsigned char"
.LASF69:
	.string	"gcpress"
.LASF13:
	.string	"vu16"
.LASF72:
	.string	"dtime"
.LASF2:
	.string	"signed char"
.LASF74:
	.string	"Sys_GetClockTicks"
.LASF12:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint32_t"
.LASF77:
	.string	"Sys_SetFatalError"
.LASF10:
	.string	"unsigned int"
.LASF6:
	.string	"uint16_t"
.LASF29:
	.string	"s_addr"
.LASF64:
	.string	"Sys_Error"
.LASF78:
	.string	"_Z17Sys_SetFatalErrorPKc"
.LASF71:
	.string	"time"
.LASF75:
	.string	"_Z16Sys_Millisecondsv"
.LASF38:
	.string	"sa_data"
.LASF86:
	.string	"thread"
.LASF7:
	.string	"short unsigned int"
.LASF23:
	.string	"lwp_t"
.LASF43:
	.string	"reg_save_area"
.LASF41:
	.string	"reserved"
.LASF14:
	.string	"vu32"
.LASF50:
	.string	"Sys_WriteSocket"
.LASF52:
	.string	"_Z15Sys_WriteSocketPc"
.LASF20:
	.string	"char"
.LASF53:
	.string	"Sys_CloseLogTerminal"
.LASF61:
	.string	"Sys_DebugPrintf"
.LASF8:
	.string	"int32_t"
.LASF88:
	.string	"local_argc"
.LASF46:
	.string	"localip"
.LASF55:
	.string	"_Z20Sys_CloseLogTerminalv"
.LASF80:
	.string	"TB_TIMERCLOCK_SEC_INV"
.LASF47:
	.string	"gateway"
.LASF85:
	.string	"arena2Size"
.LASF70:
	.string	"wmpress"
.LASF89:
	.string	"local_argv"
.LASF15:
	.string	"vs16"
.LASF22:
	.string	"long unsigned int"
.LASF68:
	.string	"_Z13Sys_WaitPressv"
.LASF19:
	.string	"vf32"
.LASF57:
	.string	"Sys_Printf"
.LASF34:
	.string	"sin_zero"
.LASF60:
	.string	"argptr"
.LASF51:
	.string	"_Z21Sys_AcceptLogTerminalv"
.LASF83:
	.string	"MAX_CHARS_SYSPRINTF"
.LASF63:
	.string	"size"
.LASF32:
	.string	"sin_port"
.LASF94:
	.string	"client"
.LASF65:
	.string	"_Z9Sys_ErrorPKcz"
.LASF48:
	.string	"netmask"
.LASF40:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF37:
	.string	"sa_family"
.LASF39:
	.string	"__gnuc_va_list"
.LASF27:
	.string	"in_addr"
.LASF66:
	.string	"error"
.LASF18:
	.string	"double"
.LASF35:
	.string	"sockaddr"
.LASF79:
	.string	"frameNum"
.LASF93:
	.string	"initialized"
.LASF49:
	.string	"Sys_AcceptLogTerminal"
.LASF28:
	.string	"sockaddr_in"
.LASF73:
	.string	"Sys_Milliseconds"
.LASF91:
	.string	"sock"
.LASF42:
	.string	"overflow_arg_area"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
