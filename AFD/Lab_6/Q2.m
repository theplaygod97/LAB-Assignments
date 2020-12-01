clc;
clear; 
close all;
syms s;
T=(((((s^2)/4)-1)^2)*((((s^2)/9)-1)^2)*((((s^2)/2.25)-1)^2))/(((((s^2)/4)-1)^2)*((((s^2)/9)-1)^2)*((((s^2)/2.25)-1)^2)+0.80115*(s^18));
pretty(T)
P=poles(T)
PP=P(real(poles(T))<0)
Z=length(PP)
D=1
for k=1:Z   
D=D*(s-PP(k))
end
TF=(((((s^2)/4)+1)^2)*((((s^2)/9)+1)^2)*((((s^2)/2.25)+1)^2))/D;
A=limit(TF)
TF=A*TF