clc;
clear;
close all;
Amp=3;
bit=3; 
f=2000; 
fs=50000;
t=0:(1/fs):(4/f); 
y=Amp*sin(2*pi*f*t);
N=length(y);
Q_out=zeros(1,N);
D=(2*Amp)/(2^bit);
L=-Amp+(D/2);
H=Amp-(D/2);
for i=L:D:H 
    for j=1:N
     if(((i-(D/2))<=y(j))&&(y(j)<(i+(D/2))))       
        Q_out(j)=i;                      
        A(j)=y(j)-Q_out(j);
     end  
    end                               
end
subplot(211);
stem(t,Q_out);
hold on;
plot(t,y);xlabel('Time');ylabel('Amplitude');title('3 bit quantization');
subplot(212);stem(t,A)
gtext('1541016245-Satyabrat')