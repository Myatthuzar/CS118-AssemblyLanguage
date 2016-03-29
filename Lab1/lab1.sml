fun annual_fuel_consumed(ppg,mpy,mpg) = ppg*mpy div mpg;
val ppg = 3; val mpy = 15000; val mpg = 45;
val fuel = annual_fuel_consumed(ppg,mpy,mpg);
val years = 10; 
fun operating_cost(fc) = years * fc;
val cost = operating_cost(fuel);
val pp = 25000; 
fun total_cost(oc) = pp + oc;
val total = total_cost(cost);
