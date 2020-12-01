clc;
clear;
close all;
fs=8000;
b=1:100;
Ts=1/fs;
dt=0:Ts:1-Ts;
f1=800;
f2=1200;
x1=sin(2*pi*f1*dt);
x2=sin(2*pi*f2*dt);
X=x1+x2;
append=[x1,x2]

%Signal 1 800Hz
nfft1=length(x1)
nfft21=2^nextpow2(nfft1);
ff1=fft(x1,nfft21);
fff1=ff1(1:nfft21/2);
fff1=fff1/max(fff1);
xf1=fs*(0:nfft21/2-1)/nfft21;
subplot(411);plot(xf1,abs(fff1));xlabel('Freq');ylabel('Amplitude');title('SINEWAVE 800Hz');

%Signal 2 1200Hz
nfft2=length(x2)
nfft22=2^nextpow2(nfft2);
ff2=fft(x2,nfft22);
fff2=ff2(1:nfft22/2);
fff2=fff2/max(fff2);
xf2=fs*(0:nfft22/2-1)/nfft22;
subplot(412);plot(xf2,abs(fff2));xlabel('Freq');ylabel('Amplitude');title('SINEWAVE 1200Hz');

%Added
nfft=length(X)
nfft2=2^nextpow2(nfft);
ff=fft(X,nfft2);
fff=ff(1:nfft2/2);
fff=fff/max(fff);
xf=fs*(0:nfft2/2-1)/nfft2;
subplot(414);
plot(xf,abs(fff));xlabel('Freq');ylabel('Amplitude');title('SINEWAVE 800Hz + SINEWAVE 1200Hz');

%Append
nfft3=length(append)
nfft23=2^nextpow2(nfft3);
ff3=fft(append,nfft23);
fff3=ff2(1:nfft23/2);
fff3=fff3/max(fff3);
xf3=fs*(0:nfft23/2-1)/nfft23;
subplot(413);plot(xf3,abs(fff3));xlabel('Freq');ylabel('Amplitude');title('SINEWAVE 800Hz APPENDED SINEWAVE 1200Hz');
