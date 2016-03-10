#include <stdio.h>
int euclid(int m, int n)
{
  if( n > 0) return euclid(n, m % n);
  else return m;
}
int main()
{
  int gcd = euclid(558,198);
  printf("%i\n",gcd);
  return 0;
}

