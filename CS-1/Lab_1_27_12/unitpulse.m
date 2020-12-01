clc;
clear all;
close all;
t=0:0.01:6;
l=length(t);
a=input('Enter a = ');
for i=1:l
    if t(i)>=a && t(i)<=a+2
        y(i)=1/a;
    else
        y(i)=0;
    end
end
plot(t,y); axis([0 6 0 1])
title('Unit_Pulse')
xlabel('Time')
ylabel('Amplitude')
