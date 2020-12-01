clc;
close all;
Am=3;
bit=3; 
f=2000; 
fs=15000;
t=0:1/fs:5/f; 
y=Am*sin(2*pi*f*t);
Nsamples=length(y);
quantised_out=zeros(1,Nsamples);
del=2*Am/(2^bit);
L=-Am+del/2;
H=Am-del/2;
for i=L:del:H 
    for j=1:Nsamples
     if(((i-del/2)<y(j))&&(y(j)<(i+del/2)))       
        quantised_out(j)=i;                      
 
     end                              
    end                               
end
stem(t,quantised_out);
hold on;
plot(t,y,'color','r');xlabel('Time');ylabel('Amplitude');title('3 bit quantization')
gtext('1541016245-Satyabrat')