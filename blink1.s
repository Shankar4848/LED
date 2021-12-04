#include <lpc214x.h>
unsigned int delay;
int main(void)
{
  IO0DIR = (1<<10);   // Configure P0.10 as Output
  
  while(1)
  {
    IO0CLR = (1<<10);    // CLEAR (0) P0.10 to turn LED ON
    for(delay=0; delay<500000; delay++); // delay
    IO0SET = (1<<10);    // SET (1) P0.10 to turn LEDs OFF
    for(delay=0; delay<500000; delay++); // delay
  }
}