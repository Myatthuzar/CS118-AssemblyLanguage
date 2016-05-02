fun sqr x : real = x * x;
fun odd x = x mod 2 = 1;
fun power r p = if p = 0 then 1.0;
		else if odd p then r * power r (p-1)
		else sqr (power r (p div 2));
power 2.0 9;

