[w1]= myKaiser(0,51)
[w2]= myKaiser(0.5,51)
[w3]= myKaiser(0.8,51)
[w4]= myKaiser(2,51)
[w5]= myKaiser(8,51)


%PLOTS
figure
subplot(321)
plot(w1)
title('beta=0');
xlabel('Time');
ylabel('Amplitude');
subplot(322)
plot(w2)
title('beta=0.5');
xlabel('Time');
ylabel('Amplitude');
subplot(323)
plot(w3)
title('beta=0.8');
xlabel('Time');
ylabel('Amplitude');
subplot(324)
plot(w4)
title('beta=2');
xlabel('Time');
ylabel('Amplitude');
subplot(325)
plot(w5)
title('beta=8');
xlabel('Time');
ylabel('Amplitude');




figure
subplot(511)
[H1,W1]=freqz(w1,1)
l1=abs(H1);
p1=20*log10(l1);
plot(W1,p1)
xlabel('\omega-->');
ylabel('Amplitude-->');
title('Amplitue Response Comparison');
legend('\beta = 0')
grid on;
subplot(512)
[H2,W2]=freqz(w2,1)
l2=abs(H2);
p2=20*log10(l2);
plot(W2,p2)
xlabel('\omega-->');
ylabel('Amplitude-->');
legend('\beta = 0.5')
grid on;
subplot(513)
[H3,W3]=freqz(w3,1)
l3=abs(H3);
p3=20*log10(l3);
plot(W3,p3)
xlabel('\omega-->');
ylabel('Amplitude-->');
legend('\beta = 0.8')
grid on;
subplot(514)
[H4,W4]=freqz(w4,1)
l4=abs(H4);
p4=20*log10(l4);
plot(W4,p4)
xlabel('\omega-->');
ylabel('Amplitude-->');
legend('\beta = 2')
grid on;
subplot(515)
[H5,W5]=freqz(w5,1)
l5=abs(H5);
p5=20*log10(l5);
plot(W5,p5)
xlabel('\omega-->');
ylabel('Amplitude-->');
legend('\beta = 8')
set(gcf, 'Position', [0, 0, 700, 800])
grid on;

figure
subplot(511)
plot(W1,angle(H1))
xlabel('\omega-->');
ylabel('Phase-->');
title('Phase Response Comparison');
legend('\beta = 0')
grid on;
subplot(512)
plot(W2,angle(H2))
xlabel('\omega-->');
ylabel('Phase-->');
legend('\beta = 0.5')
grid on;
subplot(513)
plot(W3,angle(H3))
xlabel('\omega-->');
ylabel('Phase-->');
legend('\beta = 0.8')
grid on;
subplot(514)
plot(W4,angle(H4))
xlabel('\omega-->');
ylabel('Phase-->');
legend('\beta = 2')
grid on;
subplot(515)
plot(W5,angle(H5))
xlabel('\omega-->');
ylabel('Phase-->');
legend('\beta = 8')
set(gcf, 'Position', [0, 0, 700, 800])
grid on;