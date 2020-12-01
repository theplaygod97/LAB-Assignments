clc;
clear all;
close all;
t=-10:0.1:10;
z=sin(t);
subplot(2,1,1);
plot(t,z);
xlabel('Time');
ylabel()
Q=sin(-t);
subplot(2,1,2);
plot(t,Q);