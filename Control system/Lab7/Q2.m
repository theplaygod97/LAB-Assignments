clc;
close all;
clear all;
s=tf('s')
G=(10*(s+20)*(s+30))/((s^2)*(s+25)*(s+35)*(s+50))
H=1
As=15;Ar=15;Ap=30;
T=feedback(G,H,-1)
poles=pole(T)
if real(poles)<0
   Kp=dcgain(G)
    e1=As/(1+Kp)
    Kv=dcgain(s*G)
    e2=Ar/Kv
    Ka=dcgain(s^2*G)
    e3=(2*Ap)/Ka
else
    disp('Unstable System')
   disp('Error cannot be determined')
end