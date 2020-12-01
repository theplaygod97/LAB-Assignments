clc;
clear all;
close all;
t=-5:0.01:5;
A=input('A = ');
W=input('W = ');
Y=A*cos(W*t);
plot(t,Y);
xlabel('Time');ylabel('Amp');title('Cos');
T=2*pi\W


