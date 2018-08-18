;Assume P1 as the input port connected to a temperature sensor. Write a program to read the temperature and test it for a value of 30 degree celsius
;depending on the test results place the temperature value in three different registers
;logic:30d=1Eh and comparison yields either of the three results -- > or < or =

org 0000h
	clr c                  ;clear carry flag which would be modified later
	mov p1,#0ffh           ;p1 configured as input
	mov a,p1               ;temperature value taken in accumulator
	subb a,#1eh            ;subtraction with 30d so as to compare
	jz M1                  ;temp = 30d
	jc M2                  ;temp < 30d
	mov r3,p1              ;action for temp > 30d
	sjmp finish            ;directly move to the end of the program after performing desired action
 M1:mov r2,#1eh            ;action for temp = 30d
	sjmp finish            ;directly move to the end of the program after performing desired action
 M2:mov r4,p1              ;action for temp < 30d
finish:
end
	 
	
	