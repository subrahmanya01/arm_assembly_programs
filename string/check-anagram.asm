;===============================================================================
; Problem Statement:
; Sort a string into alphabetical order to help check if two strings are
; anagrams. The program implements bubble sort on characters of a string.
;
; Input:
; Memory at 'array' - Input string terminated with carriage return (0x0D)
; R0 - Pointer to input string
; R2 - Destination address (0x40000000) for sorted string
;
; Output:
; Memory at 0x40000000 - Sorted string
; Characters are arranged in ascending ASCII order
;
; Test Cases:
; Test Case 1:
; Input: "array"
; Expected Output: "aarry"
;
; Test Case 2:
; Input: "hello"
; Expected Output: "ehllo"
;===============================================================================
dl EQU 0x0d
	AREA aa,CODE,READONLY
	entry
	ldr  r0,=array
	ldr r2,=0x40000000
	mov r3,#00         ;stores the length
	
	ldr r4,=0x40000000 ; outer loop pointer
	mov r5,#00          ;inner loop pointer
	bl length
    

stop b stop
outerloop
         ldrb r7,[r4]
         add r5,r4,#1
		 
innerloop
         ldrb r6,[r5],#1
		 cmp r6,#dl
		 beq out
		 cmp r7,r6
		 blgt swap
		 bal innerloop
		 
out		 ldrb r8,[r4,#1]
		 cmp r8,#dl
		 beq stop
		 add r4,r4,#1
		 bal outerloop
        
         mov pc,lr
	


length ldrb r1,[r0],#1
       strb r1,[r2],#1
        cmp r1,#dl
		beq outerloop
		bal length
		mov pc,lr
		
swap   
       sub r5,r5,#1
	   strb r6,[r4]
	   strb r7,[r5]
	   add r5,r5,#1
	   mov pc,lr
stp b stp	   
array  DCB  "array",dl
	   end