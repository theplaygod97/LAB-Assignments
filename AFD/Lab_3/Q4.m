clc;close all;clear all;
s= tf('s');
t=(1240)^(5)/((s+1240)*((s^2)+(2000*s)+(1240^2))*((s^2)+(765.4*s)+(1240^2)));
figure(1);
bode(t);
figure(2);
pzmap(t)
[p z]=pzmap(t)