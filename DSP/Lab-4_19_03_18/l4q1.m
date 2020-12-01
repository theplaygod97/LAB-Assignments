close all;
clear all;
xn=input('Enter the sequence x(n)');
ln=length(xn); 
xk=zeros(1,ln); 
ixk=zeros(1,ln);
subplot(311);
t=0:ln-1;
stem(t,xn);
ylabel ('Amplitude');
xlabel ('Time');
title('Original Signal');axis([-1 3 0 8])


 
i=sqrt(-1);
for k=0:ln-1
    for n=0:ln-1
        xk(k+1)=xk(k+1)+(xn(n+1)*exp((-i)*2*pi*k*n/ln))
    end
end
XK=abs(xk)
t=0:ln-1;
subplot(312);
stem(t,XK);
ylabel ('Amplitude');
xlabel ('Time');
title('DFT');axis([-1 3 0 8])

for n=0:ln-1
    for k=0:ln-1
        ixk(n+1)=ixk(n+1)+(xk(k+1)*exp(i*2*pi*k*n/ln));
    end
end
ixk=ixk./ln;
IXK=abs(ixk)
t=0:ln-1;

subplot(313);
stem(t,IXK);
ylabel ('Amplitude');
xlabel ('Time');
title('IDFT');axis([-1 3 0 8])
