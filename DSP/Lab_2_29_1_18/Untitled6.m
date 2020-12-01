clc;
clear all;
close all;
fs=80000;
n=1:30;
x1=sin(2*pi*(440/fs)*n);
x2=sin(2*pi*(494/fs)*n);
x3=sin(2*pi*(554/fs)*n);
x4=sin(2*pi*(597/fs)*n);
x5=sin(2*pi*(660/fs)*n);
x6=sin(2*pi*(698/fs)*n);
x7=sin(2*pi*(784/fs)*n);
x=[x1 x2 x3 x4 x5 x6 x7];
sound(x,fs)
subplot(311)
plot(x)

N=0.3*rand(size(x))
x1=N+x
subplot(312)
plot(x1)
m=input('enter the vlaue of m:');
y=[x1,zeros(1,m)]
for i=0:length(y)-1
    y1(i+1)=0;

for k=0:m-1
    if i>=k
        y1(i+1)=y(i+1)+(1/m)*y(i-k+1)
    else
        y1(i+1)=y(i+1)
    end
end
end
subplot(313)
plot(y1)