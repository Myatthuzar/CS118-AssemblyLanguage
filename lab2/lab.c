#include <stdio.h>
#define x 2 		// symbolic constant //int x = 2;
const int y = 3;	//global named (typed) constant
int t; 			//bss
int w =6; 		// data
int main()
{
  register z = 4;	//register 
  int r = x + y + z;	//stack
  static int s =5; 	//static local in data segment 
  r +=s;
  r += w;
  printf("r=%i\n",r);	
  return 0;		
}

