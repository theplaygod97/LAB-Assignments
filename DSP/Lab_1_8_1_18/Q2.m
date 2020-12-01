clc;
clear all;
close all;
f=2000;
fs1=3000;
fs2=55000;
t=0:0.000001:5/f;
t1=0:1/fs1:5/f;
t2=0:1/fs2:5/f;
A=3*sin(2*pi*f*t1);
B=3*sin(2*pi*f*t2);
C=3*sin(2*pi*f*t);
plot(t1,A,'g');ylabel('amplitude');xlabel('time');title('All 3 Combined');hold on
plot(t2,B,'y');hold on
plot(t,C,'b');hold on
gtext('1541016245-Satyabrat')