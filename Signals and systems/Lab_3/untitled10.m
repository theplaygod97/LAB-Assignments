clc;
clear all;
close all;
t=-10:0.05:10;
z=sawtooth(t);
subplot(3,1,1);
plot(t,z);
xlabel('Time')
ylabel('Amplitude')
y=fliplr(z);
subplot(3,1,2);
plot(t,y);
xlabel('Time')
ylabel('Amplitude')
p=sawtooth(-t);
subplot(3,1,3);
plot(t,p);
xlabel('Time')
ylabel('Amplitude')