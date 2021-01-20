close all; clear; clc

x=[1+1i, -2, 1i, 2-1i];
y=[2-1i,1i,1];
xcorr(x,y)

%%
close all; clear; clc

Fs = 100;
t = 0:(1/Fs):10;

x1 = 1*(1-abs(t-3)/2).*(abs(t-3)<2);
x2 = 0.9*(1-abs(t-8)).*(abs(t-8)<1);
xc = xcorr(x1,x2);

tc=-10:(1/Fs):10;
subplot(2,1,1), plot(t,x1,'r',t,x2,'g');
subplot(2,1,2), plot(tc,xc);

%%
close all; clear; clc

a=load('lab4/corr_02.txt');
t=a(:,1)';
x=a(:,2)';
dt=t(2)-t(1);
tc=-200:dt:200;
% znaleźć początek sygnały prostokątnego szer.=14s, amp=0.7
tp=0:dt:14;
s1 = 0.7*ones(size(tp));
%xc=xcorr(x,s1);

%nr=find(xc==max(xc(:)),3,'first');
%tc(nr);

%subplot(211), plot(t,x,'r',tp,s1,'.g');
%subplot(212), plot(tc,xc);

t2 = 0:dt:10;
s2 = (1-abs(t2-5)/5);
xc = xcorr(x,s2)+xcorr(1-x,1-s2);

%subplot(211), plot(t,x,'r',t2,s2,'.g');
%subplot(212), plot(tc,xc);
nr = find(xc==max(xc(:)),3,'first');
tc(nr);


t3 = 0:dt:9;
%s3 = (1-abs(t3-9)/9);
s3 = mod(t3,9)/9;
%plot(t3,s3);

xc = xcorr(x.^3,s3.^3);
nr = find(xc==max(xc(:)),3,'first');
tc(nr)
subplot(211), plot(t,x.^3,'r',t3,s3.^3,'.g');
subplot(212), plot(tc,xc);

%%
close all; clear; clc

a = load('lab4/sejs_2.txt');
%imagesc(a');

x = (0:23)*25;
Fs = 400;
t = (0:511)/Fs;

imagesc(t,x,a');

tc = (-511:511)/Fs;
fb = ones(23,1);

for k=1:23
    xc = xcorr(a(:,k+1),a(:,1));
    fb(k,1) = find(xc==max(xc(:)), 3, 'first');
    fb(k,1) = tc(fb(k,1));
end

v2=(1:23)*25./fb';
mean(v2)







