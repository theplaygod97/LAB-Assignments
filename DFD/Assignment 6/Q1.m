clc;clear;close all;
% Digital Filter Specifications:
Wp = 0.2*pi; % digital Passband freq in rad
Ws = 0.3*pi; % digital Stopband freq in rad
Rp = 1; % Passband ripple in dB
As = 15; % Stopband attenuation in dB
% Analog Prototype Specifications: Inverse mapping for frequencies
T = 1; Fs = 1/T; % Set T=1
OmegaP = (2/T)*tan(Wp/2); % Prewarp Prototype Passband freq
OmegaS = (2/T)*tan(Ws/2); % Prewarp Prototype Stopband freq
% Analog Butterworth Prototype Filter Calculation:
N = ceil((log10((10^(Rp/10)-1)/(10^(As/10)-1)))/(2*log10(Wp/Ws)));
OmegaC = Wp/((10^(Rp/10)-1)^(1/(2*N)));
[z,p,k] = buttap(N);
p = p*OmegaC;
k = k*OmegaC^N;
B = real(poly(z));
b0 = k; cs = k*B; ds = real(poly(p));
%Butterworth Filter Order = 6
% Bilinear transformation:
[b,a] = bilinear(cs,ds,Fs); 
%plots
% Calculation of Frequency Response:
w = [0:1:500]*pi/500; H = freqs(cs,ds,w);
mag = abs(H); db = 20*log10((mag+eps)/max(mag)); pha = angle(H);
figure;set(gcf, 'Position', [0, 0, 700, 700])
subplot(222);plot(w/pi,db);grid on;title('Magnitude(dB)');xlabel('Frequency in \pi units');ylabel('Decibels');
subplot(221);plot(w/pi,mag);grid on;title('Magnitude Response');xlabel('Frequency in \pi units');ylabel('|H|');
subplot(223);plot(w/pi,-pha/pi);grid on;title('Phase Response');xlabel('Frequency in \pi units');ylabel('Radians');
subplot(224);grpdelay(b,a);grid on;title('Group Delay')