function [a,b] = satyabutter_1(alpha_max,alpha_min,Wp,Ws)
syms s;
Wns=Ws/Wp
Epsilon=sqrt(10^(0.1*alpha_max)-1)
n1=(10^(0.1*alpha_min)-1)/(10^(0.1*alpha_max)-1)
n2=log(n1)/2*log(Wns)
n=ceil(n2)
Wb=(Epsilon^(-1/n))*Wp
if (mod(n,2)==0)
   for i=1:ceil(n/2)       
   Q(i)=input('enter the value of quality factor from the table');
   P(i)=input('enter the value of poles from the table');
   end
   for j=1:((A-1)/2)
   X=(s^2+(Wb*s/Q(j))+Wb^2)
   Ts=Wb^n/(s+Wb)*X;
   end
   else 
   for k=1:ceil(n/2) 
   Q(k)=input('enter the value of quality factor from the table');
   P(k)=input('enter the value of poles from the table');
   end
   for l=1:n/2
   X1=(s^2+(Wb*s/Q(l))+Wb^2);
   Ts=Wb^n/(s+Wb)*X1
   end
   end
end