clc;
clear all;
close all;
t=-10:10;
B=mod(cos((0.5*pi*t)+(0.25*pi))).^2,0);
A=@(t)B;
format long
q = integral(A,-Inf,Inf)