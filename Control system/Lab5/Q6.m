clc;
clear all;
close all;
s=tf('s');
T3=25/(s^2+5*s+25)
step(T3)
hold on
T1=25/(s^2+20*s+25)
step(T1)
T2=25/(s^2+10*s+25)
step(T2)
T4=25/(s^2+25)
step(T4)
axis([0 5 0 2])