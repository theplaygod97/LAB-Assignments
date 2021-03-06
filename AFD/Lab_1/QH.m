clc;close all;clear;
fs=8000;
t=0:1/fs:1;
f=800;
a=1;
b=1:100;
x=a*sin(2*pi*f*t);
t=0:1/fs:1;
f1=1200;
x1=a*sin(2*pi*f1*t);
S=x+x1;
subplot(2,1,1);plot(t,S);xlabel('Time');ylabel('Amplitude');title('SINEWAVE 800Hz 1Sec + SINEWAVE 1200Hz 1Sec');
subplot(2,1,2);plot(t(b),S(b));xlabel('Time');ylabel('Amplitude');