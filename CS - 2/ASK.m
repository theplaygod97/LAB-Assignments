clc;
clear all;
close all;


x=[ 1 0 0 1 1 0 1];                                   
bp=.000001;                                                    
disp(' Binary information at Trans mitter :');
disp(x);


bit=[]; 
for n=1:1:length(x)
    if x(n)==1;
       se=ones(1,100);
    else x(n)==0;
        se=zeros(1,100);
    end
     bit=[bit se];

end
t1=bp/100:bp/100:100*length(x)*(bp/100);
subplot(4,1,1);
plot(t1,bit,'lineWidth',2.5);grid on;
axis([ 0 bp*length(x) -.5 1.5]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('transmitting information as digital signal');

subplot(4,1,3);
plot(t31,m1);
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('waveform for binary PSK modulation coresponding binary information');


ASK1=t3+t31;
subplot(4,1,4);
plot(ASK1);
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('FSK');