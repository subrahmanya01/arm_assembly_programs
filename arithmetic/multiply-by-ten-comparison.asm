;===============================================================================
; Problem Statement:
; Compare four different methods to multiply a number by 10 in ARM assembly,
; analyzing their execution time and code size differences.
;
; Input:
; R4 - Number to be multiplied by 10
;
; Output:
; R3 - Result of multiplication by 10
;
; Test Cases:
; Test Case 1:
; Input: R4 = 0x00000002
; Expected Output: R3 = 0x00000014 (20 in decimal)
; Method Comparison:
; Method 1 (Loop)    - Time: 0.00000517, Size: 24 bytes
; Method 3 (MUL)     - Time: 0.00000233, Size: 16 bytes
; Method 4 (Shift)   - Time: 0.00000092, Size: 24 bytes
;
; Test Case 2:
; Input: R4 = 0x0000000A
; Expected Output: R3 = 0x00000064 (100 in decimal)
;===============================================================================
	AREA aa,CODE,READONLY
	entry
	
	;METHOD 1 multiplication of r3=10r4
	ldr r4,=0x00000002
	mov r5,#0xA
loop add r3,r3,r4
     subs r5,r5,#1
	 bne loop
	 
	 ;Method 2 
	ldr r4,=0x00000002
	mov r5,#0xA
	 
	 
	 ;Method 3 using mul instruction
	ldr r4,=0x00000002
	mov r5,#0xA
	mul r3,r4,r5
	
	;MEthod 4 using shift instruction
    ldr r4,=0x00000002
	mov r5,#0xA
	mov  r6,r4,lsl #3
	mov r3,r4,lsl #1
	add r3,r3,r6
	 
	 
stop b stop
	end
		
;         |       time    |    size     |
;method 1 |    .00000517  |       24    |
;method 2 |				  |             |
;method 3 |  	.00000233 |       16    |
;method 4 |	    0.00000092|       24    |