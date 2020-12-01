clc;close all;clear all;
x=linspace(-1,1,100)
s1=hypersin_p(x)
c1=hypercos_p(x)
t1=hypertan_p(x)
plot(x,s1,'k')
hold on;
plot(x,c1,'m')
hold on;
plot(x,t1,'r')
hold off;