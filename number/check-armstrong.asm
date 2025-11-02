;===============================================================================
; Problem Statement:
; Check if a given number is an Armstrong number. A number is Armstrong if the
; sum of its digits each raised to the power of the total number of digits
; equals the number itself.
;
; Input:
; R0 - Number to check
; R1 - Memory address (0x40000000) to store number
; R6 - Counter for number of bytes (4)
;
; Output:
; R7 - Result flag: 0xFF if number is Armstrong, unchanged if not
; R5 - Sum of cubes of digits
;
; Test Cases:
; Test Case 1:
; Input: R0 = 0x00000173 (371 in decimal)
; Expected Output: R7 = 0xFF (Is Armstrong: 3³ + 7³ + 1³ = 371)
;
; Test Case 2:
; Input: R0 = 0x00000064 (100 in decimal)
; Expected Output: R7 unchanged (Not Armstrong: 1³ + 0³ + 0³ ≠ 100)
;===============================================================================
	  AREA aa,CODE,READONLY
	  entry
	  ldr r0,=0x00000173
	  ldr r1,=0x40000000
	  str r0,[r1]
	  mov r5,#00    
      mov r6,#0x04	  
	  bl main
	  
stop   b stop	  
main   ldrb r2,[r1],#1
       mov r3,r2
	   and r2,r2,#0x0000000F     ;masking of lower 4 bits of byte
	   mov r4,r2
	   mul r4,r2,r4
	   mul r4,r2,r4
	   
	   add r5,r5,r4
	   
	   mov r2,r3
	   and r2,r2,#0x000000F0     ;Masking of upper 4 bits of byte
	   mov r2,r2,lsr #4
	   mov r4,r2
	   mul r4,r2,r4
	   mul r4,r2,r4
	   
	   add r5,r5,r4
	   
	   subs r6,r6,#1
	   bne main
	   
	   cmp r5,r0
	   moveq r7,#0xFF     ;If the given number is armstrong number then r7 stores 0xFF
	   
	   mov pc,lr
	  

	   end