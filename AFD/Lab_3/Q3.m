clc;close all;clear all;
num1=((1234.1)^5);
den1=[1 1234.1];
s= tf('s');
t=(1189.2)^(4)/(((s^2)+(2200.22*s)+(1189.2^2))*((s^2)+(907.786*s)+(1189.2^2)));
figure(1);
bode(t);
figure(2);
pzmap(t)
[p z]=pzmap(t)