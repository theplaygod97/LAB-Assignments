clc;
close all;
clear all;
syms t s;
y=(sin(2*pi*t).*heaviside(t))-(sin(2*pi*(t-1)).*heaviside(t-1));
ans1=int(y.*exp(-s*t),t,-inf,inf)
ans2=laplace(y)
subplot(3,1,1);
ezplot(y)
title('Input')
subplot(3,1,2)
ezplot(ans1)
title('Laplace using integration');
subplot(3,1,3)
ezplot(ans2)
title('Laplace using laplace')