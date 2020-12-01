clc;
clear all;
close all;
P=1;
Q=P;
G1=tf(1,[1 1]);
G2=G1;
G3=G1;
G4=G1;
H=tf(1,[1 0]);
system=append(P,G1,G2,G3,G4,H,Q);
input=1;
output=7;
X=[1 0 0 0 0;2 1 0 0 0;3 1 0 0 0;4 2 3 -6 0;5 4 0 0 0;6 4 0 0 0;7 5 0 0 0];
T=connect(system,X,input,output);
TF=tf(T)
T1=minreal(T)