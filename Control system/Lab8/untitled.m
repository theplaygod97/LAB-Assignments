clc
close all
clear all
s=tf('s');
G=10/s
G1=10/(s*(s+1))
G2=10/(s*(s+1)*(s+2))
G3=(10*(s+0.5))/(s*(s+1)*(s+2))
G4=(10*(s+3))/(s*(s+1)*(s+2))
G5=(10*(s+20))/(s*(s+1)*(s+2))
subplot(2,3,1);rlocus(G);
subplot(2,3,2);rlocus(G1);
subplot(2,3,3);rlocus(G2);
subplot(2,3,4);rlocus(G3);
subplot(2,3,5);rlocus(G4);
subplot(2,3,6);rlocus(G5);