clc;
clear;
close all;
load openloop60hertz, openLoop = openLoopVoltage;
Fs = 1000;
t = (0:length(openLoop)-1)/Fs;
figure
plot(t,openLoop);
ylabel 'Voltage (V)', xlabel 'Time (s)'
title 'Open-Loop Voltage with 60 Hz Noise'
[B,A] = butter(2,[59/500 61/500],'stop');
figure
freqz(B,A,[],Fs);                               %Frequency response of the filter
buttLoop = filtfilt(B,A,openLoop);                   %Filtering
figure
plot(t,buttLoop)
ylabel 'Voltage (V)', xlabel 'Time (s)'
title 'Open-Loop Voltage Filtered',