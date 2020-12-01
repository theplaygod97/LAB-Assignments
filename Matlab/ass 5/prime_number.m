function[p]=prime_number(n)
p=0;
for i=2:n-1
    if mod(n,i)==0
        p=p+1;
    end
end
end