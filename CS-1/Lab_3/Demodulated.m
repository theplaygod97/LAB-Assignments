clc;
clear;
close all;
fm=50;
fc=500;
fs=10000;
Am=0.5;
Ac=1;
t=0:(1/fs):(5/fm);
Ms=Am*cos(2*pi*fm*t);
figure(1)
subplot(311)
    plot(t,Ms)
    xlabel('Time');ylabel('Amplitude');
    title('Modulating signal');
Cs=Ac*cos(2*pi*fc*t);
M=Am/Ac;
MC=Ac*(1+(M*cos(2*pi*fm*t))).*cos(2*pi*fc*t);
subplot(312)
    plot(t,MC)
    xlabel('Time');ylabel('Amplitude');
    title('Under Modulated signal | Am<Ac');
for i=1:length(MC)
    if MC(i)<0
        MC(i)=0;
    end
end
[b,a]=butter(4,0.02);
z=filter(b,a,MC);
subplot(313);
plot(t,z);
title('Demodulated signal');
xlabel('Time');ylabel('Amplitude');