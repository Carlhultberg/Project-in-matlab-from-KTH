pv = []; %vector
x = 0; 
a =[-0.0727, 1.3652, 1.6948]; %coefficients from vandermonde
func = @(x) a(3) + a(2)*x + a(1)*x^2;

%loop which iterates and saves the y-position for every x in R from 1 to 20.
for x = 1:20
   y = func(x);
   pv = [pv, y];
end
pv;
plot(pv); 
