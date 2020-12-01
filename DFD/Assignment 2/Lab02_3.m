clc;
clear all;
close all;
 
%Required Specification
wp=0.25*pi;              %pass band edge frequency
ws=0.35*pi;              %stop band edge frequency
Ap=0.1;                  %pass band ripple
As=50;                   %minimum stop band attenuation
 
%Calculation of delta_p and delta_s
delta_p=(10^(0.05*Ap)-1)/(10^(0.05*Ap)+1)
delta_s=10^(-0.05*As)
 
delta=min(delta_s,delta_p)
 
%Cutoff frequency
wc=(wp+ws)/2
 
%Design parameter
A= - 20*log10(delta)
delta_w = ws-wp

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
M=ceil(M)+1

%Window function w(n):KAISER Window
w=myKaiser(beta, M);

%Desired Impulse Response
for n=0:1:M
    hd(n+1)=(sin(wc*(n-M/2)))/(pi*(n-M/2));
end
hd((M/2)+1)=(wc)/pi;

 
%Actuall Impulse Response h(n):
h=hd.*w

%Plot the result
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
