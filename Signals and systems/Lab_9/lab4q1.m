clc;
close all;
clear all;
syms t lambda;
x=heaviside(t)-heaviside(t-1);
h=heaviside(t)-heaviside(t-1);
x1=subs(x,lambda);
h1=subs(h,t-lambda);
A
=conv(x1,h1);
y1=x1*h1;
y=int(y1,lambda,-inf,inf);
subplot(4,1,1);
plot(x,[0 5])
title('x(t)');
subplot(4,1,2);
plot(h,[0 5])
title('h(t)');
subplot(4,1,3);
plot(y)
title('y(t)');
subplot(4,1,4);
plot(A,[0 5])
title('x(t)');