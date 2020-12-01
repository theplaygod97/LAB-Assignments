function [num, den] = SatyasChebyshev(amax, amin, wp, ws)
w=ws/wp;
E=sqrt(10^(0.1*amax)-1);
n=imag(acosh(sqrt((10^(0.1*amin)-1)/(10^(0.1*amax)-1)))/acosh(w));
n=ceil(n);
a=(1/n)*asinh(1/E);
real1=sinh(a);
img1=cosh(a);
if mod(n,2)==1
    t1=[1 real1];
else
    t1=1;
end

for i=1:fix(n/2)
        re(i)=sinh(a)*sin(((2*i-1)/(2*n))*pi);
        im(i)=cosh(a)*cos(((2*i-1)/(2*n))*pi);
end

alpha_n=10*log10(1+E^2*(cosh(n*acosh(w)))^2);
if (alpha_n>=amin)
    disp('Filter is Realizable')
else
    disp('Filter is Not-Realizable')
end

for i=1:fix(n/2)
    t(i,:)=[1 2*re(i) (re(i)^2+im(i)^2)];
end

tr1=tf(1,t1);
sys=tr1;

for i=1:fix(n/2)
    sys=sys*tf(1,t(i,:));
end

[num,den] = tfdata(sys) ;

end