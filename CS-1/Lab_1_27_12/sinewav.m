clc;
clear all;
close all;
f=input('Enter freq = ');
A=input('Enter Amp = ');
C=input('Enter Cycles = ');
t=0:0.0000001:C/f;
x=A*sin(2*3.14*t*f);
plot(t,x)
xlabel('Time')
ylabel('Amplitute')
title('Sine Wave')