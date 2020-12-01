function [w] = myKaiser(beta, M)
alpha=M/2;
for n=0:M
    if (n>=0 && n<=M)
       x=beta*sqrt(1-((n-alpha)/alpha)^2);
       w(n+1)=myBessel(x)/myBessel(beta);
    end
end
end