clc;
clear all;
close all;
t=0:0.01:10;	
t1=0:0.1:10;
x=sawtooth(t);
subplot(2,1,1);
plot(t,x);
xlabel('Time')
ylabel('Amplitude')
x1=sawtooth(t1);
subplot(2,1,2);
stem(t1,x1);
xlabel('Time')
ylabel('Amplitude')