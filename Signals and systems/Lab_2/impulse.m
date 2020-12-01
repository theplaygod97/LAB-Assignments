clc;
clear all;
close all;
n=-10:10;
for i=1:length(n)
    if n(i)==0
        x(i)=1;
    else
        x(i)=0;
    end
end
stem(n,x);
xlabel('time');
ylabel('Amplitude');
title('impulse function');
