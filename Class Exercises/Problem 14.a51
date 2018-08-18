;problem to convert a packed BCD number into an ASCII no. and store the result in R5-R6=LSB-MSB
;logic: convert the packed bcd into unpacked bcd and add 30h to the individual unpacked parts

org 0000h
	mov r1,#29h     ;N=29h (packed bcd)
	mov a,r1        ;a contains 29h
	swap a          ;a contains 92h
	anl a,#0fh      ;a contains 02h
	add a,#30h      ;a contains 32h
	mov r6,a        ;r6 contains msb of ascii code
	mov a,r1        ;a contains 29h
    anl a,#0fh      ;a contains 09h
    add a,#30h      ;a contains 39h
    mov r5,a     	;r5 contains lsb of ascii code
end