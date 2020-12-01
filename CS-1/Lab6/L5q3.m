clc;
clear;
close all;
fs=10000;
fc=5000;
fm=250;
beta=10;
t=0:1/fs:4/fm;
Am=1;
Ac=1;
x1=Am*cos(2*pi*fm*t);
figure(1)
subplot(311)
plot(t,x1)
xlabel('Time')
ylabel('Amplitude')
title('Message signal')
x2=Ac*cos(2*pi*fc*t);
subplot(312)
plot(t,x2)
xlabel('Time')
ylabel('Amplitude')
title('Carrier signal') 
ma=Am/Ac;
x3=Ac*cos((2*pi*fc*t)+beta*sin(2*pi*fm*t));
subplot(313)
plot(t,x3)
xlabel('Time')
ylabel('Amplitude')
title('Modulated signal')
for i=1:length(x3)
    if x3(i)<0
        x3(i)=0;
    end
end
[b,a]=butter(6,0.1570);
demod_sig=filter(b,a,x3);
figure(2)
plot(t,demod_sig)
xlabel('Time')
ylabel('Amplitude')
title('Demodulated signal')