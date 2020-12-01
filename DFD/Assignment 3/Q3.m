clc;clear;close all;

%specification
wp=0.2*pi
ws=0.3*pi
Ap=-20*log10(0.25)
As=-20*log10(50)
TB=ws-wp;
delta_w=TB/2
M = 60; 
L=0:M-1
wl = (2*pi/M)*L;
alpha = (M-1)/2; l = 0:M-1; 
index=sum(((wl-wp)>0)==0)

Hrs = [ones(1,7),0.5925,0.1099,zeros(1,43),0.1099,0.5925,ones(1,6)];
Hdr = [1,1,0,0]; wdl = [0,0.2,0.3,1]*pi;
k1 = 0:floor((M-1)/2); k2 = floor((M-1)/2)+1:M-1;
angH = [-alpha*(2*pi)/M*k1, alpha*(2*pi)/M*(M-k2)];
H = Hrs.*exp(j*angH); 
h = real(ifft(H,M));
[MAG,W]=freqz(h,1);

subplot(221)
stem(0:(M-1),h)

subplot(223)
plot(wl(1:(floor(M/2)+1)),Hrs(1:(floor(M/2)+1)),'o', wdl,Hdr);
hold on 
plot(W,abs(MAG))
title(['Frequency Sampling:Mw' ,num2str(M)]);
xlabel('\omega','fontsize',18);
ylabel('H_r(k)','fontsize',18);
legend('Frequency Sampling','Ideal Response','Actual Response','Location','Northeast');

subplot(222)
plot(W,20*log10(abs(MAG)));grid on
title('Magnitude Response')
xlabel('\omega','fontsize',18);
ylabel('H(e^([\omega])','fontsize',18);

subplot(224)
plot(W,angle(MAG));grid on
title('Amplitude Response')
xlabel('Amplitude','fontsize',18);
ylabel('Time','fontsize',18);
set(gcf, 'Position', [0, 0, 1000, 1000])