clc;close all;clear all;
num1=((1234.1)^5);
den1=[1 1234.1];
s= tf('s');
t=(1191.7)^(6)/(((s^2)+(2291.5*s)+(1191.7^2))*((s^2)+(1677*s)+(1191.7^2))*((s^2)+(617*s)+(1191.7^2)));
figure(1);
bode(t);
figure(2);
pzmap(t)
[p z]=pzmap(t)