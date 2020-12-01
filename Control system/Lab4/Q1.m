clc;
clear all;
close all;
num=[1 7 2];
den=[1 9 26 24];
P=[0 0 1;0 1 0;1 0 0];
T=tf(num,den)
[Acc,Bcc,Ccc,Dcc]=tf2ss(num,den)
Aoc=transpose(Acc)
Boc=transpose(Ccc)
Coc=transpose(Bcc)
Doc=transpose(Dcc)
Ap=inv(P)*Acc*P
Bp=inv(P)*Bcc
Cp=Ccc*P
Dp=Dcc