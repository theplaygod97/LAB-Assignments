clc;
clear all;
close all;
syms n z
Hz=(1+(z)^(-1))/(1+0.5*(z)^(-1))
X(n)=(0.5)^(n)*heaviside(n)
Xz(n)=ztrans(X(n))
Yz=Hz*Xz