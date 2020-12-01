clc;
clear all;
close all;
P=1;
Q=P;
G1=tf([1 0],1);
G2=G1;
G3=tf(1,[1 0]);
G4=G3;
H=G1;
system=append(P,G1,G2,G3,G4,H,Q);
input=1;
output=7;
X=[1 0 0 0 0;2 1 -3 -6 -5;3 2 0 0 0;4 3 5 0 0;5 1 -3 -5 -6;6 4 0 0 0;7 4 0 0 0];
T=connect(system,X,input,output);
TF=tf(T)
T1=minreal(T)