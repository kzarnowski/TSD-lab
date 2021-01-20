close all; clear; clc;

t = -3:0.01:3;
x=1.5*(abs(t)<=2);

FX = ones(size(t));
for n=1:100
    an = 3*sin(2*n*pi/3)/(n*pi);
    FX = FX+an*cos(n*pi*t/3); 
end

plot(t,x,'.g',t,FX,'k');

%%
close all; clear; clc;

t=-4:0.01:4;
x=(-1*(abs(t)>2))+(2-abs(t)).*(abs(t)<=2);

FX=zeros(size(t));
for n=1:1000
    an = 2*sin(n*pi/2)/(n*pi)-8*(cos(n*pi/2)-1)/(n^2*pi^2);
    FX = FX + an*cos(n*pi*t/4);
end

plot(t,x,'.g',t,FX,'k');

%%
close all; clear; clc;

t = 0:0.01:8;
x = (t>=2 & t<4) + 2*(t>=4 & t<6) + 3*(t>=6 & t<=8);
plot(t,x);

FX = 1.5*ones(size(t));
for n=1:100
    an = (-sin(3*pi*n/2) + 3*sin(2*pi*n) - sin(pi*n/2))/(pi*n);
    bn = (cos(3*pi*n/2) - 3*cos(2*pi*n) + cos(pi*n/2) + (-1)^n)/(pi*n);
    FX = FX + an * cos(n*pi*t/4) + bn * sin(n*pi*t/4);
end

plot(t,x,'.g', t,FX,'k');

%%
t = -2:0.01:2;
x = (2*t+3).*(t<-1) + (abs(t)<=1) + (2*t-1).*(t>1);
plot(t,x);

FX = ones(size(t));
for n=1:100
    bn = (4*(2*n*pi*cos(n*pi/2)-3*n*pi*cos(n*pi) - 2*sin(n*pi/2) + 2*sin(n*pi))/(n^2*pi^2));
    FX = FX + bn * sin(n*pi*t/2);
end
plot(t,x,'.g', t,FX,'k');
    








