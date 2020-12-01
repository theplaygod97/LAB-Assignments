clc;
clear all;
close all;
a_max=0.45
a_min=17
wns=1.1
e=sqrt(10^(0.1*a_max)-1)
l=(10^(0.1*a_min)-1)/(10^(0.1*a_max)-1)
A1=1/sqrt(1+(e^2))
A2=1/sqrt(1+power((e*l),2))
Q=a_min+20*log10(1/e)
A=input('Enter the values of A in array = ')
B=input('Enter the values of B in 2*2 matrix [b10 b11;b20 b21] = ')
H=input('Enter constant value H = ')
Num=H*conv([1 0 A(1)],[1 0 A(2)])
Den=conv([1 B(1,2) B(1,1)],[1 B(2,2) B(2,1)] )
K=Den(end)/Num(end)
T=tf(K*Num,Den)
figure
bode(T)
figure
pzmap(T)