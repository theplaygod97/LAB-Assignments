clc;
clear all;
close all;
a=[1,0,-0.15];
b=[1];
del=[1,zeros(1,10)];
h=filter(b,a,del)
plot(h);grid on;