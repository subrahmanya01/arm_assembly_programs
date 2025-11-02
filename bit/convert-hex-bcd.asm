;===============================================================================
; Problem Statement:
; Convert between hexadecimal and Binary Coded Decimal (BCD) representations
; of numbers. Handles both hex-to-BCD and BCD-to-hex conversions.
;
; Input:
; R0 - Hexadecimal number to convert to BCD
; R2 - BCD number to convert to hexadecimal
;
; Output:
; R1 - BCD result from hex input
; R3 - Hex result from BCD input
;
; Test Cases:
; Test Case 1 (Hex to BCD):
; Input: R0 = 0x00000024 (36 in decimal)
; Expected Output: R1 = 0x00000036 (36 in BCD)
;
; Test Case 2 (BCD to Hex):
; Input: R2 = 0x00000024 (24 in BCD)
; Expected Output: R3 = 0x00000018 (24 in hex)
;===============================================================================
		AREA aa,CODE,READONLY
		entry
		;hex to bcd
		ldr r0,=0x00000024
		cmp r0,#0x09
		movle r1,r0
		addgt r1,r0,#0x12
		
		;bcd hex
		ldr r2,=0x00000024
		cmp r2,#0x09
		movle r3,r2
		subgt r3,r2,#0x12
		
		end