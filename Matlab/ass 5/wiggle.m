x=[-6 -6 -7 0 7 6 6 -3 -3 0 0 -6;-7 2 1 8 1 2 -7 -7 -2 -2 -7 -7]
thetamax=0.25;
delta=0.025;
t=0;
for i=1:200
theta=(5*abs(t-round(t))-1)*thetamax;
G=[cos(theta) -sin(theta);sin(theta) cos(theta)];
Y=G*x;
dot2dot(Y);
pause(0.001)
t=t+delta
end