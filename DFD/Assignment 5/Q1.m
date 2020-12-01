clc;
close all;
clear all;
% Parameter initialization
wp=0.2*pi;           %passband frequency
ws=0.3*pi;           %stopband frequency
Ap=1;                %passband ripple in dB
As=15;               %stopband ripple in dB
% Analog prototype specification
t=1;
Wp=wp/t;             % analog passband freq
Ws=ws/t;             % analog stopband freq
% order and cutoff freq calculation
N=ceil(log10((10^(Ap/10)-1)/(10^(As/10)-1))/(2*log10(Wp/Ws)))
Wc=Wp/((10^(Ap/10)-1)^(1/(2*N)))
% Analog filter design 
[z,p,k]=buttap(N);   %BUTTERWORTH PROTOTYPE FILTER
p=p*Wc;
k=k*(Wc^N);
B=real(poly(z));
b0=k;
cs=k*B;
ds=real(poly(p));
% transformation from s->z
Fs=1/t;
[b,a]=imp_invr(cs,ds,t)
% plots
% Calculation of Frequency Response:
w = [0:1:500]*pi/500; H = freqs(cs,ds,w);
mag = abs(H); db = 20*log10((mag+eps)/max(mag)); pha = angle(H);
figure;set(gcf, 'Position', [0, 0, 700, 900])
subplot(322);plot(w/pi,db);grid on;title('Magnitude(dB)');xlabel('Frequency in \pi units');ylabel('Decibels');
subplot(321);plot(w/pi,mag);grid on;title('Magnitude Response');xlabel('Frequency in \pi units');ylabel('|H|');
subplot(323);plot(w/pi,-pha/pi);grid on;title('Phase Response');xlabel('Frequency in \pi units');ylabel('Radians');
% Calculation of Impulse response:
subplot(325);impulse(cs,ds);grid on
subplot(324);grpdelay(b,a);grid on;title('Group delay')