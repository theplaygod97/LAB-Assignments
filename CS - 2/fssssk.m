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

a1=~d1;
subplot(4,1,1)
plot(d1)
title('Binary Data Sequence')
xlabel('Time')
ylabel('Amplitude')
axis([0 100*l -2 2])

a=2;
f=50;
x=5*sin(2*pi*20*t);
s1=5*sin(2*pi*10*t);
subplot(4,1,2);
plot(x)
title('Carrier signal(1)');
xlabel('Time');
ylabel('Amplitude');

y=x.*d1;
ask1=s1.*a1;
fsk=y+ask1;
subplot(4,1,3);
plot(s1)
title('Carrrier signal(2)');
xlabel('Time');
ylabel('Amplitude');
subplot(4,1,4);
plot(fsk)
xlabel('time');
ylabel('amplitude');
title('FSK signal');