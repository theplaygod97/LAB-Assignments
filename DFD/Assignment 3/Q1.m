clc; close all; clear all;

%specification
N=30;
alpha=(N-1)/2;
l=0:N-1;
wl=(2*pi/N)*l;

%Design Parameters
Hrs=[linspace(0,0.9,15),zeros(1,1),linspace(0.9,0.1,14)];
Hdr=[0,1,0];
wdl=[0,0.9,1]*pi;
k1=0:floor((N-1)/2);
k2=floor((N-1)/2)+1:N-1;
angH= [-alpha*(2*pi)/N*k1, alpha*(2*pi)/N*(N-k2)];
H=Hrs.*exp(1j*angH);
h=real(ifft(H,N));

%PLOT
[MAG,W]=freqz(h,1);
subplot(221)
stem(0:(N-1),h)

subplot(223)
plot(wl(1:(floor(N/2)+1)),Hrs(1:(floor(N/2)+1)),'o', wdl,Hdr);
hold on 
plot(W,abs(MAG))
title(['Frequency Sampling:Mw' ,num2str(N)]);
xlabel('\omega','fontsize',18);
ylabel('H_r(k)','fontsize',18);
legend('Frequency Sampling','Ideal Response','Actual Response','Location','Northwest');

subplot(222)
plot(W,20*log10(abs(MAG)));grid on
title('Magnitude Response')
xlabel('\omega','fontsize',18);
ylabel('H(e^([\omega])','fontsize',18);

subplot(224)
plot(W,angle(MAG));grid on
title('Amplitude Response')
xlabel('Time');
ylabel('Amplitude');
