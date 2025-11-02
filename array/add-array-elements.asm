;===============================================================================
; Problem Statement:
; Add corresponding elements of two arrays and store the results in a third array.
; Each array contains 4 32-bit numbers.
;
; Input:
; Memory at 0x40000000 - First array (4 elements)
; Memory at 0x40000010 - Second array (4 elements)
; R7 - Array length (4)
;
; Output:
; Memory at 0x40000020 - Result array storing the sums
;
; Test Cases:
; Test Case 1:
; Input: Array1 = [1, 2, 3, 4], Array2 = [5, 6, 7, 8]
; Expected Output: Result = [6, 8, 10, 12]
;
; Test Case 2:
; Input: Array1 = [0xFFFFFFFF, 2, 3, 4], Array2 = [1, 1, 1, 1]
; Expected Output: Result = [0, 3, 4, 5] (with carry in first addition)
;===============================================================================
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x40000000    ;First array starting adress
	ldr r1,=0x40000010    ;second array starting adress
	ldr r2,=0x40000020    ;starting adress of result array
	mov r7,#0x04          ;length of the array
	bl operation
stop b stop
operation
     ldr r3,[r0],#4
	 ldr r4,[r1],#4
	 add r5,r3,r4
	 str r5,[r2],#4
	 subs r7,r7,#1
	 bne operation
	 mov pc,lr
	
	end