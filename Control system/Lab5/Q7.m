clc;
clear all;
close all;
s=tf('s');
T1=16/(s^2+4*s+16)
% pzmap(T1)
step(T1)
hold on
T2=36/(s^2+4*s+36)
% pzmap(T2)
step(T2)
T3=64/(s^2+4*s+64)
% pzmap(T3)
step(T3)