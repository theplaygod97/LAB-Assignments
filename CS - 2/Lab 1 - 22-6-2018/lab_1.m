clc; clear all; close all;
fs = 8000;
t= 0:1/fs:0.01;
f=100;
a=2;
x=a*sin(2*pi*f*3*t);
subplot(4,1,1)
plot(t,x);
xlabel('Time--->');
ylabel('Amplitude--->');
title('sine wave');
subplot(4,1,2)
plot(t,x);
hold on
stem(t,x);
xlabel('Time--->');
ylabel('Amplitude--->');
title('sampled signal');

% Quantization
 n = 8;
 L = 2^n;
 vmax = 8;
 vmin = -vmax;
 del = (vmax - vmin)/L;
 part = vmin:del:vmax;                  % level are between vmin and vmax with difference of del
 code = vmin-(del/2):del:vmax+(del/2);  % Contaion Quantized values 
[ind,q] = quantiz(x,part,code);         % Quantization process
                                        % ind contain index number and q contain quantized  values
 l1=length(ind);
 l2=length(q);
  
 for i=1:l1
    if(ind(i)~=0)                       % To make index as binary decimal so started from 0 to N
       ind(i)=ind(i)-1;
    end 
    i=i+1;
 end   
  for i=1:l2
     if(q(i)== vmin-(del/2))             % To make quantize value inbetween the levels
        q(i)= vmin+(del/2);
     end
 end    
 subplot(4,1,3);
 stairs(q);grid on;                                       % Display the Quantize values
 title('Quantized Signal');
 ylabel('Amplitude--->');
 xlabel('Time--->');

 %encoding

 code=de2bi(ind,'left-msb');             % Convert the decimal to binary
 k = 1;
for i=1:l1
    for j=1:n
        coded(k)=code(i,j);              % convert code matrix to a coded row vector
        j=j+1;
        k=k+1;
    end
    i=i+1;
end
 subplot(4,1,4); grid on;
 stairs(coded);                                   % Display the encoded signal
 axis([0 100 -2 3]);  title('Encoded Signal');
 ylabel('Amplitude--->');
 xlabel('Time--->');

 %Demodulation Of PCM signal 
 qunt=reshape(coded,n,length(coded)/n);
 index=bi2de(qunt','left-msb');                    % Getback the index in decimal form
 q=del*index+vmin+(del/2);                       % getback Quantized values
 figure; grid on;
 plot(q);                                        % Plot Demodulated signal
 title('Demodulated Signal');
 ylabel('Amplitude--->');
 xlabel('Time--->')