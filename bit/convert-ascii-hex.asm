;===============================================================================
; Problem Statement:
; Convert between hexadecimal and ASCII representations of numbers.
; Handles both hex-to-ASCII and ASCII-to-hex conversions for single digits.
;
; Input:
; R0 - Hex number (0-F) to convert to ASCII
; R3 - ASCII character (30-39 for 0-9, 41-46 for A-F) to convert to hex
;
; Output:
; For Hex to ASCII:
; R1 - ASCII result for numbers (0-9)
; R2 - ASCII result for letters (A-F)
;
; For ASCII to Hex:
; R4 - Hex result for ASCII numbers (30-39)
; R5 - Hex result for ASCII letters (41-46)
;
; Test Cases:
; Test Case 1 (Hex to ASCII):
; Input: R0 = 0x00000005
; Expected Output: R1 = 0x00000035 ('5' in ASCII)
;
; Test Case 2 (ASCII to Hex):
; Input: R3 = 0x0000000F ('F' in hex)
; Expected Output: R5 = 0x0000000F (15 in hex)
;===============================================================================
   AREA aa,CODE,READONLY
   entry
   
   ;hex  to ASCII
   ldr r0,=0x00000075    ; input hex number
   
   cmp r0,#0x09
   addle r1,r0,#0x30
   addgt r1,r0,#0x40
   addgt r2,r0,#0x37
   
   ;ASCII to hex
   
   ldr r3,=0x0000000F    ; input ascii number
   
   cmp r3,#0x09
   suble r4,r3,#0x30
   subgt r4,r3,#0x40
   subgt r5,r3,#0x37
stop b stop
   end