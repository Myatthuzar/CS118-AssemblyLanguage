#include <stdio.h>

int eax = 0;

int annual_fuel_consumed(int ppg, int mpy, int mpg)
	{return ppg * mpy/mpg;}
int fuel; int cost; int total;

#define years 10
int operating_cost(int fc) { return years * fc; }
#define pp 25000
int total_cost(int oc) { return pp + oc; }

#define ppg 3
#define mpy 15000
#define mpg 45
int fuel; int cost; int total;
