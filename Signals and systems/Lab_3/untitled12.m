clc;
clear all;
close all;
t=-10:0.1:10;
z=sawtooth(t,0.5);
subplot(2,1,1);
plot(t,z);
xlabel('Time');
ylabel('Amplitude')
title('sawtooth_1');
y=square(z);
subplot(2,1,2);
plot(t,y);
xlabel('Time');
ylabel('Amplitude')
title('sawtooth sqaured')