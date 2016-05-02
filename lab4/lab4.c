#include <stdio.h>
typedef enum {false,true} bool;
float sqr (float x) {return x * x;}
bool odd(int x) {return x % 2 == 1;}
float power (float r, int p)
{
	if (p == 0) return 1.0;
	else if (odd(p)) return r * power (r,p-1);
	else return sqr (power (r,p/2));
}
int main()
{
	printf("%f\n", power(2.0,9));
}
