%% sygnał prostokątny

close all; clear; clc;
Fs = 10000;
t = 0:(1/Fs):6;
x = 3*(t>=2 & t<=4);
plot(t,x);
ylim([-0.5, 3.5]);
mean(x)
sum(x.^2)/Fs

%% sygnał trójkątny

close all; clear; clc;
Fs = 100;
t = -4:(1/Fs):4;
x = 3*(1-abs(t)/2).*(abs(t)<2);
plot(t,x);
mean(x)
sum(x.^2)/Fs

%% sygnał harmoniczny
% x(t) = Amp(t)*sin(2*pi*f(t)*t + phi(t));
close all; clear; clc;

Fs = 100;
t = 0:(1/Fs):10;
x = (1+2*(t/10)).*sin(2*pi*t/0.5);
plot(t,x);

%% sinc
% sinc(t) = 1 dla t=0, sin(t)/t dla t!=0
% MatLAB: [sin(pi*t)]/[pi*t]
close all; clear; clc;

t=-5:0.01:5;
x=sinc(t);
plot(t,x);
mean(x)

%% funkcja znaku - sgn (sign)
% -1 dla t<0, 0 dla t=0, 1 dla t>0
close all; clear; clc;

t=-5:0.01:5;
x=sign(t);
plot(t,x);

%% Heaviseade - inaczej f. przyczynowa, startu
% 0 dla t<t0, 1 dla t>= t0
close all; clear; clc;

t=-5:0.01:5;
x=(t>=0);
plot(t,x);

%% Delta Diraca
close all; clear; clc;

t=-5:0.01:5;
x=(t==0);
plot(t,x);

%% sza, grzebieniowa
close all; clear; clc;

t=-5:0.01:5;
x=(mod(t,1)==0);
y=sinc(0.7*t);
plot(t,x.*y);

%% grzebieniowa z krokiem niebędącym liczbą całk.
close all; clear; clc;

t = -5:0.01:5;
t2 = -500:1:500;
x = (mod(t,0.1)==0);
x2 = (mod(t2,10)==0);
y = sinc(0.7*t);
plot(t,x2.*y);

%% krzywa Gaussa
close all; clear; clc;

% amp=1.5, sr=-1, odch=2
Fs = 50;
t = -10:(1/Fs):10;
x = 1.5*exp((-((t+1)).^2)/(2*(2.^2)));
plot(t,x);

