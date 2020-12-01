clc;clear all;close all;
n=-5:0.01:5;
for i=1:length(n)
    if n(i)>=0
        x(i)=1;
    else
        x(i)=0;
    end
end
subplot(2,3,1);plot(n,x);
xlabel('time');ylabel('Amplitude');title('Unitstep');
for a=1:length(n)
    if n(a)>=1
        y(a)=1;
    else
        y(a)=0;
    end
end
subplot(2,3,2);plot(n,y);
xlabel('Time');ylabel('Amplitude');title('Unitstep delayed');
B=y.*cos(pi*n);
subplot(2,3,3);plot(n,B);
xlabel('Time');ylabel('Amplitude');title('System Input delayed');
C=y.*cos(pi*(n-1));
subplot(2,3,4);plot(n,C);
xlabel('Time');ylabel('Amplitude');title('System Output delayed');
D=x.*cos(pi*n);
subplot(2,3,5);plot(n,D);
xlabel('Time');ylabel('Amplitude');title('Original system');
if (B==C)
    disp('System is Time invariant')
else 
    disp('System is Time variant')
end