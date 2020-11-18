%% sygnały
close all; clear; clc;

% x1: harm. o malejącej amplitudzie (1.2 -> 0.8), f=4Hz, t=<-10,-5>
% x2: trójkątny, tw=-1, amp=pi/2, szer=5
% x3: Gaussa, sr=6, odch=0.8, amp=sqrt(2), t>2

Fs = 50;
t = -10:(1/Fs):10;
x1 = (1.2-0.4*(t+10)/5).*sin(2*pi*4*t).*(t<=-5);
x2 = (pi/2)*(1-abs(t+1)/2.5).*(abs(t+1)<2.5);
x3 = sqrt(2)*exp(-(t-6).^2/2*0.8*0.8);
x=x1+x2+x3;
subplot(4,1,1), plot(t,x1);
subplot(4,1,2), plot(t,x2);
subplot(4,1,3), plot(t,x3);
subplot(4,1,4), plot(t,x);

%% splot / convulsion
close all; clear; clc;
x = [2, -1, 0, 3];  % Nx =4
y = [-2, -1, 1];    % Ny =3
conv(x,y,'full');   % N* = Nx+Ny-1
conv(x,y,'same');    % N* = Nx

a = [3+1i, -2, 1i, 2];
b = [-1, 2i, 3-1i];
conv(a,b)

%%
close all; clear; clc;
Fs = 100;
t = -5:(1/Fs):5;
x = 2*(abs(t)<1);
sp = conv(x,x,'same')/Fs;
plot(t,x,'r',t,sp,'g');
% A^2(2x-|t|) = 4*2 = 8 

% 2 przypadki gdy nie dzielimy przez Fs:
%% 1) suma(y)=1 lub suma(y)=0

Fs = 100;
t = -5:(1/Fs):5;
x = 1*(1-abs(t)/2).*(abs(t)<=2);
S = 1;
y = ones(1,round(S*Fs));
y = y/sum(y(:));
sp = conv(x,y,'same');
plot(t,x,'r',t,sp,'g');











