function [output] =  varpanA(input) 

k_x = 0.020; %input
k_y = 0.065; %input

%f = @(t,uvv) [-k_x*uvv(1)*-sqrt(uvv(1)+uvv(2))^2, -9.81-k_y*uvv(2)*sqrt(uvv(1)+uvv(2))^2];

% main function
f = @(t,uvv) [-k_x*uvv(1)*sqrt(uvv(1)^2+uvv(2)^2), -9.81-k_y*uvv(2)*sqrt(uvv(1)^2+uvv(2)^2)];

angle = 0.5819; % initial throwing angle



uvv = [sin(angle)*19, cos(angle)*19]; % speed in y and x directon

#input values
y = 1.5;
x = 0;
t_new = 0;
t = 0;
h= 0.001;
xv = [];
yv = [];

% loop which iterates a maximum of 10k times but breaks i y is lesser than zero since it has hit the ground then. 
for i = 1:10000
    
   [t_new, uvv_new] = RKstep(f,t,uvv,h);
    t = t_new;
    uvv = uvv_new;
    y = y + uvv(2)*h;
    x = x + uvv(1)*h;
    xv = [xv,x];
    yv = [yv,y];
    %break if it touches the ground
    if  y < 0
        break
    end
end
output = x;

%interpolation 
a = polyfit(xv,yv,2);
a
