function v=int_col(n)
v(1,1)=n;
for i=2:n
    v(i,1)=i-1;
end
end