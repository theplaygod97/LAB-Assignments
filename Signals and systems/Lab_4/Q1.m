clc;
clear all;
close all;
n=-15:0.01:15;
A=sin(n);
for i=1:length(n)
    if n(i)>=0 && n(i)<=4
        x(i)=1;
    else
        x(i)=0;
    end
end
B=A.*x;
subplot(3,1,1);plot(n,A);
xlabel('Time');ylabel('Amplitude');title('Sin');
subplot(3,1,2);plot(n,x);
xlabel('Time');ylabel('Amplitude');title('Step');
subplot(3,1,3);plot(n,B);
xlabel('Time');ylabel('Amplitude');title('Windowed');