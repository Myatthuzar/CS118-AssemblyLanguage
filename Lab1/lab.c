#include <stdio.h>
int eax; int ebx; int ecx;
int fuel; int cost; int total;

//int annual_fuel_consumed(int ppg,int mpy,int mpg)
//{return ppg* mpy/mpg;}
void annual_fuel_consumed2(){eax = eax * ebx / ecx;}
#define years 10

//int operating_cost(int fc) {return years * fc;}
void operating_cost2() {eax = years * eax;}
#define pp 25000

//int total_cost(int oc) {return pp + oc;}
int total_cost2() {return pp+ eax;}

#define ppg 3
#define mpy 15000
#define mpg 45

int main()
{
	//fuel = annual_fuel_consumed(ppg,mpy,mpg);
	eax = ppg;
	ebx = mpy;
	ecx = mpg;
	//cost = operating_cost(fuel);
	annual_fuel_consumed2();
	eax = fuel;
	//cost = operating_cost2();
	operating_cost2(); //assume return value is in eax
	//cost = eax;
	//total = total_cost(cost);
	//eax = cost;
	total = total_cost2();
	printf("Total cost of car: %i\n",total);
	return 0;
}
