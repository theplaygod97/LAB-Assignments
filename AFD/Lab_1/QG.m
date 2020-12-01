clc;close all;clear;
fs=8000;
%Question_1 SINEWAVE 800Hz
t=0:1/fs:1;
f=800;
a=1;
b=1:100;
x=a*sin(2*pi*f*t);
sound(x)

%Question_2 SINEWAVE 1200Hz
t=0:1/fs:1;
f1=1200;
x1=a*sin(2*pi*f1*t);
sound(x1)

%Question_3 COSWAVE 800Hz
t=0:1/fs:2;
f2=800;
x2=a*cos(2*pi*f2*t);
sound(x2)

%Question_4 COSWAVE 1200Hz
t=0:1/fs:1.5;
f2=800;
x3=a*cos(2*pi*f2*t);
sound(x3)