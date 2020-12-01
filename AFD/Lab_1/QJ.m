clc;close all;clear;
fs=8000;
%Question_1 SINEWAVE 800Hz
t=0:1/fs:1;
f=800;
a=1;
b=1:100;
x=a*sin(2*pi*f*t);
subplot(2,2,1);


%Question_2 SINEWAVE 1200Hz
f1=1200;
x1=a*sin(2*pi*f1*t);
subplot(2,2,2);

%Added Signal
S=x+x1;
subplot(2,2,3);

%Append
append=[x,x1];
subplot(2,2,4);