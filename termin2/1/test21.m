close all; clear; clc;
% zad 2

a = load('termin2/1/korel_202.txt');
t = a(:,1);
x = a(:,2);
dt = t(2) - t(1);
tc = -54:dt:54;
plot(t,x);
% 1) POCZĄTEK OBU SYGNAŁÓW TRÓJKĄTNYCH A = 1.35, S = 5;

t1 = 0:dt:5;
s1 = 1.35*(1-abs(t1-2.5)/2.5);
xc = xcorr(s1,x) + xcorr(1-s1,1-x);
nr = find(xc == max(xc(:)), 3, 'first');
tc(nr)

%subplot(211), plot(t,x,'r',t1,s1,'g');
%subplot(212), plot(tc,xc);


% 2) POCZĄTEK SYGNAŁU PROSTOKĄTNEGO A = 0.95, S = 4;
t2 = 0:dt:4;
s2 = 0.95*ones(size(t2));
%plot(t2,s2);

xc = xcorr(s2,x);

nr = find(max(xc(:))==xc, 3, 'first');
x(nr);
tc(nr)

%subplot(211), plot(t,x,'r',t2,s2,'g');
%subplot(212), plot(tc,xc);

% 3) ŚRODEK SYGNAŁU GAUSSA, A = 1.3, ODCH = 0.75;

t3 = -3:dt:4.5;
s3 = 1.3*exp((-(t3-0.75).^2)/2*0.75*0.75);
%plot(t3,s3);




