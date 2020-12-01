clc;close all;clear all;
s= tf('s');
t=(1234)^(5)/((s+1234)*((s^2)+(1990*s)+(1.522*(10^6)))*((s^2)+(762*s)+(1.522*(10^6))));
figure(1);
bode(t);
figure(2);
pzmap(t)
[p z]=pzmap(t)