clc; clear all; close all;

%specification
wp=0.2*pi
ws=0.3*pi
Ap=-20*log10(0.25)
As=-20*log10(50)
TB=ws-wp;
delta_w=TB/2
N = 40; alpha = (N-1)/2;
L=0:N-1
Wl=(2*pi/N)*L
index=sum(((Wl-wp)>0)==0)

%Design Parameters
% T1 = 0.39

Hrs = [ones(1,5),0.39,zeros(1,29),0.39,ones(1,4)];
Hdr = [1,1,0,0];
Wdl = [0,0.2,0.3,1]*pi;
k1 = 0:floor((N-1)/2); k2 = floor((N-1)/2)+1:N-1;
angH = [-alpha*(2*pi)/N*k1, alpha*(2*pi)/N*(N-k2)];
H = Hrs.*exp(j*angH); h = real(ifft(H,N));

%PLOTS
[MAG,W]=freqz(h,1);
subplot(221)
stem(0:(N-1),h)

subplot(223)
plot(Wl(1:(floor(N/2)+1)),Hrs(1:(floor(N/2)+1)),'o', Wdl,Hdr);
hold on 
plot(W,abs(MAG))
title(['Frequency Sampling:Mw' ,num2str(N)]);
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