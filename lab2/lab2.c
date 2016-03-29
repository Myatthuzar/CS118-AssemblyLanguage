#include <stdio.h>
#define x 2 		
const int y = 3;	
int t; 			
int w =6; 		
int main()
{
  register int z = 4;	
  int r = x + y + z;	
  static int s =5; 	
  r +=s;
  r += w;
  printf("r=%i\n",r);	
  return 0;		
}
