clc;
clear all;
close all;
n=-10:10;
for i=1:length(n)
    if n(i)>=0
        x(i)=n(i);
    else
        x(i)=0;
    end
end
plot(n,x);
xlabel('time');
ylabel('Amplitude');
title('unitramp function');