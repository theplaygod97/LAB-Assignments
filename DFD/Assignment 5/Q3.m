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
Wr=Ws/Wp;
E=sqrt(10^(0.1*Ap)-1)
A=10^(As/20)
g=sqrt((A^2-1)/E^2)
N=ceil((log10(g+sqrt(g^2-1)))/(log10(Wr+sqrt(Wr^2-1))))
% Analog filter design  
[z,p,k]=cheb2ap(N,As)
ds = real(poly(p)); aNn = ds(N+1);
p = p*Ws; ds = real(poly(p)); aNu = ds(N+1);
cs = real(poly(z)); M = length(cs); bNn = cs(M);
z = z*Ws; cs = real(poly(z)); bNu = cs(M);
k = k*(aNu*bNn)/(aNn*bNu);
b0 = k; cs = k*cs;
[b,a] = imp_invr(cs,ds,T);
% plots 
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