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
% Analog Chebyshev-1 Prototype Filter Calculation:
ep = sqrt(10^(Rp/10)-1); A = 10^(As/20);
OmegaC = Wp; OmegaR = Ws/Wp; g = sqrt(A*A-1)/ep;
N = ceil(log10(g+sqrt(g*g-1))/log10(OmegaR+sqrt(OmegaR*OmegaR-1)));
[z,p,k] = cheb1ap(N,Rp); ds = real(poly(p)); aNn = ds(N+1);
p = p*OmegaC; ds = real(poly(p)); aNu = ds(N+1);
k = k*aNu/aNn;
b0 = k; B = real(poly(z)); cs = k*B;
% Chebyshev-1 Filter Order = 4
% Bilinear transformation:
[b,a] = bilinear(cs,ds,Fs); 

%plota
w = [0:1:500]*pi/500; H = freqs(cs,ds,w);
mag = abs(H); db = 20*log10((mag+eps)/max(mag)); pha = angle(H);
figure;set(gcf, 'Position', [0, 0, 700, 700])
subplot(222);plot(w/pi,db);grid on;title('Magnitude(dB)');xlabel('Frequency in \pi units');ylabel('Decibels');
subplot(221);plot(w/pi,mag);grid on;title('Magnitude Response');xlabel('Frequency in \pi units');ylabel('|H|');
subplot(223);plot(w/pi,-pha/pi);grid on;title('Phase Response');xlabel('Frequency in \pi units');ylabel('Radians');
subplot(224);grpdelay(b,a);grid on;title('Group Delay')