#include <lpc214x.h>

void delay (unsigned int count)
{
  unsigned int value = count*1000;
  while (value--);
}

int main (void)
{
   PINSEL0 = 0;   // setting the pins as GPIO function
   IODIR0 |= (1<<3);   // setting the direction of port0.3 as output
    while (1)   // always true or infinite loop
      {
         IOSET0 |= (1<<3);   // set port0.3 as high
         delay (1000);    // wait for some time
         IOCLR0 |= (1<<3);   // set port0.3 as low
         delay (1000);    // wait for some time
       } 
     return 0;    
}