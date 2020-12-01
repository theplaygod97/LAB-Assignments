clc;
close all;
clear all;
t=0:0.001:4;
vs1=cos(pi*t);
vs2=0.3*cos(pi*t);
a1=input('Enter a1 = ');
v1=a1*vs1;
if(v1==a1*(cos(pi*t)))
    fprintf('SYSTEM IS HOMOGENEOUS\n.............................\n')
for i=1:length(t)
    if(vs1(i)>0.5)
        x1(i)=0.5;
    elseif(vs1(i)<(-0.5))
        x1(i)=-0.5;
    else
        x1(i)=vs1(i);
    end
end
for i=1:length(t)
    if(vs2(i)>0.5)
        x2(i)=0.5;
    elseif(vs2(i)<(-0.5))
        x2(i)=-0.5;
    else
        x2(i)=vs2(i);
    end
end
y1=(1*x1)+(0.3*x2);
for i=1:length(t)
    if(y1(i)>0.5)
        x3(i)=0.5;
    elseif(y1(i)<(-0.5))
        x3(i)=-0.5;
    else
        x3(i)=y1(i);
    end
end
x4=x1+x2;
if(x3==x4)
    fprintf('SYSTEM IS LINEAR\n.................................\nOBEYS SUPERPOSITION\n')
else
    fprintf('SYSTEM IS NON-LINEAR\n.............................\nDOESNT OBEYS SUPERPOSITION\n')
end
else
   fprintf('SYSTEM IS NON HOMOGENEOUS\n............................\nDOESNT OBEYS HOMOGENEITY\n')
end
subplot(2,2,1);plot(t,x3);xlabel('Time');ylabel('Amplitude');
subplot(2,2,2);plot(t,x4);xlabel('Time');ylabel('Amplitude');
vst=cos(pi*(t-1));
for i=1:length(t)
    if(vst(i)>0.5)
        x5(i)=0.5;
    elseif(vst(i)<(-0.5))
        x5(i)=-0.5;
    else
        x5(i)=vst(i);
    end
end
x6=(t>=1).*x1;
if(x6==x5)
    fprintf('.............................\nSYSTEM IS TIME INVARIANT\n.............................\n')
else
    fprintf('.............................\nSYSTEM IS TIME VARIANT\n.............................\n')
end
subplot(2,2,3);plot(t,x5);xlabel('Time');ylabel('Amplitude');title('Input delayed')
subplot(2,2,4);plot(t,x6);xlabel('Time');ylabel('Amplitude');title('Output delayed')