 AREA RESET, DATA, READONLY
 EXPORT __Vectors
__Vectors 
 DCD 0x20001000 
 DCD Reset_Handler ; reset vector
 
 ALIGN
	 AREA MYCODE, CODE, READONLY
 ENTRY
 EXPORT Reset_Handler
Reset_Handler
 MOV R2, #0x01 ; R2 = ?
 MOV R3, #0x02 ; R3 = ?
;Other examples to move immediate values
 MOV R5, #0x3210 ; R5 = ?
 MOVT R5, #0x7654 ; R5 = ?
 MOV32 R6, #0x87654321 ; R6 = ?
 LDR R7, = 0x87654321 ; R7 = ?
 ADD R1,R2,R3 ; R1 = ?
 MOV32 R3, #0xFFFFFFFF ; R3 = ?
 ADDS R1,R2,R3 ; R1 = ? 
; specify Condition Code updates
 SUBS R1,R2,R3 ; R1 = ? 
; specify Condition Code updates
 MOV R4, #0xFFFFFFFF ; R4 = ?
 ADD R1,R2,R4 ; R1 = ? 
; How did that operation affect the flags in CPSR?
 ADDS R1,R2,R4 ; R1 = ? 
; Please specify Condition Code updates
; and now what happened to the flags in the CPSR?
 MOV R2, #0x00000002 ; R2 = ?
 ADDS R1,R2,R4 ; R1 = ?
; again, what happened to the flags?
 MOV R2, #0x00000001 ; R2 = ?
 MOV R3, #0x00000002 ; R3 = ?
 ADDS R1,R2,R3 ; R1 = ? 
; Add some small numbers again
; and check the flags again......
; Add numbers that will create an overflow
 MOV R2, #0x7FFFFFFF ; R2 = ?
 MOV R3, #0x7FFFFFFF ; R3 = ?
 ADDS R1,R2,R3 ; R1 = ? 
; Check the flags in the CPSR?
 END
