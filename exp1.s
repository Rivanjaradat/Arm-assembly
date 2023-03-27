 AREA RESET, DATA, READONLY
 EXPORT __Vectors
__Vectors 
 DCD 0x20001000 ; stack pointer value when stack is empty
;The processor uses a full descending stack. 
;This means the stack pointer holds the address of the last 
;stacked item in memory. When the processor pushes a new item 
;onto the stack, it decrements the stack pointer and then 
;writes the item to the new memory location.
 DCD Reset_Handler ; reset vector
 
 ALIGN
	 AREA MYCODE, CODE, READONLY
 ENTRY
 EXPORT Reset_Handler
Reset_Handler
;;;;;;;;;;User Code Starts from the next line;;;;;;;;;;;;
 MOV R0, #12
STOP 
 ADD R0, R0, #4
 B STOP
 END ;End of the program
