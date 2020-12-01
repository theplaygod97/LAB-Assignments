clc;clear all;close all
x=[-6 -6 -7 0 7 6 6 -3 -3 0 0;-7 2 1 8 1 2 -7 -7 -2 -2 -7]
a1=[0.5 0;0 1];
a2=[1 0;0 0.5];
a3=[0 1;0.5 0];
a4=[0.5 0;0 -1];
x1=a1*x;
x2=a2*x;
x3=a3*x;
x4=a4*x;
subplot(2,2,1)
dot2dot(x1);
subplot(2,2,2)
dot2dot(x2);
subplot(2,2,3)
dot2dot(x3);
subplot(2,2,4)
dot2dot(x4);
axis([-10 10 -10 10])