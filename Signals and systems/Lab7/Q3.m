clc;
close all;
clear all;
t=0:0.01:10;
for i=1:length(t)
    if t(i)>=0
        u(i)=1;
    else
        u(i)=0;
    end
end
for i=1:length(t)
    if t(i)>=0
        r(i)=i;
    else
        r(i)=0;
    end
end
x=u.*cos(pi*t);
y=r.*cos(pi*t);
subplot(2,2,1);plot(t,u);xlabel('time');ylabel('Amplitude');title('Unitstep');
subplot(2,2,2);plot(t,r);xlabel('time');ylabel('Amplitude');title('Unitramp');
subplot(2,2,3);plot(t,x);xlabel('time');ylabel('Amplitude');title('Unitstep Response-Stable');
subplot(2,2,4);plot(t,y);xlabel('time');ylabel('Amplitude');title('Unitramp Response-Unstable');
