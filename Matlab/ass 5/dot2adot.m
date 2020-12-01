function [A,B]=dot2adot(x)
A=x(1,:);
B=x(2,:);
A(1,end+1)=x(1,1)
B(1,end+1)=x(2,1)
plot(A,B)
end