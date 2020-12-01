clc;clear;close all;
Fs=40000;
Fm=2000;
Fs1=3000;
Fs2=55000;
t=0:1/Fs:4/Fm;
x=3*sin(2*pi*Fm*t);
plot(t,x)
stem(t,x)
%sampling for f=3Khz
t1=0:1/Fs1:4/Fm;
x1=3*sin(2*pi*Fm*t1);
plot(t,x);
hold on
plot(t1,x1);
stem(t,x)
stem(t1,x1);
title('All 3 combined');
%sampling for f=55Khz
t2=0:1/Fs2:4/Fm;
x2=3*sin(2*pi*Fm*t2);
plot(t,x);
plot(t2,x2);
stem(t,x)
stem(t2,x2)
xlabel('Time');
ylabel('Amplitude');
gtext('1541016245-Satyabrat')