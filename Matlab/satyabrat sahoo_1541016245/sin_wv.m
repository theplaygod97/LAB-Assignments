x=(0:0.01:2*pi); 
y=sin(x);
plot(x,y);
subplot(1,3,1);
xlabel('values of x');
ylabel('values of y'); 
title('sin wave');
z=cos(x);
plot(x,z);
subplot(1,3,3);
title('cosine wave');
xlabel('values of x'); 
ylabel('values of z')

