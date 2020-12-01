clc;
clear;
close all;
load openloop60hertz, openLoop = openLoopVoltage;
Fs = 1000;
t = (0:length(openLoop)-1)/Fs;
plot(t,openLoop)
ylabel 'Voltage (V)', xlabel 'Time (s)'
title 'Open-Loop Voltage with 60 Hz Noise'