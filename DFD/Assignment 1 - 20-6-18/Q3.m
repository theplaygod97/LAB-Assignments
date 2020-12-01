clc;
clear all;
close all;

%Required Specification
wp=1.256;
ws=1.3816;
Ap=0.1;
As=50;

%Calculation of delta_p and delta_s
delta_p=(10^(0.05*Ap)-1)/(10^(0.05*Ap)+1)
delta_s=10^(-0.05*As)

delta=min(delta_s,delta_p)

%Cutoff frequency
wc=(wp+ws)/2

%Design parameter
A=-20*log10(delta)
delta_w=ws-wp

%Order of the filter
L=ceil(6.6*pi/delta_w)
L=L+mod(L+1,2)
M=L-1

%Window function w(n):Hamming Window
w = myWindows( 'Hamming',M);

%Desired Impulse Response
for n=0:1:M
    hd(n+1)=(sin(wc*(n-M/2)))/(pi*(n-M/2));
end
hd((M/2)+1)=(wc)/pi;


%Actuall Impulse Response h(n):
h=hd.*w

%plots
figure
subplot(311)
stem(0:M, w);
xlabel('Samples(n)-->');
ylabel('Amplitude-->');
title('Hamming Window');

subplot(312)
stem(0:M, hd);
xlabel('Samples(n)-->');
ylabel('Amplitude-->');
title('Hamming Window (Hd)');

subplot(313)
stem(0:M, h);
xlabel('Samples(n)-->');
ylabel('Amplitude-->');
title('Hamming Window(H)');

figure
subplot(211)
[H,W]=freqz(h,1)
l=abs(H);
p=20*log10(l);
plot(W,p)
hold on;

[H1,W1]=freqz(hd,1)
n=abs(H1);
o=20*log10(n);
plot(W1,o)
xlabel('\omega-->');
ylabel('Amplitude-->');
title('Amplitue Response Comparison');
legend('Hamming', 'Rectangular')
grid on;

subplot(212)
plot(W,angle(H))
hold on;
plot(W1,angle(H1))
xlabel('\omega -->');
ylabel('\phi(\omega)-->');
title('Phase Response Comparison');
legend('Hamming', 'Rectangular')
grid on
%Checking the result
%h1=fir1(M,wc/pi,w);
%[(0:M)' h1 h1' h-h1]