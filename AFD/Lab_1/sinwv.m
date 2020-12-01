clc;close all;clear;
fs=8000;
%Question_1 SINEWAVE 800Hz
t=0:1/fs:1;
f=800;
a=1;
b=1:100;
x=a*sin(2*pi*f*t);
subplot(4,2,1);plot(t,x);xlabel('Time');ylabel('Amplitude');title('SINEWAVE 800Hz 1Sec');
subplot(4,2,2);plot(t(b),x(b));xlabel('Time');ylabel('Amplitude');

%Question_2 SINEWAVE 1200Hz
t=0:1/fs:1;
f1=1200;
x1=a*sin(2*pi*f1*t);
subplot(4,2,3);plot(t,x1);xlabel('Time');ylabel('Amplitude');title('SINEWAVE 1200Hz 1Sec');
subplot(4,2,4);plot(t(b),x1(b));xlabel('Time');ylabel('Amplitude');

%Question_3 COSWAVE 800Hz
t=0:1/fs:2;
f2=800;
x2=a*cos(2*pi*f2*t);
subplot(4,2,5);plot(t,x2);xlabel('Time');ylabel('Amplitude');title('COSWAVE 800Hz 2Sec');
subplot(4,2,6);plot(t(b),x2(b));xlabel('Time');ylabel('Amplitude');

%Question_4 COSWAVE 1200Hz
t=0:1/fs:1.5;
f2=800;
x3=a*cos(2*pi*f2*t);
subplot(4,2,7);plot(t,x3);xlabel('Time');ylabel('Amplitude');title('COSWAVE 1200Hz 1.5Sec');
subplot(4,2,8);plot(t(b),x3(b));xlabel('Time');ylabel('Amplitude');