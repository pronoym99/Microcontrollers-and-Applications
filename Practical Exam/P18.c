#include <reg51.h>

//define your data bus
#define data_bus P1

//define your control pins
sbit en=P2^0;
sbit rs=P2^1;
sbit rw=P2^2;

//declare all your functions here
void cmd(char);
void init();
void write_data(char);
void disp_string(char S[]);
void delay(int);

void cmd(char cmd)
{
   rs=0;						// RS = 0 for Command.
   rw=0;						// RW = 0 for write.
   data_bus=cmd;    // 8bit command to LCD.
   en=1;						// Send a High-to-Low Pusle at Enable Pin.
	 delay(2);
   en=0;
   delay(2);
}

void init()
{
	 delay(5);
   cmd(0x38);	      //Initilize the LCD in 8bit Mode
   cmd(0x0E);	      // Display ON cursor ON
   cmd(0x01);	      // Clear the LCD
   cmd(0x80);	      // Move the Cursor to First line First Position
}

void write_data(char dat)
{
   rs=1;						// RS = 1 for Data.
   rw=0;						// RW = 0 for write.
   data_bus=dat;    // 8bit command to LCD.
   en=1;						// Send a High-to-Low Pusle at Enable Pin.
	 delay(2);
   en=0;
   delay(2);
}

void disp_string(char S[])
{
   char i;
   for(i=0;S[i]!='\0';i++)
    write_data(S[i]);
}

void delay(int d)
{
	int i,j;
  for(i=0;i<d;i++)
    for(j=0;j<127;j++);
}

void main()
{
	while(1)
	{
		init();
		delay(1000);
		disp_string("PRONOY MANDAL");
	}
}
		
