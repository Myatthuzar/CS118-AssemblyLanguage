#include <stdio.h>
int euclid(int m, int n)
{
  if( n > 0) return euclid(n, m % n);
  else return m;
}
int main()
{
  printf("GCD output = %i\n",euclid(558,198));
  return 0;
}
