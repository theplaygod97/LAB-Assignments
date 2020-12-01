clc;
clear all;
close all;
n=-15:15;
a=-15:0.05:15;
for i=1:length(n)
    x(i)=1;
end
y=sin(n).*x(i);
subplot(2,1,1);plot(a,sin(a));
xlabel('time');
ylabel('Amplitude');
title('sin');
subplot(2,1,2);stem(n,y);
xlabel('time');
ylabel('Amplitude');
title('sampled');