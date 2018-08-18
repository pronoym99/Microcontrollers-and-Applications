;program to copy the contents of DPTR to registers R0(DPH) and R1(DPL)

org 0000h
	mov r0,dph     ;data in dph moved to r0
	mov r1,dpl     ;data in dpl moved to r1
end