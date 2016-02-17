datatype Bool = F | T;
fun conjunction(F,x) = F
 | conjunction(T,x) = x;
conjunction(F,F);
conjunction(T,F);
conjunction(F,T);
conjunction(T,T);
val truth_values = [(F,F),(F,T),(T,F),(T,T)];
map conjunction truth_values;
datatype Bool = F | T;
fun disjunction(F,F) = F
| disjunction(T,x) = T
| disjunction(x,T) = T;
disjunction(F,F);
disjunction(T,F);
disjunction(F,T);
disjunction(T,T);
val truth_values = [(F,F),(F,T),(T,F),(T,T)];
map disjunction truth_values;
datatype Bool = F | T;
fun exclusive_or (T,T) = F
 | exclusive_or (F,F) = F
 | exclusive_or (x,y) = T;
exclusive_or(F,F);
exclusive_or(T,F);
exclusive_or(F,T);
exclusive_or(T,T);
val truth_values = [(F,F),(F,T),(T,F),(T,T)];
map exclusive_or truth_values;
datatype Bool = F | T;
fun negation T = F
 | negation F = T;
negation (T);
negation (F);
val truth_values = [F,T];
map negation truth_values;
datatype Bool = F | T;
fun negation T = F
 | negation F = T;
fun exclusive_or (T,T) = F
 | exclusive_or (F,F) = F
 | exclusive_or (x,y) = T;
fun disjunction(F,F) = F
 | disjunction(T,x) = T
 | disjunction(x,T) = T;
fun conjunction(F,x) = F
 | conjunction(T,x) = x;
conjunction(disjunction(T,F),negation(conjunction(T,F)));
exclusive_or(T,F);

datatype Bool = F | T;
fun conjunction (F,F) = F
 | conjunction (F,T) = F
 | conjunction (T,F) = F
 | conjunction (T,T) = T;
val truth_values = [(F,F),(F,T),(T,F),(T,T)];
map conjunction truth_values;

infix AND;
fun p AND q = conjunction (p,q);
T AND F;
