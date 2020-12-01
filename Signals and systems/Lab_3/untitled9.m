clc;
clear all;
close all;

t=-1:0.01:1;
for i=1:length(t)
    if t(i)>=0
        x(i)=sawtooth(i);
    else
        x(i)=0;
    end
end
subplot(2,1,1);
plot(t,x);

for j=1:length(t)
    if t(j)>=0
        Q(j)=0;
    else
        Q(j)=sawtooth(-j);
    end
end
subplot(2,1,2);
plot(t,Q);