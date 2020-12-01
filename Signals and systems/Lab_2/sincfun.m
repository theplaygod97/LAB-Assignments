clc;
clear all;
close all;
t = -5:0.005:5;
y = (sin(pi*t))./((pi*t));
Z=sinc(t);
subplot(2,1,1);plot(t,y);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sinc Function');

subplot(2,1,2);plot(t,Z);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sinc Function');
