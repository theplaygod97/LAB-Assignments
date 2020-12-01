clc;
clear all;
close all;
syms t;
x1t=heaviside(t)-heaviside(t-1);
ht=heaviside(t)-heaviside(t-1);
x2t=exp(-4*t)*heaviside(t);
X1S=laplace(x1t);
X2S=laplace(x2t);
HS=laplace(ht);
Q1S=X1S*HS
Q2S=X2S*HS
Q1t=ilaplace(Q1S)
Q2t=ilaplace(Q2S)
