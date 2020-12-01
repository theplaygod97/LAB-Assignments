clc;
close all;
clear all;
fs=8000;
n=1:5000 ;
x1=sin(2*pi*(440/fs)*n);
x2=sin(2*pi*(494/fs)*n);
x3=sin(2*pi*(554/fs)*n);
x4=sin(2*pi*(587/fs)*n);
x5=sin(2*pi*(660/fs)*n);
x6=sin(2*pi*(698/fs)*n);
x7=sin(2*pi*(784/fs)*n);
x=[x1 x2 x3 x4 x5 x6 x7]
figure(1)
plot(x)
sound(x, fs)
r=rand(1,length(x));
figure(2)
subplot(2,1,1)
plot(r)
title('random noise');
hold on
yn=x+r;
subplot(2,1,2)
plot(yn)
title('random noise added');