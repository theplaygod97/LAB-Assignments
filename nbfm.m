clc;
clear all;
close all;
%ALL INPUTS ARE FIXED FOR THIS CONFIGURATION.
%CHANGING FREQUENCY OF CARRIER OR MESSAGE WILL AFFECT THE FILTERED OUTPUT
%DIRECTLY
Message_Amplitude = 1
Carrier_Amplitude = 1
fm = 50
fc= 200
m = Message_Amplitude/Carrier_Amplitude;
t = 0:0.0001:1;
Kf=20*pi                                                 %Constant
H_NBFM = Message_Amplitude*sin (2*pi*fm*t);
Message_Signal=Kf*0.0001*cumsum(H_NBFM)                       %Integrated message
subplot (3,1,1);
plot (t,Message_Signal,'b');
xlabel ('Time');
ylabel ('Amplitude');
title ('Message Signal');
legend ('Message Signal');

Oscillator_Signal = Carrier_Amplitude*cos (2*pi*fc*t);    %Crystall Oscillator
y = hilbert(Oscillator_Signal);                           %Phase shifted Carrier
subplot (3,1,2);
plot (t,imag(y),'r');             
xlabel ('Time');
ylabel ('Amplitude');
title ('Carrier Signal');
legend ('Carrier Signal');

DSBSC=Carrier_Amplitude*m.*Message_Signal.*y;             %DSBSC Modulator
subplot (3,1,3);
plot (t,DSBSC,'black');
xlabel ('Time');
ylabel ('Amplitude');
title ('Double Sideband Suppressed Carrier Wave');
legend ('DSB-SC Signal');

%Representation of the NBFM Signal

NBFM=Oscillator_Signal-DSBSC
H_NBFM = hardlims(NBFM)                                         %Hardlimiter
figure
subplot(211)
plot (t,H_NBFM,'black');
xlabel ('Time');
ylabel ('Amplitude');
title ('Narrow Band Frequency Modulated HARDLIMITED Signal');
legend ('NBFM HARDLIMITED Signal');

subplot(212)
N = 40;                                                               
Wn = [199.5e-4 200.5e-4];                                   %BPF centred at fc
a = fir1(N,Wn);                                                       
b = 1;                                                                
A=filter(a,b,H_NBFM)
plot (t,A,'r');
xlabel ('Time');
ylabel ('Amplitude');
title ('Narrow Band Frequency Modulated Signal FILTERED AT FC');
legend ('NBFM Signal');