clc;clear all;close all;
syms s t
s=tf('s')
A=[0 0 1;0 1 0;-5 -6 -7];
B=[0;0;1];
C=[3 2 9];
D=[10];
U=1/s;
I=[1 0 0;0 1 0;0 0 1];
T=(C*(inv(s*I-A))*B)+D
E=U*(1-T)
Ess=dcgain(s*E)
kp=(1-Ess)/Ess
