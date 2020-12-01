clc;
clear all;
close all;
num=[1 2 1];
den=[1 11 60 50 0];
t=tf(num,den);
[Poles,Zeroes]=pzmap(t)
pzplot(t)
if real(Poles)>=0
    disp('Unstable System')
else
    disp('Stable System')
end
    