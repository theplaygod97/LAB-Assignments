clc;clear;close all;
h=[0,1,2,3,4,5,4,3,2,1,0,0,0];
f = randn(1,1000); 
y = filter(h,1,f); 
[h_opt,MSE] = LSQFilt(f,y,15); 
subplot(211); 
stem(0:length(h)-1,h); 
title('Unknown Impulse Response'); 
subplot(212); 
stem(0:length(h)-1,h_opt(1:length(h))); 
title('Estimated Impulse Response');