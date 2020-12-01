clc;
clear all;
close all;
s=tf('s');
A=[-7 -6 -5;1 0 0;0 1 0];
B=[1;0;0];
C=[9 2 3];
D=10;
[num,den]=ss2tf(A,B,C,D);
T=tf(num,den)
G=T/(1-T)
Kp=dcgain(G)
Ess=1/(1+Kp)