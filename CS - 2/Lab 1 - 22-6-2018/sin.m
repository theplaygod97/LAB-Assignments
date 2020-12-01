clc;
clear all;
close all;
fs=900;
t=0:1/fs:0.1;
f=100;
a=2;
x=a*sin(2*pi*f*t);
subplot(4,1,1);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Sine wave');
subplot(4,1,2);
plot(t,x);
hold on;
stem(t,x);

%quantization
n=8;
L=2^n;
vmax=8;
vmin=-vmax;
del=(vmax - vmin)/L;
part=vmin:del:vmax;                  
code=vmin-(del/2):del:vmax+(del/2);   
[ind,q]=quantiz(x,part,code);         

l1=length(ind);
l2=length(q);

for i=1:l1
   if(ind(i)~=0)            
    ind(i)=ind(i)-1;
   end 
    i=i+1;
end   
for i=1:l2
   if(q(i)== vmin-(del/2))            
    q(i)= vmin+(del/2);
   end
end    
subplot(4,1,3);
stem(q);
grid on;
title('Quantized Signal');
ylabel('Amplitude');
xlabel('Time');