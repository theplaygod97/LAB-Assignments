clc;
clear all;
close all;
syms 't';
A=cos((pi*t*0.5)+(pi*0.25));
P1=(0.5*t^-1)*int(A^2,-t,t);
Power=limit(P1,t,inf)
E1=int(A^2,-inf,inf);
Energy=limit(E1,t,inf)