clc;
clear all;
close all;
t= -10:0.5:10;
a=input('a');
Y = exp((-a).*t);
subplot(3,1,1);
stem(t,Y);
xlabel('Time');
ylabel('Amplitude');
title('Exponential');
o=sin(t);
subplot(3,1,2);
stem(t,o);
xlabel('Time');
ylabel('Amplitude');
title('Sin');
z=Y.*o;
subplot(3,1,3);
stem(t,z);
xlabel('Time');
ylabel('Amplitude');
title('Multiply ans');