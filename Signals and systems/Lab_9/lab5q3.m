clc;
clear all;
close all;
syms s 
H=ilaplace((s^2+2*s+1)/(s^4+11*s^3+60*s^2+50*s)) 
ezplot(H)