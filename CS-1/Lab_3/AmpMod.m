clc;
clear;
close all;
fm=50;
fc=500;
fs=10000;
Am=input('Enter amplitude of message signal = ');
Ac=input('Enter amplitude of carrier signal = ');
t=0:(1/fs):(5/fm);
Ms=Am*cos(2*pi*fm*t);
figure(1)
subplot(311)
    plot(t,Ms)
    xlabel('Time');
    ylabel('Amplitude');
    title('Modulating signal');
Cs=Ac*cos(2*pi*fc*t);
subplot(312)
    plot(t,Cs)
    xlabel('Time');
    ylabel('Amplitude');
    title('Carrier signal');
M=Am/Ac;
MC=Ac*(1+(M*cos(2*pi*fm*t))).*cos(2*pi*fc*t);
subplot(313)
    plot(t,MC)
    xlabel('Time');
    ylabel('Amplitude');
    if M<1
    title('Under Modulated signal | Am<Ac');
    elseif M==1
    title('Critical Modulated signal | Am=Ac');
    else 
    title('Over Modulated signal | Am>Ac');
    end
figure(2)
N=length(MC);
mfft=abs(fft(MC,N));
f=((-(N- 1)/2):(N-1)/2)*(fs/N);
SP=fftshift(mfft);
figure(2)
stem(f,SP,'^');
axis([-200 200 0 10000])