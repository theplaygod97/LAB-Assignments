function [a,b]=dot2dot(z)
k=length(z);
a=[z(1,:),z(1)];
b=[z(2,:),z(2)];
plot(a,b)
axis([-10 10 -10 10])
end