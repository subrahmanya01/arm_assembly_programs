;===============================================================================
; Problem Statement:
; Search for a specific character in a string and set a flag when found.
; Program scans through the string until either finding the character or
; reaching the end (CR).
;
; Input:
; Memory at 'array' - Input string terminated with CR (0x0D)
; R0 - Pointer to input string
; R4 - Character to search for (ASCII value)
;
; Output:
; R5 - Result flag: 0xFF if character found, unchanged if not found
;
; Test Cases:
; Test Case 1:
; Input: String = "hello word", Search character = "h"
; Expected Output: R5 = 0xFF (character found)
;
; Test Case 2:
; Input: String = "hello word", Search character = "z"
; Expected Output: R5 unchanged (character not found)
;===============================================================================
cr EQU 0x0d
	AREA aa,CODE,READONLY
	entry
	ldr r0,=array
	ldr r4,="h"		;Stores the charecter wich is to be seacrched in given string
label 
    ldrb r1,[r0],#1
	cmp r1,#cr
	beq stop
	cmp r4,r1
	beq store
	bal label
	
stop b stop
store
     mov r5,#0xFF      ;Register r5 nstores the 0xFF if the searched charecter is found in the given string
array  DCB "hello word",cr   ;Given string
	end