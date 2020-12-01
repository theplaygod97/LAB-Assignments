clc;clear all;close all;
odeFunc_handle=@funtest;
tspan=[0 5];
y0=1;
[t,y]=ode45(@funtest,tspan,y0)
plot(t,y)