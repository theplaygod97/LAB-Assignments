clc;clear all;close all;
[w1] = myWindows('Rectangular', 52)
[w2] = myWindows('Hann', 52)
[w3] = myWindows('Hamming', 52)
[w4] = myWindows('Bartlett', 52)
[w5] = myWindows('Blackman', 52)

%PLOTS
figure
subplot(511)
[H1,W1]=freqz(w1,1)
l1=abs(H1);
p1=20*log10(l1);
plot(W1,p1)
xlabel('\omega-->');
ylabel('Amplitude-->');
title('Amplitue Response Comparison');
legend('Rectangular')
grid on;
subplot(512)
[H2,W2]=freqz(w2,1)
l2=abs(H2);
p2=20*log10(l2);
plot(W2,p2)
xlabel('\omega-->');
ylabel('Amplitude-->');
legend('Hann')
grid on;
subplot(513)
[H3,W3]=freqz(w3,1)
l3=abs(H3);
p3=20*log10(l3);
plot(W3,p3)
xlabel('\omega-->');
ylabel('Amplitude-->');
legend('Hamming')
grid on;
subplot(514)
[H4,W4]=freqz(w4,1)
l4=abs(H4);
p4=20*log10(l4);
plot(W4,p4)
xlabel('\omega-->');
ylabel('Amplitude-->');
legend('Bartlett')
grid on;
subplot(515)
[H5,W5]=freqz(w5,1)
l5=abs(H5);
p5=20*log10(l5);
plot(W5,p5)
xlabel('\omega-->');
ylabel('Amplitude-->');
legend('Blackman')
set(gcf, 'Position', [0, 0, 700, 800])
grid on;

figure
subplot(511)
plot(W1,angle(H1))
xlabel('\omega-->');
ylabel('Phase-->');
title('Phase Response Comparison');
legend('Rectangular')
grid on;
subplot(512)
plot(W2,angle(H2))
xlabel('\omega-->');
ylabel('Phase-->');
legend('Hann')
grid on;
subplot(513)
plot(W3,angle(H3))
xlabel('\omega-->');
ylabel('Phase-->');
legend('Hamming')
grid on;
subplot(514)
plot(W4,angle(H4))
xlabel('\omega-->');
ylabel('Phase-->');
legend('Bartlett')
grid on;
subplot(515)
plot(W5,angle(H5))
xlabel('\omega-->');
ylabel('Phase-->');
legend('Blackman')
set(gcf, 'Position', [0, 0, 700, 800])
grid on;