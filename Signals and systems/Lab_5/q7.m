clc;
clear all;
close all;
t=0:0.05:5;
A=4*cos(pi*t);
B=-sin(3*pi*t+0.5*pi);
plot(t,B);hold on;