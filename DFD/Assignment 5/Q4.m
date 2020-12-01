clc;
clear all;
close all;
% Parameter initialization
wp=0.2*pi;
ws=0.3*pi;
As=15;
Ap=1;
T=1;
Wp=wp/T;
Ws=ws/T;
Wc=Wp;
% Analog prototype specification 
k=Wp/Ws;
E=sqrt(10^(0.1*Ap)-1);
A=10^(As/20);
k1=E/(sqrt(A^2-1));
N=ceil((ellipke(k)*ellipke(sqrt(1-k1^2)))/(ellipke(k1)*ellipke(sqrt(1-k^2))))
% Analog filter design 
[z,p,k]=ellipap(N,Ap,As)
ds=real(poly(p));
dNn=ds(N+1);
p=p*Wc;
ds=real(poly(p));
dNu=ds(N+1);
cs=real(poly(z));
cNn=cs(end)
z=z*Wp;
cs=real((poly(z)));
cNu=cs(end)
k=k*(dNu/dNn)*(cNn/cNu);
cs=k*cs;
[b,a] = imp_invr(cs,ds,T);
%plots
% Calculation of Frequency Response:
w = [0:1:500]*pi/500; H = freqs(cs,ds,w);
mag = abs(H); db = 20*log10((mag+eps)/max(mag)); pha = angle(H);
figure;set(gcf, 'Position', [0, 0, 700, 700])
subplot(322);plot(w/pi,db);grid on;title('Magnitude(dB)');xlabel('Frequency in \pi units');ylabel('Decibels');
subplot(321);plot(w/pi,mag);grid on;title('Magnitude Response');xlabel('Frequency in \pi units');ylabel('|H|');
subplot(323);plot(w/pi,-pha/pi);grid on;title('Phase Response');xlabel('Frequency in \pi units');ylabel('Radians');
% Calculation of Impulse response:
subplot(325);impulse(cs,ds);grid on
subplot(324);grpdelay(b,a);grid on;title('Group delay')