function [a,b] = satyabutterworth(alpha_max,alpha_min,Wp,Ws)
Wns=Ws/Wp
Epsilon=sqrt(10^(0.1*alpha_max)-1);
n1 = 10^(0.1*alpha_min)-1;
n2 = 10^(0.1*alpha_max)-1;
n  = (log10(n1/n2))/(2*log10(Wns));
n  = ceil(n)
Wb=(Epsilon^(-1/n))*Wp
Qf=xlsread('Qfactor');
Q = Qf(:,n)
if (mod(n,2)==0)
    X=1;
    for i=1:((n)/2)
        X = conv(X, [1 Wb/Q(i) Wb^2]);
    end
    b = X;
    a = Wb^n;
else  
    X=[1 Wb];
    for i=1:((n-1)/2)
        X = conv(X, [1 Wb/Q(i) Wb^2]);
    end
    b = X;
    a = Wb^n;
end