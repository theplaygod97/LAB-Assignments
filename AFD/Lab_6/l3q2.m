clc;
clear;
close all;
s=tf('s');
x1=[1/4 0 1];
x2=conv(x1,x1);
x3=[1/9 0 1];
x4=conv(x3,x3);
x5=[1/2.25 0 1];
x6=conv(x5,x5);
x7=conv(x2,x4);
Num=conv(x7,x6)
Den=[0.080115 0 0 0 0 0 Num]
AllR=roots(Den)
R=AllR(real(roots(Den))<0)
y2=conv(x1,x3);
y1=conv(y2,x5);
y=3.5330e+00*y1
z1=conv([1 -R(1)],[1 -R(2)]);
z2=conv([1 -R(3)],[1 -R(4)]);
z3=conv([1 -R(5)],[1 -R(6)]);
z4=conv([1 -R(7)],[1 -R(8)]);
z5=conv(z1,z2);
z6=conv(z4,z3);
z7=conv(z5,z6)
s=tf('s');
T=tf(y,z7);
figure(1);bode(T)
figure(2);pzmap(T)