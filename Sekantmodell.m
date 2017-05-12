%function from Varpan. -20 to count when it hits the ground at 20m
func = @(kastv) varpanA(kastv) - 20;
 
 x0=1.3;  %starting guess
 x1=1.4;   %starting guess
 TOL=1e-6; % tolerans
 h=inf;
 k=0; % iterations
 
  %main loop to find zero values on x-axis
 while (abs(h)>TOL)
   h=((x1-x0)/(func(x1)-func(x0)))*func(x1);
   x2=x1-h;
   x0=x1;
   x1=x2;
   h
   k=k+1; 
   
   % only print every 100th iteration
   if(mod(k, 100) == 0)
         x1
         x2
   end
 end 
x1
x2


%varpanA(0.7690)
