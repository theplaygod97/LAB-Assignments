clc;
clear all;
close all;
t=0:10;
z=sawtooth(t);
subplot(2,1,1);
plot(t,z);
xlabel('time')
ylabel('Amplitude')
title('sawtooth');
subplot(2,1,1);
plot(t,z);
xlabel('time')
ylabel('Amplitude')
title('sawtooth')
x=sawtooth(t-3);
subplot(2,1,2);
plot(t,x);
xlabel('time')
ylabel('Amplitude')
title('sawtooth shift')