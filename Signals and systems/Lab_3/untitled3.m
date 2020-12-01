clc;
clear all;
close all;
n=-10:0.05:10;
for i=1:length(n)
    if n(i)>=0
        x(i)=n(i);
    else
        x(i)=0;
    end
end
subplot(3,1,1);
plot(n,x);
xlabel('Time');
ylabel('Amplitude');
title('Ramp')
for i=1:length(n)
    if n(i)>=0
        a(i)=1;
    else
        a(i)=0;
    end
end
subplot(3,1,2);
plot(n,a);
xlabel('Time');
ylabel('Amplitude');
title('Unit')
z=x+a;
subplot(3,1,3);
plot(n,z);
xlabel('Time');
ylabel('Amplitude');
title('Addition Result')