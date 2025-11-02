;===============================================================================
; Problem Statement:
; Check if a given string is a palindrome (reads the same forwards and
; backwards) by comparing characters from both ends moving towards center.
;
; Input:
; Memory at 'array' - Input string terminated with carriage return (0x0D)
; R0, R1 - Pointers to start of string for reverse and forward traversal
;
; Output:
; R5 - Result flag: 0xFF if not palindrome, unchanged if palindrome
; R2 - Length of string (used for calculations)
;
; Test Cases:
; Test Case 1:
; Input: "AABB"
; Expected Output: R5 = 0xFF (Not a palindrome)
;
; Test Case 2:
; Input: "MADAM"
; Expected Output: R5 unchanged (Is a palindrome)
;===============================================================================
cr EQU 0x0d
	AREA aa,CODE,READONLY
	entry
	ldr r0,=array
	ldr r1,=array
	mov r2,#0x00     ;Stores the length of the string
	bl length
	sub r2,r2,#1
	mov r2,r2,lsr #1
	ldrb r3,[r0],#-1
	ldrb r3,[r0],#-1
main  
    ldrb r4,[r1],#1
	ldrb r3,[r0],#-1
	cmp r4,r3
	bne store
	subs r2,r2,#1
	bne main
stop1 b stop1	
length 
       ldrb r3,[r0],#1
	   add r2,r2,#1
	   cmp r3,#cr
	   moveq pc,lr
	   bal length	
store 
     mov r5,#0xFF    ;R5 stores FF if the given string is not palindrom
stop b stop	
array DCB "AABB",cr
	end