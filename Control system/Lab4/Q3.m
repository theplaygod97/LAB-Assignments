clc;
clear all;
close all;
num=[24]
den=poly([-2 -3 -4])
T=tf(num,den)
[Acc,Bcc,Ccc,Dcc]=tf2ss(num,den)
Scc=ss(Acc,Bcc,Ccc,Dcc)
Sp=canon(Scc,'modal')