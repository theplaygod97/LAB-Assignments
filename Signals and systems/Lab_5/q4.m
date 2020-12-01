clc;
clear all;
close all;
syms 't'
A=exp(-2*t);
P1=(0.5*t^-1)*int(A^2,0,t);
Power=limit(P1,t,inf)
E1=int(A^2,0,inf)
