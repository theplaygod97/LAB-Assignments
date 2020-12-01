clc;
clear all;
close all;
t=-5:0.01:5;
for i=1:length(t)
    if t(i)>=0
        u(i)=1;
    else
        u(i)=0;
    end
end
for i=1:length(t)
    if t(i)>=1
        u1(i)=1;
    else
        u1(i)=0;
    end
end
t1=u1;
xt=u-u1;
ht=u-u1;
yt=conv(ht,xt);
yt1=0.01*yt;
subplot(3,1,1);plot(xt);xlabel('Time');ylabel('Amplitude');title('X(t)-Input ');
subplot(3,1,2);plot(ht);xlabel('Time');ylabel('Amplitude');title('H(t)-Impulse Response');
subplot(3,1,3);plot(yt1);xlabel('Time');ylabel('Amplitude');title('Y(t)-System Response');