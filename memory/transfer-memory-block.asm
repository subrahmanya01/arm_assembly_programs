;===============================================================================
; Problem Statement:
; Transfer a block of data from one memory location to another while clearing
; the source location. Implements a basic memory move operation.
;
; Input:
; R0 - Source memory address (0x40000000)
; R1 - Destination memory address (0x40000008)
; R3 - Clear value (0x00)
;
; Output:
; Memory at source (R0) - Cleared to 0x00
; Memory at destination (R1) - Contains data from source
;
; Test Cases:
; Test Case 1:
; Input: Memory at 0x40000000 contains 0x12345678
; Expected Output: 
; - Memory at 0x40000000 = 0x00000000
; - Memory at 0x40000008 = 0x12345678
;
; Test Case 2:
; Input: Memory at 0x40000000 contains 0xFFFFFFFF
; Expected Output:
; - Memory at 0x40000000 = 0x00000000
; - Memory at 0x40000008 = 0xFFFFFFFF
;===============================================================================
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x40000000    ;Base adress of the bloack adress of data to be transferred
	ldr r1,=0x40000008    ;the adress which stores the transfered data
	mov r3,#0x00
	ldr r2,[r0]
	str r3,[r0]
	str r2,[r1]
stop b stop
    end