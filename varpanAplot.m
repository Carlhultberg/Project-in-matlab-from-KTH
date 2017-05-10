function [output] =  varpanA(angle)

k_x = 0.020;
k_y = 0.065;

%f = @(t,uvv) [-k_x*uvv(1)*sqrt(uvv(1)+uvv(2))^2, -9.81-k_y*uvv(2)*sqrt(uvv(1)+uvv(2))^2];
f = @(t,uvv) [-k_x*uvv(1)*sqrt(uvv(1)^2+uvv(2)^2), -9.81-k_y*uvv(2)*sqrt(uvv(1)^2+uvv(2)^2)];
angle = 1.2139;


%start angle giving correct length 0.5819
%start angle giving correct length 1.2139

uvv = [sin(angle)*19, cos(angle)*19];


y = 1.5;
x = 0;
t_new = 0;
t = 0;
h= 0.001;
for i = 1:10000
    axis([0 20 0 10])
    plot([x],[y],'*-')
    hold on
    
    [t_new, uvv_new] = RKstep(f,t,uvv,h);
    t = t_new;
    uvv = uvv_new;
    y = y + uvv(2)*h;
    x = x + uvv(1)*h;
    if  y < 0
        break
    end
    
end

output = x

