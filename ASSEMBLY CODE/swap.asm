	AREA RESET,CODE,READONLY
	ENTRY
start
	LDR R0,=value
	LDR R2,[R0]
	LDR R5,swap
	AND R1,R2,R5
	MOV R2,R2,LSL#0X08
	AND R2,R2,R5
	MOV R1,R1,LSR#0X08
	ADD R3,R1,R2

	SWI &11
value 	DCD &ABCD
swap	DCD &0000FF00
	end  