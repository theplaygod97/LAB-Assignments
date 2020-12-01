clc;
clear;
close all;
s=tf('s');
x1=[1/4 0 1];
x2=conv(x1,x1);
x3=[1/16 0 1];
x4=conv(x3,x3);
Num=conv(x2,x4);
Den=[0.28916 0 0 0 Num]
AllR=roots(Den)
R=AllR(real(roots(Den))<0)
y1=conv(x1,x3);
y=1.85964*y1
z1=conv([1 -R(1)],[1 -R(2)]);
z2=conv([1 -R(3)],[1 -R(4)]);
z3=conv([1 -R(5)],[1 -R(6)]);
z4=conv(z1,z2);
z5=conv(z4,z3)
s=tf('s');
T=tf(y,z5)
figure(1);bode(T);
figure(2);pzmap(T);