clc;clear all;close all;
Am=4;
bit=3;
f=1;
fs=30;
t=0:1/fs:1*pi;
y=Am*sin(2*pi*f*t);
subplot(411);
plot(y);title('Original Signal');
y1=y(1:2:95)
subplot(412)
stem(y1);title('Sampled Signal')
N=length(y)
quantised_out=zeros(1,N);
stepsize=2*Am/(2^bit);
Llow=-Am+stepsize/2;
Lhigh=Am-stepsize/2;
for i=Llow:stepsize:Lhigh
    for j=1:N
        if(((i-stepsize/2)<y(j))&&(y(j)<(i+stepsize/2)))
            quantised_out(j)=i;
        end
    end
end
subplot(413);
plot(t,quantised_out);title('Quantized Signal');axis([0 3.2 -5 5])
U=[]
quantised_out=quantised_out+Lhigh
for k= 1: length(y)
    Bin=[dec2bin(quantised_out,3)];
    U=[U double(Bin)-48];
end
subplot(414);
stairs(t,U);title('Encoded Signal')


