clc; 
clear all; 
close all;
syms T t x y;
x=abs(sin(pi*t));
y=(1/6)*int(x^2,t,-2,4);
Power=limit(y,t,inf)
