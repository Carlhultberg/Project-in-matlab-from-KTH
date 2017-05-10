function [t_ut,y_ut]=RKstep(f,t,y,h)
% Ett steg av Runge-Kuttas metod (RK4)
    s1=h*f(t,y);
    s2=h*f(t+h/2,y+s1/2);
    s3=h*f(t+h/2,y+s2/2);
    s4=h*f(t+h,y+s3);
    y_ut=y+(s1+2*s2+2*s3+s4)/6;
    t_ut=t+h;
end
