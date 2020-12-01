clc;clear;close all;
t = 0:199;
s = sin(2*pi*t/12);
d = s;
f = zeros(1,200);
f(2:200) = s(1:199);

[h1,MSE] = LSQFilt(f,d,2)

[h2,MSE] = LSQFilt(f,d,3)