clc;
close all;
clear all;
s=tf('s');
G=(10*(s+20)*(s+30))/(s*(s+25)*(s+35));
H=1;
As=15;Ar=15;Ap=30;
T=feedback(G,H,-1)
poles=pole(T)
if real(poles)>=0
    disp('Unstable System')
    disp('Error cannot be determined')
else
    disp('Stable System')
    Kp=dcgain(G)
    essp=As/(1+Kp)
    Kv=dcgain(s*G)
    essv=Ar/Kv
    Ka=dcgain((s^2)*G)
    essa=(2*Ap)/Ka 
end