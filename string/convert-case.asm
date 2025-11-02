;===============================================================================
; Problem Statement:
; Convert a string from lowercase to uppercase by subtracting 0x20 from each
; character's ASCII value. Stores the result in a new memory location.
;
; Input:
; Memory at 'array' - Input string in lowercase, terminated with CR (0x0D)
; R0 - Pointer to input string
; R2 - Destination address (0x40000000) for uppercase string
;
; Output:
; Memory at 0x40000000 - Converted uppercase string
; R3 - Length of the string
;
; Test Cases:
; Test Case 1:
; Input: "helloword"
; Expected Output: "HELLOWORD"
;
; Test Case 2:
; Input: "programming"
; Expected Output: "PROGRAMMING"
;===============================================================================
cr  EQU 0x0d
	AREA aa,CODE,READONLY
	entry
	ldr r0,=array	
	ldr r2,=0x40000000
	mov r3,#00         ;Stores the length of the string
	mov r4,r0
	bl find_length
	
	
main  ldrb r1,[r0],#1
      sub r1,r1,#0x20
	  strb r1,[r2],#1
	  subs r3,r3,#1
	  bne main
	  
stop b stop
find_length
      ldrb r5,[r4],#1
	  cmp r5,#cr
	  moveq pc,lr
	  add r3,r3,#1
	  bal find_length
	  
array DCB "helloword",cr
    end