clc;
clear all;
close all;
t= -5:0.05:5;
a=input('Enter a=');
Y = exp(-a*t);
subplot(2,1,1),plot(t,Y);
subplot(2,1,2),stem(t,Y);
xlabel('Time');
ylabel('Amplitude');
title('Exponential')