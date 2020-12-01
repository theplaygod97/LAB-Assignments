clc;clear all;close all;
n=-5:0.01:5;
a1=input('Enter a1 =');a2=input('Enter a2 =');
for i=1:length(n)
    if n(i)>=0
        x(i)=1;
    else
        x(i)=0;
    end
end
for a=1:length(n)
    if n(a)>=1
        y(a)=1;
    else
        y(a)=0;
    end
end
A=y.*cos(pi*n);
B=x.*cos(pi*n);
G=a1*(x.*cos(pi*n));
H=a2*(y.*cos(pi*n));
C=a1*A;
D=a2*B;
E=C+D;
F=((a1).*(x)+(a2).*(y)).*(cos(pi*n));
if ((A)==(G) & (B)==(H))
  disp('System is Homogenous \n Checking Superposition \n .........')
  if(E==F)
    disp('System is Linear')
else
    disp('System is Non linear,Not obeying Linearity')
   end
else
    disp('System is Non linear,Not obeying Homogenity')  
end