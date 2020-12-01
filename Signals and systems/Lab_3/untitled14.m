clc;
clear all;
close all;
a=input('a');
t=-10:0.1:10;
z=sawtooth(t);
subplot(2,1,1);
plot(t,z);
xlabel('Time');
ylabel('Amplitude')
title('sawtooth_1');
y=sawtooth(a.*z);
subplot(2,1,2);
plot(t,y);
xlabel('Time');
ylabel('Amplitude')
title('sawtooth scaling')