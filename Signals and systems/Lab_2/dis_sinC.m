clc;
clear all;
close all;
t = -5:0.005:5;
y = (sin(pi*t))./((pi*t));
stem(t,y);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sinc Function')