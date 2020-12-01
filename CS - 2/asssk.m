clc;clear all;close all
d=[1 0 0 1 0 1 1];
l=length(d);
t=linspace(0,1,l*100)
d1=[]
for i=1:l
    if (d(i)==1)
        a=ones(1,100)
    else
        a=zeros(1,100)
    end
    d1=[d1,a]
end
subplot(3,1,1)
plot(d1)
title('data sequence')
xlabel('Time')
ylabel('Amplitude')
axis([0 100*l -2 2])
a=2;
f=20;
x=a*sin(2*pi*f*t);
subplot(3,1,2);
plot(x)
title('carrier signal');
xlabel('Time');
ylabel('Amplitude');
y=x.*d1;
subplot(3,1,3);
plot(y)
title('ASK signal');
xlabel('Time');
ylabel('Amplitude');