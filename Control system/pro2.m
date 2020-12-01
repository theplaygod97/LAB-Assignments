clc;
clear all;
close all;
syms s;
A=[0 1 0;0 0 1;-5 -6 -7];
B=[0;0;1];
C=[3 2 9];
D=10;
I=[1 0 0;0 1 0;0 0 1];
T=C*inv((s*I)-A)*B+D;
pretty(T)