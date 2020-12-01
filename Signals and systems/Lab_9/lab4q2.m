 clc;
 clear all;
 close all;
 syms y(t);
 Dy=diff(y,t);
 D2y=diff(y,t,2);
 eqn=D2y+40*Dy+1000*y==0.1*diff(heaviside(t));
 cond=[y(0)==4, Dy(0)==15];
 y=dsolve(eqn,cond)
 subplot(3,1,1)
 ezplot(y)
 title('Step Response');
 subplot(3,1,2)
 x=int(y)
 ezplot(x)
 title('Ramp Response');
 subplot(3,1,3)
 z=diff(y)
 ezplot(z)
 title('Impulse Response');