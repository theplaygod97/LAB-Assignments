clc;
clear;
close all;
 
%Required Specification
Fp1=8000;
Fp2=12000;
delta_f=3000;
Fs1=Fp1-delta_f;
Fs2=Fp2+delta_f;
Fsample=44100;                %sampling frequency
wp1=2*pi*(Fp1/Fsample);
wp2=2*pi*(Fp2/Fsample);       %pass band edge frequency
ws1=2*pi*(Fs1/Fsample);
ws2=2*pi*(Fs2/Fsample);       %stop band edge frequency
Ap=-20*log10(0.01)            %pass band ripple

As=-20*log10(0.001)           %minimum stop band attenuation


%Calculation of delta_p and delta_s
delta_p=(10^(0.05*Ap)-1)/(10^(0.05*Ap)+1)
delta_s=10^(-0.05*As)
 
delta=min(delta_s,delta_p)

%Cutoff frequency
wc1=(wp1+ws1)/2
wc2=(wp2+ws2)/2
 
%Design parameter
A= - 20*log10(delta)
delta_w = wp1-ws1

%value of beta
if (A<21)
    beta=0;
elseif (A>=21&&A<=50)
    beta=(0.5842*((A-21)^0.4))-(0.07886*(A-21));
elseif (A>50)
    beta=0.1102*(A-87);
end


%Order of the filter
M=(A-8)/(2.285*delta_w)
M=ceil(M)
%Window function w(n):BLACKMAN Window
w=myWindows('Hamming',M );

 
%Desired Impulse Response

for n=0:M
    %if((n>=0)&&(n<=(M/2-1)))&&((n>=(M/2+1))&&(n<=M))
       hd(n+1)=((sin(wc2*(n-M/2)))-(sin(wc1*((n-M/2)))))/(pi*(n-M/2));
    %end
end
hd((M/2)+1)=(wc2-wc1)/pi;

 
%Actuall Impulse Response h(n):
h=hd.*w;
 
%plot the result
% freqz(hd,1)
% figure
% freqz(h,1)

figure
subplot(311)
stem(0:M, w);
xlabel('Samples');
ylabel('Amplitude');
title('Kaiser Window');

subplot(312)
stem(0:M, hd);
xlabel('Samples');
ylabel('Amplitude');
title('Kaiser Window (hd)');

subplot(313)
stem(0:M, h);
xlabel('Samples');
ylabel('Amplitude');
title('Kaiser Window(h)');

figure
subplot(211)
[H,W]=freqz(h,1)
a=abs(H);
m=20*log10(a);
plot(W,m)
hold on;

[H1,W1]=freqz(hd,1)
n=abs(H1);
q=20*log10(n);
plot(W1,q)
xlabel('frequency');
ylabel('Amplitude');
title('Amplitue Response');
legend('Kaiser', 'Rectangular')
grid on;

subplot(212)
plot(W,angle(H))
hold on;
plot(W1,angle(H1))
xlabel('frequency');
ylabel('\phi(\omega)');
title('Phase Response ');
legend('Kaiser', 'Rectangular')
grid on
