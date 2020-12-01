clc;
clear all;
close all;
t=-10:0.1:10;
A=cos(2*pi*t)+cos(4*pi*t);
subplot(2,1,1);plot(t,A);grid on
[idx,idx]=findpeaks(A);
T=(idx(2))-(idx(1))
B=cos(2*pi*t)+cos(2*t);
subplot(2,1,2);plot(t,B);
[z,z]=findpeaks(B);
B=(z(2))-(z(1))
