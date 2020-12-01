clc;
clear all;
close all;
fs=10000;
Am=1;
fm=50;
fc=500;
t=0:(1/fs):(5/fm);
s=Am*cos(2*pi*fm.*t);
Z=abs(fft(s));
l=length(Z);
f=((((-(l-1)/2)):((l-1)/2)))*(fs/l);
subplot(311)
stem(f,(fftshift(Z)/l))
xlabel('Frequency')
ylabel('Amplitude')
title('Spectrum of Modulating Signal')
Ac=2;
S=Ac*cos(2*pi*fc.*t);
Z1=abs(fft(S));
l1=length(Z1);
subplot(312)
stem(f,(fftshift(Z1)/l1))
xlabel('Frequency')
ylabel('Amplitude')
title('Spectrum of Carrier Signal')
Ma=Am/Ac;
S1=Ac*cos(2*pi*fc*t).*(1+(Ma*cos(2*pi*fm*t)));
Z2=abs(fft(S1));
l2=length(Z2);
subplot(313)
stem(f,(fftshift(Z2)/l2))
xlabel('Frequency')
ylabel('Amplitude')
title('Spectrum of Modulated Signal')
