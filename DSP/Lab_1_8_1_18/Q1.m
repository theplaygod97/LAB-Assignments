clc;
clear all;
close all;
f=2000;
fs1=3000;
fs2=55000;
b=[1:100];
t1=0:1/fs1:5/f;
t2=0:1/fs2:5/f;
A=3*sin(2*pi*f*t1);
B=3*sin(2*pi*f*t2);
subplot(221);plot(t1,A);ylabel('amplitude');xlabel('time');title('sampled at 3 KHz');
subplot(222);plot(t2,B);ylabel('amplitude');xlabel('time');title('sampled at 55 KHz');
subplot(223);stem(t1,A);ylabel('amplitude');xlabel('time');title('sampled at 3 KHz');
subplot(224);stem(t2,B);ylabel('amplitude');xlabel('time');title('sampled at 55 KHz');
gtext('1541016245-Satyabrat')