clc;
clear all;
close all;
syms Z
X=1;
Xo=0;
for i=1:10; 
    Xz(i)=X*(Z^(-i))
end
Xzt=sum(Xz(1:10))
a=[1 1 1 1 1 1 1 1 1 1]
b=[1]
Z=roots(a)
P=roots(b)
figure
zplane(Z,P)
figure
ezplot(Xzt)