func = @(kastv) varpanB(kastv) - 20;
 
 x0=1.3;
 x1=1.4;
 TOL=1e-6;
 h=inf;
 k=0;
 while (abs(h)>TOL)
   h=((x1-x0)/(func(x1)-func(x0)))*func(x1);
   x2=x1-h;
   x0=x1;
   x1=x2;
   h;
   k=k+1; 
   if(mod(k, 100) == 0)
         x1
         x2
   end
 end 
x1;
x2;


%varpanA(0.7690)
