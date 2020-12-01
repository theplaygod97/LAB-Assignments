function p=prime(n)
c=0;
for i=1:n
    if(mod(n,i)==0)
        c=c+1;
    end
end
    if(c==2 || n==1)
        p='Yo,u got a prime no';
    else
        p='No,its not a prime no';
    end
end